.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80047820
/* 022C20 80047820 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 022C24 80047824 0080302D */  daddu $a2, $a0, $zero
/* 022C28 80047828 AFB10014 */  sw    $s1, 0x14($sp)
/* 022C2C 8004782C 00A0882D */  daddu $s1, $a1, $zero
/* 022C30 80047830 00061040 */  sll   $v0, $a2, 1
/* 022C34 80047834 00461021 */  addu  $v0, $v0, $a2
/* 022C38 80047838 00021080 */  sll   $v0, $v0, 2
/* 022C3C 8004783C 00461023 */  subu  $v0, $v0, $a2
/* 022C40 80047840 3C03800A */  lui   $v1, 0x800a
/* 022C44 80047844 8C630F44 */  lw    $v1, 0xf44($v1)
/* 022C48 80047848 00021100 */  sll   $v0, $v0, 4
/* 022C4C 8004784C AFBF0018 */  sw    $ra, 0x18($sp)
/* 022C50 80047850 AFB00010 */  sw    $s0, 0x10($sp)
/* 022C54 80047854 00628021 */  addu  $s0, $v1, $v0
/* 022C58 80047858 2403FFFB */  addiu $v1, $zero, -5
/* 022C5C 8004785C 8E020000 */  lw    $v0, ($s0)
/* 022C60 80047860 82040038 */  lb    $a0, 0x38($s0)
/* 022C64 80047864 00431024 */  and   $v0, $v0, $v1
/* 022C68 80047868 10910006 */  beq   $a0, $s1, .L80047884
/* 022C6C 8004786C AE020000 */   sw    $v0, ($s0)
/* 022C70 80047870 0C011E26 */  jal   func_80047898
/* 022C74 80047874 00C0202D */   daddu $a0, $a2, $zero
/* 022C78 80047878 24020001 */  addiu $v0, $zero, 1
/* 022C7C 8004787C A2110038 */  sb    $s1, 0x38($s0)
/* 022C80 80047880 A202003A */  sb    $v0, 0x3a($s0)
.L80047884:
/* 022C84 80047884 8FBF0018 */  lw    $ra, 0x18($sp)
/* 022C88 80047888 8FB10014 */  lw    $s1, 0x14($sp)
/* 022C8C 8004788C 8FB00010 */  lw    $s0, 0x10($sp)
/* 022C90 80047890 03E00008 */  jr    $ra
/* 022C94 80047894 27BD0020 */   addiu $sp, $sp, 0x20

