	.file	"a.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	main
	.type	main, @function
main:
.LFB1522:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1522
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$7, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$1, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$6, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$5, -40(%rbp)
	movl	$99, -36(%rbp)
	movl	$101, -32(%rbp)
	movl	$121, -28(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	$10, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
.LEHB0:
	call	_ZN6VectorIiEC1EPKiii
.LEHE0:
	leaq	-80(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN6VectorIiE4showEi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiE9testmergeEv
.LEHE1:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiED1Ev
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L4
	jmp	.L6
.L5:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L6:
	call	__stack_chk_fail@PLT
.L4:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1522:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1522:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1522-.LLSDACSB1522
.LLSDACSB1522:
	.uleb128 .LEHB0-.LFB1522
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1522
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L5-.LFB1522
	.uleb128 0
	.uleb128 .LEHB2-.LFB1522
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1522:
	.text
	.size	main, .-main
	.section	.text._ZN6VectorIiEC2EPKiii,"axG",@progbits,_ZN6VectorIiEC5EPKiii,comdat
	.align 2
	.weak	_ZN6VectorIiEC2EPKiii
	.type	_ZN6VectorIiEC2EPKiii, @function
_ZN6VectorIiEC2EPKiii:
.LFB1760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiE8copyFromEPKiii
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1760:
	.size	_ZN6VectorIiEC2EPKiii, .-_ZN6VectorIiEC2EPKiii
	.weak	_ZN6VectorIiEC1EPKiii
	.set	_ZN6VectorIiEC1EPKiii,_ZN6VectorIiEC2EPKiii
	.section	.text._ZN6VectorIiED2Ev,"axG",@progbits,_ZN6VectorIiED5Ev,comdat
	.align 2
	.weak	_ZN6VectorIiED2Ev
	.type	_ZN6VectorIiED2Ev, @function
_ZN6VectorIiED2Ev:
.LFB1763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1763:
	.size	_ZN6VectorIiED2Ev, .-_ZN6VectorIiED2Ev
	.weak	_ZN6VectorIiED1Ev
	.set	_ZN6VectorIiED1Ev,_ZN6VectorIiED2Ev
	.section	.rodata
.LC0:
	.string	"{ "
.LC1:
	.string	" "
.LC2:
	.string	"}"
	.section	.text._ZN6VectorIiE4showEi,"axG",@progbits,_ZN6VectorIiE4showEi,comdat
	.align 2
	.weak	_ZN6VectorIiE4showEi
	.type	_ZN6VectorIiE4showEi, @function
_ZN6VectorIiE4showEi:
.LFB1765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addl	$1, -4(%rbp)
	jmp	.L13
.L12:
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1765:
	.size	_ZN6VectorIiE4showEi, .-_ZN6VectorIiE4showEi
	.section	.text._ZN6VectorIiE9testmergeEv,"axG",@progbits,_ZN6VectorIiE9testmergeEv,comdat
	.align 2
	.weak	_ZN6VectorIiE9testmergeEv
	.type	_ZN6VectorIiE9testmergeEv, @function
_ZN6VectorIiE9testmergeEv:
.LFB1766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE9mergeSortEii
	movq	-8(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE4showEi
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1766:
	.size	_ZN6VectorIiE9testmergeEv, .-_ZN6VectorIiE9testmergeEv
	.section	.text._ZN6VectorIiE8copyFromEPKiii,"axG",@progbits,_ZN6VectorIiE8copyFromEPKiii,comdat
	.align 2
	.weak	_ZN6VectorIiE8copyFromEPKiii
	.type	_ZN6VectorIiE8copyFromEPKiii, @function
_ZN6VectorIiE8copyFromEPKiii:
.LFB1875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L16
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L19
.L16:
	call	__cxa_throw_bad_array_new_length@PLT
.L19:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L20
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx)
	cltq
	salq	$2, %rax
	leaq	(%rdi,%rax), %rdx
	movl	(%rsi), %eax
	movl	%eax, (%rdx)
	jmp	.L19
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1875:
	.size	_ZN6VectorIiE8copyFromEPKiii, .-_ZN6VectorIiE8copyFromEPKiii
	.section	.text._ZN6VectorIiE9mergeSortEii,"axG",@progbits,_ZN6VectorIiE9mergeSortEii,comdat
	.align 2
	.weak	_ZN6VectorIiE9mergeSortEii
	.type	_ZN6VectorIiE9mergeSortEii, @function
_ZN6VectorIiE9mergeSortEii:
.LFB1879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	cmpl	$1, %eax
	jle	.L24
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE9mergeSortEii
	movl	-32(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE9mergeSortEii
	movl	-32(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiE5mergeEiii
	jmp	.L21
.L24:
	nop
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1879:
	.size	_ZN6VectorIiE9mergeSortEii, .-_ZN6VectorIiE9mergeSortEii
	.section	.text._ZN6VectorIiE5mergeEiii,"axG",@progbits,_ZN6VectorIiE5mergeEiii,comdat
	.align 2
	.weak	_ZN6VectorIiE5mergeEiii
	.type	_ZN6VectorIiE5mergeEiii, @function
_ZN6VectorIiE5mergeEiii:
.LFB1917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L26
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L29
.L26:
	call	__cxa_throw_bad_array_new_length@PLT
.L29:
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L28
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-48(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -48(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L29
.L28:
	movl	-68(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
.L33:
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L35
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L35
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L31
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L33
.L31:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L33
.L35:
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L34
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L35
.L34:
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L37
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L34
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1917:
	.size	_ZN6VectorIiE5mergeEiii, .-_ZN6VectorIiE5mergeEiii
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2022:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L40
	cmpl	$65535, -8(%rbp)
	jne	.L40
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L40:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2022:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2023:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2023:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
