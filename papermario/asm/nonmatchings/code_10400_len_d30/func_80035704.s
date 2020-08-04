.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80035704
/* 010B04 80035704 3C03800A */  lui   $v1, 0x800a
/* 010B08 80035708 80630931 */  lb    $v1, 0x931($v1)
/* 010B0C 8003570C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 010B10 80035710 AFBF0024 */  sw    $ra, 0x24($sp)
/* 010B14 80035714 AFB20020 */  sw    $s2, 0x20($sp)
/* 010B18 80035718 AFB1001C */  sw    $s1, 0x1c($sp)
/* 010B1C 8003571C 2C620005 */  sltiu $v0, $v1, 5
/* 010B20 80035720 10400101 */  beqz  $v0, .L80035B28
/* 010B24 80035724 AFB00018 */   sw    $s0, 0x18($sp)
/* 010B28 80035728 00031080 */  sll   $v0, $v1, 2
/* 010B2C 8003572C 3C01800A */  lui   $at, 0x800a
/* 010B30 80035730 00220821 */  addu  $at, $at, $v0
/* 010B34 80035734 8C2282E8 */  lw    $v0, -0x7d18($at)
/* 010B38 80035738 00400008 */  jr    $v0
/* 010B3C 8003573C 00000000 */   nop   
/* 010B40 80035740 3C10800A */  lui   $s0, 0x800a
/* 010B44 80035744 26100932 */  addiu $s0, $s0, 0x932
/* 010B48 80035748 86020000 */  lh    $v0, ($s0)
/* 010B4C 8003574C 96030000 */  lhu   $v1, ($s0)
/* 010B50 80035750 1040000F */  beqz  $v0, .L80035790
/* 010B54 80035754 2462FFEC */   addiu $v0, $v1, -0x14
/* 010B58 80035758 A6020000 */  sh    $v0, ($s0)
/* 010B5C 8003575C 00021400 */  sll   $v0, $v0, 0x10
/* 010B60 80035760 04420001 */  bltzl $v0, .L80035768
/* 010B64 80035764 A6000000 */   sh    $zero, ($s0)
.L80035768:
/* 010B68 80035768 86020000 */  lh    $v0, ($s0)
/* 010B6C 8003576C 44820000 */  mtc1  $v0, $f0
/* 010B70 80035770 00000000 */  nop   
/* 010B74 80035774 46800020 */  cvt.s.w $f0, $f0
/* 010B78 80035778 44050000 */  mfc1  $a1, $f0
/* 010B7C 8003577C 0C04DF62 */  jal   func_80137D88
/* 010B80 80035780 0000202D */   daddu $a0, $zero, $zero
/* 010B84 80035784 86020000 */  lh    $v0, ($s0)
/* 010B88 80035788 144000E7 */  bnez  $v0, .L80035B28
/* 010B8C 8003578C 00000000 */   nop   
.L80035790:
/* 010B90 80035790 24020001 */  addiu $v0, $zero, 1
/* 010B94 80035794 3C01800A */  lui   $at, 0x800a
/* 010B98 80035798 A0220931 */  sb    $v0, 0x931($at)
/* 010B9C 8003579C 0800D6CA */  j     .L80035B28
/* 010BA0 800357A0 00000000 */   nop   

/* 010BA4 800357A4 3C10800A */  lui   $s0, 0x800a
/* 010BA8 800357A8 26100932 */  addiu $s0, $s0, 0x932
/* 010BAC 800357AC 241100FF */  addiu $s1, $zero, 0xff
/* 010BB0 800357B0 86020000 */  lh    $v0, ($s0)
/* 010BB4 800357B4 96030000 */  lhu   $v1, ($s0)
/* 010BB8 800357B8 10510011 */  beq   $v0, $s1, .L80035800
/* 010BBC 800357BC 24620014 */   addiu $v0, $v1, 0x14
/* 010BC0 800357C0 A6020000 */  sh    $v0, ($s0)
/* 010BC4 800357C4 00021400 */  sll   $v0, $v0, 0x10
/* 010BC8 800357C8 00021403 */  sra   $v0, $v0, 0x10
/* 010BCC 800357CC 28420100 */  slti  $v0, $v0, 0x100
/* 010BD0 800357D0 50400001 */  beql  $v0, $zero, .L800357D8
/* 010BD4 800357D4 A6110000 */   sh    $s1, ($s0)
.L800357D8:
/* 010BD8 800357D8 86020000 */  lh    $v0, ($s0)
/* 010BDC 800357DC 44820000 */  mtc1  $v0, $f0
/* 010BE0 800357E0 00000000 */  nop   
/* 010BE4 800357E4 46800020 */  cvt.s.w $f0, $f0
/* 010BE8 800357E8 44050000 */  mfc1  $a1, $f0
/* 010BEC 800357EC 0C04DF62 */  jal   func_80137D88
/* 010BF0 800357F0 0000202D */   daddu $a0, $zero, $zero
/* 010BF4 800357F4 86020000 */  lh    $v0, ($s0)
/* 010BF8 800357F8 145100CB */  bne   $v0, $s1, .L80035B28
/* 010BFC 800357FC 00000000 */   nop   
.L80035800:
/* 010C00 80035800 24020002 */  addiu $v0, $zero, 2
/* 010C04 80035804 3C01800A */  lui   $at, 0x800a
/* 010C08 80035808 A0220931 */  sb    $v0, 0x931($at)
/* 010C0C 8003580C 0800D6CA */  j     .L80035B28
/* 010C10 80035810 00000000 */   nop   

/* 010C14 80035814 3C06800A */  lui   $a2, 0x800a
/* 010C18 80035818 24C60930 */  addiu $a2, $a2, 0x930
/* 010C1C 8003581C 80C30000 */  lb    $v1, ($a2)
/* 010C20 80035820 24020003 */  addiu $v0, $zero, 3
/* 010C24 80035824 14620006 */  bne   $v1, $v0, .L80035840
/* 010C28 80035828 00000000 */   nop   
/* 010C2C 8003582C 3C03800A */  lui   $v1, 0x800a
/* 010C30 80035830 2463A650 */  addiu $v1, $v1, -0x59b0
/* 010C34 80035834 8C620000 */  lw    $v0, ($v1)
/* 010C38 80035838 34420008 */  ori   $v0, $v0, 8
/* 010C3C 8003583C AC620000 */  sw    $v0, ($v1)
.L80035840:
/* 010C40 80035840 80C20000 */  lb    $v0, ($a2)
/* 010C44 80035844 90C30000 */  lbu   $v1, ($a2)
/* 010C48 80035848 044000B7 */  bltz  $v0, .L80035B28
/* 010C4C 8003584C 2462FFFF */   addiu $v0, $v1, -1
/* 010C50 80035850 A0C20000 */  sb    $v0, ($a2)
/* 010C54 80035854 00021600 */  sll   $v0, $v0, 0x18
/* 010C58 80035858 14400067 */  bnez  $v0, .L800359F8
/* 010C5C 8003585C 24050003 */   addiu $a1, $zero, 3
/* 010C60 80035860 3C048007 */  lui   $a0, 0x8007
/* 010C64 80035864 24847980 */  addiu $a0, $a0, 0x7980
/* 010C68 80035868 2402FFFF */  addiu $v0, $zero, -1
/* 010C6C 8003586C 0C017CBC */  jal   nuGfxSetCfb
/* 010C70 80035870 A0C20000 */   sb    $v0, ($a2)
/* 010C74 80035874 0C0912C0 */  jal   func_80244B00
/* 010C78 80035878 00000000 */   nop   
/* 010C7C 8003587C 3C04800A */  lui   $a0, 0x800a
/* 010C80 80035880 2484A650 */  addiu $a0, $a0, -0x59b0
/* 010C84 80035884 8C820000 */  lw    $v0, ($a0)
/* 010C88 80035888 2403FFF7 */  addiu $v1, $zero, -9
/* 010C8C 8003588C 00431024 */  and   $v0, $v0, $v1
/* 010C90 80035890 0C016AFA */  jal   get_current_map_header
/* 010C94 80035894 AC820000 */   sw    $v0, ($a0)
/* 010C98 80035898 3C108007 */  lui   $s0, 0x8007
/* 010C9C 8003589C 2610419C */  addiu $s0, $s0, 0x419c
/* 010CA0 800358A0 8E040000 */  lw    $a0, ($s0)
/* 010CA4 800358A4 84830086 */  lh    $v1, 0x86($a0)
/* 010CA8 800358A8 00031900 */  sll   $v1, $v1, 4
/* 010CAC 800358AC 3C058009 */  lui   $a1, 0x8009
/* 010CB0 800358B0 00A32821 */  addu  $a1, $a1, $v1
/* 010CB4 800358B4 8CA534F4 */  lw    $a1, 0x34f4($a1)
/* 010CB8 800358B8 8483008C */  lh    $v1, 0x8c($a0)
/* 010CBC 800358BC 0040902D */  daddu $s2, $v0, $zero
/* 010CC0 800358C0 A0800070 */  sb    $zero, 0x70($a0)
/* 010CC4 800358C4 00031940 */  sll   $v1, $v1, 5
/* 010CC8 800358C8 0C016BE1 */  jal   func_8005AF84
/* 010CCC 800358CC 00A38821 */   addu  $s1, $a1, $v1
/* 010CD0 800358D0 0C00AB37 */  jal   func_8002ACDC
/* 010CD4 800358D4 00000000 */   nop   
/* 010CD8 800358D8 0C05259C */  jal   func_80149670
/* 010CDC 800358DC 24040001 */   addiu $a0, $zero, 1
/* 010CE0 800358E0 8E020000 */  lw    $v0, ($s0)
/* 010CE4 800358E4 0C0B763E */  jal   func_802DD8F8
/* 010CE8 800358E8 80440084 */   lb    $a0, 0x84($v0)
/* 010CEC 800358EC 0C0457FA */  jal   init_model_data
/* 010CF0 800358F0 00000000 */   nop   
/* 010CF4 800358F4 0C05203C */  jal   func_801480F0
/* 010CF8 800358F8 00000000 */   nop   
/* 010CFC 800358FC 0C048316 */  jal   func_80120C58
/* 010D00 80035900 00000000 */   nop   
/* 010D04 80035904 0C0478C4 */  jal   func_8011E310
/* 010D08 80035908 00000000 */   nop   
/* 010D0C 8003590C 0C048C45 */  jal   func_80123114
/* 010D10 80035910 00000000 */   nop   
/* 010D14 80035914 0000202D */  daddu $a0, $zero, $zero
/* 010D18 80035918 0C0514BA */  jal   func_801452E8
/* 010D1C 8003591C 0080282D */   daddu $a1, $a0, $zero
/* 010D20 80035920 0C0504C0 */  jal   init_menu_icon_list
/* 010D24 80035924 00000000 */   nop   
/* 010D28 80035928 0C04C433 */  jal   init_item_entity_list
/* 010D2C 8003592C 00000000 */   nop   
/* 010D30 80035930 0C0B0CBB */  jal   init_script_list
/* 010D34 80035934 00000000 */   nop   
/* 010D38 80035938 0C00E14B */  jal   init_npc_list
/* 010D3C 8003593C 00000000 */   nop   
/* 010D40 80035940 0C044396 */  jal   func_80110E58
/* 010D44 80035944 00000000 */   nop   
/* 010D48 80035948 0C0515CA */  jal   init_trigger_list
/* 010D4C 8003594C 00000000 */   nop   
/* 010D50 80035950 3C04800E */  lui   $a0, 0x800e
/* 010D54 80035954 24849230 */  addiu $a0, $a0, -0x6dd0
/* 010D58 80035958 0C016B3A */  jal   load_asset_by_name
/* 010D5C 8003595C 27A50010 */   addiu $a1, $sp, 0x10
/* 010D60 80035960 0040802D */  daddu $s0, $v0, $zero
/* 010D64 80035964 3C058021 */  lui   $a1, 0x8021
/* 010D68 80035968 24A50000 */  addiu $a1, $a1, 0
/* 010D6C 8003596C 0C01BB7C */  jal   decode_yay0
/* 010D70 80035970 0200202D */   daddu $a0, $s0, $zero
/* 010D74 80035974 0C00AB1E */  jal   general_heap_free
/* 010D78 80035978 0200202D */   daddu $a0, $s0, $zero
/* 010D7C 8003597C 0C016BE5 */  jal   initialize_collision
/* 010D80 80035980 00000000 */   nop   
/* 010D84 80035984 0C016C16 */  jal   load_collision
/* 010D88 80035988 00000000 */   nop   
/* 010D8C 8003598C 8E240008 */  lw    $a0, 8($s1)
/* 010D90 80035990 10800004 */  beqz  $a0, .L800359A4
/* 010D94 80035994 00000000 */   nop   
/* 010D98 80035998 8E25000C */  lw    $a1, 0xc($s1)
/* 010D9C 8003599C 0C00A5CF */  jal   dma_copy
/* 010DA0 800359A0 8E260010 */   lw    $a2, 0x10($s1)
.L800359A4:
/* 010DA4 800359A4 0C05175C */  jal   load_map_bg
/* 010DA8 800359A8 8E240014 */   lw    $a0, 0x14($s1)
/* 010DAC 800359AC 8E440038 */  lw    $a0, 0x38($s2)
/* 010DB0 800359B0 50800005 */  beql  $a0, $zero, .L800359C8
/* 010DB4 800359B4 24040128 */   addiu $a0, $zero, 0x128
/* 010DB8 800359B8 0C05178A */  jal   read_background_size
/* 010DBC 800359BC 00000000 */   nop   
/* 010DC0 800359C0 0800D676 */  j     .L800359D8
/* 010DC4 800359C4 00000000 */   nop   

.L800359C8:
/* 010DC8 800359C8 240500C8 */  addiu $a1, $zero, 0xc8
/* 010DCC 800359CC 2406000C */  addiu $a2, $zero, 0xc
/* 010DD0 800359D0 0C05179C */  jal   set_background_size
/* 010DD4 800359D4 24070014 */   addiu $a3, $zero, 0x14
.L800359D8:
/* 010DD8 800359D8 0C04584B */  jal   calculate_model_sizes
/* 010DDC 800359DC 00000000 */   nop   
/* 010DE0 800359E0 0C00EC6C */  jal   func_8003B1B0
/* 010DE4 800359E4 00000000 */   nop   
/* 010DE8 800359E8 0C03A631 */  jal   func_800E98C4
/* 010DEC 800359EC 00000000 */   nop   
/* 010DF0 800359F0 0C009C22 */  jal   func_80027088
/* 010DF4 800359F4 24040001 */   addiu $a0, $zero, 1
.L800359F8:
/* 010DF8 800359F8 0C051FB1 */  jal   func_80147EC4
/* 010DFC 800359FC 0000202D */   daddu $a0, $zero, $zero
/* 010E00 80035A00 24020003 */  addiu $v0, $zero, 3
/* 010E04 80035A04 3C01800A */  lui   $at, 0x800a
/* 010E08 80035A08 A0220931 */  sb    $v0, 0x931($at)
/* 010E0C 80035A0C 0C037DD0 */  jal   func_800DF740
/* 010E10 80035A10 00000000 */   nop   
/* 010E14 80035A14 0C00E64C */  jal   func_80039930
/* 010E18 80035A18 00000000 */   nop   
/* 010E1C 80035A1C 0C00F949 */  jal   func_8003E524
/* 010E20 80035A20 00000000 */   nop   
/* 010E24 80035A24 0C016754 */  jal   func_80059D50
/* 010E28 80035A28 00000000 */   nop   
/* 010E2C 80035A2C 3C03800A */  lui   $v1, 0x800a
/* 010E30 80035A30 24630932 */  addiu $v1, $v1, 0x932
/* 010E34 80035A34 94620000 */  lhu   $v0, ($v1)
/* 010E38 80035A38 2442FFEC */  addiu $v0, $v0, -0x14
/* 010E3C 80035A3C A4620000 */  sh    $v0, ($v1)
/* 010E40 80035A40 00021400 */  sll   $v0, $v0, 0x10
/* 010E44 80035A44 04420001 */  bltzl $v0, .L80035A4C
/* 010E48 80035A48 A4600000 */   sh    $zero, ($v1)
.L80035A4C:
/* 010E4C 80035A4C 84620000 */  lh    $v0, ($v1)
/* 010E50 80035A50 44820000 */  mtc1  $v0, $f0
/* 010E54 80035A54 00000000 */  nop   
/* 010E58 80035A58 46800020 */  cvt.s.w $f0, $f0
/* 010E5C 80035A5C 44050000 */  mfc1  $a1, $f0
/* 010E60 80035A60 0800D6C8 */  j     .L80035B20
/* 010E64 80035A64 0000202D */   daddu $a0, $zero, $zero

/* 010E68 80035A68 0C037DD0 */  jal   func_800DF740
/* 010E6C 80035A6C 00000000 */   nop   
/* 010E70 80035A70 0C00E64C */  jal   func_80039930
/* 010E74 80035A74 00000000 */   nop   
/* 010E78 80035A78 0C00F949 */  jal   func_8003E524
/* 010E7C 80035A7C 00000000 */   nop   
/* 010E80 80035A80 0C016754 */  jal   func_80059D50
/* 010E84 80035A84 00000000 */   nop   
/* 010E88 80035A88 3C04800A */  lui   $a0, 0x800a
/* 010E8C 80035A8C 24840932 */  addiu $a0, $a0, 0x932
/* 010E90 80035A90 84820000 */  lh    $v0, ($a0)
/* 010E94 80035A94 94830000 */  lhu   $v1, ($a0)
/* 010E98 80035A98 14400006 */  bnez  $v0, .L80035AB4
/* 010E9C 80035A9C 2462FFEC */   addiu $v0, $v1, -0x14
/* 010EA0 80035AA0 24020004 */  addiu $v0, $zero, 4
/* 010EA4 80035AA4 3C01800A */  lui   $at, 0x800a
/* 010EA8 80035AA8 A0220931 */  sb    $v0, 0x931($at)
/* 010EAC 80035AAC 0800D6CA */  j     .L80035B28
/* 010EB0 80035AB0 00000000 */   nop   

.L80035AB4:
/* 010EB4 80035AB4 A4820000 */  sh    $v0, ($a0)
/* 010EB8 80035AB8 00021400 */  sll   $v0, $v0, 0x10
/* 010EBC 80035ABC 04420001 */  bltzl $v0, .L80035AC4
/* 010EC0 80035AC0 A4800000 */   sh    $zero, ($a0)
.L80035AC4:
/* 010EC4 80035AC4 84820000 */  lh    $v0, ($a0)
/* 010EC8 80035AC8 44820000 */  mtc1  $v0, $f0
/* 010ECC 80035ACC 00000000 */  nop   
/* 010ED0 80035AD0 46800020 */  cvt.s.w $f0, $f0
/* 010ED4 80035AD4 44050000 */  mfc1  $a1, $f0
/* 010ED8 80035AD8 0800D6C8 */  j     .L80035B20
/* 010EDC 80035ADC 0000202D */   daddu $a0, $zero, $zero

/* 010EE0 80035AE0 0C009C22 */  jal   func_80027088
/* 010EE4 80035AE4 0000202D */   daddu $a0, $zero, $zero
/* 010EE8 80035AE8 0C037DD0 */  jal   func_800DF740
/* 010EEC 80035AEC 00000000 */   nop   
/* 010EF0 80035AF0 0C00E64C */  jal   func_80039930
/* 010EF4 80035AF4 00000000 */   nop   
/* 010EF8 80035AF8 0C00F949 */  jal   func_8003E524
/* 010EFC 80035AFC 00000000 */   nop   
/* 010F00 80035B00 0C016754 */  jal   func_80059D50
/* 010F04 80035B04 00000000 */   nop   
/* 010F08 80035B08 0C038069 */  jal   func_800E01A4
/* 010F0C 80035B0C 00000000 */   nop   
/* 010F10 80035B10 0C00CD3C */  jal   set_game_mode
/* 010F14 80035B14 24040004 */   addiu $a0, $zero, 4
/* 010F18 80035B18 3C05BF80 */  lui   $a1, 0xbf80
/* 010F1C 80035B1C 240400FF */  addiu $a0, $zero, 0xff
.L80035B20:
/* 010F20 80035B20 0C04DF62 */  jal   func_80137D88
/* 010F24 80035B24 00000000 */   nop   
.L80035B28:
/* 010F28 80035B28 8FBF0024 */  lw    $ra, 0x24($sp)
/* 010F2C 80035B2C 8FB20020 */  lw    $s2, 0x20($sp)
/* 010F30 80035B30 8FB1001C */  lw    $s1, 0x1c($sp)
/* 010F34 80035B34 8FB00018 */  lw    $s0, 0x18($sp)
/* 010F38 80035B38 03E00008 */  jr    $ra
/* 010F3C 80035B3C 27BD0028 */   addiu $sp, $sp, 0x28

