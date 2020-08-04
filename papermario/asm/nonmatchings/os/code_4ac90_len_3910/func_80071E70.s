.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80071E70
/* 04D270 80071E70 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04D274 80071E74 AFA40010 */  sw    $a0, 0x10($sp)
/* 04D278 80071E78 AFA50014 */  sw    $a1, 0x14($sp)
/* 04D27C 80071E7C AFA60018 */  sw    $a2, 0x18($sp)
/* 04D280 80071E80 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04D284 80071E84 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04D288 80071E88 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04D28C 80071E8C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04D290 80071E90 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04D294 80071E94 0C016959 */  jal   play_effect
/* 04D298 80071E98 24040065 */   addiu $a0, $zero, 0x65
/* 04D29C 80071E9C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04D2A0 80071EA0 8FA50014 */  lw    $a1, 0x14($sp)
/* 04D2A4 80071EA4 8FA60018 */  lw    $a2, 0x18($sp)
/* 04D2A8 80071EA8 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04D2AC 80071EAC C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04D2B0 80071EB0 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04D2B4 80071EB4 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04D2B8 80071EB8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04D2BC 80071EBC 27BD0030 */  addiu $sp, $sp, 0x30
/* 04D2C0 80071EC0 3C018008 */  lui   $at, 0x8008
/* 04D2C4 80071EC4 8C21FB88 */  lw    $at, -0x478($at)
/* 04D2C8 80071EC8 00200008 */  jr    $at
/* 04D2CC 80071ECC 00000000 */   nop   
