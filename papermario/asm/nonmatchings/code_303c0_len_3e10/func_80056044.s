.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80056044
/* 031444 80056044 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 031448 80056048 30A200FF */  andi  $v0, $a1, 0xff
/* 03144C 8005604C 3C055700 */  lui   $a1, 0x5700
/* 031450 80056050 AFBF0010 */  sw    $ra, 0x10($sp)
/* 031454 80056054 0C0141B2 */  jal   func_800506C8
/* 031458 80056058 00452825 */   or    $a1, $v0, $a1
/* 03145C 8005605C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 031460 80056060 03E00008 */  jr    $ra
/* 031464 80056064 27BD0018 */   addiu $sp, $sp, 0x18

