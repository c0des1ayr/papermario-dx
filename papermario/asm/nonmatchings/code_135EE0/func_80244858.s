.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80244858
/* 137B98 80244858 2882F581 */  slti  $v0, $a0, -0xa7f
/* 137B9C 8024485C 8FA90014 */  lw    $t1, 0x14($sp)
/* 137BA0 80244860 8FAA0018 */  lw    $t2, 0x18($sp)
/* 137BA4 80244864 8FAB001C */  lw    $t3, 0x1c($sp)
/* 137BA8 80244868 8FAC0020 */  lw    $t4, 0x20($sp)
/* 137BAC 8024486C 14400075 */  bnez  $v0, .L80244A44
/* 137BB0 80244870 28A2F581 */   slti  $v0, $a1, -0xa7f
/* 137BB4 80244874 14400073 */  bnez  $v0, .L80244A44
/* 137BB8 80244878 00000000 */   nop   
/* 137BBC 8024487C 18C00071 */  blez  $a2, .L80244A44
/* 137BC0 80244880 00000000 */   nop   
/* 137BC4 80244884 18E0006F */  blez  $a3, .L80244A44
/* 137BC8 80244888 28820500 */   slti  $v0, $a0, 0x500
/* 137BCC 8024488C 1040006D */  beqz  $v0, .L80244A44
/* 137BD0 80244890 28A203C0 */   slti  $v0, $a1, 0x3c0
/* 137BD4 80244894 1040006B */  beqz  $v0, .L80244A44
/* 137BD8 80244898 28C20A80 */   slti  $v0, $a2, 0xa80
/* 137BDC 8024489C 10400069 */  beqz  $v0, .L80244A44
/* 137BE0 802448A0 28E20A80 */   slti  $v0, $a3, 0xa80
/* 137BE4 802448A4 10400067 */  beqz  $v0, .L80244A44
/* 137BE8 802448A8 00000000 */   nop   
/* 137BEC 802448AC 3C02800A */  lui   $v0, 0x800a
/* 137BF0 802448B0 2442A66C */  addiu $v0, $v0, -0x5994
/* 137BF4 802448B4 8C480000 */  lw    $t0, ($v0)
/* 137BF8 802448B8 25030008 */  addiu $v1, $t0, 8
/* 137BFC 802448BC AC430000 */  sw    $v1, ($v0)
/* 137C00 802448C0 00061400 */  sll   $v0, $a2, 0x10
/* 137C04 802448C4 00021403 */  sra   $v0, $v0, 0x10
/* 137C08 802448C8 18400005 */  blez  $v0, .L802448E0
/* 137C0C 802448CC 30420FFF */   andi  $v0, $v0, 0xfff
/* 137C10 802448D0 00021300 */  sll   $v0, $v0, 0xc
/* 137C14 802448D4 3C03E400 */  lui   $v1, 0xe400
/* 137C18 802448D8 08091239 */  j     .L802448E4
/* 137C1C 802448DC 00431825 */   or    $v1, $v0, $v1
.L802448E0:
/* 137C20 802448E0 3C03E400 */  lui   $v1, 0xe400
.L802448E4:
/* 137C24 802448E4 00071400 */  sll   $v0, $a3, 0x10
/* 137C28 802448E8 00021403 */  sra   $v0, $v0, 0x10
/* 137C2C 802448EC 18400004 */  blez  $v0, .L80244900
/* 137C30 802448F0 AD030000 */   sw    $v1, ($t0)
/* 137C34 802448F4 30420FFF */  andi  $v0, $v0, 0xfff
/* 137C38 802448F8 00621025 */  or    $v0, $v1, $v0
/* 137C3C 802448FC AD020000 */  sw    $v0, ($t0)
.L80244900:
/* 137C40 80244900 8FA20010 */  lw    $v0, 0x10($sp)
/* 137C44 80244904 30420007 */  andi  $v0, $v0, 7
/* 137C48 80244908 00021E00 */  sll   $v1, $v0, 0x18
/* 137C4C 8024490C 00041400 */  sll   $v0, $a0, 0x10
/* 137C50 80244910 00023403 */  sra   $a2, $v0, 0x10
/* 137C54 80244914 18C00003 */  blez  $a2, .L80244924
/* 137C58 80244918 30C20FFF */   andi  $v0, $a2, 0xfff
/* 137C5C 8024491C 00021300 */  sll   $v0, $v0, 0xc
/* 137C60 80244920 00621825 */  or    $v1, $v1, $v0
.L80244924:
/* 137C64 80244924 00051400 */  sll   $v0, $a1, 0x10
/* 137C68 80244928 00021403 */  sra   $v0, $v0, 0x10
/* 137C6C 8024492C 18400004 */  blez  $v0, .L80244940
/* 137C70 80244930 AD030004 */   sw    $v1, 4($t0)
/* 137C74 80244934 30420FFF */  andi  $v0, $v0, 0xfff
/* 137C78 80244938 00621025 */  or    $v0, $v1, $v0
/* 137C7C 8024493C AD020004 */  sw    $v0, 4($t0)
.L80244940:
/* 137C80 80244940 3C03800A */  lui   $v1, 0x800a
/* 137C84 80244944 2463A66C */  addiu $v1, $v1, -0x5994
/* 137C88 80244948 8C620000 */  lw    $v0, ($v1)
/* 137C8C 8024494C 0040202D */  daddu $a0, $v0, $zero
/* 137C90 80244950 24420008 */  addiu $v0, $v0, 8
/* 137C94 80244954 AC620000 */  sw    $v0, ($v1)
/* 137C98 80244958 3C02E100 */  lui   $v0, 0xe100
/* 137C9C 8024495C AC820000 */  sw    $v0, ($a0)
/* 137CA0 80244960 04C10012 */  bgez  $a2, .L802449AC
/* 137CA4 80244964 24840004 */   addiu $a0, $a0, 4
/* 137CA8 80244968 000B1400 */  sll   $v0, $t3, 0x10
/* 137CAC 8024496C 00021403 */  sra   $v0, $v0, 0x10
/* 137CB0 80244970 04410007 */  bgez  $v0, .L80244990
/* 137CB4 80244974 00C20018 */   mult  $a2, $v0
/* 137CB8 80244978 00006812 */  mflo  $t5
/* 137CBC 8024497C 000D11C3 */  sra   $v0, $t5, 7
/* 137CC0 80244980 04410008 */  bgez  $v0, .L802449A4
/* 137CC4 80244984 01221023 */   subu  $v0, $t1, $v0
/* 137CC8 80244988 08091268 */  j     .L802449A0
/* 137CCC 8024498C 0000102D */   daddu $v0, $zero, $zero
.L80244990:
/* 137CD0 80244990 00006812 */  mflo  $t5
/* 137CD4 80244994 000D11C3 */  sra   $v0, $t5, 7
/* 137CD8 80244998 5C400001 */  bgtzl $v0, .L802449A0
/* 137CDC 8024499C 0000102D */   daddu $v0, $zero, $zero
.L802449A0:
/* 137CE0 802449A0 01221023 */  subu  $v0, $t1, $v0
.L802449A4:
/* 137CE4 802449A4 0809126C */  j     .L802449B0
/* 137CE8 802449A8 00023400 */   sll   $a2, $v0, 0x10
.L802449AC:
/* 137CEC 802449AC 00093400 */  sll   $a2, $t1, 0x10
.L802449B0:
/* 137CF0 802449B0 04A10016 */  bgez  $a1, .L80244A0C
/* 137CF4 802449B4 3142FFFF */   andi  $v0, $t2, 0xffff
/* 137CF8 802449B8 000C1400 */  sll   $v0, $t4, 0x10
/* 137CFC 802449BC 00021C03 */  sra   $v1, $v0, 0x10
/* 137D00 802449C0 0461000A */  bgez  $v1, .L802449EC
/* 137D04 802449C4 00051400 */   sll   $v0, $a1, 0x10
/* 137D08 802449C8 00021403 */  sra   $v0, $v0, 0x10
/* 137D0C 802449CC 00430018 */  mult  $v0, $v1
/* 137D10 802449D0 00006812 */  mflo  $t5
/* 137D14 802449D4 000D11C3 */  sra   $v0, $t5, 7
/* 137D18 802449D8 04420001 */  bltzl $v0, .L802449E0
/* 137D1C 802449DC 0000102D */   daddu $v0, $zero, $zero
.L802449E0:
/* 137D20 802449E0 01421023 */  subu  $v0, $t2, $v0
/* 137D24 802449E4 08091283 */  j     .L80244A0C
/* 137D28 802449E8 3042FFFF */   andi  $v0, $v0, 0xffff
.L802449EC:
/* 137D2C 802449EC 00021403 */  sra   $v0, $v0, 0x10
/* 137D30 802449F0 00430018 */  mult  $v0, $v1
/* 137D34 802449F4 00006812 */  mflo  $t5
/* 137D38 802449F8 000D11C3 */  sra   $v0, $t5, 7
/* 137D3C 802449FC 5C400001 */  bgtzl $v0, .L80244A04
/* 137D40 80244A00 0000102D */   daddu $v0, $zero, $zero
.L80244A04:
/* 137D44 80244A04 01421023 */  subu  $v0, $t2, $v0
/* 137D48 80244A08 3042FFFF */  andi  $v0, $v0, 0xffff
.L80244A0C:
/* 137D4C 80244A0C 00C21025 */  or    $v0, $a2, $v0
/* 137D50 80244A10 AC820000 */  sw    $v0, ($a0)
/* 137D54 80244A14 3C03800A */  lui   $v1, 0x800a
/* 137D58 80244A18 2463A66C */  addiu $v1, $v1, -0x5994
/* 137D5C 80244A1C 8C620000 */  lw    $v0, ($v1)
/* 137D60 80244A20 0040202D */  daddu $a0, $v0, $zero
/* 137D64 80244A24 24420008 */  addiu $v0, $v0, 8
/* 137D68 80244A28 AC620000 */  sw    $v0, ($v1)
/* 137D6C 80244A2C 3C02F100 */  lui   $v0, 0xf100
/* 137D70 80244A30 AC820000 */  sw    $v0, ($a0)
/* 137D74 80244A34 000B1400 */  sll   $v0, $t3, 0x10
/* 137D78 80244A38 3183FFFF */  andi  $v1, $t4, 0xffff
/* 137D7C 80244A3C 00431025 */  or    $v0, $v0, $v1
/* 137D80 80244A40 AC820004 */  sw    $v0, 4($a0)
.L80244A44:
/* 137D84 80244A44 03E00008 */  jr    $ra
/* 137D88 80244A48 00000000 */   nop   

