.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel initialize_next_camera
/* 00956C 8002E16C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 009570 8002E170 0080382D */  daddu $a3, $a0, $zero
/* 009574 8002E174 0000202D */  daddu $a0, $zero, $zero
/* 009578 8002E178 3C03800B */  lui   $v1, 0x800b
/* 00957C 8002E17C 24631D80 */  addiu $v1, $v1, 0x1d80
/* 009580 8002E180 AFBF001C */  sw    $ra, 0x1c($sp)
/* 009584 8002E184 AFB00018 */  sw    $s0, 0x18($sp)
.L8002E188:
/* 009588 8002E188 0060802D */  daddu $s0, $v1, $zero
/* 00958C 8002E18C 96020000 */  lhu   $v0, ($s0)
/* 009590 8002E190 10400006 */  beqz  $v0, .L8002E1AC
/* 009594 8002E194 28820004 */   slti  $v0, $a0, 4
/* 009598 8002E198 24840001 */  addiu $a0, $a0, 1
/* 00959C 8002E19C 28820004 */  slti  $v0, $a0, 4
/* 0095A0 8002E1A0 1440FFF9 */  bnez  $v0, .L8002E188
/* 0095A4 8002E1A4 26030558 */   addiu $v1, $s0, 0x558
/* 0095A8 8002E1A8 28820004 */  slti  $v0, $a0, 4
.L8002E1AC:
/* 0095AC 8002E1AC 54400003 */  bnel  $v0, $zero, .L8002E1BC
/* 0095B0 8002E1B0 24030001 */   addiu $v1, $zero, 1
.L8002E1B4:
/* 0095B4 8002E1B4 0800B86D */  j     .L8002E1B4
/* 0095B8 8002E1B8 00000000 */   nop   

.L8002E1BC:
/* 0095BC 8002E1BC 94E20000 */  lhu   $v0, ($a3)
/* 0095C0 8002E1C0 3C01C2C8 */  lui   $at, 0xc2c8
/* 0095C4 8002E1C4 44810000 */  mtc1  $at, $f0
/* 0095C8 8002E1C8 A6000002 */  sh    $zero, 2($s0)
/* 0095CC 8002E1CC AE00003C */  sw    $zero, 0x3c($s0)
/* 0095D0 8002E1D0 AE000040 */  sw    $zero, 0x40($s0)
/* 0095D4 8002E1D4 AE000044 */  sw    $zero, 0x44($s0)
/* 0095D8 8002E1D8 AE000048 */  sw    $zero, 0x48($s0)
/* 0095DC 8002E1DC AE00004C */  sw    $zero, 0x4c($s0)
/* 0095E0 8002E1E0 AE00006C */  sw    $zero, 0x6c($s0)
/* 0095E4 8002E1E4 AE000078 */  sw    $zero, 0x78($s0)
/* 0095E8 8002E1E8 AE00007C */  sw    $zero, 0x7c($s0)
/* 0095EC 8002E1EC AE000084 */  sw    $zero, 0x84($s0)
/* 0095F0 8002E1F0 AE000088 */  sw    $zero, 0x88($s0)
/* 0095F4 8002E1F4 AE00008C */  sw    $zero, 0x8c($s0)
/* 0095F8 8002E1F8 34420005 */  ori   $v0, $v0, 5
/* 0095FC 8002E1FC A6020000 */  sh    $v0, ($s0)
/* 009600 8002E200 E6000050 */  swc1  $f0, 0x50($s0)
/* 009604 8002E204 90E20002 */  lbu   $v0, 2($a3)
/* 009608 8002E208 A6030006 */  sh    $v1, 6($s0)
/* 00960C 8002E20C 00021600 */  sll   $v0, $v0, 0x18
/* 009610 8002E210 00021603 */  sra   $v0, $v0, 0x18
/* 009614 8002E214 A6020004 */  sh    $v0, 4($s0)
/* 009618 8002E218 94E2000C */  lhu   $v0, 0xc($a3)
/* 00961C 8002E21C A6020012 */  sh    $v0, 0x12($s0)
/* 009620 8002E220 94E2000E */  lhu   $v0, 0xe($a3)
/* 009624 8002E224 00042400 */  sll   $a0, $a0, 0x10
/* 009628 8002E228 A6020014 */  sh    $v0, 0x14($s0)
/* 00962C 8002E22C 84E30010 */  lh    $v1, 0x10($a3)
/* 009630 8002E230 24020064 */  addiu $v0, $zero, 0x64
/* 009634 8002E234 A602002A */  sh    $v0, 0x2a($s0)
/* 009638 8002E238 44830000 */  mtc1  $v1, $f0
/* 00963C 8002E23C 00000000 */  nop   
/* 009640 8002E240 46800020 */  cvt.s.w $f0, $f0
/* 009644 8002E244 E6000018 */  swc1  $f0, 0x18($s0)
/* 009648 8002E248 84E20006 */  lh    $v0, 6($a3)
/* 00964C 8002E24C 84E50008 */  lh    $a1, 8($a3)
/* 009650 8002E250 84E6000A */  lh    $a2, 0xa($a3)
/* 009654 8002E254 84E70004 */  lh    $a3, 4($a3)
/* 009658 8002E258 00042403 */  sra   $a0, $a0, 0x10
/* 00965C 8002E25C 0C00B8C5 */  jal   set_cam_viewport
/* 009660 8002E260 AFA20010 */   sw    $v0, 0x10($sp)
/* 009664 8002E264 3C01447A */  lui   $at, 0x447a
/* 009668 8002E268 44810000 */  mtc1  $at, $f0
/* 00966C 8002E26C 3C013E4C */  lui   $at, 0x3e4c
/* 009670 8002E270 3421CCCD */  ori   $at, $at, 0xcccd
/* 009674 8002E274 44811000 */  mtc1  $at, $f2
/* 009678 8002E278 3C013F80 */  lui   $at, 0x3f80
/* 00967C 8002E27C 44812000 */  mtc1  $at, $f4
/* 009680 8002E280 2402FFFF */  addiu $v0, $zero, -1
/* 009684 8002E284 A6020212 */  sh    $v0, 0x212($s0)
/* 009688 8002E288 24020001 */  addiu $v0, $zero, 1
/* 00968C 8002E28C AE020530 */  sw    $v0, 0x530($s0)
/* 009690 8002E290 0200102D */  daddu $v0, $s0, $zero
/* 009694 8002E294 A600002C */  sh    $zero, 0x2c($s0)
/* 009698 8002E298 A600002E */  sh    $zero, 0x2e($s0)
/* 00969C 8002E29C A6000030 */  sh    $zero, 0x30($s0)
/* 0096A0 8002E2A0 AE0000C0 */  sw    $zero, 0xc0($s0)
/* 0096A4 8002E2A4 AE000054 */  sw    $zero, 0x54($s0)
/* 0096A8 8002E2A8 AE000058 */  sw    $zero, 0x58($s0)
/* 0096AC 8002E2AC AE00005C */  sw    $zero, 0x5c($s0)
/* 0096B0 8002E2B0 AE000060 */  sw    $zero, 0x60($s0)
/* 0096B4 8002E2B4 AE000064 */  sw    $zero, 0x64($s0)
/* 0096B8 8002E2B8 AE000068 */  sw    $zero, 0x68($s0)
/* 0096BC 8002E2BC AE000098 */  sw    $zero, 0x98($s0)
/* 0096C0 8002E2C0 AE00009C */  sw    $zero, 0x9c($s0)
/* 0096C4 8002E2C4 AE0001FC */  sw    $zero, 0x1fc($s0)
/* 0096C8 8002E2C8 AE000200 */  sw    $zero, 0x200($s0)
/* 0096CC 8002E2CC AE00050C */  sw    $zero, 0x50c($s0)
/* 0096D0 8002E2D0 AE000510 */  sw    $zero, 0x510($s0)
/* 0096D4 8002E2D4 AE000514 */  sw    $zero, 0x514($s0)
/* 0096D8 8002E2D8 AE000518 */  sw    $zero, 0x518($s0)
/* 0096DC 8002E2DC AE00051C */  sw    $zero, 0x51c($s0)
/* 0096E0 8002E2E0 AE000524 */  sw    $zero, 0x524($s0)
/* 0096E4 8002E2E4 AE000528 */  sw    $zero, 0x528($s0)
/* 0096E8 8002E2E8 AE00052C */  sw    $zero, 0x52c($s0)
/* 0096EC 8002E2EC AE000534 */  sw    $zero, 0x534($s0)
/* 0096F0 8002E2F0 A6000506 */  sh    $zero, 0x506($s0)
/* 0096F4 8002E2F4 A6000504 */  sh    $zero, 0x504($s0)
/* 0096F8 8002E2F8 E60000C4 */  swc1  $f0, 0xc4($s0)
/* 0096FC 8002E2FC E6020520 */  swc1  $f2, 0x520($s0)
/* 009700 8002E300 E6040490 */  swc1  $f4, 0x490($s0)
/* 009704 8002E304 8FBF001C */  lw    $ra, 0x1c($sp)
/* 009708 8002E308 8FB00018 */  lw    $s0, 0x18($sp)
/* 00970C 8002E30C 03E00008 */  jr    $ra
/* 009710 8002E310 27BD0020 */   addiu $sp, $sp, 0x20

