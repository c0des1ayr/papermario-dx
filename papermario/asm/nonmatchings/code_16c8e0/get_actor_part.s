.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel get_actor_part
/* 192D3C 8026445C 04A00004 */  bltz  $a1, .L80264470
/* 192D40 80264460 8C8301F4 */   lw    $v1, 0x1f4($a0)
/* 192D44 80264464 8C62000C */  lw    $v0, 0xc($v1)
/* 192D48 80264468 14400003 */  bnez  $v0, .L80264478
/* 192D4C 8026446C 00000000 */   nop   
.L80264470:
/* 192D50 80264470 03E00008 */  jr    $ra
/* 192D54 80264474 0060102D */   daddu $v0, $v1, $zero

.L80264478:
/* 192D58 80264478 10600008 */  beqz  $v1, .L8026449C
/* 192D5C 8026447C 00000000 */   nop   
.L80264480:
/* 192D60 80264480 8C620008 */  lw    $v0, 8($v1)
/* 192D64 80264484 80420004 */  lb    $v0, 4($v0)
/* 192D68 80264488 1045FFF9 */  beq   $v0, $a1, .L80264470
/* 192D6C 8026448C 00000000 */   nop   
/* 192D70 80264490 8C63000C */  lw    $v1, 0xc($v1)
/* 192D74 80264494 1460FFFA */  bnez  $v1, .L80264480
/* 192D78 80264498 00000000 */   nop   
.L8026449C:
/* 192D7C 8026449C 03E00008 */  jr    $ra
/* 192D80 802644A0 0000102D */   daddu $v0, $zero, $zero

