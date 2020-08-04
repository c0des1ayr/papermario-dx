.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_802A992C
/* 41E6BC 802A992C 24030023 */  addiu $v1, $zero, 0x23
/* 41E6C0 802A9930 A683006E */  sh    $v1, 0x6e($s4)
/* 41E6C4 802A9934 2442FFFF */  addiu $v0, $v0, -1
/* 41E6C8 802A9938 00021080 */  sll   $v0, $v0, 2
/* 41E6CC 802A993C 02421021 */  addu  $v0, $s2, $v0
/* 41E6D0 802A9940 9043010B */  lbu   $v1, 0x10b($v0)
/* 41E6D4 802A9944 24020005 */  addiu $v0, $zero, 5
/* 41E6D8 802A9948 A2820178 */  sb    $v0, 0x178($s4)
/* 41E6DC 802A994C 24020037 */  addiu $v0, $zero, 0x37
/* 41E6E0 802A9950 A682017C */  sh    $v0, 0x17c($s4)
/* 41E6E4 802A9954 24020002 */  addiu $v0, $zero, 2
/* 41E6E8 802A9958 AE820184 */  sw    $v0, 0x184($s4)
/* 41E6EC 802A995C A28301AC */  sb    $v1, 0x1ac($s4)
/* 41E6F0 802A9960 00031E00 */  sll   $v1, $v1, 0x18
/* 41E6F4 802A9964 9242032D */  lbu   $v0, 0x32d($s2)
/* 41E6F8 802A9968 00031E03 */  sra   $v1, $v1, 0x18
/* 41E6FC 802A996C A683017A */  sh    $v1, 0x17a($s4)
/* 41E700 802A9970 2442FFFF */  addiu $v0, $v0, -1
/* 41E704 802A9974 0C03C4EC */  jal   func_800F13B0
/* 41E708 802A9978 A2820061 */   sb    $v0, 0x61($s4)
/* 41E70C 802A997C 0C0A91C6 */  jal   func_802A4718
/* 41E710 802A9980 00000000 */   nop   
/* 41E714 802A9984 0C0A840C */  jal   func_802A1030
/* 41E718 802A9988 00000000 */   nop   
/* 41E71C 802A998C 080AA6A9 */  j     .L802A9AA4
/* 41E720 802A9990 24020020 */   addiu $v0, $zero, 0x20
/* 41E724 802A9994 8E820214 */  lw    $v0, 0x214($s4)
/* 41E728 802A9998 30424000 */  andi  $v0, $v0, 0x4000
/* 41E72C 802A999C 1040000C */  beqz  $v0, .L802A99D0
/* 41E730 802A99A0 00000000 */   nop   
/* 41E734 802A99A4 8642032C */  lh    $v0, 0x32c($s2)
/* 41E738 802A99A8 14400009 */  bnez  $v0, .L802A99D0
/* 41E73C 802A99AC 00000000 */   nop   
/* 41E740 802A99B0 0C03C5B3 */  jal   func_800F16CC
/* 41E744 802A99B4 00000000 */   nop   
/* 41E748 802A99B8 0C0A9284 */  jal   func_802A4A10
/* 41E74C 802A99BC 00000000 */   nop   
/* 41E750 802A99C0 0C0A8426 */  jal   func_802A1098
/* 41E754 802A99C4 00000000 */   nop   
/* 41E758 802A99C8 080AA6A9 */  j     .L802A9AA4
/* 41E75C 802A99CC 24020021 */   addiu $v0, $zero, 0x21
.L802A99D0:
/* 41E760 802A99D0 0C0A9295 */  jal   func_802A4A54
/* 41E764 802A99D4 00000000 */   nop   
.L802A99D8:
/* 41E768 802A99D8 0C0A846C */  jal   func_802A11B0
/* 41E76C 802A99DC 00000000 */   nop   
/* 41E770 802A99E0 10400032 */  beqz  $v0, .L802A9AAC
/* 41E774 802A99E4 00000000 */   nop   
/* 41E778 802A99E8 8682006E */  lh    $v0, 0x6e($s4)
/* 41E77C 802A99EC 3C01800E */  lui   $at, 0x800e
/* 41E780 802A99F0 AC22C4DC */  sw    $v0, -0x3b24($at)
/* 41E784 802A99F4 0C0AA072 */  jal   update_partner_menu
/* 41E788 802A99F8 00000000 */   nop   
/* 41E78C 802A99FC 0C090464 */  jal   func_80241190
/* 41E790 802A9A00 2404001D */   addiu $a0, $zero, 0x1d
/* 41E794 802A9A04 080AA6AB */  j     .L802A9AAC
/* 41E798 802A9A08 00000000 */   nop   
/* 41E79C 802A9A0C 0C0A9295 */  jal   func_802A4A54
/* 41E7A0 802A9A10 00000000 */   nop   
/* 41E7A4 802A9A14 0C0A846C */  jal   func_802A11B0
/* 41E7A8 802A9A18 00000000 */   nop   
/* 41E7AC 802A9A1C 10400023 */  beqz  $v0, .L802A9AAC
/* 41E7B0 802A9A20 2402001F */   addiu $v0, $zero, 0x1f
/* 41E7B4 802A9A24 080AA6A9 */  j     .L802A9AA4
/* 41E7B8 802A9A28 00000000 */   nop   
/* 41E7BC 802A9A2C 0C03C5B3 */  jal   func_800F16CC
/* 41E7C0 802A9A30 00000000 */   nop   
/* 41E7C4 802A9A34 0C0A9284 */  jal   func_802A4A10
/* 41E7C8 802A9A38 00000000 */   nop   
/* 41E7CC 802A9A3C 0C0A8426 */  jal   func_802A1098
/* 41E7D0 802A9A40 00000000 */   nop   
/* 41E7D4 802A9A44 080AA6A9 */  j     .L802A9AA4
/* 41E7D8 802A9A48 24020021 */   addiu $v0, $zero, 0x21
/* 41E7DC 802A9A4C 0C03C54E */  jal   func_800F1538
/* 41E7E0 802A9A50 00000000 */   nop   
/* 41E7E4 802A9A54 0C0A91CB */  jal   func_802A472C
/* 41E7E8 802A9A58 00000000 */   nop   
/* 41E7EC 802A9A5C 080AA46A */  j     .L802A91A8
/* 41E7F0 802A9A60 00000000 */   nop   
/* 41E7F4 802A9A64 24040006 */  addiu $a0, $zero, 6
/* 41E7F8 802A9A68 0C051F9F */  jal   func_80147E7C
/* 41E7FC 802A9A6C 24050002 */   addiu $a1, $zero, 2
/* 41E800 802A9A70 24040007 */  addiu $a0, $zero, 7
/* 41E804 802A9A74 0C051F9F */  jal   func_80147E7C
/* 41E808 802A9A78 24050002 */   addiu $a1, $zero, 2
/* 41E80C 802A9A7C 8643032C */  lh    $v1, 0x32c($s2)
/* 41E810 802A9A80 2402FFFF */  addiu $v0, $zero, -1
/* 41E814 802A9A84 10620009 */  beq   $v1, $v0, .L802A9AAC
/* 41E818 802A9A88 24040006 */   addiu $a0, $zero, 6
/* 41E81C 802A9A8C 0C051F9F */  jal   func_80147E7C
/* 41E820 802A9A90 24050009 */   addiu $a1, $zero, 9
/* 41E824 802A9A94 24040007 */  addiu $a0, $zero, 7
/* 41E828 802A9A98 0C051F9F */  jal   func_80147E7C
/* 41E82C 802A9A9C 24050009 */   addiu $a1, $zero, 9
/* 41E830 802A9AA0 2402001F */  addiu $v0, $zero, 0x1f
.L802A9AA4:
/* 41E834 802A9AA4 3C01800E */  lui   $at, 0x800e
/* 41E838 802A9AA8 AC22C4DC */  sw    $v0, -0x3b24($at)
.L802A9AAC:
/* 41E83C 802A9AAC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 41E840 802A9AB0 8FBE0030 */  lw    $fp, 0x30($sp)
/* 41E844 802A9AB4 8FB7002C */  lw    $s7, 0x2c($sp)
/* 41E848 802A9AB8 8FB60028 */  lw    $s6, 0x28($sp)
/* 41E84C 802A9ABC 8FB50024 */  lw    $s5, 0x24($sp)
/* 41E850 802A9AC0 8FB40020 */  lw    $s4, 0x20($sp)
/* 41E854 802A9AC4 8FB3001C */  lw    $s3, 0x1c($sp)
/* 41E858 802A9AC8 8FB20018 */  lw    $s2, 0x18($sp)
/* 41E85C 802A9ACC 8FB10014 */  lw    $s1, 0x14($sp)
/* 41E860 802A9AD0 8FB00010 */  lw    $s0, 0x10($sp)
/* 41E864 802A9AD4 D7B80048 */  ldc1  $f24, 0x48($sp)
/* 41E868 802A9AD8 D7B60040 */  ldc1  $f22, 0x40($sp)
/* 41E86C 802A9ADC D7B40038 */  ldc1  $f20, 0x38($sp)
/* 41E870 802A9AE0 03E00008 */  jr    $ra
/* 41E874 802A9AE4 27BD0050 */   addiu $sp, $sp, 0x50

