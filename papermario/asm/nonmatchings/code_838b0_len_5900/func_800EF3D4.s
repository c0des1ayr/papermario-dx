.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800EF3D4
/* 088884 800EF3D4 3C018011 */  lui   $at, 0x8011
/* 088888 800EF3D8 A424CFCA */  sh    $a0, -0x3036($at)
/* 08888C 800EF3DC 03E00008 */  jr    $ra
/* 088890 800EF3E0 00000000 */   nop   

