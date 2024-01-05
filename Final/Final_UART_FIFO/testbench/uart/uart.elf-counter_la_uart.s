	.file	"counter_la_uart.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/Final_test-main/testbench/uart" "counter_la_uart.c"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB321:
	.file 1 "counter_la_uart.c"
	.loc 1 44 1
	.cfi_startproc
	.loc 1 46 5
	.loc 1 74 5
	.loc 1 74 53 is_stmt 0
	li	a2,1
	.loc 1 76 39
	li	a3,8192
	.loc 1 74 53
	li	a4,-268419072
	.loc 1 76 39
	li	a5,637534208
	.loc 1 74 53
	sw	a2,-2048(a4)
	.loc 1 76 5 is_stmt 1
	.loc 1 76 39 is_stmt 0
	addi	a4,a3,-2039
	sw	a4,160(a5)
	.loc 1 77 5 is_stmt 1
	.loc 1 77 39 is_stmt 0
	sw	a4,156(a5)
	.loc 1 78 5 is_stmt 1
	.loc 1 78 39 is_stmt 0
	sw	a4,152(a5)
	.loc 1 79 5 is_stmt 1
	.loc 1 79 39 is_stmt 0
	sw	a4,148(a5)
	.loc 1 80 5 is_stmt 1
	.loc 1 80 39 is_stmt 0
	sw	a4,144(a5)
	.loc 1 81 5 is_stmt 1
	.loc 1 81 39 is_stmt 0
	sw	a4,140(a5)
	.loc 1 82 5 is_stmt 1
	.loc 1 82 39 is_stmt 0
	sw	a4,136(a5)
	.loc 1 83 5 is_stmt 1
	.loc 1 83 39 is_stmt 0
	sw	a4,132(a5)
	.loc 1 84 5 is_stmt 1
	.loc 1 84 39 is_stmt 0
	sw	a4,128(a5)
	.loc 1 85 5 is_stmt 1
	.loc 1 85 39 is_stmt 0
	sw	a4,124(a5)
	.loc 1 86 5 is_stmt 1
	.loc 1 86 39 is_stmt 0
	sw	a4,120(a5)
	.loc 1 87 5 is_stmt 1
	.loc 1 87 39 is_stmt 0
	sw	a4,116(a5)
	.loc 1 88 5 is_stmt 1
	.loc 1 88 39 is_stmt 0
	sw	a4,112(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 89 39 is_stmt 0
	sw	a4,108(a5)
	.loc 1 90 5 is_stmt 1
	.loc 1 90 39 is_stmt 0
	sw	a4,104(a5)
	.loc 1 91 5 is_stmt 1
	.loc 1 91 39 is_stmt 0
	sw	a4,100(a5)
	.loc 1 93 5 is_stmt 1
	.loc 1 93 39 is_stmt 0
	sw	a4,96(a5)
	.loc 1 94 5 is_stmt 1
	.loc 1 94 39 is_stmt 0
	sw	a4,92(a5)
	.loc 1 95 5 is_stmt 1
	.loc 1 95 39 is_stmt 0
	sw	a4,88(a5)
	.loc 1 96 5 is_stmt 1
	.loc 1 96 39 is_stmt 0
	sw	a4,84(a5)
	.loc 1 97 5 is_stmt 1
	.loc 1 97 39 is_stmt 0
	sw	a4,80(a5)
	.loc 1 98 5 is_stmt 1
	.loc 1 98 39 is_stmt 0
	sw	a4,76(a5)
	.loc 1 99 5 is_stmt 1
	.loc 1 99 39 is_stmt 0
	sw	a4,72(a5)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 39 is_stmt 0
	sw	a4,68(a5)
	.loc 1 101 5 is_stmt 1
	.loc 1 101 39 is_stmt 0
	sw	a4,64(a5)
	.loc 1 102 5 is_stmt 1
	.loc 1 102 39 is_stmt 0
	sw	a4,52(a5)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 39 is_stmt 0
	sw	a4,48(a5)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 39 is_stmt 0
	sw	a4,44(a5)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 39 is_stmt 0
	sw	a4,40(a5)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 39 is_stmt 0
	sw	a4,36(a5)
	.loc 1 108 5 is_stmt 1
	.loc 1 108 39 is_stmt 0
	addi	a3,a3,-2040
	sw	a3,60(a5)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 39 is_stmt 0
	li	a4,1026
	sw	a4,56(a5)
	.loc 1 113 2 is_stmt 1
	.loc 1 114 43 is_stmt 0
	li	a3,1
	.loc 1 114 10
	li	a4,637534208
	.loc 1 113 36
	sw	a2,0(a5)
	.loc 1 114 2 is_stmt 1
.L2:
	.loc 1 114 43 discriminator 1
	.loc 1 114 10 is_stmt 0 discriminator 1
	lw	a5,0(a4)
	.loc 1 114 43 discriminator 1
	beq	a5,a3,.L2
	.loc 1 118 2 is_stmt 1
	.loc 1 118 114 is_stmt 0
	li	a5,-268423168
	sw	zero,12(a5)
	.loc 1 118 57
	sw	zero,28(a5)
	.loc 1 119 2 is_stmt 1
	.loc 1 119 112 is_stmt 0
	li	a2,-1
	sw	a2,8(a5)
	.loc 1 119 56
	sw	a2,24(a5)
	.loc 1 120 2 is_stmt 1
	.loc 1 120 112 is_stmt 0
	sw	zero,4(a5)
	.loc 1 120 56
	sw	zero,20(a5)
	.loc 1 121 2 is_stmt 1
	.loc 1 121 100 is_stmt 0
	sw	zero,0(a5)
	.loc 1 121 50
	sw	zero,16(a5)
	.loc 1 124 2 is_stmt 1
	.loc 1 124 36 is_stmt 0
	li	a2,-1421869056
	sw	a2,12(a4)
	.loc 1 127 2 is_stmt 1
	.loc 1 127 56 is_stmt 0
	sw	zero,56(a5)
	.loc 1 130 2 is_stmt 1
	.loc 1 130 112 is_stmt 0
	sw	zero,8(a5)
	.loc 1 130 56
	sw	zero,24(a5)
	.loc 1 152 2 is_stmt 1
	.loc 1 152 36 is_stmt 0
	li	a5,-1420754944
	sw	a5,12(a4)
	.loc 1 156 2 is_stmt 1
.LBB12:
.LBB13:
	.file 2 "../../firmware/irq_vex.h"
	.loc 2 24 2
	.loc 2 25 2
 #APP
# 25 "../../firmware/irq_vex.h" 1
	csrr a5, 3008
# 0 "" 2
.LVL0:
	.loc 2 26 2
 #NO_APP
.LBE13:
.LBE12:
	.loc 1 157 2
	.loc 1 158 2
.LBB14:
.LBB15:
	.loc 2 31 2
	ori	a5,a5,4
.LVL1:
 #APP
# 31 "../../firmware/irq_vex.h" 1
	csrw 3008, a5
# 0 "" 2
.LVL2:
 #NO_APP
.LBE15:
.LBE14:
	.loc 1 160 2
.LBB16:
	.file 3 "../../firmware/csr.h"
	.loc 3 806 2
.LBB17:
.LBB18:
	.file 4 "../../firmware/hw/common.h"
	.loc 4 34 2
	.loc 4 34 32 is_stmt 0
	li	a5,-268406784
.LVL3:
	sw	a3,-2028(a5)
.LVL4:
.LBE18:
.LBE17:
.LBE16:
	.loc 1 162 1
	ret
	.cfi_endproc
.LFE321:
	.size	main, .-main
	.text
.Letext0:
	.file 5 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL5
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x113
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST0
	.byte	0x3
	.4byte	0x12d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x9c
	.byte	0x9
	.4byte	0xb7
	.byte	0xa
	.4byte	0x13e
	.byte	0
	.byte	0x3
	.4byte	0x113
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x9e
	.byte	0x2
	.4byte	0xd4
	.byte	0x2
	.4byte	0x120
	.4byte	.LLST1
	.byte	0
	.byte	0xb
	.4byte	0x14b
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0xa0
	.byte	0x2
	.byte	0x2
	.4byte	0x159
	.4byte	.LLST2
	.byte	0xc
	.4byte	0x165
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x3
	.2byte	0x326
	.byte	0x2
	.byte	0x2
	.4byte	0x176
	.4byte	.LLST3
	.byte	0x2
	.4byte	0x16e
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1d
	.byte	0x14
	.byte	0x3
	.4byte	0x12d
	.byte	0xe
	.4byte	.LASF13
	.byte	0x2
	.byte	0x1d
	.byte	0x2d
	.4byte	0x71
	.byte	0
	.byte	0xf
	.4byte	.LASF17
	.byte	0x2
	.byte	0x16
	.byte	0x1c
	.4byte	0x71
	.byte	0x3
	.4byte	0x14b
	.byte	0x10
	.4byte	.LASF13
	.byte	0x2
	.byte	0x18
	.byte	0xf
	.4byte	0x71
	.byte	0
	.byte	0x11
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x325
	.byte	0x14
	.byte	0x3
	.4byte	0x165
	.byte	0x12
	.string	"v"
	.byte	0x3
	.2byte	0x325
	.byte	0x38
	.4byte	0x50
	.byte	0
	.byte	0x13
	.4byte	.LASF18
	.byte	0x4
	.byte	0x20
	.byte	0x14
	.byte	0x3
	.byte	0x4
	.string	"v"
	.byte	0x33
	.4byte	0x5c
	.byte	0x4
	.string	"a"
	.byte	0x44
	.4byte	0x5c
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0x21
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x4
	.byte	0x3b
	.byte	0x21
	.byte	0x20
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST0:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5f
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL0
	.4byte	.LVL1
	.byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x1
	.byte	0x5f
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL4
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST3:
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL4
	.byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0xf0006814
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL5:
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"csr_write_simple"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF16:
	.string	"main"
.LASF17:
	.string	"irq_getmask"
.LASF11:
	.string	"irq_setmask"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF12:
	.string	"user_irq_0_ev_enable_write"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"mask"
.LASF3:
	.string	"short int"
.LASF15:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/Desktop/Final_test-main/testbench/uart"
.LASF0:
	.string	"counter_la_uart.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
