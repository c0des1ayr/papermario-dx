.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8013EE68
/* 0D5568 8013EE68 3C028007 */  lui   $v0, 0x8007
/* 0D556C 8013EE6C 8C42419C */  lw    $v0, 0x419c($v0)
/* 0D5570 8013EE70 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0D5574 8013EE74 AFB20018 */  sw    $s2, 0x18($sp)
/* 0D5578 8013EE78 0080902D */  daddu $s2, $a0, $zero
/* 0D557C 8013EE7C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0D5580 8013EE80 AFB60028 */  sw    $s6, 0x28($sp)
/* 0D5584 8013EE84 AFB50024 */  sw    $s5, 0x24($sp)
/* 0D5588 8013EE88 AFB40020 */  sw    $s4, 0x20($sp)
/* 0D558C 8013EE8C AFB3001C */  sw    $s3, 0x1c($sp)
/* 0D5590 8013EE90 AFB10014 */  sw    $s1, 0x14($sp)
/* 0D5594 8013EE94 AFB00010 */  sw    $s0, 0x10($sp)
/* 0D5598 8013EE98 F7B80040 */  sdc1  $f24, 0x40($sp)
/* 0D559C 8013EE9C F7B60038 */  sdc1  $f22, 0x38($sp)
/* 0D55A0 8013EEA0 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0D55A4 8013EEA4 94420134 */  lhu   $v0, 0x134($v0)
/* 0D55A8 8013EEA8 3C018015 */  lui   $at, 0x8015
/* 0D55AC 8013EEAC D4221100 */  ldc1  $f2, 0x1100($at)
/* 0D55B0 8013EEB0 44820000 */  mtc1  $v0, $f0
/* 0D55B4 8013EEB4 00000000 */  nop   
/* 0D55B8 8013EEB8 46800020 */  cvt.s.w $f0, $f0
/* 0D55BC 8013EEBC 46000021 */  cvt.d.s $f0, $f0
/* 0D55C0 8013EEC0 46220003 */  div.d $f0, $f0, $f2
/* 0D55C4 8013EEC4 3C018015 */  lui   $at, 0x8015
/* 0D55C8 8013EEC8 D4221108 */  ldc1  $f2, 0x1108($at)
/* 0D55CC 8013EECC 0804FBB6 */  j     .L8013EED8
/* 0D55D0 8013EED0 46200220 */   cvt.s.d $f8, $f0

.L8013EED4:
/* 0D55D4 8013EED4 46200220 */  cvt.s.d $f8, $f0
.L8013EED8:
/* 0D55D8 8013EED8 46004021 */  cvt.d.s $f0, $f8
/* 0D55DC 8013EEDC 4620103C */  c.lt.d $f2, $f0
/* 0D55E0 8013EEE0 00000000 */  nop   
/* 0D55E4 8013EEE4 4503FFFB */  bc1tl .L8013EED4
/* 0D55E8 8013EEE8 46220001 */   sub.d $f0, $f0, $f2
/* 0D55EC 8013EEEC 3C028007 */  lui   $v0, 0x8007
/* 0D55F0 8013EEF0 8C42419C */  lw    $v0, 0x419c($v0)
/* 0D55F4 8013EEF4 94420134 */  lhu   $v0, 0x134($v0)
/* 0D55F8 8013EEF8 3C018015 */  lui   $at, 0x8015
/* 0D55FC 8013EEFC D4221110 */  ldc1  $f2, 0x1110($at)
/* 0D5600 8013EF00 24420028 */  addiu $v0, $v0, 0x28
/* 0D5604 8013EF04 44820000 */  mtc1  $v0, $f0
/* 0D5608 8013EF08 00000000 */  nop   
/* 0D560C 8013EF0C 46800020 */  cvt.s.w $f0, $f0
/* 0D5610 8013EF10 46000021 */  cvt.d.s $f0, $f0
/* 0D5614 8013EF14 46220003 */  div.d $f0, $f0, $f2
/* 0D5618 8013EF18 3C018015 */  lui   $at, 0x8015
/* 0D561C 8013EF1C D4221118 */  ldc1  $f2, 0x1118($at)
/* 0D5620 8013EF20 0804FBCB */  j     .L8013EF2C
/* 0D5624 8013EF24 462001A0 */   cvt.s.d $f6, $f0

.L8013EF28:
/* 0D5628 8013EF28 462001A0 */  cvt.s.d $f6, $f0
.L8013EF2C:
/* 0D562C 8013EF2C 46003021 */  cvt.d.s $f0, $f6
/* 0D5630 8013EF30 4620103C */  c.lt.d $f2, $f0
/* 0D5634 8013EF34 00000000 */  nop   
/* 0D5638 8013EF38 4503FFFB */  bc1tl .L8013EF28
/* 0D563C 8013EF3C 46220001 */   sub.d $f0, $f0, $f2
/* 0D5640 8013EF40 3C028007 */  lui   $v0, 0x8007
/* 0D5644 8013EF44 8C42419C */  lw    $v0, 0x419c($v0)
/* 0D5648 8013EF48 94420134 */  lhu   $v0, 0x134($v0)
/* 0D564C 8013EF4C 3C018015 */  lui   $at, 0x8015
/* 0D5650 8013EF50 D4221120 */  ldc1  $f2, 0x1120($at)
/* 0D5654 8013EF54 24420019 */  addiu $v0, $v0, 0x19
/* 0D5658 8013EF58 44820000 */  mtc1  $v0, $f0
/* 0D565C 8013EF5C 00000000 */  nop   
/* 0D5660 8013EF60 46800020 */  cvt.s.w $f0, $f0
/* 0D5664 8013EF64 46000021 */  cvt.d.s $f0, $f0
/* 0D5668 8013EF68 46220003 */  div.d $f0, $f0, $f2
/* 0D566C 8013EF6C 3C018015 */  lui   $at, 0x8015
/* 0D5670 8013EF70 D4221128 */  ldc1  $f2, 0x1128($at)
/* 0D5674 8013EF74 0804FBE0 */  j     .L8013EF80
/* 0D5678 8013EF78 46200120 */   cvt.s.d $f4, $f0

.L8013EF7C:
/* 0D567C 8013EF7C 46200120 */  cvt.s.d $f4, $f0
.L8013EF80:
/* 0D5680 8013EF80 46002021 */  cvt.d.s $f0, $f4
/* 0D5684 8013EF84 4620103C */  c.lt.d $f2, $f0
/* 0D5688 8013EF88 00000000 */  nop   
/* 0D568C 8013EF8C 4503FFFB */  bc1tl .L8013EF7C
/* 0D5690 8013EF90 46220001 */   sub.d $f0, $f0, $f2
/* 0D5694 8013EF94 E648003C */  swc1  $f8, 0x3c($s2)
/* 0D5698 8013EF98 46004006 */  mov.s $f0, $f8
/* 0D569C 8013EF9C 3C018015 */  lui   $at, 0x8015
/* 0D56A0 8013EFA0 D4221130 */  ldc1  $f2, 0x1130($at)
/* 0D56A4 8013EFA4 46000021 */  cvt.d.s $f0, $f0
/* 0D56A8 8013EFA8 E6460040 */  swc1  $f6, 0x40($s2)
/* 0D56AC 8013EFAC 4620103E */  c.le.d $f2, $f0
/* 0D56B0 8013EFB0 00000000 */  nop   
/* 0D56B4 8013EFB4 45000004 */  bc1f  .L8013EFC8
/* 0D56B8 8013EFB8 E6440044 */   swc1  $f4, 0x44($s2)
/* 0D56BC 8013EFBC 46220001 */  sub.d $f0, $f0, $f2
/* 0D56C0 8013EFC0 46200020 */  cvt.s.d $f0, $f0
/* 0D56C4 8013EFC4 E640003C */  swc1  $f0, 0x3c($s2)
.L8013EFC8:
/* 0D56C8 8013EFC8 C6400040 */  lwc1  $f0, 0x40($s2)
/* 0D56CC 8013EFCC 46000021 */  cvt.d.s $f0, $f0
/* 0D56D0 8013EFD0 4620103E */  c.le.d $f2, $f0
/* 0D56D4 8013EFD4 00000000 */  nop   
/* 0D56D8 8013EFD8 45000004 */  bc1f  .L8013EFEC
/* 0D56DC 8013EFDC 00000000 */   nop   
/* 0D56E0 8013EFE0 46220001 */  sub.d $f0, $f0, $f2
/* 0D56E4 8013EFE4 46200020 */  cvt.s.d $f0, $f0
/* 0D56E8 8013EFE8 E6400040 */  swc1  $f0, 0x40($s2)
.L8013EFEC:
/* 0D56EC 8013EFEC C6400044 */  lwc1  $f0, 0x44($s2)
/* 0D56F0 8013EFF0 46000021 */  cvt.d.s $f0, $f0
/* 0D56F4 8013EFF4 4620103E */  c.le.d $f2, $f0
/* 0D56F8 8013EFF8 00000000 */  nop   
/* 0D56FC 8013EFFC 45000004 */  bc1f  .L8013F010
/* 0D5700 8013F000 0000A02D */   daddu $s4, $zero, $zero
/* 0D5704 8013F004 46220001 */  sub.d $f0, $f0, $f2
/* 0D5708 8013F008 46200020 */  cvt.s.d $f0, $f0
/* 0D570C 8013F00C E6400044 */  swc1  $f0, 0x44($s2)
.L8013F010:
/* 0D5710 8013F010 9642000A */  lhu   $v0, 0xa($s2)
/* 0D5714 8013F014 96430008 */  lhu   $v1, 8($s2)
/* 0D5718 8013F018 92440003 */  lbu   $a0, 3($s2)
/* 0D571C 8013F01C 00431023 */  subu  $v0, $v0, $v1
/* 0D5720 8013F020 0044A823 */  subu  $s5, $v0, $a0
/* 0D5724 8013F024 1AA00067 */  blez  $s5, .L8013F1C4
/* 0D5728 8013F028 0280882D */   daddu $s1, $s4, $zero
/* 0D572C 8013F02C 3C168015 */  lui   $s6, 0x8015
/* 0D5730 8013F030 26D66950 */  addiu $s6, $s6, 0x6950
/* 0D5734 8013F034 0280982D */  daddu $s3, $s4, $zero
.L8013F038:
/* 0D5738 8013F038 44931000 */  mtc1  $s3, $f2
/* 0D573C 8013F03C 00000000 */  nop   
/* 0D5740 8013F040 468010A0 */  cvt.s.w $f2, $f2
/* 0D5744 8013F044 00141040 */  sll   $v0, $s4, 1
/* 0D5748 8013F048 00541021 */  addu  $v0, $v0, $s4
/* 0D574C 8013F04C 00021900 */  sll   $v1, $v0, 4
/* 0D5750 8013F050 00621823 */  subu  $v1, $v1, $v0
/* 0D5754 8013F054 00031880 */  sll   $v1, $v1, 2
/* 0D5758 8013F058 C64C003C */  lwc1  $f12, 0x3c($s2)
/* 0D575C 8013F05C 44830000 */  mtc1  $v1, $f0
/* 0D5760 8013F060 00000000 */  nop   
/* 0D5764 8013F064 46800020 */  cvt.s.w $f0, $f0
/* 0D5768 8013F068 46026300 */  add.s $f12, $f12, $f2
/* 0D576C 8013F06C C6560040 */  lwc1  $f22, 0x40($s2)
/* 0D5770 8013F070 96500008 */  lhu   $s0, 8($s2)
/* 0D5774 8013F074 4602B580 */  add.s $f22, $f22, $f2
/* 0D5778 8013F078 C6580044 */  lwc1  $f24, 0x44($s2)
/* 0D577C 8013F07C 8EC20000 */  lw    $v0, ($s6)
/* 0D5780 8013F080 4602C600 */  add.s $f24, $f24, $f2
/* 0D5784 8013F084 02118021 */  addu  $s0, $s0, $s1
/* 0D5788 8013F088 00108100 */  sll   $s0, $s0, 4
/* 0D578C 8013F08C 46006300 */  add.s $f12, $f12, $f0
/* 0D5790 8013F090 02028021 */  addu  $s0, $s0, $v0
/* 0D5794 8013F094 86020000 */  lh    $v0, ($s0)
/* 0D5798 8013F098 4600B580 */  add.s $f22, $f22, $f0
/* 0D579C 8013F09C 4482A000 */  mtc1  $v0, $f20
/* 0D57A0 8013F0A0 00000000 */  nop   
/* 0D57A4 8013F0A4 4680A520 */  cvt.s.w $f20, $f20
/* 0D57A8 8013F0A8 0C00A85B */  jal   sin_rad
/* 0D57AC 8013F0AC 4600C600 */   add.s $f24, $f24, $f0
/* 0D57B0 8013F0B0 C642001C */  lwc1  $f2, 0x1c($s2)
/* 0D57B4 8013F0B4 468010A0 */  cvt.s.w $f2, $f2
/* 0D57B8 8013F0B8 46020002 */  mul.s $f0, $f0, $f2
/* 0D57BC 8013F0BC 00000000 */  nop   
/* 0D57C0 8013F0C0 4600A500 */  add.s $f20, $f20, $f0
/* 0D57C4 8013F0C4 4600A28D */  trunc.w.s $f10, $f20
/* 0D57C8 8013F0C8 44025000 */  mfc1  $v0, $f10
/* 0D57CC 8013F0CC 00000000 */  nop   
/* 0D57D0 8013F0D0 A6020000 */  sh    $v0, ($s0)
/* 0D57D4 8013F0D4 96500008 */  lhu   $s0, 8($s2)
/* 0D57D8 8013F0D8 8EC20000 */  lw    $v0, ($s6)
/* 0D57DC 8013F0DC 02118021 */  addu  $s0, $s0, $s1
/* 0D57E0 8013F0E0 00108100 */  sll   $s0, $s0, 4
/* 0D57E4 8013F0E4 02028021 */  addu  $s0, $s0, $v0
/* 0D57E8 8013F0E8 86020002 */  lh    $v0, 2($s0)
/* 0D57EC 8013F0EC 4482A000 */  mtc1  $v0, $f20
/* 0D57F0 8013F0F0 00000000 */  nop   
/* 0D57F4 8013F0F4 4680A520 */  cvt.s.w $f20, $f20
/* 0D57F8 8013F0F8 0C00A85B */  jal   sin_rad
/* 0D57FC 8013F0FC 4600B306 */   mov.s $f12, $f22
/* 0D5800 8013F100 C6420020 */  lwc1  $f2, 0x20($s2)
/* 0D5804 8013F104 468010A0 */  cvt.s.w $f2, $f2
/* 0D5808 8013F108 46020002 */  mul.s $f0, $f0, $f2
/* 0D580C 8013F10C 00000000 */  nop   
/* 0D5810 8013F110 4600A500 */  add.s $f20, $f20, $f0
/* 0D5814 8013F114 4600A28D */  trunc.w.s $f10, $f20
/* 0D5818 8013F118 44025000 */  mfc1  $v0, $f10
/* 0D581C 8013F11C 00000000 */  nop   
/* 0D5820 8013F120 A6020002 */  sh    $v0, 2($s0)
/* 0D5824 8013F124 96500008 */  lhu   $s0, 8($s2)
/* 0D5828 8013F128 8EC20000 */  lw    $v0, ($s6)
/* 0D582C 8013F12C 02118021 */  addu  $s0, $s0, $s1
/* 0D5830 8013F130 00108100 */  sll   $s0, $s0, 4
/* 0D5834 8013F134 02028021 */  addu  $s0, $s0, $v0
/* 0D5838 8013F138 86020004 */  lh    $v0, 4($s0)
/* 0D583C 8013F13C 4482A000 */  mtc1  $v0, $f20
/* 0D5840 8013F140 00000000 */  nop   
/* 0D5844 8013F144 4680A520 */  cvt.s.w $f20, $f20
/* 0D5848 8013F148 0C00A85B */  jal   sin_rad
/* 0D584C 8013F14C 4600C306 */   mov.s $f12, $f24
/* 0D5850 8013F150 C6420024 */  lwc1  $f2, 0x24($s2)
/* 0D5854 8013F154 468010A0 */  cvt.s.w $f2, $f2
/* 0D5858 8013F158 46020002 */  mul.s $f0, $f0, $f2
/* 0D585C 8013F15C 00000000 */  nop   
/* 0D5860 8013F160 4600A500 */  add.s $f20, $f20, $f0
/* 0D5864 8013F164 4600A28D */  trunc.w.s $f10, $f20
/* 0D5868 8013F168 44025000 */  mfc1  $v0, $f10
/* 0D586C 8013F16C 00000000 */  nop   
/* 0D5870 8013F170 A6020004 */  sh    $v0, 4($s0)
/* 0D5874 8013F174 92420003 */  lbu   $v0, 3($s2)
/* 0D5878 8013F178 24420001 */  addiu $v0, $v0, 1
/* 0D587C 8013F17C 14400002 */  bnez  $v0, .L8013F188
/* 0D5880 8013F180 0222001A */   div   $zero, $s1, $v0
/* 0D5884 8013F184 0007000D */  break 7
.L8013F188:
/* 0D5888 8013F188 2401FFFF */  addiu $at, $zero, -1
/* 0D588C 8013F18C 14410004 */  bne   $v0, $at, .L8013F1A0
/* 0D5890 8013F190 3C018000 */   lui   $at, 0x8000
/* 0D5894 8013F194 16210002 */  bne   $s1, $at, .L8013F1A0
/* 0D5898 8013F198 00000000 */   nop   
/* 0D589C 8013F19C 0006000D */  break 6
.L8013F1A0:
/* 0D58A0 8013F1A0 00001810 */  mfhi  $v1
/* 0D58A4 8013F1A4 14600003 */  bnez  $v1, .L8013F1B4
/* 0D58A8 8013F1A8 2673002D */   addiu $s3, $s3, 0x2d
/* 0D58AC 8013F1AC 0000982D */  daddu $s3, $zero, $zero
/* 0D58B0 8013F1B0 3A940001 */  xori  $s4, $s4, 1
.L8013F1B4:
/* 0D58B4 8013F1B4 26310001 */  addiu $s1, $s1, 1
/* 0D58B8 8013F1B8 0235102A */  slt   $v0, $s1, $s5
/* 0D58BC 8013F1BC 1440FF9E */  bnez  $v0, .L8013F038
/* 0D58C0 8013F1C0 00000000 */   nop   
.L8013F1C4:
/* 0D58C4 8013F1C4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0D58C8 8013F1C8 8FB60028 */  lw    $s6, 0x28($sp)
/* 0D58CC 8013F1CC 8FB50024 */  lw    $s5, 0x24($sp)
/* 0D58D0 8013F1D0 8FB40020 */  lw    $s4, 0x20($sp)
/* 0D58D4 8013F1D4 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0D58D8 8013F1D8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0D58DC 8013F1DC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0D58E0 8013F1E0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0D58E4 8013F1E4 D7B80040 */  ldc1  $f24, 0x40($sp)
/* 0D58E8 8013F1E8 D7B60038 */  ldc1  $f22, 0x38($sp)
/* 0D58EC 8013F1EC D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0D58F0 8013F1F0 03E00008 */  jr    $ra
/* 0D58F4 8013F1F4 27BD0048 */   addiu $sp, $sp, 0x48
