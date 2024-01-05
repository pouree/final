	.file	"uart.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/Final_test-main/testbench/uart" "uart.c"
	.section	.mprj,"ax",@progbits
	.align	2
	.globl	uart_write
	.type	uart_write, @function
uart_write:
.LFB321:
	.file 1 "uart.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 8 5
	.loc 1 8 14 is_stmt 0
	li	a4,805306368
.L2:
	.loc 1 8 11 is_stmt 1 discriminator 1
	.loc 1 8 14 is_stmt 0 discriminator 1
	lw	a5,8(a4)
	.loc 1 8 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L2
	.loc 1 9 5 is_stmt 1
	.loc 1 9 39 is_stmt 0
	sw	a0,4(a4)
	.loc 1 10 1
	ret
	.cfi_endproc
.LFE321:
	.size	uart_write, .-uart_write
	.align	2
	.globl	uart_write_char
	.type	uart_write_char, @function
uart_write_char:
.LFB322:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 14 2
	.loc 1 14 5 is_stmt 0
	li	a5,10
	beq	a0,a5,.L11
.L6:
	.loc 1 18 14 discriminator 1
	li	a4,805306368
.L8:
	.loc 1 18 11 is_stmt 1 discriminator 1
	.loc 1 18 14 is_stmt 0 discriminator 1
	lw	a5,8(a4)
	.loc 1 18 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L8
	.loc 1 19 5 is_stmt 1
	.loc 1 19 39 is_stmt 0
	sw	a0,4(a4)
	.loc 1 20 1
	ret
.L11:
.LBB6:
.LBB7:
	.loc 1 18 14
	li	a4,805306368
.L7:
	.loc 1 18 11 is_stmt 1
	.loc 1 18 14 is_stmt 0
	lw	a5,8(a4)
	.loc 1 18 11
	andi	a5,a5,8
	bne	a5,zero,.L7
	.loc 1 19 5 is_stmt 1
	.loc 1 19 39 is_stmt 0
	li	a5,13
	sw	a5,4(a4)
	.loc 1 20 1
	j	.L6
.LBE7:
.LBE6:
	.cfi_endproc
.LFE322:
	.size	uart_write_char, .-uart_write_char
	.align	2
	.globl	uart_write_string
	.type	uart_write_string, @function
uart_write_string:
.LFB323:
	.loc 1 23 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 24 5
	.loc 1 24 12
	lbu	a3,0(a0)
	beq	a3,zero,.L12
.LBB12:
.LBB13:
	.loc 1 14 5 is_stmt 0
	li	a2,10
.LBB14:
.LBB15:
	.loc 1 18 14
	li	a4,805306368
	.loc 1 19 39
	li	a1,13
.L17:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 25 9 is_stmt 1
	.loc 1 25 28 is_stmt 0
	addi	a0,a0,1
.LVL3:
.LBB20:
.LBB18:
	.loc 1 14 2 is_stmt 1
	.loc 1 14 5 is_stmt 0
	beq	a3,a2,.L15
.L16:
	.loc 1 18 11 is_stmt 1
	.loc 1 18 14 is_stmt 0
	lw	a5,8(a4)
	.loc 1 18 11
	andi	a5,a5,8
	bne	a5,zero,.L16
	.loc 1 19 5 is_stmt 1
	.loc 1 19 39 is_stmt 0
	sw	a3,4(a4)
.LVL4:
.LBE18:
.LBE20:
	.loc 1 24 12 is_stmt 1
	lbu	a3,0(a0)
	bne	a3,zero,.L17
.L12:
	.loc 1 26 1 is_stmt 0
	ret
.LVL5:
.L15:
.LBB21:
.LBB19:
.LBB17:
.LBB16:
	.loc 1 18 11 is_stmt 1
	.loc 1 18 14 is_stmt 0
	lw	a5,8(a4)
	.loc 1 18 11
	andi	a5,a5,8
	bne	a5,zero,.L15
	.loc 1 19 5 is_stmt 1
	.loc 1 19 39 is_stmt 0
	sw	a1,4(a4)
	.loc 1 20 1
	j	.L16
.LBE16:
.LBE17:
.LBE19:
.LBE21:
	.cfi_endproc
.LFE323:
	.size	uart_write_string, .-uart_write_string
	.align	2
	.globl	uart_read_char
	.type	uart_read_char, @function
uart_read_char:
.LFB324:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
	.loc 1 31 2
	.loc 1 32 5
	.loc 1 32 12 is_stmt 0
	li	a4,805306368
	lw	a5,8(a4)
	.loc 1 30 1
	li	a0,0
	.loc 1 32 44
	srli	a5,a5,5
	.loc 1 32 7
	bne	a5,zero,.L25
	.loc 1 32 67 discriminator 1
	lw	a5,8(a4)
	.loc 1 32 99 discriminator 1
	srli	a5,a5,4
	.loc 1 32 60 discriminator 1
	bne	a5,zero,.L25
.LVL6:
.LBB22:
	.loc 1 33 26 is_stmt 1 discriminator 1
	.loc 1 34 13 discriminator 1
 #APP
# 34 "uart.c" 1
	nop
# 0 "" 2
	.loc 1 33 32 discriminator 1
.LVL7:
	.loc 1 33 26 discriminator 1
 #NO_APP
.LBE22:
	.loc 1 36 9 discriminator 1
	.loc 1 36 16 is_stmt 0 discriminator 1
	lw	a0,0(a4)
	.loc 1 36 13 discriminator 1
	andi	a0,a0,0xff
.LVL8:
.L25:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 1 is_stmt 0
	ret
	.cfi_endproc
.LFE324:
	.size	uart_read_char, .-uart_read_char
	.align	2
	.globl	uart_read
	.type	uart_read, @function
uart_read:
.LFB325:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 45 12 is_stmt 0
	li	a4,805306368
	lw	a5,8(a4)
	.loc 1 45 44
	srli	a5,a5,5
	.loc 1 45 7
	bne	a5,zero,.L27
	.loc 1 45 67 discriminator 1
	lw	a5,8(a4)
	.loc 1 45 99 discriminator 1
	srli	a5,a5,4
	.loc 1 45 60 discriminator 1
	bne	a5,zero,.L27
.LVL9:
.LBB23:
	.loc 1 46 26 is_stmt 1 discriminator 1
	.loc 1 47 13 discriminator 1
 #APP
# 47 "uart.c" 1
	nop
# 0 "" 2
	.loc 1 46 32 discriminator 1
.LVL10:
	.loc 1 46 26 discriminator 1
 #NO_APP
.LBE23:
	.loc 1 49 9 discriminator 1
	.loc 1 49 16 is_stmt 0 discriminator 1
	lw	a0,0(a4)
.LVL11:
.L27:
	.loc 1 52 5 is_stmt 1
	.loc 1 53 1 is_stmt 0
	ret
	.cfi_endproc
.LFE325:
	.size	uart_read, .-uart_read
	.text
.Letext0:
	.file 2 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
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
	.byte	0xa
	.4byte	.LASF17
	.byte	0x2
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
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x2a
	.byte	0x2f
	.4byte	0x6a
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5
	.byte	0x3
	.string	"num"
	.byte	0x2c
	.byte	0x9
	.4byte	0x6a
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x5
	.string	"i"
	.byte	0x2e
	.4byte	0x6a
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF12
	.byte	0x1d
	.byte	0x30
	.4byte	0xf2
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.byte	0x1
	.byte	0x9c
	.4byte	0xf2
	.byte	0x3
	.string	"num"
	.byte	0x1f
	.byte	0x7
	.4byte	0xf2
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x5
	.string	"i"
	.byte	0x21
	.4byte	0x6a
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0xc
	.4byte	0xf2
	.byte	0x6
	.4byte	.LASF14
	.byte	0x16
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0x14f
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x16
	.byte	0x4e
	.4byte	0x14f
	.4byte	.LLST0
	.byte	0x7
	.4byte	0x155
	.4byte	.LBB12
	.4byte	.LLRL1
	.byte	0x19
	.byte	0x9
	.byte	0xe
	.4byte	0x162
	.4byte	.LLST2
	.byte	0x7
	.4byte	0x155
	.4byte	.LBB14
	.4byte	.LLRL3
	.byte	0xf
	.byte	0x3
	.byte	0x8
	.4byte	0x162
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xf9
	.byte	0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.byte	0x1
	.4byte	0x16d
	.byte	0x11
	.string	"c"
	.byte	0x1
	.byte	0xc
	.byte	0x45
	.4byte	0xf2
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x18e
	.byte	0x12
	.string	"n"
	.byte	0x1
	.byte	0x6
	.byte	0x3f
	.4byte	0x6a
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x13
	.4byte	0x155
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	0x162
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	0x155
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x8
	.4byte	0x162
	.byte	0
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
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x3
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x11
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x30
	.byte	0x27
	.byte	0x19
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
	.byte	0x7
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0x21
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST5:
	.byte	0x7
	.4byte	.LVL9
	.4byte	.LVL10
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL11
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST4:
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL7
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL8
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST0:
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LFE323
	.byte	0x1
	.byte	0x5a
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL4
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LFE323
	.byte	0x1
	.byte	0x5d
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
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
.LLRL1:
	.byte	0x6
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x6
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x6
	.4byte	.LBB21
	.4byte	.LBE21
	.byte	0
.LLRL3:
	.byte	0x6
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x6
	.4byte	.LBB17
	.4byte	.LBE17
	.byte	0
.LLRL6:
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321
	.byte	0x6
	.4byte	.LFB322
	.4byte	.LFE322
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323
	.byte	0x6
	.4byte	.LFB324
	.4byte	.LFE324
	.byte	0x6
	.4byte	.LFB325
	.4byte	.LFE325
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"uart_write"
.LASF11:
	.string	"uart_read"
.LASF6:
	.string	"unsigned char"
.LASF14:
	.string	"uart_write_string"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF12:
	.string	"uart_read_char"
.LASF16:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF9:
	.string	"long long unsigned int"
.LASF18:
	.string	"uart_write_char"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF3:
	.string	"short int"
.LASF17:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/Desktop/Final_test-main/testbench/uart"
.LASF0:
	.string	"uart.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
