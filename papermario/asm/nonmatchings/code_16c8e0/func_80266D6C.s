.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80266D6C
/* 19564C 80266D6C 8C820094 */  lw    $v0, 0x94($a0)
/* 195650 80266D70 1040000C */  beqz  $v0, .L80266DA4
/* 195654 80266D74 00000000 */   nop   
/* 195658 80266D78 8C820000 */  lw    $v0, ($a0)
/* 19565C 80266D7C 30420002 */  andi  $v0, $v0, 2
/* 195660 80266D80 14400008 */  bnez  $v0, .L80266DA4
/* 195664 80266D84 00000000 */   nop   
/* 195668 80266D88 8C8400C0 */  lw    $a0, 0xc0($a0)
/* 19566C 80266D8C 808206C0 */  lb    $v0, 0x6c0($a0)
/* 195670 80266D90 10450004 */  beq   $v0, $a1, .L80266DA4
/* 195674 80266D94 24020001 */   addiu $v0, $zero, 1
/* 195678 80266D98 A08506C0 */  sb    $a1, 0x6c0($a0)
/* 19567C 80266D9C A08006C2 */  sb    $zero, 0x6c2($a0)
/* 195680 80266DA0 A08206C1 */  sb    $v0, 0x6c1($a0)
.L80266DA4:
/* 195684 80266DA4 03E00008 */  jr    $ra
/* 195688 80266DA8 00000000 */   nop   

