.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8006FFB0
/* 04B3B0 8006FFB0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B3B4 8006FFB4 AFA40010 */  sw    $a0, 0x10($sp)
/* 04B3B8 8006FFB8 AFA50014 */  sw    $a1, 0x14($sp)
/* 04B3BC 8006FFBC AFA60018 */  sw    $a2, 0x18($sp)
/* 04B3C0 8006FFC0 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04B3C4 8006FFC4 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04B3C8 8006FFC8 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04B3CC 8006FFCC E7B00028 */  swc1  $f16, 0x28($sp)
/* 04B3D0 8006FFD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B3D4 8006FFD4 0C016959 */  jal   play_effect
/* 04B3D8 8006FFD8 24040013 */   addiu $a0, $zero, 0x13
/* 04B3DC 8006FFDC 8FA40010 */  lw    $a0, 0x10($sp)
/* 04B3E0 8006FFE0 8FA50014 */  lw    $a1, 0x14($sp)
/* 04B3E4 8006FFE4 8FA60018 */  lw    $a2, 0x18($sp)
/* 04B3E8 8006FFE8 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04B3EC 8006FFEC C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04B3F0 8006FFF0 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04B3F4 8006FFF4 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04B3F8 8006FFF8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B3FC 8006FFFC 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B400 80070000 3C018008 */  lui   $at, 0x8008
/* 04B404 80070004 8C21F3D8 */  lw    $at, -0xc28($at)
/* 04B408 80070008 00200008 */  jr    $at
/* 04B40C 8007000C 00000000 */   nop   
