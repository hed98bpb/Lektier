	.file	"radix.cpp"
	.text
	.globl	_Z6getMaxPii
	.type	_Z6getMaxPii, @function
_Z6getMaxPii:
.LFB1048:
	.cfi_startproc
	movl	(%rdi), %eax
	cmpl	$1, %esi
	jle	.L2
	leaq	4(%rdi), %rdx
	leal	-2(%rsi), %ecx
	leaq	8(%rdi,%rcx,4), %rsi
.L3:
	movl	(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	jne	.L3
.L2:
	rep ret
	.cfi_endproc
.LFE1048:
	.size	_Z6getMaxPii, .-_Z6getMaxPii
	.globl	_Z9countSortPiii
	.type	_Z9countSortPiii, @function
_Z9countSortPiii:
.LFB1049:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edx, %ecx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movslq	%esi, %rax
	leaq	18(,%rax,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r8
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	testl	%esi, %esi
	jg	.L6
.L8:
	leaq	-64(%rbp), %rax
	addq	$4, %rax
	leaq	-64(%rbp), %rbx
	leaq	40(%rbx), %r9
	jmp	.L7
.L6:
	movq	%rdi, %r9
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rbx
	movl	$1717986919, %r11d
.L9:
	movl	(%r9), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r12d
	imull	%r11d
	sarl	$2, %edx
	movl	%r12d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %r10d
	addl	%r10d, %r10d
	movl	%r12d, %edx
	subl	%r10d, %edx
	movslq	%edx, %rdx
	addl	$1, -64(%rbp,%rdx,4)
	addq	$4, %r9
	cmpq	%r9, %rbx
	jne	.L9
	jmp	.L8
.L7:
	movl	-4(%rax), %edx
	addl	%edx, (%rax)
	addq	$4, %rax
	cmpq	%r9, %rax
	jne	.L7
	movl	$1717986919, %r11d
	movl	%esi, %r9d
	subl	$1, %r9d
	jns	.L17
.L13:
	testl	%esi, %esi
	jle	.L5
	movl	$0, %eax
	jmp	.L12
.L17:
	movslq	%r9d, %rax
	movl	(%rdi,%rax,4), %r10d
	movl	%r10d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebx
	imull	%r11d
	sarl	$2, %edx
	movl	%ebx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ebx
	movslq	%ebx, %rdx
	movl	-64(%rbp,%rdx,4), %eax
	subl	$1, %eax
	movslq	%eax, %rbx
	movl	%r10d, (%r8,%rbx,4)
	movl	%eax, -64(%rbp,%rdx,4)
	subl	$1, %r9d
	cmpl	$-1, %r9d
	jne	.L17
	jmp	.L13
.L12:
	movl	(%r8,%rax,4), %edx
	movl	%edx, (%rdi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %esi
	jg	.L12
.L5:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail
.L14:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1049:
	.size	_Z9countSortPiii, .-_Z9countSortPiii
	.globl	_Z9radixsortPii
	.type	_Z9radixsortPii, @function
_Z9radixsortPii:
.LFB1050:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %r12
	movl	%esi, %r13d
	call	_Z6getMaxPii
	testl	%eax, %eax
	jle	.L19
	movl	%eax, %ebp
	movl	$1, %ebx
.L21:
	movl	%ebx, %edx
	movl	%r13d, %esi
	movq	%r12, %rdi
	call	_Z9countSortPiii
	leal	(%rbx,%rbx,4), %ebx
	addl	%ebx, %ebx
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	testl	%eax, %eax
	jg	.L21
.L19:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1050:
	.size	_Z9radixsortPii, .-_Z9radixsortPii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" "
	.text
	.globl	_Z5printPii
	.type	_Z5printPii, @function
_Z5printPii:
.LFB1051:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L30
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rbp
.L26:
	movl	(%rbx), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$1, %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jne	.L26
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L30:
	rep ret
	.cfi_endproc
.LFE1051:
	.size	_Z5printPii, .-_Z5printPii
	.globl	main
	.type	main, @function
main:
.LFB1052:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movl	$170, (%rsp)
	movl	$45, 4(%rsp)
	movl	$75, 8(%rsp)
	movl	$90, 12(%rsp)
	movl	$802, 16(%rsp)
	movl	$24, 20(%rsp)
	movl	$2, 24(%rsp)
	movl	$66, 28(%rsp)
	movl	$8, %esi
	movq	%rsp, %rdi
	call	_Z9radixsortPii
	movl	$8, %esi
	movq	%rsp, %rdi
	call	_Z5printPii
	movq	40(%rsp), %rdx
	xorq	%fs:40, %rdx
	je	.L32
	call	__stack_chk_fail
.L32:
	movl	$0, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1052:
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z6getMaxPii, @function
_GLOBAL__sub_I__Z6getMaxPii:
.LFB1057:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1057:
	.size	_GLOBAL__sub_I__Z6getMaxPii, .-_GLOBAL__sub_I__Z6getMaxPii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z6getMaxPii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
