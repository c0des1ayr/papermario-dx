.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80248660
/* 176F40 80248660 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 176F44 80248664 3C058011 */  lui   $a1, 0x8011
/* 176F48 80248668 24A5F290 */  addiu $a1, $a1, -0xd70
/* 176F4C 8024866C AFB3001C */  sw    $s3, 0x1c($sp)
/* 176F50 80248670 3C13800E */  lui   $s3, 0x800e
/* 176F54 80248674 2673C070 */  addiu $s3, $s3, -0x3f90
/* 176F58 80248678 AFBF0024 */  sw    $ra, 0x24($sp)
/* 176F5C 8024867C AFB40020 */  sw    $s4, 0x20($sp)
/* 176F60 80248680 AFB20018 */  sw    $s2, 0x18($sp)
/* 176F64 80248684 AFB10014 */  sw    $s1, 0x14($sp)
/* 176F68 80248688 AFB00010 */  sw    $s0, 0x10($sp)
/* 176F6C 8024868C 8E7200D8 */  lw    $s2, 0xd8($s3)
/* 176F70 80248690 3C03800E */  lui   $v1, 0x800e
/* 176F74 80248694 8C63C4DC */  lw    $v1, -0x3b24($v1)
/* 176F78 80248698 8E7100DC */  lw    $s1, 0xdc($s3)
/* 176F7C 8024869C 10600005 */  beqz  $v1, .L802486B4
/* 176F80 802486A0 24020002 */   addiu $v0, $zero, 2
/* 176F84 802486A4 1062008A */  beq   $v1, $v0, .L802488D0
/* 176F88 802486A8 00000000 */   nop   
/* 176F8C 802486AC 080922A1 */  j     .L80248A84
/* 176F90 802486B0 00000000 */   nop   

.L802486B4:
/* 176F94 802486B4 94A2029E */  lhu   $v0, 0x29e($a1)
/* 176F98 802486B8 3C04F7FF */  lui   $a0, 0xf7ff
/* 176F9C 802486BC A260008C */  sb    $zero, 0x8c($s3)
/* 176FA0 802486C0 A6600180 */  sh    $zero, 0x180($s3)
/* 176FA4 802486C4 A260019A */  sb    $zero, 0x19a($s3)
/* 176FA8 802486C8 24420001 */  addiu $v0, $v0, 1
/* 176FAC 802486CC A4A2029E */  sh    $v0, 0x29e($a1)
/* 176FB0 802486D0 8E620000 */  lw    $v0, ($s3)
/* 176FB4 802486D4 2403FFFD */  addiu $v1, $zero, -3
/* 176FB8 802486D8 00431024 */  and   $v0, $v0, $v1
/* 176FBC 802486DC AE620000 */  sw    $v0, ($s3)
/* 176FC0 802486E0 8E420000 */  lw    $v0, ($s2)
/* 176FC4 802486E4 3484FFFF */  ori   $a0, $a0, 0xffff
/* 176FC8 802486E8 3C01802A */  lui   $at, 0x802a
/* 176FCC 802486EC AC20F254 */  sw    $zero, -0xdac($at)
/* 176FD0 802486F0 00441024 */  and   $v0, $v0, $a0
/* 176FD4 802486F4 12200004 */  beqz  $s1, .L80248708
/* 176FD8 802486F8 AE420000 */   sw    $v0, ($s2)
/* 176FDC 802486FC 8E220000 */  lw    $v0, ($s1)
/* 176FE0 80248700 00441024 */  and   $v0, $v0, $a0
/* 176FE4 80248704 AE220000 */  sw    $v0, ($s1)
.L80248708:
/* 176FE8 80248708 3C030100 */  lui   $v1, 0x100
/* 176FEC 8024870C 34634000 */  ori   $v1, $v1, 0x4000
/* 176FF0 80248710 0000502D */  daddu $t2, $zero, $zero
/* 176FF4 80248714 0140882D */  daddu $s1, $t2, $zero
/* 176FF8 80248718 0260282D */  daddu $a1, $s3, $zero
/* 176FFC 8024871C 8E620004 */  lw    $v0, 4($s3)
/* 177000 80248720 0260202D */  daddu $a0, $s3, $zero
/* 177004 80248724 00431025 */  or    $v0, $v0, $v1
/* 177008 80248728 AE620004 */  sw    $v0, 4($s3)
.L8024872C:
/* 17700C 8024872C 8CB000E0 */  lw    $s0, 0xe0($a1)
/* 177010 80248730 52000006 */  beql  $s0, $zero, .L8024874C
/* 177014 80248734 26310001 */   addiu $s1, $s1, 1
/* 177018 80248738 36220200 */  ori   $v0, $s1, 0x200
/* 17701C 8024873C A4820140 */  sh    $v0, 0x140($a0)
/* 177020 80248740 24840002 */  addiu $a0, $a0, 2
/* 177024 80248744 254A0001 */  addiu $t2, $t2, 1
/* 177028 80248748 26310001 */  addiu $s1, $s1, 1
.L8024874C:
/* 17702C 8024874C 2A220018 */  slti  $v0, $s1, 0x18
/* 177030 80248750 1440FFF6 */  bnez  $v0, .L8024872C
/* 177034 80248754 24A50004 */   addiu $a1, $a1, 4
/* 177038 80248758 A26A0171 */  sb    $t2, 0x171($s3)
/* 17703C 8024875C 0000882D */  daddu $s1, $zero, $zero
/* 177040 80248760 2542FFFF */  addiu $v0, $t2, -1
/* 177044 80248764 18400022 */  blez  $v0, .L802487F0
/* 177048 80248768 266C0140 */   addiu $t4, $s3, 0x140
/* 17704C 8024876C 0040682D */  daddu $t5, $v0, $zero
/* 177050 80248770 0180582D */  daddu $t3, $t4, $zero
.L80248774:
/* 177054 80248774 26270001 */  addiu $a3, $s1, 1
/* 177058 80248778 00EA102A */  slt   $v0, $a3, $t2
/* 17705C 8024877C 50400019 */  beql  $v0, $zero, .L802487E4
/* 177060 80248780 26310001 */   addiu $s1, $s1, 1
/* 177064 80248784 0160482D */  daddu $t1, $t3, $zero
/* 177068 80248788 00071040 */  sll   $v0, $a3, 1
/* 17706C 8024878C 004C3021 */  addu  $a2, $v0, $t4
.L80248790:
/* 177070 80248790 95280000 */  lhu   $t0, ($t1)
/* 177074 80248794 94C50000 */  lhu   $a1, ($a2)
/* 177078 80248798 310300FF */  andi  $v1, $t0, 0xff
/* 17707C 8024879C 00031880 */  sll   $v1, $v1, 2
/* 177080 802487A0 02631821 */  addu  $v1, $s3, $v1
/* 177084 802487A4 30A200FF */  andi  $v0, $a1, 0xff
/* 177088 802487A8 00021080 */  sll   $v0, $v0, 2
/* 17708C 802487AC 02621021 */  addu  $v0, $s3, $v0
/* 177090 802487B0 8C6300E0 */  lw    $v1, 0xe0($v1)
/* 177094 802487B4 8C4400E0 */  lw    $a0, 0xe0($v0)
/* 177098 802487B8 806201F1 */  lb    $v0, 0x1f1($v1)
/* 17709C 802487BC 808301F1 */  lb    $v1, 0x1f1($a0)
/* 1770A0 802487C0 0043102A */  slt   $v0, $v0, $v1
/* 1770A4 802487C4 10400003 */  beqz  $v0, .L802487D4
/* 1770A8 802487C8 24E70001 */   addiu $a3, $a3, 1
/* 1770AC 802487CC A5250000 */  sh    $a1, ($t1)
/* 1770B0 802487D0 A4C80000 */  sh    $t0, ($a2)
.L802487D4:
/* 1770B4 802487D4 00EA102A */  slt   $v0, $a3, $t2
/* 1770B8 802487D8 1440FFED */  bnez  $v0, .L80248790
/* 1770BC 802487DC 24C60002 */   addiu $a2, $a2, 2
/* 1770C0 802487E0 26310001 */  addiu $s1, $s1, 1
.L802487E4:
/* 1770C4 802487E4 022D102A */  slt   $v0, $s1, $t5
/* 1770C8 802487E8 1440FFE2 */  bnez  $v0, .L80248774
/* 1770CC 802487EC 256B0002 */   addiu $t3, $t3, 2
.L802487F0:
/* 1770D0 802487F0 A2600170 */  sb    $zero, 0x170($s3)
/* 1770D4 802487F4 0000282D */  daddu $a1, $zero, $zero
/* 1770D8 802487F8 3C030020 */  lui   $v1, 0x20
/* 1770DC 802487FC 34634000 */  ori   $v1, $v1, 0x4000
.L80248800:
/* 1770E0 80248800 00051040 */  sll   $v0, $a1, 1
.L80248804:
/* 1770E4 80248804 02621021 */  addu  $v0, $s3, $v0
/* 1770E8 80248808 90420141 */  lbu   $v0, 0x141($v0)
/* 1770EC 8024880C 00021080 */  sll   $v0, $v0, 2
/* 1770F0 80248810 02621021 */  addu  $v0, $s3, $v0
/* 1770F4 80248814 8C5000E0 */  lw    $s0, 0xe0($v0)
/* 1770F8 80248818 12000005 */  beqz  $s0, .L80248830
/* 1770FC 8024881C 00000000 */   nop   
/* 177100 80248820 8E020000 */  lw    $v0, ($s0)
/* 177104 80248824 00431024 */  and   $v0, $v0, $v1
/* 177108 80248828 10400008 */  beqz  $v0, .L8024884C
/* 17710C 8024882C 00051040 */   sll   $v0, $a1, 1
.L80248830:
/* 177110 80248830 82620171 */  lb    $v0, 0x171($s3)
/* 177114 80248834 24A50001 */  addiu $a1, $a1, 1
/* 177118 80248838 00A2102A */  slt   $v0, $a1, $v0
/* 17711C 8024883C 5040FFF0 */  beql  $v0, $zero, .L80248800
/* 177120 80248840 0000282D */   daddu $a1, $zero, $zero
/* 177124 80248844 08092201 */  j     .L80248804
/* 177128 80248848 00051040 */   sll   $v0, $a1, 1

.L8024884C:
/* 17712C 8024884C 02621021 */  addu  $v0, $s3, $v0
/* 177130 80248850 94430140 */  lhu   $v1, 0x140($v0)
/* 177134 80248854 82620171 */  lb    $v0, 0x171($s3)
/* 177138 80248858 24A50001 */  addiu $a1, $a1, 1
/* 17713C 8024885C AE700174 */  sw    $s0, 0x174($s3)
/* 177140 80248860 00A2102A */  slt   $v0, $a1, $v0
/* 177144 80248864 14400002 */  bnez  $v0, .L80248870
/* 177148 80248868 A6630172 */   sh    $v1, 0x172($s3)
/* 17714C 8024886C 0000282D */  daddu $a1, $zero, $zero
.L80248870:
/* 177150 80248870 86640172 */  lh    $a0, 0x172($s3)
/* 177154 80248874 0C09390F */  jal   cam_target_actor
/* 177158 80248878 A2650170 */   sb    $a1, 0x170($s3)
/* 17715C 8024887C 8E700174 */  lw    $s0, 0x174($s3)
/* 177160 80248880 0C098F18 */  jal   func_80263C60
/* 177164 80248884 00000000 */   nop   
/* 177168 80248888 24020001 */  addiu $v0, $zero, 1
/* 17716C 8024888C 2405000A */  addiu $a1, $zero, 0xa
/* 177170 80248890 A26201A7 */  sb    $v0, 0x1a7($s3)
/* 177174 80248894 8E0401C4 */  lw    $a0, 0x1c4($s0)
/* 177178 80248898 0C0B0CF8 */  jal   start_script
/* 17717C 8024889C 0000302D */   daddu $a2, $zero, $zero
/* 177180 802488A0 AE0201D4 */  sw    $v0, 0x1d4($s0)
/* 177184 802488A4 8C440144 */  lw    $a0, 0x144($v0)
/* 177188 802488A8 24030003 */  addiu $v1, $zero, 3
/* 17718C 802488AC 3C01802A */  lui   $at, 0x802a
/* 177190 802488B0 AC23F248 */  sw    $v1, -0xdb8($at)
/* 177194 802488B4 AE0401E4 */  sw    $a0, 0x1e4($s0)
/* 177198 802488B8 86640172 */  lh    $a0, 0x172($s3)
/* 17719C 802488BC 24030002 */  addiu $v1, $zero, 2
/* 1771A0 802488C0 3C01800E */  lui   $at, 0x800e
/* 1771A4 802488C4 AC23C4DC */  sw    $v1, -0x3b24($at)
/* 1771A8 802488C8 080922A1 */  j     .L80248A84
/* 1771AC 802488CC AC440148 */   sw    $a0, 0x148($v0)

.L802488D0:
/* 1771B0 802488D0 3C03802A */  lui   $v1, 0x802a
/* 1771B4 802488D4 2463F248 */  addiu $v1, $v1, -0xdb8
/* 1771B8 802488D8 8C620000 */  lw    $v0, ($v1)
/* 1771BC 802488DC 10400003 */  beqz  $v0, .L802488EC
/* 1771C0 802488E0 2442FFFF */   addiu $v0, $v0, -1
/* 1771C4 802488E4 0809223E */  j     .L802488F8
/* 1771C8 802488E8 AC620000 */   sw    $v0, ($v1)

.L802488EC:
/* 1771CC 802488EC 24020001 */  addiu $v0, $zero, 1
/* 1771D0 802488F0 3C01802A */  lui   $at, 0x802a
/* 1771D4 802488F4 AC22F254 */  sw    $v0, -0xdac($at)
.L802488F8:
/* 1771D8 802488F8 8E700174 */  lw    $s0, 0x174($s3)
/* 1771DC 802488FC 8E0201D4 */  lw    $v0, 0x1d4($s0)
/* 1771E0 80248900 50400007 */  beql  $v0, $zero, .L80248920
/* 1771E4 80248904 AE0001D4 */   sw    $zero, 0x1d4($s0)
/* 1771E8 80248908 8E0401E4 */  lw    $a0, 0x1e4($s0)
/* 1771EC 8024890C 0C0B1059 */  jal   does_script_exist
/* 1771F0 80248910 00000000 */   nop   
/* 1771F4 80248914 1440005B */  bnez  $v0, .L80248A84
/* 1771F8 80248918 00000000 */   nop   
/* 1771FC 8024891C AE0001D4 */  sw    $zero, 0x1d4($s0)
.L80248920:
/* 177200 80248920 8E4201D8 */  lw    $v0, 0x1d8($s2)
/* 177204 80248924 10400005 */  beqz  $v0, .L8024893C
/* 177208 80248928 00000000 */   nop   
/* 17720C 8024892C 0C0B1059 */  jal   does_script_exist
/* 177210 80248930 8E4401E8 */   lw    $a0, 0x1e8($s2)
/* 177214 80248934 14400053 */  bnez  $v0, .L80248A84
/* 177218 80248938 00000000 */   nop   
.L8024893C:
/* 17721C 8024893C 1220000A */  beqz  $s1, .L80248968
/* 177220 80248940 AE4001D8 */   sw    $zero, 0x1d8($s2)
/* 177224 80248944 8E2201D8 */  lw    $v0, 0x1d8($s1)
/* 177228 80248948 50400007 */  beql  $v0, $zero, .L80248968
/* 17722C 8024894C AE2001D8 */   sw    $zero, 0x1d8($s1)
/* 177230 80248950 8E2401E8 */  lw    $a0, 0x1e8($s1)
/* 177234 80248954 0C0B1059 */  jal   does_script_exist
/* 177238 80248958 00000000 */   nop   
/* 17723C 8024895C 14400049 */  bnez  $v0, .L80248A84
/* 177240 80248960 00000000 */   nop   
/* 177244 80248964 AE2001D8 */  sw    $zero, 0x1d8($s1)
.L80248968:
/* 177248 80248968 0000A02D */  daddu $s4, $zero, $zero
/* 17724C 8024896C 0280882D */  daddu $s1, $s4, $zero
/* 177250 80248970 0260902D */  daddu $s2, $s3, $zero
.L80248974:
/* 177254 80248974 8E5000E0 */  lw    $s0, 0xe0($s2)
/* 177258 80248978 5200000B */  beql  $s0, $zero, .L802489A8
/* 17725C 8024897C 26310001 */   addiu $s1, $s1, 1
/* 177260 80248980 8E0201D4 */  lw    $v0, 0x1d4($s0)
/* 177264 80248984 50400008 */  beql  $v0, $zero, .L802489A8
/* 177268 80248988 26310001 */   addiu $s1, $s1, 1
/* 17726C 8024898C 8E0401E4 */  lw    $a0, 0x1e4($s0)
/* 177270 80248990 0C0B1059 */  jal   does_script_exist
/* 177274 80248994 00000000 */   nop   
/* 177278 80248998 50400002 */  beql  $v0, $zero, .L802489A4
/* 17727C 8024899C AE0001D4 */   sw    $zero, 0x1d4($s0)
/* 177280 802489A0 24140001 */  addiu $s4, $zero, 1
.L802489A4:
/* 177284 802489A4 26310001 */  addiu $s1, $s1, 1
.L802489A8:
/* 177288 802489A8 2A220018 */  slti  $v0, $s1, 0x18
/* 17728C 802489AC 1440FFF1 */  bnez  $v0, .L80248974
/* 177290 802489B0 26520004 */   addiu $s2, $s2, 4
/* 177294 802489B4 16800033 */  bnez  $s4, .L80248A84
/* 177298 802489B8 0000882D */   daddu $s1, $zero, $zero
/* 17729C 802489BC 0260902D */  daddu $s2, $s3, $zero
.L802489C0:
/* 1772A0 802489C0 8E5000E0 */  lw    $s0, 0xe0($s2)
/* 1772A4 802489C4 5200000B */  beql  $s0, $zero, .L802489F4
/* 1772A8 802489C8 26310001 */   addiu $s1, $s1, 1
/* 1772AC 802489CC 8E0201D8 */  lw    $v0, 0x1d8($s0)
/* 1772B0 802489D0 50400008 */  beql  $v0, $zero, .L802489F4
/* 1772B4 802489D4 26310001 */   addiu $s1, $s1, 1
/* 1772B8 802489D8 8E0401E8 */  lw    $a0, 0x1e8($s0)
/* 1772BC 802489DC 0C0B1059 */  jal   does_script_exist
/* 1772C0 802489E0 00000000 */   nop   
/* 1772C4 802489E4 50400002 */  beql  $v0, $zero, .L802489F0
/* 1772C8 802489E8 AE0001D8 */   sw    $zero, 0x1d8($s0)
/* 1772CC 802489EC 24140001 */  addiu $s4, $zero, 1
.L802489F0:
/* 1772D0 802489F0 26310001 */  addiu $s1, $s1, 1
.L802489F4:
/* 1772D4 802489F4 2A220018 */  slti  $v0, $s1, 0x18
/* 1772D8 802489F8 1440FFF1 */  bnez  $v0, .L802489C0
/* 1772DC 802489FC 26520004 */   addiu $s2, $s2, 4
/* 1772E0 80248A00 16800020 */  bnez  $s4, .L80248A84
/* 1772E4 80248A04 0000882D */   daddu $s1, $zero, $zero
/* 1772E8 80248A08 3C06FFF7 */  lui   $a2, 0xfff7
/* 1772EC 80248A0C 34C6FFFF */  ori   $a2, $a2, 0xffff
/* 1772F0 80248A10 0260282D */  daddu $a1, $s3, $zero
/* 1772F4 80248A14 3C02800E */  lui   $v0, 0x800e
/* 1772F8 80248A18 2442C070 */  addiu $v0, $v0, -0x3f90
/* 1772FC 80248A1C 8C430004 */  lw    $v1, 4($v0)
/* 177300 80248A20 2404BFFF */  addiu $a0, $zero, -0x4001
/* 177304 80248A24 00641824 */  and   $v1, $v1, $a0
/* 177308 80248A28 AC430004 */  sw    $v1, 4($v0)
.L80248A2C:
/* 17730C 80248A2C 8CB000E0 */  lw    $s0, 0xe0($a1)
/* 177310 80248A30 12000004 */  beqz  $s0, .L80248A44
/* 177314 80248A34 26310001 */   addiu $s1, $s1, 1
/* 177318 80248A38 8E020000 */  lw    $v0, ($s0)
/* 17731C 80248A3C 00461024 */  and   $v0, $v0, $a2
/* 177320 80248A40 AE020000 */  sw    $v0, ($s0)
.L80248A44:
/* 177324 80248A44 2A220018 */  slti  $v0, $s1, 0x18
/* 177328 80248A48 1440FFF8 */  bnez  $v0, .L80248A2C
/* 17732C 80248A4C 24A50004 */   addiu $a1, $a1, 4
/* 177330 80248A50 8262008C */  lb    $v0, 0x8c($s3)
/* 177334 80248A54 1440000B */  bnez  $v0, .L80248A84
/* 177338 80248A58 00000000 */   nop   
/* 17733C 80248A5C 0C098D19 */  jal   func_80263464
/* 177340 80248A60 00000000 */   nop   
/* 177344 80248A64 14400007 */  bnez  $v0, .L80248A84
/* 177348 80248A68 00000000 */   nop   
/* 17734C 80248A6C 0C098D0D */  jal   func_80263434
/* 177350 80248A70 00000000 */   nop   
/* 177354 80248A74 14400003 */  bnez  $v0, .L80248A84
/* 177358 80248A78 00000000 */   nop   
/* 17735C 80248A7C 0C090464 */  jal   func_80241190
/* 177360 80248A80 24040005 */   addiu $a0, $zero, 5
.L80248A84:
.L80248A84:
/* 177364 80248A84 8FBF0024 */  lw    $ra, 0x24($sp)
/* 177368 80248A88 8FB40020 */  lw    $s4, 0x20($sp)
/* 17736C 80248A8C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 177370 80248A90 8FB20018 */  lw    $s2, 0x18($sp)
/* 177374 80248A94 8FB10014 */  lw    $s1, 0x14($sp)
/* 177378 80248A98 8FB00010 */  lw    $s0, 0x10($sp)
/* 17737C 80248A9C 03E00008 */  jr    $ra
/* 177380 80248AA0 27BD0028 */   addiu $sp, $sp, 0x28

