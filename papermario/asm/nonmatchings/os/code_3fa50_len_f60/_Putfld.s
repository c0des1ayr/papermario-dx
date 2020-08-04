.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel _Putfld
/* 040420 80065020 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 040424 80065024 AFB00010 */  sw    $s0, 0x10($sp)
/* 040428 80065028 00808021 */  addu  $s0, $a0, $zero
/* 04042C 8006502C 00A04021 */  addu  $t0, $a1, $zero
/* 040430 80065030 00E04821 */  addu  $t1, $a3, $zero
/* 040434 80065034 00C03821 */  addu  $a3, $a2, $zero
/* 040438 80065038 24C6FFDB */  addiu $a2, $a2, -0x25
/* 04043C 8006503C 00063600 */  sll   $a2, $a2, 0x18
/* 040440 80065040 00063603 */  sra   $a2, $a2, 0x18
/* 040444 80065044 2CC20054 */  sltiu $v0, $a2, 0x54
/* 040448 80065048 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04044C 8006504C AE000020 */  sw    $zero, 0x20($s0)
/* 040450 80065050 AE00001C */  sw    $zero, 0x1c($s0)
/* 040454 80065054 AE000018 */  sw    $zero, 0x18($s0)
/* 040458 80065058 AE000014 */  sw    $zero, 0x14($s0)
/* 04045C 8006505C AE000010 */  sw    $zero, 0x10($s0)
/* 040460 80065060 1040011A */  beqz  $v0, .L800654CC
/* 040464 80065064 AE00000C */   sw    $zero, 0xc($s0)
/* 040468 80065068 00061080 */  sll   $v0, $a2, 2
/* 04046C 8006506C 3C01800A */  lui   $at, 0x800a
/* 040470 80065070 00220821 */  addu  $at, $at, $v0
/* 040474 80065074 8C229C18 */  lw    $v0, -0x63e8($at)
/* 040478 80065078 00400008 */  jr    $v0
/* 04047C 8006507C 00000000 */   nop   
/* 040480 80065080 8E04000C */  lw    $a0, 0xc($s0)
/* 040484 80065084 24820001 */  addiu $v0, $a0, 1
/* 040488 80065088 AE02000C */  sw    $v0, 0xc($s0)
/* 04048C 8006508C 8D020000 */  lw    $v0, ($t0)
/* 040490 80065090 2403FFFC */  addiu $v1, $zero, -4
/* 040494 80065094 24420003 */  addiu $v0, $v0, 3
/* 040498 80065098 00431024 */  and   $v0, $v0, $v1
/* 04049C 8006509C 24430004 */  addiu $v1, $v0, 4
/* 0404A0 800650A0 AD030000 */  sw    $v1, ($t0)
/* 0404A4 800650A4 8C420000 */  lw    $v0, ($v0)
/* 0404A8 800650A8 01242021 */  addu  $a0, $t1, $a0
/* 0404AC 800650AC 08019538 */  j     .L800654E0
/* 0404B0 800650B0 A0820000 */   sb    $v0, ($a0)

/* 0404B4 800650B4 82030034 */  lb    $v1, 0x34($s0)
/* 0404B8 800650B8 2402006C */  addiu $v0, $zero, 0x6c
/* 0404BC 800650BC 1062000B */  beq   $v1, $v0, .L800650EC
/* 0404C0 800650C0 2402004C */   addiu $v0, $zero, 0x4c
/* 0404C4 800650C4 14620009 */  bne   $v1, $v0, .L800650EC
/* 0404C8 800650C8 2403FFF8 */   addiu $v1, $zero, -8
/* 0404CC 800650CC 8D020000 */  lw    $v0, ($t0)
/* 0404D0 800650D0 24420007 */  addiu $v0, $v0, 7
/* 0404D4 800650D4 00431024 */  and   $v0, $v0, $v1
/* 0404D8 800650D8 24430008 */  addiu $v1, $v0, 8
/* 0404DC 800650DC AD030000 */  sw    $v1, ($t0)
/* 0404E0 800650E0 8C430004 */  lw    $v1, 4($v0)
/* 0404E4 800650E4 08019444 */  j     .L80065110
/* 0404E8 800650E8 8C420000 */   lw    $v0, ($v0)

.L800650EC:
/* 0404EC 800650EC 8D020000 */  lw    $v0, ($t0)
/* 0404F0 800650F0 2403FFFC */  addiu $v1, $zero, -4
/* 0404F4 800650F4 24420003 */  addiu $v0, $v0, 3
/* 0404F8 800650F8 00431024 */  and   $v0, $v0, $v1
/* 0404FC 800650FC 24430004 */  addiu $v1, $v0, 4
/* 040500 80065100 AD030000 */  sw    $v1, ($t0)
/* 040504 80065104 8C420000 */  lw    $v0, ($v0)
/* 040508 80065108 00401821 */  addu  $v1, $v0, $zero
/* 04050C 8006510C 000217C3 */  sra   $v0, $v0, 0x1f
.L80065110:
/* 040510 80065110 AE020000 */  sw    $v0, ($s0)
/* 040514 80065114 AE030004 */  sw    $v1, 4($s0)
/* 040518 80065118 82030034 */  lb    $v1, 0x34($s0)
/* 04051C 8006511C 24020068 */  addiu $v0, $zero, 0x68
/* 040520 80065120 14620008 */  bne   $v1, $v0, .L80065144
/* 040524 80065124 00000000 */   nop   
/* 040528 80065128 8E020000 */  lw    $v0, ($s0)
/* 04052C 8006512C 8E030004 */  lw    $v1, 4($s0)
/* 040530 80065130 00031400 */  sll   $v0, $v1, 0x10
/* 040534 80065134 00022C03 */  sra   $a1, $v0, 0x10
/* 040538 80065138 000227C3 */  sra   $a0, $v0, 0x1f
/* 04053C 8006513C AE040000 */  sw    $a0, ($s0)
/* 040540 80065140 AE050004 */  sw    $a1, 4($s0)
.L80065144:
/* 040544 80065144 8E020000 */  lw    $v0, ($s0)
/* 040548 80065148 04410007 */  bgez  $v0, .L80065168
/* 04054C 8006514C 00000000 */   nop   
/* 040550 80065150 8E02000C */  lw    $v0, 0xc($s0)
/* 040554 80065154 24430001 */  addiu $v1, $v0, 1
/* 040558 80065158 01221021 */  addu  $v0, $t1, $v0
/* 04055C 8006515C AE03000C */  sw    $v1, 0xc($s0)
/* 040560 80065160 0801946B */  j     .L800651AC
/* 040564 80065164 2403002D */   addiu $v1, $zero, 0x2d

.L80065168:
/* 040568 80065168 8E030030 */  lw    $v1, 0x30($s0)
/* 04056C 8006516C 30620002 */  andi  $v0, $v1, 2
/* 040570 80065170 10400007 */  beqz  $v0, .L80065190
/* 040574 80065174 30620001 */   andi  $v0, $v1, 1
/* 040578 80065178 8E02000C */  lw    $v0, 0xc($s0)
/* 04057C 8006517C 24430001 */  addiu $v1, $v0, 1
/* 040580 80065180 01221021 */  addu  $v0, $t1, $v0
/* 040584 80065184 AE03000C */  sw    $v1, 0xc($s0)
/* 040588 80065188 0801946B */  j     .L800651AC
/* 04058C 8006518C 2403002B */   addiu $v1, $zero, 0x2b

.L80065190:
/* 040590 80065190 10400046 */  beqz  $v0, .L800652AC
/* 040594 80065194 02002021 */   addu  $a0, $s0, $zero
/* 040598 80065198 8E02000C */  lw    $v0, 0xc($s0)
/* 04059C 8006519C 24430001 */  addiu $v1, $v0, 1
/* 0405A0 800651A0 01221021 */  addu  $v0, $t1, $v0
/* 0405A4 800651A4 AE03000C */  sw    $v1, 0xc($s0)
/* 0405A8 800651A8 24030020 */  addiu $v1, $zero, 0x20
.L800651AC:
/* 0405AC 800651AC 080194AA */  j     .L800652A8
/* 0405B0 800651B0 A0430000 */   sb    $v1, ($v0)

/* 0405B4 800651B4 82030034 */  lb    $v1, 0x34($s0)
/* 0405B8 800651B8 2402006C */  addiu $v0, $zero, 0x6c
/* 0405BC 800651BC 1062000B */  beq   $v1, $v0, .L800651EC
/* 0405C0 800651C0 2402004C */   addiu $v0, $zero, 0x4c
/* 0405C4 800651C4 14620009 */  bne   $v1, $v0, .L800651EC
/* 0405C8 800651C8 2403FFF8 */   addiu $v1, $zero, -8
/* 0405CC 800651CC 8D020000 */  lw    $v0, ($t0)
/* 0405D0 800651D0 24420007 */  addiu $v0, $v0, 7
/* 0405D4 800651D4 00431024 */  and   $v0, $v0, $v1
/* 0405D8 800651D8 24430008 */  addiu $v1, $v0, 8
/* 0405DC 800651DC AD030000 */  sw    $v1, ($t0)
/* 0405E0 800651E0 8C430004 */  lw    $v1, 4($v0)
/* 0405E4 800651E4 08019484 */  j     .L80065210
/* 0405E8 800651E8 8C420000 */   lw    $v0, ($v0)

.L800651EC:
/* 0405EC 800651EC 8D020000 */  lw    $v0, ($t0)
/* 0405F0 800651F0 2403FFFC */  addiu $v1, $zero, -4
/* 0405F4 800651F4 24420003 */  addiu $v0, $v0, 3
/* 0405F8 800651F8 00431024 */  and   $v0, $v0, $v1
/* 0405FC 800651FC 24430004 */  addiu $v1, $v0, 4
/* 040600 80065200 AD030000 */  sw    $v1, ($t0)
/* 040604 80065204 8C420000 */  lw    $v0, ($v0)
/* 040608 80065208 00401821 */  addu  $v1, $v0, $zero
/* 04060C 8006520C 000217C3 */  sra   $v0, $v0, 0x1f
.L80065210:
/* 040610 80065210 AE020000 */  sw    $v0, ($s0)
/* 040614 80065214 AE030004 */  sw    $v1, 4($s0)
/* 040618 80065218 82030034 */  lb    $v1, 0x34($s0)
/* 04061C 8006521C 24020068 */  addiu $v0, $zero, 0x68
/* 040620 80065220 14620004 */  bne   $v1, $v0, .L80065234
/* 040624 80065224 00001021 */   addu  $v0, $zero, $zero
/* 040628 80065228 96030006 */  lhu   $v1, 6($s0)
/* 04062C 8006522C 08019490 */  j     .L80065240
/* 040630 80065230 00000000 */   nop   

.L80065234:
/* 040634 80065234 14600004 */  bnez  $v1, .L80065248
/* 040638 80065238 00000000 */   nop   
/* 04063C 8006523C 8E030004 */  lw    $v1, 4($s0)
.L80065240:
/* 040640 80065240 AE020000 */  sw    $v0, ($s0)
/* 040644 80065244 AE030004 */  sw    $v1, 4($s0)
.L80065248:
/* 040648 80065248 8E020030 */  lw    $v0, 0x30($s0)
/* 04064C 8006524C 30420008 */  andi  $v0, $v0, 8
/* 040650 80065250 10400016 */  beqz  $v0, .L800652AC
/* 040654 80065254 02002021 */   addu  $a0, $s0, $zero
/* 040658 80065258 8E02000C */  lw    $v0, 0xc($s0)
/* 04065C 8006525C 24430001 */  addiu $v1, $v0, 1
/* 040660 80065260 01221021 */  addu  $v0, $t1, $v0
/* 040664 80065264 AE03000C */  sw    $v1, 0xc($s0)
/* 040668 80065268 24030030 */  addiu $v1, $zero, 0x30
/* 04066C 8006526C A0430000 */  sb    $v1, ($v0)
/* 040670 80065270 00071600 */  sll   $v0, $a3, 0x18
/* 040674 80065274 00021603 */  sra   $v0, $v0, 0x18
/* 040678 80065278 38430078 */  xori  $v1, $v0, 0x78
/* 04067C 8006527C 2C630001 */  sltiu $v1, $v1, 1
/* 040680 80065280 38420058 */  xori  $v0, $v0, 0x58
/* 040684 80065284 2C420001 */  sltiu $v0, $v0, 1
/* 040688 80065288 00621825 */  or    $v1, $v1, $v0
/* 04068C 8006528C 10600007 */  beqz  $v1, .L800652AC
/* 040690 80065290 00000000 */   nop   
/* 040694 80065294 8E02000C */  lw    $v0, 0xc($s0)
/* 040698 80065298 24430001 */  addiu $v1, $v0, 1
/* 04069C 8006529C 01221021 */  addu  $v0, $t1, $v0
/* 0406A0 800652A0 AE03000C */  sw    $v1, 0xc($s0)
/* 0406A4 800652A4 A0470000 */  sb    $a3, ($v0)
.L800652A8:
/* 0406A8 800652A8 02002021 */  addu  $a0, $s0, $zero
.L800652AC:
/* 0406AC 800652AC 8C82000C */  lw    $v0, 0xc($a0)
/* 0406B0 800652B0 00072E00 */  sll   $a1, $a3, 0x18
/* 0406B4 800652B4 00052E03 */  sra   $a1, $a1, 0x18
/* 0406B8 800652B8 01221021 */  addu  $v0, $t1, $v0
/* 0406BC 800652BC 0C01AE60 */  jal   _Litob
/* 0406C0 800652C0 AC820008 */   sw    $v0, 8($a0)
/* 0406C4 800652C4 08019538 */  j     .L800654E0
/* 0406C8 800652C8 00000000 */   nop   

/* 0406CC 800652CC 8D020000 */  lw    $v0, ($t0)
/* 0406D0 800652D0 2403FFF8 */  addiu $v1, $zero, -8
/* 0406D4 800652D4 24420007 */  addiu $v0, $v0, 7
/* 0406D8 800652D8 00431024 */  and   $v0, $v0, $v1
/* 0406DC 800652DC 24430008 */  addiu $v1, $v0, 8
/* 0406E0 800652E0 AD030000 */  sw    $v1, ($t0)
/* 0406E4 800652E4 D4400000 */  ldc1  $f0, ($v0)
/* 0406E8 800652E8 F6000000 */  sdc1  $f0, ($s0)
/* 0406EC 800652EC 96020000 */  lhu   $v0, ($s0)
/* 0406F0 800652F0 30428000 */  andi  $v0, $v0, 0x8000
/* 0406F4 800652F4 10400007 */  beqz  $v0, .L80065314
/* 0406F8 800652F8 00000000 */   nop   
/* 0406FC 800652FC 8E02000C */  lw    $v0, 0xc($s0)
/* 040700 80065300 24430001 */  addiu $v1, $v0, 1
/* 040704 80065304 01221021 */  addu  $v0, $t1, $v0
/* 040708 80065308 AE03000C */  sw    $v1, 0xc($s0)
/* 04070C 8006530C 080194D6 */  j     .L80065358
/* 040710 80065310 2403002D */   addiu $v1, $zero, 0x2d

.L80065314:
/* 040714 80065314 8E030030 */  lw    $v1, 0x30($s0)
/* 040718 80065318 30620002 */  andi  $v0, $v1, 2
/* 04071C 8006531C 10400007 */  beqz  $v0, .L8006533C
/* 040720 80065320 30620001 */   andi  $v0, $v1, 1
/* 040724 80065324 8E02000C */  lw    $v0, 0xc($s0)
/* 040728 80065328 24430001 */  addiu $v1, $v0, 1
/* 04072C 8006532C 01221021 */  addu  $v0, $t1, $v0
/* 040730 80065330 AE03000C */  sw    $v1, 0xc($s0)
/* 040734 80065334 080194D6 */  j     .L80065358
/* 040738 80065338 2403002B */   addiu $v1, $zero, 0x2b

.L8006533C:
/* 04073C 8006533C 10400008 */  beqz  $v0, .L80065360
/* 040740 80065340 02002021 */   addu  $a0, $s0, $zero
/* 040744 80065344 8E02000C */  lw    $v0, 0xc($s0)
/* 040748 80065348 24430001 */  addiu $v1, $v0, 1
/* 04074C 8006534C 01221021 */  addu  $v0, $t1, $v0
/* 040750 80065350 AE03000C */  sw    $v1, 0xc($s0)
/* 040754 80065354 24030020 */  addiu $v1, $zero, 0x20
.L80065358:
/* 040758 80065358 A0430000 */  sb    $v1, ($v0)
/* 04075C 8006535C 02002021 */  addu  $a0, $s0, $zero
.L80065360:
/* 040760 80065360 8C82000C */  lw    $v0, 0xc($a0)
/* 040764 80065364 00072E00 */  sll   $a1, $a3, 0x18
/* 040768 80065368 00052E03 */  sra   $a1, $a1, 0x18
/* 04076C 8006536C 01221021 */  addu  $v0, $t1, $v0
/* 040770 80065370 0C01AEF4 */  jal   _Ldtob
/* 040774 80065374 AC820008 */   sw    $v0, 8($a0)
/* 040778 80065378 08019538 */  j     .L800654E0
/* 04077C 8006537C 00000000 */   nop   

/* 040780 80065380 82030034 */  lb    $v1, 0x34($s0)
/* 040784 80065384 24020068 */  addiu $v0, $zero, 0x68
/* 040788 80065388 1462000B */  bne   $v1, $v0, .L800653B8
/* 04078C 8006538C 2402006C */   addiu $v0, $zero, 0x6c
/* 040790 80065390 8D020000 */  lw    $v0, ($t0)
/* 040794 80065394 2403FFFC */  addiu $v1, $zero, -4
/* 040798 80065398 24420003 */  addiu $v0, $v0, 3
/* 04079C 8006539C 00431024 */  and   $v0, $v0, $v1
/* 0407A0 800653A0 24430004 */  addiu $v1, $v0, 4
/* 0407A4 800653A4 AD030000 */  sw    $v1, ($t0)
/* 0407A8 800653A8 8C430000 */  lw    $v1, ($v0)
/* 0407AC 800653AC 8E02002C */  lw    $v0, 0x2c($s0)
/* 0407B0 800653B0 08019538 */  j     .L800654E0
/* 0407B4 800653B4 A4620000 */   sh    $v0, ($v1)

.L800653B8:
/* 0407B8 800653B8 1062000F */  beq   $v1, $v0, .L800653F8
/* 0407BC 800653BC 2402004C */   addiu $v0, $zero, 0x4c
/* 0407C0 800653C0 1462000D */  bne   $v1, $v0, .L800653F8
/* 0407C4 800653C4 2402FFFC */   addiu $v0, $zero, -4
/* 0407C8 800653C8 8D040000 */  lw    $a0, ($t0)
/* 0407CC 800653CC 24840003 */  addiu $a0, $a0, 3
/* 0407D0 800653D0 00822024 */  and   $a0, $a0, $v0
/* 0407D4 800653D4 24820004 */  addiu $v0, $a0, 4
/* 0407D8 800653D8 AD020000 */  sw    $v0, ($t0)
/* 0407DC 800653DC 8E02002C */  lw    $v0, 0x2c($s0)
/* 0407E0 800653E0 8C840000 */  lw    $a0, ($a0)
/* 0407E4 800653E4 00401821 */  addu  $v1, $v0, $zero
/* 0407E8 800653E8 00001021 */  addu  $v0, $zero, $zero
/* 0407EC 800653EC AC820000 */  sw    $v0, ($a0)
/* 0407F0 800653F0 08019538 */  j     .L800654E0
/* 0407F4 800653F4 AC830004 */   sw    $v1, 4($a0)

.L800653F8:
/* 0407F8 800653F8 8D020000 */  lw    $v0, ($t0)
/* 0407FC 800653FC 2403FFFC */  addiu $v1, $zero, -4
/* 040800 80065400 24420003 */  addiu $v0, $v0, 3
/* 040804 80065404 00431024 */  and   $v0, $v0, $v1
/* 040808 80065408 24430004 */  addiu $v1, $v0, 4
/* 04080C 8006540C AD030000 */  sw    $v1, ($t0)
/* 040810 80065410 8C430000 */  lw    $v1, ($v0)
/* 040814 80065414 8E02002C */  lw    $v0, 0x2c($s0)
/* 040818 80065418 08019538 */  j     .L800654E0
/* 04081C 8006541C AC620000 */   sw    $v0, ($v1)

/* 040820 80065420 8D040000 */  lw    $a0, ($t0)
/* 040824 80065424 2405FFFC */  addiu $a1, $zero, -4
/* 040828 80065428 24840003 */  addiu $a0, $a0, 3
/* 04082C 8006542C 00852024 */  and   $a0, $a0, $a1
/* 040830 80065430 24850004 */  addiu $a1, $a0, 4
/* 040834 80065434 AD050000 */  sw    $a1, ($t0)
/* 040838 80065438 8C870000 */  lw    $a3, ($a0)
/* 04083C 8006543C 02002021 */  addu  $a0, $s0, $zero
/* 040840 80065440 24050078 */  addiu $a1, $zero, 0x78
/* 040844 80065444 8C86000C */  lw    $a2, 0xc($a0)
/* 040848 80065448 00E01821 */  addu  $v1, $a3, $zero
/* 04084C 8006544C 000717C3 */  sra   $v0, $a3, 0x1f
/* 040850 80065450 01263021 */  addu  $a2, $t1, $a2
/* 040854 80065454 AC820000 */  sw    $v0, ($a0)
/* 040858 80065458 AC830004 */  sw    $v1, 4($a0)
/* 04085C 8006545C 0C01AE60 */  jal   _Litob
/* 040860 80065460 AC860008 */   sw    $a2, 8($a0)
/* 040864 80065464 08019538 */  j     .L800654E0
/* 040868 80065468 00000000 */   nop   

/* 04086C 8006546C 8D020000 */  lw    $v0, ($t0)
/* 040870 80065470 2403FFFC */  addiu $v1, $zero, -4
/* 040874 80065474 24420003 */  addiu $v0, $v0, 3
/* 040878 80065478 00431024 */  and   $v0, $v0, $v1
/* 04087C 8006547C 24430004 */  addiu $v1, $v0, 4
/* 040880 80065480 AD030000 */  sw    $v1, ($t0)
/* 040884 80065484 8C440000 */  lw    $a0, ($v0)
/* 040888 80065488 0C019294 */  jal   strlen
/* 04088C 8006548C AE040008 */   sw    $a0, 8($s0)
/* 040890 80065490 8E030024 */  lw    $v1, 0x24($s0)
/* 040894 80065494 04600012 */  bltz  $v1, .L800654E0
/* 040898 80065498 AE020014 */   sw    $v0, 0x14($s0)
/* 04089C 8006549C 0062102A */  slt   $v0, $v1, $v0
/* 0408A0 800654A0 5440000F */  bnel  $v0, $zero, .L800654E0
/* 0408A4 800654A4 AE030014 */   sw    $v1, 0x14($s0)
/* 0408A8 800654A8 08019538 */  j     .L800654E0
/* 0408AC 800654AC 00000000 */   nop   

/* 0408B0 800654B0 8E02000C */  lw    $v0, 0xc($s0)
/* 0408B4 800654B4 24430001 */  addiu $v1, $v0, 1
/* 0408B8 800654B8 01221021 */  addu  $v0, $t1, $v0
/* 0408BC 800654BC AE03000C */  sw    $v1, 0xc($s0)
/* 0408C0 800654C0 24030025 */  addiu $v1, $zero, 0x25
/* 0408C4 800654C4 08019538 */  j     .L800654E0
/* 0408C8 800654C8 A0430000 */   sb    $v1, ($v0)

.L800654CC:
/* 0408CC 800654CC 8E02000C */  lw    $v0, 0xc($s0)
/* 0408D0 800654D0 24430001 */  addiu $v1, $v0, 1
/* 0408D4 800654D4 01221021 */  addu  $v0, $t1, $v0
/* 0408D8 800654D8 AE03000C */  sw    $v1, 0xc($s0)
/* 0408DC 800654DC A0470000 */  sb    $a3, ($v0)
.L800654E0:
/* 0408E0 800654E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0408E4 800654E4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0408E8 800654E8 03E00008 */  jr    $ra
/* 0408EC 800654EC 27BD0018 */   addiu $sp, $sp, 0x18

