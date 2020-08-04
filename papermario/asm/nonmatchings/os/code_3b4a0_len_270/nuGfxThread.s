.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel nuGfxThread
/* 03B648 80060248 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 03B64C 8006024C AFB00028 */  sw    $s0, 0x28($sp)
/* 03B650 80060250 3C10800B */  lui   $s0, 0x800b
/* 03B654 80060254 261042F0 */  addiu $s0, $s0, 0x42f0
/* 03B658 80060258 0200202D */  daddu $a0, $s0, $zero
/* 03B65C 8006025C 3C05800B */  lui   $a1, 0x800b
/* 03B660 80060260 24A5C6B0 */  addiu $a1, $a1, -0x3950
/* 03B664 80060264 24060008 */  addiu $a2, $zero, 8
/* 03B668 80060268 AFBF0030 */  sw    $ra, 0x30($sp)
/* 03B66C 8006026C 0C019560 */  jal   osCreateMesgQueue
/* 03B670 80060270 AFB1002C */   sw    $s1, 0x2c($sp)
/* 03B674 80060274 27A40010 */  addiu $a0, $sp, 0x10
/* 03B678 80060278 0200282D */  daddu $a1, $s0, $zero
/* 03B67C 8006027C 0C017B8C */  jal   nuScAddClient
/* 03B680 80060280 24060003 */   addiu $a2, $zero, 3
/* 03B684 80060284 24110001 */  addiu $s1, $zero, 1
/* 03B688 80060288 24100002 */  addiu $s0, $zero, 2
.L8006028C:
/* 03B68C 8006028C 3C04800B */  lui   $a0, 0x800b
/* 03B690 80060290 248442F0 */  addiu $a0, $a0, 0x42f0
/* 03B694 80060294 27A50020 */  addiu $a1, $sp, 0x20
/* 03B698 80060298 0C0195BC */  jal   osRecvMesg
/* 03B69C 8006029C 24060001 */   addiu $a2, $zero, 1
/* 03B6A0 800602A0 8FA20020 */  lw    $v0, 0x20($sp)
/* 03B6A4 800602A4 84420000 */  lh    $v0, ($v0)
/* 03B6A8 800602A8 10510005 */  beq   $v0, $s1, .L800602C0
/* 03B6AC 800602AC 00000000 */   nop   
/* 03B6B0 800602B0 1050000D */  beq   $v0, $s0, .L800602E8
/* 03B6B4 800602B4 00000000 */   nop   
/* 03B6B8 800602B8 080180A3 */  j     .L8006028C
/* 03B6BC 800602BC 00000000 */   nop   

.L800602C0:
/* 03B6C0 800602C0 3C028009 */  lui   $v0, 0x8009
/* 03B6C4 800602C4 8C423D10 */  lw    $v0, 0x3d10($v0)
/* 03B6C8 800602C8 1040FFF0 */  beqz  $v0, .L8006028C
/* 03B6CC 800602CC 00000000 */   nop   
/* 03B6D0 800602D0 3C04800A */  lui   $a0, 0x800a
/* 03B6D4 800602D4 8C84A618 */  lw    $a0, -0x59e8($a0)
/* 03B6D8 800602D8 0040F809 */  jalr  $v0
/* 03B6DC 800602DC 00000000 */  nop   
/* 03B6E0 800602E0 080180A3 */  j     .L8006028C
/* 03B6E4 800602E4 00000000 */   nop   

.L800602E8:
/* 03B6E8 800602E8 3C028009 */  lui   $v0, 0x8009
/* 03B6EC 800602EC 8C423D14 */  lw    $v0, 0x3d14($v0)
/* 03B6F0 800602F0 1040FFE6 */  beqz  $v0, .L8006028C
/* 03B6F4 800602F4 00000000 */   nop   
/* 03B6F8 800602F8 0040F809 */  jalr  $v0
/* 03B6FC 800602FC 00000000 */  nop   
/* 03B700 80060300 080180A3 */  j     .L8006028C
/* 03B704 80060304 00000000 */   nop   

/* 03B708 80060308 00000000 */  nop   
/* 03B70C 8006030C 00000000 */  nop   

.set reorder
