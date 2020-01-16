
# Start in 16-bit Real Mode, this code is loaded
# from the first sector of the fixed drive into
# physical adress 0x7C00. It begins executing in 
# Real Mode with %cs = 0 and %ip = 7C00h.

.equ PMODE_CSEG, 0x08   # kernel code segment alias
.equ PMODE_DSEG, 0x10   # kernel data segment alias
.equ CR0_SET_PE, 0x01   # bit mask to set PE flag on control register 0.

# Switch from Real Mode to Protected Mode
lgdt gdtdesc
movl %cr0, %eax
orl  $CR0_PE_ON, %eax
movl %eax, %cr0
