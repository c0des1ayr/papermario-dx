.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80126F78
/* 0BD678 80126F78 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0BD67C 80126F7C AFB00038 */  sw    $s0, 0x38($sp)
/* 0BD680 80126F80 0080802D */  daddu $s0, $a0, $zero
/* 0BD684 80126F84 3C028007 */  lui   $v0, 0x8007
/* 0BD688 80126F88 8C42419C */  lw    $v0, 0x419c($v0)
/* 0BD68C 80126F8C 3C0316C1 */  lui   $v1, 0x16c1
/* 0BD690 80126F90 AFBF0058 */  sw    $ra, 0x58($sp)
/* 0BD694 80126F94 AFB70054 */  sw    $s7, 0x54($sp)
/* 0BD698 80126F98 AFB60050 */  sw    $s6, 0x50($sp)
/* 0BD69C 80126F9C AFB5004C */  sw    $s5, 0x4c($sp)
/* 0BD6A0 80126FA0 AFB40048 */  sw    $s4, 0x48($sp)
/* 0BD6A4 80126FA4 AFB30044 */  sw    $s3, 0x44($sp)
/* 0BD6A8 80126FA8 AFB20040 */  sw    $s2, 0x40($sp)
/* 0BD6AC 80126FAC AFB1003C */  sw    $s1, 0x3c($sp)
/* 0BD6B0 80126FB0 94440134 */  lhu   $a0, 0x134($v0)
/* 0BD6B4 80126FB4 34636C17 */  ori   $v1, $v1, 0x6c17
/* 0BD6B8 80126FB8 000410C2 */  srl   $v0, $a0, 3
/* 0BD6BC 80126FBC 00430019 */  multu $v0, $v1
/* 0BD6C0 80126FC0 241700FF */  addiu $s7, $zero, 0xff
/* 0BD6C4 80126FC4 24160048 */  addiu $s6, $zero, 0x48
/* 0BD6C8 80126FC8 0000C010 */  mfhi  $t8
/* 0BD6CC 80126FCC 00181082 */  srl   $v0, $t8, 2
/* 0BD6D0 80126FD0 00021840 */  sll   $v1, $v0, 1
/* 0BD6D4 80126FD4 00621821 */  addu  $v1, $v1, $v0
/* 0BD6D8 80126FD8 00031100 */  sll   $v0, $v1, 4
/* 0BD6DC 80126FDC 00431023 */  subu  $v0, $v0, $v1
/* 0BD6E0 80126FE0 000210C0 */  sll   $v0, $v0, 3
/* 0BD6E4 80126FE4 00822023 */  subu  $a0, $a0, $v0
/* 0BD6E8 80126FE8 920304F8 */  lbu   $v1, 0x4f8($s0)
/* 0BD6EC 80126FEC 24020007 */  addiu $v0, $zero, 7
/* 0BD6F0 80126FF0 10620006 */  beq   $v1, $v0, .L8012700C
/* 0BD6F4 80126FF4 3088FFFF */   andi  $t0, $a0, 0xffff
/* 0BD6F8 80126FF8 8E0204FC */  lw    $v0, 0x4fc($s0)
/* 0BD6FC 80126FFC 3C030002 */  lui   $v1, 2
/* 0BD700 80127000 00431024 */  and   $v0, $v0, $v1
/* 0BD704 80127004 1040000F */  beqz  $v0, .L80127044
/* 0BD708 80127008 00000000 */   nop   
.L8012700C:
/* 0BD70C 8012700C 920304EE */  lbu   $v1, 0x4ee($s0)
/* 0BD710 80127010 86020456 */  lh    $v0, 0x456($s0)
/* 0BD714 80127014 8604045A */  lh    $a0, 0x45a($s0)
/* 0BD718 80127018 00031840 */  sll   $v1, $v1, 1
/* 0BD71C 8012701C 02031821 */  addu  $v1, $s0, $v1
/* 0BD720 80127020 00441021 */  addu  $v0, $v0, $a0
/* 0BD724 80127024 946504D0 */  lhu   $a1, 0x4d0($v1)
/* 0BD728 80127028 8604045C */  lh    $a0, 0x45c($s0)
/* 0BD72C 8012702C 0045A021 */  addu  $s4, $v0, $a1
/* 0BD730 80127030 86020458 */  lh    $v0, 0x458($s0)
/* 0BD734 80127034 946304DC */  lhu   $v1, 0x4dc($v1)
/* 0BD738 80127038 00441021 */  addu  $v0, $v0, $a0
/* 0BD73C 8012703C 08049C4C */  j     .L80127130
/* 0BD740 80127040 0043A821 */   addu  $s5, $v0, $v1

.L80127044:
/* 0BD744 80127044 920204ED */  lbu   $v0, 0x4ed($s0)
/* 0BD748 80127048 3C013FF0 */  lui   $at, 0x3ff0
/* 0BD74C 8012704C 44811800 */  mtc1  $at, $f3
/* 0BD750 80127050 44801000 */  mtc1  $zero, $f2
/* 0BD754 80127054 86030456 */  lh    $v1, 0x456($s0)
/* 0BD758 80127058 920604EE */  lbu   $a2, 0x4ee($s0)
/* 0BD75C 8012705C 920504EC */  lbu   $a1, 0x4ec($s0)
/* 0BD760 80127060 8604045C */  lh    $a0, 0x45c($s0)
/* 0BD764 80127064 44820000 */  mtc1  $v0, $f0
/* 0BD768 80127068 00000000 */  nop   
/* 0BD76C 8012706C 46800021 */  cvt.d.w $f0, $f0
/* 0BD770 80127070 00063040 */  sll   $a2, $a2, 1
/* 0BD774 80127074 02063021 */  addu  $a2, $s0, $a2
/* 0BD778 80127078 00052840 */  sll   $a1, $a1, 1
/* 0BD77C 8012707C 02052821 */  addu  $a1, $s0, $a1
/* 0BD780 80127080 46220000 */  add.d $f0, $f0, $f2
/* 0BD784 80127084 3C014018 */  lui   $at, 0x4018
/* 0BD788 80127088 44811800 */  mtc1  $at, $f3
/* 0BD78C 8012708C 44801000 */  mtc1  $zero, $f2
/* 0BD790 80127090 8602045A */  lh    $v0, 0x45a($s0)
/* 0BD794 80127094 94C704D0 */  lhu   $a3, 0x4d0($a2)
/* 0BD798 80127098 00621821 */  addu  $v1, $v1, $v0
/* 0BD79C 8012709C 00673821 */  addu  $a3, $v1, $a3
/* 0BD7A0 801270A0 94A204D0 */  lhu   $v0, 0x4d0($a1)
/* 0BD7A4 801270A4 46200020 */  cvt.s.d $f0, $f0
/* 0BD7A8 801270A8 46000021 */  cvt.d.s $f0, $f0
/* 0BD7AC 801270AC 46220003 */  div.d $f0, $f0, $f2
/* 0BD7B0 801270B0 46200020 */  cvt.s.d $f0, $f0
/* 0BD7B4 801270B4 00621821 */  addu  $v1, $v1, $v0
/* 0BD7B8 801270B8 00671823 */  subu  $v1, $v1, $a3
/* 0BD7BC 801270BC 44833000 */  mtc1  $v1, $f6
/* 0BD7C0 801270C0 00000000 */  nop   
/* 0BD7C4 801270C4 468031A0 */  cvt.s.w $f6, $f6
/* 0BD7C8 801270C8 46003182 */  mul.s $f6, $f6, $f0
/* 0BD7CC 801270CC 00000000 */  nop   
/* 0BD7D0 801270D0 86020458 */  lh    $v0, 0x458($s0)
/* 0BD7D4 801270D4 94C304DC */  lhu   $v1, 0x4dc($a2)
/* 0BD7D8 801270D8 00441021 */  addu  $v0, $v0, $a0
/* 0BD7DC 801270DC 94A404DC */  lhu   $a0, 0x4dc($a1)
/* 0BD7E0 801270E0 00431821 */  addu  $v1, $v0, $v1
/* 0BD7E4 801270E4 00441021 */  addu  $v0, $v0, $a0
/* 0BD7E8 801270E8 00431023 */  subu  $v0, $v0, $v1
/* 0BD7EC 801270EC 44822000 */  mtc1  $v0, $f4
/* 0BD7F0 801270F0 00000000 */  nop   
/* 0BD7F4 801270F4 46802120 */  cvt.s.w $f4, $f4
/* 0BD7F8 801270F8 46002102 */  mul.s $f4, $f4, $f0
/* 0BD7FC 801270FC 00000000 */  nop   
/* 0BD800 80127100 44871000 */  mtc1  $a3, $f2
/* 0BD804 80127104 00000000 */  nop   
/* 0BD808 80127108 468010A0 */  cvt.s.w $f2, $f2
/* 0BD80C 8012710C 46061080 */  add.s $f2, $f2, $f6
/* 0BD810 80127110 44830000 */  mtc1  $v1, $f0
/* 0BD814 80127114 00000000 */  nop   
/* 0BD818 80127118 46800020 */  cvt.s.w $f0, $f0
/* 0BD81C 8012711C 46040000 */  add.s $f0, $f0, $f4
/* 0BD820 80127120 4600120D */  trunc.w.s $f8, $f2
/* 0BD824 80127124 44144000 */  mfc1  $s4, $f8
/* 0BD828 80127128 4600020D */  trunc.w.s $f8, $f0
/* 0BD82C 8012712C 44154000 */  mfc1  $s5, $f8
.L80127130:
/* 0BD830 80127130 00082080 */  sll   $a0, $t0, 2
/* 0BD834 80127134 00882021 */  addu  $a0, $a0, $t0
/* 0BD838 80127138 00042080 */  sll   $a0, $a0, 2
/* 0BD83C 8012713C 00882023 */  subu  $a0, $a0, $t0
/* 0BD840 80127140 00042040 */  sll   $a0, $a0, 1
/* 0BD844 80127144 2484010E */  addiu $a0, $a0, 0x10e
/* 0BD848 80127148 00042400 */  sll   $a0, $a0, 0x10
/* 0BD84C 8012714C 0C00A4F5 */  jal   cosine
/* 0BD850 80127150 00042403 */   sra   $a0, $a0, 0x10
/* 0BD854 80127154 3C013FF0 */  lui   $at, 0x3ff0
/* 0BD858 80127158 44811800 */  mtc1  $at, $f3
/* 0BD85C 8012715C 44801000 */  mtc1  $zero, $f2
/* 0BD860 80127160 46000021 */  cvt.d.s $f0, $f0
/* 0BD864 80127164 46220000 */  add.d $f0, $f0, $f2
/* 0BD868 80127168 3C013FE0 */  lui   $at, 0x3fe0
/* 0BD86C 8012716C 44811800 */  mtc1  $at, $f3
/* 0BD870 80127170 44801000 */  mtc1  $zero, $f2
/* 0BD874 80127174 00000000 */  nop   
/* 0BD878 80127178 46220002 */  mul.d $f0, $f0, $f2
/* 0BD87C 8012717C 00000000 */  nop   
/* 0BD880 80127180 3C018015 */  lui   $at, 0x8015
/* 0BD884 80127184 D4220718 */  ldc1  $f2, 0x718($at)
/* 0BD888 80127188 46220002 */  mul.d $f0, $f0, $f2
/* 0BD88C 8012718C 00000000 */  nop   
/* 0BD890 80127190 26B50001 */  addiu $s5, $s5, 1
/* 0BD894 80127194 8E0204FC */  lw    $v0, 0x4fc($s0)
/* 0BD898 80127198 44941000 */  mtc1  $s4, $f2
/* 0BD89C 8012719C 00000000 */  nop   
/* 0BD8A0 801271A0 468010A1 */  cvt.d.w $f2, $f2
/* 0BD8A4 801271A4 46201080 */  add.d $f2, $f2, $f0
/* 0BD8A8 801271A8 3C030002 */  lui   $v1, 2
/* 0BD8AC 801271AC 00431024 */  and   $v0, $v0, $v1
/* 0BD8B0 801271B0 4620120D */  trunc.w.d $f8, $f2
/* 0BD8B4 801271B4 44144000 */  mfc1  $s4, $f8
/* 0BD8B8 801271B8 1040003E */  beqz  $v0, .L801272B4
/* 0BD8BC 801271BC 2694FFFE */   addiu $s4, $s4, -2
/* 0BD8C0 801271C0 92020512 */  lbu   $v0, 0x512($s0)
/* 0BD8C4 801271C4 3C014047 */  lui   $at, 0x4047
/* 0BD8C8 801271C8 44811800 */  mtc1  $at, $f3
/* 0BD8CC 801271CC 44801000 */  mtc1  $zero, $f2
/* 0BD8D0 801271D0 44820000 */  mtc1  $v0, $f0
/* 0BD8D4 801271D4 00000000 */  nop   
/* 0BD8D8 801271D8 46800021 */  cvt.d.w $f0, $f0
/* 0BD8DC 801271DC 46220002 */  mul.d $f0, $f0, $f2
/* 0BD8E0 801271E0 00000000 */  nop   
/* 0BD8E4 801271E4 3C018015 */  lui   $at, 0x8015
/* 0BD8E8 801271E8 D4220720 */  ldc1  $f2, 0x720($at)
/* 0BD8EC 801271EC 46201001 */  sub.d $f0, $f2, $f0
/* 0BD8F0 801271F0 3C0141E0 */  lui   $at, 0x41e0
/* 0BD8F4 801271F4 44811800 */  mtc1  $at, $f3
/* 0BD8F8 801271F8 44801000 */  mtc1  $zero, $f2
/* 0BD8FC 801271FC 00000000 */  nop   
/* 0BD900 80127200 4620103E */  c.le.d $f2, $f0
/* 0BD904 80127204 00000000 */  nop   
/* 0BD908 80127208 45030005 */  bc1tl .L80127220
/* 0BD90C 8012720C 46220001 */   sub.d $f0, $f0, $f2
/* 0BD910 80127210 4620020D */  trunc.w.d $f8, $f0
/* 0BD914 80127214 44034000 */  mfc1  $v1, $f8
/* 0BD918 80127218 08049C8D */  j     .L80127234
/* 0BD91C 8012721C 00000000 */   nop   

.L80127220:
/* 0BD920 80127220 3C028000 */  lui   $v0, 0x8000
/* 0BD924 80127224 4620020D */  trunc.w.d $f8, $f0
/* 0BD928 80127228 44034000 */  mfc1  $v1, $f8
/* 0BD92C 8012722C 00000000 */  nop   
/* 0BD930 80127230 00621825 */  or    $v1, $v1, $v0
.L80127234:
/* 0BD934 80127234 92020512 */  lbu   $v0, 0x512($s0)
/* 0BD938 80127238 3C018015 */  lui   $at, 0x8015
/* 0BD93C 8012723C D4220728 */  ldc1  $f2, 0x728($at)
/* 0BD940 80127240 44820000 */  mtc1  $v0, $f0
/* 0BD944 80127244 00000000 */  nop   
/* 0BD948 80127248 46800021 */  cvt.d.w $f0, $f0
/* 0BD94C 8012724C 46220002 */  mul.d $f0, $f0, $f2
/* 0BD950 80127250 00000000 */  nop   
/* 0BD954 80127254 3C014052 */  lui   $at, 0x4052
/* 0BD958 80127258 44811800 */  mtc1  $at, $f3
/* 0BD95C 8012725C 44801000 */  mtc1  $zero, $f2
/* 0BD960 80127260 00000000 */  nop   
/* 0BD964 80127264 46201001 */  sub.d $f0, $f2, $f0
/* 0BD968 80127268 3C0141E0 */  lui   $at, 0x41e0
/* 0BD96C 8012726C 44811800 */  mtc1  $at, $f3
/* 0BD970 80127270 44801000 */  mtc1  $zero, $f2
/* 0BD974 80127274 00000000 */  nop   
/* 0BD978 80127278 4620103E */  c.le.d $f2, $f0
/* 0BD97C 8012727C 00000000 */  nop   
/* 0BD980 80127280 45010005 */  bc1t  .L80127298
/* 0BD984 80127284 0060B82D */   daddu $s7, $v1, $zero
/* 0BD988 80127288 4620020D */  trunc.w.d $f8, $f0
/* 0BD98C 8012728C 44034000 */  mfc1  $v1, $f8
/* 0BD990 80127290 08049CAD */  j     .L801272B4
/* 0BD994 80127294 0060B02D */   daddu $s6, $v1, $zero

.L80127298:
/* 0BD998 80127298 46220001 */  sub.d $f0, $f0, $f2
/* 0BD99C 8012729C 3C028000 */  lui   $v0, 0x8000
/* 0BD9A0 801272A0 4620020D */  trunc.w.d $f8, $f0
/* 0BD9A4 801272A4 44034000 */  mfc1  $v1, $f8
/* 0BD9A8 801272A8 00000000 */  nop   
/* 0BD9AC 801272AC 00621825 */  or    $v1, $v1, $v0
/* 0BD9B0 801272B0 0060B02D */  daddu $s6, $v1, $zero
.L801272B4:
/* 0BD9B4 801272B4 3C0AE300 */  lui   $t2, 0xe300
/* 0BD9B8 801272B8 354A1001 */  ori   $t2, $t2, 0x1001
/* 0BD9BC 801272BC 3C0BF500 */  lui   $t3, 0xf500
/* 0BD9C0 801272C0 356B0100 */  ori   $t3, $t3, 0x100
/* 0BD9C4 801272C4 3C0C0703 */  lui   $t4, 0x703
/* 0BD9C8 801272C8 358CC000 */  ori   $t4, $t4, 0xc000
/* 0BD9CC 801272CC 3C0FE200 */  lui   $t7, 0xe200
/* 0BD9D0 801272D0 35EF001C */  ori   $t7, $t7, 0x1c
/* 0BD9D4 801272D4 3C0D0050 */  lui   $t5, 0x50
/* 0BD9D8 801272D8 35AD4240 */  ori   $t5, $t5, 0x4240
/* 0BD9DC 801272DC 3C10FCFF */  lui   $s0, 0xfcff
/* 0BD9E0 801272E0 361097FF */  ori   $s0, $s0, 0x97ff
/* 0BD9E4 801272E4 3C0EFF2D */  lui   $t6, 0xff2d
/* 0BD9E8 801272E8 35CEFEFF */  ori   $t6, $t6, 0xfeff
/* 0BD9EC 801272EC 3C132828 */  lui   $s3, 0x2828
/* 0BD9F0 801272F0 36732800 */  ori   $s3, $s3, 0x2800
/* 0BD9F4 801272F4 3C128010 */  lui   $s2, 0x8010
/* 0BD9F8 801272F8 2652BB60 */  addiu $s2, $s2, -0x44a0
/* 0BD9FC 801272FC 0240202D */  daddu $a0, $s2, $zero
/* 0BDA00 80127300 24050010 */  addiu $a1, $zero, 0x10
/* 0BDA04 80127304 00A0302D */  daddu $a2, $a1, $zero
/* 0BDA08 80127308 3C08800A */  lui   $t0, 0x800a
/* 0BDA0C 8012730C 2508A66C */  addiu $t0, $t0, -0x5994
/* 0BDA10 80127310 24070002 */  addiu $a3, $zero, 2
/* 0BDA14 80127314 3C09E700 */  lui   $t1, 0xe700
/* 0BDA18 80127318 8D030000 */  lw    $v1, ($t0)
/* 0BDA1C 8012731C 3C118010 */  lui   $s1, 0x8010
/* 0BDA20 80127320 2631BBE0 */  addiu $s1, $s1, -0x4420
/* 0BDA24 80127324 0060102D */  daddu $v0, $v1, $zero
/* 0BDA28 80127328 24630008 */  addiu $v1, $v1, 8
/* 0BDA2C 8012732C AD030000 */  sw    $v1, ($t0)
/* 0BDA30 80127330 AC490000 */  sw    $t1, ($v0)
/* 0BDA34 80127334 AC400004 */  sw    $zero, 4($v0)
/* 0BDA38 80127338 24620008 */  addiu $v0, $v1, 8
/* 0BDA3C 8012733C AD020000 */  sw    $v0, ($t0)
/* 0BDA40 80127340 34028000 */  ori   $v0, $zero, 0x8000
/* 0BDA44 80127344 AC620004 */  sw    $v0, 4($v1)
/* 0BDA48 80127348 00651021 */  addu  $v0, $v1, $a1
/* 0BDA4C 8012734C AC6A0000 */  sw    $t2, ($v1)
/* 0BDA50 80127350 AD020000 */  sw    $v0, ($t0)
/* 0BDA54 80127354 3C02FD10 */  lui   $v0, 0xfd10
/* 0BDA58 80127358 AC620008 */  sw    $v0, 8($v1)
/* 0BDA5C 8012735C 24620018 */  addiu $v0, $v1, 0x18
/* 0BDA60 80127360 AC71000C */  sw    $s1, 0xc($v1)
/* 0BDA64 80127364 AD020000 */  sw    $v0, ($t0)
/* 0BDA68 80127368 3C02E800 */  lui   $v0, 0xe800
/* 0BDA6C 8012736C AC620010 */  sw    $v0, 0x10($v1)
/* 0BDA70 80127370 24620020 */  addiu $v0, $v1, 0x20
/* 0BDA74 80127374 AC600014 */  sw    $zero, 0x14($v1)
/* 0BDA78 80127378 AD020000 */  sw    $v0, ($t0)
/* 0BDA7C 8012737C 3C020700 */  lui   $v0, 0x700
/* 0BDA80 80127380 AC62001C */  sw    $v0, 0x1c($v1)
/* 0BDA84 80127384 24620028 */  addiu $v0, $v1, 0x28
/* 0BDA88 80127388 AC6B0018 */  sw    $t3, 0x18($v1)
/* 0BDA8C 8012738C AD020000 */  sw    $v0, ($t0)
/* 0BDA90 80127390 3C02E600 */  lui   $v0, 0xe600
/* 0BDA94 80127394 AC620020 */  sw    $v0, 0x20($v1)
/* 0BDA98 80127398 24620030 */  addiu $v0, $v1, 0x30
/* 0BDA9C 8012739C AC600024 */  sw    $zero, 0x24($v1)
/* 0BDAA0 801273A0 AD020000 */  sw    $v0, ($t0)
/* 0BDAA4 801273A4 3C02F000 */  lui   $v0, 0xf000
/* 0BDAA8 801273A8 AC620028 */  sw    $v0, 0x28($v1)
/* 0BDAAC 801273AC 24620038 */  addiu $v0, $v1, 0x38
/* 0BDAB0 801273B0 AC6C002C */  sw    $t4, 0x2c($v1)
/* 0BDAB4 801273B4 AD020000 */  sw    $v0, ($t0)
/* 0BDAB8 801273B8 24620040 */  addiu $v0, $v1, 0x40
/* 0BDABC 801273BC AC690030 */  sw    $t1, 0x30($v1)
/* 0BDAC0 801273C0 AC600034 */  sw    $zero, 0x34($v1)
/* 0BDAC4 801273C4 AD020000 */  sw    $v0, ($t0)
/* 0BDAC8 801273C8 24620048 */  addiu $v0, $v1, 0x48
/* 0BDACC 801273CC AC6F0038 */  sw    $t7, 0x38($v1)
/* 0BDAD0 801273D0 AC6D003C */  sw    $t5, 0x3c($v1)
/* 0BDAD4 801273D4 AD020000 */  sw    $v0, ($t0)
/* 0BDAD8 801273D8 24620050 */  addiu $v0, $v1, 0x50
/* 0BDADC 801273DC AC700040 */  sw    $s0, 0x40($v1)
/* 0BDAE0 801273E0 AC6E0044 */  sw    $t6, 0x44($v1)
/* 0BDAE4 801273E4 AD020000 */  sw    $v0, ($t0)
/* 0BDAE8 801273E8 3C02FA00 */  lui   $v0, 0xfa00
/* 0BDAEC 801273EC AC620048 */  sw    $v0, 0x48($v1)
/* 0BDAF0 801273F0 32C200FF */  andi  $v0, $s6, 0xff
/* 0BDAF4 801273F4 00531025 */  or    $v0, $v0, $s3
/* 0BDAF8 801273F8 AC62004C */  sw    $v0, 0x4c($v1)
/* 0BDAFC 801273FC 02871021 */  addu  $v0, $s4, $a3
/* 0BDB00 80127400 00A21004 */  sllv  $v0, $v0, $a1
/* 0BDB04 80127404 00A21007 */  srav  $v0, $v0, $a1
/* 0BDB08 80127408 AFA20014 */  sw    $v0, 0x14($sp)
/* 0BDB0C 8012740C 02A71021 */  addu  $v0, $s5, $a3
/* 0BDB10 80127410 00A21004 */  sllv  $v0, $v0, $a1
/* 0BDB14 80127414 00A21007 */  srav  $v0, $v0, $a1
/* 0BDB18 80127418 AFA20018 */  sw    $v0, 0x18($sp)
/* 0BDB1C 8012741C 2402000A */  addiu $v0, $zero, 0xa
/* 0BDB20 80127420 2410012C */  addiu $s0, $zero, 0x12c
/* 0BDB24 80127424 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0BDB28 80127428 AFA20020 */  sw    $v0, 0x20($sp)
/* 0BDB2C 8012742C 240200DC */  addiu $v0, $zero, 0xdc
/* 0BDB30 80127430 AFA00010 */  sw    $zero, 0x10($sp)
/* 0BDB34 80127434 AFB00024 */  sw    $s0, 0x24($sp)
/* 0BDB38 80127438 0C04BB25 */  jal   func_8012EC94
/* 0BDB3C 8012743C AFA20028 */   sw    $v0, 0x28($sp)
/* 0BDB40 80127440 0240202D */  daddu $a0, $s2, $zero
/* 0BDB44 80127444 24050010 */  addiu $a1, $zero, 0x10
/* 0BDB48 80127448 00A0302D */  daddu $a2, $a1, $zero
/* 0BDB4C 8012744C 24070002 */  addiu $a3, $zero, 2
/* 0BDB50 80127450 00B41004 */  sllv  $v0, $s4, $a1
/* 0BDB54 80127454 00A21007 */  srav  $v0, $v0, $a1
/* 0BDB58 80127458 AFA20018 */  sw    $v0, 0x18($sp)
/* 0BDB5C 8012745C 00B51004 */  sllv  $v0, $s5, $a1
/* 0BDB60 80127460 00A21007 */  srav  $v0, $v0, $a1
/* 0BDB64 80127464 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0BDB68 80127468 24020014 */  addiu $v0, $zero, 0x14
/* 0BDB6C 8012746C AFA20020 */  sw    $v0, 0x20($sp)
/* 0BDB70 80127470 AFA20024 */  sw    $v0, 0x24($sp)
/* 0BDB74 80127474 240200C8 */  addiu $v0, $zero, 0xc8
/* 0BDB78 80127478 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0BDB7C 8012747C 32E200FF */  andi  $v0, $s7, 0xff
/* 0BDB80 80127480 AFA00010 */  sw    $zero, 0x10($sp)
/* 0BDB84 80127484 AFB10014 */  sw    $s1, 0x14($sp)
/* 0BDB88 80127488 AFB00028 */  sw    $s0, 0x28($sp)
/* 0BDB8C 8012748C 0C04BA68 */  jal   func_8012E9A0
/* 0BDB90 80127490 AFA20030 */   sw    $v0, 0x30($sp)
/* 0BDB94 80127494 8FBF0058 */  lw    $ra, 0x58($sp)
/* 0BDB98 80127498 8FB70054 */  lw    $s7, 0x54($sp)
/* 0BDB9C 8012749C 8FB60050 */  lw    $s6, 0x50($sp)
/* 0BDBA0 801274A0 8FB5004C */  lw    $s5, 0x4c($sp)
/* 0BDBA4 801274A4 8FB40048 */  lw    $s4, 0x48($sp)
/* 0BDBA8 801274A8 8FB30044 */  lw    $s3, 0x44($sp)
/* 0BDBAC 801274AC 8FB20040 */  lw    $s2, 0x40($sp)
/* 0BDBB0 801274B0 8FB1003C */  lw    $s1, 0x3c($sp)
/* 0BDBB4 801274B4 8FB00038 */  lw    $s0, 0x38($sp)
/* 0BDBB8 801274B8 03E00008 */  jr    $ra
/* 0BDBBC 801274BC 27BD0060 */   addiu $sp, $sp, 0x60

