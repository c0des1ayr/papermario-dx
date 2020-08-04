.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osPfsNumFiles
/* 044490 80069090 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 044494 80069094 AFB00038 */  sw    $s0, 0x38($sp)
/* 044498 80069098 00808021 */  addu  $s0, $a0, $zero
/* 04449C 8006909C AFB40048 */  sw    $s4, 0x48($sp)
/* 0444A0 800690A0 00A0A021 */  addu  $s4, $a1, $zero
/* 0444A4 800690A4 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0444A8 800690A8 AFB30044 */  sw    $s3, 0x44($sp)
/* 0444AC 800690AC AFB20040 */  sw    $s2, 0x40($sp)
/* 0444B0 800690B0 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0444B4 800690B4 8E020000 */  lw    $v0, ($s0)
/* 0444B8 800690B8 00C09821 */  addu  $s3, $a2, $zero
/* 0444BC 800690BC 30420001 */  andi  $v0, $v0, 1
/* 0444C0 800690C0 14400003 */  bnez  $v0, .L800690D0
/* 0444C4 800690C4 00009021 */   addu  $s2, $zero, $zero
/* 0444C8 800690C8 0801A45C */  j     .L80069170
/* 0444CC 800690CC 24020005 */   addiu $v0, $zero, 5

.L800690D0:
/* 0444D0 800690D0 0C01A775 */  jal   osCheckId
/* 0444D4 800690D4 02002021 */   addu  $a0, $s0, $zero
/* 0444D8 800690D8 14400025 */  bnez  $v0, .L80069170
/* 0444DC 800690DC 00000000 */   nop   
/* 0444E0 800690E0 92020065 */  lbu   $v0, 0x65($s0)
/* 0444E4 800690E4 10400005 */  beqz  $v0, .L800690FC
/* 0444E8 800690E8 02002021 */   addu  $a0, $s0, $zero
/* 0444EC 800690EC 0C01A5B4 */  jal   osPfsSelectBank
/* 0444F0 800690F0 00002821 */   addu  $a1, $zero, $zero
/* 0444F4 800690F4 1440001E */  bnez  $v0, .L80069170
/* 0444F8 800690F8 00000000 */   nop   
.L800690FC:
/* 0444FC 800690FC 8E020050 */  lw    $v0, 0x50($s0)
/* 044500 80069100 18400015 */  blez  $v0, .L80069158
/* 044504 80069104 00008821 */   addu  $s1, $zero, $zero
.L80069108:
/* 044508 80069108 8E06005C */  lw    $a2, 0x5c($s0)
/* 04450C 8006910C 8E040004 */  lw    $a0, 4($s0)
/* 044510 80069110 8E050008 */  lw    $a1, 8($s0)
/* 044514 80069114 27A70010 */  addiu $a3, $sp, 0x10
/* 044518 80069118 00D13021 */  addu  $a2, $a2, $s1
/* 04451C 8006911C 0C01A874 */  jal   osContRamRead
/* 044520 80069120 30C6FFFF */   andi  $a2, $a2, 0xffff
/* 044524 80069124 14400012 */  bnez  $v0, .L80069170
/* 044528 80069128 00000000 */   nop   
/* 04452C 8006912C 97A20014 */  lhu   $v0, 0x14($sp)
/* 044530 80069130 10400004 */  beqz  $v0, .L80069144
/* 044534 80069134 00000000 */   nop   
/* 044538 80069138 8FA20010 */  lw    $v0, 0x10($sp)
/* 04453C 8006913C 0002102B */  sltu  $v0, $zero, $v0
/* 044540 80069140 02429021 */  addu  $s2, $s2, $v0
.L80069144:
/* 044544 80069144 8E020050 */  lw    $v0, 0x50($s0)
/* 044548 80069148 26310001 */  addiu $s1, $s1, 1
/* 04454C 8006914C 0222102A */  slt   $v0, $s1, $v0
/* 044550 80069150 1440FFED */  bnez  $v0, .L80069108
/* 044554 80069154 00000000 */   nop   
.L80069158:
/* 044558 80069158 AE720000 */  sw    $s2, ($s3)
/* 04455C 8006915C 8E020050 */  lw    $v0, 0x50($s0)
/* 044560 80069160 AE820000 */  sw    $v0, ($s4)
/* 044564 80069164 8E040004 */  lw    $a0, 4($s0)
/* 044568 80069168 0C01A530 */  jal   osPfsGetStatus
/* 04456C 8006916C 8E050008 */   lw    $a1, 8($s0)
.L80069170:
/* 044570 80069170 8FBF004C */  lw    $ra, 0x4c($sp)
/* 044574 80069174 8FB40048 */  lw    $s4, 0x48($sp)
/* 044578 80069178 8FB30044 */  lw    $s3, 0x44($sp)
/* 04457C 8006917C 8FB20040 */  lw    $s2, 0x40($sp)
/* 044580 80069180 8FB1003C */  lw    $s1, 0x3c($sp)
/* 044584 80069184 8FB00038 */  lw    $s0, 0x38($sp)
/* 044588 80069188 03E00008 */  jr    $ra
/* 04458C 8006918C 27BD0050 */   addiu $sp, $sp, 0x50

