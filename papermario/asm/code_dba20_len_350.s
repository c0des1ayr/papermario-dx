
.section .text00145320, "ax"

func_00145320:
/* 0DBA20 00145320 2402003F */  addiu $v0, $zero, 0x3f
/* 0DBA24 00145324 3C04800E */  lui   $a0, 0x800e
/* 0DBA28 00145328 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBA2C 0014532C 248300FC */  addiu $v1, $a0, 0xfc
.L00145330:
/* 0DBA30 00145330 AC600FB0 */  sw    $zero, 0xfb0($v1)
/* 0DBA34 00145334 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA38 00145338 0441FFFD */  bgez  $v0, .L00145330
/* 0DBA3C 0014533C 2463FFFC */   addiu $v1, $v1, -4
/* 0DBA40 00145340 240201FF */  addiu $v0, $zero, 0x1ff
/* 0DBA44 00145344 00821821 */  addu  $v1, $a0, $v0
.L00145348:
/* 0DBA48 00145348 A06010B0 */  sb    $zero, 0x10b0($v1)
/* 0DBA4C 0014534C 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA50 00145350 0441FFFD */  bgez  $v0, .L00145348
/* 0DBA54 00145354 2463FFFF */   addiu $v1, $v1, -1
/* 0DBA58 00145358 24020007 */  addiu $v0, $zero, 7
/* 0DBA5C 0014535C 2483001C */  addiu $v1, $a0, 0x1c
.L00145360:
/* 0DBA60 00145360 AC6012B0 */  sw    $zero, 0x12b0($v1)
/* 0DBA64 00145364 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA68 00145368 0441FFFD */  bgez  $v0, .L00145360
/* 0DBA6C 0014536C 2463FFFC */   addiu $v1, $v1, -4
/* 0DBA70 00145370 2402000F */  addiu $v0, $zero, 0xf
/* 0DBA74 00145374 00821821 */  addu  $v1, $a0, $v0
.L00145378:
/* 0DBA78 00145378 A06012D0 */  sb    $zero, 0x12d0($v1)
/* 0DBA7C 0014537C 2442FFFF */  addiu $v0, $v0, -1
/* 0DBA80 00145380 0441FFFD */  bgez  $v0, .L00145378
/* 0DBA84 00145384 2463FFFF */   addiu $v1, $v1, -1
/* 0DBA88 00145388 03E00008 */  jr    $ra
/* 0DBA8C 0014538C 00000000 */   nop   

/* 0DBA90 00145390 3C028007 */  lui   $v0, 0x8007
/* 0DBA94 00145394 8C42419C */  lw    $v0, 0x419c($v0)
/* 0DBA98 00145398 8442008A */  lh    $v0, 0x8a($v0)
/* 0DBA9C 0014539C 3C04800E */  lui   $a0, 0x800e
/* 0DBAA0 001453A0 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBAA4 001453A4 1040000C */  beqz  $v0, .L001453D8
/* 0DBAA8 001453A8 24020007 */   addiu $v0, $zero, 7
/* 0DBAAC 001453AC 2483001C */  addiu $v1, $a0, 0x1c
.L001453B0:
/* 0DBAB0 001453B0 AC6012B0 */  sw    $zero, 0x12b0($v1)
/* 0DBAB4 001453B4 2442FFFF */  addiu $v0, $v0, -1
/* 0DBAB8 001453B8 0441FFFD */  bgez  $v0, .L001453B0
/* 0DBABC 001453BC 2463FFFC */   addiu $v1, $v1, -4
/* 0DBAC0 001453C0 2402000F */  addiu $v0, $zero, 0xf
/* 0DBAC4 001453C4 00821821 */  addu  $v1, $a0, $v0
.L001453C8:
/* 0DBAC8 001453C8 A06012D0 */  sb    $zero, 0x12d0($v1)
/* 0DBACC 001453CC 2442FFFF */  addiu $v0, $v0, -1
/* 0DBAD0 001453D0 0441FFFD */  bgez  $v0, .L001453C8
/* 0DBAD4 001453D4 2463FFFF */   addiu $v1, $v1, -1
.L001453D8:
/* 0DBAD8 001453D8 03E00008 */  jr    $ra
/* 0DBADC 001453DC 00000000 */   nop   

func_001453E0:
/* 0DBAE0 001453E0 3C02F8D8 */  lui   $v0, 0xf8d8
/* 0DBAE4 001453E4 3442F200 */  ori   $v0, $v0, 0xf200
/* 0DBAE8 001453E8 0044102A */  slt   $v0, $v0, $a0
/* 0DBAEC 001453EC 14400003 */  bnez  $v0, .L001453FC
/* 0DBAF0 001453F0 3C0207BF */   lui   $v0, 0x7bf
/* 0DBAF4 001453F4 3442A480 */  ori   $v0, $v0, 0xa480
/* 0DBAF8 001453F8 00822021 */  addu  $a0, $a0, $v0
.L001453FC:
/* 0DBAFC 001453FC 04810002 */  bgez  $a0, .L00145408
/* 0DBB00 00145400 0080102D */   daddu $v0, $a0, $zero
/* 0DBB04 00145404 2482001F */  addiu $v0, $a0, 0x1f
.L00145408:
/* 0DBB08 00145408 00021143 */  sra   $v0, $v0, 5
/* 0DBB0C 0014540C 00021940 */  sll   $v1, $v0, 5
/* 0DBB10 00145410 00831823 */  subu  $v1, $a0, $v1
/* 0DBB14 00145414 3C04800E */  lui   $a0, 0x800e
/* 0DBB18 00145418 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBB1C 0014541C 00021080 */  sll   $v0, $v0, 2
/* 0DBB20 00145420 00442821 */  addu  $a1, $v0, $a0
/* 0DBB24 00145424 24020001 */  addiu $v0, $zero, 1
/* 0DBB28 00145428 8CA40FB0 */  lw    $a0, 0xfb0($a1)
/* 0DBB2C 0014542C 00621004 */  sllv  $v0, $v0, $v1
/* 0DBB30 00145430 00821824 */  and   $v1, $a0, $v0
/* 0DBB34 00145434 54600001 */  bnezl $v1, .L0014543C
/* 0DBB38 00145438 24030001 */   addiu $v1, $zero, 1
.L0014543C:
/* 0DBB3C 0014543C 00021027 */  nor   $v0, $zero, $v0
/* 0DBB40 00145440 00821024 */  and   $v0, $a0, $v0
/* 0DBB44 00145444 ACA20FB0 */  sw    $v0, 0xfb0($a1)
/* 0DBB48 00145448 03E00008 */  jr    $ra
/* 0DBB4C 0014544C 0060102D */   daddu $v0, $v1, $zero

func_00145450:
/* 0DBB50 00145450 3C02F8D8 */  lui   $v0, 0xf8d8
/* 0DBB54 00145454 3442F200 */  ori   $v0, $v0, 0xf200
/* 0DBB58 00145458 0044102A */  slt   $v0, $v0, $a0
/* 0DBB5C 0014545C 14400003 */  bnez  $v0, .L0014546C
/* 0DBB60 00145460 3C0207BF */   lui   $v0, 0x7bf
/* 0DBB64 00145464 3442A480 */  ori   $v0, $v0, 0xa480
/* 0DBB68 00145468 00822021 */  addu  $a0, $a0, $v0
.L0014546C:
/* 0DBB6C 0014546C 04810002 */  bgez  $a0, .L00145478
/* 0DBB70 00145470 0080102D */   daddu $v0, $a0, $zero
/* 0DBB74 00145474 2482001F */  addiu $v0, $a0, 0x1f
.L00145478:
/* 0DBB78 00145478 00021143 */  sra   $v0, $v0, 5
/* 0DBB7C 0014547C 00021940 */  sll   $v1, $v0, 5
/* 0DBB80 00145480 00831823 */  subu  $v1, $a0, $v1
/* 0DBB84 00145484 3C04800E */  lui   $a0, 0x800e
/* 0DBB88 00145488 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBB8C 0014548C 00021080 */  sll   $v0, $v0, 2
/* 0DBB90 00145490 00442821 */  addu  $a1, $v0, $a0
/* 0DBB94 00145494 24020001 */  addiu $v0, $zero, 1
/* 0DBB98 00145498 8CA40FB0 */  lw    $a0, 0xfb0($a1)
/* 0DBB9C 0014549C 00621004 */  sllv  $v0, $v0, $v1
/* 0DBBA0 001454A0 00821824 */  and   $v1, $a0, $v0
/* 0DBBA4 001454A4 54600001 */  bnezl $v1, .L001454AC
/* 0DBBA8 001454A8 24030001 */   addiu $v1, $zero, 1
.L001454AC:
/* 0DBBAC 001454AC 00821025 */  or    $v0, $a0, $v0
/* 0DBBB0 001454B0 ACA20FB0 */  sw    $v0, 0xfb0($a1)
/* 0DBBB4 001454B4 03E00008 */  jr    $ra
/* 0DBBB8 001454B8 0060102D */   daddu $v0, $v1, $zero

func_001454BC:
/* 0DBBBC 001454BC 0080282D */  daddu $a1, $a0, $zero
/* 0DBBC0 001454C0 3C02F8D8 */  lui   $v0, 0xf8d8
/* 0DBBC4 001454C4 3442F200 */  ori   $v0, $v0, 0xf200
/* 0DBBC8 001454C8 0045102A */  slt   $v0, $v0, $a1
/* 0DBBCC 001454CC 14400003 */  bnez  $v0, .L001454DC
/* 0DBBD0 001454D0 3C0207BF */   lui   $v0, 0x7bf
/* 0DBBD4 001454D4 3442A480 */  ori   $v0, $v0, 0xa480
/* 0DBBD8 001454D8 00A22821 */  addu  $a1, $a1, $v0
.L001454DC:
/* 0DBBDC 001454DC 04A10002 */  bgez  $a1, .L001454E8
/* 0DBBE0 001454E0 00A0182D */   daddu $v1, $a1, $zero
/* 0DBBE4 001454E4 24A3001F */  addiu $v1, $a1, 0x1f
.L001454E8:
/* 0DBBE8 001454E8 00031943 */  sra   $v1, $v1, 5
/* 0DBBEC 001454EC 00032140 */  sll   $a0, $v1, 5
/* 0DBBF0 001454F0 00A42023 */  subu  $a0, $a1, $a0
/* 0DBBF4 001454F4 00031880 */  sll   $v1, $v1, 2
/* 0DBBF8 001454F8 24020001 */  addiu $v0, $zero, 1
/* 0DBBFC 001454FC 3C01800E */  lui   $at, 0x800e
/* 0DBC00 00145500 00230821 */  addu  $at, $at, $v1
/* 0DBC04 00145504 8C23BC70 */  lw    $v1, -0x4390($at)
/* 0DBC08 00145508 00821004 */  sllv  $v0, $v0, $a0
/* 0DBC0C 0014550C 00621024 */  and   $v0, $v1, $v0
/* 0DBC10 00145510 54400001 */  bnezl $v0, .L00145518
/* 0DBC14 00145514 24020001 */   addiu $v0, $zero, 1
.L00145518:
/* 0DBC18 00145518 03E00008 */  jr    $ra
/* 0DBC1C 0014551C 00000000 */   nop   

func_00145520:
/* 0DBC20 00145520 3C02800E */  lui   $v0, 0x800e
/* 0DBC24 00145524 2442ACC0 */  addiu $v0, $v0, -0x5340
/* 0DBC28 00145528 00822021 */  addu  $a0, $a0, $v0
/* 0DBC2C 0014552C 808210B0 */  lb    $v0, 0x10b0($a0)
/* 0DBC30 00145530 03E00008 */  jr    $ra
/* 0DBC34 00145534 A08510B0 */   sb    $a1, 0x10b0($a0)

func_00145538:
/* 0DBC38 00145538 3C02800E */  lui   $v0, 0x800e
/* 0DBC3C 0014553C 00441021 */  addu  $v0, $v0, $a0
/* 0DBC40 00145540 8042BD70 */  lb    $v0, -0x4290($v0)
/* 0DBC44 00145544 03E00008 */  jr    $ra
/* 0DBC48 00145548 00000000 */   nop   

func_0014554C:
/* 0DBC4C 0014554C 04810002 */  bgez  $a0, .L00145558
/* 0DBC50 00145550 0080102D */   daddu $v0, $a0, $zero
/* 0DBC54 00145554 2482001F */  addiu $v0, $a0, 0x1f
.L00145558:
/* 0DBC58 00145558 00021143 */  sra   $v0, $v0, 5
/* 0DBC5C 0014555C 00021940 */  sll   $v1, $v0, 5
/* 0DBC60 00145560 00831823 */  subu  $v1, $a0, $v1
/* 0DBC64 00145564 3C04800E */  lui   $a0, 0x800e
/* 0DBC68 00145568 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBC6C 0014556C 00021080 */  sll   $v0, $v0, 2
/* 0DBC70 00145570 00442821 */  addu  $a1, $v0, $a0
/* 0DBC74 00145574 24020001 */  addiu $v0, $zero, 1
/* 0DBC78 00145578 8CA412B0 */  lw    $a0, 0x12b0($a1)
/* 0DBC7C 0014557C 00621004 */  sllv  $v0, $v0, $v1
/* 0DBC80 00145580 00821824 */  and   $v1, $a0, $v0
/* 0DBC84 00145584 54600001 */  bnezl $v1, .L0014558C
/* 0DBC88 00145588 24030001 */   addiu $v1, $zero, 1
.L0014558C:
/* 0DBC8C 0014558C 00021027 */  nor   $v0, $zero, $v0
/* 0DBC90 00145590 00821024 */  and   $v0, $a0, $v0
/* 0DBC94 00145594 ACA212B0 */  sw    $v0, 0x12b0($a1)
/* 0DBC98 00145598 03E00008 */  jr    $ra
/* 0DBC9C 0014559C 0060102D */   daddu $v0, $v1, $zero

func_001455A0:
/* 0DBCA0 001455A0 04810002 */  bgez  $a0, .L001455AC
/* 0DBCA4 001455A4 0080102D */   daddu $v0, $a0, $zero
/* 0DBCA8 001455A8 2482001F */  addiu $v0, $a0, 0x1f
.L001455AC:
/* 0DBCAC 001455AC 00021143 */  sra   $v0, $v0, 5
/* 0DBCB0 001455B0 00021940 */  sll   $v1, $v0, 5
/* 0DBCB4 001455B4 00831823 */  subu  $v1, $a0, $v1
/* 0DBCB8 001455B8 3C04800E */  lui   $a0, 0x800e
/* 0DBCBC 001455BC 2484ACC0 */  addiu $a0, $a0, -0x5340
/* 0DBCC0 001455C0 00021080 */  sll   $v0, $v0, 2
/* 0DBCC4 001455C4 00442821 */  addu  $a1, $v0, $a0
/* 0DBCC8 001455C8 24020001 */  addiu $v0, $zero, 1
/* 0DBCCC 001455CC 8CA412B0 */  lw    $a0, 0x12b0($a1)
/* 0DBCD0 001455D0 00621004 */  sllv  $v0, $v0, $v1
/* 0DBCD4 001455D4 00821824 */  and   $v1, $a0, $v0
/* 0DBCD8 001455D8 54600001 */  bnezl $v1, .L001455E0
/* 0DBCDC 001455DC 24030001 */   addiu $v1, $zero, 1
.L001455E0:
/* 0DBCE0 001455E0 00821025 */  or    $v0, $a0, $v0
/* 0DBCE4 001455E4 ACA212B0 */  sw    $v0, 0x12b0($a1)
/* 0DBCE8 001455E8 03E00008 */  jr    $ra
/* 0DBCEC 001455EC 0060102D */   daddu $v0, $v1, $zero

func_001455F0:
/* 0DBCF0 001455F0 0080102D */  daddu $v0, $a0, $zero
/* 0DBCF4 001455F4 04410002 */  bgez  $v0, .L00145600
/* 0DBCF8 001455F8 0040182D */   daddu $v1, $v0, $zero
/* 0DBCFC 001455FC 2443001F */  addiu $v1, $v0, 0x1f
.L00145600:
/* 0DBD00 00145600 00031943 */  sra   $v1, $v1, 5
/* 0DBD04 00145604 00032140 */  sll   $a0, $v1, 5
/* 0DBD08 00145608 00442023 */  subu  $a0, $v0, $a0
/* 0DBD0C 0014560C 00031880 */  sll   $v1, $v1, 2
/* 0DBD10 00145610 24020001 */  addiu $v0, $zero, 1
/* 0DBD14 00145614 3C01800E */  lui   $at, 0x800e
/* 0DBD18 00145618 00230821 */  addu  $at, $at, $v1
/* 0DBD1C 0014561C 8C23BF70 */  lw    $v1, -0x4090($at)
/* 0DBD20 00145620 00821004 */  sllv  $v0, $v0, $a0
/* 0DBD24 00145624 00621024 */  and   $v0, $v1, $v0
/* 0DBD28 00145628 54400001 */  bnezl $v0, .L00145630
/* 0DBD2C 0014562C 24020001 */   addiu $v0, $zero, 1
.L00145630:
/* 0DBD30 00145630 03E00008 */  jr    $ra
/* 0DBD34 00145634 00000000 */   nop   

func_00145638:
/* 0DBD38 00145638 3C02800E */  lui   $v0, 0x800e
/* 0DBD3C 0014563C 2442ACC0 */  addiu $v0, $v0, -0x5340
/* 0DBD40 00145640 00822021 */  addu  $a0, $a0, $v0
/* 0DBD44 00145644 808212D0 */  lb    $v0, 0x12d0($a0)
/* 0DBD48 00145648 03E00008 */  jr    $ra
/* 0DBD4C 0014564C A08512D0 */   sb    $a1, 0x12d0($a0)

func_00145650:
/* 0DBD50 00145650 3C02800E */  lui   $v0, 0x800e
/* 0DBD54 00145654 00441021 */  addu  $v0, $v0, $a0
/* 0DBD58 00145658 8042BF90 */  lb    $v0, -0x4070($v0)
/* 0DBD5C 0014565C 03E00008 */  jr    $ra
/* 0DBD60 00145660 00000000 */   nop   

/* 0DBD64 00145664 00000000 */  nop   
/* 0DBD68 00145668 00000000 */  nop   
/* 0DBD6C 0014566C 00000000 */  nop   