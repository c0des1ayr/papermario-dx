.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80057224
/* 032624 80057224 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 032628 80057228 308400FF */  andi  $a0, $a0, 0xff
/* 03262C 8005722C 00041140 */  sll   $v0, $a0, 5
/* 032630 80057230 3C038008 */  lui   $v1, 0x8008
/* 032634 80057234 8C638E54 */  lw    $v1, -0x71ac($v1)
/* 032638 80057238 00441023 */  subu  $v0, $v0, $a0
/* 03263C 8005723C AFBF0010 */  sw    $ra, 0x10($sp)
/* 032640 80057240 8C63001C */  lw    $v1, 0x1c($v1)
/* 032644 80057244 00021080 */  sll   $v0, $v0, 2
/* 032648 80057248 00623021 */  addu  $a2, $v1, $v0
/* 03264C 8005724C ACC50018 */  sw    $a1, 0x18($a2)
/* 032650 80057250 24C50004 */  addiu $a1, $a2, 4
/* 032654 80057254 8CA20014 */  lw    $v0, 0x14($a1)
/* 032658 80057258 8C420000 */  lw    $v0, ($v0)
/* 03265C 8005725C ACC00028 */  sw    $zero, 0x28($a2)
/* 032660 80057260 ACC20034 */  sw    $v0, 0x34($a2)
/* 032664 80057264 8CA40014 */  lw    $a0, 0x14($a1)
/* 032668 80057268 90830024 */  lbu   $v1, 0x24($a0)
/* 03266C 8005726C 10600005 */  beqz  $v1, .L80057284
/* 032670 80057270 24020001 */   addiu $v0, $zero, 1
/* 032674 80057274 10620022 */  beq   $v1, $v0, .L80057300
/* 032678 80057278 00000000 */   nop   
/* 03267C 8005727C 08015CCE */  j     .L80057338
/* 032680 80057280 00000000 */   nop   

.L80057284:
/* 032684 80057284 3C0338E3 */  lui   $v1, 0x38e3
/* 032688 80057288 8C820004 */  lw    $v0, 4($a0)
/* 03268C 8005728C 34638E39 */  ori   $v1, $v1, 0x8e39
/* 032690 80057290 00430019 */  multu $v0, $v1
/* 032694 80057294 00003810 */  mfhi  $a3
/* 032698 80057298 00071842 */  srl   $v1, $a3, 1
/* 03269C 8005729C 000310C0 */  sll   $v0, $v1, 3
/* 0326A0 800572A0 00431021 */  addu  $v0, $v0, $v1
/* 0326A4 800572A4 AC820004 */  sw    $v0, 4($a0)
/* 0326A8 800572A8 8CA20014 */  lw    $v0, 0x14($a1)
/* 0326AC 800572AC 9442001C */  lhu   $v0, 0x1c($v0)
/* 0326B0 800572B0 ACC2001C */  sw    $v0, 0x1c($a2)
/* 0326B4 800572B4 8CA30014 */  lw    $v1, 0x14($a1)
/* 0326B8 800572B8 8C620010 */  lw    $v0, 0x10($v1)
/* 0326BC 800572BC 5040001C */  beql  $v0, $zero, .L80057330
/* 0326C0 800572C0 ACC00014 */   sw    $zero, 0x14($a2)
/* 0326C4 800572C4 8C62000C */  lw    $v0, 0xc($v1)
/* 0326C8 800572C8 ACC2000C */  sw    $v0, 0xc($a2)
/* 0326CC 800572CC 8CA20014 */  lw    $v0, 0x14($a1)
/* 0326D0 800572D0 8C420010 */  lw    $v0, 0x10($v0)
/* 0326D4 800572D4 ACC20010 */  sw    $v0, 0x10($a2)
/* 0326D8 800572D8 8CA20014 */  lw    $v0, 0x14($a1)
/* 0326DC 800572DC 8C420014 */  lw    $v0, 0x14($v0)
/* 0326E0 800572E0 ACC20014 */  sw    $v0, 0x14($a2)
/* 0326E4 800572E4 8CA20014 */  lw    $v0, 0x14($a1)
/* 0326E8 800572E8 8CC50008 */  lw    $a1, 8($a2)
/* 0326EC 800572EC 8C440008 */  lw    $a0, 8($v0)
/* 0326F0 800572F0 0C015FF6 */  jal   func_80057FD8
/* 0326F4 800572F4 24060020 */   addiu $a2, $zero, 0x20
/* 0326F8 800572F8 08015CCE */  j     .L80057338
/* 0326FC 800572FC 00000000 */   nop   

.L80057300:
/* 032700 80057300 8C820010 */  lw    $v0, 0x10($a0)
/* 032704 80057304 5040000A */  beql  $v0, $zero, .L80057330
/* 032708 80057308 ACC00014 */   sw    $zero, 0x14($a2)
/* 03270C 8005730C 8C82000C */  lw    $v0, 0xc($a0)
/* 032710 80057310 ACC2000C */  sw    $v0, 0xc($a2)
/* 032714 80057314 8CA20014 */  lw    $v0, 0x14($a1)
/* 032718 80057318 8C420010 */  lw    $v0, 0x10($v0)
/* 03271C 8005731C ACC20010 */  sw    $v0, 0x10($a2)
/* 032720 80057320 8CA20014 */  lw    $v0, 0x14($a1)
/* 032724 80057324 8C420014 */  lw    $v0, 0x14($v0)
/* 032728 80057328 08015CCE */  j     .L80057338
/* 03272C 8005732C ACC20014 */   sw    $v0, 0x14($a2)

.L80057330:
/* 032730 80057330 ACC00010 */  sw    $zero, 0x10($a2)
/* 032734 80057334 ACC0000C */  sw    $zero, 0xc($a2)
.L80057338:
/* 032738 80057338 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03273C 8005733C 03E00008 */  jr    $ra
/* 032740 80057340 27BD0018 */   addiu $sp, $sp, 0x18

