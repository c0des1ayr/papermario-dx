.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218588_63D768
/* 63D768 80218588 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 63D76C 8021858C F7B60020 */  sdc1      $f22, 0x20($sp)
/* 63D770 80218590 46006586 */  mov.s     $f22, $f12
/* 63D774 80218594 F7B40018 */  sdc1      $f20, 0x18($sp)
/* 63D778 80218598 AFBF0010 */  sw        $ra, 0x10($sp)
/* 63D77C 8021859C 0C00A3FC */  jal       length2D
/* 63D780 802185A0 46007506 */   mov.s    $f20, $f14
/* 63D784 802185A4 4600A18D */  trunc.w.s $f6, $f20
/* 63D788 802185A8 44023000 */  mfc1      $v0, $f6
/* 63D78C 802185AC 00000000 */  nop
/* 63D790 802185B0 04420001 */  bltzl     $v0, .L802185B8
/* 63D794 802185B4 00021023 */   negu     $v0, $v0
.L802185B8:
/* 63D798 802185B8 44821000 */  mtc1      $v0, $f2
/* 63D79C 802185BC 00000000 */  nop
/* 63D7A0 802185C0 468010A0 */  cvt.s.w   $f2, $f2
/* 63D7A4 802185C4 46001103 */  div.s     $f4, $f2, $f0
/* 63D7A8 802185C8 0000202D */  daddu     $a0, $zero, $zero
/* 63D7AC 802185CC 2406005A */  addiu     $a2, $zero, 0x5a
/* 63D7B0 802185D0 0080282D */  daddu     $a1, $a0, $zero
/* 63D7B4 802185D4 3C078022 */  lui       $a3, %hi(D_8021E2FC)
/* 63D7B8 802185D8 24E7E2FC */  addiu     $a3, $a3, %lo(D_8021E2FC)
/* 63D7BC 802185DC 30C2FFFF */  andi      $v0, $a2, 0xffff
.L802185E0:
/* 63D7C0 802185E0 3083FFFF */  andi      $v1, $a0, 0xffff
/* 63D7C4 802185E4 00431023 */  subu      $v0, $v0, $v1
/* 63D7C8 802185E8 00021FC2 */  srl       $v1, $v0, 0x1f
/* 63D7CC 802185EC 00431021 */  addu      $v0, $v0, $v1
/* 63D7D0 802185F0 00021043 */  sra       $v0, $v0, 1
/* 63D7D4 802185F4 00821821 */  addu      $v1, $a0, $v0
/* 63D7D8 802185F8 3062FFFF */  andi      $v0, $v1, 0xffff
/* 63D7DC 802185FC 00021080 */  sll       $v0, $v0, 2
/* 63D7E0 80218600 00471021 */  addu      $v0, $v0, $a3
/* 63D7E4 80218604 C4400000 */  lwc1      $f0, ($v0)
/* 63D7E8 80218608 4604003C */  c.lt.s    $f0, $f4
/* 63D7EC 8021860C 00000000 */  nop
/* 63D7F0 80218610 45020002 */  bc1fl     .L8021861C
/* 63D7F4 80218614 0060302D */   daddu    $a2, $v1, $zero
/* 63D7F8 80218618 0060202D */  daddu     $a0, $v1, $zero
.L8021861C:
/* 63D7FC 8021861C 24A50001 */  addiu     $a1, $a1, 1
/* 63D800 80218620 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 63D804 80218624 2C420007 */  sltiu     $v0, $v0, 7
/* 63D808 80218628 1440FFED */  bnez      $v0, .L802185E0
/* 63D80C 8021862C 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 63D810 80218630 3082FFFF */  andi      $v0, $a0, 0xffff
/* 63D814 80218634 00021080 */  sll       $v0, $v0, 2
/* 63D818 80218638 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 63D81C 8021863C 3C018022 */  lui       $at, %hi(D_8021E2FC)
/* 63D820 80218640 00220821 */  addu      $at, $at, $v0
/* 63D824 80218644 C422E2FC */  lwc1      $f2, %lo(D_8021E2FC)($at)
/* 63D828 80218648 00031880 */  sll       $v1, $v1, 2
/* 63D82C 8021864C 46041081 */  sub.s     $f2, $f2, $f4
/* 63D830 80218650 3C018022 */  lui       $at, %hi(D_8021E2FC)
/* 63D834 80218654 00230821 */  addu      $at, $at, $v1
/* 63D838 80218658 C420E2FC */  lwc1      $f0, %lo(D_8021E2FC)($at)
/* 63D83C 8021865C 46040001 */  sub.s     $f0, $f0, $f4
/* 63D840 80218660 46001085 */  abs.s     $f2, $f2
/* 63D844 80218664 46000005 */  abs.s     $f0, $f0
/* 63D848 80218668 4600103C */  c.lt.s    $f2, $f0
/* 63D84C 8021866C 00000000 */  nop
/* 63D850 80218670 45000002 */  bc1f      .L8021867C
/* 63D854 80218674 00C0182D */   daddu    $v1, $a2, $zero
/* 63D858 80218678 0080182D */  daddu     $v1, $a0, $zero
.L8021867C:
/* 63D85C 8021867C 44800000 */  mtc1      $zero, $f0
/* 63D860 80218680 00000000 */  nop
/* 63D864 80218684 4600B03C */  c.lt.s    $f22, $f0
/* 63D868 80218688 00000000 */  nop
/* 63D86C 8021868C 4500000A */  bc1f      .L802186B8
/* 63D870 80218690 00000000 */   nop
/* 63D874 80218694 4614003E */  c.le.s    $f0, $f20
/* 63D878 80218698 00000000 */  nop
/* 63D87C 8021869C 45000004 */  bc1f      .L802186B0
/* 63D880 802186A0 240200B4 */   addiu    $v0, $zero, 0xb4
/* 63D884 802186A4 00431823 */  subu      $v1, $v0, $v1
/* 63D888 802186A8 44800000 */  mtc1      $zero, $f0
/* 63D88C 802186AC 00000000 */  nop
.L802186B0:
/* 63D890 802186B0 4600B03C */  c.lt.s    $f22, $f0
/* 63D894 802186B4 00000000 */  nop
.L802186B8:
/* 63D898 802186B8 45000005 */  bc1f      .L802186D0
/* 63D89C 802186BC 00000000 */   nop
/* 63D8A0 802186C0 4600A03C */  c.lt.s    $f20, $f0
/* 63D8A4 802186C4 00000000 */  nop
/* 63D8A8 802186C8 45030001 */  bc1tl     .L802186D0
/* 63D8AC 802186CC 246300B4 */   addiu    $v1, $v1, 0xb4
.L802186D0:
/* 63D8B0 802186D0 44800000 */  mtc1      $zero, $f0
/* 63D8B4 802186D4 00000000 */  nop
/* 63D8B8 802186D8 4616003E */  c.le.s    $f0, $f22
/* 63D8BC 802186DC 00000000 */  nop
/* 63D8C0 802186E0 45000006 */  bc1f      .L802186FC
/* 63D8C4 802186E4 00000000 */   nop
/* 63D8C8 802186E8 4600A03C */  c.lt.s    $f20, $f0
/* 63D8CC 802186EC 00000000 */  nop
/* 63D8D0 802186F0 45000002 */  bc1f      .L802186FC
/* 63D8D4 802186F4 24020168 */   addiu    $v0, $zero, 0x168
/* 63D8D8 802186F8 00431823 */  subu      $v1, $v0, $v1
.L802186FC:
/* 63D8DC 802186FC 8FBF0010 */  lw        $ra, 0x10($sp)
/* 63D8E0 80218700 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 63D8E4 80218704 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 63D8E8 80218708 3062FFFF */  andi      $v0, $v1, 0xffff
/* 63D8EC 8021870C 03E00008 */  jr        $ra
/* 63D8F0 80218710 27BD0028 */   addiu    $sp, $sp, 0x28