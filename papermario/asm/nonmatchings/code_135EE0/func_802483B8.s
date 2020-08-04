.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_802483B8
/* 13B6F8 802483B8 2413000A */   addiu $s3, $zero, 0xa
/* 13B6FC 802483BC 0C093BA0 */  jal   func_8024EE80
/* 13B700 802483C0 24040046 */   addiu $a0, $zero, 0x46
/* 13B704 802483C4 0040202D */  daddu $a0, $v0, $zero
/* 13B708 802483C8 240700FF */  addiu $a3, $zero, 0xff
/* 13B70C 802483CC 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B710 802483D0 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B714 802483D4 24020001 */  addiu $v0, $zero, 1
/* 13B718 802483D8 AFB30010 */  sw    $s3, 0x10($sp)
/* 13B71C 802483DC AFA20014 */  sw    $v0, 0x14($sp)
/* 13B720 802483E0 25650010 */  addiu $a1, $t3, 0x10
/* 13B724 802483E4 2550004A */  addiu $s0, $t2, 0x4a
/* 13B728 802483E8 0C04993B */  jal   draw_string
/* 13B72C 802483EC 0200302D */   daddu $a2, $s0, $zero
/* 13B730 802483F0 0200302D */  daddu $a2, $s0, $zero
/* 13B734 802483F4 24070001 */  addiu $a3, $zero, 1
/* 13B738 802483F8 241500FF */  addiu $s5, $zero, 0xff
/* 13B73C 802483FC 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B740 80248400 3C048011 */  lui   $a0, 0x8011
/* 13B744 80248404 8084F298 */  lb    $a0, -0xd68($a0)
/* 13B748 80248408 24140003 */  addiu $s4, $zero, 3
/* 13B74C 8024840C AFB30010 */  sw    $s3, 0x10($sp)
/* 13B750 80248410 AFB50014 */  sw    $s5, 0x14($sp)
/* 13B754 80248414 AFB40018 */  sw    $s4, 0x18($sp)
/* 13B758 80248418 0C049DA7 */  jal   draw_number
/* 13B75C 8024841C 25650045 */   addiu $a1, $t3, 0x45
/* 13B760 80248420 0C0911FD */  jal   func_802447F4
/* 13B764 80248424 0000902D */   daddu $s2, $zero, $zero
/* 13B768 80248428 3C056666 */  lui   $a1, 0x6666
/* 13B76C 8024842C 3C048011 */  lui   $a0, 0x8011
/* 13B770 80248430 8084F298 */  lb    $a0, -0xd68($a0)
/* 13B774 80248434 34A56667 */  ori   $a1, $a1, 0x6667
/* 13B778 80248438 2483FFFF */  addiu $v1, $a0, -1
/* 13B77C 8024843C 00650018 */  mult  $v1, $a1
/* 13B780 80248440 00828823 */  subu  $s1, $a0, $v0
/* 13B784 80248444 00031FC3 */  sra   $v1, $v1, 0x1f
/* 13B788 80248448 00005010 */  mfhi  $t2
/* 13B78C 8024844C 000A1083 */  sra   $v0, $t2, 2
/* 13B790 80248450 00431023 */  subu  $v0, $v0, $v1
/* 13B794 80248454 02828004 */  sllv  $s0, $v0, $s4
/* 13B798 80248458 0233102A */  slt   $v0, $s1, $s3
/* 13B79C 8024845C 54400001 */  bnezl $v0, .L80248464
/* 13B7A0 80248460 2412FFFC */   addiu $s2, $zero, -4
.L80248464:
/* 13B7A4 80248464 24040007 */  addiu $a0, $zero, 7
/* 13B7A8 80248468 26100064 */  addiu $s0, $s0, 0x64
/* 13B7AC 8024846C 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B7B0 80248470 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B7B4 80248474 2565000C */  addiu $a1, $t3, 0xc
/* 13B7B8 80248478 01508021 */  addu  $s0, $t2, $s0
/* 13B7BC 8024847C 0C093BA5 */  jal   func_8024EE94
/* 13B7C0 80248480 0200302D */   daddu $a2, $s0, $zero
/* 13B7C4 80248484 0220202D */  daddu $a0, $s1, $zero
/* 13B7C8 80248488 26450049 */  addiu $a1, $s2, 0x49
/* 13B7CC 8024848C 0200302D */  daddu $a2, $s0, $zero
/* 13B7D0 80248490 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B7D4 80248494 24070001 */  addiu $a3, $zero, 1
/* 13B7D8 80248498 AFB30010 */  sw    $s3, 0x10($sp)
/* 13B7DC 8024849C AFB50014 */  sw    $s5, 0x14($sp)
/* 13B7E0 802484A0 AFB40018 */  sw    $s4, 0x18($sp)
/* 13B7E4 802484A4 0C049DA7 */  jal   draw_number
/* 13B7E8 802484A8 01652821 */   addu  $a1, $t3, $a1
/* 13B7EC 802484AC 3C05E300 */  lui   $a1, 0xe300
/* 13B7F0 802484B0 34A51201 */  ori   $a1, $a1, 0x1201
/* 13B7F4 802484B4 3C06800A */  lui   $a2, 0x800a
/* 13B7F8 802484B8 24C6A66C */  addiu $a2, $a2, -0x5994
/* 13B7FC 802484BC 0000882D */  daddu $s1, $zero, $zero
/* 13B800 802484C0 3C02DE00 */  lui   $v0, 0xde00
/* 13B804 802484C4 0220B02D */  daddu $s6, $s1, $zero
/* 13B808 802484C8 8CC30000 */  lw    $v1, ($a2)
/* 13B80C 802484CC 241700FF */  addiu $s7, $zero, 0xff
/* 13B810 802484D0 0060202D */  daddu $a0, $v1, $zero
/* 13B814 802484D4 24630008 */  addiu $v1, $v1, 8
/* 13B818 802484D8 ACC30000 */  sw    $v1, ($a2)
/* 13B81C 802484DC 3C108011 */  lui   $s0, 0x8011
/* 13B820 802484E0 8210F298 */  lb    $s0, -0xd68($s0)
/* 13B824 802484E4 241E0064 */  addiu $fp, $zero, 0x64
/* 13B828 802484E8 AC820000 */  sw    $v0, ($a0)
/* 13B82C 802484EC 3C028027 */  lui   $v0, 0x8027
/* 13B830 802484F0 2442F348 */  addiu $v0, $v0, -0xcb8
/* 13B834 802484F4 AC820004 */  sw    $v0, 4($a0)
/* 13B838 802484F8 24620008 */  addiu $v0, $v1, 8
/* 13B83C 802484FC ACC20000 */  sw    $v0, ($a2)
/* 13B840 80248500 24022000 */  addiu $v0, $zero, 0x2000
/* 13B844 80248504 AC650000 */  sw    $a1, ($v1)
/* 13B848 80248508 1A000026 */  blez  $s0, .L802485A4
/* 13B84C 8024850C AC620004 */   sw    $v0, 4($v1)
/* 13B850 80248510 00C0902D */  daddu $s2, $a2, $zero
/* 13B854 80248514 3C15FA00 */  lui   $s5, 0xfa00
/* 13B858 80248518 3C14E3E3 */  lui   $s4, 0xe3e3
/* 13B85C 8024851C 3694E3FF */  ori   $s4, $s4, 0xe3ff
/* 13B860 80248520 3C136666 */  lui   $s3, 0x6666
/* 13B864 80248524 36736667 */  ori   $s3, $s3, 0x6667
/* 13B868 80248528 0000202D */  daddu $a0, $zero, $zero
.L8024852C:
/* 13B86C 8024852C 8E420000 */  lw    $v0, ($s2)
/* 13B870 80248530 02330018 */  mult  $s1, $s3
/* 13B874 80248534 0040182D */  daddu $v1, $v0, $zero
/* 13B878 80248538 24420008 */  addiu $v0, $v0, 8
/* 13B87C 8024853C AE420000 */  sw    $v0, ($s2)
/* 13B880 80248540 001117C3 */  sra   $v0, $s1, 0x1f
/* 13B884 80248544 AC750000 */  sw    $s5, ($v1)
/* 13B888 80248548 AC740004 */  sw    $s4, 4($v1)
/* 13B88C 8024854C 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B890 80248550 00005010 */  mfhi  $t2
/* 13B894 80248554 000A3083 */  sra   $a2, $t2, 2
/* 13B898 80248558 00C23023 */  subu  $a2, $a2, $v0
/* 13B89C 8024855C 00061080 */  sll   $v0, $a2, 2
/* 13B8A0 80248560 00461021 */  addu  $v0, $v0, $a2
/* 13B8A4 80248564 00021040 */  sll   $v0, $v0, 1
/* 13B8A8 80248568 02221023 */  subu  $v0, $s1, $v0
/* 13B8AC 8024856C 00022840 */  sll   $a1, $v0, 1
/* 13B8B0 80248570 00A22821 */  addu  $a1, $a1, $v0
/* 13B8B4 80248574 00052840 */  sll   $a1, $a1, 1
/* 13B8B8 80248578 24A5000B */  addiu $a1, $a1, 0xb
/* 13B8BC 8024857C 01652821 */  addu  $a1, $t3, $a1
/* 13B8C0 80248580 000630C0 */  sll   $a2, $a2, 3
/* 13B8C4 80248584 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B8C8 80248588 24C6005C */  addiu $a2, $a2, 0x5c
/* 13B8CC 8024858C 0C091D16 */  jal   func_80247458
/* 13B8D0 80248590 01463021 */   addu  $a2, $t2, $a2
/* 13B8D4 80248594 26310001 */  addiu $s1, $s1, 1
/* 13B8D8 80248598 0230102A */  slt   $v0, $s1, $s0
/* 13B8DC 8024859C 1440FFE3 */  bnez  $v0, .L8024852C
/* 13B8E0 802485A0 0000202D */   daddu $a0, $zero, $zero
.L802485A4:
/* 13B8E4 802485A4 3C05800A */  lui   $a1, 0x800a
/* 13B8E8 802485A8 24A5A66C */  addiu $a1, $a1, -0x5994
/* 13B8EC 802485AC 8CA40000 */  lw    $a0, ($a1)
/* 13B8F0 802485B0 3C02E700 */  lui   $v0, 0xe700
/* 13B8F4 802485B4 0080182D */  daddu $v1, $a0, $zero
/* 13B8F8 802485B8 24840008 */  addiu $a0, $a0, 8
/* 13B8FC 802485BC ACA40000 */  sw    $a0, ($a1)
/* 13B900 802485C0 AC620000 */  sw    $v0, ($v1)
/* 13B904 802485C4 AC600004 */  sw    $zero, 4($v1)
/* 13B908 802485C8 8FAB0074 */  lw    $t3, 0x74($sp)
/* 13B90C 802485CC 11600089 */  beqz  $t3, .L802487F4
/* 13B910 802485D0 24820008 */   addiu $v0, $a0, 8
/* 13B914 802485D4 ACA20000 */  sw    $v0, ($a1)
/* 13B918 802485D8 3C02FA00 */  lui   $v0, 0xfa00
/* 13B91C 802485DC AC820000 */  sw    $v0, ($a0)
/* 13B920 802485E0 00171400 */  sll   $v0, $s7, 0x10
/* 13B924 802485E4 001E1A00 */  sll   $v1, $fp, 8
/* 13B928 802485E8 00431025 */  or    $v0, $v0, $v1
/* 13B92C 802485EC 344200FF */  ori   $v0, $v0, 0xff
/* 13B930 802485F0 AC820004 */  sw    $v0, 4($a0)
/* 13B934 802485F4 8FAA006C */  lw    $t2, 0x6c($sp)
/* 13B938 802485F8 8FAB0070 */  lw    $t3, 0x70($sp)
/* 13B93C 802485FC 014B1023 */  subu  $v0, $t2, $t3
/* 13B940 80248600 1840001D */  blez  $v0, .L80248678
/* 13B944 80248604 0000882D */   daddu $s1, $zero, $zero
/* 13B948 80248608 3C126666 */  lui   $s2, 0x6666
/* 13B94C 8024860C 36526667 */  ori   $s2, $s2, 0x6667
/* 13B950 80248610 0040802D */  daddu $s0, $v0, $zero
/* 13B954 80248614 02320018 */  mult  $s1, $s2
.L80248618:
/* 13B958 80248618 24040002 */  addiu $a0, $zero, 2
/* 13B95C 8024861C 001117C3 */  sra   $v0, $s1, 0x1f
/* 13B960 80248620 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B964 80248624 00005010 */  mfhi  $t2
/* 13B968 80248628 008A3007 */  srav  $a2, $t2, $a0
/* 13B96C 8024862C 00C23023 */  subu  $a2, $a2, $v0
/* 13B970 80248630 00861004 */  sllv  $v0, $a2, $a0
/* 13B974 80248634 00461021 */  addu  $v0, $v0, $a2
/* 13B978 80248638 00021040 */  sll   $v0, $v0, 1
/* 13B97C 8024863C 02221023 */  subu  $v0, $s1, $v0
/* 13B980 80248640 00022840 */  sll   $a1, $v0, 1
/* 13B984 80248644 00A22821 */  addu  $a1, $a1, $v0
/* 13B988 80248648 00052840 */  sll   $a1, $a1, 1
/* 13B98C 8024864C 24A5000B */  addiu $a1, $a1, 0xb
/* 13B990 80248650 01652821 */  addu  $a1, $t3, $a1
/* 13B994 80248654 000630C0 */  sll   $a2, $a2, 3
/* 13B998 80248658 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B99C 8024865C 24C6005C */  addiu $a2, $a2, 0x5c
/* 13B9A0 80248660 0C091D16 */  jal   func_80247458
/* 13B9A4 80248664 01463021 */   addu  $a2, $t2, $a2
/* 13B9A8 80248668 26310001 */  addiu $s1, $s1, 1
/* 13B9AC 8024866C 0230102A */  slt   $v0, $s1, $s0
/* 13B9B0 80248670 1440FFE9 */  bnez  $v0, .L80248618
/* 13B9B4 80248674 02320018 */   mult  $s1, $s2
.L80248678:
/* 13B9B8 80248678 3C10800A */  lui   $s0, 0x800a
/* 13B9BC 8024867C 2610A66C */  addiu $s0, $s0, -0x5994
/* 13B9C0 80248680 3C02E700 */  lui   $v0, 0xe700
/* 13B9C4 80248684 8E030000 */  lw    $v1, ($s0)
/* 13B9C8 80248688 8FAB006C */  lw    $t3, 0x6c($sp)
/* 13B9CC 8024868C 8FAA0070 */  lw    $t2, 0x70($sp)
/* 13B9D0 80248690 3C058007 */  lui   $a1, 0x8007
/* 13B9D4 80248694 8CA5419C */  lw    $a1, 0x419c($a1)
/* 13B9D8 80248698 016A8823 */  subu  $s1, $t3, $t2
/* 13B9DC 8024869C 0060202D */  daddu $a0, $v1, $zero
/* 13B9E0 802486A0 AC820000 */  sw    $v0, ($a0)
/* 13B9E4 802486A4 AC800004 */  sw    $zero, 4($a0)
/* 13B9E8 802486A8 94A40134 */  lhu   $a0, 0x134($a1)
/* 13B9EC 802486AC 24630008 */  addiu $v1, $v1, 8
/* 13B9F0 802486B0 00041100 */  sll   $v0, $a0, 4
/* 13B9F4 802486B4 00441023 */  subu  $v0, $v0, $a0
/* 13B9F8 802486B8 44826000 */  mtc1  $v0, $f12
/* 13B9FC 802486BC 00000000 */  nop   
/* 13BA00 802486C0 46806320 */  cvt.s.w $f12, $f12
/* 13BA04 802486C4 0C00A8BB */  jal   sin_deg
/* 13BA08 802486C8 AE030000 */   sw    $v1, ($s0)
/* 13BA0C 802486CC 3C04E200 */  lui   $a0, 0xe200
/* 13BA10 802486D0 3484001C */  ori   $a0, $a0, 0x1c
/* 13BA14 802486D4 3C030050 */  lui   $v1, 0x50
/* 13BA18 802486D8 34634340 */  ori   $v1, $v1, 0x4340
/* 13BA1C 802486DC 3C013F80 */  lui   $at, 0x3f80
/* 13BA20 802486E0 44811000 */  mtc1  $at, $f2
/* 13BA24 802486E4 8E050000 */  lw    $a1, ($s0)
/* 13BA28 802486E8 46020000 */  add.s $f0, $f0, $f2
/* 13BA2C 802486EC 00A0102D */  daddu $v0, $a1, $zero
/* 13BA30 802486F0 3C018027 */  lui   $at, 0x8027
/* 13BA34 802486F4 D422FFB0 */  ldc1  $f2, -0x50($at)
/* 13BA38 802486F8 46000021 */  cvt.d.s $f0, $f0
/* 13BA3C 802486FC 46220002 */  mul.d $f0, $f0, $f2
/* 13BA40 80248700 00000000 */  nop   
/* 13BA44 80248704 24A50008 */  addiu $a1, $a1, 8
/* 13BA48 80248708 AE050000 */  sw    $a1, ($s0)
/* 13BA4C 8024870C AC440000 */  sw    $a0, ($v0)
/* 13BA50 80248710 AC430004 */  sw    $v1, 4($v0)
/* 13BA54 80248714 3C013FE0 */  lui   $at, 0x3fe0
/* 13BA58 80248718 44811800 */  mtc1  $at, $f3
/* 13BA5C 8024871C 44801000 */  mtc1  $zero, $f2
/* 13BA60 80248720 24A20008 */  addiu $v0, $a1, 8
/* 13BA64 80248724 AE020000 */  sw    $v0, ($s0)
/* 13BA68 80248728 46220000 */  add.d $f0, $f0, $f2
/* 13BA6C 8024872C 3C02FA00 */  lui   $v0, 0xfa00
/* 13BA70 80248730 3C01437F */  lui   $at, 0x437f
/* 13BA74 80248734 44811000 */  mtc1  $at, $f2
/* 13BA78 80248738 46200020 */  cvt.s.d $f0, $f0
/* 13BA7C 8024873C 46020002 */  mul.s $f0, $f0, $f2
/* 13BA80 80248740 00000000 */  nop   
/* 13BA84 80248744 ACA20000 */  sw    $v0, ($a1)
/* 13BA88 80248748 00171400 */  sll   $v0, $s7, 0x10
/* 13BA8C 8024874C 001E1A00 */  sll   $v1, $fp, 8
/* 13BA90 80248750 00431025 */  or    $v0, $v0, $v1
/* 13BA94 80248754 4600018D */  trunc.w.s $f6, $f0
/* 13BA98 80248758 44043000 */  mfc1  $a0, $f6
/* 13BA9C 8024875C 00000000 */  nop   
/* 13BAA0 80248760 308400FF */  andi  $a0, $a0, 0xff
/* 13BAA4 80248764 00441025 */  or    $v0, $v0, $a0
/* 13BAA8 80248768 ACA20004 */  sw    $v0, 4($a1)
/* 13BAAC 8024876C 8FAB006C */  lw    $t3, 0x6c($sp)
/* 13BAB0 80248770 022B102A */  slt   $v0, $s1, $t3
/* 13BAB4 80248774 10400046 */  beqz  $v0, .L80248890
/* 13BAB8 80248778 00000000 */   nop   
/* 13BABC 8024877C 3C106666 */  lui   $s0, 0x6666
/* 13BAC0 80248780 36106667 */  ori   $s0, $s0, 0x6667
/* 13BAC4 80248784 02300018 */  mult  $s1, $s0
.L80248788:
/* 13BAC8 80248788 24040002 */  addiu $a0, $zero, 2
/* 13BACC 8024878C 001117C3 */  sra   $v0, $s1, 0x1f
/* 13BAD0 80248790 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13BAD4 80248794 00005010 */  mfhi  $t2
/* 13BAD8 80248798 008A3007 */  srav  $a2, $t2, $a0
/* 13BADC 8024879C 00C23023 */  subu  $a2, $a2, $v0
/* 13BAE0 802487A0 00861004 */  sllv  $v0, $a2, $a0
/* 13BAE4 802487A4 00461021 */  addu  $v0, $v0, $a2
/* 13BAE8 802487A8 00021040 */  sll   $v0, $v0, 1
/* 13BAEC 802487AC 02221023 */  subu  $v0, $s1, $v0
/* 13BAF0 802487B0 00022840 */  sll   $a1, $v0, 1
/* 13BAF4 802487B4 00A22821 */  addu  $a1, $a1, $v0
/* 13BAF8 802487B8 00052840 */  sll   $a1, $a1, 1
/* 13BAFC 802487BC 24A5000B */  addiu $a1, $a1, 0xb
/* 13BB00 802487C0 01652821 */  addu  $a1, $t3, $a1
/* 13BB04 802487C4 000630C0 */  sll   $a2, $a2, 3
/* 13BB08 802487C8 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13BB0C 802487CC 24C6005C */  addiu $a2, $a2, 0x5c
/* 13BB10 802487D0 0C091D16 */  jal   func_80247458
/* 13BB14 802487D4 01463021 */   addu  $a2, $t2, $a2
/* 13BB18 802487D8 8FAB006C */  lw    $t3, 0x6c($sp)
/* 13BB1C 802487DC 26310001 */  addiu $s1, $s1, 1
/* 13BB20 802487E0 022B102A */  slt   $v0, $s1, $t3
/* 13BB24 802487E4 1440FFE8 */  bnez  $v0, .L80248788
/* 13BB28 802487E8 02300018 */   mult  $s1, $s0
/* 13BB2C 802487EC 08092224 */  j     .L80248890
/* 13BB30 802487F0 00000000 */   nop   

.L802487F4:
/* 13BB34 802487F4 ACA20000 */  sw    $v0, ($a1)
/* 13BB38 802487F8 3C02FA00 */  lui   $v0, 0xfa00
/* 13BB3C 802487FC AC820000 */  sw    $v0, ($a0)
/* 13BB40 80248800 00171400 */  sll   $v0, $s7, 0x10
/* 13BB44 80248804 001E1A00 */  sll   $v1, $fp, 8
/* 13BB48 80248808 00431025 */  or    $v0, $v0, $v1
/* 13BB4C 8024880C 344200FF */  ori   $v0, $v0, 0xff
/* 13BB50 80248810 AC820004 */  sw    $v0, 4($a0)
/* 13BB54 80248814 8FAA006C */  lw    $t2, 0x6c($sp)
/* 13BB58 80248818 1940001D */  blez  $t2, .L80248890
/* 13BB5C 8024881C 0000882D */   daddu $s1, $zero, $zero
/* 13BB60 80248820 3C106666 */  lui   $s0, 0x6666
/* 13BB64 80248824 36106667 */  ori   $s0, $s0, 0x6667
/* 13BB68 80248828 02300018 */  mult  $s1, $s0
.L8024882C:
/* 13BB6C 8024882C 24040002 */  addiu $a0, $zero, 2
/* 13BB70 80248830 001117C3 */  sra   $v0, $s1, 0x1f
/* 13BB74 80248834 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13BB78 80248838 00005010 */  mfhi  $t2
/* 13BB7C 8024883C 008A3007 */  srav  $a2, $t2, $a0
/* 13BB80 80248840 00C23023 */  subu  $a2, $a2, $v0
/* 13BB84 80248844 00861004 */  sllv  $v0, $a2, $a0
/* 13BB88 80248848 00461021 */  addu  $v0, $v0, $a2
/* 13BB8C 8024884C 00021040 */  sll   $v0, $v0, 1
/* 13BB90 80248850 02221023 */  subu  $v0, $s1, $v0
/* 13BB94 80248854 00022840 */  sll   $a1, $v0, 1
/* 13BB98 80248858 00A22821 */  addu  $a1, $a1, $v0
/* 13BB9C 8024885C 00052840 */  sll   $a1, $a1, 1
/* 13BBA0 80248860 24A5000B */  addiu $a1, $a1, 0xb
/* 13BBA4 80248864 01652821 */  addu  $a1, $t3, $a1
/* 13BBA8 80248868 000630C0 */  sll   $a2, $a2, 3
/* 13BBAC 8024886C 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13BBB0 80248870 24C6005C */  addiu $a2, $a2, 0x5c
/* 13BBB4 80248874 0C091D16 */  jal   func_80247458
/* 13BBB8 80248878 01463021 */   addu  $a2, $t2, $a2
/* 13BBBC 8024887C 8FAB006C */  lw    $t3, 0x6c($sp)
/* 13BBC0 80248880 26310001 */  addiu $s1, $s1, 1
/* 13BBC4 80248884 022B102A */  slt   $v0, $s1, $t3
/* 13BBC8 80248888 1440FFE8 */  bnez  $v0, .L8024882C
/* 13BBCC 8024888C 02300018 */   mult  $s1, $s0
.L80248890:
/* 13BBD0 80248890 3C03800A */  lui   $v1, 0x800a
/* 13BBD4 80248894 2463A66C */  addiu $v1, $v1, -0x5994
/* 13BBD8 80248898 8C620000 */  lw    $v0, ($v1)
/* 13BBDC 8024889C 0040202D */  daddu $a0, $v0, $zero
/* 13BBE0 802488A0 24420008 */  addiu $v0, $v0, 8
/* 13BBE4 802488A4 AC620000 */  sw    $v0, ($v1)
/* 13BBE8 802488A8 3C02E700 */  lui   $v0, 0xe700
/* 13BBEC 802488AC AC820000 */  sw    $v0, ($a0)
/* 13BBF0 802488B0 AC800004 */  sw    $zero, 4($a0)
/* 13BBF4 802488B4 3C038027 */  lui   $v1, 0x8027
/* 13BBF8 802488B8 8C63039C */  lw    $v1, 0x39c($v1)
/* 13BBFC 802488BC 8FA600C4 */  lw    $a2, 0xc4($sp)
/* 13BC00 802488C0 50600001 */  beql  $v1, $zero, .L802488C8
/* 13BC04 802488C4 24C60009 */   addiu $a2, $a2, 9
.L802488C8:
/* 13BC08 802488C8 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13BC0C 802488CC 2402005B */  addiu $v0, $zero, 0x5b
/* 13BC10 802488D0 AFA20014 */  sw    $v0, 0x14($sp)
/* 13BC14 802488D4 24020022 */  addiu $v0, $zero, 0x22
/* 13BC18 802488D8 AFA20018 */  sw    $v0, 0x18($sp)
/* 13BC1C 802488DC 240200FF */  addiu $v0, $zero, 0xff
/* 13BC20 802488E0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 13BC24 802488E4 24020001 */  addiu $v0, $zero, 1
/* 13BC28 802488E8 AFA00010 */  sw    $zero, 0x10($sp)
/* 13BC2C 802488EC 14620004 */  bne   $v1, $v0, .L80248900
/* 13BC30 802488F0 25470007 */   addiu $a3, $t2, 7
/* 13BC34 802488F4 24020080 */  addiu $v0, $zero, 0x80
/* 13BC38 802488F8 08092241 */  j     .L80248904
/* 13BC3C 802488FC AFA20020 */   sw    $v0, 0x20($sp)

.L80248900:
/* 13BC40 80248900 AFA00020 */  sw    $zero, 0x20($sp)
.L80248904:
/* 13BC44 80248904 24040004 */  addiu $a0, $zero, 4
/* 13BC48 80248908 3C058027 */  lui   $a1, 0x8027
/* 13BC4C 8024890C 24A5FBD8 */  addiu $a1, $a1, -0x428
/* 13BC50 80248910 24020140 */  addiu $v0, $zero, 0x140
/* 13BC54 80248914 AFA20044 */  sw    $v0, 0x44($sp)
/* 13BC58 80248918 240200F0 */  addiu $v0, $zero, 0xf0
/* 13BC5C 8024891C AFA00024 */  sw    $zero, 0x24($sp)
/* 13BC60 80248920 AFA00028 */  sw    $zero, 0x28($sp)
/* 13BC64 80248924 AFA0002C */  sw    $zero, 0x2c($sp)
/* 13BC68 80248928 AFA00030 */  sw    $zero, 0x30($sp)
/* 13BC6C 8024892C AFA00034 */  sw    $zero, 0x34($sp)
/* 13BC70 80248930 AFA00038 */  sw    $zero, 0x38($sp)
/* 13BC74 80248934 AFA0003C */  sw    $zero, 0x3c($sp)
/* 13BC78 80248938 AFA00040 */  sw    $zero, 0x40($sp)
/* 13BC7C 8024893C AFA20048 */  sw    $v0, 0x48($sp)
/* 13BC80 80248940 0C03D4B8 */  jal   draw_box
/* 13BC84 80248944 AFA0004C */   sw    $zero, 0x4c($sp)
/* 13BC88 80248948 0C093BA0 */  jal   func_8024EE80
/* 13BC8C 8024894C 24040047 */   addiu $a0, $zero, 0x47
/* 13BC90 80248950 3C118027 */  lui   $s1, 0x8027
/* 13BC94 80248954 2631039C */  addiu $s1, $s1, 0x39c
/* 13BC98 80248958 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13BC9C 8024895C 8E230000 */  lw    $v1, ($s1)
/* 13BCA0 80248960 14600002 */  bnez  $v1, .L8024896C
/* 13BCA4 80248964 2565000A */   addiu $a1, $t3, 0xa
/* 13BCA8 80248968 25650013 */  addiu $a1, $t3, 0x13
.L8024896C:
/* 13BCAC 8024896C 240700FF */  addiu $a3, $zero, 0xff
/* 13BCB0 80248970 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13BCB4 80248974 24100001 */  addiu $s0, $zero, 1
/* 13BCB8 80248978 14700002 */  bne   $v1, $s0, .L80248984
/* 13BCBC 8024897C 25460011 */   addiu $a2, $t2, 0x11
/* 13BCC0 80248980 240700BF */  addiu $a3, $zero, 0xbf
.L80248984:
/* 13BCC4 80248984 0040202D */  daddu $a0, $v0, $zero
/* 13BCC8 80248988 AFA00010 */  sw    $zero, 0x10($sp)
/* 13BCCC 8024898C 0C04993B */  jal   draw_string
/* 13BCD0 80248990 AFB00014 */   sw    $s0, 0x14($sp)
/* 13BCD4 80248994 8E230000 */  lw    $v1, ($s1)
/* 13BCD8 80248998 8FA600C4 */  lw    $a2, 0xc4($sp)
/* 13BCDC 8024899C 50700001 */  beql  $v1, $s0, .L802489A4
/* 13BCE0 802489A0 24C60009 */   addiu $a2, $a2, 9
.L802489A4:
/* 13BCE4 802489A4 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13BCE8 802489A8 2402005B */  addiu $v0, $zero, 0x5b
/* 13BCEC 802489AC AFA20014 */  sw    $v0, 0x14($sp)
/* 13BCF0 802489B0 24020022 */  addiu $v0, $zero, 0x22
/* 13BCF4 802489B4 AFA20018 */  sw    $v0, 0x18($sp)
/* 13BCF8 802489B8 240200FF */  addiu $v0, $zero, 0xff
/* 13BCFC 802489BC AFA00010 */  sw    $zero, 0x10($sp)
/* 13BD00 802489C0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 13BD04 802489C4 14600004 */  bnez  $v1, .L802489D8
/* 13BD08 802489C8 25670025 */   addiu $a3, $t3, 0x25
/* 13BD0C 802489CC 24020080 */  addiu $v0, $zero, 0x80
/* 13BD10 802489D0 08092277 */  j     .L802489DC
/* 13BD14 802489D4 AFA20020 */   sw    $v0, 0x20($sp)

.L802489D8:
/* 13BD18 802489D8 AFA00020 */  sw    $zero, 0x20($sp)
.L802489DC:
/* 13BD1C 802489DC 24040004 */  addiu $a0, $zero, 4
/* 13BD20 802489E0 3C058027 */  lui   $a1, 0x8027
/* 13BD24 802489E4 24A5FBD8 */  addiu $a1, $a1, -0x428
/* 13BD28 802489E8 24020140 */  addiu $v0, $zero, 0x140
/* 13BD2C 802489EC AFA20044 */  sw    $v0, 0x44($sp)
/* 13BD30 802489F0 240200F0 */  addiu $v0, $zero, 0xf0
/* 13BD34 802489F4 AFA00024 */  sw    $zero, 0x24($sp)
/* 13BD38 802489F8 AFA00028 */  sw    $zero, 0x28($sp)
/* 13BD3C 802489FC AFA0002C */  sw    $zero, 0x2c($sp)
/* 13BD40 80248A00 AFA00030 */  sw    $zero, 0x30($sp)
/* 13BD44 80248A04 AFA00034 */  sw    $zero, 0x34($sp)
/* 13BD48 80248A08 AFA00038 */  sw    $zero, 0x38($sp)
/* 13BD4C 80248A0C AFA0003C */  sw    $zero, 0x3c($sp)
/* 13BD50 80248A10 AFA00040 */  sw    $zero, 0x40($sp)
/* 13BD54 80248A14 AFA20048 */  sw    $v0, 0x48($sp)
/* 13BD58 80248A18 0C03D4B8 */  jal   draw_box
/* 13BD5C 80248A1C AFA0004C */   sw    $zero, 0x4c($sp)
/* 13BD60 80248A20 0C093BA0 */  jal   func_8024EE80
/* 13BD64 80248A24 24040048 */   addiu $a0, $zero, 0x48
/* 13BD68 80248A28 3C118027 */  lui   $s1, 0x8027
/* 13BD6C 80248A2C 2631039C */  addiu $s1, $s1, 0x39c
/* 13BD70 80248A30 24100001 */  addiu $s0, $zero, 1
/* 13BD74 80248A34 8FAA00C4 */  lw    $t2, 0xc4($sp)
/* 13BD78 80248A38 8E230000 */  lw    $v1, ($s1)
/* 13BD7C 80248A3C 14700002 */  bne   $v1, $s0, .L80248A48
/* 13BD80 80248A40 2545000C */   addiu $a1, $t2, 0xc
/* 13BD84 80248A44 25450015 */  addiu $a1, $t2, 0x15
.L80248A48:
/* 13BD88 80248A48 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13BD8C 80248A4C 240700FF */  addiu $a3, $zero, 0xff
/* 13BD90 80248A50 14600002 */  bnez  $v1, .L80248A5C
/* 13BD94 80248A54 2566002A */   addiu $a2, $t3, 0x2a
/* 13BD98 80248A58 240700BF */  addiu $a3, $zero, 0xbf
.L80248A5C:
/* 13BD9C 80248A5C 0040202D */  daddu $a0, $v0, $zero
/* 13BDA0 80248A60 AFA00010 */  sw    $zero, 0x10($sp)
/* 13BDA4 80248A64 0C04993B */  jal   draw_string
/* 13BDA8 80248A68 AFB00014 */   sw    $s0, 0x14($sp)
/* 13BDAC 80248A6C 0C093BA0 */  jal   func_8024EE80
/* 13BDB0 80248A70 24040049 */   addiu $a0, $zero, 0x49
/* 13BDB4 80248A74 8FAA00C4 */  lw    $t2, 0xc4($sp)
/* 13BDB8 80248A78 8E230000 */  lw    $v1, ($s1)
/* 13BDBC 80248A7C 14700002 */  bne   $v1, $s0, .L80248A88
/* 13BDC0 80248A80 2545001A */   addiu $a1, $t2, 0x1a
/* 13BDC4 80248A84 25450023 */  addiu $a1, $t2, 0x23
.L80248A88:
/* 13BDC8 80248A88 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13BDCC 80248A8C 240700FF */  addiu $a3, $zero, 0xff
/* 13BDD0 80248A90 14600002 */  bnez  $v1, .L80248A9C
/* 13BDD4 80248A94 25660034 */   addiu $a2, $t3, 0x34
/* 13BDD8 80248A98 240700BF */  addiu $a3, $zero, 0xbf
.L80248A9C:
/* 13BDDC 80248A9C 0040202D */  daddu $a0, $v0, $zero
/* 13BDE0 80248AA0 AFA00010 */  sw    $zero, 0x10($sp)
/* 13BDE4 80248AA4 0C04993B */  jal   draw_string
/* 13BDE8 80248AA8 AFB00014 */   sw    $s0, 0x14($sp)
/* 13BDEC 80248AAC 3C038027 */  lui   $v1, 0x8027
/* 13BDF0 80248AB0 806300D4 */  lb    $v1, 0xd4($v1)
/* 13BDF4 80248AB4 24020002 */  addiu $v0, $zero, 2
/* 13BDF8 80248AB8 14620050 */  bne   $v1, $v0, .L80248BFC
/* 13BDFC 80248ABC 00000000 */   nop   
/* 13BE00 80248AC0 3C028027 */  lui   $v0, 0x8027
/* 13BE04 80248AC4 8C420398 */  lw    $v0, 0x398($v0)
/* 13BE08 80248AC8 14400009 */  bnez  $v0, .L80248AF0
/* 13BE0C 80248ACC 24040020 */   addiu $a0, $zero, 0x20
/* 13BE10 80248AD0 8E260000 */  lw    $a2, ($s1)
/* 13BE14 80248AD4 8FAA00C4 */  lw    $t2, 0xc4($sp)
/* 13BE18 80248AD8 8FAB00C8 */  lw    $t3, 0xc8($sp)
/* 13BE1C 80248ADC 2545000A */  addiu $a1, $t2, 0xa
/* 13BE20 80248AE0 00063140 */  sll   $a2, $a2, 5
/* 13BE24 80248AE4 24C6001A */  addiu $a2, $a2, 0x1a
/* 13BE28 80248AE8 080922FD */  j     func_80248BF4
/* 13BE2C 80248AEC 01663021 */   addu  $a2, $t3, $a2

.L80248AF0:
/* 13BE30 80248AF0 3C118027 */  lui   $s1, 0x8027
/* 13BE34 80248AF4 26310280 */  addiu $s1, $s1, 0x280
/* 13BE38 80248AF8 8E240000 */  lw    $a0, ($s1)
/* 13BE3C 80248AFC 3C128027 */  lui   $s2, 0x8027
/* 13BE40 80248B00 26520288 */  addiu $s2, $s2, 0x288
/* 13BE44 80248B04 00041040 */  sll   $v0, $a0, 1
/* 13BE48 80248B08 00441021 */  addu  $v0, $v0, $a0
/* 13BE4C 80248B0C 00021080 */  sll   $v0, $v0, 2
/* 13BE50 80248B10 00521021 */  addu  $v0, $v0, $s2
/* 13BE54 80248B14 90430001 */  lbu   $v1, 1($v0)
/* 13BE58 80248B18 90420002 */  lbu   $v0, 2($v0)
/* 13BE5C 80248B1C 00620018 */  mult  $v1, $v0
/* 13BE60 80248B20 3C108027 */  lui   $s0, 0x8027
/* 13BE64 80248B24 26100378 */  addiu $s0, $s0, 0x378
/* 13BE68 80248B28 8E050000 */  lw    $a1, ($s0)
/* 13BE6C 80248B2C 00005012 */  mflo  $t2
/* 13BE70 80248B30 0C091C43 */  jal   func_8024710C
/* 13BE74 80248B34 00AA2823 */   subu  $a1, $a1, $t2
/* 13BE78 80248B38 8E240000 */  lw    $a0, ($s1)
/* 13BE7C 80248B3C 00041840 */  sll   $v1, $a0, 1
/* 13BE80 80248B40 00641821 */  addu  $v1, $v1, $a0
/* 13BE84 80248B44 00031880 */  sll   $v1, $v1, 2
/* 13BE88 80248B48 00721821 */  addu  $v1, $v1, $s2
/* 13BE8C 80248B4C 90650001 */  lbu   $a1, 1($v1)
/* 13BE90 80248B50 90630002 */  lbu   $v1, 2($v1)
/* 13BE94 80248B54 00A30018 */  mult  $a1, $v1
/* 13BE98 80248B58 8E050000 */  lw    $a1, ($s0)
/* 13BE9C 80248B5C 0040802D */  daddu $s0, $v0, $zero
/* 13BEA0 80248B60 00005012 */  mflo  $t2
/* 13BEA4 80248B64 0C091C5A */  jal   func_80247168
/* 13BEA8 80248B68 00AA2823 */   subu  $a1, $a1, $t2
/* 13BEAC 80248B6C 0200202D */  daddu $a0, $s0, $zero
