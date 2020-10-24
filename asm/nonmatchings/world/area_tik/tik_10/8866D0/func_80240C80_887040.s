.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240C80_887040
/* 887040 80240C80 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 887044 80240C84 AFB60040 */  sw        $s6, 0x40($sp)
/* 887048 80240C88 0080B02D */  daddu     $s6, $a0, $zero
/* 88704C 80240C8C AFB00028 */  sw        $s0, 0x28($sp)
/* 887050 80240C90 00A0802D */  daddu     $s0, $a1, $zero
/* 887054 80240C94 AFBF0044 */  sw        $ra, 0x44($sp)
/* 887058 80240C98 AFB5003C */  sw        $s5, 0x3c($sp)
/* 88705C 80240C9C AFB40038 */  sw        $s4, 0x38($sp)
/* 887060 80240CA0 AFB30034 */  sw        $s3, 0x34($sp)
/* 887064 80240CA4 AFB20030 */  sw        $s2, 0x30($sp)
/* 887068 80240CA8 AFB1002C */  sw        $s1, 0x2c($sp)
/* 88706C 80240CAC F7B80058 */  sdc1      $f24, 0x58($sp)
/* 887070 80240CB0 F7B60050 */  sdc1      $f22, 0x50($sp)
/* 887074 80240CB4 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 887078 80240CB8 8ED3000C */  lw        $s3, 0xc($s6)
/* 88707C 80240CBC 0C00EAD2 */  jal       get_npc_safe
/* 887080 80240CC0 2404FFFC */   addiu    $a0, $zero, -4
/* 887084 80240CC4 27A50018 */  addiu     $a1, $sp, 0x18
/* 887088 80240CC8 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 88708C 80240CCC 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 887090 80240CD0 27A6001C */  addiu     $a2, $sp, 0x1c
/* 887094 80240CD4 00041880 */  sll       $v1, $a0, 2
/* 887098 80240CD8 00641821 */  addu      $v1, $v1, $a0
/* 88709C 80240CDC 00031880 */  sll       $v1, $v1, 2
/* 8870A0 80240CE0 00641823 */  subu      $v1, $v1, $a0
/* 8870A4 80240CE4 000320C0 */  sll       $a0, $v1, 3
/* 8870A8 80240CE8 00641821 */  addu      $v1, $v1, $a0
/* 8870AC 80240CEC 000318C0 */  sll       $v1, $v1, 3
/* 8870B0 80240CF0 3C01800B */  lui       $at, 0x800b
/* 8870B4 80240CF4 00230821 */  addu      $at, $at, $v1
/* 8870B8 80240CF8 C42C1DEC */  lwc1      $f12, 0x1dec($at)
/* 8870BC 80240CFC 0C00A88D */  jal       sin_cos_deg
/* 8870C0 80240D00 0040A82D */   daddu    $s5, $v0, $zero
/* 8870C4 80240D04 1200005D */  beqz      $s0, .L80240E7C
/* 8870C8 80240D08 00000000 */   nop      
/* 8870CC 80240D0C 0C00AB0A */  jal       general_heap_malloc
/* 8870D0 80240D10 24040068 */   addiu    $a0, $zero, 0x68
/* 8870D4 80240D14 0040902D */  daddu     $s2, $v0, $zero
/* 8870D8 80240D18 02C0202D */  daddu     $a0, $s6, $zero
/* 8870DC 80240D1C 0000882D */  daddu     $s1, $zero, $zero
/* 8870E0 80240D20 2414FFFF */  addiu     $s4, $zero, -1
/* 8870E4 80240D24 AED20060 */  sw        $s2, 0x60($s6)
/* 8870E8 80240D28 8E650000 */  lw        $a1, ($s3)
/* 8870EC 80240D2C 3C014148 */  lui       $at, 0x4148
/* 8870F0 80240D30 4481C000 */  mtc1      $at, $f24
/* 8870F4 80240D34 3C013F80 */  lui       $at, 0x3f80
/* 8870F8 80240D38 4481B000 */  mtc1      $at, $f22
/* 8870FC 80240D3C 4480A000 */  mtc1      $zero, $f20
/* 887100 80240D40 0C0B1EAF */  jal       get_variable
/* 887104 80240D44 0240802D */   daddu    $s0, $s2, $zero
/* 887108 80240D48 0C04417A */  jal       get_entity_by_index
/* 88710C 80240D4C 0040202D */   daddu    $a0, $v0, $zero
/* 887110 80240D50 AE42005C */  sw        $v0, 0x5c($s2)
.L80240D54:
/* 887114 80240D54 8E42005C */  lw        $v0, 0x5c($s2)
/* 887118 80240D58 C440004C */  lwc1      $f0, 0x4c($v0)
/* 88711C 80240D5C 0000202D */  daddu     $a0, $zero, $zero
/* 887120 80240D60 E7B60010 */  swc1      $f22, 0x10($sp)
/* 887124 80240D64 AFB40014 */  sw        $s4, 0x14($sp)
/* 887128 80240D68 46180000 */  add.s     $f0, $f0, $f24
/* 88712C 80240D6C 8C450048 */  lw        $a1, 0x48($v0)
/* 887130 80240D70 8C470050 */  lw        $a3, 0x50($v0)
/* 887134 80240D74 44060000 */  mfc1      $a2, $f0
/* 887138 80240D78 0C01C5BC */  jal       func_800716F0
/* 88713C 80240D7C 26310001 */   addiu    $s1, $s1, 1
/* 887140 80240D80 AE020008 */  sw        $v0, 8($s0)
/* 887144 80240D84 E614002C */  swc1      $f20, 0x2c($s0)
/* 887148 80240D88 E6140020 */  swc1      $f20, 0x20($s0)
/* 88714C 80240D8C E6140014 */  swc1      $f20, 0x14($s0)
/* 887150 80240D90 E6140050 */  swc1      $f20, 0x50($s0)
/* 887154 80240D94 E6140044 */  swc1      $f20, 0x44($s0)
/* 887158 80240D98 E6140038 */  swc1      $f20, 0x38($s0)
/* 88715C 80240D9C 2A220003 */  slti      $v0, $s1, 3
/* 887160 80240DA0 1440FFEC */  bnez      $v0, .L80240D54
/* 887164 80240DA4 26100004 */   addiu    $s0, $s0, 4
/* 887168 80240DA8 0000882D */  daddu     $s1, $zero, $zero
/* 88716C 80240DAC 0240802D */  daddu     $s0, $s2, $zero
/* 887170 80240DB0 3C148024 */  lui       $s4, 0x8024
/* 887174 80240DB4 26942088 */  addiu     $s4, $s4, 0x2088
/* 887178 80240DB8 3C014248 */  lui       $at, 0x4248
/* 88717C 80240DBC 4481A000 */  mtc1      $at, $f20
/* 887180 80240DC0 24130044 */  addiu     $s3, $zero, 0x44
/* 887184 80240DC4 AE400000 */  sw        $zero, ($s2)
/* 887188 80240DC8 AE400004 */  sw        $zero, 4($s2)
/* 88718C 80240DCC AE400060 */  sw        $zero, 0x60($s2)
/* 887190 80240DD0 AE400064 */  sw        $zero, 0x64($s2)
.L80240DD4:
/* 887194 80240DD4 27A40020 */  addiu     $a0, $sp, 0x20
/* 887198 80240DD8 4406A000 */  mfc1      $a2, $f20
/* 88719C 80240DDC 8E870000 */  lw        $a3, ($s4)
/* 8871A0 80240DE0 02532821 */  addu      $a1, $s2, $s3
/* 8871A4 80240DE4 0C00A7E7 */  jal       add_vec2D_polar
/* 8871A8 80240DE8 AFA00020 */   sw       $zero, 0x20($sp)
/* 8871AC 80240DEC C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 8871B0 80240DF0 C7A40020 */  lwc1      $f4, 0x20($sp)
/* 8871B4 80240DF4 46041082 */  mul.s     $f2, $f2, $f4
/* 8871B8 80240DF8 00000000 */  nop       
/* 8871BC 80240DFC C7A00018 */  lwc1      $f0, 0x18($sp)
/* 8871C0 80240E00 46040002 */  mul.s     $f0, $f0, $f4
/* 8871C4 80240E04 00000000 */  nop       
/* 8871C8 80240E08 E6020038 */  swc1      $f2, 0x38($s0)
/* 8871CC 80240E0C E6000050 */  swc1      $f0, 0x50($s0)
/* 8871D0 80240E10 8E42005C */  lw        $v0, 0x5c($s2)
/* 8871D4 80240E14 C6000038 */  lwc1      $f0, 0x38($s0)
/* 8871D8 80240E18 C4420048 */  lwc1      $f2, 0x48($v0)
/* 8871DC 80240E1C 46001080 */  add.s     $f2, $f2, $f0
/* 8871E0 80240E20 C6A00038 */  lwc1      $f0, 0x38($s5)
/* 8871E4 80240E24 46020001 */  sub.s     $f0, $f0, $f2
/* 8871E8 80240E28 E6000038 */  swc1      $f0, 0x38($s0)
/* 8871EC 80240E2C 8E42005C */  lw        $v0, 0x5c($s2)
/* 8871F0 80240E30 C6000044 */  lwc1      $f0, 0x44($s0)
/* 8871F4 80240E34 C442004C */  lwc1      $f2, 0x4c($v0)
/* 8871F8 80240E38 46001080 */  add.s     $f2, $f2, $f0
/* 8871FC 80240E3C C6A0003C */  lwc1      $f0, 0x3c($s5)
/* 887200 80240E40 46020001 */  sub.s     $f0, $f0, $f2
/* 887204 80240E44 E6000044 */  swc1      $f0, 0x44($s0)
/* 887208 80240E48 8E42005C */  lw        $v0, 0x5c($s2)
/* 88720C 80240E4C C6000050 */  lwc1      $f0, 0x50($s0)
/* 887210 80240E50 C4420050 */  lwc1      $f2, 0x50($v0)
/* 887214 80240E54 26940004 */  addiu     $s4, $s4, 4
/* 887218 80240E58 46001080 */  add.s     $f2, $f2, $f0
/* 88721C 80240E5C C6A00040 */  lwc1      $f0, 0x40($s5)
/* 887220 80240E60 26730004 */  addiu     $s3, $s3, 4
/* 887224 80240E64 46020001 */  sub.s     $f0, $f0, $f2
/* 887228 80240E68 26310001 */  addiu     $s1, $s1, 1
/* 88722C 80240E6C 2A220003 */  slti      $v0, $s1, 3
/* 887230 80240E70 E6000050 */  swc1      $f0, 0x50($s0)
/* 887234 80240E74 1440FFD7 */  bnez      $v0, .L80240DD4
/* 887238 80240E78 26100004 */   addiu    $s0, $s0, 4
.L80240E7C:
/* 88723C 80240E7C 8ED20060 */  lw        $s2, 0x60($s6)
/* 887240 80240E80 8E430000 */  lw        $v1, ($s2)
/* 887244 80240E84 24020001 */  addiu     $v0, $zero, 1
/* 887248 80240E88 10620038 */  beq       $v1, $v0, .L80240F6C
/* 88724C 80240E8C 28620002 */   slti     $v0, $v1, 2
/* 887250 80240E90 50400005 */  beql      $v0, $zero, .L80240EA8
/* 887254 80240E94 24020002 */   addiu    $v0, $zero, 2
/* 887258 80240E98 10600007 */  beqz      $v1, .L80240EB8
/* 88725C 80240E9C 24040005 */   addiu    $a0, $zero, 5
/* 887260 80240EA0 08090414 */  j         .L80241050
/* 887264 80240EA4 00000000 */   nop      
.L80240EA8:
/* 887268 80240EA8 10620058 */  beq       $v1, $v0, .L8024100C
/* 88726C 80240EAC 00000000 */   nop      
/* 887270 80240EB0 08090414 */  j         .L80241050
/* 887274 80240EB4 00000000 */   nop      
.L80240EB8:
/* 887278 80240EB8 0000882D */  daddu     $s1, $zero, $zero
/* 88727C 80240EBC 3C148024 */  lui       $s4, 0x8024
/* 887280 80240EC0 26942088 */  addiu     $s4, $s4, 0x2088
/* 887284 80240EC4 24130020 */  addiu     $s3, $zero, 0x20
/* 887288 80240EC8 3C064248 */  lui       $a2, 0x4248
/* 88728C 80240ECC 44800000 */  mtc1      $zero, $f0
/* 887290 80240ED0 24020014 */  addiu     $v0, $zero, 0x14
/* 887294 80240ED4 AFA20010 */  sw        $v0, 0x10($sp)
/* 887298 80240ED8 44050000 */  mfc1      $a1, $f0
/* 88729C 80240EDC 8E470060 */  lw        $a3, 0x60($s2)
/* 8872A0 80240EE0 4485B000 */  mtc1      $a1, $f22
/* 8872A4 80240EE4 0C00A8ED */  jal       update_lerp
/* 8872A8 80240EE8 0240802D */   daddu    $s0, $s2, $zero
/* 8872AC 80240EEC 46000506 */  mov.s     $f20, $f0
.L80240EF0:
/* 8872B0 80240EF0 4406A000 */  mfc1      $a2, $f20
/* 8872B4 80240EF4 27A40020 */  addiu     $a0, $sp, 0x20
/* 8872B8 80240EF8 E6160020 */  swc1      $f22, 0x20($s0)
/* 8872BC 80240EFC 8E870000 */  lw        $a3, ($s4)
/* 8872C0 80240F00 02532821 */  addu      $a1, $s2, $s3
/* 8872C4 80240F04 0C00A7E7 */  jal       add_vec2D_polar
/* 8872C8 80240F08 E7B60020 */   swc1     $f22, 0x20($sp)
/* 8872CC 80240F0C C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 8872D0 80240F10 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 8872D4 80240F14 46002102 */  mul.s     $f4, $f4, $f0
/* 8872D8 80240F18 00000000 */  nop       
/* 8872DC 80240F1C C7A20018 */  lwc1      $f2, 0x18($sp)
/* 8872E0 80240F20 26940004 */  addiu     $s4, $s4, 4
/* 8872E4 80240F24 46001082 */  mul.s     $f2, $f2, $f0
/* 8872E8 80240F28 00000000 */  nop       
/* 8872EC 80240F2C 26730004 */  addiu     $s3, $s3, 4
/* 8872F0 80240F30 26310001 */  addiu     $s1, $s1, 1
/* 8872F4 80240F34 2A220003 */  slti      $v0, $s1, 3
/* 8872F8 80240F38 E6040014 */  swc1      $f4, 0x14($s0)
/* 8872FC 80240F3C E602002C */  swc1      $f2, 0x2c($s0)
/* 887300 80240F40 1440FFEB */  bnez      $v0, .L80240EF0
/* 887304 80240F44 26100004 */   addiu    $s0, $s0, 4
/* 887308 80240F48 8E420060 */  lw        $v0, 0x60($s2)
/* 88730C 80240F4C 24420001 */  addiu     $v0, $v0, 1
/* 887310 80240F50 AE420060 */  sw        $v0, 0x60($s2)
/* 887314 80240F54 28420015 */  slti      $v0, $v0, 0x15
/* 887318 80240F58 1440003D */  bnez      $v0, .L80241050
/* 88731C 80240F5C 24020001 */   addiu    $v0, $zero, 1
/* 887320 80240F60 AE420000 */  sw        $v0, ($s2)
/* 887324 80240F64 08090414 */  j         .L80241050
/* 887328 80240F68 AE400060 */   sw       $zero, 0x60($s2)
.L80240F6C:
/* 88732C 80240F6C 0000882D */  daddu     $s1, $zero, $zero
/* 887330 80240F70 3C148024 */  lui       $s4, 0x8024
/* 887334 80240F74 26942088 */  addiu     $s4, $s4, 0x2088
/* 887338 80240F78 24130020 */  addiu     $s3, $zero, 0x20
/* 88733C 80240F7C 0240802D */  daddu     $s0, $s2, $zero
/* 887340 80240F80 3C014248 */  lui       $at, 0x4248
/* 887344 80240F84 4481A000 */  mtc1      $at, $f20
/* 887348 80240F88 4480B000 */  mtc1      $zero, $f22
.L80240F8C:
/* 88734C 80240F8C 4406A000 */  mfc1      $a2, $f20
/* 887350 80240F90 27A40020 */  addiu     $a0, $sp, 0x20
/* 887354 80240F94 E6160020 */  swc1      $f22, 0x20($s0)
/* 887358 80240F98 8E870000 */  lw        $a3, ($s4)
/* 88735C 80240F9C 02532821 */  addu      $a1, $s2, $s3
/* 887360 80240FA0 0C00A7E7 */  jal       add_vec2D_polar
/* 887364 80240FA4 E7B60020 */   swc1     $f22, 0x20($sp)
/* 887368 80240FA8 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 88736C 80240FAC C7A00020 */  lwc1      $f0, 0x20($sp)
/* 887370 80240FB0 46002102 */  mul.s     $f4, $f4, $f0
/* 887374 80240FB4 00000000 */  nop       
/* 887378 80240FB8 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 88737C 80240FBC 26940004 */  addiu     $s4, $s4, 4
/* 887380 80240FC0 46001082 */  mul.s     $f2, $f2, $f0
/* 887384 80240FC4 00000000 */  nop       
/* 887388 80240FC8 26730004 */  addiu     $s3, $s3, 4
/* 88738C 80240FCC 26310001 */  addiu     $s1, $s1, 1
/* 887390 80240FD0 2A220003 */  slti      $v0, $s1, 3
/* 887394 80240FD4 E6040014 */  swc1      $f4, 0x14($s0)
/* 887398 80240FD8 E602002C */  swc1      $f2, 0x2c($s0)
/* 88739C 80240FDC 1440FFEB */  bnez      $v0, .L80240F8C
/* 8873A0 80240FE0 26100004 */   addiu    $s0, $s0, 4
/* 8873A4 80240FE4 8E420060 */  lw        $v0, 0x60($s2)
/* 8873A8 80240FE8 24420001 */  addiu     $v0, $v0, 1
/* 8873AC 80240FEC AE420060 */  sw        $v0, 0x60($s2)
/* 8873B0 80240FF0 28420010 */  slti      $v0, $v0, 0x10
/* 8873B4 80240FF4 14400016 */  bnez      $v0, .L80241050
/* 8873B8 80240FF8 2402000F */   addiu    $v0, $zero, 0xf
/* 8873BC 80240FFC AE420060 */  sw        $v0, 0x60($s2)
/* 8873C0 80241000 24020002 */  addiu     $v0, $zero, 2
/* 8873C4 80241004 08090414 */  j         .L80241050
/* 8873C8 80241008 AE420000 */   sw       $v0, ($s2)
.L8024100C:
/* 8873CC 8024100C 8E420060 */  lw        $v0, 0x60($s2)
/* 8873D0 80241010 24420001 */  addiu     $v0, $v0, 1
/* 8873D4 80241014 AE420060 */  sw        $v0, 0x60($s2)
/* 8873D8 80241018 2842001F */  slti      $v0, $v0, 0x1f
/* 8873DC 8024101C 1440000C */  bnez      $v0, .L80241050
/* 8873E0 80241020 0000882D */   daddu    $s1, $zero, $zero
/* 8873E4 80241024 0240282D */  daddu     $a1, $s2, $zero
.L80241028:
/* 8873E8 80241028 8CA20008 */  lw        $v0, 8($a1)
/* 8873EC 8024102C 8C430000 */  lw        $v1, ($v0)
/* 8873F0 80241030 26310001 */  addiu     $s1, $s1, 1
/* 8873F4 80241034 34630010 */  ori       $v1, $v1, 0x10
/* 8873F8 80241038 AC430000 */  sw        $v1, ($v0)
/* 8873FC 8024103C 2A220003 */  slti      $v0, $s1, 3
/* 887400 80241040 1440FFF9 */  bnez      $v0, .L80241028
/* 887404 80241044 24A50004 */   addiu    $a1, $a1, 4
/* 887408 80241048 08090461 */  j         .L80241184
/* 88740C 8024104C 24020002 */   addiu    $v0, $zero, 2
.L80241050:
/* 887410 80241050 8E430004 */  lw        $v1, 4($s2)
/* 887414 80241054 10600005 */  beqz      $v1, .L8024106C
/* 887418 80241058 24020001 */   addiu    $v0, $zero, 1
/* 88741C 8024105C 1062000B */  beq       $v1, $v0, .L8024108C
/* 887420 80241060 0000882D */   daddu    $s1, $zero, $zero
/* 887424 80241064 08090450 */  j         .L80241140
/* 887428 80241068 0240282D */   daddu    $a1, $s2, $zero
.L8024106C:
/* 88742C 8024106C 8E420064 */  lw        $v0, 0x64($s2)
/* 887430 80241070 24420001 */  addiu     $v0, $v0, 1
/* 887434 80241074 AE420064 */  sw        $v0, 0x64($s2)
/* 887438 80241078 28420010 */  slti      $v0, $v0, 0x10
/* 88743C 8024107C 1440002F */  bnez      $v0, .L8024113C
/* 887440 80241080 0000882D */   daddu    $s1, $zero, $zero
/* 887444 80241084 0809044C */  j         .L80241130
/* 887448 80241088 24020001 */   addiu    $v0, $zero, 1
.L8024108C:
/* 88744C 8024108C 4480A000 */  mtc1      $zero, $f20
/* 887450 80241090 24130014 */  addiu     $s3, $zero, 0x14
/* 887454 80241094 0240802D */  daddu     $s0, $s2, $zero
.L80241098:
/* 887458 80241098 4405A000 */  mfc1      $a1, $f20
/* 88745C 8024109C AFB30010 */  sw        $s3, 0x10($sp)
/* 887460 802410A0 8E060038 */  lw        $a2, 0x38($s0)
/* 887464 802410A4 8E470064 */  lw        $a3, 0x64($s2)
/* 887468 802410A8 0C00A8ED */  jal       update_lerp
/* 88746C 802410AC 24040001 */   addiu    $a0, $zero, 1
/* 887470 802410B0 C6020014 */  lwc1      $f2, 0x14($s0)
/* 887474 802410B4 46001080 */  add.s     $f2, $f2, $f0
/* 887478 802410B8 4405A000 */  mfc1      $a1, $f20
/* 88747C 802410BC E6020014 */  swc1      $f2, 0x14($s0)
/* 887480 802410C0 AFB30010 */  sw        $s3, 0x10($sp)
/* 887484 802410C4 8E060044 */  lw        $a2, 0x44($s0)
/* 887488 802410C8 8E470064 */  lw        $a3, 0x64($s2)
/* 88748C 802410CC 0C00A8ED */  jal       update_lerp
/* 887490 802410D0 24040001 */   addiu    $a0, $zero, 1
/* 887494 802410D4 C6020020 */  lwc1      $f2, 0x20($s0)
/* 887498 802410D8 46001080 */  add.s     $f2, $f2, $f0
/* 88749C 802410DC 4405A000 */  mfc1      $a1, $f20
/* 8874A0 802410E0 E6020020 */  swc1      $f2, 0x20($s0)
/* 8874A4 802410E4 AFB30010 */  sw        $s3, 0x10($sp)
/* 8874A8 802410E8 8E060050 */  lw        $a2, 0x50($s0)
/* 8874AC 802410EC 8E470064 */  lw        $a3, 0x64($s2)
/* 8874B0 802410F0 0C00A8ED */  jal       update_lerp
/* 8874B4 802410F4 24040001 */   addiu    $a0, $zero, 1
/* 8874B8 802410F8 C602002C */  lwc1      $f2, 0x2c($s0)
/* 8874BC 802410FC 46001080 */  add.s     $f2, $f2, $f0
/* 8874C0 80241100 26310001 */  addiu     $s1, $s1, 1
/* 8874C4 80241104 2A220003 */  slti      $v0, $s1, 3
/* 8874C8 80241108 E602002C */  swc1      $f2, 0x2c($s0)
/* 8874CC 8024110C 1440FFE2 */  bnez      $v0, .L80241098
/* 8874D0 80241110 26100004 */   addiu    $s0, $s0, 4
/* 8874D4 80241114 8E420064 */  lw        $v0, 0x64($s2)
/* 8874D8 80241118 24420001 */  addiu     $v0, $v0, 1
/* 8874DC 8024111C AE420064 */  sw        $v0, 0x64($s2)
/* 8874E0 80241120 28420015 */  slti      $v0, $v0, 0x15
/* 8874E4 80241124 14400005 */  bnez      $v0, .L8024113C
/* 8874E8 80241128 0000882D */   daddu    $s1, $zero, $zero
/* 8874EC 8024112C 24020002 */  addiu     $v0, $zero, 2
.L80241130:
/* 8874F0 80241130 AE420004 */  sw        $v0, 4($s2)
/* 8874F4 80241134 AE400064 */  sw        $zero, 0x64($s2)
/* 8874F8 80241138 0000882D */  daddu     $s1, $zero, $zero
.L8024113C:
/* 8874FC 8024113C 0240282D */  daddu     $a1, $s2, $zero
.L80241140:
/* 887500 80241140 8CA20008 */  lw        $v0, 8($a1)
/* 887504 80241144 C4A00014 */  lwc1      $f0, 0x14($a1)
/* 887508 80241148 8C42000C */  lw        $v0, 0xc($v0)
/* 88750C 8024114C E4400010 */  swc1      $f0, 0x10($v0)
/* 887510 80241150 8CA20008 */  lw        $v0, 8($a1)
/* 887514 80241154 C4A00020 */  lwc1      $f0, 0x20($a1)
/* 887518 80241158 8C42000C */  lw        $v0, 0xc($v0)
/* 88751C 8024115C 26310001 */  addiu     $s1, $s1, 1
/* 887520 80241160 E4400014 */  swc1      $f0, 0x14($v0)
/* 887524 80241164 8CA20008 */  lw        $v0, 8($a1)
/* 887528 80241168 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* 88752C 8024116C 8C42000C */  lw        $v0, 0xc($v0)
/* 887530 80241170 E4400018 */  swc1      $f0, 0x18($v0)
/* 887534 80241174 2A220003 */  slti      $v0, $s1, 3
/* 887538 80241178 1440FFF1 */  bnez      $v0, .L80241140
/* 88753C 8024117C 24A50004 */   addiu    $a1, $a1, 4
/* 887540 80241180 0000102D */  daddu     $v0, $zero, $zero
.L80241184:
/* 887544 80241184 8FBF0044 */  lw        $ra, 0x44($sp)
/* 887548 80241188 8FB60040 */  lw        $s6, 0x40($sp)
/* 88754C 8024118C 8FB5003C */  lw        $s5, 0x3c($sp)
/* 887550 80241190 8FB40038 */  lw        $s4, 0x38($sp)
/* 887554 80241194 8FB30034 */  lw        $s3, 0x34($sp)
/* 887558 80241198 8FB20030 */  lw        $s2, 0x30($sp)
/* 88755C 8024119C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 887560 802411A0 8FB00028 */  lw        $s0, 0x28($sp)
/* 887564 802411A4 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 887568 802411A8 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 88756C 802411AC D7B40048 */  ldc1      $f20, 0x48($sp)
/* 887570 802411B0 03E00008 */  jr        $ra
/* 887574 802411B4 27BD0060 */   addiu    $sp, $sp, 0x60