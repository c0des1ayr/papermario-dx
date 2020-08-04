.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel load_stage_collision
/* 0365A0 8005B1A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0365A4 8005B1A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0365A8 8005B1A8 0080802D */  daddu $s0, $a0, $zero
/* 0365AC 8005B1AC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0365B0 8005B1B0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0365B4 8005B1B4 16000005 */  bnez  $s0, .L8005B1CC
/* 0365B8 8005B1B8 AFB1001C */   sw    $s1, 0x1c($sp)
/* 0365BC 8005B1BC 3C01800B */  lui   $at, 0x800b
/* 0365C0 8005B1C0 A42042EC */  sh    $zero, 0x42ec($at)
/* 0365C4 8005B1C4 08016C89 */  j     .L8005B224
/* 0365C8 8005B1C8 00000000 */   nop   

.L8005B1CC:
/* 0365CC 8005B1CC 0C016AFA */  jal   get_current_map_header
/* 0365D0 8005B1D0 00000000 */   nop   
/* 0365D4 8005B1D4 0200202D */  daddu $a0, $s0, $zero
/* 0365D8 8005B1D8 27A50010 */  addiu $a1, $sp, 0x10
/* 0365DC 8005B1DC 0C016B3A */  jal   load_asset_by_name
/* 0365E0 8005B1E0 0040902D */   daddu $s2, $v0, $zero
/* 0365E4 8005B1E4 8FA40010 */  lw    $a0, 0x10($sp)
/* 0365E8 8005B1E8 0C00AB39 */  jal   heap_malloc
/* 0365EC 8005B1EC 0040882D */   daddu $s1, $v0, $zero
/* 0365F0 8005B1F0 0220202D */  daddu $a0, $s1, $zero
/* 0365F4 8005B1F4 0040802D */  daddu $s0, $v0, $zero
/* 0365F8 8005B1F8 0C01BB7C */  jal   decode_yay0
/* 0365FC 8005B1FC 0200282D */   daddu $a1, $s0, $zero
/* 036600 8005B200 0C00AB1E */  jal   general_heap_free
/* 036604 8005B204 0220202D */   daddu $a0, $s1, $zero
/* 036608 8005B208 0000202D */  daddu $a0, $zero, $zero
/* 03660C 8005B20C 8E020000 */  lw    $v0, ($s0)
/* 036610 8005B210 0200282D */  daddu $a1, $s0, $zero
/* 036614 8005B214 0C016C8F */  jal   load_hit_data
/* 036618 8005B218 AE420004 */   sw    $v0, 4($s2)
/* 03661C 8005B21C 0C00AB4B */  jal   heap_free
/* 036620 8005B220 0200202D */   daddu $a0, $s0, $zero
.L8005B224:
/* 036624 8005B224 8FBF0024 */  lw    $ra, 0x24($sp)
/* 036628 8005B228 8FB20020 */  lw    $s2, 0x20($sp)
/* 03662C 8005B22C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 036630 8005B230 8FB00018 */  lw    $s0, 0x18($sp)
/* 036634 8005B234 03E00008 */  jr    $ra
/* 036638 8005B238 27BD0028 */   addiu $sp, $sp, 0x28

