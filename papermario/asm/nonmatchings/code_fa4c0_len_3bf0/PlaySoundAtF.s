.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel PlaySoundAtF
/* 0FAD1C 802D636C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0FAD20 802D6370 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0FAD24 802D6374 0080882D */  daddu $s1, $a0, $zero
/* 0FAD28 802D6378 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0FAD2C 802D637C AFB30024 */  sw    $s3, 0x24($sp)
/* 0FAD30 802D6380 AFB20020 */  sw    $s2, 0x20($sp)
/* 0FAD34 802D6384 AFB00018 */  sw    $s0, 0x18($sp)
/* 0FAD38 802D6388 F7B60038 */  sdc1  $f22, 0x38($sp)
/* 0FAD3C 802D638C F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0FAD40 802D6390 8E30000C */  lw    $s0, 0xc($s1)
/* 0FAD44 802D6394 8E130000 */  lw    $s3, ($s0)
/* 0FAD48 802D6398 26100004 */  addiu $s0, $s0, 4
/* 0FAD4C 802D639C 8E050000 */  lw    $a1, ($s0)
/* 0FAD50 802D63A0 0C0B1EAF */  jal   get_variable
/* 0FAD54 802D63A4 26100004 */   addiu $s0, $s0, 4
/* 0FAD58 802D63A8 8E050000 */  lw    $a1, ($s0)
/* 0FAD5C 802D63AC 26100004 */  addiu $s0, $s0, 4
/* 0FAD60 802D63B0 0220202D */  daddu $a0, $s1, $zero
/* 0FAD64 802D63B4 0C0B210B */  jal   get_float_variable
/* 0FAD68 802D63B8 0040902D */   daddu $s2, $v0, $zero
/* 0FAD6C 802D63BC 8E050000 */  lw    $a1, ($s0)
/* 0FAD70 802D63C0 26100004 */  addiu $s0, $s0, 4
/* 0FAD74 802D63C4 0220202D */  daddu $a0, $s1, $zero
/* 0FAD78 802D63C8 0C0B210B */  jal   get_float_variable
/* 0FAD7C 802D63CC 46000586 */   mov.s $f22, $f0
/* 0FAD80 802D63D0 0220202D */  daddu $a0, $s1, $zero
/* 0FAD84 802D63D4 8E050000 */  lw    $a1, ($s0)
/* 0FAD88 802D63D8 0C0B210B */  jal   get_float_variable
/* 0FAD8C 802D63DC 46000506 */   mov.s $f20, $f0
/* 0FAD90 802D63E0 0260202D */  daddu $a0, $s3, $zero
/* 0FAD94 802D63E4 4406B000 */  mfc1  $a2, $f22
/* 0FAD98 802D63E8 4407A000 */  mfc1  $a3, $f20
/* 0FAD9C 802D63EC 3245FFFF */  andi  $a1, $s2, 0xffff
/* 0FADA0 802D63F0 0C052757 */  jal   play_sound_at_position
/* 0FADA4 802D63F4 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0FADA8 802D63F8 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0FADAC 802D63FC 8FB30024 */  lw    $s3, 0x24($sp)
/* 0FADB0 802D6400 8FB20020 */  lw    $s2, 0x20($sp)
/* 0FADB4 802D6404 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0FADB8 802D6408 8FB00018 */  lw    $s0, 0x18($sp)
/* 0FADBC 802D640C D7B60038 */  ldc1  $f22, 0x38($sp)
/* 0FADC0 802D6410 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 0FADC4 802D6414 24020002 */  addiu $v0, $zero, 2
/* 0FADC8 802D6418 03E00008 */  jr    $ra
/* 0FADCC 802D641C 27BD0040 */   addiu $sp, $sp, 0x40

/* 0FADD0 802D6420 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0FADD4 802D6424 AFB00010 */  sw    $s0, 0x10($sp)
/* 0FADD8 802D6428 0080802D */  daddu $s0, $a0, $zero
/* 0FADDC 802D642C AFB3001C */  sw    $s3, 0x1c($sp)
/* 0FADE0 802D6430 3C138011 */  lui   $s3, 0x8011
/* 0FADE4 802D6434 2673F290 */  addiu $s3, $s3, -0xd70
/* 0FADE8 802D6438 AFB10014 */  sw    $s1, 0x14($sp)
/* 0FADEC 802D643C 3C11802E */  lui   $s1, 0x802e
/* 0FADF0 802D6440 2631B830 */  addiu $s1, $s1, -0x47d0
/* 0FADF4 802D6444 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0FADF8 802D6448 AFB20018 */  sw    $s2, 0x18($sp)
/* 0FADFC 802D644C 8E12014C */  lw    $s2, 0x14c($s0)
/* 0FAE00 802D6450 54A00001 */  bnel  $a1, $zero, .L802D6458
/* 0FAE04 802D6454 AE000070 */   sw    $zero, 0x70($s0)
.L802D6458:
/* 0FAE08 802D6458 8E030070 */  lw    $v1, 0x70($s0)
/* 0FAE0C 802D645C 10600005 */  beqz  $v1, .L802D6474
/* 0FAE10 802D6460 24020001 */   addiu $v0, $zero, 1
/* 0FAE14 802D6464 1062004B */  beq   $v1, $v0, .L802D6594
/* 0FAE18 802D6468 0000102D */   daddu $v0, $zero, $zero
/* 0FAE1C 802D646C 080B5988 */  j     .L802D6620
/* 0FAE20 802D6470 00000000 */   nop   

.L802D6474:
/* 0FAE24 802D6474 0C03805E */  jal   func_800E0178
/* 0FAE28 802D6478 00000000 */   nop   
/* 0FAE2C 802D647C 0C038045 */  jal   enable_player_physics
/* 0FAE30 802D6480 00000000 */   nop   
/* 0FAE34 802D6484 0C03BD8A */  jal   func_800EF628
/* 0FAE38 802D6488 00000000 */   nop   
/* 0FAE3C 802D648C 0C03A5EE */  jal   func_800E97B8
/* 0FAE40 802D6490 00000000 */   nop   
/* 0FAE44 802D6494 0000482D */  daddu $t1, $zero, $zero
/* 0FAE48 802D6498 0120402D */  daddu $t0, $t1, $zero
/* 0FAE4C 802D649C 3C0C8008 */  lui   $t4, 0x8008
/* 0FAE50 802D64A0 258C78E0 */  addiu $t4, $t4, 0x78e0
/* 0FAE54 802D64A4 3C0B8009 */  lui   $t3, 0x8009
/* 0FAE58 802D64A8 256BA680 */  addiu $t3, $t3, -0x5980
/* 0FAE5C 802D64AC 240A0001 */  addiu $t2, $zero, 1
/* 0FAE60 802D64B0 0260382D */  daddu $a3, $s3, $zero
/* 0FAE64 802D64B4 3C03800A */  lui   $v1, 0x800a
/* 0FAE68 802D64B8 2463A650 */  addiu $v1, $v1, -0x59b0
/* 0FAE6C 802D64BC 8C620000 */  lw    $v0, ($v1)
/* 0FAE70 802D64C0 0220302D */  daddu $a2, $s1, $zero
/* 0FAE74 802D64C4 34420040 */  ori   $v0, $v0, 0x40
/* 0FAE78 802D64C8 AC620000 */  sw    $v0, ($v1)
.L802D64CC:
/* 0FAE7C 802D64CC 84E40074 */  lh    $a0, 0x74($a3)
/* 0FAE80 802D64D0 5080001F */  beql  $a0, $zero, .L802D6550
/* 0FAE84 802D64D4 25080001 */   addiu $t0, $t0, 1
/* 0FAE88 802D64D8 8E430028 */  lw    $v1, 0x28($s2)
/* 0FAE8C 802D64DC 8C620000 */  lw    $v0, ($v1)
/* 0FAE90 802D64E0 18400008 */  blez  $v0, .L802D6504
/* 0FAE94 802D64E4 0000282D */   daddu $a1, $zero, $zero
.L802D64E8:
/* 0FAE98 802D64E8 54820003 */  bnel  $a0, $v0, .L802D64F8
/* 0FAE9C 802D64EC 24630004 */   addiu $v1, $v1, 4
/* 0FAEA0 802D64F0 080B5941 */  j     .L802D6504
/* 0FAEA4 802D64F4 24050001 */   addiu $a1, $zero, 1

.L802D64F8:
/* 0FAEA8 802D64F8 8C620000 */  lw    $v0, ($v1)
/* 0FAEAC 802D64FC 1C40FFFA */  bgtz  $v0, .L802D64E8
/* 0FAEB0 802D6500 00000000 */   nop   
.L802D6504:
/* 0FAEB4 802D6504 50A00012 */  beql  $a1, $zero, .L802D6550
/* 0FAEB8 802D6508 25080001 */   addiu $t0, $t0, 1
/* 0FAEBC 802D650C 84E30074 */  lh    $v1, 0x74($a3)
/* 0FAEC0 802D6510 00031940 */  sll   $v1, $v1, 5
/* 0FAEC4 802D6514 006C1821 */  addu  $v1, $v1, $t4
/* 0FAEC8 802D6518 84620004 */  lh    $v0, 4($v1)
/* 0FAECC 802D651C 000210C0 */  sll   $v0, $v0, 3
/* 0FAED0 802D6520 004B1021 */  addu  $v0, $v0, $t3
/* 0FAED4 802D6524 8C420000 */  lw    $v0, ($v0)
/* 0FAED8 802D6528 ACC80108 */  sw    $t0, 0x108($a2)
/* 0FAEDC 802D652C ACCA018C */  sw    $t2, 0x18c($a2)
/* 0FAEE0 802D6530 ACC20000 */  sw    $v0, ($a2)
/* 0FAEE4 802D6534 8C620000 */  lw    $v0, ($v1)
/* 0FAEE8 802D6538 ACC20084 */  sw    $v0, 0x84($a2)
/* 0FAEEC 802D653C 8C620014 */  lw    $v0, 0x14($v1)
/* 0FAEF0 802D6540 25290001 */  addiu $t1, $t1, 1
/* 0FAEF4 802D6544 ACC20294 */  sw    $v0, 0x294($a2)
/* 0FAEF8 802D6548 24C60004 */  addiu $a2, $a2, 4
/* 0FAEFC 802D654C 25080001 */  addiu $t0, $t0, 1
.L802D6550:
/* 0FAF00 802D6550 29020020 */  slti  $v0, $t0, 0x20
/* 0FAF04 802D6554 1440FFDD */  bnez  $v0, .L802D64CC
/* 0FAF08 802D6558 24E70002 */   addiu $a3, $a3, 2
/* 0FAF0C 802D655C 15200004 */  bnez  $t1, .L802D6570
/* 0FAF10 802D6560 2402000C */   addiu $v0, $zero, 0xc
/* 0FAF14 802D6564 AE000084 */  sw    $zero, 0x84($s0)
/* 0FAF18 802D6568 080B5988 */  j     .L802D6620
/* 0FAF1C 802D656C 24020001 */   addiu $v0, $zero, 1

.L802D6570:
/* 0FAF20 802D6570 0220202D */  daddu $a0, $s1, $zero
/* 0FAF24 802D6574 AE220318 */  sw    $v0, 0x318($s1)
/* 0FAF28 802D6578 AE290324 */  sw    $t1, 0x324($s1)
/* 0FAF2C 802D657C 0C03D390 */  jal   func_800F4E40
/* 0FAF30 802D6580 AE200328 */   sw    $zero, 0x328($s1)
/* 0FAF34 802D6584 24020001 */  addiu $v0, $zero, 1
/* 0FAF38 802D6588 AE000074 */  sw    $zero, 0x74($s0)
/* 0FAF3C 802D658C 080B5987 */  j     .L802D661C
/* 0FAF40 802D6590 AE020070 */   sw    $v0, 0x70($s0)

.L802D6594:
/* 0FAF44 802D6594 8E020074 */  lw    $v0, 0x74($s0)
/* 0FAF48 802D6598 14400008 */  bnez  $v0, .L802D65BC
/* 0FAF4C 802D659C 24420001 */   addiu $v0, $v0, 1
/* 0FAF50 802D65A0 8622032C */  lh    $v0, 0x32c($s1)
/* 0FAF54 802D65A4 1040001D */  beqz  $v0, .L802D661C
/* 0FAF58 802D65A8 AE020078 */   sw    $v0, 0x78($s0)
/* 0FAF5C 802D65AC 0C03C4EC */  jal   func_800F13B0
/* 0FAF60 802D65B0 00000000 */   nop   
/* 0FAF64 802D65B4 8E020074 */  lw    $v0, 0x74($s0)
/* 0FAF68 802D65B8 24420001 */  addiu $v0, $v0, 1
.L802D65BC:
/* 0FAF6C 802D65BC AE020074 */  sw    $v0, 0x74($s0)
/* 0FAF70 802D65C0 2842000F */  slti  $v0, $v0, 0xf
/* 0FAF74 802D65C4 14400016 */  bnez  $v0, .L802D6620
/* 0FAF78 802D65C8 0000102D */   daddu $v0, $zero, $zero
/* 0FAF7C 802D65CC 0C03C54E */  jal   func_800F1538
/* 0FAF80 802D65D0 00000000 */   nop   
/* 0FAF84 802D65D4 8E030078 */  lw    $v1, 0x78($s0)
/* 0FAF88 802D65D8 240200FF */  addiu $v0, $zero, 0xff
/* 0FAF8C 802D65DC 54620005 */  bnel  $v1, $v0, .L802D65F4
/* 0FAF90 802D65E0 2462FFFF */   addiu $v0, $v1, -1
/* 0FAF94 802D65E4 2402FFFF */  addiu $v0, $zero, -1
/* 0FAF98 802D65E8 AE020084 */  sw    $v0, 0x84($s0)
/* 0FAF9C 802D65EC 080B5988 */  j     .L802D6620
/* 0FAFA0 802D65F0 24020001 */   addiu $v0, $zero, 1

.L802D65F4:
/* 0FAFA4 802D65F4 00021080 */  sll   $v0, $v0, 2
/* 0FAFA8 802D65F8 00511021 */  addu  $v0, $v0, $s1
/* 0FAFAC 802D65FC 8C430108 */  lw    $v1, 0x108($v0)
/* 0FAFB0 802D6600 00031040 */  sll   $v0, $v1, 1
/* 0FAFB4 802D6604 00531021 */  addu  $v0, $v0, $s3
/* 0FAFB8 802D6608 AE030088 */  sw    $v1, 0x88($s0)
/* 0FAFBC 802D660C 84430074 */  lh    $v1, 0x74($v0)
/* 0FAFC0 802D6610 24020001 */  addiu $v0, $zero, 1
/* 0FAFC4 802D6614 080B5988 */  j     .L802D6620
/* 0FAFC8 802D6618 AE030084 */   sw    $v1, 0x84($s0)

.L802D661C:
/* 0FAFCC 802D661C 0000102D */  daddu $v0, $zero, $zero
.L802D6620:
/* 0FAFD0 802D6620 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0FAFD4 802D6624 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0FAFD8 802D6628 8FB20018 */  lw    $s2, 0x18($sp)
/* 0FAFDC 802D662C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0FAFE0 802D6630 8FB00010 */  lw    $s0, 0x10($sp)
/* 0FAFE4 802D6634 03E00008 */  jr    $ra
/* 0FAFE8 802D6638 27BD0028 */   addiu $sp, $sp, 0x28

/* 0FAFEC 802D663C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0FAFF0 802D6640 AFB00010 */  sw    $s0, 0x10($sp)
/* 0FAFF4 802D6644 0080802D */  daddu $s0, $a0, $zero
/* 0FAFF8 802D6648 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0FAFFC 802D664C 3C138011 */  lui   $s3, 0x8011
/* 0FB000 802D6650 2673F290 */  addiu $s3, $s3, -0xd70
/* 0FB004 802D6654 AFB10014 */  sw    $s1, 0x14($sp)
/* 0FB008 802D6658 3C11802E */  lui   $s1, 0x802e
/* 0FB00C 802D665C 2631B830 */  addiu $s1, $s1, -0x47d0
/* 0FB010 802D6660 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0FB014 802D6664 AFB20018 */  sw    $s2, 0x18($sp)
/* 0FB018 802D6668 8E12014C */  lw    $s2, 0x14c($s0)
/* 0FB01C 802D666C 54A00001 */  bnel  $a1, $zero, .L802D6674
/* 0FB020 802D6670 AE000070 */   sw    $zero, 0x70($s0)
.L802D6674:
/* 0FB024 802D6674 8E030070 */  lw    $v1, 0x70($s0)
/* 0FB028 802D6678 10600005 */  beqz  $v1, .L802D6690
/* 0FB02C 802D667C 24020001 */   addiu $v0, $zero, 1
/* 0FB030 802D6680 1062004B */  beq   $v1, $v0, .L802D67B0
/* 0FB034 802D6684 0000102D */   daddu $v0, $zero, $zero
/* 0FB038 802D6688 080B5A0F */  j     .L802D683C
/* 0FB03C 802D668C 00000000 */   nop   

.L802D6690:
/* 0FB040 802D6690 0C03805E */  jal   func_800E0178
/* 0FB044 802D6694 00000000 */   nop   
/* 0FB048 802D6698 0C038045 */  jal   enable_player_physics
/* 0FB04C 802D669C 00000000 */   nop   
/* 0FB050 802D66A0 0C03BD8A */  jal   func_800EF628
/* 0FB054 802D66A4 00000000 */   nop   
/* 0FB058 802D66A8 0C03A5EE */  jal   func_800E97B8
/* 0FB05C 802D66AC 00000000 */   nop   
/* 0FB060 802D66B0 0000482D */  daddu $t1, $zero, $zero
/* 0FB064 802D66B4 0120402D */  daddu $t0, $t1, $zero
/* 0FB068 802D66B8 3C0C8008 */  lui   $t4, 0x8008
/* 0FB06C 802D66BC 258C78E0 */  addiu $t4, $t4, 0x78e0
/* 0FB070 802D66C0 3C0B8009 */  lui   $t3, 0x8009
/* 0FB074 802D66C4 256BA680 */  addiu $t3, $t3, -0x5980
/* 0FB078 802D66C8 240A0001 */  addiu $t2, $zero, 1
/* 0FB07C 802D66CC 0260382D */  daddu $a3, $s3, $zero
/* 0FB080 802D66D0 3C03800A */  lui   $v1, 0x800a
/* 0FB084 802D66D4 2463A650 */  addiu $v1, $v1, -0x59b0
/* 0FB088 802D66D8 8C620000 */  lw    $v0, ($v1)
/* 0FB08C 802D66DC 0220302D */  daddu $a2, $s1, $zero
/* 0FB090 802D66E0 34420040 */  ori   $v0, $v0, 0x40
/* 0FB094 802D66E4 AC620000 */  sw    $v0, ($v1)
.L802D66E8:
/* 0FB098 802D66E8 84E401B4 */  lh    $a0, 0x1b4($a3)
/* 0FB09C 802D66EC 5080001F */  beql  $a0, $zero, .L802D676C
/* 0FB0A0 802D66F0 25080001 */   addiu $t0, $t0, 1
/* 0FB0A4 802D66F4 8E430028 */  lw    $v1, 0x28($s2)
/* 0FB0A8 802D66F8 8C620000 */  lw    $v0, ($v1)
/* 0FB0AC 802D66FC 18400008 */  blez  $v0, .L802D6720
/* 0FB0B0 802D6700 0000282D */   daddu $a1, $zero, $zero
.L802D6704:
/* 0FB0B4 802D6704 54820003 */  bnel  $a0, $v0, .L802D6714
/* 0FB0B8 802D6708 24630004 */   addiu $v1, $v1, 4
/* 0FB0BC 802D670C 080B59C8 */  j     .L802D6720
/* 0FB0C0 802D6710 24050001 */   addiu $a1, $zero, 1

.L802D6714:
/* 0FB0C4 802D6714 8C620000 */  lw    $v0, ($v1)
/* 0FB0C8 802D6718 1C40FFFA */  bgtz  $v0, .L802D6704
/* 0FB0CC 802D671C 00000000 */   nop   
.L802D6720:
/* 0FB0D0 802D6720 50A00012 */  beql  $a1, $zero, .L802D676C
/* 0FB0D4 802D6724 25080001 */   addiu $t0, $t0, 1
/* 0FB0D8 802D6728 84E301B4 */  lh    $v1, 0x1b4($a3)
/* 0FB0DC 802D672C 00031940 */  sll   $v1, $v1, 5
/* 0FB0E0 802D6730 006C1821 */  addu  $v1, $v1, $t4
/* 0FB0E4 802D6734 84620004 */  lh    $v0, 4($v1)
/* 0FB0E8 802D6738 000210C0 */  sll   $v0, $v0, 3
/* 0FB0EC 802D673C 004B1021 */  addu  $v0, $v0, $t3
/* 0FB0F0 802D6740 8C420000 */  lw    $v0, ($v0)
/* 0FB0F4 802D6744 ACC80108 */  sw    $t0, 0x108($a2)
/* 0FB0F8 802D6748 ACCA018C */  sw    $t2, 0x18c($a2)
/* 0FB0FC 802D674C ACC20000 */  sw    $v0, ($a2)
/* 0FB100 802D6750 8C620000 */  lw    $v0, ($v1)
/* 0FB104 802D6754 ACC20084 */  sw    $v0, 0x84($a2)
/* 0FB108 802D6758 8C620014 */  lw    $v0, 0x14($v1)
/* 0FB10C 802D675C 25290001 */  addiu $t1, $t1, 1
/* 0FB110 802D6760 ACC20294 */  sw    $v0, 0x294($a2)
/* 0FB114 802D6764 24C60004 */  addiu $a2, $a2, 4
/* 0FB118 802D6768 25080001 */  addiu $t0, $t0, 1
.L802D676C:
/* 0FB11C 802D676C 2902000A */  slti  $v0, $t0, 0xa
/* 0FB120 802D6770 1440FFDD */  bnez  $v0, .L802D66E8
/* 0FB124 802D6774 24E70002 */   addiu $a3, $a3, 2
/* 0FB128 802D6778 15200004 */  bnez  $t1, .L802D678C
/* 0FB12C 802D677C 2402000C */   addiu $v0, $zero, 0xc
/* 0FB130 802D6780 AE000084 */  sw    $zero, 0x84($s0)
/* 0FB134 802D6784 080B5A0F */  j     .L802D683C
/* 0FB138 802D6788 24020001 */   addiu $v0, $zero, 1

.L802D678C:
/* 0FB13C 802D678C 0220202D */  daddu $a0, $s1, $zero
/* 0FB140 802D6790 AE220318 */  sw    $v0, 0x318($s1)
/* 0FB144 802D6794 AE290324 */  sw    $t1, 0x324($s1)
/* 0FB148 802D6798 0C03D390 */  jal   func_800F4E40
/* 0FB14C 802D679C AE200328 */   sw    $zero, 0x328($s1)
/* 0FB150 802D67A0 24020001 */  addiu $v0, $zero, 1
/* 0FB154 802D67A4 AE000074 */  sw    $zero, 0x74($s0)
/* 0FB158 802D67A8 080B5A0E */  j     .L802D6838
/* 0FB15C 802D67AC AE020070 */   sw    $v0, 0x70($s0)

.L802D67B0:
/* 0FB160 802D67B0 8E020074 */  lw    $v0, 0x74($s0)
/* 0FB164 802D67B4 14400008 */  bnez  $v0, .L802D67D8
/* 0FB168 802D67B8 24420001 */   addiu $v0, $v0, 1
/* 0FB16C 802D67BC 8622032C */  lh    $v0, 0x32c($s1)
/* 0FB170 802D67C0 1040001D */  beqz  $v0, .L802D6838
/* 0FB174 802D67C4 AE020078 */   sw    $v0, 0x78($s0)
/* 0FB178 802D67C8 0C03C4EC */  jal   func_800F13B0
/* 0FB17C 802D67CC 00000000 */   nop   
/* 0FB180 802D67D0 8E020074 */  lw    $v0, 0x74($s0)
/* 0FB184 802D67D4 24420001 */  addiu $v0, $v0, 1
.L802D67D8:
/* 0FB188 802D67D8 AE020074 */  sw    $v0, 0x74($s0)
/* 0FB18C 802D67DC 2842000F */  slti  $v0, $v0, 0xf
/* 0FB190 802D67E0 14400016 */  bnez  $v0, .L802D683C
/* 0FB194 802D67E4 0000102D */   daddu $v0, $zero, $zero
/* 0FB198 802D67E8 0C03C54E */  jal   func_800F1538
/* 0FB19C 802D67EC 00000000 */   nop   
/* 0FB1A0 802D67F0 8E030078 */  lw    $v1, 0x78($s0)
/* 0FB1A4 802D67F4 240200FF */  addiu $v0, $zero, 0xff
/* 0FB1A8 802D67F8 54620005 */  bnel  $v1, $v0, .L802D6810
/* 0FB1AC 802D67FC 2462FFFF */   addiu $v0, $v1, -1
/* 0FB1B0 802D6800 2402FFFF */  addiu $v0, $zero, -1
/* 0FB1B4 802D6804 AE020084 */  sw    $v0, 0x84($s0)
/* 0FB1B8 802D6808 080B5A0F */  j     .L802D683C
/* 0FB1BC 802D680C 24020001 */   addiu $v0, $zero, 1

.L802D6810:
/* 0FB1C0 802D6810 00021080 */  sll   $v0, $v0, 2
/* 0FB1C4 802D6814 00511021 */  addu  $v0, $v0, $s1
/* 0FB1C8 802D6818 8C430108 */  lw    $v1, 0x108($v0)
/* 0FB1CC 802D681C 00031040 */  sll   $v0, $v1, 1
/* 0FB1D0 802D6820 00531021 */  addu  $v0, $v0, $s3
/* 0FB1D4 802D6824 AE030088 */  sw    $v1, 0x88($s0)
/* 0FB1D8 802D6828 844301B4 */  lh    $v1, 0x1b4($v0)
/* 0FB1DC 802D682C 24020001 */  addiu $v0, $zero, 1
/* 0FB1E0 802D6830 080B5A0F */  j     .L802D683C
/* 0FB1E4 802D6834 AE030084 */   sw    $v1, 0x84($s0)

.L802D6838:
/* 0FB1E8 802D6838 0000102D */  daddu $v0, $zero, $zero
.L802D683C:
/* 0FB1EC 802D683C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0FB1F0 802D6840 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0FB1F4 802D6844 8FB20018 */  lw    $s2, 0x18($sp)
/* 0FB1F8 802D6848 8FB10014 */  lw    $s1, 0x14($sp)
/* 0FB1FC 802D684C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0FB200 802D6850 03E00008 */  jr    $ra
/* 0FB204 802D6854 27BD0028 */   addiu $sp, $sp, 0x28

