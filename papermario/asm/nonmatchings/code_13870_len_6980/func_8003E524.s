.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003E524
/* 019924 8003E524 3C03800A */  lui   $v1, 0x800a
/* 019928 8003E528 8C63A600 */  lw    $v1, -0x5a00($v1)
/* 01992C 8003E52C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 019930 8003E530 2C620006 */  sltiu $v0, $v1, 6
/* 019934 8003E534 10400019 */  beqz  $v0, .L8003E59C
/* 019938 8003E538 AFBF0010 */   sw    $ra, 0x10($sp)
/* 01993C 8003E53C 00031080 */  sll   $v0, $v1, 2
/* 019940 8003E540 3C01800A */  lui   $at, 0x800a
/* 019944 8003E544 00220821 */  addu  $at, $at, $v0
/* 019948 8003E548 8C2285C0 */  lw    $v0, -0x7a40($at)
/* 01994C 8003E54C 00400008 */  jr    $v0
/* 019950 8003E550 00000000 */   nop   
/* 019954 8003E554 0C010DAC */  jal   create_npcs
/* 019958 8003E558 00000000 */   nop   
/* 01995C 8003E55C 0800F967 */  j     .L8003E59C
/* 019960 8003E560 00000000 */   nop   

/* 019964 8003E564 0C00FDF3 */  jal   func_8003F7CC
/* 019968 8003E568 00000000 */   nop   
/* 01996C 8003E56C 0800F967 */  j     .L8003E59C
/* 019970 8003E570 00000000 */   nop   

/* 019974 8003E574 0C0104D9 */  jal   func_80041364
/* 019978 8003E578 00000000 */   nop   
/* 01997C 8003E57C 0800F967 */  j     .L8003E59C
/* 019980 8003E580 00000000 */   nop   

/* 019984 8003E584 0C010C27 */  jal   func_8004309C
/* 019988 8003E588 00000000 */   nop   
/* 01998C 8003E58C 0800F967 */  j     .L8003E59C
/* 019990 8003E590 00000000 */   nop   

/* 019994 8003E594 0C0107C4 */  jal   func_80041F10
/* 019998 8003E598 00000000 */   nop   
.L8003E59C:
/* 01999C 8003E59C 0C0116DA */  jal   func_80045B68
/* 0199A0 8003E5A0 00000000 */   nop   
/* 0199A4 8003E5A4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0199A8 8003E5A8 03E00008 */  jr    $ra
/* 0199AC 8003E5AC 27BD0018 */   addiu $sp, $sp, 0x18

