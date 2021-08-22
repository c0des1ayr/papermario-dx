.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0072150
/* 374FA0 E0072150 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 374FA4 E0072154 AFBF002C */  sw        $ra, 0x2c($sp)
/* 374FA8 E0072158 AFB20028 */  sw        $s2, 0x28($sp)
/* 374FAC E007215C AFB10024 */  sw        $s1, 0x24($sp)
/* 374FB0 E0072160 AFB00020 */  sw        $s0, 0x20($sp)
/* 374FB4 E0072164 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 374FB8 E0072168 8C90000C */  lw        $s0, 0xc($a0)
/* 374FBC E007216C 8E020028 */  lw        $v0, 0x28($s0)
/* 374FC0 E0072170 2442FFFF */  addiu     $v0, $v0, -1
/* 374FC4 E0072174 AE020028 */  sw        $v0, 0x28($s0)
/* 374FC8 E0072178 8E02002C */  lw        $v0, 0x2c($s0)
/* 374FCC E007217C 8E120028 */  lw        $s2, 0x28($s0)
/* 374FD0 E0072180 24510001 */  addiu     $s1, $v0, 1
/* 374FD4 E0072184 06410005 */  bgez      $s2, .LE007219C
/* 374FD8 E0072188 AE11002C */   sw       $s1, 0x2c($s0)
/* 374FDC E007218C 0C080128 */  jal       func_E02004A0
/* 374FE0 E0072190 00000000 */   nop
/* 374FE4 E0072194 0801C8DC */  j         .LE0072370
/* 374FE8 E0072198 00000000 */   nop
.LE007219C:
/* 374FEC E007219C 32220001 */  andi      $v0, $s1, 1
/* 374FF0 E00721A0 1040001E */  beqz      $v0, .LE007221C
/* 374FF4 E00721A4 00000000 */   nop
/* 374FF8 E00721A8 24040168 */  addiu     $a0, $zero, 0x168
/* 374FFC E00721AC 0C080011 */  jal       func_E0200044
/* 375000 E00721B0 0220282D */   daddu    $a1, $s1, $zero
/* 375004 E00721B4 4482A000 */  mtc1      $v0, $f20
/* 375008 E00721B8 00000000 */  nop
/* 37500C E00721BC 4680A520 */  cvt.s.w   $f20, $f20
/* 375010 E00721C0 0C080140 */  jal       func_E0200500
/* 375014 E00721C4 4600A306 */   mov.s    $f12, $f20
/* 375018 E00721C8 0C080144 */  jal       func_E0200510
/* 37501C E00721CC 4600A306 */   mov.s    $f12, $f20
/* 375020 E00721D0 0C080150 */  jal       func_E0200540
/* 375024 E00721D4 2404003A */   addiu    $a0, $zero, 0x3a
/* 375028 E00721D8 001110C0 */  sll       $v0, $s1, 3
/* 37502C E00721DC 44820000 */  mtc1      $v0, $f0
/* 375030 E00721E0 00000000 */  nop
/* 375034 E00721E4 46800020 */  cvt.s.w   $f0, $f0
/* 375038 E00721E8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 37503C E00721EC 3C014120 */  lui       $at, 0x4120
/* 375040 E00721F0 44810000 */  mtc1      $at, $f0
/* 375044 E00721F4 2402000A */  addiu     $v0, $zero, 0xa
/* 375048 E00721F8 AFA20018 */  sw        $v0, 0x18($sp)
/* 37504C E00721FC 24020014 */  addiu     $v0, $zero, 0x14
/* 375050 E0072200 AFA2001C */  sw        $v0, 0x1c($sp)
/* 375054 E0072204 E7A00014 */  swc1      $f0, 0x14($sp)
/* 375058 E0072208 8E050004 */  lw        $a1, 4($s0)
/* 37505C E007220C 8E060008 */  lw        $a2, 8($s0)
/* 375060 E0072210 8E07000C */  lw        $a3, 0xc($s0)
/* 375064 E0072214 0C01D000 */  jal       fx_58_main
/* 375068 E0072218 0000202D */   daddu    $a0, $zero, $zero
.LE007221C:
/* 37506C E007221C C600001C */  lwc1      $f0, 0x1c($s0)
/* 375070 E0072220 C6020020 */  lwc1      $f2, 0x20($s0)
/* 375074 E0072224 46020000 */  add.s     $f0, $f0, $f2
/* 375078 E0072228 2A42000A */  slti      $v0, $s2, 0xa
/* 37507C E007222C 10400006 */  beqz      $v0, .LE0072248
/* 375080 E0072230 E600001C */   swc1     $f0, 0x1c($s0)
/* 375084 E0072234 00121040 */  sll       $v0, $s2, 1
/* 375088 E0072238 00521021 */  addu      $v0, $v0, $s2
/* 37508C E007223C 000210C0 */  sll       $v0, $v0, 3
/* 375090 E0072240 00521021 */  addu      $v0, $v0, $s2
/* 375094 E0072244 AE020024 */  sw        $v0, 0x24($s0)
.LE0072248:
/* 375098 E0072248 C6020030 */  lwc1      $f2, 0x30($s0)
/* 37509C E007224C C6000040 */  lwc1      $f0, 0x40($s0)
/* 3750A0 E0072250 C6060034 */  lwc1      $f6, 0x34($s0)
/* 3750A4 E0072254 46001080 */  add.s     $f2, $f2, $f0
/* 3750A8 E0072258 C6000044 */  lwc1      $f0, 0x44($s0)
/* 3750AC E007225C C6040038 */  lwc1      $f4, 0x38($s0)
/* 3750B0 E0072260 46003180 */  add.s     $f6, $f6, $f0
/* 3750B4 E0072264 C6000048 */  lwc1      $f0, 0x48($s0)
/* 3750B8 E0072268 46002100 */  add.s     $f4, $f4, $f0
/* 3750BC E007226C C600003C */  lwc1      $f0, 0x3c($s0)
/* 3750C0 E0072270 E6020030 */  swc1      $f2, 0x30($s0)
/* 3750C4 E0072274 C602004C */  lwc1      $f2, 0x4c($s0)
/* 3750C8 E0072278 3C014300 */  lui       $at, 0x4300
/* 3750CC E007227C 44814000 */  mtc1      $at, $f8
/* 3750D0 E0072280 46020000 */  add.s     $f0, $f0, $f2
/* 3750D4 E0072284 C60A0030 */  lwc1      $f10, 0x30($s0)
/* 3750D8 E0072288 460A403C */  c.lt.s    $f8, $f10
/* 3750DC E007228C E6060034 */  swc1      $f6, 0x34($s0)
/* 3750E0 E0072290 E6040038 */  swc1      $f4, 0x38($s0)
/* 3750E4 E0072294 45000003 */  bc1f      .LE00722A4
/* 3750E8 E0072298 E600003C */   swc1     $f0, 0x3c($s0)
/* 3750EC E007229C 46085001 */  sub.s     $f0, $f10, $f8
/* 3750F0 E00722A0 E6000030 */  swc1      $f0, 0x30($s0)
.LE00722A4:
/* 3750F4 E00722A4 C6000034 */  lwc1      $f0, 0x34($s0)
/* 3750F8 E00722A8 4600403C */  c.lt.s    $f8, $f0
/* 3750FC E00722AC 00000000 */  nop
/* 375100 E00722B0 45000003 */  bc1f      .LE00722C0
/* 375104 E00722B4 00000000 */   nop
/* 375108 E00722B8 46080001 */  sub.s     $f0, $f0, $f8
/* 37510C E00722BC E6000034 */  swc1      $f0, 0x34($s0)
.LE00722C0:
/* 375110 E00722C0 C6000038 */  lwc1      $f0, 0x38($s0)
/* 375114 E00722C4 4600403C */  c.lt.s    $f8, $f0
/* 375118 E00722C8 00000000 */  nop
/* 37511C E00722CC 45000003 */  bc1f      .LE00722DC
/* 375120 E00722D0 00000000 */   nop
/* 375124 E00722D4 46080001 */  sub.s     $f0, $f0, $f8
/* 375128 E00722D8 E6000038 */  swc1      $f0, 0x38($s0)
.LE00722DC:
/* 37512C E00722DC C600003C */  lwc1      $f0, 0x3c($s0)
/* 375130 E00722E0 4600403C */  c.lt.s    $f8, $f0
/* 375134 E00722E4 00000000 */  nop
/* 375138 E00722E8 45000003 */  bc1f      .LE00722F8
/* 37513C E00722EC 00000000 */   nop
/* 375140 E00722F0 46080001 */  sub.s     $f0, $f0, $f8
/* 375144 E00722F4 E600003C */  swc1      $f0, 0x3c($s0)
.LE00722F8:
/* 375148 E00722F8 C6000030 */  lwc1      $f0, 0x30($s0)
/* 37514C E00722FC 44801000 */  mtc1      $zero, $f2
/* 375150 E0072300 00000000 */  nop
/* 375154 E0072304 4602003C */  c.lt.s    $f0, $f2
/* 375158 E0072308 00000000 */  nop
/* 37515C E007230C 45000003 */  bc1f      .LE007231C
/* 375160 E0072310 00000000 */   nop
/* 375164 E0072314 46080000 */  add.s     $f0, $f0, $f8
/* 375168 E0072318 E6000030 */  swc1      $f0, 0x30($s0)
.LE007231C:
/* 37516C E007231C C6000034 */  lwc1      $f0, 0x34($s0)
/* 375170 E0072320 4602003C */  c.lt.s    $f0, $f2
/* 375174 E0072324 00000000 */  nop
/* 375178 E0072328 45000003 */  bc1f      .LE0072338
/* 37517C E007232C 00000000 */   nop
/* 375180 E0072330 46080000 */  add.s     $f0, $f0, $f8
/* 375184 E0072334 E6000034 */  swc1      $f0, 0x34($s0)
.LE0072338:
/* 375188 E0072338 C6000038 */  lwc1      $f0, 0x38($s0)
/* 37518C E007233C 4602003C */  c.lt.s    $f0, $f2
/* 375190 E0072340 00000000 */  nop
/* 375194 E0072344 45000003 */  bc1f      .LE0072354
/* 375198 E0072348 00000000 */   nop
/* 37519C E007234C 46080000 */  add.s     $f0, $f0, $f8
/* 3751A0 E0072350 E6000038 */  swc1      $f0, 0x38($s0)
.LE0072354:
/* 3751A4 E0072354 C600003C */  lwc1      $f0, 0x3c($s0)
/* 3751A8 E0072358 4602003C */  c.lt.s    $f0, $f2
/* 3751AC E007235C 00000000 */  nop
/* 3751B0 E0072360 45000003 */  bc1f      .LE0072370
/* 3751B4 E0072364 00000000 */   nop
/* 3751B8 E0072368 46080000 */  add.s     $f0, $f0, $f8
/* 3751BC E007236C E600003C */  swc1      $f0, 0x3c($s0)
.LE0072370:
/* 3751C0 E0072370 8FBF002C */  lw        $ra, 0x2c($sp)
/* 3751C4 E0072374 8FB20028 */  lw        $s2, 0x28($sp)
/* 3751C8 E0072378 8FB10024 */  lw        $s1, 0x24($sp)
/* 3751CC E007237C 8FB00020 */  lw        $s0, 0x20($sp)
/* 3751D0 E0072380 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 3751D4 E0072384 03E00008 */  jr        $ra
/* 3751D8 E0072388 27BD0038 */   addiu    $sp, $sp, 0x38