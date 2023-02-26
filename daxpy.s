	.file	"daxpy.cpp"
	.text
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13random_deviceC2Ev
	.type	_ZNSt13random_deviceC2Ev, @function
_ZNSt13random_deviceC2Ev:
.LFB1955:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1955
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	movl	$27765, %eax
	movq	%rsp, %rsi
	movq	%rbx, (%rsp)
	movl	$1634100580, 16(%rsp)
	movw	%ax, 20(%rsp)
	movb	$116, 22(%rsp)
	movq	$7, 8(%rsp)
	movb	$0, 23(%rsp)
.LEHB0:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE0:
	movq	(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1
	call	_ZdlPv@PLT
.L1:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L9
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L6:
	endbr64
	movq	%rax, %rbp
.L3:
	movq	(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L4
	call	_ZdlPv@PLT
.L4:
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE1955:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13random_deviceC2Ev,"aG",@progbits,_ZNSt13random_deviceC5Ev,comdat
.LLSDA1955:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1955-.LLSDACSB1955
.LLSDACSB1955:
	.uleb128 .LEHB0-.LFB1955
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB1955
	.uleb128 0
	.uleb128 .LEHB1-.LFB1955
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1955:
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.size	_ZNSt13random_deviceC2Ev, .-_ZNSt13random_deviceC2Ev
	.weak	_ZNSt13random_deviceC1Ev
	.set	_ZNSt13random_deviceC1Ev,_ZNSt13random_deviceC2Ev
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.p2align 4
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB2995:
	.cfi_startproc
	endbr64
	movq	4992(%rdi), %rdx
	movsd	.LC0(%rip), %xmm2
	pxor	%xmm0, %xmm0
	movl	$2, %r9d
	leaq	1816(%rdi), %r8
	movl	$2567483615, %ecx
	leaq	3168(%rdi), %rsi
	movsd	%xmm2, -16(%rsp)
	cmpq	$623, %rdx
	ja	.L11
.L37:
	movq	%rdx, %rax
	addq	$1, %rdx
.L12:
	movq	(%rdi,%rax,8), %rax
	movq	%rdx, 4992(%rdi)
	movq	%rax, %r10
	shrq	$11, %r10
	movl	%r10d, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$7, %r10
	andl	$2636928640, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$15, %r10
	andl	$4022730752, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	shrq	$18, %r10
	xorq	%r10, %rax
	js	.L18
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L19:
	mulsd	-16(%rsp), %xmm1
	flds	.LC3(%rip)
	fmull	-16(%rsp)
	addsd	%xmm1, %xmm0
	fstpl	-16(%rsp)
	cmpl	$1, %r9d
	jne	.L23
	divsd	-16(%rsp), %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L36
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	movl	$1, %r9d
	cmpq	$623, %rdx
	jbe	.L37
.L11:
	movq	%rdi, %rdx
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rax), %r10
	movq	8(%rax), %r11
	andq	$-2147483648, %r10
	andl	$2147483647, %r11d
	orq	%r11, %r10
	movq	%r10, %r11
	shrq	%r11
	xorq	3176(%rax), %r11
	andl	$1, %r10d
	je	.L13
	xorq	%rcx, %r11
.L13:
	movq	%r11, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L14
	.p2align 4,,10
	.p2align 3
.L16:
	movq	1816(%rdx), %rax
	movq	1824(%rdx), %r10
	andq	$-2147483648, %rax
	andl	$2147483647, %r10d
	orq	%r10, %rax
	movq	%rax, %r10
	shrq	%r10
	xorq	(%rdx), %r10
	testb	$1, %al
	je	.L15
	xorq	%rcx, %r10
.L15:
	movq	%r10, 1816(%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.L16
	movq	4984(%rdi), %rax
	movq	(%rdi), %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	testb	$1, %al
	je	.L17
	xorq	%rcx, %rdx
.L17:
	movq	%rdx, 4984(%rdi)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%rax, %r10
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%r10
	orq	%rax, %r10
	cvtsi2sdq	%r10, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L36:
	movsd	.LC2(%rip), %xmm0
	ret
	.cfi_endproc
.LFE2995:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"%lf\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2545:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2545
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	-24576(%rsp), %r11
	.cfi_def_cfa 11, 24624
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$1456, %rsp
	.cfi_def_cfa_offset 26080
	movq	%fs:40, %rax
	movq	%rax, 26024(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	movq	%rbp, %rdi
.LEHB2:
	call	_ZNSt13random_deviceC1Ev
.LEHE2:
	movq	%rbp, %rdi
.LEHB3:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %ecx
	movl	$1, %edx
	leaq	5008(%rsp), %r14
	movq	%rcx, 5008(%rsp)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L52:
	movq	-8(%r14,%rdx,8), %rcx
.L40:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	addl	%edx, %eax
	movq	%rax, (%r14,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L52
	movq	$624, 10000(%rsp)
	xorl	%r12d, %r12d
	leaq	10016(%rsp), %rbx
	leaq	18016(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L41:
	movq	%r14, %rdi
	addq	$8, %r12
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	addsd	.LC0(%rip), %xmm0
	movq	%r14, %rdi
	movsd	%xmm0, -8(%r12,%rbx)
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	addsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%r12,%r13)
	cmpq	$8000, %r12
	jne	.L41
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_reset_stats@PLT
	movsd	.LC5(%rip), %xmm1
	movq	%rbx, %rax
	movq	%r13, %rdx
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L42:
	movsd	(%rax), %xmm0
	addq	$8, %rax
	addq	$8, %rdx
	mulsd	%xmm1, %xmm0
	addsd	-8(%rdx), %xmm0
	movsd	%xmm0, -8(%rdx)
	cmpq	%r13, %rax
	jne	.L42
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_reset_stats@PLT
	addq	$8000, %r13
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L43:
	addsd	(%rbx), %xmm0
	addq	$8, %rbx
	cmpq	%rbx, %r13
	jne	.L43
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.LEHE3:
	movq	%rbp, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	26024(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L53
	addq	$26032, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L53:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L46:
	endbr64
	movq	%rax, %r12
	jmp	.L44
	.section	.gcc_except_table,"a",@progbits
.LLSDA2545:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2545-.LLSDACSB2545
.LLSDACSB2545:
	.uleb128 .LEHB2-.LFB2545
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2545
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L46-.LFB2545
	.uleb128 0
.LLSDACSE2545:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2545
	.type	main.cold, @function
main.cold:
.LFSB2545:
.L44:
	.cfi_def_cfa_offset 26080
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%rbp, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	%r12, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE2545:
	.section	.gcc_except_table
.LLSDAC2545:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2545-.LLSDACSBC2545
.LLSDACSBC2545:
	.uleb128 .LEHB4-.LCOLDB7
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2545:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	4294967295
	.long	1072693247
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	1333788672
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
