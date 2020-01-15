
lgdt gdtdesc
movl %cr0, %eax
orl  $CR0_PE_ON, %eax
movl %eax, %cr0
