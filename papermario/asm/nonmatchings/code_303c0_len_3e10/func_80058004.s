.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80058004
/* 033404 80058004 000528C3 */  sra   $a1, $a1, 3
/* 033408 80058008 50A0000E */  beql  $a1, $zero, .L80058044
/* 03340C 8005800C 00041400 */   sll   $v0, $a0, 0x10
/* 033410 80058010 30E2FFFF */  andi  $v0, $a3, 0xffff
/* 033414 80058014 00450018 */  mult  $v0, $a1
/* 033418 80058018 00001012 */  mflo  $v0
/* 03341C 8005801C 00061C00 */  sll   $v1, $a2, 0x10
/* 033420 80058020 00031C03 */  sra   $v1, $v1, 0x10
/* 033424 80058024 00650018 */  mult  $v1, $a1
/* 033428 80058028 00021403 */  sra   $v0, $v0, 0x10
/* 03342C 8005802C 00001812 */  mflo  $v1
/* 033430 80058030 00431021 */  addu  $v0, $v0, $v1
/* 033434 80058034 00821021 */  addu  $v0, $a0, $v0
/* 033438 80058038 00021400 */  sll   $v0, $v0, 0x10
/* 03343C 8005803C 03E00008 */  jr    $ra
/* 033440 80058040 00021403 */   sra   $v0, $v0, 0x10

.L80058044:
/* 033444 80058044 03E00008 */  jr    $ra
/* 033448 80058048 00021403 */   sra   $v0, $v0, 0x10

/* 03344C 8005804C 00000000 */  nop   
