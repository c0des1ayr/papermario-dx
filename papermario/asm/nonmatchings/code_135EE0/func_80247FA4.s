.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80247FA4
/* 13B2E4 80247FA4 AC850004 */  sw    $a1, 4($a0)
/* 13B2E8 80247FA8 1A600067 */  blez  $s3, .L80248148
/* 13B2EC 80247FAC AC82000C */   sw    $v0, 0xc($a0)
/* 13B2F0 80247FB0 2A740005 */  slti  $s4, $s3, 5
.L80247FB4:
/* 13B2F4 80247FB4 8FAB006C */  lw    $t3, 0x6c($sp)
/* 13B2F8 80247FB8 020B102A */  slt   $v0, $s0, $t3
/* 13B2FC 80247FBC 50400024 */  beql  $v0, $zero, .L80248050
/* 13B300 80247FC0 26100001 */   addiu $s0, $s0, 1
/* 13B304 80247FC4 0C091CAA */  jal   func_802472A8
/* 13B308 80247FC8 02E0202D */   daddu $a0, $s7, $zero
/* 13B30C 80247FCC 8FAA0094 */  lw    $t2, 0x94($sp)
/* 13B310 80247FD0 02C0202D */  daddu $a0, $s6, $zero
/* 13B314 80247FD4 020A0018 */  mult  $s0, $t2
/* 13B318 80247FD8 244200EB */  addiu $v0, $v0, 0xeb
/* 13B31C 80247FDC 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B320 80247FE0 00101FC3 */  sra   $v1, $s0, 0x1f
/* 13B324 80247FE4 01621021 */  addu  $v0, $t3, $v0
/* 13B328 80247FE8 00005010 */  mfhi  $t2
/* 13B32C 80247FEC 000A2843 */  sra   $a1, $t2, 1
/* 13B330 80247FF0 00A38823 */  subu  $s1, $a1, $v1
/* 13B334 80247FF4 00112880 */  sll   $a1, $s1, 2
/* 13B338 80247FF8 00B12821 */  addu  $a1, $a1, $s1
/* 13B33C 80247FFC 02052823 */  subu  $a1, $s0, $a1
/* 13B340 80248000 00051840 */  sll   $v1, $a1, 1
/* 13B344 80248004 00651821 */  addu  $v1, $v1, $a1
/* 13B348 80248008 00031840 */  sll   $v1, $v1, 1
/* 13B34C 8024800C 24630001 */  addiu $v1, $v1, 1
/* 13B350 80248010 0C091CA6 */  jal   func_80247298
/* 13B354 80248014 00439021 */   addu  $s2, $v0, $v1
/* 13B358 80248018 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13B35C 8024801C 24420011 */  addiu $v0, $v0, 0x11
/* 13B360 80248020 01621021 */  addu  $v0, $t3, $v0
/* 13B364 80248024 16800006 */  bnez  $s4, .L80248040
/* 13B368 80248028 00553021 */   addu  $a2, $v0, $s5
/* 13B36C 8024802C 24C3FFFD */  addiu $v1, $a2, -3
/* 13B370 80248030 00111040 */  sll   $v0, $s1, 1
/* 13B374 80248034 00511021 */  addu  $v0, $v0, $s1
/* 13B378 80248038 00021040 */  sll   $v0, $v0, 1
/* 13B37C 8024803C 00623021 */  addu  $a2, $v1, $v0
.L80248040:
/* 13B380 80248040 24040001 */  addiu $a0, $zero, 1
/* 13B384 80248044 0C091D16 */  jal   func_80247458
/* 13B388 80248048 0240282D */   daddu $a1, $s2, $zero
/* 13B38C 8024804C 26100001 */  addiu $s0, $s0, 1
.L80248050:
/* 13B390 80248050 0213102A */  slt   $v0, $s0, $s3
/* 13B394 80248054 1440FFD7 */  bnez  $v0, .L80247FB4
/* 13B398 80248058 00000000 */   nop   
/* 13B39C 8024805C 08092052 */  j     .L80248148
/* 13B3A0 80248060 00000000 */   nop   

.L80248064:
/* 13B3A4 80248064 346364FF */  ori   $v1, $v1, 0x64ff
/* 13B3A8 80248068 0000802D */  daddu $s0, $zero, $zero
/* 13B3AC 8024806C 24A20010 */  addiu $v0, $a1, 0x10
/* 13B3B0 80248070 3C0AFA00 */  lui   $t2, 0xfa00
/* 13B3B4 80248074 3C01800A */  lui   $at, 0x800a
/* 13B3B8 80248078 AC22A66C */  sw    $v0, -0x5994($at)
/* 13B3BC 8024807C ACAA0008 */  sw    $t2, 8($a1)
/* 13B3C0 80248080 1A600028 */  blez  $s3, .L80248124
/* 13B3C4 80248084 ACA3000C */   sw    $v1, 0xc($a1)
/* 13B3C8 80248088 2A740005 */  slti  $s4, $s3, 5
.L8024808C:
/* 13B3CC 8024808C 0C091CAA */  jal   func_802472A8
/* 13B3D0 80248090 02E0202D */   daddu $a0, $s7, $zero
/* 13B3D4 80248094 8FAA0094 */  lw    $t2, 0x94($sp)
/* 13B3D8 80248098 02C0202D */  daddu $a0, $s6, $zero
/* 13B3DC 8024809C 020A0018 */  mult  $s0, $t2
/* 13B3E0 802480A0 244200EB */  addiu $v0, $v0, 0xeb
/* 13B3E4 802480A4 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B3E8 802480A8 00101FC3 */  sra   $v1, $s0, 0x1f
/* 13B3EC 802480AC 01621021 */  addu  $v0, $t3, $v0
/* 13B3F0 802480B0 00005010 */  mfhi  $t2
/* 13B3F4 802480B4 000A2843 */  sra   $a1, $t2, 1
/* 13B3F8 802480B8 00A38823 */  subu  $s1, $a1, $v1
/* 13B3FC 802480BC 00112880 */  sll   $a1, $s1, 2
/* 13B400 802480C0 00B12821 */  addu  $a1, $a1, $s1
/* 13B404 802480C4 02052823 */  subu  $a1, $s0, $a1
/* 13B408 802480C8 00051840 */  sll   $v1, $a1, 1
/* 13B40C 802480CC 00651821 */  addu  $v1, $v1, $a1
/* 13B410 802480D0 00031840 */  sll   $v1, $v1, 1
/* 13B414 802480D4 24630001 */  addiu $v1, $v1, 1
/* 13B418 802480D8 0C091CA6 */  jal   func_80247298
/* 13B41C 802480DC 00439021 */   addu  $s2, $v0, $v1
/* 13B420 802480E0 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13B424 802480E4 24420011 */  addiu $v0, $v0, 0x11
/* 13B428 802480E8 01621021 */  addu  $v0, $t3, $v0
/* 13B42C 802480EC 16800006 */  bnez  $s4, .L80248108
/* 13B430 802480F0 00553021 */   addu  $a2, $v0, $s5
/* 13B434 802480F4 24C3FFFD */  addiu $v1, $a2, -3
/* 13B438 802480F8 00111040 */  sll   $v0, $s1, 1
/* 13B43C 802480FC 00511021 */  addu  $v0, $v0, $s1
/* 13B440 80248100 00021040 */  sll   $v0, $v0, 1
/* 13B444 80248104 00623021 */  addu  $a2, $v1, $v0
.L80248108:
/* 13B448 80248108 24040002 */  addiu $a0, $zero, 2
/* 13B44C 8024810C 0C091D16 */  jal   func_80247458
/* 13B450 80248110 0240282D */   daddu $a1, $s2, $zero
/* 13B454 80248114 26100001 */  addiu $s0, $s0, 1
/* 13B458 80248118 0213102A */  slt   $v0, $s0, $s3
/* 13B45C 8024811C 1440FFDB */  bnez  $v0, .L8024808C
/* 13B460 80248120 00000000 */   nop   
.L80248124:
/* 13B464 80248124 3C02800A */  lui   $v0, 0x800a
/* 13B468 80248128 8C42A66C */  lw    $v0, -0x5994($v0)
/* 13B46C 8024812C 0040182D */  daddu $v1, $v0, $zero
/* 13B470 80248130 24420008 */  addiu $v0, $v0, 8
/* 13B474 80248134 3C01800A */  lui   $at, 0x800a
/* 13B478 80248138 AC22A66C */  sw    $v0, -0x5994($at)
/* 13B47C 8024813C 3C02E700 */  lui   $v0, 0xe700
/* 13B480 80248140 AC620000 */  sw    $v0, ($v1)
/* 13B484 80248144 AC600004 */  sw    $zero, 4($v1)
.L80248148:
/* 13B488 80248148 8FAA0078 */  lw    $t2, 0x78($sp)
/* 13B48C 8024814C 8D420008 */  lw    $v0, 8($t2)
/* 13B490 80248150 27DE0001 */  addiu $fp, $fp, 1
/* 13B494 80248154 03C2102A */  slt   $v0, $fp, $v0
/* 13B498 80248158 1440FDB2 */  bnez  $v0, .L80247824
/* 13B49C 8024815C 00000000 */   nop   
.L80248160:
/* 13B4A0 80248160 8FAB0050 */  lw    $t3, 0x50($sp)
/* 13B4A4 80248164 256B0001 */  addiu $t3, $t3, 1
/* 13B4A8 80248168 29620014 */  slti  $v0, $t3, 0x14
/* 13B4AC 8024816C 1440FD96 */  bnez  $v0, .L802477C8
/* 13B4B0 80248170 AFAB0050 */   sw    $t3, 0x50($sp)
.L80248174:
/* 13B4B4 80248174 8FAA0054 */  lw    $t2, 0x54($sp)
/* 13B4B8 80248178 254A0001 */  addiu $t2, $t2, 1
/* 13B4BC 8024817C 29420003 */  slti  $v0, $t2, 3
/* 13B4C0 80248180 1440FD90 */  bnez  $v0, .L802477C4
/* 13B4C4 80248184 AFAA0054 */   sw    $t2, 0x54($sp)
/* 13B4C8 80248188 3C09800A */  lui   $t1, 0x800a
/* 13B4CC 8024818C 2529A66C */  addiu $t1, $t1, -0x5994
/* 13B4D0 80248190 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B4D4 80248194 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B4D8 80248198 8D250000 */  lw    $a1, ($t1)
/* 13B4DC 8024819C 25640001 */  addiu $a0, $t3, 1
/* 13B4E0 802481A0 25460001 */  addiu $a2, $t2, 1
/* 13B4E4 802481A4 00A0182D */  daddu $v1, $a1, $zero
/* 13B4E8 802481A8 8FAA00CC */  lw    $t2, 0xcc($sp)
/* 13B4EC 802481AC 24A50008 */  addiu $a1, $a1, 8
/* 13B4F0 802481B0 016A1021 */  addu  $v0, $t3, $t2
/* 13B4F4 802481B4 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13B4F8 802481B8 8FAA00D0 */  lw    $t2, 0xd0($sp)
/* 13B4FC 802481BC 2447FFFF */  addiu $a3, $v0, -1
/* 13B500 802481C0 016A1021 */  addu  $v0, $t3, $t2
/* 13B504 802481C4 2448FFFF */  addiu $t0, $v0, -1
/* 13B508 802481C8 3C02E700 */  lui   $v0, 0xe700
/* 13B50C 802481CC AD250000 */  sw    $a1, ($t1)
/* 13B510 802481D0 AC620000 */  sw    $v0, ($v1)
/* 13B514 802481D4 1C800002 */  bgtz  $a0, .L802481E0
/* 13B518 802481D8 AC600004 */   sw    $zero, 4($v1)
/* 13B51C 802481DC 24040001 */  addiu $a0, $zero, 1
.L802481E0:
/* 13B520 802481E0 58C00001 */  blezl $a2, .L802481E8
/* 13B524 802481E4 24060001 */   addiu $a2, $zero, 1
.L802481E8:
/* 13B528 802481E8 18E002DC */  blez  $a3, .L80248D5C
/* 13B52C 802481EC 00000000 */   nop   
/* 13B530 802481F0 190002DA */  blez  $t0, .L80248D5C
/* 13B534 802481F4 2882013F */   slti  $v0, $a0, 0x13f
/* 13B538 802481F8 104002D8 */  beqz  $v0, .L80248D5C
/* 13B53C 802481FC 28C200EF */   slti  $v0, $a2, 0xef
/* 13B540 80248200 104002D6 */  beqz  $v0, .L80248D5C
/* 13B544 80248204 28E2013F */   slti  $v0, $a3, 0x13f
/* 13B548 80248208 50400001 */  beql  $v0, $zero, .L80248210
/* 13B54C 8024820C 2407013F */   addiu $a3, $zero, 0x13f
.L80248210:
/* 13B550 80248210 290200EF */  slti  $v0, $t0, 0xef
/* 13B554 80248214 50400001 */  beql  $v0, $zero, .L8024821C
/* 13B558 80248218 240800EF */   addiu $t0, $zero, 0xef
.L8024821C:
/* 13B55C 8024821C 3C014080 */  lui   $at, 0x4080
/* 13B560 80248220 44812000 */  mtc1  $at, $f4
/* 13B564 80248224 44840000 */  mtc1  $a0, $f0
/* 13B568 80248228 00000000 */  nop   
/* 13B56C 8024822C 46800020 */  cvt.s.w $f0, $f0
/* 13B570 80248230 46040002 */  mul.s $f0, $f0, $f4
/* 13B574 80248234 00000000 */  nop   
/* 13B578 80248238 24A20008 */  addiu $v0, $a1, 8
/* 13B57C 8024823C 44861000 */  mtc1  $a2, $f2
/* 13B580 80248240 00000000 */  nop   
/* 13B584 80248244 468010A0 */  cvt.s.w $f2, $f2
/* 13B588 80248248 3C04ED00 */  lui   $a0, 0xed00
