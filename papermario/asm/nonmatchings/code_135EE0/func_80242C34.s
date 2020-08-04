.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80242C34
.L80242C34:
/* 135F74 80242C34 24040016 */  addiu $a0, $zero, 0x16
/* 135F78 80242C38 2406FFFF */  addiu $a2, $zero, -1
/* 135F7C 80242C3C 0080282D */  daddu $a1, $a0, $zero
/* 135F80 80242C40 3C038016 */  lui   $v1, 0x8016
/* 135F84 80242C44 2463A010 */  addiu $v1, $v1, -0x5ff0
.L80242C48:
/* 135F88 80242C48 80620003 */  lb    $v0, 3($v1)
/* 135F8C 80242C4C 10460003 */  beq   $v0, $a2, .L80242C5C
/* 135F90 80242C50 00000000 */   nop   
/* 135F94 80242C54 54450006 */  bnel  $v0, $a1, .L80242C70
/* 135F98 80242C58 24840001 */   addiu $a0, $a0, 1
.L80242C5C:
/* 135F9C 80242C5C 90620000 */  lbu   $v0, ($v1)
/* 135FA0 80242C60 30420008 */  andi  $v0, $v0, 8
/* 135FA4 80242C64 14400006 */  bnez  $v0, .L80242C80
/* 135FA8 80242C68 2882002C */   slti  $v0, $a0, 0x2c
/* 135FAC 80242C6C 24840001 */  addiu $a0, $a0, 1
.L80242C70:
/* 135FB0 80242C70 2882002C */  slti  $v0, $a0, 0x2c
/* 135FB4 80242C74 1440FFF4 */  bnez  $v0, .L80242C48
/* 135FB8 80242C78 24630020 */   addiu $v1, $v1, 0x20
/* 135FBC 80242C7C 2882002C */  slti  $v0, $a0, 0x2c
.L80242C80:
/* 135FC0 80242C80 14400010 */  bnez  $v0, .L80242CC4
/* 135FC4 80242C84 00000000 */   nop   
/* 135FC8 80242C88 3C018025 */  lui   $at, 0x8025
/* 135FCC 80242C8C 08090B31 */  j     .L80242CC4
/* 135FD0 80242C90 AC20EFB4 */   sw    $zero, -0x104c($at)
.L80242C94:
/* 135FD4 80242C94 92020000 */  lbu   $v0, ($s0)
/* 135FD8 80242C98 30420008 */  andi  $v0, $v0, 8
/* 135FDC 80242C9C 14400011 */  bnez  $v0, .L80242CE4
/* 135FE0 80242CA0 2402FFFF */   addiu $v0, $zero, -1
/* 135FE4 80242CA4 82040003 */  lb    $a0, 3($s0)
/* 135FE8 80242CA8 10820006 */  beq   $a0, $v0, .L80242CC4
/* 135FEC 80242CAC 00041140 */   sll   $v0, $a0, 5
/* 135FF0 80242CB0 00541021 */  addu  $v0, $v0, $s4
/* 135FF4 80242CB4 90420000 */  lbu   $v0, ($v0)
/* 135FF8 80242CB8 30420008 */  andi  $v0, $v0, 8
/* 135FFC 80242CBC 14400009 */  bnez  $v0, .L80242CE4
/* 136000 80242CC0 00000000 */   nop   
.L80242CC4:
/* 136004 80242CC4 3C018025 */  lui   $at, 0x8025
/* 136008 80242CC8 AC31EFA8 */  sw    $s1, -0x1058($at)
/* 13600C 80242CCC 3C018025 */  lui   $at, 0x8025
/* 136010 80242CD0 AC31EF9C */  sw    $s1, -0x1064($at)
/* 136014 80242CD4 3C018025 */  lui   $at, 0x8025
/* 136018 80242CD8 AC33EFAC */  sw    $s3, -0x1054($at)
/* 13601C 80242CDC 3C018025 */  lui   $at, 0x8025
/* 136020 80242CE0 AC33EFA0 */  sw    $s3, -0x1060($at)
.L80242CE4:
/* 136024 80242CE4 8FBF0024 */  lw    $ra, 0x24($sp)
