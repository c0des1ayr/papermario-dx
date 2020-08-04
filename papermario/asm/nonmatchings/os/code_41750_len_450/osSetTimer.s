.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osSetTimer
/* 041750 80066350 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 041754 80066354 8FA20030 */  lw    $v0, 0x30($sp)
/* 041758 80066358 8FA30034 */  lw    $v1, 0x34($sp)
/* 04175C 8006635C AFB00010 */  sw    $s0, 0x10($sp)
/* 041760 80066360 00808021 */  addu  $s0, $a0, $zero
/* 041764 80066364 AFBF001C */  sw    $ra, 0x1c($sp)
/* 041768 80066368 AFB20018 */  sw    $s2, 0x18($sp)
/* 04176C 8006636C AFB10014 */  sw    $s1, 0x14($sp)
/* 041770 80066370 AE000000 */  sw    $zero, ($s0)
/* 041774 80066374 AE000004 */  sw    $zero, 4($s0)
/* 041778 80066378 AE060010 */  sw    $a2, 0x10($s0)
/* 04177C 8006637C AE070014 */  sw    $a3, 0x14($s0)
/* 041780 80066380 AE020008 */  sw    $v0, 8($s0)
/* 041784 80066384 AE03000C */  sw    $v1, 0xc($s0)
/* 041788 80066388 8FA40038 */  lw    $a0, 0x38($sp)
/* 04178C 8006638C 8FA5003C */  lw    $a1, 0x3c($sp)
/* 041790 80066390 54C00006 */  bnel  $a2, $zero, .L800663AC
/* 041794 80066394 AE040018 */   sw    $a0, 0x18($s0)
/* 041798 80066398 54E00004 */  bnel  $a3, $zero, .L800663AC
/* 04179C 8006639C AE040018 */   sw    $a0, 0x18($s0)
/* 0417A0 800663A0 AE020010 */  sw    $v0, 0x10($s0)
/* 0417A4 800663A4 AE030014 */  sw    $v1, 0x14($s0)
/* 0417A8 800663A8 AE040018 */  sw    $a0, 0x18($s0)
.L800663AC:
/* 0417AC 800663AC 0C01ACD8 */  jal   __osDisableInt
/* 0417B0 800663B0 AE05001C */   sw    $a1, 0x1c($s0)
/* 0417B4 800663B4 3C038009 */  lui   $v1, 0x8009
/* 0417B8 800663B8 8C634670 */  lw    $v1, 0x4670($v1)
/* 0417BC 800663BC 8C640000 */  lw    $a0, ($v1)
/* 0417C0 800663C0 1083001D */  beq   $a0, $v1, .L80066438
/* 0417C4 800663C4 00409021 */   addu  $s2, $v0, $zero
/* 0417C8 800663C8 0C019680 */  jal   osGetCount
/* 0417CC 800663CC 00808821 */   addu  $s1, $a0, $zero
/* 0417D0 800663D0 3C03800A */  lui   $v1, 0x800a
/* 0417D4 800663D4 8C63A62C */  lw    $v1, -0x59d4($v1)
/* 0417D8 800663D8 00431023 */  subu  $v0, $v0, $v1
/* 0417DC 800663DC 8E230010 */  lw    $v1, 0x10($s1)
/* 0417E0 800663E0 00403821 */  addu  $a3, $v0, $zero
/* 0417E4 800663E4 00003021 */  addu  $a2, $zero, $zero
/* 0417E8 800663E8 00C3102B */  sltu  $v0, $a2, $v1
/* 0417EC 800663EC 14400007 */  bnez  $v0, .L8006640C
/* 0417F0 800663F0 00000000 */   nop   
/* 0417F4 800663F4 1466000C */  bne   $v1, $a2, .L80066428
/* 0417F8 800663F8 00000000 */   nop   
/* 0417FC 800663FC 8E220014 */  lw    $v0, 0x14($s1)
/* 041800 80066400 00E2102B */  sltu  $v0, $a3, $v0
/* 041804 80066404 10400008 */  beqz  $v0, .L80066428
/* 041808 80066408 00000000 */   nop   
.L8006640C:
/* 04180C 8006640C 8E220010 */  lw    $v0, 0x10($s1)
/* 041810 80066410 8E230014 */  lw    $v1, 0x14($s1)
/* 041814 80066414 0067202B */  sltu  $a0, $v1, $a3
/* 041818 80066418 00671823 */  subu  $v1, $v1, $a3
/* 04181C 8006641C 00461023 */  subu  $v0, $v0, $a2
/* 041820 80066420 0801990C */  j     .L80066430
/* 041824 80066424 00441023 */   subu  $v0, $v0, $a0

.L80066428:
/* 041828 80066428 24020000 */  addiu $v0, $zero, 0
/* 04182C 8006642C 24030001 */  addiu $v1, $zero, 1
.L80066430:
/* 041830 80066430 AE220010 */  sw    $v0, 0x10($s1)
/* 041834 80066434 AE230014 */  sw    $v1, 0x14($s1)
.L80066438:
/* 041838 80066438 0C0199A4 */  jal   osInsertTimer
/* 04183C 8006643C 02002021 */   addu  $a0, $s0, $zero
/* 041840 80066440 3C028009 */  lui   $v0, 0x8009
/* 041844 80066444 8C424670 */  lw    $v0, 0x4670($v0)
/* 041848 80066448 8C420000 */  lw    $v0, ($v0)
/* 04184C 8006644C 8C440010 */  lw    $a0, 0x10($v0)
/* 041850 80066450 0C019984 */  jal   osSetTimerIntr
/* 041854 80066454 8C450014 */   lw    $a1, 0x14($v0)
/* 041858 80066458 0C01ACF4 */  jal   __osRestoreInt
/* 04185C 8006645C 02402021 */   addu  $a0, $s2, $zero
/* 041860 80066460 00001021 */  addu  $v0, $zero, $zero
/* 041864 80066464 8FBF001C */  lw    $ra, 0x1c($sp)
/* 041868 80066468 8FB20018 */  lw    $s2, 0x18($sp)
/* 04186C 8006646C 8FB10014 */  lw    $s1, 0x14($sp)
/* 041870 80066470 8FB00010 */  lw    $s0, 0x10($sp)
/* 041874 80066474 03E00008 */  jr    $ra
/* 041878 80066478 27BD0020 */   addiu $sp, $sp, 0x20

/* 04187C 8006647C 00000000 */  nop   
