.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80244A4C
/* 137D8C 80244A4C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 137D90 80244A50 AFB60028 */  sw    $s6, 0x28($sp)
/* 137D94 80244A54 0080B02D */  daddu $s6, $a0, $zero
/* 137D98 80244A58 AFB7002C */  sw    $s7, 0x2c($sp)
/* 137D9C 80244A5C 00C0B82D */  daddu $s7, $a2, $zero
/* 137DA0 80244A60 28A20002 */  slti  $v0, $a1, 2
/* 137DA4 80244A64 AFBF0030 */  sw    $ra, 0x30($sp)
/* 137DA8 80244A68 AFB50024 */  sw    $s5, 0x24($sp)
/* 137DAC 80244A6C AFB40020 */  sw    $s4, 0x20($sp)
/* 137DB0 80244A70 AFB3001C */  sw    $s3, 0x1c($sp)
/* 137DB4 80244A74 AFB20018 */  sw    $s2, 0x18($sp)
/* 137DB8 80244A78 AFB10014 */  sw    $s1, 0x14($sp)
/* 137DBC 80244A7C 14400038 */  bnez  $v0, .L80244B60
/* 137DC0 80244A80 AFB00010 */   sw    $s0, 0x10($sp)
/* 137DC4 80244A84 24020002 */  addiu $v0, $zero, 2
/* 137DC8 80244A88 14A2000A */  bne   $a1, $v0, .L80244AB4
/* 137DCC 80244A8C 24140001 */   addiu $s4, $zero, 1
/* 137DD0 80244A90 02E0F809 */  jalr  $s7
/* 137DD4 80244A94 02C22821 */  addu  $a1, $s6, $v0
/* 137DD8 80244A98 18400031 */  blez  $v0, .L80244B60
/* 137DDC 80244A9C 00000000 */   nop   
/* 137DE0 80244AA0 96C20002 */  lhu   $v0, 2($s6)
/* 137DE4 80244AA4 96C30000 */  lhu   $v1, ($s6)
/* 137DE8 80244AA8 A6C20000 */  sh    $v0, ($s6)
/* 137DEC 80244AAC 080912D8 */  j     .L80244B60
/* 137DF0 80244AB0 A6C30002 */   sh    $v1, 2($s6)
.L80244AB4:
/* 137DF4 80244AB4 0285102B */  sltu  $v0, $s4, $a1
/* 137DF8 80244AB8 50400007 */  beql  $v0, $zero, .L80244AD8
/* 137DFC 80244ABC 0014A042 */   srl   $s4, $s4, 1
/* 137E00 80244AC0 00141040 */  sll   $v0, $s4, 1
.L80244AC4:
/* 137E04 80244AC4 24540001 */  addiu $s4, $v0, 1
/* 137E08 80244AC8 0285102B */  sltu  $v0, $s4, $a1
/* 137E0C 80244ACC 1440FFFD */  bnez  $v0, .L80244AC4
/* 137E10 80244AD0 00141040 */   sll   $v0, $s4, 1
/* 137E14 80244AD4 0014A042 */  srl   $s4, $s4, 1
.L80244AD8:
/* 137E18 80244AD8 00051040 */  sll   $v0, $a1, 1
/* 137E1C 80244ADC 12800020 */  beqz  $s4, .L80244B60
/* 137E20 80244AE0 02C2A821 */   addu  $s5, $s6, $v0
.L80244AE4:
/* 137E24 80244AE4 00141840 */  sll   $v1, $s4, 1
/* 137E28 80244AE8 02C39021 */  addu  $s2, $s6, $v1
/* 137E2C 80244AEC 0255102B */  sltu  $v0, $s2, $s5
/* 137E30 80244AF0 10400019 */  beqz  $v0, .L80244B58
/* 137E34 80244AF4 00141042 */   srl   $v0, $s4, 1
/* 137E38 80244AF8 0060982D */  daddu $s3, $v1, $zero
/* 137E3C 80244AFC 02538023 */  subu  $s0, $s2, $s3
.L80244B00:
/* 137E40 80244B00 080912CD */  j     .L80244B34
/* 137E44 80244B04 0216102B */   sltu  $v0, $s0, $s6
.L80244B08:
/* 137E48 80244B08 02138821 */  addu  $s1, $s0, $s3
/* 137E4C 80244B0C 02E0F809 */  jalr  $s7
/* 137E50 80244B10 0220282D */  daddu $a1, $s1, $zero
/* 137E54 80244B14 5840000C */  blezl $v0, .L80244B48
/* 137E58 80244B18 26520002 */   addiu $s2, $s2, 2
/* 137E5C 80244B1C 96220000 */  lhu   $v0, ($s1)
/* 137E60 80244B20 96030000 */  lhu   $v1, ($s0)
/* 137E64 80244B24 A6020000 */  sh    $v0, ($s0)
/* 137E68 80244B28 02138023 */  subu  $s0, $s0, $s3
/* 137E6C 80244B2C 0216102B */  sltu  $v0, $s0, $s6
/* 137E70 80244B30 A6230000 */  sh    $v1, ($s1)
.L80244B34:
/* 137E74 80244B34 14400003 */  bnez  $v0, .L80244B44
/* 137E78 80244B38 0215102B */   sltu  $v0, $s0, $s5
/* 137E7C 80244B3C 1440FFF2 */  bnez  $v0, .L80244B08
/* 137E80 80244B40 0200202D */   daddu $a0, $s0, $zero
.L80244B44:
/* 137E84 80244B44 26520002 */  addiu $s2, $s2, 2
.L80244B48:
/* 137E88 80244B48 0255102B */  sltu  $v0, $s2, $s5
/* 137E8C 80244B4C 5440FFEC */  bnezl $v0, .L80244B00
/* 137E90 80244B50 02538023 */   subu  $s0, $s2, $s3
/* 137E94 80244B54 00141042 */  srl   $v0, $s4, 1
.L80244B58:
/* 137E98 80244B58 1440FFE2 */  bnez  $v0, .L80244AE4
/* 137E9C 80244B5C 0040A02D */   daddu $s4, $v0, $zero
.L80244B60:
/* 137EA0 80244B60 8FBF0030 */  lw    $ra, 0x30($sp)
/* 137EA4 80244B64 8FB7002C */  lw    $s7, 0x2c($sp)
/* 137EA8 80244B68 8FB60028 */  lw    $s6, 0x28($sp)
/* 137EAC 80244B6C 8FB50024 */  lw    $s5, 0x24($sp)
/* 137EB0 80244B70 8FB40020 */  lw    $s4, 0x20($sp)
/* 137EB4 80244B74 8FB3001C */  lw    $s3, 0x1c($sp)
/* 137EB8 80244B78 8FB20018 */  lw    $s2, 0x18($sp)
/* 137EBC 80244B7C 8FB10014 */  lw    $s1, 0x14($sp)
/* 137EC0 80244B80 8FB00010 */  lw    $s0, 0x10($sp)
/* 137EC4 80244B84 03E00008 */  jr    $ra
/* 137EC8 80244B88 27BD0038 */   addiu $sp, $sp, 0x38

/* 137ECC 80244B8C 00000000 */  nop   
/* 137ED0 80244B90 03E00008 */  jr    $ra
/* 137ED4 80244B94 00000000 */   nop   

/* 137ED8 80244B98 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 137EDC 80244B9C AFB10014 */  sw    $s1, 0x14($sp)
/* 137EE0 80244BA0 8FB10040 */  lw    $s1, 0x40($sp)
/* 137EE4 80244BA4 AFB40020 */  sw    $s4, 0x20($sp)
/* 137EE8 80244BA8 0080A02D */  daddu $s4, $a0, $zero
/* 137EEC 80244BAC AFB20018 */  sw    $s2, 0x18($sp)
/* 137EF0 80244BB0 00A0902D */  daddu $s2, $a1, $zero
/* 137EF4 80244BB4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 137EF8 80244BB8 00C0982D */  daddu $s3, $a2, $zero
/* 137EFC 80244BBC AFBF0024 */  sw    $ra, 0x24($sp)
/* 137F00 80244BC0 12200016 */  beqz  $s1, .L80244C1C
/* 137F04 80244BC4 AFB00010 */   sw    $s0, 0x10($sp)
/* 137F08 80244BC8 3C108027 */  lui   $s0, 0x8027
/* 137F0C 80244BCC 26100130 */  addiu $s0, $s0, 0x130
/* 137F10 80244BD0 8E040000 */  lw    $a0, ($s0)
/* 137F14 80244BD4 0C051280 */  jal   set_icon_flags
/* 137F18 80244BD8 24050020 */   addiu $a1, $zero, 0x20
/* 137F1C 80244BDC 3C013FE0 */  lui   $at, 0x3fe0
/* 137F20 80244BE0 44811800 */  mtc1  $at, $f3
/* 137F24 80244BE4 44801000 */  mtc1  $zero, $f2
/* 137F28 80244BE8 44910000 */  mtc1  $s1, $f0
/* 137F2C 80244BEC 00000000 */  nop   
/* 137F30 80244BF0 46800021 */  cvt.d.w $f0, $f0
/* 137F34 80244BF4 46220002 */  mul.d $f0, $f0, $f2
/* 137F38 80244BF8 00000000 */  nop   
/* 137F3C 80244BFC 3C018027 */  lui   $at, 0x8027
/* 137F40 80244C00 D422FF80 */  ldc1  $f2, -0x80($at)
/* 137F44 80244C04 46201081 */  sub.d $f2, $f2, $f0
/* 137F48 80244C08 8E040000 */  lw    $a0, ($s0)
/* 137F4C 80244C0C 4620110D */  trunc.w.d $f4, $f2
/* 137F50 80244C10 44052000 */  mfc1  $a1, $f4
/* 137F54 80244C14 0809130E */  j     .L80244C38
/* 137F58 80244C18 00000000 */   nop   
.L80244C1C:
/* 137F5C 80244C1C 3C108027 */  lui   $s0, 0x8027
/* 137F60 80244C20 26100130 */  addiu $s0, $s0, 0x130
/* 137F64 80244C24 8E040000 */  lw    $a0, ($s0)
/* 137F68 80244C28 0C05128B */  jal   clear_icon_flags
/* 137F6C 80244C2C 24050020 */   addiu $a1, $zero, 0x20
/* 137F70 80244C30 8E040000 */  lw    $a0, ($s0)
/* 137F74 80244C34 240500FF */  addiu $a1, $zero, 0xff
.L80244C38:
/* 137F78 80244C38 0C0513AC */  jal   func_80144EB0
/* 137F7C 80244C3C 00000000 */   nop   
/* 137F80 80244C40 26450016 */  addiu $a1, $s2, 0x16
/* 137F84 80244C44 3C108027 */  lui   $s0, 0x8027
/* 137F88 80244C48 26100130 */  addiu $s0, $s0, 0x130
/* 137F8C 80244C4C 8E040000 */  lw    $a0, ($s0)
/* 137F90 80244C50 0C051261 */  jal   set_icon_render_pos
/* 137F94 80244C54 26660007 */   addiu $a2, $s3, 7
/* 137F98 80244C58 8E040000 */  lw    $a0, ($s0)
/* 137F9C 80244C5C 0C0511F8 */  jal   func_801447E0
/* 137FA0 80244C60 00000000 */   nop   
/* 137FA4 80244C64 3C028027 */  lui   $v0, 0x8027
/* 137FA8 80244C68 804200D4 */  lb    $v0, 0xd4($v0)
/* 137FAC 80244C6C 1440000C */  bnez  $v0, .L80244CA0
/* 137FB0 80244C70 00000000 */   nop   
/* 137FB4 80244C74 82830001 */  lb    $v1, 1($s4)
/* 137FB8 80244C78 3C028025 */  lui   $v0, 0x8025
/* 137FBC 80244C7C 2442F1D8 */  addiu $v0, $v0, -0xe28
/* 137FC0 80244C80 00622021 */  addu  $a0, $v1, $v0
/* 137FC4 80244C84 90830000 */  lbu   $v1, ($a0)
/* 137FC8 80244C88 24020019 */  addiu $v0, $zero, 0x19
/* 137FCC 80244C8C 14620004 */  bne   $v1, $v0, .L80244CA0
/* 137FD0 80244C90 0060202D */   daddu $a0, $v1, $zero
/* 137FD4 80244C94 0240282D */  daddu $a1, $s2, $zero
/* 137FD8 80244C98 0C090B41 */  jal   func_80242D04
/* 137FDC 80244C9C 26660006 */   addiu $a2, $s3, 6
.L80244CA0:
/* 137FE0 80244CA0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 137FE4 80244CA4 8FB40020 */  lw    $s4, 0x20($sp)
/* 137FE8 80244CA8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 137FEC 80244CAC 8FB20018 */  lw    $s2, 0x18($sp)
/* 137FF0 80244CB0 8FB10014 */  lw    $s1, 0x14($sp)
/* 137FF4 80244CB4 8FB00010 */  lw    $s0, 0x10($sp)
/* 137FF8 80244CB8 03E00008 */  jr    $ra
/* 137FFC 80244CBC 27BD0028 */   addiu $sp, $sp, 0x28

/* 138000 80244CC0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 138004 80244CC4 AFB10014 */  sw    $s1, 0x14($sp)
/* 138008 80244CC8 8FB10040 */  lw    $s1, 0x40($sp)
/* 13800C 80244CCC AFB40020 */  sw    $s4, 0x20($sp)
/* 138010 80244CD0 0080A02D */  daddu $s4, $a0, $zero
/* 138014 80244CD4 AFB20018 */  sw    $s2, 0x18($sp)
/* 138018 80244CD8 00A0902D */  daddu $s2, $a1, $zero
/* 13801C 80244CDC AFB3001C */  sw    $s3, 0x1c($sp)
/* 138020 80244CE0 00C0982D */  daddu $s3, $a2, $zero
/* 138024 80244CE4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 138028 80244CE8 12200016 */  beqz  $s1, .L80244D44
/* 13802C 80244CEC AFB00010 */   sw    $s0, 0x10($sp)
/* 138030 80244CF0 3C108027 */  lui   $s0, 0x8027
/* 138034 80244CF4 26100130 */  addiu $s0, $s0, 0x130
/* 138038 80244CF8 8E040004 */  lw    $a0, 4($s0)
/* 13803C 80244CFC 0C051280 */  jal   set_icon_flags
/* 138040 80244D00 24050020 */   addiu $a1, $zero, 0x20
/* 138044 80244D04 3C013FE0 */  lui   $at, 0x3fe0
/* 138048 80244D08 44811800 */  mtc1  $at, $f3
/* 13804C 80244D0C 44801000 */  mtc1  $zero, $f2
/* 138050 80244D10 44910000 */  mtc1  $s1, $f0
/* 138054 80244D14 00000000 */  nop   
/* 138058 80244D18 46800021 */  cvt.d.w $f0, $f0
/* 13805C 80244D1C 46220002 */  mul.d $f0, $f0, $f2
/* 138060 80244D20 00000000 */  nop   
/* 138064 80244D24 3C018027 */  lui   $at, 0x8027
/* 138068 80244D28 D422FF88 */  ldc1  $f2, -0x78($at)
/* 13806C 80244D2C 46201081 */  sub.d $f2, $f2, $f0
/* 138070 80244D30 8E040004 */  lw    $a0, 4($s0)
/* 138074 80244D34 4620110D */  trunc.w.d $f4, $f2
/* 138078 80244D38 44052000 */  mfc1  $a1, $f4
/* 13807C 80244D3C 08091358 */  j     .L80244D60
/* 138080 80244D40 00000000 */   nop   
.L80244D44:
/* 138084 80244D44 3C108027 */  lui   $s0, 0x8027
/* 138088 80244D48 26100130 */  addiu $s0, $s0, 0x130
/* 13808C 80244D4C 8E040004 */  lw    $a0, 4($s0)
/* 138090 80244D50 0C05128B */  jal   clear_icon_flags
/* 138094 80244D54 24050020 */   addiu $a1, $zero, 0x20
/* 138098 80244D58 8E040004 */  lw    $a0, 4($s0)
/* 13809C 80244D5C 240500FF */  addiu $a1, $zero, 0xff
.L80244D60:
/* 1380A0 80244D60 0C0513AC */  jal   func_80144EB0
/* 1380A4 80244D64 00000000 */   nop   
/* 1380A8 80244D68 26450016 */  addiu $a1, $s2, 0x16
/* 1380AC 80244D6C 3C108027 */  lui   $s0, 0x8027
/* 1380B0 80244D70 26100130 */  addiu $s0, $s0, 0x130
/* 1380B4 80244D74 8E040004 */  lw    $a0, 4($s0)
/* 1380B8 80244D78 0C051261 */  jal   set_icon_render_pos
/* 1380BC 80244D7C 26660007 */   addiu $a2, $s3, 7
/* 1380C0 80244D80 8E040004 */  lw    $a0, 4($s0)
/* 1380C4 80244D84 0C0511F8 */  jal   func_801447E0
/* 1380C8 80244D88 00000000 */   nop   
/* 1380CC 80244D8C 3C028027 */  lui   $v0, 0x8027
/* 1380D0 80244D90 804200D4 */  lb    $v0, 0xd4($v0)
/* 1380D4 80244D94 1440000C */  bnez  $v0, .L80244DC8
/* 1380D8 80244D98 00000000 */   nop   
/* 1380DC 80244D9C 82830001 */  lb    $v1, 1($s4)
/* 1380E0 80244DA0 3C028025 */  lui   $v0, 0x8025
/* 1380E4 80244DA4 2442F1D8 */  addiu $v0, $v0, -0xe28
/* 1380E8 80244DA8 00622021 */  addu  $a0, $v1, $v0
/* 1380EC 80244DAC 90830000 */  lbu   $v1, ($a0)
/* 1380F0 80244DB0 2402001A */  addiu $v0, $zero, 0x1a
/* 1380F4 80244DB4 14620004 */  bne   $v1, $v0, .L80244DC8
/* 1380F8 80244DB8 0060202D */   daddu $a0, $v1, $zero
/* 1380FC 80244DBC 0240282D */  daddu $a1, $s2, $zero
/* 138100 80244DC0 0C090B41 */  jal   func_80242D04
/* 138104 80244DC4 26660006 */   addiu $a2, $s3, 6
.L80244DC8:
/* 138108 80244DC8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 13810C 80244DCC 8FB40020 */  lw    $s4, 0x20($sp)
/* 138110 80244DD0 8FB3001C */  lw    $s3, 0x1c($sp)
/* 138114 80244DD4 8FB20018 */  lw    $s2, 0x18($sp)
/* 138118 80244DD8 8FB10014 */  lw    $s1, 0x14($sp)
/* 13811C 80244DDC 8FB00010 */  lw    $s0, 0x10($sp)
/* 138120 80244DE0 03E00008 */  jr    $ra
/* 138124 80244DE4 27BD0028 */   addiu $sp, $sp, 0x28

/* 138128 80244DE8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 13812C 80244DEC AFB10014 */  sw    $s1, 0x14($sp)
/* 138130 80244DF0 8FB10040 */  lw    $s1, 0x40($sp)
/* 138134 80244DF4 AFB40020 */  sw    $s4, 0x20($sp)
/* 138138 80244DF8 0080A02D */  daddu $s4, $a0, $zero
/* 13813C 80244DFC AFB20018 */  sw    $s2, 0x18($sp)
/* 138140 80244E00 00A0902D */  daddu $s2, $a1, $zero
/* 138144 80244E04 AFB3001C */  sw    $s3, 0x1c($sp)
/* 138148 80244E08 00C0982D */  daddu $s3, $a2, $zero
/* 13814C 80244E0C AFBF0024 */  sw    $ra, 0x24($sp)
/* 138150 80244E10 12200016 */  beqz  $s1, .L80244E6C
/* 138154 80244E14 AFB00010 */   sw    $s0, 0x10($sp)
/* 138158 80244E18 3C108027 */  lui   $s0, 0x8027
/* 13815C 80244E1C 26100130 */  addiu $s0, $s0, 0x130
/* 138160 80244E20 8E040008 */  lw    $a0, 8($s0)
/* 138164 80244E24 0C051280 */  jal   set_icon_flags
/* 138168 80244E28 24050020 */   addiu $a1, $zero, 0x20
/* 13816C 80244E2C 3C013FE0 */  lui   $at, 0x3fe0
/* 138170 80244E30 44811800 */  mtc1  $at, $f3
/* 138174 80244E34 44801000 */  mtc1  $zero, $f2
/* 138178 80244E38 44910000 */  mtc1  $s1, $f0
/* 13817C 80244E3C 00000000 */  nop   
/* 138180 80244E40 46800021 */  cvt.d.w $f0, $f0
/* 138184 80244E44 46220002 */  mul.d $f0, $f0, $f2
/* 138188 80244E48 00000000 */  nop   
/* 13818C 80244E4C 3C018027 */  lui   $at, 0x8027
/* 138190 80244E50 D422FF90 */  ldc1  $f2, -0x70($at)
/* 138194 80244E54 46201081 */  sub.d $f2, $f2, $f0
/* 138198 80244E58 8E040008 */  lw    $a0, 8($s0)
/* 13819C 80244E5C 4620110D */  trunc.w.d $f4, $f2
/* 1381A0 80244E60 44052000 */  mfc1  $a1, $f4
/* 1381A4 80244E64 080913A2 */  j     .L80244E88
/* 1381A8 80244E68 00000000 */   nop   
.L80244E6C:
/* 1381AC 80244E6C 3C108027 */  lui   $s0, 0x8027
/* 1381B0 80244E70 26100130 */  addiu $s0, $s0, 0x130
/* 1381B4 80244E74 8E040008 */  lw    $a0, 8($s0)
/* 1381B8 80244E78 0C05128B */  jal   clear_icon_flags
/* 1381BC 80244E7C 24050020 */   addiu $a1, $zero, 0x20
/* 1381C0 80244E80 8E040008 */  lw    $a0, 8($s0)
/* 1381C4 80244E84 240500FF */  addiu $a1, $zero, 0xff
.L80244E88:
/* 1381C8 80244E88 0C0513AC */  jal   func_80144EB0
/* 1381CC 80244E8C 00000000 */   nop   
/* 1381D0 80244E90 26450016 */  addiu $a1, $s2, 0x16
/* 1381D4 80244E94 3C108027 */  lui   $s0, 0x8027
/* 1381D8 80244E98 26100130 */  addiu $s0, $s0, 0x130
/* 1381DC 80244E9C 8E040008 */  lw    $a0, 8($s0)
/* 1381E0 80244EA0 0C051261 */  jal   set_icon_render_pos
/* 1381E4 80244EA4 26660007 */   addiu $a2, $s3, 7
/* 1381E8 80244EA8 8E040008 */  lw    $a0, 8($s0)
/* 1381EC 80244EAC 0C0511F8 */  jal   func_801447E0
/* 1381F0 80244EB0 00000000 */   nop   
/* 1381F4 80244EB4 3C028027 */  lui   $v0, 0x8027
/* 1381F8 80244EB8 804200D4 */  lb    $v0, 0xd4($v0)
/* 1381FC 80244EBC 1440000C */  bnez  $v0, .L80244EF0
/* 138200 80244EC0 00000000 */   nop   
/* 138204 80244EC4 82830001 */  lb    $v1, 1($s4)
/* 138208 80244EC8 3C028025 */  lui   $v0, 0x8025
/* 13820C 80244ECC 2442F1D8 */  addiu $v0, $v0, -0xe28
/* 138210 80244ED0 00622021 */  addu  $a0, $v1, $v0
/* 138214 80244ED4 90830000 */  lbu   $v1, ($a0)
/* 138218 80244ED8 2402001B */  addiu $v0, $zero, 0x1b
/* 13821C 80244EDC 14620004 */  bne   $v1, $v0, .L80244EF0
/* 138220 80244EE0 0060202D */   daddu $a0, $v1, $zero
/* 138224 80244EE4 0240282D */  daddu $a1, $s2, $zero
/* 138228 80244EE8 0C090B41 */  jal   func_80242D04
/* 13822C 80244EEC 26660006 */   addiu $a2, $s3, 6
.L80244EF0:
/* 138230 80244EF0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 138234 80244EF4 8FB40020 */  lw    $s4, 0x20($sp)
/* 138238 80244EF8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 13823C 80244EFC 8FB20018 */  lw    $s2, 0x18($sp)
/* 138240 80244F00 8FB10014 */  lw    $s1, 0x14($sp)
/* 138244 80244F04 8FB00010 */  lw    $s0, 0x10($sp)
/* 138248 80244F08 03E00008 */  jr    $ra
/* 13824C 80244F0C 27BD0028 */   addiu $sp, $sp, 0x28

/* 138250 80244F10 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 138254 80244F14 AFB10014 */  sw    $s1, 0x14($sp)
/* 138258 80244F18 8FB10040 */  lw    $s1, 0x40($sp)
/* 13825C 80244F1C AFB40020 */  sw    $s4, 0x20($sp)
/* 138260 80244F20 0080A02D */  daddu $s4, $a0, $zero
/* 138264 80244F24 AFB20018 */  sw    $s2, 0x18($sp)
/* 138268 80244F28 00A0902D */  daddu $s2, $a1, $zero
/* 13826C 80244F2C AFB3001C */  sw    $s3, 0x1c($sp)
/* 138270 80244F30 00C0982D */  daddu $s3, $a2, $zero
/* 138274 80244F34 AFBF0024 */  sw    $ra, 0x24($sp)
/* 138278 80244F38 12200016 */  beqz  $s1, .L80244F94
/* 13827C 80244F3C AFB00010 */   sw    $s0, 0x10($sp)
/* 138280 80244F40 3C108027 */  lui   $s0, 0x8027
/* 138284 80244F44 26100130 */  addiu $s0, $s0, 0x130
/* 138288 80244F48 8E04000C */  lw    $a0, 0xc($s0)
/* 13828C 80244F4C 0C051280 */  jal   set_icon_flags
/* 138290 80244F50 24050020 */   addiu $a1, $zero, 0x20
/* 138294 80244F54 3C013FE0 */  lui   $at, 0x3fe0
/* 138298 80244F58 44811800 */  mtc1  $at, $f3
/* 13829C 80244F5C 44801000 */  mtc1  $zero, $f2
/* 1382A0 80244F60 44910000 */  mtc1  $s1, $f0
/* 1382A4 80244F64 00000000 */  nop   
/* 1382A8 80244F68 46800021 */  cvt.d.w $f0, $f0
/* 1382AC 80244F6C 46220002 */  mul.d $f0, $f0, $f2
/* 1382B0 80244F70 00000000 */  nop   
/* 1382B4 80244F74 3C018027 */  lui   $at, 0x8027
/* 1382B8 80244F78 D422FF98 */  ldc1  $f2, -0x68($at)
/* 1382BC 80244F7C 46201081 */  sub.d $f2, $f2, $f0
/* 1382C0 80244F80 8E04000C */  lw    $a0, 0xc($s0)
/* 1382C4 80244F84 4620110D */  trunc.w.d $f4, $f2
/* 1382C8 80244F88 44052000 */  mfc1  $a1, $f4
/* 1382CC 80244F8C 080913EC */  j     .L80244FB0
/* 1382D0 80244F90 00000000 */   nop   
.L80244F94:
/* 1382D4 80244F94 3C108027 */  lui   $s0, 0x8027
/* 1382D8 80244F98 26100130 */  addiu $s0, $s0, 0x130
/* 1382DC 80244F9C 8E04000C */  lw    $a0, 0xc($s0)
/* 1382E0 80244FA0 0C05128B */  jal   clear_icon_flags
/* 1382E4 80244FA4 24050020 */   addiu $a1, $zero, 0x20
/* 1382E8 80244FA8 8E04000C */  lw    $a0, 0xc($s0)
/* 1382EC 80244FAC 240500FF */  addiu $a1, $zero, 0xff
.L80244FB0:
/* 1382F0 80244FB0 0C0513AC */  jal   func_80144EB0
/* 1382F4 80244FB4 00000000 */   nop   
/* 1382F8 80244FB8 26450016 */  addiu $a1, $s2, 0x16
/* 1382FC 80244FBC 3C108027 */  lui   $s0, 0x8027
/* 138300 80244FC0 26100130 */  addiu $s0, $s0, 0x130
/* 138304 80244FC4 8E04000C */  lw    $a0, 0xc($s0)
/* 138308 80244FC8 0C051261 */  jal   set_icon_render_pos
/* 13830C 80244FCC 26660007 */   addiu $a2, $s3, 7
/* 138310 80244FD0 8E04000C */  lw    $a0, 0xc($s0)
/* 138314 80244FD4 0C0511F8 */  jal   func_801447E0
/* 138318 80244FD8 00000000 */   nop   
/* 13831C 80244FDC 3C028027 */  lui   $v0, 0x8027
/* 138320 80244FE0 804200D4 */  lb    $v0, 0xd4($v0)
/* 138324 80244FE4 1440000C */  bnez  $v0, .L80245018
/* 138328 80244FE8 00000000 */   nop   
/* 13832C 80244FEC 82830001 */  lb    $v1, 1($s4)
/* 138330 80244FF0 3C028025 */  lui   $v0, 0x8025
/* 138334 80244FF4 2442F1D8 */  addiu $v0, $v0, -0xe28
/* 138338 80244FF8 00622021 */  addu  $a0, $v1, $v0
/* 13833C 80244FFC 90830000 */  lbu   $v1, ($a0)
/* 138340 80245000 2402001C */  addiu $v0, $zero, 0x1c
/* 138344 80245004 14620004 */  bne   $v1, $v0, .L80245018
/* 138348 80245008 0060202D */   daddu $a0, $v1, $zero
/* 13834C 8024500C 0240282D */  daddu $a1, $s2, $zero
/* 138350 80245010 0C090B41 */  jal   func_80242D04
/* 138354 80245014 26660006 */   addiu $a2, $s3, 6
.L80245018:
/* 138358 80245018 8FBF0024 */  lw    $ra, 0x24($sp)
/* 13835C 8024501C 8FB40020 */  lw    $s4, 0x20($sp)
/* 138360 80245020 8FB3001C */  lw    $s3, 0x1c($sp)
/* 138364 80245024 8FB20018 */  lw    $s2, 0x18($sp)
/* 138368 80245028 8FB10014 */  lw    $s1, 0x14($sp)
/* 13836C 8024502C 8FB00010 */  lw    $s0, 0x10($sp)
/* 138370 80245030 03E00008 */  jr    $ra
/* 138374 80245034 27BD0028 */   addiu $sp, $sp, 0x28

/* 138378 80245038 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 13837C 8024503C AFB10014 */  sw    $s1, 0x14($sp)
/* 138380 80245040 8FB10040 */  lw    $s1, 0x40($sp)
/* 138384 80245044 AFB40020 */  sw    $s4, 0x20($sp)
/* 138388 80245048 0080A02D */  daddu $s4, $a0, $zero
/* 13838C 8024504C AFB20018 */  sw    $s2, 0x18($sp)
/* 138390 80245050 00A0902D */  daddu $s2, $a1, $zero
/* 138394 80245054 AFB3001C */  sw    $s3, 0x1c($sp)
/* 138398 80245058 00C0982D */  daddu $s3, $a2, $zero
/* 13839C 8024505C AFBF0024 */  sw    $ra, 0x24($sp)
/* 1383A0 80245060 12200016 */  beqz  $s1, .L802450BC
/* 1383A4 80245064 AFB00010 */   sw    $s0, 0x10($sp)
/* 1383A8 80245068 3C108027 */  lui   $s0, 0x8027
/* 1383AC 8024506C 26100130 */  addiu $s0, $s0, 0x130
