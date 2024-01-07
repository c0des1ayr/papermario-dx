.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel __osProbeTLB
/* 40220 80064E20 40085000 */  mfc0      $t0, $10 # handwritten instruction
/* 40224 80064E24 310900FF */  andi      $t1, $t0, 0xFF
/* 40228 80064E28 3C01FFFF */  lui       $at, (0xFFFFE000 >> 16)
/* 4022C 80064E2C 3421E000 */  ori       $at, $at, (0xFFFFE000 & 0xFFFF)
/* 40230 80064E30 00815024 */  and       $t2, $a0, $at
/* 40234 80064E34 012A4825 */  or        $t1, $t1, $t2
/* 40238 80064E38 40895000 */  mtc0      $t1, $10 # handwritten instruction
/* 4023C 80064E3C 00000000 */  nop
/* 40240 80064E40 00000000 */  nop
/* 40244 80064E44 00000000 */  nop
/* 40248 80064E48 42000008 */  tlbp # handwritten instruction
/* 4024C 80064E4C 00000000 */  nop
/* 40250 80064E50 00000000 */  nop
/* 40254 80064E54 400B0000 */  mfc0      $t3, $0 # handwritten instruction
/* 40258 80064E58 3C018000 */  lui       $at, (0x80000000 >> 16)
/* 4025C 80064E5C 01615824 */  and       $t3, $t3, $at
/* 40260 80064E60 1560001A */  bnez      $t3, .LIQUE_80064ECC
/* 40264 80064E64 00000000 */   nop
/* 40268 80064E68 42000001 */  tlbr # handwritten instruction
/* 4026C 80064E6C 00000000 */  nop
/* 40270 80064E70 00000000 */  nop
/* 40274 80064E74 00000000 */  nop
/* 40278 80064E78 400B2800 */  mfc0      $t3, $5 # handwritten instruction
/* 4027C 80064E7C 216B2000 */  addi      $t3, $t3, 0x2000 # handwritten instruction
/* 40280 80064E80 000B5842 */  srl       $t3, $t3, 1
/* 40284 80064E84 01646024 */  and       $t4, $t3, $a0
/* 40288 80064E88 15800004 */  bnez      $t4, .LIQUE_80064E9C
/* 4028C 80064E8C 216BFFFF */   addi     $t3, $t3, -0x1 # handwritten instruction
/* 40290 80064E90 40021000 */  mfc0      $v0, $2 # handwritten instruction
/* 40294 80064E94 10000002 */  b         .LIQUE_80064EA0
/* 40298 80064E98 00000000 */   nop
.LIQUE_80064E9C:
/* 4029C 80064E9C 40021800 */  mfc0      $v0, $3 # handwritten instruction
.LIQUE_80064EA0:
/* 402A0 80064EA0 304D0002 */  andi      $t5, $v0, 0x2
/* 402A4 80064EA4 11A00009 */  beqz      $t5, .LIQUE_80064ECC
/* 402A8 80064EA8 00000000 */   nop
/* 402AC 80064EAC 3C013FFF */  lui       $at, (0x3FFFFFC0 >> 16)
/* 402B0 80064EB0 3421FFC0 */  ori       $at, $at, (0x3FFFFFC0 & 0xFFFF)
/* 402B4 80064EB4 00411024 */  and       $v0, $v0, $at
/* 402B8 80064EB8 00021180 */  sll       $v0, $v0, 6
/* 402BC 80064EBC 008B6824 */  and       $t5, $a0, $t3
/* 402C0 80064EC0 004D1020 */  add       $v0, $v0, $t5 # handwritten instruction
/* 402C4 80064EC4 10000002 */  b         .LIQUE_80064ED0
/* 402C8 80064EC8 00000000 */   nop
.LIQUE_80064ECC:
/* 402CC 80064ECC 2402FFFF */  addiu     $v0, $zero, -0x1
.LIQUE_80064ED0:
/* 402D0 80064ED0 40885000 */  mtc0      $t0, $10 # handwritten instruction
/* 402D4 80064ED4 03E00008 */  jr        $ra
/* 402D8 80064ED8 00000000 */   nop
/* 402DC 80064EDC 00000000 */  nop