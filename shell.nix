{ pkgsNative ? import <nixpkgs> {}
, pkgsCross ? import <nixpkgs> { crossSystem = { config = "mips-linux-gnu"; }; }
, pkgsCrossOld ? import (builtins.fetchTarball {
    # This commit uses binutils 2.39. We don't want binutils 2.40+ because of a performance regression in ld.
    url = "https://github.com/NixOS/nixpkgs/archive/55070e598e0e03d1d116c49b9eff322ef07c6ac6.tar.gz";
  }) { crossSystem = { config = "mips-linux-gnu"; }; }
}:

let
  gcc-papermario = pkgsNative.fetchzip {
    url =
      "https://github.com/pmret/gcc-papermario/releases/download/master/linux.tar.gz";
    hash = "sha256-bFlt13n13a7UZulwkcdrwRbXfXRWkUTqszAczzAs8Ac=";
    stripRoot = false;
  };

  binutils-papermario = pkgsNative.fetchzip {
    url =
      "https://github.com/pmret/binutils-papermario/releases/download/master/linux.tar.gz";
    hash = "sha256-HdVaaOjFBJYywA/+uQ2wsqmJrEwBEuFSdo9jPb4qceE=";
  };

  mips-gcc-272 = pkgsNative.fetchzip {
    url =
      "https://github.com/decompals/mips-gcc-2.7.2/releases/download/main/gcc-2.7.2-linux.tar.gz";
    hash = "sha256-0orDbWWom581bJ60SvE96ct5H9Mua0c3gyMHbY7DzRE=";
    stripRoot = false;
  };

  mips-binutils-26 = pkgsNative.fetchzip {
    url =
      "https://github.com/decompals/mips-binutils-2.6/releases/download/main/binutils-2.6-linux.tar.gz";
    hash = "sha256-237UECnNLGSBZEyLJr9rEHC3cT2m5pS0ApDjgkL3WqM=";
    stripRoot = false;
  };

  egcs-binutils = pkgsNative.fetchzip {
    url =
      "https://github.com/decompals/mips-binutils-egcs-2.9.5/releases/latest/download/mips-binutils-egcs-2.9.5-linux.tar.gz";
    hash = "sha256-k7P1ySnd+GoVbfJkHiVoBIW3Fi8DEhcQTHldcx8QbRk=";
    stripRoot = false;
  };

  egcs-gcc = pkgsNative.fetchzip {
    url =
      "https://github.com/decompals/mips-gcc-egcs-2.91.66/releases/download/0.2/mips-gcc-egcs-2.91.66-linux.tar.gz";
    hash = "sha256-NOJbbKaOWETVkhhQWci+KF73esKPhVDtOmL2ytH88Zo=";
    stripRoot = false;
  };

  ido = pkgsNative.fetchzip {
    url =
      "https://github.com/decompals/ido-static-recomp/releases/download/v0.2/ido-5.3-recomp-ubuntu-latest.tar.gz";
    hash = "sha256-LvEmsxIeF+JFZFLjIBBbHjDb1ZuvFB5XParZDqamVhE=";
    stripRoot = false;
  };
in pkgsCross.mkShell {
  nativeBuildInputs = (with pkgsNative; [
    ninja
    zlib
    libyaml
    patchelf
    glibc
    gcc
    python3
    python3Packages.virtualenv
    cargo
    rustc
    ccache
    gdb
  ]);
  buildInputs = (with pkgsCross; [
    gcc
    pkgsCrossOld.binutils
  ]);

  shellHook = ''
    # Configure expects compilers here
    # TODO: provide using PATH (needs changes to configure)
    ln -s tools/build/cc/gcc ${gcc-papermario}
    ln -s tools/build/cc/gcc ${binutils-papermario}
    ln -s tools/build/cc/gcc2.7.2 ${mips-gcc-272}
    ln -s tools/build/cc/gcc2.7.2 ${mips-binutils-26}
    ln -s tools/build/cc/ido5.3 ${ido}
    ln -s tools/build/cc/egcs ${egcs-binutils}
    ln -s tools/build/cc/egcs ${egcs-gcc}

    # Fix 'file not found' errors since we're using a newer glibc
    # TODO: build compilers from source to avoid this. failing that, use a derivation to not repeat this
    for dir in $(find tools/build/cc -type d); do
      for f in $(find $dir -type f); do
        # Silence errors instead of thinking hard about this
        ${pkgsNative.patchelf}/bin/patchelf --set-interpreter "${pkgsNative.glibc}/lib/ld-linux-x86-64.so.2" $f 2>/dev/null
      done
    done

    # Install Rust deps
    export PATH=$HOME/.cargo/bin:$PATH
    cargo install pigment64 crunch64-cli

    # Install python packages
    virtualenv venv
    source venv/bin/activate
    pip install -r ${./requirements.txt}
    pip install -r ${./requirements_extra.txt}

    # Use old ld (but not the rest of binutils)
    BINUTILS=$(find /nix/store -maxdepth 1 -name '*-mips-linux-gnu-binutils-2.39' | head -n 1)
    export PAPERMARIO_LD="$BINUTILS/bin/mips-linux-gnu-ld"

    # Confirm that ld is 2.39
    LD_VERSION=$($PAPERMARIO_LD --version | head -n 1)
    if [[ $LD_VERSION != *2.39* ]]; then
      echo "Expected $PAPERMARIO_LD to be 2.39, got $LD_VERSION"
    fi
  '';
}
