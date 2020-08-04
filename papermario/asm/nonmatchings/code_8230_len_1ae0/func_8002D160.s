.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8002D160
/* 008560 8002D160 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 008564 8002D164 AFB60030 */  sw    $s6, 0x30($sp)
/* 008568 8002D168 3C16759A */  lui   $s6, 0x759a
/* 00856C 8002D16C 26D6F6D8 */  addiu $s6, $s6, -0x928
/* 008570 8002D170 AFB5002C */  sw    $s5, 0x2c($sp)
/* 008574 8002D174 3C15F79E */  lui   $s5, 0xf79e
/* 008578 8002D178 26B5DD0F */  addiu $s5, $s5, -0x22f1
/* 00857C 8002D17C AFB30024 */  sw    $s3, 0x24($sp)
/* 008580 8002D180 3C130B11 */  lui   $s3, 0xb11
/* 008584 8002D184 36732D28 */  ori   $s3, $s3, 0x2d28
/* 008588 8002D188 AFB00018 */  sw    $s0, 0x18($sp)
/* 00858C 8002D18C 0000802D */  daddu $s0, $zero, $zero
/* 008590 8002D190 3C05B000 */  lui   $a1, 0xb000
/* 008594 8002D194 34A50D10 */  ori   $a1, $a1, 0xd10
/* 008598 8002D198 3C04800A */  lui   $a0, 0x800a
/* 00859C 8002D19C 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 0085A0 8002D1A0 27A60010 */  addiu $a2, $sp, 0x10
/* 0085A4 8002D1A4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0085A8 8002D1A8 0200902D */  daddu $s2, $s0, $zero
/* 0085AC 8002D1AC AFB40028 */  sw    $s4, 0x28($sp)
/* 0085B0 8002D1B0 3C148006 */  lui   $s4, 0x8006
/* 0085B4 8002D1B4 26940DC0 */  addiu $s4, $s4, 0xdc0
/* 0085B8 8002D1B8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0085BC 8002D1BC AFBE0038 */  sw    $fp, 0x38($sp)
/* 0085C0 8002D1C0 AFB70034 */  sw    $s7, 0x34($sp)
/* 0085C4 8002D1C4 0280F809 */  jalr  $s4
/* 0085C8 8002D1C8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0085CC 8002D1CC 3C110031 */  lui   $s1, 0x31
/* 0085D0 8002D1D0 26316D90 */  addiu $s1, $s1, 0x6d90
/* 0085D4 8002D1D4 8FA20010 */  lw    $v0, 0x10($sp)
/* 0085D8 8002D1D8 3C030031 */  lui   $v1, 0x31
/* 0085DC 8002D1DC 24636F30 */  addiu $v1, $v1, 0x6f30
/* 0085E0 8002D1E0 02629823 */  subu  $s3, $s3, $v0
/* 0085E4 8002D1E4 0223102B */  sltu  $v0, $s1, $v1
/* 0085E8 8002D1E8 1040002B */  beqz  $v0, .L8002D298
/* 0085EC 8002D1EC 241E0003 */   addiu $fp, $zero, 3
/* 0085F0 8002D1F0 0060B82D */  daddu $s7, $v1, $zero
.L8002D1F4:
/* 0085F4 8002D1F4 0220282D */  daddu $a1, $s1, $zero
/* 0085F8 8002D1F8 3C04800A */  lui   $a0, 0x800a
/* 0085FC 8002D1FC 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 008600 8002D200 0280F809 */  jalr  $s4
/* 008604 8002D204 27A60010 */  addiu $a2, $sp, 0x10
/* 008608 8002D208 8FA30010 */  lw    $v1, 0x10($sp)
/* 00860C 8002D20C 2407000F */  addiu $a3, $zero, 0xf
/* 008610 8002D210 3065FFFF */  andi  $a1, $v1, 0xffff
/* 008614 8002D214 00032402 */  srl   $a0, $v1, 0x10
/* 008618 8002D218 00A41021 */  addu  $v0, $a1, $a0
/* 00861C 8002D21C 02028021 */  addu  $s0, $s0, $v0
/* 008620 8002D220 00121682 */  srl   $v0, $s2, 0x1a
/* 008624 8002D224 14470010 */  bne   $v0, $a3, .L8002D268
/* 008628 8002D228 00031682 */   srl   $v0, $v1, 0x1a
/* 00862C 8002D22C 24070009 */  addiu $a3, $zero, 9
/* 008630 8002D230 50470004 */  beql  $v0, $a3, .L8002D244
/* 008634 8002D234 00031542 */   srl   $v0, $v1, 0x15
/* 008638 8002D238 24070023 */  addiu $a3, $zero, 0x23
/* 00863C 8002D23C 1447000A */  bne   $v0, $a3, .L8002D268
/* 008640 8002D240 00031542 */   srl   $v0, $v1, 0x15
.L8002D244:
/* 008644 8002D244 3043001F */  andi  $v1, $v0, 0x1f
/* 008648 8002D248 00121402 */  srl   $v0, $s2, 0x10
/* 00864C 8002D24C 3042001F */  andi  $v0, $v0, 0x1f
/* 008650 8002D250 14620005 */  bne   $v1, $v0, .L8002D268
/* 008654 8002D254 3082001F */   andi  $v0, $a0, 0x1f
/* 008658 8002D258 14620003 */  bne   $v1, $v0, .L8002D268
/* 00865C 8002D25C 3242FFFF */   andi  $v0, $s2, 0xffff
/* 008660 8002D260 02058023 */  subu  $s0, $s0, $a1
/* 008664 8002D264 02028023 */  subu  $s0, $s0, $v0
.L8002D268:
/* 008668 8002D268 8FA40010 */  lw    $a0, 0x10($sp)
/* 00866C 8002D26C 00041682 */  srl   $v0, $a0, 0x1a
/* 008670 8002D270 145E0006 */  bne   $v0, $fp, .L8002D28C
/* 008674 8002D274 26310004 */   addiu $s1, $s1, 4
/* 008678 8002D278 3083FFFF */  andi  $v1, $a0, 0xffff
/* 00867C 8002D27C 00041402 */  srl   $v0, $a0, 0x10
/* 008680 8002D280 3042FC00 */  andi  $v0, $v0, 0xfc00
/* 008684 8002D284 00621821 */  addu  $v1, $v1, $v0
/* 008688 8002D288 02038023 */  subu  $s0, $s0, $v1
.L8002D28C:
/* 00868C 8002D28C 0237102B */  sltu  $v0, $s1, $s7
/* 008690 8002D290 1440FFD8 */  bnez  $v0, .L8002D1F4
/* 008694 8002D294 0080902D */   daddu $s2, $a0, $zero
.L8002D298:
/* 008698 8002D298 3C02FFD5 */  lui   $v0, 0xffd5
/* 00869C 8002D29C 3442B14A */  ori   $v0, $v0, 0xb14a
/* 0086A0 8002D2A0 02021021 */  addu  $v0, $s0, $v0
/* 0086A4 8002D2A4 02621023 */  subu  $v0, $s3, $v0
/* 0086A8 8002D2A8 02C2B021 */  addu  $s6, $s6, $v0
/* 0086AC 8002D2AC 3C1318F4 */  lui   $s3, 0x18f4
/* 0086B0 8002D2B0 367314AB */  ori   $s3, $s3, 0x14ab
/* 0086B4 8002D2B4 0000802D */  daddu $s0, $zero, $zero
/* 0086B8 8002D2B8 3C05B000 */  lui   $a1, 0xb000
/* 0086BC 8002D2BC 34A50E38 */  ori   $a1, $a1, 0xe38
/* 0086C0 8002D2C0 27A60014 */  addiu $a2, $sp, 0x14
/* 0086C4 8002D2C4 3C04800A */  lui   $a0, 0x800a
/* 0086C8 8002D2C8 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 0086CC 8002D2CC 3C148006 */  lui   $s4, 0x8006
/* 0086D0 8002D2D0 26940DC0 */  addiu $s4, $s4, 0xdc0
/* 0086D4 8002D2D4 0280F809 */  jalr  $s4
/* 0086D8 8002D2D8 0200902D */  daddu $s2, $s0, $zero
/* 0086DC 8002D2DC 3C110031 */  lui   $s1, 0x31
/* 0086E0 8002D2E0 26316F30 */  addiu $s1, $s1, 0x6f30
/* 0086E4 8002D2E4 8FA20014 */  lw    $v0, 0x14($sp)
/* 0086E8 8002D2E8 3C030031 */  lui   $v1, 0x31
/* 0086EC 8002D2EC 24637020 */  addiu $v1, $v1, 0x7020
/* 0086F0 8002D2F0 02629823 */  subu  $s3, $s3, $v0
/* 0086F4 8002D2F4 0223102B */  sltu  $v0, $s1, $v1
/* 0086F8 8002D2F8 1040002B */  beqz  $v0, .L8002D3A8
/* 0086FC 8002D2FC 241E0003 */   addiu $fp, $zero, 3
/* 008700 8002D300 0060B82D */  daddu $s7, $v1, $zero
.L8002D304:
/* 008704 8002D304 0220282D */  daddu $a1, $s1, $zero
/* 008708 8002D308 3C04800A */  lui   $a0, 0x800a
/* 00870C 8002D30C 8C84A638 */  lw    $a0, -0x59c8($a0)
/* 008710 8002D310 0280F809 */  jalr  $s4
/* 008714 8002D314 27A60014 */  addiu $a2, $sp, 0x14
/* 008718 8002D318 8FA30014 */  lw    $v1, 0x14($sp)
/* 00871C 8002D31C 2407000F */  addiu $a3, $zero, 0xf
/* 008720 8002D320 3065FFFF */  andi  $a1, $v1, 0xffff
/* 008724 8002D324 00032402 */  srl   $a0, $v1, 0x10
/* 008728 8002D328 00A41021 */  addu  $v0, $a1, $a0
/* 00872C 8002D32C 02028021 */  addu  $s0, $s0, $v0
/* 008730 8002D330 00121682 */  srl   $v0, $s2, 0x1a
/* 008734 8002D334 14470010 */  bne   $v0, $a3, .L8002D378
/* 008738 8002D338 00031682 */   srl   $v0, $v1, 0x1a
/* 00873C 8002D33C 24070009 */  addiu $a3, $zero, 9
/* 008740 8002D340 50470004 */  beql  $v0, $a3, .L8002D354
/* 008744 8002D344 00031542 */   srl   $v0, $v1, 0x15
/* 008748 8002D348 24070023 */  addiu $a3, $zero, 0x23
/* 00874C 8002D34C 1447000A */  bne   $v0, $a3, .L8002D378
/* 008750 8002D350 00031542 */   srl   $v0, $v1, 0x15
.L8002D354:
/* 008754 8002D354 3043001F */  andi  $v1, $v0, 0x1f
/* 008758 8002D358 00121402 */  srl   $v0, $s2, 0x10
/* 00875C 8002D35C 3042001F */  andi  $v0, $v0, 0x1f
/* 008760 8002D360 14620005 */  bne   $v1, $v0, .L8002D378
/* 008764 8002D364 3082001F */   andi  $v0, $a0, 0x1f
/* 008768 8002D368 14620003 */  bne   $v1, $v0, .L8002D378
/* 00876C 8002D36C 3242FFFF */   andi  $v0, $s2, 0xffff
/* 008770 8002D370 02058023 */  subu  $s0, $s0, $a1
/* 008774 8002D374 02028023 */  subu  $s0, $s0, $v0
.L8002D378:
/* 008778 8002D378 8FA40014 */  lw    $a0, 0x14($sp)
/* 00877C 8002D37C 00041682 */  srl   $v0, $a0, 0x1a
/* 008780 8002D380 145E0006 */  bne   $v0, $fp, .L8002D39C
/* 008784 8002D384 26310004 */   addiu $s1, $s1, 4
/* 008788 8002D388 3083FFFF */  andi  $v1, $a0, 0xffff
/* 00878C 8002D38C 00041402 */  srl   $v0, $a0, 0x10
/* 008790 8002D390 3042FC00 */  andi  $v0, $v0, 0xfc00
/* 008794 8002D394 00621821 */  addu  $v1, $v1, $v0
/* 008798 8002D398 02038023 */  subu  $s0, $s0, $v1
.L8002D39C:
/* 00879C 8002D39C 0237102B */  sltu  $v0, $s1, $s7
/* 0087A0 8002D3A0 1440FFD8 */  bnez  $v0, .L8002D304
/* 0087A4 8002D3A4 0080902D */   daddu $s2, $a0, $zero
.L8002D3A8:
/* 0087A8 8002D3A8 3C04FFF1 */  lui   $a0, 0xfff1
/* 0087AC 8002D3AC 34842BE4 */  ori   $a0, $a0, 0x2be4
/* 0087B0 8002D3B0 02042021 */  addu  $a0, $s0, $a0
/* 0087B4 8002D3B4 02642023 */  subu  $a0, $s3, $a0
/* 0087B8 8002D3B8 02A42021 */  addu  $a0, $s5, $a0
/* 0087BC 8002D3BC 3C050031 */  lui   $a1, 0x31
/* 0087C0 8002D3C0 24A57020 */  addiu $a1, $a1, 0x7020
/* 0087C4 8002D3C4 0C00A5CF */  jal   dma_copy
/* 0087C8 8002D3C8 02C0302D */   daddu $a2, $s6, $zero
/* 0087CC 8002D3CC 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0087D0 8002D3D0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0087D4 8002D3D4 8FB70034 */  lw    $s7, 0x34($sp)
/* 0087D8 8002D3D8 8FB60030 */  lw    $s6, 0x30($sp)
/* 0087DC 8002D3DC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0087E0 8002D3E0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0087E4 8002D3E4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0087E8 8002D3E8 8FB20020 */  lw    $s2, 0x20($sp)
/* 0087EC 8002D3EC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0087F0 8002D3F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0087F4 8002D3F4 03E00008 */  jr    $ra
/* 0087F8 8002D3F8 27BD0040 */   addiu $sp, $sp, 0x40

/* 0087FC 8002D3FC 00000000 */  nop   
