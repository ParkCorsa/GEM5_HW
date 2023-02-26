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
