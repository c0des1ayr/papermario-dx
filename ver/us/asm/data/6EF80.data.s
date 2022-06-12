.include "macro.inc"

.section .data

dlabel D_80093B80
.word 0x00000000

dlabel D_80093B84
.word 0x4E755379, 0x7374656D, 0x322E3035, 0x00000000

dlabel D_80093B94
.word D_80093B84, 0x00000000, 0x00000000

dlabel nugfx_ucode
.word gspF3DEX2kawase_fifo_text_bin, gspF3DEX2kawase_fifo_data_bin

dlabel FrameBuf
.word D_8038F800, D_803B5000, heap_battleHead, 0x00000000

dlabel rdpstateinit_dl
.word 0xFB000000, 0x00000000, 0xFA000000, 0x00000000, 0xF9000000, 0x00000000, 0xF8000000, 0x00000000, 0xF7000000, 0x00000000, 0xEE000000, 0x00000000, 0xEC000000, 0x00000000, 0xEB000000, 0x00000000, 0xEA000000, 0x00000000, 0xFCFFFFFF, 0xFFFE793C, 0xED000000, 0x005003C0, 0xF5100000, 0x00000000, 0xF5100000, 0x01000000, 0xF5100000, 0x02000000, 0xF5100000, 0x03000000, 0xF5100000, 0x04000000, 0xF5100000, 0x05000000, 0xF5100000, 0x06000000, 0xF5100000, 0x07000000, 0xF2000000, 0x00000000, 0xF2000000, 0x01000000, 0xF2000000, 0x02000000, 0xF2000000, 0x03000000, 0xF2000000, 0x04000000, 0xF2000000, 0x05000000, 0xF2000000, 0x06000000, 0xF2000000, 0x07000000, 0xE7000000, 0x00000000, 0xDF000000, 0x00000000

dlabel nuContPakCompanyCode
.short 0x0000, 0x0000

dlabel nuContPakGameCode
.word 0x00000000

dlabel D_80093CA8
.word 0x00000000, contPakOpen, contPakFree, contPakFileOpen, contPakFileReadWrite, contPakFileDelete, contPakFileState, contPakFileNum, contPakRepairId, 0x00000000

dlabel nuContPakCallBack
.word 0x00000000, D_80093CA8, 0x02000000, 0x00000000