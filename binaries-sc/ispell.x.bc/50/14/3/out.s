	.text
	.file	"llvm-link"
	.globl	erase                   # -- Begin function erase
	.p2align	4, 0x90
	.type	erase,@function
erase:                                  # @erase
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$222222222, -24(%rbp)   # imm = 0xD3ED78E
	movl	$555555555, -20(%rbp)   # imm = 0x211D1AE3
	movl	$444444444, -16(%rbp)   # imm = 0x1A7DAF1C
	movl	$222222222, %edi        # imm = 0xD3ED78E
	movl	$555555555, %esi        # imm = 0x211D1AE3
	movl	$444444444, %edx        # imm = 0x1A7DAF1C
	callq	guardMe
	movl	$222222223, -12(%rbp)   # imm = 0xD3ED78F
	movl	$555555556, -8(%rbp)    # imm = 0x211D1AE4
	movl	$444444445, -4(%rbp)    # imm = 0x1A7DAF1D
	movl	$222222223, %edi        # imm = 0xD3ED78F
	movl	$555555556, %esi        # imm = 0x211D1AE4
	movl	$444444445, %edx        # imm = 0x1A7DAF1D
	callq	guardMe
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	erase, .Lfunc_end0-erase
	.cfi_endproc
                                        # -- End function
	.globl	move                    # -- Begin function move
	.p2align	4, 0x90
	.type	move,@function
move:                                   # @move
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	movl	$222222234, -44(%rbp)   # imm = 0xD3ED79A
	movl	$555555567, -40(%rbp)   # imm = 0x211D1AEF
	movl	$444444456, -36(%rbp)   # imm = 0x1A7DAF28
	movl	$222222234, %edi        # imm = 0xD3ED79A
	movl	$555555567, %esi        # imm = 0x211D1AEF
	movl	$444444456, %edx        # imm = 0x1A7DAF28
	callq	guardMe
	movl	$222222233, -32(%rbp)   # imm = 0xD3ED799
	movl	$555555566, -28(%rbp)   # imm = 0x211D1AEE
	movl	$444444455, -24(%rbp)   # imm = 0x1A7DAF27
	movl	$222222233, %edi        # imm = 0xD3ED799
	movl	$555555566, %esi        # imm = 0x211D1AEE
	movl	$444444455, %edx        # imm = 0x1A7DAF27
	callq	guardMe
	movl	%ebx, -48(%rbp)
	movl	%r14d, -20(%rbp)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	move, .Lfunc_end1-move
	.cfi_endproc
                                        # -- End function
	.globl	inverse                 # -- Begin function inverse
	.p2align	4, 0x90
	.type	inverse,@function
inverse:                                # @inverse
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$222222235, -36(%rbp)   # imm = 0xD3ED79B
	movl	$555555568, -32(%rbp)   # imm = 0x211D1AF0
	movl	$444444457, -28(%rbp)   # imm = 0x1A7DAF29
	movl	$222222235, %edi        # imm = 0xD3ED79B
	movl	$555555568, %esi        # imm = 0x211D1AF0
	movl	$444444457, %edx        # imm = 0x1A7DAF29
	callq	guardMe
	movl	$222222236, -24(%rbp)   # imm = 0xD3ED79C
	movl	$555555569, -20(%rbp)   # imm = 0x211D1AF1
	movl	$444444458, -16(%rbp)   # imm = 0x1A7DAF2A
	movl	$222222236, %edi        # imm = 0xD3ED79C
	movl	$555555569, %esi        # imm = 0x211D1AF1
	movl	$444444458, %edx        # imm = 0x1A7DAF2A
	callq	guardMe
	movl	$222222237, -12(%rbp)   # imm = 0xD3ED79D
	movl	$555555570, -8(%rbp)    # imm = 0x211D1AF2
	movl	$444444459, -4(%rbp)    # imm = 0x1A7DAF2B
	movl	$222222237, %edi        # imm = 0xD3ED79D
	movl	$555555570, %esi        # imm = 0x211D1AF2
	movl	$444444459, %edx        # imm = 0x1A7DAF2B
	callq	guardMe
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	inverse, .Lfunc_end2-inverse
	.cfi_endproc
                                        # -- End function
	.globl	normal                  # -- Begin function normal
	.p2align	4, 0x90
	.type	normal,@function
normal:                                 # @normal
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$222222238, -72(%rbp)   # imm = 0xD3ED79E
	movl	$555555571, -68(%rbp)   # imm = 0x211D1AF3
	movl	$444444460, -64(%rbp)   # imm = 0x1A7DAF2C
	movl	$222222238, %edi        # imm = 0xD3ED79E
	movl	$555555571, %esi        # imm = 0x211D1AF3
	movl	$444444460, %edx        # imm = 0x1A7DAF2C
	callq	guardMe
	movl	$222222239, -60(%rbp)   # imm = 0xD3ED79F
	movl	$555555572, -56(%rbp)   # imm = 0x211D1AF4
	movl	$444444461, -52(%rbp)   # imm = 0x1A7DAF2D
	movl	$222222239, %edi        # imm = 0xD3ED79F
	movl	$555555572, %esi        # imm = 0x211D1AF4
	movl	$444444461, %edx        # imm = 0x1A7DAF2D
	callq	guardMe
	movl	$222222240, -48(%rbp)   # imm = 0xD3ED7A0
	movl	$555555573, -44(%rbp)   # imm = 0x211D1AF5
	movl	$444444462, -40(%rbp)   # imm = 0x1A7DAF2E
	movl	$222222240, %edi        # imm = 0xD3ED7A0
	movl	$555555573, %esi        # imm = 0x211D1AF5
	movl	$444444462, %edx        # imm = 0x1A7DAF2E
	callq	guardMe
	movl	$222222241, -36(%rbp)   # imm = 0xD3ED7A1
	movl	$555555574, -32(%rbp)   # imm = 0x211D1AF6
	movl	$444444463, -28(%rbp)   # imm = 0x1A7DAF2F
	movl	$222222241, %edi        # imm = 0xD3ED7A1
	movl	$555555574, %esi        # imm = 0x211D1AF6
	movl	$444444463, %edx        # imm = 0x1A7DAF2F
	callq	guardMe
	movl	$222222242, -24(%rbp)   # imm = 0xD3ED7A2
	movl	$555555575, -20(%rbp)   # imm = 0x211D1AF7
	movl	$444444464, -16(%rbp)   # imm = 0x1A7DAF30
	movl	$222222242, %edi        # imm = 0xD3ED7A2
	movl	$555555575, %esi        # imm = 0x211D1AF7
	movl	$444444464, %edx        # imm = 0x1A7DAF30
	callq	guardMe
	movl	$222222243, -12(%rbp)   # imm = 0xD3ED7A3
	movl	$555555576, -8(%rbp)    # imm = 0x211D1AF8
	movl	$444444465, -4(%rbp)    # imm = 0x1A7DAF31
	movl	$222222243, %edi        # imm = 0xD3ED7A3
	movl	$555555576, %esi        # imm = 0x211D1AF8
	movl	$444444465, %edx        # imm = 0x1A7DAF31
	callq	guardMe
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	normal, .Lfunc_end3-normal
	.cfi_endproc
                                        # -- End function
	.globl	backup                  # -- Begin function backup
	.p2align	4, 0x90
	.type	backup,@function
backup:                                 # @backup
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$222222244, -36(%rbp)   # imm = 0xD3ED7A4
	movl	$555555577, -32(%rbp)   # imm = 0x211D1AF9
	movl	$444444466, -28(%rbp)   # imm = 0x1A7DAF32
	movl	$222222244, %edi        # imm = 0xD3ED7A4
	movl	$555555577, %esi        # imm = 0x211D1AF9
	movl	$444444466, %edx        # imm = 0x1A7DAF32
	callq	guardMe
	movl	$222222245, -24(%rbp)   # imm = 0xD3ED7A5
	movl	$555555578, -20(%rbp)   # imm = 0x211D1AFA
	movl	$444444467, -16(%rbp)   # imm = 0x1A7DAF33
	movl	$222222245, %edi        # imm = 0xD3ED7A5
	movl	$555555578, %esi        # imm = 0x211D1AFA
	movl	$444444467, %edx        # imm = 0x1A7DAF33
	callq	guardMe
	movl	$222222246, -12(%rbp)   # imm = 0xD3ED7A6
	movl	$555555579, -8(%rbp)    # imm = 0x211D1AFB
	movl	$444444468, -4(%rbp)    # imm = 0x1A7DAF34
	movl	$222222246, %edi        # imm = 0xD3ED7A6
	movl	$555555579, %esi        # imm = 0x211D1AFB
	movl	$444444468, %edx        # imm = 0x1A7DAF34
	callq	guardMe
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	backup, .Lfunc_end4-backup
	.cfi_endproc
                                        # -- End function
	.globl	terminit                # -- Begin function terminit
	.p2align	4, 0x90
	.type	terminit,@function
terminit:                               # @terminit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movl	$.L.str, %edi
	callq	getenv
	movq	%rax, %rbx
	movl	$222222249, -44(%rbp)   # imm = 0xD3ED7A9
	movl	$555555582, -40(%rbp)   # imm = 0x211D1AFE
	movl	$444444471, -36(%rbp)   # imm = 0x1A7DAF37
	movl	$222222249, %edi        # imm = 0xD3ED7A9
	movl	$555555582, %esi        # imm = 0x211D1AFE
	movl	$444444471, %edx        # imm = 0x1A7DAF37
	callq	guardMe
	movl	$222222248, -32(%rbp)   # imm = 0xD3ED7A8
	movl	$555555581, -28(%rbp)   # imm = 0x211D1AFD
	movl	$444444470, -24(%rbp)   # imm = 0x1A7DAF36
	movl	$222222248, %edi        # imm = 0xD3ED7A8
	movl	$555555581, %esi        # imm = 0x211D1AFD
	movl	$444444470, %edx        # imm = 0x1A7DAF36
	callq	guardMe
	movl	$222222247, -20(%rbp)   # imm = 0xD3ED7A7
	movl	$555555580, -16(%rbp)   # imm = 0x211D1AFC
	movl	$444444469, -12(%rbp)   # imm = 0x1A7DAF35
	movl	$222222247, %edi        # imm = 0xD3ED7A7
	movl	$555555580, %esi        # imm = 0x211D1AFC
	movl	$444444469, %edx        # imm = 0x1A7DAF35
	callq	guardMe
	testq	%rbx, %rbx
	je	.LBB5_2
# %bb.1:                                # %if.then
	callq	terminit0
.LBB5_2:                                # %if.end
	movl	$.L.str.1, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB5_4
# %bb.3:                                # %if.then5
	callq	terminit1
.LBB5_4:                                # %if.end8
	cmpl	$0, contextsize(%rip)
	je	.LBB5_5
# %bb.6:                                # %if.end11
	cmpl	$11, contextsize(%rip)
	jl	.LBB5_8
.LBB5_7:                                # %if.then13
	movl	$10, contextsize(%rip)
	jmp	.LBB5_10
.LBB5_5:                                # %if.then10
	callq	terminit2
	cmpl	$11, contextsize(%rip)
	jge	.LBB5_7
.LBB5_8:                                # %if.else
	cmpl	$1, contextsize(%rip)
	jg	.LBB5_10
# %bb.9:                                # %if.then15
	movl	$2, contextsize(%rip)
.LBB5_10:                               # %if.end17
	movl	contextsize(%rip), %eax
	addl	$8, %eax
	cmpl	%eax, li(%rip)
	jge	.LBB5_14
# %bb.11:                               # %land.lhs.true
	cmpl	$3, contextsize(%rip)
	jl	.LBB5_14
# %bb.12:                               # %if.then20
	movl	li(%rip), %eax
	addl	$-8, %eax
	movl	%eax, contextsize(%rip)
	cmpl	$1, %eax
	jg	.LBB5_14
# %bb.13:                               # %if.then22
	movl	$2, contextsize(%rip)
.LBB5_14:                               # %if.end24
	cmpl	$9, li(%rip)
	jg	.LBB5_16
# %bb.15:                               # %if.then26
	callq	terminit3
.LBB5_16:                               # %if.end28
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	isatty
	testl	%eax, %eax
	je	.LBB5_28
# %bb.17:                               # %if.end32
	xorl	%edi, %edi
	movl	$osbuf, %esi
	callq	tcgetattr
	movups	osbuf(%rip), %xmm0
	movups	%xmm0, sbuf(%rip)
	movups	osbuf+16(%rip), %xmm0
	movups	%xmm0, sbuf+16(%rip)
	movups	osbuf+32(%rip), %xmm0
	movups	%xmm0, sbuf+32(%rip)
	movl	$1, termchanged(%rip)
	movups	osbuf+44(%rip), %xmm0
	movups	%xmm0, sbuf+44(%rip)
	callq	terminit5
	movw	$257, sbuf+22(%rip)     # imm = 0x101
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$sbuf, %edx
	callq	tcsetattr
	movzbl	osbuf+19(%rip), %eax
	movl	%eax, uerasechar(%rip)
	movzbl	osbuf+20(%rip), %eax
	movl	%eax, ukillchar(%rip)
	movl	$2, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, oldint(%rip)
	cmpq	$1, %rax
	je	.LBB5_19
# %bb.18:                               # %if.then41
	movl	$2, %edi
	movl	$done, %esi
	callq	signal
.LBB5_19:                               # %if.end43
	movl	$15, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, oldterm(%rip)
	cmpq	$1, %rax
	je	.LBB5_21
# %bb.20:                               # %if.then47
	movl	$15, %edi
	movl	$done, %esi
	callq	signal
.LBB5_21:                               # %if.end49
	movl	$21, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, oldttin(%rip)
	cmpq	$1, %rax
	je	.LBB5_23
# %bb.22:                               # %if.then53
	movl	$21, %edi
	movl	$onstop, %esi
	callq	signal
.LBB5_23:                               # %if.end55
	movl	$22, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, oldttou(%rip)
	cmpq	$1, %rax
	je	.LBB5_25
# %bb.24:                               # %if.then59
	movl	$22, %edi
	movl	$onstop, %esi
	callq	signal
.LBB5_25:                               # %if.end61
	movl	$20, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, oldtstp(%rip)
	cmpq	$1, %rax
	je	.LBB5_27
# %bb.26:                               # %if.then65
	movl	$20, %edi
	movl	$onstop, %esi
	callq	signal
.LBB5_27:                               # %if.end67
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB5_28:                               # %if.then30
	callq	terminit4
.Lfunc_end5:
	.size	terminit, .Lfunc_end5-terminit
	.cfi_endproc
                                        # -- End function
	.globl	terminit0               # -- Begin function terminit0
	.p2align	4, 0x90
	.type	terminit0,@function
terminit0:                              # @terminit0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str, %edi
	callq	getenv
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, co(%rip)
	popq	%rax
	retq
.Lfunc_end6:
	.size	terminit0, .Lfunc_end6-terminit0
	.cfi_endproc
                                        # -- End function
	.globl	terminit1               # -- Begin function terminit1
	.p2align	4, 0x90
	.type	terminit1,@function
terminit1:                              # @terminit1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.1, %edi
	callq	getenv
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, li(%rip)
	popq	%rax
	retq
.Lfunc_end7:
	.size	terminit1, .Lfunc_end7-terminit1
	.cfi_endproc
                                        # -- End function
	.globl	terminit2               # -- Begin function terminit2
	.p2align	4, 0x90
	.type	terminit2,@function
terminit2:                              # @terminit2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	li(%rip), %eax
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, contextsize(%rip)
	retq
.Lfunc_end8:
	.size	terminit2, .Lfunc_end8-terminit2
	.cfi_endproc
                                        # -- End function
	.globl	terminit3               # -- Begin function terminit3
	.p2align	4, 0x90
	.type	terminit3,@function
terminit3:                              # @terminit3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	movl	$10, %edx
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end9:
	.size	terminit3, .Lfunc_end9-terminit3
	.cfi_endproc
                                        # -- End function
	.globl	terminit4               # -- Begin function terminit4
	.p2align	4, 0x90
	.type	terminit4,@function
terminit4:                              # @terminit4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end10:
	.size	terminit4, .Lfunc_end10-terminit4
	.cfi_endproc
                                        # -- End function
	.globl	terminit5               # -- Begin function terminit5
	.p2align	4, 0x90
	.type	terminit5,@function
terminit5:                              # @terminit5
	.cfi_startproc
# %bb.0:                                # %entry
	andb	$-107, sbuf+12(%rip)
	andb	$-2, sbuf+4(%rip)
	andl	$-449, sbuf(%rip)       # imm = 0xFE3F
	retq
.Lfunc_end11:
	.size	terminit5, .Lfunc_end11-terminit5
	.cfi_endproc
                                        # -- End function
	.globl	done                    # -- Begin function done
	.p2align	4, 0x90
	.type	done,@function
done:                                   # @done
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$222222253, -56(%rbp)   # imm = 0xD3ED7AD
	movl	$555555586, -52(%rbp)   # imm = 0x211D1B02
	movl	$444444475, -48(%rbp)   # imm = 0x1A7DAF3B
	movl	$222222253, %edi        # imm = 0xD3ED7AD
	movl	$555555586, %esi        # imm = 0x211D1B02
	movl	$444444475, %edx        # imm = 0x1A7DAF3B
	callq	guardMe
	movl	$222222252, -44(%rbp)   # imm = 0xD3ED7AC
	movl	$555555585, -40(%rbp)   # imm = 0x211D1B01
	movl	$444444474, -36(%rbp)   # imm = 0x1A7DAF3A
	movl	$222222252, %edi        # imm = 0xD3ED7AC
	movl	$555555585, %esi        # imm = 0x211D1B01
	movl	$444444474, %edx        # imm = 0x1A7DAF3A
	callq	guardMe
	movl	$222222251, -32(%rbp)   # imm = 0xD3ED7AB
	movl	$555555584, -28(%rbp)   # imm = 0x211D1B00
	movl	$444444473, -24(%rbp)   # imm = 0x1A7DAF39
	movl	$222222251, %edi        # imm = 0xD3ED7AB
	movl	$555555584, %esi        # imm = 0x211D1B00
	movl	$444444473, %edx        # imm = 0x1A7DAF39
	callq	guardMe
	movl	$222222250, -20(%rbp)   # imm = 0xD3ED7AA
	movl	$555555583, -16(%rbp)   # imm = 0x211D1AFF
	movl	$444444472, -12(%rbp)   # imm = 0x1A7DAF38
	movl	$222222250, %edi        # imm = 0xD3ED7AA
	movl	$555555583, %esi        # imm = 0x211D1AFF
	movl	$444444472, %edx        # imm = 0x1A7DAF38
	callq	guardMe
	movl	%ebx, -60(%rbp)
	cmpb	$0, tempfile(%rip)
	je	.LBB12_2
# %bb.1:                                # %if.then
	movl	$tempfile, %edi
	xorl	%eax, %eax
	callq	unlink
.LBB12_2:                               # %if.end3
	xorl	%edi, %edi
	callq	exit
.Lfunc_end12:
	.size	done, .Lfunc_end12-done
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function onstop
	.type	onstop,@function
onstop:                                 # @onstop
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$222222259, -84(%rbp)   # imm = 0xD3ED7B3
	movl	$555555592, -80(%rbp)   # imm = 0x211D1B08
	movl	$444444481, -76(%rbp)   # imm = 0x1A7DAF41
	movl	$222222259, %edi        # imm = 0xD3ED7B3
	movl	$555555592, %esi        # imm = 0x211D1B08
	movl	$444444481, %edx        # imm = 0x1A7DAF41
	callq	guardMe
	movl	$222222258, -72(%rbp)   # imm = 0xD3ED7B2
	movl	$555555591, -68(%rbp)   # imm = 0x211D1B07
	movl	$444444480, -64(%rbp)   # imm = 0x1A7DAF40
	movl	$222222258, %edi        # imm = 0xD3ED7B2
	movl	$555555591, %esi        # imm = 0x211D1B07
	movl	$444444480, %edx        # imm = 0x1A7DAF40
	callq	guardMe
	movl	$222222257, -60(%rbp)   # imm = 0xD3ED7B1
	movl	$555555590, -56(%rbp)   # imm = 0x211D1B06
	movl	$444444479, -52(%rbp)   # imm = 0x1A7DAF3F
	movl	$222222257, %edi        # imm = 0xD3ED7B1
	movl	$555555590, %esi        # imm = 0x211D1B06
	movl	$444444479, %edx        # imm = 0x1A7DAF3F
	callq	guardMe
	movl	$222222256, -48(%rbp)   # imm = 0xD3ED7B0
	movl	$555555589, -44(%rbp)   # imm = 0x211D1B05
	movl	$444444478, -40(%rbp)   # imm = 0x1A7DAF3E
	movl	$222222256, %edi        # imm = 0xD3ED7B0
	movl	$555555589, %esi        # imm = 0x211D1B05
	movl	$444444478, %edx        # imm = 0x1A7DAF3E
	callq	guardMe
	movl	$222222255, -36(%rbp)   # imm = 0xD3ED7AF
	movl	$555555588, -32(%rbp)   # imm = 0x211D1B04
	movl	$444444477, -28(%rbp)   # imm = 0x1A7DAF3D
	movl	$222222255, %edi        # imm = 0xD3ED7AF
	movl	$555555588, %esi        # imm = 0x211D1B04
	movl	$444444477, %edx        # imm = 0x1A7DAF3D
	callq	guardMe
	movl	$222222254, -24(%rbp)   # imm = 0xD3ED7AE
	movl	$555555587, -20(%rbp)   # imm = 0x211D1B03
	movl	$444444476, -16(%rbp)   # imm = 0x1A7DAF3C
	movl	$222222254, %edi        # imm = 0xD3ED7AE
	movl	$555555587, %esi        # imm = 0x211D1B03
	movl	$444444476, %edx        # imm = 0x1A7DAF3C
	callq	guardMe
	movl	%ebx, -12(%rbp)
	leaq	-12(%rbp), %rdi
	callq	onstop0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	onstop, .Lfunc_end13-onstop
	.cfi_endproc
                                        # -- End function
	.globl	onstop0                 # -- Begin function onstop0
	.p2align	4, 0x90
	.type	onstop0,@function
onstop0:                                # @onstop0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$osbuf, %edx
	callq	tcsetattr
	movl	12(%rsp), %edi
	xorl	%esi, %esi
	callq	signal
	movl	12(%rsp), %esi
	xorl	%edi, %edi
	callq	kill
	movl	12(%rsp), %edi
	movl	$onstop, %esi
	callq	signal
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$sbuf, %edx
	callq	tcsetattr
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end14:
	.size	onstop0, .Lfunc_end14-onstop0
	.cfi_endproc
                                        # -- End function
	.globl	stop                    # -- Begin function stop
	.p2align	4, 0x90
	.type	stop,@function
stop:                                   # @stop
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$20, %edi
	callq	onstop
	movl	$222222263, -48(%rbp)   # imm = 0xD3ED7B7
	movl	$555555596, -44(%rbp)   # imm = 0x211D1B0C
	movl	$444444485, -40(%rbp)   # imm = 0x1A7DAF45
	movl	$222222263, %edi        # imm = 0xD3ED7B7
	movl	$555555596, %esi        # imm = 0x211D1B0C
	movl	$444444485, %edx        # imm = 0x1A7DAF45
	callq	guardMe
	movl	$222222262, -36(%rbp)   # imm = 0xD3ED7B6
	movl	$555555595, -32(%rbp)   # imm = 0x211D1B0B
	movl	$444444484, -28(%rbp)   # imm = 0x1A7DAF44
	movl	$222222262, %edi        # imm = 0xD3ED7B6
	movl	$555555595, %esi        # imm = 0x211D1B0B
	movl	$444444484, %edx        # imm = 0x1A7DAF44
	callq	guardMe
	movl	$222222261, -24(%rbp)   # imm = 0xD3ED7B5
	movl	$555555594, -20(%rbp)   # imm = 0x211D1B0A
	movl	$444444483, -16(%rbp)   # imm = 0x1A7DAF43
	movl	$222222261, %edi        # imm = 0xD3ED7B5
	movl	$555555594, %esi        # imm = 0x211D1B0A
	movl	$444444483, %edx        # imm = 0x1A7DAF43
	callq	guardMe
	movl	$222222260, -12(%rbp)   # imm = 0xD3ED7B4
	movl	$555555593, -8(%rbp)    # imm = 0x211D1B09
	movl	$444444482, -4(%rbp)    # imm = 0x1A7DAF42
	movl	$222222260, %edi        # imm = 0xD3ED7B4
	movl	$555555593, %esi        # imm = 0x211D1B09
	movl	$444444482, %edx        # imm = 0x1A7DAF42
	callq	guardMe
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	stop, .Lfunc_end15-stop
	.cfi_endproc
                                        # -- End function
	.globl	shellescape             # -- Begin function shellescape
	.p2align	4, 0x90
	.type	shellescape,@function
shellescape:                            # @shellescape
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$904, %rsp              # imm = 0x388
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222273, -112(%rbp)  # imm = 0xD3ED7C1
	movl	$555555606, -108(%rbp)  # imm = 0x211D1B16
	movl	$444444495, -104(%rbp)  # imm = 0x1A7DAF4F
	movl	$222222273, %edi        # imm = 0xD3ED7C1
	movl	$555555606, %esi        # imm = 0x211D1B16
	movl	$444444495, %edx        # imm = 0x1A7DAF4F
	callq	guardMe
	movl	$222222272, -100(%rbp)  # imm = 0xD3ED7C0
	movl	$555555605, -96(%rbp)   # imm = 0x211D1B15
	movl	$444444494, -92(%rbp)   # imm = 0x1A7DAF4E
	movl	$222222272, %edi        # imm = 0xD3ED7C0
	movl	$555555605, %esi        # imm = 0x211D1B15
	movl	$444444494, %edx        # imm = 0x1A7DAF4E
	callq	guardMe
	movl	$222222271, -88(%rbp)   # imm = 0xD3ED7BF
	movl	$555555604, -84(%rbp)   # imm = 0x211D1B14
	movl	$444444493, -80(%rbp)   # imm = 0x1A7DAF4D
	movl	$222222271, %edi        # imm = 0xD3ED7BF
	movl	$555555604, %esi        # imm = 0x211D1B14
	movl	$444444493, %edx        # imm = 0x1A7DAF4D
	callq	guardMe
	movl	$222222270, -76(%rbp)   # imm = 0xD3ED7BE
	movl	$555555603, -72(%rbp)   # imm = 0x211D1B13
	movl	$444444492, -68(%rbp)   # imm = 0x1A7DAF4C
	movl	$222222270, %edi        # imm = 0xD3ED7BE
	movl	$555555603, %esi        # imm = 0x211D1B13
	movl	$444444492, %edx        # imm = 0x1A7DAF4C
	callq	guardMe
	movl	$222222269, -64(%rbp)   # imm = 0xD3ED7BD
	movl	$555555602, -60(%rbp)   # imm = 0x211D1B12
	movl	$444444491, -56(%rbp)   # imm = 0x1A7DAF4B
	movl	$222222269, %edi        # imm = 0xD3ED7BD
	movl	$555555602, %esi        # imm = 0x211D1B12
	movl	$444444491, %edx        # imm = 0x1A7DAF4B
	callq	guardMe
	movl	$222222268, -52(%rbp)   # imm = 0xD3ED7BC
	movl	$555555601, -48(%rbp)   # imm = 0x211D1B11
	movl	$444444490, -44(%rbp)   # imm = 0x1A7DAF4A
	movl	$222222268, %edi        # imm = 0xD3ED7BC
	movl	$555555601, %esi        # imm = 0x211D1B11
	movl	$444444490, %edx        # imm = 0x1A7DAF4A
	callq	guardMe
	movq	%rbx, -40(%rbp)
	leaq	-24(%rbp), %rbx
	leaq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	shellescape0
	movl	$0, -12(%rbp)
	jmp	.LBB16_2
	.p2align	4, 0x90
.LBB16_1:                               # %if.then29
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	%rbx, %rdi
	callq	shellescape3
.LBB16_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
                                        #     Child Loop BB16_10 Depth 2
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB16_4
	jmp	.LBB16_16
	.p2align	4, 0x90
.LBB16_3:                               # %while.body9
                                        #   in Loop: Header=BB16_4 Depth=2
	movq	%rbx, %rdi
	callq	shellescape1
.LBB16_4:                               # %while.cond2
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rcx
	movb	$1, %al
	cmpb	$32, (%rcx)
	je	.LBB16_6
# %bb.5:                                # %lor.rhs
                                        #   in Loop: Header=BB16_4 Depth=2
	movq	-24(%rbp), %rax
	cmpb	$9, (%rax)
	sete	%al
.LBB16_6:                               # %lor.end
                                        #   in Loop: Header=BB16_4 Depth=2
	testb	%al, %al
	jne	.LBB16_3
# %bb.7:                                # %while.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB16_16
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -12(%rbp)
	movq	%rax, -912(%rbp,%rcx,8)
	jmp	.LBB16_10
	.p2align	4, 0x90
.LBB16_9:                               # %while.body23
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	%rbx, %rdi
	callq	shellescape2
.LBB16_10:                              # %while.cond13
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	cmpb	$32, (%rax)
	je	.LBB16_14
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	-24(%rbp), %rax
	cmpb	$9, (%rax)
	je	.LBB16_14
# %bb.12:                               # %land.rhs
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB16_9
	jmp	.LBB16_15
	.p2align	4, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_10 Depth=2
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB16_9
.LBB16_15:                              # %while.end25
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB16_2
	jmp	.LBB16_1
.LBB16_16:                              # %while.end32
	movslq	-12(%rbp), %rax
	movq	$0, -912(%rbp,%rax,8)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$osbuf, %edx
	callq	tcsetattr
	movq	oldint(%rip), %rsi
	movl	$2, %edi
	callq	signal
	movq	oldterm(%rip), %rsi
	movl	$15, %edi
	callq	signal
	movq	oldttin(%rip), %rsi
	movl	$21, %edi
	callq	signal
	movq	oldttou(%rip), %rsi
	movl	$22, %edi
	callq	signal
	movq	oldtstp(%rip), %rsi
	movl	$20, %edi
	callq	signal
	xorl	%eax, %eax
	callq	fork
	movl	%eax, -12(%rbp)
	testl	%eax, %eax
	je	.LBB16_35
# %bb.17:                               # %if.else
	cmpl	$0, -12(%rbp)
	jle	.LBB16_34
# %bb.18:                               # %if.then48
	leaq	-28(%rbp), %rbx
	.p2align	4, 0x90
.LBB16_19:                              # %while.cond49
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	wait
	cmpl	-12(%rbp), %eax
	jne	.LBB16_19
# %bb.20:                               # %while.end54
	leaq	-28(%rbp), %rdi
	callq	shellescape4
	cmpq	$1, oldint(%rip)
	je	.LBB16_22
.LBB16_21:                              # %if.then63
	movl	$2, %edi
	movl	$done, %esi
	callq	signal
.LBB16_22:                              # %if.end65
	cmpq	$1, oldterm(%rip)
	je	.LBB16_24
# %bb.23:                               # %if.then68
	movl	$15, %edi
	movl	$done, %esi
	callq	signal
.LBB16_24:                              # %if.end70
	cmpq	$1, oldttin(%rip)
	je	.LBB16_26
# %bb.25:                               # %if.then73
	movl	$21, %edi
	movl	$onstop, %esi
	callq	signal
.LBB16_26:                              # %if.end75
	cmpq	$1, oldttou(%rip)
	je	.LBB16_28
# %bb.27:                               # %if.then78
	movl	$22, %edi
	movl	$onstop, %esi
	callq	signal
.LBB16_28:                              # %if.end80
	cmpq	$1, oldtstp(%rip)
	je	.LBB16_30
# %bb.29:                               # %if.then83
	movl	$20, %edi
	movl	$onstop, %esi
	callq	signal
.LBB16_30:                              # %if.end85
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$sbuf, %edx
	callq	tcsetattr
	cmpl	$0, -28(%rbp)
	je	.LBB16_33
# %bb.31:                               # %if.then87
	callq	shellescape5
	.p2align	4, 0x90
.LBB16_32:                              # %while.cond90
                                        # =>This Inner Loop Header: Depth=1
	callq	getchar
	cmpl	$32, %eax
	jne	.LBB16_32
.LBB16_33:                              # %if.end96
	movl	-28(%rbp), %eax
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%rbp
	retq
.LBB16_34:                              # %if.else57
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, -28(%rbp)
	cmpq	$1, oldint(%rip)
	jne	.LBB16_21
	jmp	.LBB16_22
.LBB16_35:                              # %if.then43
	movq	-912(%rbp), %rdi
	leaq	-912(%rbp), %rsi
	xorl	%eax, %eax
	callq	execvp
	movl	$123, %edi
	callq	_exit
.Lfunc_end16:
	.size	shellescape, .Lfunc_end16-shellescape
	.cfi_endproc
                                        # -- End function
	.globl	shellescape0            # -- Begin function shellescape0
	.p2align	4, 0x90
	.type	shellescape0,@function
shellescape0:                           # @shellescape0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end17:
	.size	shellescape0, .Lfunc_end17-shellescape0
	.cfi_endproc
                                        # -- End function
	.globl	shellescape1            # -- Begin function shellescape1
	.p2align	4, 0x90
	.type	shellescape1,@function
shellescape1:                           # @shellescape1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end18:
	.size	shellescape1, .Lfunc_end18-shellescape1
	.cfi_endproc
                                        # -- End function
	.globl	shellescape2            # -- Begin function shellescape2
	.p2align	4, 0x90
	.type	shellescape2,@function
shellescape2:                           # @shellescape2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end19:
	.size	shellescape2, .Lfunc_end19-shellescape2
	.cfi_endproc
                                        # -- End function
	.globl	shellescape3            # -- Begin function shellescape3
	.p2align	4, 0x90
	.type	shellescape3,@function
shellescape3:                           # @shellescape3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end20:
	.size	shellescape3, .Lfunc_end20-shellescape3
	.cfi_endproc
                                        # -- End function
	.globl	shellescape4            # -- Begin function shellescape4
	.p2align	4, 0x90
	.type	shellescape4,@function
shellescape4:                           # @shellescape4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	xorl	%eax, %eax
	cmpl	$31488, (%rdi)          # imm = 0x7B00
	sete	%al
	decl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end21:
	.size	shellescape4, .Lfunc_end21-shellescape4
	.cfi_endproc
                                        # -- End function
	.globl	shellescape5            # -- Begin function shellescape5
	.p2align	4, 0x90
	.type	shellescape5,@function
shellescape5:                           # @shellescape5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end22:
	.size	shellescape5, .Lfunc_end22-shellescape5
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movl	$222222274, -100(%rbp)  # imm = 0xD3ED7C2
	movl	$555555607, -96(%rbp)   # imm = 0x211D1B17
	movl	$444444496, -92(%rbp)   # imm = 0x1A7DAF50
	movl	$222222274, %edi        # imm = 0xD3ED7C2
	movl	$555555607, %esi        # imm = 0x211D1B17
	movl	$444444496, %edx        # imm = 0x1A7DAF50
	callq	guardMe
	movl	$0, -104(%rbp)
	movl	%ebx, -44(%rbp)
	movq	%r14, -40(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -56(%rbp)
	leaq	-40(%rbp), %rdi
	callq	main0
	movl	$0, Trynum(%rip)
	movl	$.L.str.13, %edi
	callq	getenv
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB23_12
# %bb.1:                                # %if.then
	movq	-32(%rbp), %rdi
	movl	$47, %esi
	callq	index
	leaq	-32(%rbp), %rdi
	testq	%rax, %rax
	je	.LBB23_3
# %bb.2:                                # %if.then3
	callq	main1
	jmp	.LBB23_4
.LBB23_12:                              # %if.else23
	movl	$hashname, %edi
	movl	$.L.str.1.14, %esi
	movl	$.L.str.2.15, %edx
	movl	$.L.str.4.17, %ecx
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB23_13
.LBB23_3:                               # %if.else
	callq	main2
.LBB23_4:                               # %if.end
	movq	-32(%rbp), %rsi
	movl	$main.libdictname, %edi
	callq	strcpy
	movq	-32(%rbp), %rdi
	movl	$46, %esi
	callq	rindex
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB23_6
# %bb.5:                                # %lor.lhs.false
	movq	-32(%rbp), %rdi
	movl	$.L.str.3.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB23_7
.LBB23_6:                               # %if.then11
	movl	$hashname, %edi
	movl	$.L.str.3.16, %esi
	callq	strcat
.LBB23_7:                               # %if.end13
	movl	$main.libdictname, %edi
	movl	$47, %esi
	callq	rindex
	movq	%rax, LibDict(%rip)
	testq	%rax, %rax
	je	.LBB23_9
# %bb.8:                                # %if.then16
	callq	main3
	jmp	.LBB23_10
.LBB23_9:                               # %if.else17
	movq	$main.libdictname, LibDict(%rip)
.LBB23_10:                              # %if.end18
	movl	$main.libdictname, %edi
	movl	$46, %esi
	callq	rindex
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB23_13
# %bb.11:                               # %if.then21
	leaq	-32(%rbp), %rdi
	callq	main4
.LBB23_13:                              # %if.end25
	movq	$0, -72(%rbp)
	leaq	-44(%rbp), %r14
	leaq	-40(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	main5
	cmpl	$0, -44(%rbp)
	jne	.LBB23_16
	jmp	.LBB23_15
	.p2align	4, 0x90
.LBB23_145:                             # %sw.epilog
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	main30
	cmpl	$0, -44(%rbp)
	je	.LBB23_15
.LBB23_16:                              # %land.rhs
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$45, (%rax)
	sete	%al
	testb	%al, %al
	jne	.LBB23_18
	jmp	.LBB23_146
	.p2align	4, 0x90
.LBB23_15:
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB23_146
.LBB23_18:                              # %while.body
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %eax
	addl	$-65, %eax
	cmpl	$55, %eax
	ja	.LBB23_144
# %bb.19:                               # %while.body
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_43:                              # %sw.bb166
	cmpl	$3, -20(%rbp)
	jl	.LBB23_45
# %bb.44:                               # %if.then169
	callq	usage
.LBB23_45:                              # %if.end170
	movl	$1, incfileflag(%rip)
	movl	$1, aflag(%rip)
	jmp	.LBB23_145
.LBB23_135:                             # %sw.bb386
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -80(%rbp)
	cmpb	$0, 2(%rax)
	jne	.LBB23_145
# %bb.136:                              # %if.then391
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_138
# %bb.137:                              # %if.then396
	callq	usage
.LBB23_138:                             # %if.end397
	leaq	-80(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	main27
	jmp	.LBB23_145
.LBB23_82:                              # %sw.bb266
	cmpl	$3, -20(%rbp)
	jl	.LBB23_84
# %bb.83:                               # %if.then269
	callq	usage
.LBB23_84:                              # %if.end270
	callq	main19
	jmp	.LBB23_145
.LBB23_109:                             # %sw.bb313
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -72(%rbp)
	cmpb	$0, 2(%rax)
	jne	.LBB23_114
# %bb.110:                              # %if.then318
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_112
# %bb.111:                              # %if.then323
	callq	usage
.LBB23_112:                             # %if.end324
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpb	$0, (%rax)
	jne	.LBB23_114
# %bb.113:                              # %if.then328
	movq	$0, -72(%rbp)
.LBB23_114:                             # %if.end330
	movq	$0, LibDict(%rip)
	jmp	.LBB23_145
.LBB23_65:                              # %sw.bb223
	cmpl	$3, -20(%rbp)
	jl	.LBB23_67
# %bb.66:                               # %if.then226
	callq	usage
.LBB23_67:                              # %if.end227
	movl	$0, xflag(%rip)
	jmp	.LBB23_145
.LBB23_88:                              # %sw.bb278
	cmpl	$3, -20(%rbp)
	jl	.LBB23_90
# %bb.89:                               # %if.then281
	callq	usage
.LBB23_90:                              # %if.end282
	movl	$0, sortit(%rip)
	jmp	.LBB23_145
.LBB23_103:                             # %sw.bb303
	cmpl	$3, -20(%rbp)
	jl	.LBB23_105
# %bb.104:                              # %if.then306
	callq	usage
.LBB23_105:                             # %if.end307
	movl	$0, minimenusize(%rip)
	jmp	.LBB23_145
.LBB23_34:                              # %sw.bb144
	cmpl	$3, -20(%rbp)
	jl	.LBB23_36
# %bb.35:                               # %if.then147
	callq	usage
.LBB23_36:                              # %if.end148
	movl	$1, tflag(%rip)
	movl	$1, deftflag(%rip)
	cmpq	$0, -56(%rbp)
	jne	.LBB23_145
# %bb.37:                               # %if.then151
	movq	$.L.str.128, -56(%rbp)
	jmp	.LBB23_145
.LBB23_132:                             # %sw.bb381
	cmpl	$3, -20(%rbp)
	jl	.LBB23_134
# %bb.133:                              # %if.then384
	callq	usage
.LBB23_134:                             # %if.end385
	movl	$1, vflag(%rip)
	jmp	.LBB23_145
.LBB23_49:                              # %sw.bb176
	cmpl	$3, -20(%rbp)
	jl	.LBB23_51
# %bb.50:                               # %if.then179
	callq	usage
.LBB23_51:                              # %if.end180
	callq	main12
	jmp	.LBB23_145
.LBB23_91:                              # %sw.bb283
	cmpl	$3, -20(%rbp)
	jl	.LBB23_93
# %bb.92:                               # %if.then286
	callq	usage
.LBB23_93:                              # %if.end287
	movl	$0, compoundflag(%rip)
	jmp	.LBB23_145
.LBB23_94:                              # %sw.bb288
	cmpl	$3, -20(%rbp)
	jl	.LBB23_96
# %bb.95:                               # %if.then291
	callq	usage
.LBB23_96:                              # %if.end292
	movl	$1, compoundflag(%rip)
	jmp	.LBB23_145
.LBB23_85:                              # %sw.bb272
	cmpl	$3, -20(%rbp)
	jl	.LBB23_87
# %bb.86:                               # %if.then275
	callq	usage
.LBB23_87:                              # %if.end276
	callq	main20
	jmp	.LBB23_145
.LBB23_68:                              # %sw.bb228
	cmpl	$3, -20(%rbp)
	jl	.LBB23_70
# %bb.69:                               # %if.then231
	callq	usage
.LBB23_70:                              # %if.end232
	movl	$1, xflag(%rip)
	jmp	.LBB23_145
.LBB23_46:                              # %sw.bb171
	cmpl	$3, -20(%rbp)
	jl	.LBB23_48
# %bb.47:                               # %if.then174
	callq	usage
.LBB23_48:                              # %if.end175
	callq	main11
	jmp	.LBB23_145
.LBB23_100:                             # %sw.bb298
	cmpl	$3, -20(%rbp)
	jl	.LBB23_102
# %bb.101:                              # %if.then301
	callq	usage
.LBB23_102:                             # %if.end302
	movl	$1, tryhardflag(%rip)
	jmp	.LBB23_145
.LBB23_139:                             # %sw.bb399
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 2(%rax)
	je	.LBB23_140
# %bb.143:                              # %if.else412
	leaq	-40(%rbp), %rdi
	callq	main29
	jmp	.LBB23_145
.LBB23_77:                              # %sw.bb252
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -32(%rbp)
	cmpb	$0, 2(%rax)
	jne	.LBB23_81
# %bb.78:                               # %if.then257
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_80
# %bb.79:                               # %if.then262
	callq	usage
.LBB23_80:                              # %if.end263
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	main17
.LBB23_81:                              # %if.end264
	leaq	-32(%rbp), %rdi
	callq	main18
	jmp	.LBB23_145
.LBB23_106:                             # %sw.bb308
	cmpl	$3, -20(%rbp)
	jl	.LBB23_108
# %bb.107:                              # %if.then311
	callq	usage
.LBB23_108:                             # %if.end312
	movl	$2, minimenusize(%rip)
	jmp	.LBB23_145
.LBB23_62:                              # %sw.bb215
	cmpl	$3, -20(%rbp)
	jl	.LBB23_64
# %bb.63:                               # %if.then218
	callq	usage
.LBB23_64:                              # %if.end219
	callq	main15
	jmp	.LBB23_145
.LBB23_115:                             # %sw.bb331
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -32(%rbp)
	cmpb	$0, 2(%rax)
	jne	.LBB23_119
# %bb.116:                              # %if.then336
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_118
# %bb.117:                              # %if.then341
	callq	usage
.LBB23_118:                             # %if.end342
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	main21
.LBB23_119:                             # %if.end343
	movq	-32(%rbp), %rdi
	movl	$47, %esi
	callq	index
	leaq	-32(%rbp), %rdi
	testq	%rax, %rax
	je	.LBB23_121
# %bb.120:                              # %if.then347
	callq	main22
	cmpq	$0, -72(%rbp)
	jne	.LBB23_125
	jmp	.LBB23_123
.LBB23_97:                              # %sw.bb293
	cmpl	$3, -20(%rbp)
	jl	.LBB23_99
# %bb.98:                               # %if.then296
	callq	usage
.LBB23_99:                              # %if.end297
	movl	$0, tryhardflag(%rip)
	jmp	.LBB23_145
.LBB23_38:                              # %sw.bb153
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -32(%rbp)
	cmpb	$0, 2(%rax)
	jne	.LBB23_42
# %bb.39:                               # %if.then158
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_41
# %bb.40:                               # %if.then163
	callq	usage
.LBB23_41:                              # %if.end164
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	main9
.LBB23_42:                              # %if.end165
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	main10
	jmp	.LBB23_145
.LBB23_71:                              # %sw.bb233
	addl	$1, fflag(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -32(%rbp)
	cmpb	$0, 2(%rax)
	jne	.LBB23_75
# %bb.72:                               # %if.then239
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_74
# %bb.73:                               # %if.then244
	callq	usage
.LBB23_74:                              # %if.end245
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	main16
.LBB23_75:                              # %if.end246
	movq	-32(%rbp), %rax
	movq	%rax, askfilename(%rip)
	cmpb	$0, (%rax)
	jne	.LBB23_145
# %bb.76:                               # %if.then250
	movq	$0, askfilename(%rip)
	jmp	.LBB23_145
.LBB23_52:                              # %sw.bb183
	cmpl	$4, -20(%rbp)
	jl	.LBB23_54
# %bb.53:                               # %if.then186
	callq	usage
.LBB23_54:                              # %if.end187
	movl	$1, eflag(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$101, 2(%rax)
	jne	.LBB23_56
# %bb.55:                               # %if.then192
	movl	$2, eflag(%rip)
	callq	main14
	jmp	.LBB23_145
.LBB23_30:                              # %sw.bb135
	cmpl	$3, -20(%rbp)
	jl	.LBB23_32
# %bb.31:                               # %if.then138
	callq	usage
.LBB23_32:                              # %if.end139
	movl	$0, tflag(%rip)
	movl	$0, deftflag(%rip)
	cmpq	$0, -56(%rbp)
	jne	.LBB23_145
# %bb.33:                               # %if.then142
	movq	$.L.str.127, -56(%rbp)
	jmp	.LBB23_145
.LBB23_144:                             # %sw.default
	callq	usage
	jmp	.LBB23_145
.LBB23_56:                              # %if.else193
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movsbl	2(%rax), %eax
	cmpl	$49, %eax
	jl	.LBB23_59
# %bb.57:                               # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movsbl	2(%rax), %eax
	cmpl	$52, %eax
	jg	.LBB23_59
# %bb.58:                               # %if.then202
	leaq	-40(%rbp), %rdi
	callq	main13
	callq	main14
	jmp	.LBB23_145
.LBB23_140:                             # %if.then404
	addq	$8, -40(%rbp)
	addl	$-1, -44(%rbp)
	jne	.LBB23_142
# %bb.141:                              # %if.then409
	callq	usage
.LBB23_142:                             # %if.end410
	leaq	-40(%rbp), %rdi
	callq	main28
	jmp	.LBB23_145
.LBB23_121:                             # %if.else349
	callq	main23
	cmpq	$0, -72(%rbp)
	jne	.LBB23_125
.LBB23_123:                             # %land.lhs.true354
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB23_125
# %bb.124:                              # %if.then358
	leaq	-32(%rbp), %rdi
	callq	main24
.LBB23_125:                             # %if.end359
	movq	-32(%rbp), %rdi
	movl	$46, %esi
	callq	rindex
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB23_128
# %bb.126:                              # %land.lhs.true363
	movq	-32(%rbp), %rdi
	movl	$.L.str.3.16, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB23_127
.LBB23_128:                             # %if.else368
	movl	$hashname, %edi
	movl	$.L.str.3.16, %esi
	callq	strcat
	cmpq	$0, LibDict(%rip)
	jne	.LBB23_130
	jmp	.LBB23_145
.LBB23_59:                              # %if.else205
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, 2(%rax)
	je	.LBB23_61
# %bb.60:                               # %if.then210
	callq	usage
.LBB23_61:                              # %if.end213
	callq	main14
	jmp	.LBB23_145
.LBB23_127:                             # %if.then367
	leaq	-32(%rbp), %rdi
	callq	main25
	cmpq	$0, LibDict(%rip)
	je	.LBB23_145
.LBB23_130:                             # %if.then373
	movq	LibDict(%rip), %rdi
	movl	$47, %esi
	callq	rindex
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB23_145
# %bb.131:                              # %if.then377
	leaq	-32(%rbp), %rdi
	callq	main26
	jmp	.LBB23_145
.LBB23_146:                             # %while.end
	cmpl	$0, -44(%rbp)
	jne	.LBB23_152
# %bb.147:                              # %land.lhs.true419
	cmpl	$0, lflag(%rip)
	jne	.LBB23_152
# %bb.148:                              # %land.lhs.true421
	cmpl	$0, aflag(%rip)
	jne	.LBB23_152
# %bb.149:                              # %land.lhs.true423
	cmpl	$0, eflag(%rip)
	jne	.LBB23_152
# %bb.150:                              # %land.lhs.true425
	cmpl	$0, dumpflag(%rip)
	jne	.LBB23_152
# %bb.151:                              # %if.then427
	callq	usage
.LBB23_152:                             # %if.end428
	movl	$0, -60(%rbp)
	leaq	-60(%rbp), %rbx
	jmp	.LBB23_153
	.p2align	4, 0x90
.LBB23_155:                             # %for.inc
                                        #   in Loop: Header=BB23_153 Depth=1
	movq	%rbx, %rdi
	callq	main31
.LBB23_153:                             # %for.cond429
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB23_156
# %bb.154:                              # %for.body432
                                        #   in Loop: Header=BB23_153 Depth=1
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	access
	testl	%eax, %eax
	js	.LBB23_155
.LBB23_156:                             # %for.end440
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB23_161
# %bb.157:                              # %land.lhs.true443
	cmpl	$0, lflag(%rip)
	jne	.LBB23_161
# %bb.158:                              # %land.lhs.true445
	cmpl	$0, aflag(%rip)
	jne	.LBB23_161
# %bb.159:                              # %land.lhs.true447
	cmpl	$0, eflag(%rip)
	jne	.LBB23_161
# %bb.160:                              # %land.lhs.true449
	cmpl	$0, dumpflag(%rip)
	je	.LBB23_187
.LBB23_161:                             # %if.end455
	callq	linit
	testl	%eax, %eax
	js	.LBB23_188
# %bb.162:                              # %if.end460
	cmpq	$0, -56(%rbp)
	je	.LBB23_166
# %bb.163:                              # %if.then463
	movq	-56(%rbp), %rdi
	movl	$deftflag, %eax
	xorl	%edx, %edx
	cmpl	$0, deftflag(%rip)
	cmovsq	%rax, %rdx
	movl	$1, %esi
	callq	findfiletype
	movl	%eax, prefstringchar(%rip)
	testl	%eax, %eax
	jns	.LBB23_166
# %bb.164:                              # %land.lhs.true470
	movq	-56(%rbp), %rdi
	movl	$.L.str.128, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB23_166
# %bb.165:                              # %land.lhs.true474
	movq	-56(%rbp), %rdi
	movl	$.L.str.127, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB23_189
.LBB23_166:                             # %if.end481
	cmpl	$0, prefstringchar(%rip)
	js	.LBB23_167
# %bb.168:                              # %if.else485
	callq	main34
	cmpl	$0, compoundflag(%rip)
	jns	.LBB23_171
.LBB23_170:                             # %if.then489
	callq	main35
.LBB23_171:                             # %if.end491
	cmpl	$0, tryhardflag(%rip)
	jns	.LBB23_173
# %bb.172:                              # %if.then494
	callq	main36
.LBB23_173:                             # %if.end496
	movq	-80(%rbp), %rdi
	callq	initckch
	cmpq	$0, LibDict(%rip)
	je	.LBB23_174
.LBB23_177:                             # %if.end510
	cmpl	$0, nodictflag(%rip)
	jne	.LBB23_179
.LBB23_178:                             # %if.then512
	leaq	-72(%rbp), %rdi
	callq	main38
.LBB23_179:                             # %if.end513
	cmpl	$0, aflag(%rip)
	jne	.LBB23_190
# %bb.180:                              # %if.else516
	cmpl	$0, eflag(%rip)
	jne	.LBB23_191
# %bb.181:                              # %if.else519
	cmpl	$0, dumpflag(%rip)
	jne	.LBB23_192
# %bb.182:                              # %if.end524
	movq	stdout(%rip), %rdi
	movl	$main.outbuf, %esi
	callq	setbuf
	cmpl	$0, lflag(%rip)
	jne	.LBB23_193
# %bb.183:                              # %if.end527
	callq	terminit
	leaq	-40(%rbp), %rbx
	jmp	.LBB23_184
	.p2align	4, 0x90
.LBB23_185:                             # %while.body531
                                        #   in Loop: Header=BB23_184 Depth=1
	movq	%rbx, %rdi
	callq	main43
.LBB23_184:                             # %while.cond528
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -44(%rbp)
	testl	%eax, %eax
	jne	.LBB23_185
# %bb.186:                              # %while.end533
	xorl	%edi, %edi
	callq	done
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB23_20:                              # %sw.bb
	cmpl	$4, -20(%rbp)
	jl	.LBB23_22
# %bb.21:                               # %if.then34
	callq	usage
.LBB23_22:                              # %if.end35
	movq	$Version_ID, -88(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB23_23
	.p2align	4, 0x90
.LBB23_26:                              # %if.end42
                                        #   in Loop: Header=BB23_23 Depth=1
	movq	%rbx, %rdi
	callq	main7
.LBB23_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_27
# %bb.24:                               # %for.body
                                        #   in Loop: Header=BB23_23 Depth=1
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	(%rax), %rdi
	movq	%rdi, -32(%rbp)
	movl	$.L.str.5.18, %esi
	movl	$5, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB23_26
# %bb.25:                               # %if.then41
                                        #   in Loop: Header=BB23_23 Depth=1
	movq	%rbx, %rdi
	callq	main6
	jmp	.LBB23_26
.LBB23_27:                              # %for.end
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$118, 2(%rax)
	jne	.LBB23_29
# %bb.28:                               # %if.then48
	callq	main8
.LBB23_29:                              # %if.end134
	xorl	%edi, %edi
	callq	exit
.LBB23_167:                             # %if.then484
	movl	$0, defdupchar(%rip)
	cmpl	$0, compoundflag(%rip)
	jns	.LBB23_171
	jmp	.LBB23_170
.LBB23_174:                             # %if.then499
	movl	$main.libdictname, %edi
	movl	$.L.str.4.17, %esi
	callq	strcpy
	movq	$main.libdictname, LibDict(%rip)
	movl	$main.libdictname, %edi
	movl	$46, %esi
	callq	rindex
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB23_177
# %bb.175:                              # %land.lhs.true504
	movq	-32(%rbp), %rdi
	movl	$.L.str.3.16, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB23_177
# %bb.176:                              # %if.then508
	leaq	-32(%rbp), %rdi
	callq	main37
	cmpl	$0, nodictflag(%rip)
	jne	.LBB23_179
	jmp	.LBB23_178
.LBB23_188:                             # %if.then459
	movl	$1, %edi
	callq	exit
.LBB23_190:                             # %if.then515
	callq	main39
.LBB23_191:                             # %if.then518
	callq	main40
.LBB23_192:                             # %if.then521
	callq	main41
.LBB23_193:                             # %if.then526
	callq	main42
.LBB23_187:                             # %if.then451
	leaq	-44(%rbp), %rdi
	callq	main32
.LBB23_189:                             # %if.then478
	leaq	-56(%rbp), %rdi
	callq	main33
.Lfunc_end23:
	.size	main, .Lfunc_end23-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_43
	.quad	.LBB23_91
	.quad	.LBB23_94
	.quad	.LBB23_49
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_77
	.quad	.LBB23_106
	.quad	.LBB23_103
	.quad	.LBB23_144
	.quad	.LBB23_97
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_88
	.quad	.LBB23_38
	.quad	.LBB23_144
	.quad	.LBB23_132
	.quad	.LBB23_139
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_46
	.quad	.LBB23_65
	.quad	.LBB23_62
	.quad	.LBB23_115
	.quad	.LBB23_52
	.quad	.LBB23_71
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_82
	.quad	.LBB23_100
	.quad	.LBB23_30
	.quad	.LBB23_144
	.quad	.LBB23_109
	.quad	.LBB23_144
	.quad	.LBB23_144
	.quad	.LBB23_85
	.quad	.LBB23_34
	.quad	.LBB23_144
	.quad	.LBB23_20
	.quad	.LBB23_135
	.quad	.LBB23_68
                                        # -- End function
	.text
	.globl	main0                   # -- Begin function main0
	.p2align	4, 0x90
	.type	main0,@function
main0:                                  # @main0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, Cmd(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end24:
	.size	main0, .Lfunc_end24-main0
	.cfi_endproc
                                        # -- End function
	.globl	main1                   # -- Begin function main1
	.p2align	4, 0x90
	.type	main1,@function
main1:                                  # @main1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$hashname, %edi
	callq	strcpy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end25:
	.size	main1, .Lfunc_end25-main1
	.cfi_endproc
                                        # -- End function
	.globl	main2                   # -- Begin function main2
	.p2align	4, 0x90
	.type	main2,@function
main2:                                  # @main2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	movl	$hashname, %edi
	movl	$.L.str.1.14, %esi
	movl	$.L.str.2.15, %edx
	xorl	%eax, %eax
	callq	sprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end26:
	.size	main2, .Lfunc_end26-main2
	.cfi_endproc
                                        # -- End function
	.globl	main3                   # -- Begin function main3
	.p2align	4, 0x90
	.type	main3,@function
main3:                                  # @main3
	.cfi_startproc
# %bb.0:                                # %entry
	incq	LibDict(%rip)
	retq
.Lfunc_end27:
	.size	main3, .Lfunc_end27-main3
	.cfi_endproc
                                        # -- End function
	.globl	main4                   # -- Begin function main4
	.p2align	4, 0x90
	.type	main4,@function
main4:                                  # @main4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end28:
	.size	main4, .Lfunc_end28-main4
	.cfi_endproc
                                        # -- End function
	.globl	main5                   # -- Begin function main5
	.p2align	4, 0x90
	.type	main5,@function
main5:                                  # @main5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rsp)
	decl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end29:
	.size	main5, .Lfunc_end29-main5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function usage
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	usage0
	movl	$222222276, -24(%rbp)   # imm = 0xD3ED7C4
	movl	$555555609, -20(%rbp)   # imm = 0x211D1B19
	movl	$444444498, -16(%rbp)   # imm = 0x1A7DAF52
	movl	$222222276, %edi        # imm = 0xD3ED7C4
	movl	$555555609, %esi        # imm = 0x211D1B19
	movl	$444444498, %edx        # imm = 0x1A7DAF52
	callq	guardMe
	movl	$222222275, -12(%rbp)   # imm = 0xD3ED7C3
	movl	$555555608, -8(%rbp)    # imm = 0x211D1B18
	movl	$444444497, -4(%rbp)    # imm = 0x1A7DAF51
	movl	$222222275, %edi        # imm = 0xD3ED7C3
	movl	$555555608, %esi        # imm = 0x211D1B18
	movl	$444444497, %edx        # imm = 0x1A7DAF51
	callq	guardMe
	xorl	%edi, %edi
	callq	givehelp
	movl	$1, %edi
	callq	exit
.Lfunc_end30:
	.size	usage, .Lfunc_end30-usage
	.cfi_endproc
                                        # -- End function
	.globl	main6                   # -- Begin function main6
	.p2align	4, 0x90
	.type	main6,@function
main6:                                  # @main6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$5, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end31:
	.size	main6, .Lfunc_end31-main6
	.cfi_endproc
                                        # -- End function
	.globl	main7                   # -- Begin function main7
	.p2align	4, 0x90
	.type	main7,@function
main7:                                  # @main7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end32:
	.size	main7, .Lfunc_end32-main7
	.cfi_endproc
                                        # -- End function
	.globl	main8                   # -- Begin function main8
	.p2align	4, 0x90
	.type	main8,@function
main8:                                  # @main8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.9, %edi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.11, %edi
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.13.19, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.15, %edi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.17, %edi
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.21, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.22, %edi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.24, %edi
	movl	$.L.str.4.17, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.25, %edi
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.27, %edi
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.29, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.30, %edi
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.32, %edi
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.34, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.35, %edi
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.37, %edi
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.39, %edi
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.41, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.44, %edi
	movl	$.L.str.3.16, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.45, %edi
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.47, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.48, %edi
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.50, %edi
	movl	$100, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.51, %edi
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.53, %edi
	movl	$.L.str.2.15, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.54, %edi
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.56, %edi
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.58, %edi
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.59, %edi
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.61, %edi
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.63, %edi
	movl	$4088, %esi             # imm = 0xFF8
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.64, %edi
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.66, %edi
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.68, %edi
	movl	$.L.str.69, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.70, %edi
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.72, %edi
	movl	$32, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.73, %edi
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.75, %edi
	movl	$32, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.76, %edi
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.78, %edi
	movl	$20, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.79, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.80, %edi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.81, %edi
	movl	$255, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.82, %edi
	movl	$4096, %esi             # imm = 0x1000
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.83, %edi
	movl	$70, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.84, %edi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.85, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.86, %edi
	movl	$100, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.87, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.88, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.89, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.90, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.91, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.92, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.93, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.94, %edi
	movl	$.L.str.95, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.96, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.97, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.98, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.99, %edi
	movl	$.L.str.100, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.101, %edi
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.102, %edi
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.103, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.104, %edi
	movl	$.L.str.105, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.106, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.107, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.108, %edi
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.109, %edi
	movl	$.L.str.110, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.111, %edi
	movl	$1000, %esi             # imm = 0x3E8
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.112, %edi
	movl	$.L.str.113, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.114, %edi
	movl	$.L.str.115, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.116, %edi
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.117, %edi
	movl	$.L.str.118, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.119, %edi
	movl	$.L.str.120, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.121, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.122, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.123, %edi
	movl	$.L.str.124, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.125, %edi
	movl	$.L.str.126, %esi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end33:
	.size	main8, .Lfunc_end33-main8
	.cfi_endproc
                                        # -- End function
	.globl	main9                   # -- Begin function main9
	.p2align	4, 0x90
	.type	main9,@function
main9:                                  # @main9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end34:
	.size	main9, .Lfunc_end34-main9
	.cfi_endproc
                                        # -- End function
	.globl	main10                  # -- Begin function main10
	.p2align	4, 0x90
	.type	main10,@function
main10:                                 # @main10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end35:
	.size	main10, .Lfunc_end35-main10
	.cfi_endproc
                                        # -- End function
	.globl	main11                  # -- Begin function main11
	.p2align	4, 0x90
	.type	main11,@function
main11:                                 # @main11
	.cfi_startproc
# %bb.0:                                # %entry
	incl	aflag(%rip)
	retq
.Lfunc_end36:
	.size	main11, .Lfunc_end36-main11
	.cfi_endproc
                                        # -- End function
	.globl	main12                  # -- Begin function main12
	.p2align	4, 0x90
	.type	main12,@function
main12:                                 # @main12
	.cfi_startproc
# %bb.0:                                # %entry
	incl	dumpflag(%rip)
	incl	nodictflag(%rip)
	retq
.Lfunc_end37:
	.size	main12, .Lfunc_end37-main12
	.cfi_endproc
                                        # -- End function
	.globl	main13                  # -- Begin function main13
	.p2align	4, 0x90
	.type	main13,@function
main13:                                 # @main13
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movsbl	2(%rcx), %ecx
	addl	$-48, %ecx
	movl	%ecx, eflag(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end38:
	.size	main13, .Lfunc_end38-main13
	.cfi_endproc
                                        # -- End function
	.globl	main14                  # -- Begin function main14
	.p2align	4, 0x90
	.type	main14,@function
main14:                                 # @main14
	.cfi_startproc
# %bb.0:                                # %entry
	incl	nodictflag(%rip)
	retq
.Lfunc_end39:
	.size	main14, .Lfunc_end39-main14
	.cfi_endproc
                                        # -- End function
	.globl	main15                  # -- Begin function main15
	.p2align	4, 0x90
	.type	main15,@function
main15:                                 # @main15
	.cfi_startproc
# %bb.0:                                # %entry
	incl	cflag(%rip)
	incl	lflag(%rip)
	incl	nodictflag(%rip)
	retq
.Lfunc_end40:
	.size	main15, .Lfunc_end40-main15
	.cfi_endproc
                                        # -- End function
	.globl	main16                  # -- Begin function main16
	.p2align	4, 0x90
	.type	main16,@function
main16:                                 # @main16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end41:
	.size	main16, .Lfunc_end41-main16
	.cfi_endproc
                                        # -- End function
	.globl	main17                  # -- Begin function main17
	.p2align	4, 0x90
	.type	main17,@function
main17:                                 # @main17
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end42:
	.size	main17, .Lfunc_end42-main17
	.cfi_endproc
                                        # -- End function
	.globl	main18                  # -- Begin function main18
	.p2align	4, 0x90
	.type	main18,@function
main18:                                 # @main18
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	atoi
	movl	%eax, contextsize(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end43:
	.size	main18, .Lfunc_end43-main18
	.cfi_endproc
                                        # -- End function
	.globl	main19                  # -- Begin function main19
	.p2align	4, 0x90
	.type	main19,@function
main19:                                 # @main19
	.cfi_startproc
# %bb.0:                                # %entry
	incl	lflag(%rip)
	retq
.Lfunc_end44:
	.size	main19, .Lfunc_end44-main19
	.cfi_endproc
                                        # -- End function
	.globl	main20                  # -- Begin function main20
	.p2align	4, 0x90
	.type	main20,@function
main20:                                 # @main20
	.cfi_startproc
# %bb.0:                                # %entry
	incl	sflag(%rip)
	retq
.Lfunc_end45:
	.size	main20, .Lfunc_end45-main20
	.cfi_endproc
                                        # -- End function
	.globl	main21                  # -- Begin function main21
	.p2align	4, 0x90
	.type	main21,@function
main21:                                 # @main21
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end46:
	.size	main21, .Lfunc_end46-main21
	.cfi_endproc
                                        # -- End function
	.globl	main22                  # -- Begin function main22
	.p2align	4, 0x90
	.type	main22,@function
main22:                                 # @main22
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$hashname, %edi
	callq	strcpy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end47:
	.size	main22, .Lfunc_end47-main22
	.cfi_endproc
                                        # -- End function
	.globl	main23                  # -- Begin function main23
	.p2align	4, 0x90
	.type	main23,@function
main23:                                 # @main23
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	movl	$hashname, %edi
	movl	$.L.str.1.14, %esi
	movl	$.L.str.2.15, %edx
	xorl	%eax, %eax
	callq	sprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end48:
	.size	main23, .Lfunc_end48-main23
	.cfi_endproc
                                        # -- End function
	.globl	main24                  # -- Begin function main24
	.p2align	4, 0x90
	.type	main24,@function
main24:                                 # @main24
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, LibDict(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end49:
	.size	main24, .Lfunc_end49-main24
	.cfi_endproc
                                        # -- End function
	.globl	main25                  # -- Begin function main25
	.p2align	4, 0x90
	.type	main25,@function
main25:                                 # @main25
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end50:
	.size	main25, .Lfunc_end50-main25
	.cfi_endproc
                                        # -- End function
	.globl	main26                  # -- Begin function main26
	.p2align	4, 0x90
	.type	main26,@function
main26:                                 # @main26
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	leaq	1(%rax), %rcx
	movq	%rcx, LibDict(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end51:
	.size	main26, .Lfunc_end51-main26
	.cfi_endproc
                                        # -- End function
	.globl	main27                  # -- Begin function main27
	.p2align	4, 0x90
	.type	main27,@function
main27:                                 # @main27
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end52:
	.size	main27, .Lfunc_end52-main27
	.cfi_endproc
                                        # -- End function
	.globl	main28                  # -- Begin function main28
	.p2align	4, 0x90
	.type	main28,@function
main28:                                 # @main28
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, minword(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end53:
	.size	main28, .Lfunc_end53-main28
	.cfi_endproc
                                        # -- End function
	.globl	main29                  # -- Begin function main29
	.p2align	4, 0x90
	.type	main29,@function
main29:                                 # @main29
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	(%rax), %rdi
	addq	$2, %rdi
	callq	atoi
	movl	%eax, minword(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end54:
	.size	main29, .Lfunc_end54-main29
	.cfi_endproc
                                        # -- End function
	.globl	main30                  # -- Begin function main30
	.p2align	4, 0x90
	.type	main30,@function
main30:                                 # @main30
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rsp)
	decl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end55:
	.size	main30, .Lfunc_end55-main30
	.cfi_endproc
                                        # -- End function
	.globl	main31                  # -- Begin function main31
	.p2align	4, 0x90
	.type	main31,@function
main31:                                 # @main31
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end56:
	.size	main31, .Lfunc_end56-main31
	.cfi_endproc
                                        # -- End function
	.globl	main32                  # -- Begin function main32
	.p2align	4, 0x90
	.type	main32,@function
main32:                                 # @main32
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	cmpl	$1, %eax
	movl	$.L.str.129, %eax
	movl	$.L.str.130, %esi
	cmoveq	%rax, %rsi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end57:
	.size	main32, .Lfunc_end57-main32
	.cfi_endproc
                                        # -- End function
	.globl	linit                   # -- Begin function linit
	.p2align	4, 0x90
	.type	linit,@function
linit:                                  # @linit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$222222332, -132(%rbp)  # imm = 0xD3ED7FC
	movl	$555555665, -128(%rbp)  # imm = 0x211D1B51
	movl	$444444554, -124(%rbp)  # imm = 0x1A7DAF8A
	movl	$222222332, %edi        # imm = 0xD3ED7FC
	movl	$555555665, %esi        # imm = 0x211D1B51
	movl	$444444554, %edx        # imm = 0x1A7DAF8A
	callq	guardMe
	movl	$222222331, -120(%rbp)  # imm = 0xD3ED7FB
	movl	$555555664, -116(%rbp)  # imm = 0x211D1B50
	movl	$444444553, -112(%rbp)  # imm = 0x1A7DAF89
	movl	$222222331, %edi        # imm = 0xD3ED7FB
	movl	$555555664, %esi        # imm = 0x211D1B50
	movl	$444444553, %edx        # imm = 0x1A7DAF89
	callq	guardMe
	movl	$222222330, -108(%rbp)  # imm = 0xD3ED7FA
	movl	$555555663, -104(%rbp)  # imm = 0x211D1B4F
	movl	$444444552, -100(%rbp)  # imm = 0x1A7DAF88
	movl	$222222330, %edi        # imm = 0xD3ED7FA
	movl	$555555663, %esi        # imm = 0x211D1B4F
	movl	$444444552, %edx        # imm = 0x1A7DAF88
	callq	guardMe
	cmpl	$0, inited(%rip)
	je	.LBB58_2
# %bb.1:                                # %if.then
	movl	$0, -44(%rbp)
.LBB58_33:                              # %return
	movl	-44(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB58_2:                               # %if.end
	movl	$hashname, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, -64(%rbp)
	testl	%eax, %eax
	js	.LBB58_3
# %bb.4:                                # %if.end4
	movl	-64(%rbp), %edi
	movl	$hashheader, %esi
	movl	$3928, %edx             # imm = 0xF58
	xorl	%eax, %eax
	callq	read
	movl	%eax, hashsize(%rip)
	movslq	hashsize(%rip), %rax
	cmpq	$3927, %rax             # imm = 0xF57
	ja	.LBB58_10
# %bb.5:                                # %if.then8
	cmpl	$0, hashsize(%rip)
	js	.LBB58_6
# %bb.7:                                # %if.else
	cmpl	$0, hashsize(%rip)
	je	.LBB58_8
# %bb.9:                                # %if.else17
	callq	linit3
	movl	$-1, -44(%rbp)
	jmp	.LBB58_33
.LBB58_3:                               # %if.then2
	leaq	-44(%rbp), %rdi
	callq	linit0
	jmp	.LBB58_33
.LBB58_10:                              # %if.else21
	movzwl	hashheader(%rip), %eax
	cmpl	$38402, %eax            # imm = 0x9602
	je	.LBB58_12
# %bb.11:                               # %if.then25
	leaq	-44(%rbp), %rdi
	callq	linit4
	jmp	.LBB58_33
.LBB58_12:                              # %if.else28
	movzwl	hashheader+3924(%rip), %eax
	cmpl	$38402, %eax            # imm = 0x9602
	je	.LBB58_14
# %bb.13:                               # %if.then32
	leaq	-44(%rbp), %rdi
	callq	linit5
	jmp	.LBB58_33
.LBB58_6:                               # %if.then11
	callq	linit1
	movl	$-1, -44(%rbp)
	jmp	.LBB58_33
.LBB58_14:                              # %if.else35
	movzwl	hashheader+2(%rip), %eax
	cmpl	$3, %eax
	jne	.LBB58_17
# %bb.15:                               # %lor.lhs.false
	movzwl	hashheader+4(%rip), %eax
	cmpl	$100, %eax
	jne	.LBB58_17
# %bb.16:                               # %lor.lhs.false42
	movzwl	hashheader+6(%rip), %eax
	cmpl	$10, %eax
	je	.LBB58_18
.LBB58_17:                              # %if.then46
	leaq	-44(%rbp), %rdi
	callq	linit6
	jmp	.LBB58_33
.LBB58_8:                               # %if.then15
	callq	linit2
	movl	$-1, -44(%rbp)
	jmp	.LBB58_33
.LBB58_18:                              # %if.end54
	cmpl	$0, nodictflag(%rip)
	je	.LBB58_22
# %bb.19:                               # %if.then56
	movl	$1, hashsize(%rip)
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, hashtbl(%rip)
	testq	%rax, %rax
	je	.LBB58_20
# %bb.21:                               # %if.end62
	callq	linit8
	jmp	.LBB58_23
.LBB58_22:                              # %if.else68
	callq	linit9
.LBB58_23:                              # %if.end73
	movl	hashheader+24(%rip), %eax
	movl	%eax, numsflags(%rip)
	movl	hashheader+28(%rip), %eax
	movl	%eax, numpflags(%rip)
	movslq	numsflags(%rip), %rax
	movslq	numpflags(%rip), %rdi
	addq	%rax, %rdi
	shlq	$8, %rdi
	callq	malloc
	movq	%rax, sflaglist(%rip)
	cmpq	$0, hashtbl(%rip)
	je	.LBB58_26
# %bb.24:                               # %lor.lhs.false79
	cmpq	$0, hashstrings(%rip)
	je	.LBB58_26
# %bb.25:                               # %lor.lhs.false82
	cmpq	$0, sflaglist(%rip)
	je	.LBB58_26
# %bb.27:                               # %if.end87
	movslq	numsflags(%rip), %rax
	shlq	$8, %rax
	addq	sflaglist(%rip), %rax
	movq	%rax, pflaglist(%rip)
	cmpl	$0, nodictflag(%rip)
	je	.LBB58_30
# %bb.28:                               # %if.then89
	movl	-64(%rbp), %edi
	movq	hashstrings(%rip), %rsi
	movl	hashheader+16(%rip), %edx
	xorl	%eax, %eax
	callq	read
	cmpl	hashheader+16(%rip), %eax
	je	.LBB58_34
# %bb.29:                               # %if.then93
	leaq	-44(%rbp), %rdi
	callq	linit11
	jmp	.LBB58_33
.LBB58_26:                              # %if.then85
	leaq	-44(%rbp), %rdi
	callq	linit10
	jmp	.LBB58_33
.LBB58_20:                              # %if.then60
	leaq	-44(%rbp), %rdi
	callq	linit7
	jmp	.LBB58_33
.LBB58_30:                              # %if.else102
	movl	-64(%rbp), %edi
	movq	hashstrings(%rip), %rsi
	movl	hashheader+12(%rip), %edx
	xorl	%eax, %eax
	callq	read
	cmpl	hashheader+12(%rip), %eax
	jne	.LBB58_32
# %bb.31:                               # %lor.lhs.false106
	movl	-64(%rbp), %edi
	movq	hashtbl(%rip), %rsi
	movl	hashheader+20(%rip), %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
	xorl	%eax, %eax
	callq	read
	cltq
	movslq	hashheader+20(%rip), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	cmpq	%rcx, %rax
	je	.LBB58_35
.LBB58_32:                              # %if.then115
	leaq	-44(%rbp), %rdi
	callq	linit13
	jmp	.LBB58_33
.LBB58_34:                              # %if.end95
	leaq	-64(%rbp), %rdi
	callq	linit12
.LBB58_35:                              # %if.end118
	movl	-64(%rbp), %edi
	movq	sflaglist(%rip), %rsi
	movl	numsflags(%rip), %edx
	addl	numpflags(%rip), %edx
	shlq	$8, %rdx
	xorl	%eax, %eax
	callq	read
	cltq
	movslq	numsflags(%rip), %rcx
	movslq	numpflags(%rip), %rdx
	addq	%rcx, %rdx
	shlq	$8, %rdx
	cmpq	%rdx, %rax
	je	.LBB58_37
# %bb.36:                               # %if.then129
	leaq	-44(%rbp), %rdi
	callq	linit14
	jmp	.LBB58_33
.LBB58_37:                              # %if.end131
	movl	-64(%rbp), %edi
	xorl	%eax, %eax
	callq	close
	cmpl	$0, nodictflag(%rip)
	jne	.LBB58_47
# %bb.38:                               # %if.then134
	leaq	-96(%rbp), %rbx
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	callq	linit15
	addl	$-1, -48(%rbp)
	jns	.LBB58_40
	jmp	.LBB58_47
.LBB58_46:                              # %for.inc
                                        #   in Loop: Header=BB58_40 Depth=1
	movq	%rbx, %rdi
	callq	linit20
	addl	$-1, -48(%rbp)
	js	.LBB58_47
.LBB58_40:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	$-1, 8(%rax)
	je	.LBB58_41
# %bb.42:                               # %if.else142
                                        #   in Loop: Header=BB58_40 Depth=1
	movq	%rbx, %rdi
	callq	linit17
	jmp	.LBB58_43
.LBB58_41:                              # %if.then140
                                        #   in Loop: Header=BB58_40 Depth=1
	movq	%rbx, %rdi
	callq	linit16
.LBB58_43:                              # %if.end146
                                        #   in Loop: Header=BB58_40 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$-1, (%rax)
	je	.LBB58_44
# %bb.45:                               # %if.else152
                                        #   in Loop: Header=BB58_40 Depth=1
	movq	%rbx, %rdi
	callq	linit19
	jmp	.LBB58_46
.LBB58_44:                              # %if.then150
                                        #   in Loop: Header=BB58_40 Depth=1
	movq	%rbx, %rdi
	callq	linit18
	jmp	.LBB58_46
.LBB58_47:                              # %if.end158
	leaq	-72(%rbp), %rbx
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	callq	linit21
	addl	$-1, -48(%rbp)
	jns	.LBB58_49
	jmp	.LBB58_56
.LBB58_55:                              # %for.inc181
                                        #   in Loop: Header=BB58_49 Depth=1
	movq	%rbx, %rdi
	callq	linit26
	addl	$-1, -48(%rbp)
	js	.LBB58_56
.LBB58_49:                              # %for.body164
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB58_51
# %bb.50:                               # %if.then166
                                        #   in Loop: Header=BB58_49 Depth=1
	movq	%rbx, %rdi
	callq	linit22
	jmp	.LBB58_52
.LBB58_51:                              # %if.else170
                                        #   in Loop: Header=BB58_49 Depth=1
	movq	%rbx, %rdi
	callq	linit23
.LBB58_52:                              # %if.end172
                                        #   in Loop: Header=BB58_49 Depth=1
	movq	-72(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB58_54
# %bb.53:                               # %if.then174
                                        #   in Loop: Header=BB58_49 Depth=1
	movq	%rbx, %rdi
	callq	linit24
	jmp	.LBB58_55
.LBB58_54:                              # %if.else178
                                        #   in Loop: Header=BB58_49 Depth=1
	movq	%rbx, %rdi
	callq	linit25
	jmp	.LBB58_55
.LBB58_56:                              # %for.end183
	leaq	-72(%rbp), %r15
	leaq	-48(%rbp), %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	linit27
	leaq	-56(%rbp), %rbx
	movl	$128, %r13d
	leaq	-80(%rbp), %r12
	cmpl	$0, -48(%rbp)
	jg	.LBB58_58
	jmp	.LBB58_78
.LBB58_77:                              # %for.inc261
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	linit34
	cmpl	$0, -48(%rbp)
	jle	.LBB58_78
.LBB58_58:                              # %for.body187
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_68 Depth 2
                                        #       Child Loop BB58_69 Depth 3
	movq	-72(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB58_59
# %bb.67:                               # %if.else193
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	linit28
	jmp	.LBB58_68
.LBB58_75:                              # %if.else213
                                        #   in Loop: Header=BB58_68 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	linit30
.LBB58_68:                              # %while.cond
                                        #   Parent Loop BB58_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB58_69 Depth 3
	movl	$0, -60(%rbp)
	jmp	.LBB58_69
.LBB58_74:                              # %if.then209
                                        #   in Loop: Header=BB58_69 Depth=3
	movq	%rbx, %rdi
	callq	linit29
	movl	$1, -60(%rbp)
.LBB58_69:                              # %while.cond
                                        #   Parent Loop BB58_58 Depth=1
                                        #     Parent Loop BB58_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB58_71
# %bb.70:                               #   in Loop: Header=BB58_69 Depth=3
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB58_73
	jmp	.LBB58_60
.LBB58_71:                              # %land.rhs
                                        #   in Loop: Header=BB58_69 Depth=3
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	testb	%al, %al
	je	.LBB58_60
.LBB58_73:                              # %while.body
                                        #   in Loop: Header=BB58_69 Depth=3
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB58_75
	jmp	.LBB58_74
.LBB58_59:                              # %if.then192
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	$0, -80(%rbp)
	movq	$sflagindex, -56(%rbp)
	movl	$1, -60(%rbp)
.LBB58_60:                              # %if.end220
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB58_62
# %bb.61:                               # %if.then224
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	linit31
.LBB58_62:                              # %if.end226
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	-56(%rbp), %rax
	addl	$1, 8(%rax)
	cmpl	$0, -60(%rbp)
	jne	.LBB58_77
# %bb.63:                               # %land.lhs.true
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$4, 8(%rax)
	jl	.LBB58_77
# %bb.64:                               # %land.lhs.true232
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB58_77
# %bb.65:                               # %if.then240
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	$-256, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movl	numsflags(%rip), %ecx
	subq	sflaglist(%rip), %rax
	shrq	$8, %rax
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movl	hashheader+36(%rip), %edi
	addl	%r13d, %edi
	movl	$16, %esi
	callq	calloc
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_66
# %bb.76:                               # %if.end258
                                        #   in Loop: Header=BB58_58 Depth=1
	movq	%rbx, %rdi
	callq	linit33
	jmp	.LBB58_77
.LBB58_78:                              # %for.end264
	leaq	-72(%rbp), %r15
	leaq	-48(%rbp), %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	linit35
	leaq	-56(%rbp), %rbx
	movq	$-256, %r13
	leaq	-80(%rbp), %r12
	cmpl	$0, -48(%rbp)
	jg	.LBB58_80
	jmp	.LBB58_100
.LBB58_99:                              # %for.inc353
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	linit42
	cmpl	$0, -48(%rbp)
	jle	.LBB58_100
.LBB58_80:                              # %for.body268
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_90 Depth 2
                                        #       Child Loop BB58_91 Depth 3
	movq	-72(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB58_81
# %bb.89:                               # %if.else274
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	linit36
	jmp	.LBB58_90
.LBB58_97:                              # %if.else297
                                        #   in Loop: Header=BB58_90 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	linit38
.LBB58_90:                              # %while.cond279
                                        #   Parent Loop BB58_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB58_91 Depth 3
	movl	$0, -60(%rbp)
	jmp	.LBB58_91
.LBB58_96:                              # %if.then293
                                        #   in Loop: Header=BB58_91 Depth=3
	movq	%rbx, %rdi
	callq	linit37
	movl	$1, -60(%rbp)
.LBB58_91:                              # %while.cond279
                                        #   Parent Loop BB58_80 Depth=1
                                        #     Parent Loop BB58_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB58_93
# %bb.92:                               #   in Loop: Header=BB58_91 Depth=3
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB58_95
	jmp	.LBB58_82
.LBB58_93:                              # %land.rhs283
                                        #   in Loop: Header=BB58_91 Depth=3
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	testb	%al, %al
	je	.LBB58_82
.LBB58_95:                              # %while.body289
                                        #   in Loop: Header=BB58_91 Depth=3
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB58_97
	jmp	.LBB58_96
.LBB58_81:                              # %if.then273
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	$0, -80(%rbp)
	movq	$pflagindex, -56(%rbp)
	movl	$1, -60(%rbp)
.LBB58_82:                              # %if.end305
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB58_84
# %bb.83:                               # %if.then309
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	linit39
.LBB58_84:                              # %if.end312
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	-56(%rbp), %rax
	addl	$1, 8(%rax)
	cmpl	$0, -60(%rbp)
	jne	.LBB58_99
# %bb.85:                               # %land.lhs.true316
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$4, 8(%rax)
	jl	.LBB58_99
# %bb.86:                               # %land.lhs.true320
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB58_99
# %bb.87:                               # %if.then328
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	%r13, %rax
	movq	%rax, -72(%rbp)
	movl	numpflags(%rip), %ecx
	subq	pflaglist(%rip), %rax
	shrq	$8, %rax
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movslq	hashheader+36(%rip), %rdi
	subq	$-128, %rdi
	movl	$16, %esi
	callq	calloc
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_88
# %bb.98:                               # %if.end350
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	%rbx, %rdi
	callq	linit41
	jmp	.LBB58_99
.LBB58_100:                             # %for.end356
	cmpl	$0, hashheader+40(%rip)
	je	.LBB58_101
# %bb.103:                              # %if.else360
	movslq	hashheader+40(%rip), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, chartypes(%rip)
	testq	%rax, %rax
	je	.LBB58_104
# %bb.105:                              # %if.end368
	leaq	-84(%rbp), %rbx
	leaq	-48(%rbp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	linit44
	jmp	.LBB58_106
.LBB58_110:                             # %for.inc417
                                        #   in Loop: Header=BB58_106 Depth=1
	movq	%rbx, %rdi
	callq	linit47
	movq	%r14, %rdi
	callq	linit48
.LBB58_106:                             # %for.cond369
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_108 Depth 2
	movl	-48(%rbp), %eax
	cmpl	hashheader+40(%rip), %eax
	jge	.LBB58_102
# %bb.107:                              # %for.body372
                                        #   in Loop: Header=BB58_106 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	linit45
	jmp	.LBB58_108
.LBB58_109:                             # %while.body407
                                        #   in Loop: Header=BB58_108 Depth=2
	movq	%rbx, %rdi
	callq	linit46
.LBB58_108:                             # %while.cond401
                                        #   Parent Loop BB58_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-84(%rbp), %rax
	movq	hashstrings(%rip), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB58_109
	jmp	.LBB58_110
.LBB58_101:                             # %if.then359
	movq	$0, chartypes(%rip)
.LBB58_102:                             # %if.end420
	leaq	-44(%rbp), %rdi
	callq	linit49
	jmp	.LBB58_33
.LBB58_104:                             # %if.then366
	leaq	-44(%rbp), %rdi
	callq	linit43
	jmp	.LBB58_33
.LBB58_66:                              # %if.then256
	callq	linit32
	movl	$-1, -44(%rbp)
	jmp	.LBB58_33
.LBB58_88:                              # %if.then348
	callq	linit40
	movl	$-1, -44(%rbp)
	jmp	.LBB58_33
.Lfunc_end58:
	.size	linit, .Lfunc_end58-linit
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype            # -- Begin function findfiletype
	.p2align	4, 0x90
	.type	findfiletype,@function
findfiletype:                           # @findfiletype
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$222222487, -84(%rbp)   # imm = 0xD3ED897
	movl	$555555820, -80(%rbp)   # imm = 0x211D1BEC
	movl	$444444709, -76(%rbp)   # imm = 0x1A7DB025
	movl	$222222487, %edi        # imm = 0xD3ED897
	movl	$555555820, %esi        # imm = 0x211D1BEC
	movl	$444444709, %edx        # imm = 0x1A7DB025
	callq	guardMe
	movq	%rbx, -72(%rbp)
	movl	%r15d, -60(%rbp)
	movq	%r14, -48(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, -36(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB59_8
# %bb.1:                                # %if.then
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rbx
	jmp	.LBB59_2
	.p2align	4, 0x90
.LBB59_7:                               # %for.inc
                                        #   in Loop: Header=BB59_2 Depth=1
	movq	%rbx, %rdi
	callq	findfiletype2
.LBB59_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	hashheader+40(%rip), %eax
	jge	.LBB59_8
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB59_2 Depth=1
	movq	-72(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	chartypes(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	(%rcx,%rax,8), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB59_7
# %bb.4:                                # %if.then6
	cmpq	$0, -48(%rbp)
	je	.LBB59_6
# %bb.5:                                # %if.then9
	leaq	-48(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	findfiletype0
.LBB59_6:                               # %if.end
	leaq	-32(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	findfiletype1
	jmp	.LBB59_20
.LBB59_8:                               # %if.end17
	movl	$0, -28(%rbp)
	leaq	-56(%rbp), %rbx
	leaq	-28(%rbp), %r14
	leaq	-40(%rbp), %r15
	jmp	.LBB59_9
	.p2align	4, 0x90
.LBB59_18:                              # %for.inc52
                                        #   in Loop: Header=BB59_9 Depth=1
	movq	%r14, %rdi
	callq	findfiletype7
.LBB59_9:                               # %for.cond18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_11 Depth 2
	movl	-28(%rbp), %eax
	cmpl	hashheader+40(%rip), %eax
	jge	.LBB59_19
# %bb.10:                               # %for.body21
                                        #   in Loop: Header=BB59_9 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	findfiletype3
	jmp	.LBB59_11
	.p2align	4, 0x90
.LBB59_17:                              # %for.inc50
                                        #   in Loop: Header=BB59_11 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	findfiletype6
.LBB59_11:                              # %for.cond24
                                        #   Parent Loop BB59_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB59_18
# %bb.12:                               # %for.body28
                                        #   in Loop: Header=BB59_11 Depth=2
	movq	-56(%rbp), %rdi
	callq	strlen
	movl	%eax, -40(%rbp)
	cmpl	%eax, -36(%rbp)
	jl	.LBB59_17
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB59_11 Depth=2
	movslq	-36(%rbp), %rdi
	movslq	-40(%rbp), %rax
	subq	%rax, %rdi
	addq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB59_17
# %bb.14:                               # %if.then38
	cmpq	$0, -48(%rbp)
	je	.LBB59_16
# %bb.15:                               # %if.then41
	leaq	-48(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	findfiletype4
.LBB59_16:                              # %if.end48
	leaq	-32(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	findfiletype5
.LBB59_20:                              # %return
	movl	-32(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_19:                              # %for.end54
	movl	$-1, -32(%rbp)
	jmp	.LBB59_20
.Lfunc_end59:
	.size	findfiletype, .Lfunc_end59-findfiletype
	.cfi_endproc
                                        # -- End function
	.globl	main33                  # -- Begin function main33
	.p2align	4, 0x90
	.type	main33,@function
main33:                                 # @main33
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.131, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end60:
	.size	main33, .Lfunc_end60-main33
	.cfi_endproc
                                        # -- End function
	.globl	main34                  # -- Begin function main34
	.p2align	4, 0x90
	.type	main34,@function
main34:                                 # @main34
	.cfi_startproc
# %bb.0:                                # %entry
	movl	prefstringchar(%rip), %eax
	movl	%eax, defdupchar(%rip)
	retq
.Lfunc_end61:
	.size	main34, .Lfunc_end61-main34
	.cfi_endproc
                                        # -- End function
	.globl	main35                  # -- Begin function main35
	.p2align	4, 0x90
	.type	main35,@function
main35:                                 # @main35
	.cfi_startproc
# %bb.0:                                # %entry
	movsbl	hashheader+66(%rip), %eax
	movl	%eax, compoundflag(%rip)
	retq
.Lfunc_end62:
	.size	main35, .Lfunc_end62-main35
	.cfi_endproc
                                        # -- End function
	.globl	main36                  # -- Begin function main36
	.p2align	4, 0x90
	.type	main36,@function
main36:                                 # @main36
	.cfi_startproc
# %bb.0:                                # %entry
	movsbl	hashheader+67(%rip), %eax
	movl	%eax, tryhardflag(%rip)
	retq
.Lfunc_end63:
	.size	main36, .Lfunc_end63-main36
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function initckch
	.type	initckch,@function
initckch:                               # @initckch
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movb	$0, -33(%rbp)
	movl	$128, %ebx
	jmp	.LBB64_1
	.p2align	4, 0x90
.LBB64_8:                               # %for.inc
                                        #   in Loop: Header=BB64_1 Depth=1
	addb	$1, -33(%rbp)
.LBB64_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-33(%rbp), %eax
	movl	hashheader+36(%rip), %ecx
	addl	%ebx, %ecx
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jge	.LBB64_9
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB64_1 Depth=1
	movzbl	-33(%rbp), %eax
	cmpb	$0, hashheader+982(%rax)
	je	.LBB64_5
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB64_1 Depth=1
	movzbl	-33(%rbp), %eax
	cmpb	$0, hashheader+1438(%rax)
	jne	.LBB64_8
# %bb.4:                                # %if.then7
                                        #   in Loop: Header=BB64_1 Depth=1
	movzbl	-33(%rbp), %edi
	callq	initckch0
	jmp	.LBB64_7
	.p2align	4, 0x90
.LBB64_5:                               # %if.else
                                        #   in Loop: Header=BB64_1 Depth=1
	movzbl	-33(%rbp), %eax
	cmpb	$0, hashheader+1666(%rax)
	je	.LBB64_8
# %bb.6:                                # %if.then13
                                        #   in Loop: Header=BB64_1 Depth=1
	movzbl	-33(%rbp), %eax
	movslq	Trynum(%rip), %rcx
	movb	%al, Try(%rcx)
.LBB64_7:                               # %for.inc
                                        #   in Loop: Header=BB64_1 Depth=1
	addl	$1, Trynum(%rip)
	jmp	.LBB64_8
.LBB64_9:                               # %for.end
	cmpq	$0, -48(%rbp)
	je	.LBB64_33
# %bb.10:                               # %if.then22
	leaq	-33(%rbp), %r15
	leaq	-48(%rbp), %r14
	leaq	-37(%rbp), %r12
	jmp	.LBB64_11
	.p2align	4, 0x90
.LBB64_32:                              # %if.then128
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	%r15, %rdi
	callq	initckch2
.LBB64_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$127, Trynum(%rip)
	jg	.LBB64_12
# %bb.13:                               # %land.rhs
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB64_15
	jmp	.LBB64_33
	.p2align	4, 0x90
.LBB64_12:                              #   in Loop: Header=BB64_11 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB64_33
.LBB64_15:                              # %while.body
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	cmpb	$110, (%rax)
	je	.LBB64_18
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	cmpb	$92, (%rax)
	je	.LBB64_18
# %bb.17:                               # %if.then34
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	initckch1
	jmp	.LBB64_31
	.p2align	4, 0x90
.LBB64_18:                              # %if.else35
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -37(%rbp)
	movsbq	1(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$8, %ah
	je	.LBB64_22
# %bb.19:                               # %if.then47
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, -37(%rbp)
	movsbq	1(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$8, %ah
	je	.LBB64_22
# %bb.20:                               # %if.then58
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	movb	%cl, -36(%rbp)
	movsbq	2(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$8, %ah
	je	.LBB64_22
# %bb.21:                               # %if.then69
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -35(%rbp)
	.p2align	4, 0x90
.LBB64_22:                              # %if.end74
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	-48(%rbp), %rax
	cmpb	$110, -1(%rax)
	jne	.LBB64_24
# %bb.23:                               # %if.then79
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	%r12, %rdi
	callq	strlen
	addq	%rax, -48(%rbp)
	movq	%r12, %rdi
	callq	atoi
	jmp	.LBB64_30
	.p2align	4, 0x90
.LBB64_24:                              # %if.else84
                                        #   in Loop: Header=BB64_11 Depth=1
	movq	%r12, %rdi
	callq	strlen
	addq	%rax, -48(%rbp)
	movb	$0, -33(%rbp)
	cmpb	$0, -37(%rbp)
	je	.LBB64_26
# %bb.25:                               # %if.then90
                                        #   in Loop: Header=BB64_11 Depth=1
	movzbl	-37(%rbp), %eax
	addl	$-48, %eax
	movb	%al, -33(%rbp)
.LBB64_26:                              # %if.end94
                                        #   in Loop: Header=BB64_11 Depth=1
	cmpb	$0, -36(%rbp)
	je	.LBB64_28
# %bb.27:                               # %if.then97
                                        #   in Loop: Header=BB64_11 Depth=1
	shlb	$3, -33(%rbp)
	movzbl	-36(%rbp), %eax
	movzbl	-33(%rbp), %ecx
	leal	(%rcx,%rax), %eax
	addl	$-48, %eax
	movb	%al, -33(%rbp)
.LBB64_28:                              # %if.end106
                                        #   in Loop: Header=BB64_11 Depth=1
	cmpb	$0, -35(%rbp)
	je	.LBB64_31
# %bb.29:                               # %if.then109
                                        #   in Loop: Header=BB64_11 Depth=1
	shlb	$3, -33(%rbp)
	movzbl	-35(%rbp), %eax
	movzbl	-33(%rbp), %ecx
	leal	(%rcx,%rax), %eax
	addl	$-48, %eax
.LBB64_30:                              # %if.end121
                                        #   in Loop: Header=BB64_11 Depth=1
	movb	%al, -33(%rbp)
.LBB64_31:                              # %if.end121
                                        #   in Loop: Header=BB64_11 Depth=1
	movzbl	-33(%rbp), %eax
	andl	$127, %eax
	movb	%al, -33(%rbp)
	movzbl	-33(%rbp), %eax
	cmpb	$0, hashheader+982(%rax)
	jne	.LBB64_11
	jmp	.LBB64_32
.LBB64_33:                              # %if.end139
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	initckch, .Lfunc_end64-initckch
	.cfi_endproc
                                        # -- End function
	.globl	main37                  # -- Begin function main37
	.p2align	4, 0x90
	.type	main37,@function
main37:                                 # @main37
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end65:
	.size	main37, .Lfunc_end65-main37
	.cfi_endproc
                                        # -- End function
	.globl	main38                  # -- Begin function main38
	.p2align	4, 0x90
	.type	main38,@function
main38:                                 # @main38
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	LibDict(%rip), %rsi
	callq	treeinit
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end66:
	.size	main38, .Lfunc_end66-main38
	.cfi_endproc
                                        # -- End function
	.globl	main39                  # -- Begin function main39
	.p2align	4, 0x90
	.type	main39,@function
main39:                                 # @main39
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	askmode
	callq	treeoutput
	xorl	%edi, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end67:
	.size	main39, .Lfunc_end67-main39
	.cfi_endproc
                                        # -- End function
	.globl	main40                  # -- Begin function main40
	.p2align	4, 0x90
	.type	main40,@function
main40:                                 # @main40
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	eflag(%rip), %edi
	callq	expandmode
	xorl	%edi, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end68:
	.size	main40, .Lfunc_end68-main40
	.cfi_endproc
                                        # -- End function
	.globl	main41                  # -- Begin function main41
	.p2align	4, 0x90
	.type	main41,@function
main41:                                 # @main41
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	dumpmode
	xorl	%edi, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end69:
	.size	main41, .Lfunc_end69-main41
	.cfi_endproc
                                        # -- End function
	.globl	main42                  # -- Begin function main42
	.p2align	4, 0x90
	.type	main42,@function
main42:                                 # @main42
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdin(%rip), %rax
	movq	%rax, infile(%rip)
	movq	stdout(%rip), %rax
	movq	%rax, outfile(%rip)
	callq	checkfile
	xorl	%edi, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end70:
	.size	main42, .Lfunc_end70-main42
	.cfi_endproc
                                        # -- End function
	.globl	main43                  # -- Begin function main43
	.p2align	4, 0x90
	.type	main43,@function
main43:                                 # @main43
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rax), %rdi
	callq	dofile
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end71:
	.size	main43, .Lfunc_end71-main43
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dofile
	.type	dofile,@function
dofile:                                 # @dofile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222280, -72(%rbp)   # imm = 0xD3ED7C8
	movl	$555555613, -68(%rbp)   # imm = 0x211D1B1D
	movl	$444444502, -64(%rbp)   # imm = 0x1A7DAF56
	movl	$222222280, %edi        # imm = 0xD3ED7C8
	movl	$555555613, %esi        # imm = 0x211D1B1D
	movl	$444444502, %edx        # imm = 0x1A7DAF56
	callq	guardMe
	movl	$222222279, -60(%rbp)   # imm = 0xD3ED7C7
	movl	$555555612, -56(%rbp)   # imm = 0x211D1B1C
	movl	$444444501, -52(%rbp)   # imm = 0x1A7DAF55
	movl	$222222279, %edi        # imm = 0xD3ED7C7
	movl	$555555612, %esi        # imm = 0x211D1B1C
	movl	$444444501, %edx        # imm = 0x1A7DAF55
	callq	guardMe
	movl	$222222278, -48(%rbp)   # imm = 0xD3ED7C6
	movl	$555555611, -44(%rbp)   # imm = 0x211D1B1B
	movl	$444444500, -40(%rbp)   # imm = 0x1A7DAF54
	movl	$222222278, %edi        # imm = 0xD3ED7C6
	movl	$555555611, %esi        # imm = 0x211D1B1B
	movl	$444444500, %edx        # imm = 0x1A7DAF54
	callq	guardMe
	movl	$222222277, -36(%rbp)   # imm = 0xD3ED7C5
	movl	$555555610, -32(%rbp)   # imm = 0x211D1B1A
	movl	$444444499, -28(%rbp)   # imm = 0x1A7DAF53
	movl	$222222277, %edi        # imm = 0xD3ED7C5
	movl	$555555610, %esi        # imm = 0x211D1B1A
	movl	$444444499, %edx        # imm = 0x1A7DAF53
	callq	guardMe
	movq	%rbx, -16(%rbp)
	movq	%rbx, currentfile(%rip)
	movl	deftflag(%rip), %eax
	movl	%eax, tflag(%rip)
	testl	%eax, %eax
	js	.LBB72_1
# %bb.5:                                # %if.end
	cmpl	$0, prefstringchar(%rip)
	jns	.LBB72_8
	jmp	.LBB72_6
.LBB72_1:                               # %if.then
	movq	-16(%rbp), %rdi
	movl	$46, %esi
	callq	rindex
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	je	.LBB72_2
# %bb.3:                                # %land.rhs
	movq	-24(%rbp), %rdi
	movl	$.L.str.176, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB72_4
.LBB72_2:
	xorl	%eax, %eax
.LBB72_4:                               # %land.end
	movzbl	%al, %eax
	movl	%eax, tflag(%rip)
	cmpl	$0, prefstringchar(%rip)
	jns	.LBB72_8
.LBB72_6:                               # %if.then5
	xorl	%eax, %eax
	cmpl	$0, deftflag(%rip)
	movq	-16(%rbp), %rdi
	movl	$tflag, %edx
	cmovnsq	%rax, %rdx
	xorl	%esi, %esi
	callq	findfiletype
	movl	%eax, defdupchar(%rip)
	testl	%eax, %eax
	jns	.LBB72_8
# %bb.7:                                # %if.then9
	movl	$0, defdupchar(%rip)
.LBB72_8:                               # %if.end11
	movq	-16(%rbp), %rdi
	movl	$.L.str.177, %esi
	callq	fopen
	movq	%rax, infile(%rip)
	testq	%rax, %rax
	je	.LBB72_9
# %bb.10:                               # %if.end17
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	access
	movl	%eax, %ecx
	shrl	$31, %ecx
	movl	%ecx, readonly(%rip)
	testl	%eax, %eax
	jns	.LBB72_12
# %bb.11:                               # %if.then20
	leaq	-16(%rbp), %rdi
	callq	dofile1
.LBB72_12:                              # %if.end23
	movq	infile(%rip), %rdi
	callq	fileno
	leaq	-216(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	movl	$tempfile, %edi
	movl	$.L.str.115, %esi
	callq	strcpy
	movl	$tempfile, %edi
	callq	mktemp
	testq	%rax, %rax
	je	.LBB72_15
# %bb.13:                               # %lor.lhs.false
	cmpb	$0, tempfile(%rip)
	je	.LBB72_15
# %bb.14:                               # %lor.lhs.false33
	movl	$tempfile, %edi
	movl	$.L.str.180, %esi
	callq	fopen
	movq	%rax, outfile(%rip)
	testq	%rax, %rax
	je	.LBB72_15
# %bb.16:                               # %if.end44
	movl	-192(%rbp), %esi
	movl	$tempfile, %edi
	callq	chmod
	movl	$0, quit(%rip)
	movl	$0, changes(%rip)
	callq	checkfile
	movq	infile(%rip), %rdi
	callq	fclose
	movq	outfile(%rip), %rdi
	callq	fclose
	cmpl	$0, cflag(%rip)
	jne	.LBB72_18
# %bb.17:                               # %if.then49
	callq	treeoutput
.LBB72_18:                              # %if.end50
	cmpl	$0, changes(%rip)
	je	.LBB72_21
# %bb.19:                               # %land.lhs.true
	cmpl	$0, readonly(%rip)
	jne	.LBB72_21
# %bb.20:                               # %if.then53
	leaq	-216(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	dofile3
.LBB72_21:                              # %if.end54
	movl	$tempfile, %edi
	xorl	%eax, %eax
	callq	unlink
	jmp	.LBB72_22
.LBB72_15:                              # %if.then37
	callq	dofile2
	jmp	.LBB72_22
.LBB72_9:                               # %if.then14
	leaq	-16(%rbp), %rdi
	callq	dofile0
.LBB72_22:                              # %return
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end72:
	.size	dofile, .Lfunc_end72-dofile
	.cfi_endproc
                                        # -- End function
	.globl	dofile0                 # -- Begin function dofile0
	.p2align	4, 0x90
	.type	dofile0,@function
dofile0:                                # @dofile0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.178, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end73:
	.size	dofile0, .Lfunc_end73-dofile0
	.cfi_endproc
                                        # -- End function
	.globl	dofile1                 # -- Begin function dofile1
	.p2align	4, 0x90
	.type	dofile1,@function
dofile1:                                # @dofile1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end74:
	.size	dofile1, .Lfunc_end74-dofile1
	.cfi_endproc
                                        # -- End function
	.globl	dofile2                 # -- Begin function dofile2
	.p2align	4, 0x90
	.type	dofile2,@function
dofile2:                                # @dofile2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$tempfile, %eax
	cmpb	$0, tempfile(%rip)
	movl	$.L.str.182, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.181, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	popq	%rax
	retq
.Lfunc_end75:
	.size	dofile2, .Lfunc_end75-dofile2
	.cfi_endproc
                                        # -- End function
	.globl	checkfile               # -- Begin function checkfile
	.p2align	4, 0x90
	.type	checkfile,@function
checkfile:                              # @checkfile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$222222267, -84(%rbp)   # imm = 0xD3ED7BB
	movl	$555555600, -80(%rbp)   # imm = 0x211D1B10
	movl	$444444489, -76(%rbp)   # imm = 0x1A7DAF49
	movl	$222222267, %edi        # imm = 0xD3ED7BB
	movl	$555555600, %esi        # imm = 0x211D1B10
	movl	$444444489, %edx        # imm = 0x1A7DAF49
	callq	guardMe
	movl	$222222266, -72(%rbp)   # imm = 0xD3ED7BA
	movl	$555555599, -68(%rbp)   # imm = 0x211D1B0F
	movl	$444444488, -64(%rbp)   # imm = 0x1A7DAF48
	movl	$222222266, %edi        # imm = 0xD3ED7BA
	movl	$555555599, %esi        # imm = 0x211D1B0F
	movl	$444444488, %edx        # imm = 0x1A7DAF48
	callq	guardMe
	movl	$222222265, -60(%rbp)   # imm = 0xD3ED7B9
	movl	$555555598, -56(%rbp)   # imm = 0x211D1B0E
	movl	$444444487, -52(%rbp)   # imm = 0x1A7DAF47
	movl	$222222265, %edi        # imm = 0xD3ED7B9
	movl	$555555598, %esi        # imm = 0x211D1B0E
	movl	$444444487, %edx        # imm = 0x1A7DAF47
	callq	guardMe
	movl	$222222264, -48(%rbp)   # imm = 0xD3ED7B8
	movl	$555555597, -44(%rbp)   # imm = 0x211D1B0D
	movl	$444444486, -40(%rbp)   # imm = 0x1A7DAF46
	movl	$222222264, %edi        # imm = 0xD3ED7B8
	movl	$555555597, %esi        # imm = 0x211D1B0D
	movl	$444444486, %edx        # imm = 0x1A7DAF46
	callq	guardMe
	movl	$0, -32(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB76_1
	.p2align	4, 0x90
.LBB76_2:                               # %for.inc
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	%rbx, %rdi
	callq	checkfile0
	movq	%rbx, %rdi
	callq	checkfile1
.LBB76_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	contextsize(%rip), %eax
	jl	.LBB76_2
# %bb.3:                                # %for.end
	leaq	-32(%rbp), %rbx
	leaq	-28(%rbp), %r14
	leaq	-36(%rbp), %r15
	jmp	.LBB76_4
	.p2align	4, 0x90
.LBB76_21:                              # %if.end60
                                        #   in Loop: Header=BB76_4 Depth=1
	callq	checkfile7
.LBB76_4:                               # %for.cond2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_6 Depth 2
                                        #     Child Loop BB76_13 Depth 2
	movq	%rbx, %rdi
	callq	checkfile2
	addl	$-1, -32(%rbp)
	jle	.LBB76_7
	.p2align	4, 0x90
.LBB76_6:                               # %for.body5
                                        #   Parent Loop BB76_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	checkfile3
	addl	$-1, -32(%rbp)
	jg	.LBB76_6
.LBB76_7:                               # %for.end11
                                        #   in Loop: Header=BB76_4 Depth=1
	cmpl	$0, quit(%rip)
	jne	.LBB76_8
# %bb.10:                               # %if.end
                                        #   in Loop: Header=BB76_4 Depth=1
	movq	infile(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$4096, %esi             # imm = 0x1000
	callq	fgets
	testq	%rax, %rax
	je	.LBB76_22
# %bb.11:                               # %if.end18
                                        #   in Loop: Header=BB76_4 Depth=1
	movl	$contextbufs, %edi
	callq	strlen
	movl	%eax, -36(%rbp)
	cmpl	$4095, %eax             # imm = 0xFFF
	jne	.LBB76_21
# %bb.12:                               # %if.then23
                                        #   in Loop: Header=BB76_4 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	checkfile5
	jmp	.LBB76_13
	.p2align	4, 0x90
.LBB76_20:                              # %if.end52
                                        #   in Loop: Header=BB76_13 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	checkfile6
.LBB76_13:                              # %while.cond28
                                        #   Parent Loop BB76_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-36(%rbp), %rax
	cmpq	$8190, %rax             # imm = 0x1FFE
	ja	.LBB76_14
# %bb.15:                               # %land.rhs
                                        #   in Loop: Header=BB76_13 Depth=2
	movzbl	-28(%rbp), %ecx
	movb	$1, %al
	cmpb	$0, hashheader+982(%rcx)
	jne	.LBB76_18
# %bb.16:                               # %lor.lhs.false
                                        #   in Loop: Header=BB76_13 Depth=2
	movzbl	-28(%rbp), %ecx
	cmpb	$0, hashheader+1666(%rcx)
	jne	.LBB76_18
# %bb.17:                               # %lor.rhs
                                        #   in Loop: Header=BB76_13 Depth=2
	movzbl	-28(%rbp), %eax
	cmpb	$0, hashheader+1894(%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB76_19
	jmp	.LBB76_21
	.p2align	4, 0x90
.LBB76_14:                              #   in Loop: Header=BB76_13 Depth=2
	xorl	%eax, %eax
.LBB76_18:                              # %land.end
                                        #   in Loop: Header=BB76_13 Depth=2
	testb	%al, %al
	je	.LBB76_21
.LBB76_19:                              # %while.body47
                                        #   in Loop: Header=BB76_13 Depth=2
	movq	infile(%rip), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	jne	.LBB76_20
	jmp	.LBB76_21
	.p2align	4, 0x90
.LBB76_9:                               # %while.body
                                        #   in Loop: Header=BB76_8 Depth=1
	callq	checkfile4
.LBB76_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	infile(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$8192, %esi             # imm = 0x2000
	callq	fgets
	testq	%rax, %rax
	jne	.LBB76_9
.LBB76_22:                              # %for.end61
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	checkfile, .Lfunc_end76-checkfile
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput              # -- Begin function treeoutput
	.p2align	4, 0x90
	.type	treeoutput,@function
treeoutput:                             # @treeoutput
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$222222508, -92(%rbp)   # imm = 0xD3ED8AC
	movl	$555555841, -88(%rbp)   # imm = 0x211D1C01
	movl	$444444730, -84(%rbp)   # imm = 0x1A7DB03A
	movl	$222222508, %edi        # imm = 0xD3ED8AC
	movl	$555555841, %esi        # imm = 0x211D1C01
	movl	$444444730, %edx        # imm = 0x1A7DB03A
	callq	guardMe
	cmpl	$0, newwords(%rip)
	je	.LBB77_62
# %bb.1:                                # %if.end
	movl	$personaldict, %edi
	movl	$.L.str.14.442, %esi
	callq	fopen
	movq	%rax, dictf(%rip)
	testq	%rax, %rax
	je	.LBB77_2
# %bb.3:                                # %if.end4
	movl	$0, -60(%rbp)
	cmpl	$1000, hcount(%rip)     # imm = 0x3E8
	jl	.LBB77_5
# %bb.4:                                # %if.then6
	movq	$0, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB77_24
.LBB77_41:                              # %if.end105
	leaq	-40(%rbp), %r14
	leaq	-80(%rbp), %r15
	leaq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	treeoutput20
	leaq	-56(%rbp), %rbx
	movl	$201326592, %r12d       # imm = 0xC000000
	jmp	.LBB77_42
	.p2align	4, 0x90
.LBB77_50:                              # %for.inc135
                                        #   in Loop: Header=BB77_42 Depth=1
	movq	%r14, %rdi
	callq	treeoutput25
.LBB77_42:                              # %for.cond108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_45 Depth 2
                                        #       Child Loop BB77_47 Depth 3
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB77_51
# %bb.43:                               # %for.body111
                                        #   in Loop: Header=BB77_42 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	treeoutput21
	cmpq	$0, -56(%rbp)
	jne	.LBB77_45
	jmp	.LBB77_50
	.p2align	4, 0x90
.LBB77_49:                              # %for.inc132
                                        #   in Loop: Header=BB77_45 Depth=2
	movq	%rbx, %rdi
	callq	treeoutput24
	cmpq	$0, -56(%rbp)
	je	.LBB77_50
.LBB77_45:                              # %for.body115
                                        #   Parent Loop BB77_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB77_47 Depth 3
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r12, %rax
	cmpq	$201326592, %rax        # imm = 0xC000000
	jne	.LBB77_49
# %bb.46:                               # %if.then121
                                        #   in Loop: Header=BB77_45 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	treeoutput22
	jmp	.LBB77_47
	.p2align	4, 0x90
.LBB77_48:                              # %while.body128
                                        #   in Loop: Header=BB77_47 Depth=3
	movq	%rbx, %rdi
	callq	treeoutput23
.LBB77_47:                              # %while.cond123
                                        #   Parent Loop BB77_42 Depth=1
                                        #     Parent Loop BB77_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB77_48
	jmp	.LBB77_49
.LBB77_51:                              # %for.end137
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	treeoutput26
	movl	$201326592, %r15d       # imm = 0xC000000
	movl	$805306368, %r12d       # imm = 0x30000000
	leaq	-80(%rbp), %r14
	jmp	.LBB77_52
	.p2align	4, 0x90
.LBB77_57:                              # %for.inc163
                                        #   in Loop: Header=BB77_52 Depth=1
	movq	%rbx, %rdi
	callq	treeoutput28
.LBB77_52:                              # %for.cond140
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB77_58
# %bb.53:                               # %for.body143
                                        #   in Loop: Header=BB77_52 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r15, %rax
	cmpq	$201326592, %rax        # imm = 0xC000000
	jne	.LBB77_57
# %bb.54:                               # %if.then149
                                        #   in Loop: Header=BB77_52 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r12, %rax
	cmpq	$805306368, %rax        # imm = 0x30000000
	je	.LBB77_57
# %bb.55:                               # %land.lhs.true155
                                        #   in Loop: Header=BB77_52 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB77_57
# %bb.56:                               # %if.then159
                                        #   in Loop: Header=BB77_52 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	treeoutput27
	jmp	.LBB77_57
.LBB77_58:                              # %for.end165
	leaq	-80(%rbp), %rbx
	leaq	-60(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rbx, %rdi
	callq	treeoutput29
	addl	$-1, -60(%rbp)
	js	.LBB77_61
	.p2align	4, 0x90
.LBB77_60:                              # %for.body170
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	treeoutput30
	addl	$-1, -60(%rbp)
	jns	.LBB77_60
.LBB77_61:                              # %for.end172
	leaq	-72(%rbp), %rdi
	callq	treeoutput31
	movl	$0, newwords(%rip)
	callq	treeoutput32
	jmp	.LBB77_62
.LBB77_2:                               # %if.then2
	callq	treeoutput0
	jmp	.LBB77_62
.LBB77_5:                               # %if.else
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	treeoutput1
	leaq	-56(%rbp), %rbx
	movl	$201326592, %r12d       # imm = 0xC000000
	leaq	-60(%rbp), %r15
	jmp	.LBB77_6
	.p2align	4, 0x90
.LBB77_14:                              # %for.inc18
                                        #   in Loop: Header=BB77_6 Depth=1
	movq	%r14, %rdi
	callq	treeoutput6
.LBB77_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_9 Depth 2
                                        #       Child Loop BB77_11 Depth 3
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB77_15
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB77_6 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	treeoutput2
	cmpq	$0, -56(%rbp)
	jne	.LBB77_9
	jmp	.LBB77_14
	.p2align	4, 0x90
.LBB77_13:                              # %for.inc
                                        #   in Loop: Header=BB77_9 Depth=2
	movq	%rbx, %rdi
	callq	treeoutput5
	cmpq	$0, -56(%rbp)
	je	.LBB77_14
.LBB77_9:                               # %for.body10
                                        #   Parent Loop BB77_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB77_11 Depth 3
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r12, %rax
	cmpq	$201326592, %rax        # imm = 0xC000000
	jne	.LBB77_11
# %bb.10:                               # %if.then12
                                        #   in Loop: Header=BB77_9 Depth=2
	movq	%r15, %rdi
	callq	treeoutput3
	jmp	.LBB77_11
	.p2align	4, 0x90
.LBB77_12:                              # %while.body
                                        #   in Loop: Header=BB77_11 Depth=3
	movq	%rbx, %rdi
	callq	treeoutput4
.LBB77_11:                              # %while.cond
                                        #   Parent Loop BB77_6 Depth=1
                                        #     Parent Loop BB77_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB77_12
	jmp	.LBB77_13
.LBB77_15:                              # %for.end19
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %r15
	movq	%r15, %rsi
	callq	treeoutput7
	movl	$201326592, %ebx        # imm = 0xC000000
	movl	$805306368, %r12d       # imm = 0x30000000
	leaq	-60(%rbp), %r14
	jmp	.LBB77_16
	.p2align	4, 0x90
.LBB77_21:                              # %for.inc39
                                        #   in Loop: Header=BB77_16 Depth=1
	movq	%r15, %rdi
	callq	treeoutput9
.LBB77_16:                              # %for.cond22
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB77_22
# %bb.17:                               # %for.body24
                                        #   in Loop: Header=BB77_16 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	%rbx, %rax
	cmpq	$201326592, %rax        # imm = 0xC000000
	jne	.LBB77_21
# %bb.18:                               # %if.then29
                                        #   in Loop: Header=BB77_16 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r12, %rax
	cmpq	$805306368, %rax        # imm = 0x30000000
	je	.LBB77_21
# %bb.19:                               # %land.lhs.true
                                        #   in Loop: Header=BB77_16 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB77_21
# %bb.20:                               # %if.then35
                                        #   in Loop: Header=BB77_16 Depth=1
	movq	%r14, %rdi
	callq	treeoutput8
	jmp	.LBB77_21
.LBB77_22:                              # %for.end41
	leaq	-72(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	callq	treeoutput10
	cmpq	$0, -72(%rbp)
	jne	.LBB77_41
.LBB77_24:                              # %if.then46
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	treeoutput11
	leaq	-56(%rbp), %rbx
	movl	$201326592, %r15d       # imm = 0xC000000
	jmp	.LBB77_25
	.p2align	4, 0x90
.LBB77_33:                              # %for.inc75
                                        #   in Loop: Header=BB77_25 Depth=1
	movq	%r14, %rdi
	callq	treeoutput16
.LBB77_25:                              # %for.cond49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_28 Depth 2
                                        #       Child Loop BB77_30 Depth 3
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB77_34
# %bb.26:                               # %for.body52
                                        #   in Loop: Header=BB77_25 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	treeoutput12
	cmpq	$0, -56(%rbp)
	jne	.LBB77_28
	jmp	.LBB77_33
	.p2align	4, 0x90
.LBB77_32:                              # %for.inc72
                                        #   in Loop: Header=BB77_28 Depth=2
	movq	%rbx, %rdi
	callq	treeoutput15
	cmpq	$0, -56(%rbp)
	je	.LBB77_33
.LBB77_28:                              # %for.body56
                                        #   Parent Loop BB77_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB77_30 Depth 3
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r15, %rax
	cmpq	$201326592, %rax        # imm = 0xC000000
	jne	.LBB77_32
# %bb.29:                               # %if.then62
                                        #   in Loop: Header=BB77_28 Depth=2
	movq	%rbx, %rdi
	callq	treeoutput13
	jmp	.LBB77_30
	.p2align	4, 0x90
.LBB77_31:                              # %while.body68
                                        #   in Loop: Header=BB77_30 Depth=3
	movq	%rbx, %rdi
	callq	treeoutput14
.LBB77_30:                              # %while.cond63
                                        #   Parent Loop BB77_25 Depth=1
                                        #     Parent Loop BB77_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB77_31
	jmp	.LBB77_32
.LBB77_34:                              # %for.end77
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	treeoutput17
	movl	$201326592, %r14d       # imm = 0xC000000
	movl	$805306368, %r15d       # imm = 0x30000000
	jmp	.LBB77_35
	.p2align	4, 0x90
.LBB77_40:                              # %for.inc102
                                        #   in Loop: Header=BB77_35 Depth=1
	movq	%rbx, %rdi
	callq	treeoutput19
.LBB77_35:                              # %for.cond80
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB77_62
# %bb.36:                               # %for.body83
                                        #   in Loop: Header=BB77_35 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r14, %rax
	cmpq	$201326592, %rax        # imm = 0xC000000
	jne	.LBB77_40
# %bb.37:                               # %if.then89
                                        #   in Loop: Header=BB77_35 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r15, %rax
	cmpq	$805306368, %rax        # imm = 0x30000000
	je	.LBB77_40
# %bb.38:                               # %land.lhs.true95
                                        #   in Loop: Header=BB77_35 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB77_40
# %bb.39:                               # %if.then99
                                        #   in Loop: Header=BB77_35 Depth=1
	movq	%rbx, %rdi
	callq	treeoutput18
	jmp	.LBB77_40
.LBB77_62:                              # %return
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end77:
	.size	treeoutput, .Lfunc_end77-treeoutput
	.cfi_endproc
                                        # -- End function
	.globl	dofile3                 # -- Begin function dofile3
	.p2align	4, 0x90
	.type	dofile3,@function
dofile3:                                # @dofile3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r10
	movq	%rdi, 192(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	16(%rdi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	40(%rdi), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	48(%rdi), %r14
	movq	56(%rdi), %r15
	movq	64(%rdi), %r12
	movq	72(%rdi), %r13
	movq	80(%rdi), %r11
	movq	88(%rdi), %r9
	movq	96(%rdi), %r8
	movq	104(%rdi), %rbx
	movq	112(%rdi), %rbp
	movq	120(%rdi), %rsi
	movq	128(%rdi), %rdx
	movq	136(%rdi), %rcx
	movq	24(%rdi), %rax
	movq	32(%rdi), %rdi
	movq	%rdi, 64(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%rdx, 160(%rsp)
	movq	%rsi, 152(%rsp)
	movq	%rbp, 144(%rsp)
	movq	%rbx, 136(%rsp)
	movq	%r8, 128(%rsp)
	movq	%r9, 120(%rsp)
	movq	%r11, 112(%rsp)
	movq	%r13, 104(%rsp)
	movq	%r12, 96(%rsp)
	movq	%r15, 88(%rsp)
	movq	%r14, 80(%rsp)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 72(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r10, 184(%rsp)
	movq	(%r10), %rdi
	movq	%rdi, 176(%rsp)
	leaq	32(%rsp), %rsi
	callq	update_file
	movq	184(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	192(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	56(%rsp), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	64(%rsp), %r14
	movq	72(%rsp), %r15
	movq	80(%rsp), %r12
	movq	88(%rsp), %r13
	movq	96(%rsp), %r10
	movq	104(%rsp), %r9
	movq	112(%rsp), %rbp
	movq	120(%rsp), %rbx
	movq	128(%rsp), %r8
	movq	136(%rsp), %rdi
	movq	144(%rsp), %rsi
	movq	152(%rsp), %rdx
	movq	160(%rsp), %rcx
	movq	168(%rsp), %r11
	movq	%r11, 136(%rax)
	movq	%rcx, 128(%rax)
	movq	%rdx, 120(%rax)
	movq	%rsi, 112(%rax)
	movq	%rdi, 104(%rax)
	movq	%r8, 96(%rax)
	movq	%rbx, 88(%rax)
	movq	%rbp, 80(%rax)
	movq	%r9, 72(%rax)
	movq	%r10, 64(%rax)
	movq	%r13, 56(%rax)
	movq	%r12, 48(%rax)
	movq	%r15, 40(%rax)
	movq	%r14, 32(%rax)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%rax)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	dofile3, .Lfunc_end78-dofile3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function update_file
	.type	update_file,@function
update_file:                            # @update_file
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$4176, %rsp             # imm = 0x1050
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222284, -96(%rbp)   # imm = 0xD3ED7CC
	movl	$555555617, -92(%rbp)   # imm = 0x211D1B21
	movl	$444444506, -88(%rbp)   # imm = 0x1A7DAF5A
	movl	$222222284, %edi        # imm = 0xD3ED7CC
	movl	$555555617, %esi        # imm = 0x211D1B21
	movl	$444444506, %edx        # imm = 0x1A7DAF5A
	callq	guardMe
	movl	$222222283, -84(%rbp)   # imm = 0xD3ED7CB
	movl	$555555616, -80(%rbp)   # imm = 0x211D1B20
	movl	$444444505, -76(%rbp)   # imm = 0x1A7DAF59
	movl	$222222283, %edi        # imm = 0xD3ED7CB
	movl	$555555616, %esi        # imm = 0x211D1B20
	movl	$444444505, %edx        # imm = 0x1A7DAF59
	callq	guardMe
	movl	$222222282, -72(%rbp)   # imm = 0xD3ED7CA
	movl	$555555615, -68(%rbp)   # imm = 0x211D1B1F
	movl	$444444504, -64(%rbp)   # imm = 0x1A7DAF58
	movl	$222222282, %edi        # imm = 0xD3ED7CA
	movl	$555555615, %esi        # imm = 0x211D1B1F
	movl	$444444504, %edx        # imm = 0x1A7DAF58
	callq	guardMe
	movl	$222222281, -60(%rbp)   # imm = 0xD3ED7C9
	movl	$555555614, -56(%rbp)   # imm = 0x211D1B1E
	movl	$444444503, -52(%rbp)   # imm = 0x1A7DAF57
	movl	$222222281, %edi        # imm = 0xD3ED7C9
	movl	$555555614, %esi        # imm = 0x211D1B1E
	movl	$444444503, %edx        # imm = 0x1A7DAF57
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movq	%r14, -48(%rbp)
	movl	$tempfile, %edi
	movl	$.L.str.177, %esi
	callq	fopen
	movq	%rax, infile(%rip)
	testq	%rax, %rax
	je	.LBB79_1
# %bb.2:                                # %if.end
	movq	-24(%rbp), %rcx
	leaq	-4192(%rbp), %rbx
	movl	$.L.str.184, %esi
	movl	$4091, %edx             # imm = 0xFFB
	movl	$.L.str.10, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	rindex
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB79_3
# %bb.4:                                # %if.else
	leaq	-32(%rbp), %rdi
	callq	update_file1
	jmp	.LBB79_5
.LBB79_1:                               # %if.then
	callq	update_file0
	jmp	.LBB79_17
.LBB79_3:                               # %if.then7
	movq	%rbx, -32(%rbp)
.LBB79_5:                               # %if.end9
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	subq	%rbx, %rdx
	addq	$255, %rdx
	movq	%rbx, %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB79_7
# %bb.6:                                # %if.then14
	leaq	-4192(%rbp), %rdi
	xorl	%eax, %eax
	callq	unlink
.LBB79_7:                               # %if.end17
	movq	-24(%rbp), %rdi
	leaq	-4192(%rbp), %r14
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	link
	testl	%eax, %eax
	jne	.LBB79_9
# %bb.8:                                # %if.then21
	leaq	-24(%rbp), %rdi
	callq	update_file2
.LBB79_9:                               # %if.end23
	movq	-24(%rbp), %rdi
	movl	$.L.str.180, %esi
	callq	fopen
	movq	%rax, outfile(%rip)
	testq	%rax, %rax
	je	.LBB79_10
# %bb.11:                               # %if.end29
	leaq	-48(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	update_file4
	leaq	-36(%rbp), %rbx
	jmp	.LBB79_12
	.p2align	4, 0x90
.LBB79_13:                              # %while.body
                                        #   in Loop: Header=BB79_12 Depth=1
	movq	%rbx, %rdi
	callq	update_file5
.LBB79_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	infile(%rip), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	jne	.LBB79_13
# %bb.14:                               # %while.end
	movq	infile(%rip), %rdi
	callq	fclose
	movq	outfile(%rip), %rdi
	callq	fclose
	cmpl	$0, xflag(%rip)
	je	.LBB79_17
# %bb.15:                               # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	subq	%r14, %rdx
	addq	$255, %rdx
	movq	%r14, %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB79_17
# %bb.16:                               # %if.then44
	leaq	-4192(%rbp), %rdi
	xorl	%eax, %eax
	callq	unlink
	jmp	.LBB79_17
.LBB79_10:                              # %if.then26
	leaq	-24(%rbp), %rdi
	callq	update_file3
.LBB79_17:                              # %if.end47
	addq	$4176, %rsp             # imm = 0x1050
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end79:
	.size	update_file, .Lfunc_end79-update_file
	.cfi_endproc
                                        # -- End function
	.globl	update_file0            # -- Begin function update_file0
	.p2align	4, 0x90
	.type	update_file0,@function
update_file0:                           # @update_file0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.183, %esi
	movl	$tempfile, %edx
	xorl	%eax, %eax
	callq	fprintf
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	popq	%rax
	retq
.Lfunc_end80:
	.size	update_file0, .Lfunc_end80-update_file0
	.cfi_endproc
                                        # -- End function
	.globl	update_file1            # -- Begin function update_file1
	.p2align	4, 0x90
	.type	update_file1,@function
update_file1:                           # @update_file1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end81:
	.size	update_file1, .Lfunc_end81-update_file1
	.cfi_endproc
                                        # -- End function
	.globl	update_file2            # -- Begin function update_file2
	.p2align	4, 0x90
	.type	update_file2,@function
update_file2:                           # @update_file2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	xorl	%eax, %eax
	callq	unlink
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end82:
	.size	update_file2, .Lfunc_end82-update_file2
	.cfi_endproc
                                        # -- End function
	.globl	update_file3            # -- Begin function update_file3
	.p2align	4, 0x90
	.type	update_file3,@function
update_file3:                           # @update_file3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.181, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end83:
	.size	update_file3, .Lfunc_end83-update_file3
	.cfi_endproc
                                        # -- End function
	.globl	update_file4            # -- Begin function update_file4
	.p2align	4, 0x90
	.type	update_file4,@function
update_file4:                           # @update_file4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movl	24(%rax), %esi
	callq	chmod
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end84:
	.size	update_file4, .Lfunc_end84-update_file4
	.cfi_endproc
                                        # -- End function
	.globl	update_file5            # -- Begin function update_file5
	.p2align	4, 0x90
	.type	update_file5,@function
update_file5:                           # @update_file5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	movq	outfile(%rip), %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end85:
	.size	update_file5, .Lfunc_end85-update_file5
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput0             # -- Begin function treeoutput0
	.p2align	4, 0x90
	.type	treeoutput0,@function
treeoutput0:                            # @treeoutput0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.15.443, %esi
	movl	$personaldict, %edx
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end86:
	.size	treeoutput0, .Lfunc_end86-treeoutput0
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput1             # -- Begin function treeoutput1
	.p2align	4, 0x90
	.type	treeoutput1,@function
treeoutput1:                            # @treeoutput1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	pershtab(%rip), %rax
	movq	%rax, -16(%rsp)
	movslq	pershsize(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end87:
	.size	treeoutput1, .Lfunc_end87-treeoutput1
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput2             # -- Begin function treeoutput2
	.p2align	4, 0x90
	.type	treeoutput2,@function
treeoutput2:                            # @treeoutput2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end88:
	.size	treeoutput2, .Lfunc_end88-treeoutput2
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput3             # -- Begin function treeoutput3
	.p2align	4, 0x90
	.type	treeoutput3,@function
treeoutput3:                            # @treeoutput3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end89:
	.size	treeoutput3, .Lfunc_end89-treeoutput3
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput4             # -- Begin function treeoutput4
	.p2align	4, 0x90
	.type	treeoutput4,@function
treeoutput4:                            # @treeoutput4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end90:
	.size	treeoutput4, .Lfunc_end90-treeoutput4
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput5             # -- Begin function treeoutput5
	.p2align	4, 0x90
	.type	treeoutput5,@function
treeoutput5:                            # @treeoutput5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end91:
	.size	treeoutput5, .Lfunc_end91-treeoutput5
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput6             # -- Begin function treeoutput6
	.p2align	4, 0x90
	.type	treeoutput6,@function
treeoutput6:                            # @treeoutput6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end92:
	.size	treeoutput6, .Lfunc_end92-treeoutput6
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput7             # -- Begin function treeoutput7
	.p2align	4, 0x90
	.type	treeoutput7,@function
treeoutput7:                            # @treeoutput7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	hashtbl(%rip), %rax
	movq	%rax, -16(%rsp)
	movslq	hashsize(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end93:
	.size	treeoutput7, .Lfunc_end93-treeoutput7
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput8             # -- Begin function treeoutput8
	.p2align	4, 0x90
	.type	treeoutput8,@function
treeoutput8:                            # @treeoutput8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end94:
	.size	treeoutput8, .Lfunc_end94-treeoutput8
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput9             # -- Begin function treeoutput9
	.p2align	4, 0x90
	.type	treeoutput9,@function
treeoutput9:                            # @treeoutput9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end95:
	.size	treeoutput9, .Lfunc_end95-treeoutput9
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput10            # -- Begin function treeoutput10
	.p2align	4, 0x90
	.type	treeoutput10,@function
treeoutput10:                           # @treeoutput10
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end96:
	.size	treeoutput10, .Lfunc_end96-treeoutput10
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput11            # -- Begin function treeoutput11
	.p2align	4, 0x90
	.type	treeoutput11,@function
treeoutput11:                           # @treeoutput11
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	pershtab(%rip), %rax
	movq	%rax, -16(%rsp)
	movslq	pershsize(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end97:
	.size	treeoutput11, .Lfunc_end97-treeoutput11
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput12            # -- Begin function treeoutput12
	.p2align	4, 0x90
	.type	treeoutput12,@function
treeoutput12:                           # @treeoutput12
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end98:
	.size	treeoutput12, .Lfunc_end98-treeoutput12
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput13            # -- Begin function treeoutput13
	.p2align	4, 0x90
	.type	treeoutput13,@function
treeoutput13:                           # @treeoutput13
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movq	dictf(%rip), %rdi
	movl	$1, %edx
	callq	toutent
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end99:
	.size	treeoutput13, .Lfunc_end99-treeoutput13
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput14            # -- Begin function treeoutput14
	.p2align	4, 0x90
	.type	treeoutput14,@function
treeoutput14:                           # @treeoutput14
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end100:
	.size	treeoutput14, .Lfunc_end100-treeoutput14
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput15            # -- Begin function treeoutput15
	.p2align	4, 0x90
	.type	treeoutput15,@function
treeoutput15:                           # @treeoutput15
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end101:
	.size	treeoutput15, .Lfunc_end101-treeoutput15
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput16            # -- Begin function treeoutput16
	.p2align	4, 0x90
	.type	treeoutput16,@function
treeoutput16:                           # @treeoutput16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end102:
	.size	treeoutput16, .Lfunc_end102-treeoutput16
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput17            # -- Begin function treeoutput17
	.p2align	4, 0x90
	.type	treeoutput17,@function
treeoutput17:                           # @treeoutput17
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	hashtbl(%rip), %rax
	movq	%rax, -16(%rsp)
	movslq	hashsize(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end103:
	.size	treeoutput17, .Lfunc_end103-treeoutput17
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput18            # -- Begin function treeoutput18
	.p2align	4, 0x90
	.type	treeoutput18,@function
treeoutput18:                           # @treeoutput18
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movq	dictf(%rip), %rdi
	movl	$1, %edx
	callq	toutent
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end104:
	.size	treeoutput18, .Lfunc_end104-treeoutput18
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput19            # -- Begin function treeoutput19
	.p2align	4, 0x90
	.type	treeoutput19,@function
treeoutput19:                           # @treeoutput19
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end105:
	.size	treeoutput19, .Lfunc_end105-treeoutput19
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput20            # -- Begin function treeoutput20
	.p2align	4, 0x90
	.type	treeoutput20,@function
treeoutput20:                           # @treeoutput20
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -56(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -64(%rsp)
	movq	%rcx, -40(%rsp)
	movq	(%rcx), %rax
	movq	%rax, -8(%rsp)
	movq	%rax, -56(%rsp)
	movq	pershtab(%rip), %rcx
	movq	%rcx, -48(%rsp)
	movslq	pershsize(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	pershtab(%rip), %rcx
	movq	%rcx, -64(%rsp)
	movq	-40(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end106:
	.size	treeoutput20, .Lfunc_end106-treeoutput20
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput21            # -- Begin function treeoutput21
	.p2align	4, 0x90
	.type	treeoutput21,@function
treeoutput21:                           # @treeoutput21
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end107:
	.size	treeoutput21, .Lfunc_end107-treeoutput21
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput22            # -- Begin function treeoutput22
	.p2align	4, 0x90
	.type	treeoutput22,@function
treeoutput22:                           # @treeoutput22
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -24(%rsp)
	leaq	8(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end108:
	.size	treeoutput22, .Lfunc_end108-treeoutput22
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput23            # -- Begin function treeoutput23
	.p2align	4, 0x90
	.type	treeoutput23,@function
treeoutput23:                           # @treeoutput23
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end109:
	.size	treeoutput23, .Lfunc_end109-treeoutput23
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput24            # -- Begin function treeoutput24
	.p2align	4, 0x90
	.type	treeoutput24,@function
treeoutput24:                           # @treeoutput24
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end110:
	.size	treeoutput24, .Lfunc_end110-treeoutput24
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput25            # -- Begin function treeoutput25
	.p2align	4, 0x90
	.type	treeoutput25,@function
treeoutput25:                           # @treeoutput25
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end111:
	.size	treeoutput25, .Lfunc_end111-treeoutput25
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput26            # -- Begin function treeoutput26
	.p2align	4, 0x90
	.type	treeoutput26,@function
treeoutput26:                           # @treeoutput26
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	hashtbl(%rip), %rax
	movq	%rax, -16(%rsp)
	movslq	hashsize(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end112:
	.size	treeoutput26, .Lfunc_end112-treeoutput26
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput27            # -- Begin function treeoutput27
	.p2align	4, 0x90
	.type	treeoutput27,@function
treeoutput27:                           # @treeoutput27
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -24(%rsp)
	leaq	8(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end113:
	.size	treeoutput27, .Lfunc_end113-treeoutput27
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput28            # -- Begin function treeoutput28
	.p2align	4, 0x90
	.type	treeoutput28,@function
treeoutput28:                           # @treeoutput28
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end114:
	.size	treeoutput28, .Lfunc_end114-treeoutput28
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput29            # -- Begin function treeoutput29
	.p2align	4, 0x90
	.type	treeoutput29,@function
treeoutput29:                           # @treeoutput29
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 24(%rsp)
	movl	12(%rsp), %esi
	movl	$8, %edx
	movl	$pdictcmp, %ecx
	callq	qsort
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	40(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end115:
	.size	treeoutput29, .Lfunc_end115-treeoutput29
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput30            # -- Begin function treeoutput30
	.p2align	4, 0x90
	.type	treeoutput30,@function
treeoutput30:                           # @treeoutput30
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	dictf(%rip), %rdi
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rax), %rsi
	movl	$1, %edx
	callq	toutent
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end116:
	.size	treeoutput30, .Lfunc_end116-treeoutput30
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput31            # -- Begin function treeoutput31
	.p2align	4, 0x90
	.type	treeoutput31,@function
treeoutput31:                           # @treeoutput31
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	free
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end117:
	.size	treeoutput31, .Lfunc_end117-treeoutput31
	.cfi_endproc
                                        # -- End function
	.globl	treeoutput32            # -- Begin function treeoutput32
	.p2align	4, 0x90
	.type	treeoutput32,@function
treeoutput32:                           # @treeoutput32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	dictf(%rip), %rdi
	callq	fclose
	popq	%rax
	retq
.Lfunc_end118:
	.size	treeoutput32, .Lfunc_end118-treeoutput32
	.cfi_endproc
                                        # -- End function
	.globl	toutent                 # -- Begin function toutent
	.p2align	4, 0x90
	.type	toutent,@function
toutent:                                # @toutent
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$222222478, -108(%rbp)  # imm = 0xD3ED88E
	movl	$555555811, -104(%rbp)  # imm = 0x211D1BE3
	movl	$444444700, -100(%rbp)  # imm = 0x1A7DB01C
	movl	$222222478, %edi        # imm = 0xD3ED88E
	movl	$555555811, %esi        # imm = 0x211D1BE3
	movl	$444444700, %edx        # imm = 0x1A7DB01C
	callq	guardMe
	movl	$222222477, -96(%rbp)   # imm = 0xD3ED88D
	movl	$555555810, -92(%rbp)   # imm = 0x211D1BE2
	movl	$444444699, -88(%rbp)   # imm = 0x1A7DB01B
	movl	$222222477, %edi        # imm = 0xD3ED88D
	movl	$555555810, %esi        # imm = 0x211D1BE2
	movl	$444444699, %edx        # imm = 0x1A7DB01B
	callq	guardMe
	movl	$222222476, -84(%rbp)   # imm = 0xD3ED88C
	movl	$555555809, -80(%rbp)   # imm = 0x211D1BE1
	movl	$444444698, -76(%rbp)   # imm = 0x1A7DB01A
	movl	$222222476, %edi        # imm = 0xD3ED88C
	movl	$555555809, %esi        # imm = 0x211D1BE1
	movl	$444444698, %edx        # imm = 0x1A7DB01A
	callq	guardMe
	movq	%r15, -56(%rbp)
	movq	%rbx, -72(%rbp)
	movl	%r14d, -60(%rbp)
	movq	%rbx, -48(%rbp)
	movq	8(%rbx), %rsi
	leaq	-240(%rbp), %rdi
	movl	$100, %edx
	movl	$1, %ecx
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB119_2
# %bb.1:                                # %if.then
	leaq	-48(%rbp), %rdi
	callq	toutent0
.LBB119_2:                              # %if.end
	movl	$805306368, %r13d       # imm = 0x30000000
	leaq	-240(%rbp), %r14
	leaq	-48(%rbp), %r12
	leaq	-56(%rbp), %r15
	cmpl	$0, -60(%rbp)
	jne	.LBB119_4
	jmp	.LBB119_5
	.p2align	4, 0x90
.LBB119_15:                             # %if.then37
	movq	%r12, %rdi
	callq	toutent2
	cmpl	$0, -60(%rbp)
	je	.LBB119_5
.LBB119_4:                              # %lor.lhs.false
	movq	-48(%rbp), %rax
	testb	$8, 19(%rax)
	je	.LBB119_14
.LBB119_5:                              # %if.then5
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r13, %rax
	cmpq	$536870911, %rax        # imm = 0x1FFFFFFF
	jg	.LBB119_11
# %bb.6:                                # %if.then5
	testq	%rax, %rax
	je	.LBB119_16
# %bb.7:                                # %if.then5
	cmpq	$268435456, %rax        # imm = 0x10000000
	jne	.LBB119_14
# %bb.8:                                # %sw.bb12
	movq	-48(%rbp), %rax
	testb	$64, 19(%rax)
	je	.LBB119_10
# %bb.9:                                # %lor.lhs.false16
	movq	-48(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB119_14
.LBB119_10:                             # %if.then18
	movq	%r14, %rdi
	callq	upcase
	jmp	.LBB119_17
	.p2align	4, 0x90
.LBB119_11:                             # %if.then5
	cmpq	$536870912, %rax        # imm = 0x20000000
	je	.LBB119_18
# %bb.12:                               # %if.then5
	cmpq	$805306368, %rax        # imm = 0x30000000
	jne	.LBB119_14
# %bb.13:                               # %sw.bb30
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	toutent1
	jmp	.LBB119_14
	.p2align	4, 0x90
.LBB119_16:                             # %sw.bb
	movq	%r14, %rdi
	callq	lowcase
	jmp	.LBB119_17
	.p2align	4, 0x90
.LBB119_18:                             # %sw.bb23
	movq	%r14, %rdi
	callq	lowcase
	movzbl	-240(%rbp), %eax
	movb	hashheader+754(%rax), %al
	movb	%al, -240(%rbp)
.LBB119_17:                             # %if.end32
	movq	-56(%rbp), %rbx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ichartosstr
	movq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	toutword
.LBB119_14:                             # %if.end32
	movq	-48(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB119_15
# %bb.19:                               # %for.end
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end119:
	.size	toutent, .Lfunc_end119-toutent
	.cfi_endproc
                                        # -- End function
	.globl	strtoichar              # -- Begin function strtoichar
	.p2align	4, 0x90
	.type	strtoichar,@function
strtoichar:                             # @strtoichar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$222222442, -88(%rbp)   # imm = 0xD3ED86A
	movl	$555555775, -84(%rbp)   # imm = 0x211D1BBF
	movl	$444444664, -80(%rbp)   # imm = 0x1A7DAFF8
	movl	$222222442, %edi        # imm = 0xD3ED86A
	movl	$555555775, %esi        # imm = 0x211D1BBF
	movl	$444444664, %edx        # imm = 0x1A7DAFF8
	callq	guardMe
	movl	$222222441, -76(%rbp)   # imm = 0xD3ED869
	movl	$555555774, -72(%rbp)   # imm = 0x211D1BBE
	movl	$444444663, -68(%rbp)   # imm = 0x1A7DAFF7
	movl	$222222441, %edi        # imm = 0xD3ED869
	movl	$555555774, %esi        # imm = 0x211D1BBE
	movl	$444444663, %edx        # imm = 0x1A7DAFF7
	callq	guardMe
	movq	%rbx, -64(%rbp)
	movq	%r12, -48(%rbp)
	movl	%r15d, -40(%rbp)
	movl	%r14d, -52(%rbp)
	leaq	-40(%rbp), %rdi
	callq	strtoichar0
	leaq	-64(%rbp), %r14
	leaq	-48(%rbp), %rbx
	leaq	-36(%rbp), %r15
	addl	$-1, -40(%rbp)
	jg	.LBB120_3
	jmp	.LBB120_2
	.p2align	4, 0x90
.LBB120_13:                             # %for.inc
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strtoichar3
	addl	$-1, -40(%rbp)
	jle	.LBB120_2
.LBB120_3:                              # %land.rhs
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB120_5
	jmp	.LBB120_14
	.p2align	4, 0x90
.LBB120_2:
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB120_14
.LBB120_5:                              # %for.body
	movl	$1, -36(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1894(%rax)
	je	.LBB120_6
# %bb.7:                                # %land.rhs7
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	stringcharlen
	movl	%eax, -36(%rbp)
	movl	$1, %ecx
	testl	%eax, %eax
	jg	.LBB120_9
# %bb.8:                                # %cond.false
	movl	$1, -36(%rbp)
	xorl	%ecx, %ecx
.LBB120_9:                              # %cond.end
	testl	%ecx, %ecx
	setne	%al
	jmp	.LBB120_10
	.p2align	4, 0x90
.LBB120_6:
	xorl	%eax, %eax
.LBB120_10:                             # %land.end11
	movq	%r14, %rdi
	testb	%al, %al
	je	.LBB120_12
# %bb.11:                               # %if.then
	callq	strtoichar1
	jmp	.LBB120_13
	.p2align	4, 0x90
.LBB120_12:                             # %if.else
	movq	%rbx, %rsi
	callq	strtoichar2
	jmp	.LBB120_13
.LBB120_14:                             # %for.end
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	xorl	%eax, %eax
	cmpl	$0, -40(%rbp)
	setle	%al
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end120:
	.size	strtoichar, .Lfunc_end120-strtoichar
	.cfi_endproc
                                        # -- End function
	.globl	toutent0                # -- Begin function toutent0
	.p2align	4, 0x90
	.type	toutent0,@function
toutent0:                               # @toutent0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	8(%rax), %rdx
	movl	$.L.str.385, %esi
	movl	$694, %ecx              # imm = 0x2B6
	movl	$.L.str.1.386, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end121:
	.size	toutent0, .Lfunc_end121-toutent0
	.cfi_endproc
                                        # -- End function
	.globl	lowcase                 # -- Begin function lowcase
	.p2align	4, 0x90
	.type	lowcase,@function
lowcase:                                # @lowcase
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222475, -76(%rbp)   # imm = 0xD3ED88B
	movl	$555555808, -72(%rbp)   # imm = 0x211D1BE0
	movl	$444444697, -68(%rbp)   # imm = 0x1A7DB019
	movl	$222222475, %edi        # imm = 0xD3ED88B
	movl	$555555808, %esi        # imm = 0x211D1BE0
	movl	$444444697, %edx        # imm = 0x1A7DB019
	callq	guardMe
	movl	$222222474, -64(%rbp)   # imm = 0xD3ED88A
	movl	$555555807, -60(%rbp)   # imm = 0x211D1BDF
	movl	$444444696, -56(%rbp)   # imm = 0x1A7DB018
	movl	$222222474, %edi        # imm = 0xD3ED88A
	movl	$555555807, %esi        # imm = 0x211D1BDF
	movl	$444444696, %edx        # imm = 0x1A7DB018
	callq	guardMe
	movl	$222222473, -52(%rbp)   # imm = 0xD3ED889
	movl	$555555806, -48(%rbp)   # imm = 0x211D1BDE
	movl	$444444695, -44(%rbp)   # imm = 0x1A7DB017
	movl	$222222473, %edi        # imm = 0xD3ED889
	movl	$555555806, %esi        # imm = 0x211D1BDE
	movl	$444444695, %edx        # imm = 0x1A7DB017
	callq	guardMe
	movl	$222222472, -40(%rbp)   # imm = 0xD3ED888
	movl	$555555805, -36(%rbp)   # imm = 0x211D1BDD
	movl	$444444694, -32(%rbp)   # imm = 0x1A7DB016
	movl	$222222472, %edi        # imm = 0xD3ED888
	movl	$555555805, %esi        # imm = 0x211D1BDD
	movl	$444444694, %edx        # imm = 0x1A7DB016
	callq	guardMe
	movl	$222222471, -28(%rbp)   # imm = 0xD3ED887
	movl	$555555804, -24(%rbp)   # imm = 0x211D1BDC
	movl	$444444693, -20(%rbp)   # imm = 0x1A7DB015
	movl	$222222471, %edi        # imm = 0xD3ED887
	movl	$555555804, %esi        # imm = 0x211D1BDC
	movl	$444444693, %edx        # imm = 0x1A7DB015
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-16(%rbp), %rbx
	jmp	.LBB122_1
	.p2align	4, 0x90
.LBB122_2:                              # %while.body
                                        #   in Loop: Header=BB122_1 Depth=1
	movq	%rbx, %rdi
	callq	lowcase0
.LBB122_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB122_2
# %bb.3:                                # %while.end
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end122:
	.size	lowcase, .Lfunc_end122-lowcase
	.cfi_endproc
                                        # -- End function
	.globl	ichartosstr             # -- Begin function ichartosstr
	.p2align	4, 0x90
	.type	ichartosstr,@function
ichartosstr:                            # @ichartosstr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222480, -44(%rbp)   # imm = 0xD3ED890
	movl	$555555813, -40(%rbp)   # imm = 0x211D1BE5
	movl	$444444702, -36(%rbp)   # imm = 0x1A7DB01E
	movl	$222222480, %edi        # imm = 0xD3ED890
	movl	$555555813, %esi        # imm = 0x211D1BE5
	movl	$444444702, %edx        # imm = 0x1A7DB01E
	callq	guardMe
	movl	$222222479, -32(%rbp)   # imm = 0xD3ED88F
	movl	$555555812, -28(%rbp)   # imm = 0x211D1BE4
	movl	$444444701, -24(%rbp)   # imm = 0x1A7DB01D
	movl	$222222479, %edi        # imm = 0xD3ED88F
	movl	$555555812, %esi        # imm = 0x211D1BE4
	movl	$444444701, %edx        # imm = 0x1A7DB01D
	callq	guardMe
	movq	%rbx, -56(%rbp)
	movl	%r14d, -20(%rbp)
	movl	$ichartosstr.out, %edi
	movl	$184, %edx
	movq	%rbx, %rsi
	movl	%r14d, %ecx
	callq	ichartostr
	testl	%eax, %eax
	je	.LBB123_2
# %bb.1:                                # %if.then
	callq	ichartosstr0
.LBB123_2:                              # %if.end
	movl	$ichartosstr.out, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end123:
	.size	ichartosstr, .Lfunc_end123-ichartosstr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function toutword
	.type	toutword,@function
toutword:                               # @toutword
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$222222483, -92(%rbp)   # imm = 0xD3ED893
	movl	$555555816, -88(%rbp)   # imm = 0x211D1BE8
	movl	$444444705, -84(%rbp)   # imm = 0x1A7DB021
	movl	$222222483, %edi        # imm = 0xD3ED893
	movl	$555555816, %esi        # imm = 0x211D1BE8
	movl	$444444705, %edx        # imm = 0x1A7DB021
	callq	guardMe
	movl	$222222482, -80(%rbp)   # imm = 0xD3ED892
	movl	$555555815, -76(%rbp)   # imm = 0x211D1BE7
	movl	$444444704, -72(%rbp)   # imm = 0x1A7DB020
	movl	$222222482, %edi        # imm = 0xD3ED892
	movl	$555555815, %esi        # imm = 0x211D1BE7
	movl	$444444704, %edx        # imm = 0x1A7DB020
	callq	guardMe
	movl	$222222481, -68(%rbp)   # imm = 0xD3ED891
	movl	$555555814, -64(%rbp)   # imm = 0x211D1BE6
	movl	$444444703, -60(%rbp)   # imm = 0x1A7DB01F
	movl	$222222481, %edi        # imm = 0xD3ED891
	movl	$555555814, %esi        # imm = 0x211D1BE6
	movl	$444444703, %edx        # imm = 0x1A7DB01F
	callq	guardMe
	movq	%rbx, -40(%rbp)
	movq	%r15, -56(%rbp)
	movq	%r14, -48(%rbp)
	movl	$0, has_marker(%rip)
	leaq	-56(%rbp), %rdi
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	toutword0
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rbx
	cmpl	$25, -28(%rbp)
	jle	.LBB124_2
	jmp	.LBB124_5
	.p2align	4, 0x90
.LBB124_4:                              # %for.inc
                                        #   in Loop: Header=BB124_2 Depth=1
	addl	$1, -28(%rbp)
	cmpl	$25, -28(%rbp)
	jg	.LBB124_5
.LBB124_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	-28(%rbp), %ecx
	btq	%rcx, %rax
	jae	.LBB124_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB124_2 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	toutword1
	jmp	.LBB124_4
.LBB124_5:                              # %for.end
	leaq	-40(%rbp), %rdi
	callq	toutword2
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	toutword, .Lfunc_end124-toutword
	.cfi_endproc
                                        # -- End function
	.globl	upcase                  # -- Begin function upcase
	.p2align	4, 0x90
	.type	upcase,@function
upcase:                                 # @upcase
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222456, -52(%rbp)   # imm = 0xD3ED878
	movl	$555555789, -48(%rbp)   # imm = 0x211D1BCD
	movl	$444444678, -44(%rbp)   # imm = 0x1A7DB006
	movl	$222222456, %edi        # imm = 0xD3ED878
	movl	$555555789, %esi        # imm = 0x211D1BCD
	movl	$444444678, %edx        # imm = 0x1A7DB006
	callq	guardMe
	movl	$222222455, -40(%rbp)   # imm = 0xD3ED877
	movl	$555555788, -36(%rbp)   # imm = 0x211D1BCC
	movl	$444444677, -32(%rbp)   # imm = 0x1A7DB005
	movl	$222222455, %edi        # imm = 0xD3ED877
	movl	$555555788, %esi        # imm = 0x211D1BCC
	movl	$444444677, %edx        # imm = 0x1A7DB005
	callq	guardMe
	movl	$222222454, -28(%rbp)   # imm = 0xD3ED876
	movl	$555555787, -24(%rbp)   # imm = 0x211D1BCB
	movl	$444444676, -20(%rbp)   # imm = 0x1A7DB004
	movl	$222222454, %edi        # imm = 0xD3ED876
	movl	$555555787, %esi        # imm = 0x211D1BCB
	movl	$444444676, %edx        # imm = 0x1A7DB004
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-16(%rbp), %rbx
	jmp	.LBB125_1
	.p2align	4, 0x90
.LBB125_2:                              # %while.body
                                        #   in Loop: Header=BB125_1 Depth=1
	movq	%rbx, %rdi
	callq	upcase0
.LBB125_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB125_2
# %bb.3:                                # %while.end
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end125:
	.size	upcase, .Lfunc_end125-upcase
	.cfi_endproc
                                        # -- End function
	.globl	toutent1                # -- Begin function toutent1
	.p2align	4, 0x90
	.type	toutent1,@function
toutent1:                               # @toutent1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movq	8(%rdx), %rsi
	callq	toutword
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end126:
	.size	toutent1, .Lfunc_end126-toutent1
	.cfi_endproc
                                        # -- End function
	.globl	toutent2                # -- Begin function toutent2
	.p2align	4, 0x90
	.type	toutent2,@function
toutent2:                               # @toutent2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end127:
	.size	toutent2, .Lfunc_end127-toutent2
	.cfi_endproc
                                        # -- End function
	.globl	upcase0                 # -- Begin function upcase0
	.p2align	4, 0x90
	.type	upcase0,@function
upcase0:                                # @upcase0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movb	hashheader+754(%rcx), %cl
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	-8(%rsp), %rcx
	movq	%rax, (%rcx)
	retq
.Lfunc_end128:
	.size	upcase0, .Lfunc_end128-upcase0
	.cfi_endproc
                                        # -- End function
	.globl	toutword0               # -- Begin function toutword0
	.p2align	4, 0x90
	.type	toutword0,@function
toutword0:                              # @toutword0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.6.402, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end129:
	.size	toutword0, .Lfunc_end129-toutword0
	.cfi_endproc
                                        # -- End function
	.globl	toutword1               # -- Begin function toutword1
	.p2align	4, 0x90
	.type	toutword1,@function
toutword1:                              # @toutword1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 16(%rsp)
	addl	$65, %eax
	movl	%eax, %esi
	callq	flagout
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end130:
	.size	toutword1, .Lfunc_end130-toutword1
	.cfi_endproc
                                        # -- End function
	.globl	toutword2               # -- Begin function toutword2
	.p2align	4, 0x90
	.type	toutword2,@function
toutword2:                              # @toutword2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.7.403, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end131:
	.size	toutword2, .Lfunc_end131-toutword2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function flagout
	.type	flagout,@function
flagout:                                # @flagout
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	cmpl	$0, has_marker(%rip)
	jne	.LBB132_2
# %bb.1:                                # %if.then
	leaq	-16(%rbp), %rdi
	callq	flagout0
.LBB132_2:                              # %if.end
	movl	$1, has_marker(%rip)
	leaq	-16(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	flagout1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end132:
	.size	flagout, .Lfunc_end132-flagout
	.cfi_endproc
                                        # -- End function
	.globl	flagout0                # -- Begin function flagout0
	.p2align	4, 0x90
	.type	flagout0,@function
flagout0:                               # @flagout0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movsbl	hashheader+68(%rip), %edi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end133:
	.size	flagout0, .Lfunc_end133-flagout0
	.cfi_endproc
                                        # -- End function
	.globl	flagout1                # -- Begin function flagout1
	.p2align	4, 0x90
	.type	flagout1,@function
flagout1:                               # @flagout1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	(%rsi), %edi
	movl	%edi, 12(%rsp)
	movq	%rax, %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end134:
	.size	flagout1, .Lfunc_end134-flagout1
	.cfi_endproc
                                        # -- End function
	.globl	ichartostr              # -- Begin function ichartostr
	.p2align	4, 0x90
	.type	ichartostr,@function
ichartostr:                             # @ichartostr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$222222446, -128(%rbp)  # imm = 0xD3ED86E
	movl	$555555779, -124(%rbp)  # imm = 0x211D1BC3
	movl	$444444668, -120(%rbp)  # imm = 0x1A7DAFFC
	movl	$222222446, %edi        # imm = 0xD3ED86E
	movl	$555555779, %esi        # imm = 0x211D1BC3
	movl	$444444668, %edx        # imm = 0x1A7DAFFC
	callq	guardMe
	movl	$222222445, -116(%rbp)  # imm = 0xD3ED86D
	movl	$555555778, -112(%rbp)  # imm = 0x211D1BC2
	movl	$444444667, -108(%rbp)  # imm = 0x1A7DAFFB
	movl	$222222445, %edi        # imm = 0xD3ED86D
	movl	$555555778, %esi        # imm = 0x211D1BC2
	movl	$444444667, %edx        # imm = 0x1A7DAFFB
	callq	guardMe
	movl	$222222444, -104(%rbp)  # imm = 0xD3ED86C
	movl	$555555777, -100(%rbp)  # imm = 0x211D1BC1
	movl	$444444666, -96(%rbp)   # imm = 0x1A7DAFFA
	movl	$222222444, %edi        # imm = 0xD3ED86C
	movl	$555555777, %esi        # imm = 0x211D1BC1
	movl	$444444666, %edx        # imm = 0x1A7DAFFA
	callq	guardMe
	movl	$222222443, -92(%rbp)   # imm = 0xD3ED86B
	movl	$555555776, -88(%rbp)   # imm = 0x211D1BC0
	movl	$444444665, -84(%rbp)   # imm = 0x1A7DAFF9
	movl	$222222443, %edi        # imm = 0xD3ED86B
	movl	$555555776, %esi        # imm = 0x211D1BC0
	movl	$444444665, %edx        # imm = 0x1A7DAFF9
	callq	guardMe
	movq	%rbx, -56(%rbp)
	movq	%r12, -80(%rbp)
	movl	%r15d, -44(%rbp)
	movl	%r14d, -60(%rbp)
	leaq	-56(%rbp), %r14
	leaq	-36(%rbp), %rbx
	leaq	-72(%rbp), %r15
	leaq	-40(%rbp), %r12
	addl	$-1, -44(%rbp)
	jg	.LBB135_3
	jmp	.LBB135_2
	.p2align	4, 0x90
.LBB135_15:                             # %while.end
	movq	%r14, %rdi
	callq	ichartostr4
	addl	$-1, -44(%rbp)
	jg	.LBB135_3
.LBB135_2:
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB135_16
.LBB135_5:                              # %while.body
	cmpl	$127, -36(%rbp)
	jg	.LBB135_7
# %bb.6:                                # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ichartostr0
	addl	$-1, -44(%rbp)
	jle	.LBB135_2
.LBB135_3:                              # %land.rhs
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movzbl	(%rax), %ecx
	testl	%ecx, %ecx
	setne	%al
	movl	%ecx, -36(%rbp)
	testb	%al, %al
	jne	.LBB135_5
	jmp	.LBB135_16
	.p2align	4, 0x90
.LBB135_7:                              # %if.else
	addl	$-128, -36(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB135_13
# %bb.8:                                # %if.then7
	movq	%r12, %rdi
	callq	ichartostr1
	.p2align	4, 0x90
.LBB135_9:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	addl	$-1, -40(%rbp)
	js	.LBB135_13
# %bb.10:                               # %for.body
                                        #   in Loop: Header=BB135_9 Depth=1
	movslq	-40(%rbp), %rax
	movl	hashheader+3524(,%rax,4), %eax
	cmpl	defdupchar(%rip), %eax
	jne	.LBB135_9
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB135_9 Depth=1
	movslq	-40(%rbp), %rax
	movl	hashheader+3124(,%rax,4), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB135_9
# %bb.12:                               # %if.then17
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	ichartostr2
	.p2align	4, 0x90
.LBB135_13:                             # %if.end18
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ichartostr3
	.p2align	4, 0x90
.LBB135_14:                             # %while.cond21
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	movq	-56(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -56(%rbp)
	movb	%al, (%rcx)
	testb	%al, %al
	jne	.LBB135_14
	jmp	.LBB135_15
.LBB135_16:                             # %while.end30
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	xorl	%eax, %eax
	cmpl	$0, -44(%rbp)
	setle	%al
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end135:
	.size	ichartostr, .Lfunc_end135-ichartostr
	.cfi_endproc
                                        # -- End function
	.globl	ichartosstr0            # -- Begin function ichartosstr0
	.p2align	4, 0x90
	.type	ichartosstr0,@function
ichartosstr0:                           # @ichartosstr0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.385, %esi
	movl	$ichartosstr.out, %edx
	movl	$952, %ecx              # imm = 0x3B8
	movl	$.L.str.1.386, %r8d
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end136:
	.size	ichartosstr0, .Lfunc_end136-ichartosstr0
	.cfi_endproc
                                        # -- End function
	.globl	ichartostr0             # -- Begin function ichartostr0
	.p2align	4, 0x90
	.type	ichartostr0,@function
ichartostr0:                            # @ichartostr0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movb	-28(%rsp), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end137:
	.size	ichartostr0, .Lfunc_end137-ichartostr0
	.cfi_endproc
                                        # -- End function
	.globl	ichartostr1             # -- Begin function ichartostr1
	.p2align	4, 0x90
	.type	ichartostr1,@function
ichartostr1:                            # @ichartostr1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	hashheader+36(%rip), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end138:
	.size	ichartostr1, .Lfunc_end138-ichartostr1
	.cfi_endproc
                                        # -- End function
	.globl	ichartostr2             # -- Begin function ichartostr2
	.p2align	4, 0x90
	.type	ichartostr2,@function
ichartostr2:                            # @ichartostr2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end139:
	.size	ichartostr2, .Lfunc_end139-ichartostr2
	.cfi_endproc
                                        # -- End function
	.globl	ichartostr3             # -- Begin function ichartostr3
	.p2align	4, 0x90
	.type	ichartostr3,@function
ichartostr3:                            # @ichartostr3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -28(%rsp)
	movl	-28(%rsp), %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	hashheader+2022(%rax,%rcx,2), %rcx
	movq	%rcx, -24(%rsp)
	movl	%eax, (%rsi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end140:
	.size	ichartostr3, .Lfunc_end140-ichartostr3
	.cfi_endproc
                                        # -- End function
	.globl	ichartostr4             # -- Begin function ichartostr4
	.p2align	4, 0x90
	.type	ichartostr4,@function
ichartostr4:                            # @ichartostr4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	decq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end141:
	.size	ichartostr4, .Lfunc_end141-ichartostr4
	.cfi_endproc
                                        # -- End function
	.globl	lowcase0                # -- Begin function lowcase0
	.p2align	4, 0x90
	.type	lowcase0,@function
lowcase0:                               # @lowcase0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movb	hashheader+526(%rcx), %cl
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	-8(%rsp), %rcx
	movq	%rax, (%rcx)
	retq
.Lfunc_end142:
	.size	lowcase0, .Lfunc_end142-lowcase0
	.cfi_endproc
                                        # -- End function
	.globl	strtoichar0             # -- Begin function strtoichar0
	.p2align	4, 0x90
	.type	strtoichar0,@function
strtoichar0:                            # @strtoichar0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end143:
	.size	strtoichar0, .Lfunc_end143-strtoichar0
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen           # -- Begin function stringcharlen
	.p2align	4, 0x90
	.type	stringcharlen,@function
stringcharlen:                          # @stringcharlen
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$222222457, -104(%rbp)  # imm = 0xD3ED879
	movl	$555555790, -100(%rbp)  # imm = 0x211D1BCE
	movl	$444444679, -96(%rbp)   # imm = 0x1A7DB007
	movl	$222222457, %edi        # imm = 0xD3ED879
	movl	$555555790, %esi        # imm = 0x211D1BCE
	movl	$444444679, %edx        # imm = 0x1A7DB007
	callq	guardMe
	movq	%r14, -88(%rbp)
	movl	%ebx, -92(%rbp)
	movl	$0, -76(%rbp)
	movl	hashheader+36(%rip), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jne	.LBB144_2
# %bb.1:                                # %cond.false
	movl	defdupchar(%rip), %eax
.LBB144_2:                              # %cond.end
	movl	%eax, -68(%rbp)
	leaq	-64(%rbp), %r15
	leaq	-76(%rbp), %r12
	leaq	-44(%rbp), %rbx
	leaq	-72(%rbp), %r13
	leaq	-56(%rbp), %r14
	jmp	.LBB144_3
	.p2align	4, 0x90
.LBB144_13:                             # %if.then34
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	stringcharlen4
.LBB144_3:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB144_5 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB144_19
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB144_3 Depth=1
	leaq	-88(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	stringcharlen0
	jmp	.LBB144_5
	.p2align	4, 0x90
.LBB144_7:                              # %if.end
                                        #   in Loop: Header=BB144_5 Depth=2
	movq	%r14, %rdi
	callq	stringcharlen1
.LBB144_5:                              # %while.cond2
                                        #   Parent Loop BB144_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB144_8
# %bb.6:                                # %while.body4
                                        #   in Loop: Header=BB144_5 Depth=2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %ecx
	xorl	%eax, %ecx
	testb	$127, %cl
	je	.LBB144_7
.LBB144_8:                              # %while.end
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB144_12
# %bb.9:                                # %if.then12
                                        #   in Loop: Header=BB144_3 Depth=1
	movslq	-44(%rbp), %rax
	movl	hashheader+3524(,%rax,4), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB144_10
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	%r14, %rdi
	callq	stringcharlen3
.LBB144_12:                             # %if.end26
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	-1(%rax), %eax
	andl	$127, %eax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %ecx
	andl	$127, %ecx
	cmpl	%ecx, %eax
	jl	.LBB144_13
# %bb.14:                               # %if.else36
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$127, %eax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %ecx
	andl	$127, %ecx
	cmpl	%ecx, %eax
	jle	.LBB144_16
# %bb.15:                               # %if.then43
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	stringcharlen5
	jmp	.LBB144_3
	.p2align	4, 0x90
.LBB144_16:                             # %if.else45
                                        #   in Loop: Header=BB144_3 Depth=1
	movl	-68(%rbp), %eax
	movslq	-44(%rbp), %rcx
	cmpl	hashheader+3524(,%rcx,4), %eax
	jge	.LBB144_18
# %bb.17:                               # %if.then50
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	stringcharlen6
	jmp	.LBB144_3
.LBB144_18:                             # %if.else52
                                        #   in Loop: Header=BB144_3 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	stringcharlen7
	jmp	.LBB144_3
.LBB144_19:                             # %while.end57
	leaq	-80(%rbp), %rdi
	callq	stringcharlen8
	jmp	.LBB144_20
.LBB144_10:                             # %if.then17
	leaq	-80(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	stringcharlen2
.LBB144_20:                             # %return
	movl	-80(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end144:
	.size	stringcharlen, .Lfunc_end144-stringcharlen
	.cfi_endproc
                                        # -- End function
	.globl	strtoichar1             # -- Begin function strtoichar1
	.p2align	4, 0x90
	.type	strtoichar1,@function
strtoichar1:                            # @strtoichar1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movl	$128, %ecx
	addl	laststringch(%rip), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rsp)
	movb	%cl, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end145:
	.size	strtoichar1, .Lfunc_end145-strtoichar1
	.cfi_endproc
                                        # -- End function
	.globl	strtoichar2             # -- Begin function strtoichar2
	.p2align	4, 0x90
	.type	strtoichar2,@function
strtoichar2:                            # @strtoichar2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -24(%rsp)
	movzbl	(%rcx), %ecx
	andl	$127, %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end146:
	.size	strtoichar2, .Lfunc_end146-strtoichar2
	.cfi_endproc
                                        # -- End function
	.globl	strtoichar3             # -- Begin function strtoichar3
	.p2align	4, 0x90
	.type	strtoichar3,@function
strtoichar3:                            # @strtoichar3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movslq	-28(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rsp)
	movl	%ecx, (%rsi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end147:
	.size	strtoichar3, .Lfunc_end147-strtoichar3
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen0          # -- Begin function stringcharlen0
	.p2align	4, 0x90
	.type	stringcharlen0,@function
stringcharlen0:                         # @stringcharlen0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -64(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -72(%rsp)
	movq	%rdx, -40(%rsp)
	movl	(%rdx), %eax
	movl	%eax, -76(%rsp)
	movq	%rcx, -48(%rsp)
	movl	(%rcx), %ecx
	movl	%ecx, -84(%rsp)
	movq	%r8, -56(%rsp)
	movl	(%r8), %ecx
	movl	%ecx, -80(%rsp)
	movq	%r9, -8(%rsp)
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, -84(%rsp)
	movslq	-84(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	leaq	hashheader+2022(%rax,%rcx,2), %rax
	movq	%rax, -16(%rsp)
	movq	-64(%rsp), %rcx
	movq	%rcx, -72(%rsp)
	movq	%rax, (%r9)
	movq	-56(%rsp), %rax
	movl	-80(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movq	-72(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rsp), %rax
	movl	-76(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-48(%rsp), %rax
	movl	-84(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end148:
	.size	stringcharlen0, .Lfunc_end148-stringcharlen0
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen1          # -- Begin function stringcharlen1
	.p2align	4, 0x90
	.type	stringcharlen1,@function
stringcharlen1:                         # @stringcharlen1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end149:
	.size	stringcharlen1, .Lfunc_end149-stringcharlen1
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen2          # -- Begin function stringcharlen2
	.p2align	4, 0x90
	.type	stringcharlen2,@function
stringcharlen2:                         # @stringcharlen2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -40(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -32(%rsp)
	movq	%rdx, -8(%rsp)
	movl	(%rdx), %eax
	movl	%eax, -36(%rsp)
	movslq	-36(%rsp), %rax
	movl	hashheader+3124(,%rax,4), %ecx
	movl	%ecx, laststringch(%rip)
	movl	-32(%rsp), %ecx
	leal	(%rax,%rax,4), %esi
	leal	(%rax,%rsi,2), %esi
	movl	$hashheader+2022, %edi
	addl	%esi, %edi
	subl	%edi, %ecx
	movl	%ecx, -40(%rsp)
	movl	%eax, (%rdx)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end150:
	.size	stringcharlen2, .Lfunc_end150-stringcharlen2
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen3          # -- Begin function stringcharlen3
	.p2align	4, 0x90
	.type	stringcharlen3,@function
stringcharlen3:                         # @stringcharlen3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	decq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end151:
	.size	stringcharlen3, .Lfunc_end151-stringcharlen3
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen4          # -- Begin function stringcharlen4
	.p2align	4, 0x90
	.type	stringcharlen4,@function
stringcharlen4:                         # @stringcharlen4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	leal	-1(%rax), %ecx
	movl	%ecx, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end152:
	.size	stringcharlen4, .Lfunc_end152-stringcharlen4
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen5          # -- Begin function stringcharlen5
	.p2align	4, 0x90
	.type	stringcharlen5,@function
stringcharlen5:                         # @stringcharlen5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	leal	1(%rax), %ecx
	movl	%ecx, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end153:
	.size	stringcharlen5, .Lfunc_end153-stringcharlen5
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen6          # -- Begin function stringcharlen6
	.p2align	4, 0x90
	.type	stringcharlen6,@function
stringcharlen6:                         # @stringcharlen6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	leal	-1(%rax), %ecx
	movl	%ecx, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end154:
	.size	stringcharlen6, .Lfunc_end154-stringcharlen6
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen7          # -- Begin function stringcharlen7
	.p2align	4, 0x90
	.type	stringcharlen7,@function
stringcharlen7:                         # @stringcharlen7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	leal	1(%rax), %ecx
	movl	%ecx, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end155:
	.size	stringcharlen7, .Lfunc_end155-stringcharlen7
	.cfi_endproc
                                        # -- End function
	.globl	stringcharlen8          # -- Begin function stringcharlen8
	.p2align	4, 0x90
	.type	stringcharlen8,@function
stringcharlen8:                         # @stringcharlen8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	$-1, laststringch(%rip)
	movl	$0, -12(%rsp)
	movl	$0, (%rdi)
	retq
.Lfunc_end156:
	.size	stringcharlen8, .Lfunc_end156-stringcharlen8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pdictcmp
	.type	pdictcmp,@function
pdictcmp:                               # @pdictcmp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222513, -76(%rbp)   # imm = 0xD3ED8B1
	movl	$555555846, -72(%rbp)   # imm = 0x211D1C06
	movl	$444444735, -68(%rbp)   # imm = 0x1A7DB03F
	movl	$222222513, %edi        # imm = 0xD3ED8B1
	movl	$555555846, %esi        # imm = 0x211D1C06
	movl	$444444735, %edx        # imm = 0x1A7DB03F
	callq	guardMe
	movl	$222222512, -64(%rbp)   # imm = 0xD3ED8B0
	movl	$555555845, -60(%rbp)   # imm = 0x211D1C05
	movl	$444444734, -56(%rbp)   # imm = 0x1A7DB03E
	movl	$222222512, %edi        # imm = 0xD3ED8B0
	movl	$555555845, %esi        # imm = 0x211D1C05
	movl	$444444734, %edx        # imm = 0x1A7DB03E
	callq	guardMe
	movl	$222222511, -52(%rbp)   # imm = 0xD3ED8AF
	movl	$555555844, -48(%rbp)   # imm = 0x211D1C04
	movl	$444444733, -44(%rbp)   # imm = 0x1A7DB03D
	movl	$222222511, %edi        # imm = 0xD3ED8AF
	movl	$555555844, %esi        # imm = 0x211D1C04
	movl	$444444733, %edx        # imm = 0x1A7DB03D
	callq	guardMe
	movl	$222222510, -40(%rbp)   # imm = 0xD3ED8AE
	movl	$555555843, -36(%rbp)   # imm = 0x211D1C03
	movl	$444444732, -32(%rbp)   # imm = 0x1A7DB03C
	movl	$222222510, %edi        # imm = 0xD3ED8AE
	movl	$555555843, %esi        # imm = 0x211D1C03
	movl	$444444732, %edx        # imm = 0x1A7DB03C
	callq	guardMe
	movl	$222222509, -28(%rbp)   # imm = 0xD3ED8AD
	movl	$555555842, -24(%rbp)   # imm = 0x211D1C02
	movl	$444444731, -20(%rbp)   # imm = 0x1A7DB03B
	movl	$222222509, %edi        # imm = 0xD3ED8AD
	movl	$555555842, %esi        # imm = 0x211D1C02
	movl	$444444731, %edx        # imm = 0x1A7DB03B
	callq	guardMe
	movq	%rbx, -96(%rbp)
	movq	%r14, -88(%rbp)
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movq	(%r14), %rax
	movq	8(%rax), %rsi
	movl	$1, %edx
	callq	casecmp
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end157:
	.size	pdictcmp, .Lfunc_end157-pdictcmp
	.cfi_endproc
                                        # -- End function
	.globl	casecmp                 # -- Begin function casecmp
	.p2align	4, 0x90
	.type	casecmp,@function
casecmp:                                # @casecmp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$432, %rsp              # imm = 0x1B0
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222339, -76(%rbp)   # imm = 0xD3ED803
	movl	$555555672, -72(%rbp)   # imm = 0x211D1B58
	movl	$444444561, -68(%rbp)   # imm = 0x1A7DAF91
	movl	$222222339, %edi        # imm = 0xD3ED803
	movl	$555555672, %esi        # imm = 0x211D1B58
	movl	$444444561, %edx        # imm = 0x1A7DAF91
	callq	guardMe
	movq	%rbx, -88(%rbp)
	movq	%r14, -64(%rbp)
	movl	%r15d, -56(%rbp)
	leaq	-464(%rbp), %r14
	movl	$184, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %ecx
	callq	strtoichar
	movq	-64(%rbp), %rsi
	movl	-56(%rbp), %ecx
	leaq	-272(%rbp), %r15
	movl	$184, %edx
	movq	%r15, %rdi
	callq	strtoichar
	movq	%r14, -48(%rbp)
	movq	%r15, -40(%rbp)
	leaq	-40(%rbp), %r12
	leaq	-48(%rbp), %rbx
	jmp	.LBB158_1
	.p2align	4, 0x90
.LBB158_12:                             # %for.inc
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	casecmp3
.LBB158_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB158_13
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB158_12
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB158_4
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB158_9
# %bb.6:                                # %if.then17
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	jne	.LBB158_8
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	hashheader+754(%rax), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB158_12
	jmp	.LBB158_8
.LBB158_9:                              # %if.else35
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	jne	.LBB158_11
# %bb.10:                               # %lor.lhs.false40
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	hashheader+526(%rax), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB158_12
.LBB158_11:                             # %if.then47
	leaq	-52(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	casecmp2
	jmp	.LBB158_21
.LBB158_13:                             # %for.end
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB158_15
# %bb.14:                               # %if.then63
	leaq	-52(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	casecmp4
	jmp	.LBB158_21
.LBB158_8:                              # %if.then28
	leaq	-52(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	casecmp1
	jmp	.LBB158_21
.LBB158_4:                              # %if.then13
	leaq	-52(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	casecmp0
	jmp	.LBB158_21
.LBB158_15:                             # %if.end68
	movq	%r14, -48(%rbp)
	movq	%r15, -40(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-48(%rbp), %rbx
	jmp	.LBB158_16
	.p2align	4, 0x90
.LBB158_19:                             # %for.inc87
                                        #   in Loop: Header=BB158_16 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	casecmp6
.LBB158_16:                             # %for.cond71
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB158_20
# %bb.17:                               # %for.body73
                                        #   in Loop: Header=BB158_16 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB158_19
# %bb.18:                               # %if.then78
	leaq	-52(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	casecmp5
	jmp	.LBB158_21
.LBB158_20:                             # %for.end90
	movl	$0, -52(%rbp)
.LBB158_21:                             # %return
	movl	-52(%rbp), %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end158:
	.size	casecmp, .Lfunc_end158-casecmp
	.cfi_endproc
                                        # -- End function
	.globl	casecmp0                # -- Begin function casecmp0
	.p2align	4, 0x90
	.type	casecmp0,@function
casecmp0:                               # @casecmp0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movzwl	hashheader+70(%rcx,%rcx), %ecx
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end159:
	.size	casecmp0, .Lfunc_end159-casecmp0
	.cfi_endproc
                                        # -- End function
	.globl	casecmp1                # -- Begin function casecmp1
	.p2align	4, 0x90
	.type	casecmp1,@function
casecmp1:                               # @casecmp1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -16(%rsp)
	movzbl	(%rcx), %esi
	movzwl	hashheader+70(%rsi,%rsi), %esi
	movzbl	(%rax), %eax
	movzwl	hashheader+70(%rax,%rax), %eax
	subl	%eax, %esi
	movl	%esi, -44(%rsp)
	movq	%rcx, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end160:
	.size	casecmp1, .Lfunc_end160-casecmp1
	.cfi_endproc
                                        # -- End function
	.globl	casecmp2                # -- Begin function casecmp2
	.p2align	4, 0x90
	.type	casecmp2,@function
casecmp2:                               # @casecmp2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -40(%rsp)
	movzbl	(%rcx), %ecx
	movzwl	hashheader+70(%rcx,%rcx), %ecx
	movzbl	(%rax), %edx
	movzwl	hashheader+70(%rdx,%rdx), %edx
	subl	%edx, %ecx
	movl	%ecx, -44(%rsp)
	movq	%rax, (%rsi)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end161:
	.size	casecmp2, .Lfunc_end161-casecmp2
	.cfi_endproc
                                        # -- End function
	.globl	casecmp3                # -- Begin function casecmp3
	.p2align	4, 0x90
	.type	casecmp3,@function
casecmp3:                               # @casecmp3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	incq	%rcx
	movq	%rcx, -16(%rsp)
	incq	%rax
	movq	%rax, -32(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end162:
	.size	casecmp3, .Lfunc_end162-casecmp3
	.cfi_endproc
                                        # -- End function
	.globl	casecmp4                # -- Begin function casecmp4
	.p2align	4, 0x90
	.type	casecmp4,@function
casecmp4:                               # @casecmp4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movzwl	hashheader+70(%rcx,%rcx), %ecx
	negl	%ecx
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end163:
	.size	casecmp4, .Lfunc_end163-casecmp4
	.cfi_endproc
                                        # -- End function
	.globl	casecmp5                # -- Begin function casecmp5
	.p2align	4, 0x90
	.type	casecmp5,@function
casecmp5:                               # @casecmp5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -16(%rsp)
	movzbl	(%rcx), %esi
	movzwl	hashheader+70(%rsi,%rsi), %esi
	movzbl	(%rax), %eax
	movzwl	hashheader+70(%rax,%rax), %eax
	subl	%eax, %esi
	movl	%esi, -44(%rsp)
	movq	%rcx, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end164:
	.size	casecmp5, .Lfunc_end164-casecmp5
	.cfi_endproc
                                        # -- End function
	.globl	casecmp6                # -- Begin function casecmp6
	.p2align	4, 0x90
	.type	casecmp6,@function
casecmp6:                               # @casecmp6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	incq	%rcx
	movq	%rcx, -16(%rsp)
	incq	%rax
	movq	%rax, -32(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end165:
	.size	casecmp6, .Lfunc_end165-casecmp6
	.cfi_endproc
                                        # -- End function
	.globl	checkfile0              # -- Begin function checkfile0
	.p2align	4, 0x90
	.type	checkfile0,@function
checkfile0:                             # @checkfile0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movslq	-12(%rsp), %rax
	movq	%rax, %rcx
	shlq	$13, %rcx
	movb	$0, contextbufs(%rcx)
	movl	%eax, (%rdi)
	retq
.Lfunc_end166:
	.size	checkfile0, .Lfunc_end166-checkfile0
	.cfi_endproc
                                        # -- End function
	.globl	checkfile1              # -- Begin function checkfile1
	.p2align	4, 0x90
	.type	checkfile1,@function
checkfile1:                             # @checkfile1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end167:
	.size	checkfile1, .Lfunc_end167-checkfile1
	.cfi_endproc
                                        # -- End function
	.globl	checkfile2              # -- Begin function checkfile2
	.p2align	4, 0x90
	.type	checkfile2,@function
checkfile2:                             # @checkfile2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	contextsize(%rip), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end168:
	.size	checkfile2, .Lfunc_end168-checkfile2
	.cfi_endproc
                                        # -- End function
	.globl	checkfile3              # -- Begin function checkfile3
	.p2align	4, 0x90
	.type	checkfile3,@function
checkfile3:                             # @checkfile3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rax
	shlq	$13, %rax
	leaq	contextbufs(%rax), %rdi
	leaq	contextbufs-8192(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end169:
	.size	checkfile3, .Lfunc_end169-checkfile3
	.cfi_endproc
                                        # -- End function
	.globl	checkfile4              # -- Begin function checkfile4
	.p2align	4, 0x90
	.type	checkfile4,@function
checkfile4:                             # @checkfile4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outfile(%rip), %rsi
	movl	$contextbufs, %edi
	callq	fputs
	popq	%rax
	retq
.Lfunc_end170:
	.size	checkfile4, .Lfunc_end170-checkfile4
	.cfi_endproc
                                        # -- End function
	.globl	checkfile5              # -- Begin function checkfile5
	.p2align	4, 0x90
	.type	checkfile5,@function
checkfile5:                             # @checkfile5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -20(%rsp)
	movslq	-20(%rsp), %rax
	movzbl	contextbufs-1(%rax), %ecx
	movl	%ecx, -24(%rsp)
	movl	%eax, (%rsi)
	movq	-16(%rsp), %rax
	movl	-24(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end171:
	.size	checkfile5, .Lfunc_end171-checkfile5
	.cfi_endproc
                                        # -- End function
	.globl	checkfile6              # -- Begin function checkfile6
	.p2align	4, 0x90
	.type	checkfile6,@function
checkfile6:                             # @checkfile6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -4(%rsp)
	movslq	-28(%rsp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -28(%rsp)
	movb	%al, contextbufs(%rcx)
	movslq	-28(%rsp), %rcx
	movb	$0, contextbufs(%rcx)
	movq	-24(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end172:
	.size	checkfile6, .Lfunc_end172-checkfile6
	.cfi_endproc
                                        # -- End function
	.globl	checkfile7              # -- Begin function checkfile7
	.p2align	4, 0x90
	.type	checkfile7,@function
checkfile7:                             # @checkfile7
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outfile(%rip), %rdi
	callq	checkline
	popq	%rax
	retq
.Lfunc_end173:
	.size	checkfile7, .Lfunc_end173-checkfile7
	.cfi_endproc
                                        # -- End function
	.globl	checkline               # -- Begin function checkline
	.p2align	4, 0x90
	.type	checkline,@function
checkline:                              # @checkline
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222368, -128(%rbp)  # imm = 0xD3ED820
	movl	$555555701, -124(%rbp)  # imm = 0x211D1B75
	movl	$444444590, -120(%rbp)  # imm = 0x1A7DAFAE
	movl	$222222368, %edi        # imm = 0xD3ED820
	movl	$555555701, %esi        # imm = 0x211D1B75
	movl	$444444590, %edx        # imm = 0x1A7DAFAE
	callq	guardMe
	movl	$222222367, -116(%rbp)  # imm = 0xD3ED81F
	movl	$555555700, -112(%rbp)  # imm = 0x211D1B74
	movl	$444444589, -108(%rbp)  # imm = 0x1A7DAFAD
	movl	$222222367, %edi        # imm = 0xD3ED81F
	movl	$555555700, %esi        # imm = 0x211D1B74
	movl	$444444589, %edx        # imm = 0x1A7DAFAD
	callq	guardMe
	movl	$222222366, -104(%rbp)  # imm = 0xD3ED81E
	movl	$555555699, -100(%rbp)  # imm = 0x211D1B73
	movl	$444444588, -96(%rbp)   # imm = 0x1A7DAFAC
	movl	$222222366, %edi        # imm = 0xD3ED81E
	movl	$555555699, %esi        # imm = 0x211D1B73
	movl	$444444588, %edx        # imm = 0x1A7DAFAC
	callq	guardMe
	movl	$222222365, -92(%rbp)   # imm = 0xD3ED81D
	movl	$555555698, -88(%rbp)   # imm = 0x211D1B72
	movl	$444444587, -84(%rbp)   # imm = 0x1A7DAFAB
	movl	$222222365, %edi        # imm = 0xD3ED81D
	movl	$555555698, %esi        # imm = 0x211D1B72
	movl	$444444587, %edx        # imm = 0x1A7DAFAB
	callq	guardMe
	movq	%rbx, -56(%rbp)
	movq	$contextbufs, currentchar(%rip)
	movl	$contextbufs, %edi
	callq	strlen
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	movslq	-64(%rbp), %rax
	movsbl	contextbufs(%rax), %eax
	xorl	%ecx, %ecx
	cmpl	$10, %eax
	sete	%cl
	movl	%ecx, -48(%rbp)
	jne	.LBB174_2
# %bb.1:                                # %if.then
	leaq	-64(%rbp), %rdi
	callq	checkline0
.LBB174_2:                              # %if.end
	cmpl	$0, tflag(%rip)
	jne	.LBB174_38
# %bb.3:                                # %if.then6
	movq	currentchar(%rip), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+50(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB174_15
# %bb.4:                                # %land.lhs.true
	movq	currentchar(%rip), %rdi
	addq	$1, %rdi
	movl	$.L.str.284, %esi
	movl	$4, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB174_6
# %bb.5:                                # %lor.lhs.false
	movq	currentchar(%rip), %rdi
	addq	$1, %rdi
	movl	$.L.str.1.285, %esi
	movl	$4, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB174_15
.LBB174_6:                              # %if.then18
	movl	$currentchar, %edi
	movl	$5, %esi
	jmp	.LBB174_8
	.p2align	4, 0x90
.LBB174_7:                              # %while.body
                                        #   in Loop: Header=BB174_8 Depth=1
	movl	$currentchar, %edi
	movl	$1, %esi
.LBB174_8:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	copyout
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_12
# %bb.9:                                # %land.rhs
                                        #   in Loop: Header=BB174_8 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	jle	.LBB174_12
# %bb.10:                               # %land.lhs.true24
                                        #   in Loop: Header=BB174_8 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	cmpl	$127, %eax
	jg	.LBB174_12
# %bb.11:                               # %land.rhs28
                                        #   in Loop: Header=BB174_8 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	shrl	$13, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.LBB174_7
	jmp	.LBB174_15
	.p2align	4, 0x90
.LBB174_12:                             #   in Loop: Header=BB174_8 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB174_7
.LBB174_15:                             # %if.end36
	movq	currentchar(%rip), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+50(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB174_38
# %bb.16:                               # %land.lhs.true41
	movq	currentchar(%rip), %rdi
	addq	$1, %rdi
	movl	$.L.str.2.286, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB174_19
# %bb.17:                               # %lor.lhs.false46
	movq	currentchar(%rip), %rdi
	addq	$1, %rdi
	movl	$.L.str.3.287, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB174_19
# %bb.18:                               # %lor.lhs.false51
	movq	currentchar(%rip), %rdi
	addq	$1, %rdi
	movl	$.L.str.4.288, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB174_38
.LBB174_19:                             # %if.then56
	movl	$currentchar, %edi
	movl	$4, %esi
	jmp	.LBB174_21
	.p2align	4, 0x90
.LBB174_20:                             # %while.body78
                                        #   in Loop: Header=BB174_21 Depth=1
	movl	$currentchar, %edi
	movl	$1, %esi
.LBB174_21:                             # %while.cond57
                                        # =>This Inner Loop Header: Depth=1
	callq	copyout
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_25
# %bb.22:                               # %land.rhs60
                                        #   in Loop: Header=BB174_21 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	jle	.LBB174_25
# %bb.23:                               # %land.lhs.true64
                                        #   in Loop: Header=BB174_21 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	cmpl	$127, %eax
	jg	.LBB174_25
# %bb.24:                               # %land.rhs68
                                        #   in Loop: Header=BB174_21 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	shrl	$13, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.LBB174_20
	jmp	.LBB174_29
	.p2align	4, 0x90
.LBB174_25:                             #   in Loop: Header=BB174_21 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB174_20
	jmp	.LBB174_29
	.p2align	4, 0x90
.LBB174_28:                             # %while.body101
                                        #   in Loop: Header=BB174_29 Depth=1
	movl	$currentchar, %edi
	movl	$1, %esi
	callq	copyout
.LBB174_29:                             # %while.cond80
                                        # =>This Inner Loop Header: Depth=1
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_33
# %bb.30:                               # %land.rhs83
                                        #   in Loop: Header=BB174_29 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	jle	.LBB174_35
# %bb.31:                               # %land.lhs.true87
                                        #   in Loop: Header=BB174_29 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	cmpl	$127, %eax
	jg	.LBB174_35
# %bb.32:                               # %land.rhs91
                                        #   in Loop: Header=BB174_29 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	shrl	$13, %eax
	andl	$1, %eax
	jmp	.LBB174_36
	.p2align	4, 0x90
.LBB174_35:                             #   in Loop: Header=BB174_29 Depth=1
	xorl	%eax, %eax
.LBB174_36:                             # %land.end99
                                        #   in Loop: Header=BB174_29 Depth=1
	xorb	$1, %al
	testb	%al, %al
	jne	.LBB174_28
	jmp	.LBB174_37
	.p2align	4, 0x90
.LBB174_33:                             #   in Loop: Header=BB174_29 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB174_28
.LBB174_37:                             # %while.end102
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_105
.LBB174_38:                             # %if.end117
	cmpl	$0, tflag(%rip)
	jne	.LBB174_54
# %bb.39:                               # %land.lhs.true119
	movq	currentchar(%rip), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+50(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB174_54
# %bb.40:                               # %if.then124
	leaq	-56(%rbp), %r14
	jmp	.LBB174_42
	.p2align	4, 0x90
.LBB174_41:                             # %if.end154
                                        #   in Loop: Header=BB174_42 Depth=1
	callq	checkline3
.LBB174_42:                             # %while.cond125
                                        # =>This Inner Loop Header: Depth=1
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_46
# %bb.43:                               # %land.rhs128
                                        #   in Loop: Header=BB174_42 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	jle	.LBB174_51
# %bb.44:                               # %land.lhs.true132
                                        #   in Loop: Header=BB174_42 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %eax
	cmpl	$127, %eax
	jg	.LBB174_51
# %bb.45:                               # %land.rhs136
                                        #   in Loop: Header=BB174_42 Depth=1
	movq	currentchar(%rip), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	shrl	$13, %eax
	andl	$1, %eax
	jmp	.LBB174_52
	.p2align	4, 0x90
.LBB174_51:                             #   in Loop: Header=BB174_42 Depth=1
	xorl	%eax, %eax
.LBB174_52:                             # %land.end144
                                        #   in Loop: Header=BB174_42 Depth=1
	xorb	$1, %al
	testb	%al, %al
	je	.LBB174_53
.LBB174_47:                             # %while.body147
                                        #   in Loop: Header=BB174_42 Depth=1
	cmpl	$0, aflag(%rip)
	jne	.LBB174_41
# %bb.48:                               # %land.lhs.true149
                                        #   in Loop: Header=BB174_42 Depth=1
	cmpl	$0, lflag(%rip)
	jne	.LBB174_41
# %bb.49:                               # %if.then151
                                        #   in Loop: Header=BB174_42 Depth=1
	movq	%r14, %rdi
	callq	checkline2
	jmp	.LBB174_41
	.p2align	4, 0x90
.LBB174_46:                             #   in Loop: Header=BB174_42 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB174_47
.LBB174_53:                             # %while.end155
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_101
.LBB174_54:                             # %if.end169
	leaq	-72(%rbp), %rbx
	leaq	-80(%rbp), %r14
	movl	$ctoken+119, %r13d
	leaq	-56(%rbp), %r15
	leaq	-44(%rbp), %r12
	jmp	.LBB174_56
	.p2align	4, 0x90
.LBB174_55:                             # %if.then299
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline19
.LBB174_56:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB174_61 Depth 2
                                        #     Child Loop BB174_89 Depth 2
	movq	currentchar(%rip), %rdi
	callq	skiptoword
	movq	%rax, -72(%rbp)
	cmpq	currentchar(%rip), %rax
	je	.LBB174_58
# %bb.57:                               # %if.then173
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%rbx, %rdi
	callq	checkline5
.LBB174_58:                             # %if.end175
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	currentchar(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB174_96
# %bb.59:                               # %if.end180
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	$ctoken, -72(%rbp)
	movq	%r14, %rdi
	callq	checkline6
	jmp	.LBB174_61
	.p2align	4, 0x90
.LBB174_60:                             # %while.body189
                                        #   in Loop: Header=BB174_61 Depth=2
	movq	%rbx, %rdi
	callq	checkline7
.LBB174_61:                             # %while.cond182
                                        #   Parent Loop BB174_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	currentchar(%rip), %rax
	cmpq	-80(%rbp), %rax
	jae	.LBB174_63
# %bb.62:                               # %land.rhs185
                                        #   in Loop: Header=BB174_61 Depth=2
	cmpq	%r13, -72(%rbp)
	setb	%al
	testb	%al, %al
	jne	.LBB174_60
	jmp	.LBB174_64
	.p2align	4, 0x90
.LBB174_63:                             #   in Loop: Header=BB174_61 Depth=2
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB174_60
.LBB174_64:                             # %while.end192
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	movl	$itoken, %edi
	movl	$ctoken, %esi
	movl	$100, %edx
	xorl	%ecx, %ecx
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB174_66
# %bb.65:                               # %if.then195
                                        #   in Loop: Header=BB174_56 Depth=1
	callq	checkline8
.LBB174_66:                             # %if.end197
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$itoken, %edi
	callq	strlen
	movl	%eax, -60(%rbp)
	cmpl	$0, lflag(%rip)
	je	.LBB174_72
# %bb.67:                               # %if.then201
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	-60(%rbp), %eax
	cmpl	minword(%rip), %eax
	jle	.LBB174_93
# %bb.68:                               # %land.lhs.true204
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$itoken, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	jne	.LBB174_93
# %bb.69:                               # %land.lhs.true207
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, cflag(%rip)
	jne	.LBB174_93
# %bb.70:                               # %land.lhs.true209
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$itoken, %edi
	xorl	%esi, %esi
	callq	compoundgood
	testl	%eax, %eax
	jne	.LBB174_93
# %bb.71:                               # %if.then212
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline9
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_94
	.p2align	4, 0x90
.LBB174_72:                             # %if.else
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, aflag(%rip)
	je	.LBB174_76
# %bb.73:                               # %if.then216
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	-60(%rbp), %eax
	cmpl	minword(%rip), %eax
	jg	.LBB174_78
# %bb.74:                               # %if.then219
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, terse(%rip)
	jne	.LBB174_56
# %bb.75:                               # %if.then221
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline10
	jmp	.LBB174_56
.LBB174_76:                             # %if.else290
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, quit(%rip)
	jne	.LBB174_93
# %bb.77:                               # %if.then292
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$ctoken, %edi
	movl	$120, %esi
	movl	$itoken, %edx
	movl	$120, %ecx
	movl	$currentchar, %r8d
	callq	correct
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_94
.LBB174_78:                             # %if.end224
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$itoken, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB174_83
# %bb.79:                               # %if.then227
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpq	$0, hits+8(%rip)
	jne	.LBB174_81
# %bb.80:                               # %land.lhs.true230
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpq	$0, hits+16(%rip)
	je	.LBB174_91
.LBB174_81:                             # %if.else238
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, terse(%rip)
	jne	.LBB174_93
# %bb.82:                               # %if.then240
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline12
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_94
.LBB174_83:                             # %if.else244
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$itoken, %edi
	xorl	%esi, %esi
	callq	compoundgood
	testl	%eax, %eax
	je	.LBB174_86
# %bb.84:                               # %if.then247
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, terse(%rip)
	jne	.LBB174_93
# %bb.85:                               # %if.then249
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline13
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_94
.LBB174_86:                             # %if.else252
                                        #   in Loop: Header=BB174_56 Depth=1
	movl	$itoken, %edi
	callq	makepossibilities
	cmpl	$0, pcount(%rip)
	je	.LBB174_95
# %bb.87:                               # %if.then254
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline14
	movl	$0, -44(%rbp)
	cmpl	$99, -44(%rbp)
	jg	.LBB174_90
	.p2align	4, 0x90
.LBB174_89:                             # %for.body
                                        #   Parent Loop BB174_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-44(%rbp), %rax
	imulq	$120, %rax, %rax
	cmpb	$0, possibilities(%rax)
	je	.LBB174_90
# %bb.88:                               # %for.inc
                                        #   in Loop: Header=BB174_89 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	checkline15
	movq	%r12, %rdi
	callq	checkline16
	cmpl	$99, -44(%rbp)
	jle	.LBB174_89
.LBB174_90:                             # %for.end
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline17
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_94
.LBB174_91:                             # %if.then233
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, terse(%rip)
	jne	.LBB174_93
# %bb.92:                               # %if.then235
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline11
	.p2align	4, 0x90
.LBB174_93:                             # %if.end295
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
.LBB174_94:                             # %land.lhs.true297
                                        #   in Loop: Header=BB174_56 Depth=1
	cmpl	$0, lflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_55
.LBB174_95:                             # %if.else279
                                        #   in Loop: Header=BB174_56 Depth=1
	movq	%r15, %rdi
	callq	checkline18
	cmpl	$0, aflag(%rip)
	jne	.LBB174_56
	jmp	.LBB174_94
.LBB174_96:                             # %for.end302
	cmpl	$0, lflag(%rip)
	jne	.LBB174_100
# %bb.97:                               # %land.lhs.true304
	cmpl	$0, aflag(%rip)
	jne	.LBB174_99
# %bb.98:                               # %lor.lhs.false306
	cmpl	$0, -48(%rbp)
	je	.LBB174_100
.LBB174_99:                             # %if.then308
	leaq	-56(%rbp), %rdi
	callq	checkline20
.LBB174_100:                            # %if.end310
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB174_101:                            # %if.then159
	cmpl	$0, lflag(%rip)
	jne	.LBB174_100
# %bb.102:                              # %land.lhs.true161
	cmpl	$0, aflag(%rip)
	jne	.LBB174_104
# %bb.103:                              # %lor.lhs.false163
	cmpl	$0, -48(%rbp)
	je	.LBB174_100
.LBB174_104:                            # %if.then165
	leaq	-56(%rbp), %rdi
	callq	checkline4
	jmp	.LBB174_100
.LBB174_105:                            # %if.then106
	cmpl	$0, lflag(%rip)
	jne	.LBB174_100
# %bb.106:                              # %land.lhs.true108
	cmpl	$0, aflag(%rip)
	jne	.LBB174_108
# %bb.107:                              # %lor.lhs.false110
	cmpl	$0, -48(%rbp)
	je	.LBB174_100
.LBB174_108:                            # %if.then112
	leaq	-56(%rbp), %rdi
	callq	checkline1
	jmp	.LBB174_100
.Lfunc_end174:
	.size	checkline, .Lfunc_end174-checkline
	.cfi_endproc
                                        # -- End function
	.globl	checkline0              # -- Begin function checkline0
	.p2align	4, 0x90
	.type	checkline0,@function
checkline0:                             # @checkline0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movslq	-12(%rsp), %rax
	movb	$0, contextbufs(%rax)
	movl	%eax, (%rdi)
	retq
.Lfunc_end175:
	.size	checkline0, .Lfunc_end175-checkline0
	.cfi_endproc
                                        # -- End function
	.globl	copyout                 # -- Begin function copyout
	.p2align	4, 0x90
	.type	copyout,@function
copyout:                                # @copyout
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222360, -92(%rbp)   # imm = 0xD3ED818
	movl	$555555693, -88(%rbp)   # imm = 0x211D1B6D
	movl	$444444582, -84(%rbp)   # imm = 0x1A7DAFA6
	movl	$222222360, %edi        # imm = 0xD3ED818
	movl	$555555693, %esi        # imm = 0x211D1B6D
	movl	$444444582, %edx        # imm = 0x1A7DAFA6
	callq	guardMe
	movl	$222222359, -80(%rbp)   # imm = 0xD3ED817
	movl	$555555692, -76(%rbp)   # imm = 0x211D1B6C
	movl	$444444581, -72(%rbp)   # imm = 0x1A7DAFA5
	movl	$222222359, %edi        # imm = 0xD3ED817
	movl	$555555692, %esi        # imm = 0x211D1B6C
	movl	$444444581, %edx        # imm = 0x1A7DAFA5
	callq	guardMe
	movl	$222222358, -68(%rbp)   # imm = 0xD3ED816
	movl	$555555691, -64(%rbp)   # imm = 0x211D1B6B
	movl	$444444580, -60(%rbp)   # imm = 0x1A7DAFA4
	movl	$222222358, %edi        # imm = 0xD3ED816
	movl	$555555691, %esi        # imm = 0x211D1B6B
	movl	$444444580, %edx        # imm = 0x1A7DAFA4
	callq	guardMe
	movl	$222222357, -56(%rbp)   # imm = 0xD3ED815
	movl	$555555690, -52(%rbp)   # imm = 0x211D1B6A
	movl	$444444579, -48(%rbp)   # imm = 0x1A7DAFA3
	movl	$222222357, %edi        # imm = 0xD3ED815
	movl	$555555690, %esi        # imm = 0x211D1B6A
	movl	$444444579, %edx        # imm = 0x1A7DAFA3
	callq	guardMe
	movl	$222222356, -44(%rbp)   # imm = 0xD3ED814
	movl	$555555689, -40(%rbp)   # imm = 0x211D1B69
	movl	$444444578, -36(%rbp)   # imm = 0x1A7DAFA2
	movl	$222222356, %edi        # imm = 0xD3ED814
	movl	$555555689, %esi        # imm = 0x211D1B69
	movl	$444444578, %edx        # imm = 0x1A7DAFA2
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movl	%r14d, -20(%rbp)
	leaq	-32(%rbp), %rbx
	addl	$-1, -20(%rbp)
	jns	.LBB176_2
	jmp	.LBB176_7
	.p2align	4, 0x90
.LBB176_6:                              # %if.end6
                                        #   in Loop: Header=BB176_2 Depth=1
	movq	%rbx, %rdi
	callq	copyout1
	addl	$-1, -20(%rbp)
	js	.LBB176_7
.LBB176_2:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB176_7
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB176_2 Depth=1
	cmpl	$0, aflag(%rip)
	jne	.LBB176_6
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB176_2 Depth=1
	cmpl	$0, lflag(%rip)
	jne	.LBB176_6
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB176_2 Depth=1
	movq	%rbx, %rdi
	callq	copyout0
	jmp	.LBB176_6
.LBB176_7:                              # %while.end
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end176:
	.size	copyout, .Lfunc_end176-copyout
	.cfi_endproc
                                        # -- End function
	.globl	checkline1              # -- Begin function checkline1
	.p2align	4, 0x90
	.type	checkline1,@function
checkline1:                             # @checkline1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$10, %edi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end177:
	.size	checkline1, .Lfunc_end177-checkline1
	.cfi_endproc
                                        # -- End function
	.globl	checkline2              # -- Begin function checkline2
	.p2align	4, 0x90
	.type	checkline2,@function
checkline2:                             # @checkline2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movq	currentchar(%rip), %rax
	movsbl	(%rax), %edi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end178:
	.size	checkline2, .Lfunc_end178-checkline2
	.cfi_endproc
                                        # -- End function
	.globl	checkline3              # -- Begin function checkline3
	.p2align	4, 0x90
	.type	checkline3,@function
checkline3:                             # @checkline3
	.cfi_startproc
# %bb.0:                                # %entry
	incq	currentchar(%rip)
	retq
.Lfunc_end179:
	.size	checkline3, .Lfunc_end179-checkline3
	.cfi_endproc
                                        # -- End function
	.globl	checkline4              # -- Begin function checkline4
	.p2align	4, 0x90
	.type	checkline4,@function
checkline4:                             # @checkline4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$10, %edi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end180:
	.size	checkline4, .Lfunc_end180-checkline4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function skiptoword
	.type	skiptoword,@function
skiptoword:                             # @skiptoword
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222371, -68(%rbp)   # imm = 0xD3ED823
	movl	$555555704, -64(%rbp)   # imm = 0x211D1B78
	movl	$444444593, -60(%rbp)   # imm = 0x1A7DAFB1
	movl	$222222371, %edi        # imm = 0xD3ED823
	movl	$555555704, %esi        # imm = 0x211D1B78
	movl	$444444593, %edx        # imm = 0x1A7DAFB1
	callq	guardMe
	movl	$222222370, -56(%rbp)   # imm = 0xD3ED822
	movl	$555555703, -52(%rbp)   # imm = 0x211D1B77
	movl	$444444592, -48(%rbp)   # imm = 0x1A7DAFB0
	movl	$222222370, %edi        # imm = 0xD3ED822
	movl	$555555703, %esi        # imm = 0x211D1B77
	movl	$444444592, %edx        # imm = 0x1A7DAFB0
	callq	guardMe
	movl	$222222369, -44(%rbp)   # imm = 0xD3ED821
	movl	$555555702, -40(%rbp)   # imm = 0x211D1B76
	movl	$444444591, -36(%rbp)   # imm = 0x1A7DAFAF
	movl	$222222369, %edi        # imm = 0xD3ED821
	movl	$555555702, %esi        # imm = 0x211D1B76
	movl	$444444591, %edx        # imm = 0x1A7DAFAF
	callq	guardMe
	movq	%rbx, -32(%rbp)
	leaq	-32(%rbp), %r15
	jmp	.LBB181_1
	.p2align	4, 0x90
.LBB181_78:                             # %if.else242
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	skiptoword18
.LBB181_1:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB181_22 Depth 2
                                        #     Child Loop BB181_59 Depth 2
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB181_2
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1894(%rax)
	je	.LBB181_5
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	stringcharlen
	testl	%eax, %eax
	jg	.LBB181_7
.LBB181_5:                              # %land.lhs.true4
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+982(%rax)
	je	.LBB181_6
.LBB181_7:                              # %lor.lhs.false
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	$1, %al
	cmpb	$0, hashheader+1666(%rcx)
	jne	.LBB181_11
# %bb.8:                                # %lor.rhs
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, tflag(%rip)
	je	.LBB181_9
# %bb.10:                               # %land.rhs13
                                        #   in Loop: Header=BB181_1 Depth=1
	movb	math_mode(%rip), %al
	andb	$1, %al
	testb	%al, %al
	jne	.LBB181_12
	jmp	.LBB181_79
	.p2align	4, 0x90
.LBB181_2:                              #   in Loop: Header=BB181_1 Depth=1
	xorl	%eax, %eax
.LBB181_11:                             # %land.end15
                                        #   in Loop: Header=BB181_1 Depth=1
	testb	%al, %al
	je	.LBB181_79
.LBB181_12:                             # %while.body
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, tflag(%rip)
	je	.LBB181_61
# %bb.13:                               # %if.then
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+65(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB181_16
# %bb.14:                               # %if.then21
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, TeX_comment(%rip)
	jne	.LBB181_52
# %bb.15:                               # %if.then23
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword0
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	movl	$1, TeX_comment(%rip)
	jmp	.LBB181_52
	.p2align	4, 0x90
.LBB181_61:                             # %if.else144
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+51(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB181_53
# %bb.62:                               # %if.then149
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$115, %eax
	je	.LBB181_67
# %bb.63:                               # %if.then149
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$102, %eax
	jne	.LBB181_72
# %bb.64:                               # %sw.bb
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	2(%rax), %eax
	movsbl	hashheader+48(%rip), %ecx
	movq	%r15, %rdi
	cmpl	%ecx, %eax
	jne	.LBB181_66
# %bb.65:                               # %if.then157
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword9
	jmp	.LBB181_1
	.p2align	4, 0x90
.LBB181_16:                             # %if.else
                                        #   in Loop: Header=BB181_1 Depth=1
	testb	$1, math_mode(%rip)
	je	.LBB181_35
# %bb.17:                               # %if.then26
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpb	$101, LaTeX_Mode(%rip)
	jne	.LBB181_19
# %bb.18:                               # %land.lhs.true30
                                        #   in Loop: Header=BB181_1 Depth=1
	movl	$101, %edi
	movq	%r15, %rsi
	callq	TeX_math_check
	testl	%eax, %eax
	jne	.LBB181_21
.LBB181_19:                             # %lor.lhs.false33
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpb	$109, LaTeX_Mode(%rip)
	jne	.LBB181_22
# %bb.20:                               # %land.lhs.true37
                                        #   in Loop: Header=BB181_1 Depth=1
	movl	$1, %edi
	movq	%r15, %rsi
	callq	TeX_LR_check
	testl	%eax, %eax
	je	.LBB181_22
.LBB181_21:                             # %if.then40
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword1
	cmpl	$0, math_mode(%rip)
	jns	.LBB181_52
	jmp	.LBB181_34
	.p2align	4, 0x90
.LBB181_29:                             # %while.body62
                                        #   in Loop: Header=BB181_22 Depth=2
	movq	%r15, %rdi
	callq	skiptoword2
.LBB181_22:                             # %while.cond42
                                        #   Parent Loop BB181_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB181_23
# %bb.24:                               # %land.rhs45
                                        #   in Loop: Header=BB181_22 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	hashheader+61(%rip), %edx
	movb	$1, %al
	cmpl	%edx, %ecx
	je	.LBB181_27
# %bb.25:                               # %lor.lhs.false50
                                        #   in Loop: Header=BB181_22 Depth=2
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %ecx
	movsbl	hashheader+62(%rip), %edx
	cmpl	%edx, %ecx
	je	.LBB181_27
# %bb.26:                               # %lor.rhs55
                                        #   in Loop: Header=BB181_22 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+65(%rip), %ecx
	cmpl	%ecx, %eax
	sete	%al
.LBB181_27:                             # %lor.end60
                                        #   in Loop: Header=BB181_22 Depth=2
	xorb	$1, %al
	testb	%al, %al
	jne	.LBB181_29
	jmp	.LBB181_30
	.p2align	4, 0x90
.LBB181_23:                             #   in Loop: Header=BB181_22 Depth=2
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB181_29
.LBB181_30:                             # %while.end
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB181_79
# %bb.31:                               # %if.end67
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	TeX_math_end
	testl	%eax, %eax
	je	.LBB181_33
# %bb.32:                               # %if.then70
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword3
.LBB181_33:                             # %if.end73
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, math_mode(%rip)
	jns	.LBB181_52
.LBB181_34:                             # %if.then76
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword4
	movl	$0, math_mode(%rip)
	jmp	.LBB181_52
.LBB181_35:                             # %if.else79
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$2, math_mode(%rip)
	jl	.LBB181_39
# %bb.36:                               # %land.lhs.true82
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+58(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB181_39
# %bb.37:                               # %land.lhs.true87
                                        #   in Loop: Header=BB181_1 Depth=1
	movl	math_mode(%rip), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	shll	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB181_39
# %bb.38:                               # %if.then91
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword5
	jmp	.LBB181_52
.LBB181_6:                              #   in Loop: Header=BB181_1 Depth=1
	movb	$1, %al
	testb	%al, %al
	jne	.LBB181_12
	jmp	.LBB181_79
.LBB181_39:                             # %if.else93
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpb	$109, LaTeX_Mode(%rip)
	jne	.LBB181_40
.LBB181_43:                             # %if.then108
                                        #   in Loop: Header=BB181_1 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	TeX_LR_check
	testl	%eax, %eax
	je	.LBB181_52
# %bb.44:                               # %if.then111
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword6
	jmp	.LBB181_52
.LBB181_9:                              #   in Loop: Header=BB181_1 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB181_12
	jmp	.LBB181_79
.LBB181_40:                             # %lor.lhs.false97
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, math_mode(%rip)
	je	.LBB181_45
# %bb.41:                               # %land.lhs.true99
                                        #   in Loop: Header=BB181_1 Depth=1
	movl	math_mode(%rip), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	shll	$7, %ecx
	cmpl	%ecx, %eax
	jl	.LBB181_45
# %bb.42:                               # %land.lhs.true104
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.17.301, %esi
	movl	$4, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB181_43
.LBB181_45:                             # %if.else114
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpb	$98, LaTeX_Mode(%rip)
	jne	.LBB181_48
# %bb.46:                               # %land.lhs.true118
                                        #   in Loop: Header=BB181_1 Depth=1
	movl	$98, %edi
	movq	%r15, %rsi
	callq	TeX_math_check
	testl	%eax, %eax
	je	.LBB181_48
# %bb.47:                               # %if.then121
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword7
	jmp	.LBB181_52
.LBB181_67:                             # %sw.bb161
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -32(%rbp)
	cmpb	$43, 2(%rax)
	je	.LBB181_69
# %bb.68:                               # %lor.lhs.false166
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$45, (%rax)
	jne	.LBB181_70
.LBB181_69:                             # %if.then170
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	skiptoword11
.LBB181_70:                             # %if.end172
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movsbq	1(%rax), %r14
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%r14,2), %eax
	testb	$8, %ah
	je	.LBB181_1
# %bb.71:                               # %if.then181
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	skiptoword12
	jmp	.LBB181_1
.LBB181_72:                             # %sw.default
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %eax
	movsbl	hashheader+48(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB181_74
# %bb.73:                               # %if.then189
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	skiptoword13
	jmp	.LBB181_1
.LBB181_48:                             # %if.else122
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpb	$114, LaTeX_Mode(%rip)
	jne	.LBB181_50
# %bb.49:                               # %if.then126
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	TeX_skip_parens
	movb	$80, LaTeX_Mode(%rip)
	jmp	.LBB181_52
.LBB181_66:                             # %if.else158
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword10
	jmp	.LBB181_1
.LBB181_74:                             # %if.else191
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %eax
	movsbl	hashheader+52(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB181_53
# %bb.75:                               # %if.then197
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	2(%rax), %eax
	movsbl	hashheader+48(%rip), %ecx
	movq	%r15, %rdi
	cmpl	%ecx, %eax
	jne	.LBB181_77
# %bb.76:                               # %if.then203
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword14
	jmp	.LBB181_1
.LBB181_50:                             # %if.else127
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	TeX_math_begin
	testl	%eax, %eax
	je	.LBB181_52
# %bb.51:                               # %if.then130
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword8
	.p2align	4, 0x90
.LBB181_52:                             # %if.end138
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB181_79
.LBB181_53:                             # %if.end211
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$48, (%rax)
	jne	.LBB181_78
# %bb.54:                               # %land.lhs.true215
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$120, 1(%rax)
	je	.LBB181_56
# %bb.55:                               # %lor.lhs.false220
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$88, 1(%rax)
	jne	.LBB181_78
.LBB181_56:                             # %land.lhs.true225
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, terse(%rip)
	je	.LBB181_57
.LBB181_58:                             # %if.then229
                                        #   in Loop: Header=BB181_1 Depth=1
	movq	%r15, %rdi
	callq	skiptoword16
	jmp	.LBB181_59
	.p2align	4, 0x90
.LBB181_60:                             # %while.body239
                                        #   in Loop: Header=BB181_59 Depth=2
	movq	%r15, %rdi
	callq	skiptoword17
.LBB181_59:                             # %while.cond231
                                        #   Parent Loop BB181_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$16, %ah
	jne	.LBB181_60
	jmp	.LBB181_1
.LBB181_57:                             # %lor.lhs.false227
                                        #   in Loop: Header=BB181_1 Depth=1
	cmpl	$0, aflag(%rip)
	jne	.LBB181_78
	jmp	.LBB181_58
.LBB181_77:                             # %if.else205
                                        #   in Loop: Header=BB181_1 Depth=1
	callq	skiptoword15
	jmp	.LBB181_1
.LBB181_79:                             # %while.end245
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB181_82
# %bb.80:                               # %if.then249
	cmpl	$0, TeX_comment(%rip)
	je	.LBB181_82
# %bb.81:                               # %if.then251
	callq	skiptoword19
	movl	$0, TeX_comment(%rip)
.LBB181_82:                             # %if.end253
	movq	-32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end181:
	.size	skiptoword, .Lfunc_end181-skiptoword
	.cfi_endproc
                                        # -- End function
	.globl	checkline5              # -- Begin function checkline5
	.p2align	4, 0x90
	.type	checkline5,@function
checkline5:                             # @checkline5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	8(%rsp), %esi
	subl	currentchar(%rip), %esi
	movl	$currentchar, %edi
	callq	copyout
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end182:
	.size	checkline5, .Lfunc_end182-checkline5
	.cfi_endproc
                                        # -- End function
	.globl	checkline6              # -- Begin function checkline6
	.p2align	4, 0x90
	.type	checkline6,@function
checkline6:                             # @checkline6
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	currentchar(%rip), %rdi
	callq	skipoverword
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end183:
	.size	checkline6, .Lfunc_end183-checkline6
	.cfi_endproc
                                        # -- End function
	.globl	checkline7              # -- Begin function checkline7
	.p2align	4, 0x90
	.type	checkline7,@function
checkline7:                             # @checkline7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	currentchar(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, currentchar(%rip)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rsp)
	movb	%cl, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end184:
	.size	checkline7, .Lfunc_end184-checkline7
	.cfi_endproc
                                        # -- End function
	.globl	checkline8              # -- Begin function checkline8
	.p2align	4, 0x90
	.type	checkline8,@function
checkline8:                             # @checkline8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.5.289, %esi
	movl	$ctoken, %edx
	movl	$460, %ecx              # imm = 0x1CC
	movl	$.L.str.6.290, %r8d
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end185:
	.size	checkline8, .Lfunc_end185-checkline8
	.cfi_endproc
                                        # -- End function
	.globl	good                    # -- Begin function good
	.p2align	4, 0x90
	.type	good,@function
good:                                   # @good
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movl	$222222424, -140(%rbp)  # imm = 0xD3ED858
	movl	$555555757, -136(%rbp)  # imm = 0x211D1BAD
	movl	$444444646, -132(%rbp)  # imm = 0x1A7DAFE6
	movl	$222222424, %edi        # imm = 0xD3ED858
	movl	$555555757, %esi        # imm = 0x211D1BAD
	movl	$444444646, %edx        # imm = 0x1A7DAFE6
	callq	guardMe
	movl	$222222423, -128(%rbp)  # imm = 0xD3ED857
	movl	$555555756, -124(%rbp)  # imm = 0x211D1BAC
	movl	$444444645, -120(%rbp)  # imm = 0x1A7DAFE5
	movl	$222222423, %edi        # imm = 0xD3ED857
	movl	$555555756, %esi        # imm = 0x211D1BAC
	movl	$444444645, %edx        # imm = 0x1A7DAFE5
	callq	guardMe
	movl	$222222422, -116(%rbp)  # imm = 0xD3ED856
	movl	$555555755, -112(%rbp)  # imm = 0x211D1BAB
	movl	$444444644, -108(%rbp)  # imm = 0x1A7DAFE4
	movl	$222222422, %edi        # imm = 0xD3ED856
	movl	$555555755, %esi        # imm = 0x211D1BAB
	movl	$444444644, %edx        # imm = 0x1A7DAFE4
	callq	guardMe
	movq	%rbx, -80(%rbp)
	movl	%r13d, -84(%rbp)
	movl	%r12d, -44(%rbp)
	movl	%r15d, -56(%rbp)
	movl	%r14d, -52(%rbp)
	movq	%rbx, -104(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %r14
	leaq	-104(%rbp), %rbx
	jmp	.LBB186_1
	.p2align	4, 0x90
.LBB186_2:                              # %for.body
                                        #   in Loop: Header=BB186_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	good0
.LBB186_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB186_2
# %bb.3:                                # %for.end
	leaq	-72(%rbp), %rdi
	callq	good1
	movl	-72(%rbp), %eax
	leaq	-272(%rbp), %rcx
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)
	movl	$0, numhits(%rip)
	cmpl	$0, cflag(%rip)
	je	.LBB186_5
# %bb.4:                                # %if.then
	leaq	-80(%rbp), %rdi
	callq	good2
.LBB186_14:                             # %if.end30
	cmpl	$0, numhits(%rip)
	je	.LBB186_17
.LBB186_15:                             # %land.lhs.true32
	cmpl	$0, -44(%rbp)
	je	.LBB186_16
.LBB186_17:                             # %if.end35
	movq	-80(%rbp), %rdi
	movl	-48(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-52(%rbp), %eax
	movl	%eax, (%rsp)
	leaq	-272(%rbp), %rsi
	callq	chk_aff
	cmpl	$0, cflag(%rip)
	je	.LBB186_19
# %bb.18:                               # %if.then38
	movl	$10, %edi
	callq	putchar
.LBB186_19:                             # %if.end40
	leaq	-60(%rbp), %rdi
	callq	good4
	jmp	.LBB186_20
.LBB186_5:                              # %if.else
	leaq	-272(%rbp), %rdi
	movl	$1, %esi
	callq	lookup
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB186_14
# %bb.6:                                # %if.then8
	leaq	-96(%rbp), %rdi
	callq	good3
	xorps	%xmm0, %xmm0
	movups	%xmm0, hits+8(%rip)
	cmpl	$0, -44(%rbp)
	jne	.LBB186_8
# %bb.7:                                # %lor.lhs.false
	movq	-80(%rbp), %rdi
	movl	-48(%rbp), %edx
	movl	$hits, %esi
	callq	cap_ok
	testl	%eax, %eax
	je	.LBB186_9
.LBB186_8:                              # %if.then12
	movl	$1, numhits(%rip)
.LBB186_9:                              # %if.end
	cmpl	$2, compoundflag(%rip)
	jne	.LBB186_14
# %bb.10:                               # %land.lhs.true
	movl	-56(%rbp), %eax
	orl	-52(%rbp), %eax
	testb	$2, %al
	je	.LBB186_14
# %bb.11:                               # %land.lhs.true17
	movswl	hashheader+10(%rip), %eax
	testl	%eax, %eax
	js	.LBB186_14
# %bb.12:                               # %land.lhs.true21
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	hashheader+10(%rip), %ecx
	btq	%rcx, %rax
	jb	.LBB186_14
# %bb.13:                               # %if.then27
	movl	$0, numhits(%rip)
	cmpl	$0, numhits(%rip)
	jne	.LBB186_15
	jmp	.LBB186_17
.LBB186_16:                             # %if.then34
	movl	$1, -60(%rbp)
.LBB186_20:                             # %return
	movl	-60(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end186:
	.size	good, .Lfunc_end186-good
	.cfi_endproc
                                        # -- End function
	.globl	compoundgood            # -- Begin function compoundgood
	.p2align	4, 0x90
	.type	compoundgood,@function
compoundgood:                           # @compoundgood
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222297, -88(%rbp)   # imm = 0xD3ED7D9
	movl	$555555630, -84(%rbp)   # imm = 0x211D1B2E
	movl	$444444519, -80(%rbp)   # imm = 0x1A7DAF67
	movl	$222222297, %edi        # imm = 0xD3ED7D9
	movl	$555555630, %esi        # imm = 0x211D1B2E
	movl	$444444519, %edx        # imm = 0x1A7DAF67
	callq	guardMe
	movl	$222222296, -76(%rbp)   # imm = 0xD3ED7D8
	movl	$555555629, -72(%rbp)   # imm = 0x211D1B2D
	movl	$444444518, -68(%rbp)   # imm = 0x1A7DAF66
	movl	$222222296, %edi        # imm = 0xD3ED7D8
	movl	$555555629, %esi        # imm = 0x211D1B2D
	movl	$444444518, %edx        # imm = 0x1A7DAF66
	callq	guardMe
	movq	%rbx, -64(%rbp)
	movl	%r14d, -44(%rbp)
	cmpl	$0, compoundflag(%rip)
	je	.LBB187_16
# %bb.1:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	strlen
	movswq	hashheader+8(%rip), %rcx
	addq	%rcx, %rcx
	cmpq	%rcx, %rax
	jb	.LBB187_16
# %bb.2:                                # %if.end5
	movq	-64(%rbp), %rsi
	leaq	-208(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movswq	hashheader+8(%rip), %rax
	addq	%rbp, %rax
	addq	$-208, %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-25(%rbp), %r15
	jmp	.LBB187_3
	.p2align	4, 0x90
.LBB187_15:                             # %for.inc
                                        #   in Loop: Header=BB187_3 Depth=1
	movq	%r14, %rdi
	callq	compoundgood3
.LBB187_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movswq	hashheader+8(%rip), %rax
	movq	-40(%rbp), %rcx
	cmpb	$0, -1(%rcx,%rax)
	je	.LBB187_16
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB187_3 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, -25(%rbp)
	movb	$0, (%rax)
	movl	-44(%rbp), %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %r8d
	movq	%rbx, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB187_14
# %bb.5:                                # %if.then15
                                        #   in Loop: Header=BB187_3 Depth=1
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	jne	.LBB187_7
# %bb.6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB187_3 Depth=1
	movq	-40(%rbp), %rdi
	movl	$2, %esi
	callq	compoundgood
	testl	%eax, %eax
	je	.LBB187_15
.LBB187_7:                              # %if.then20
                                        #   in Loop: Header=BB187_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	whatcap
	movq	%rax, -56(%rbp)
	movq	%rbx, %rdi
	callq	whatcap
	cmpq	$536870911, %rax        # imm = 0x1FFFFFFF
	jg	.LBB187_11
# %bb.8:                                # %if.then20
                                        #   in Loop: Header=BB187_3 Depth=1
	testq	%rax, %rax
	je	.LBB187_13
# %bb.9:                                # %if.then20
                                        #   in Loop: Header=BB187_3 Depth=1
	cmpq	$268435456, %rax        # imm = 0x10000000
	jne	.LBB187_15
	jmp	.LBB187_10
	.p2align	4, 0x90
.LBB187_14:                             # %if.else
                                        #   in Loop: Header=BB187_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	compoundgood2
	jmp	.LBB187_15
	.p2align	4, 0x90
.LBB187_11:                             # %if.then20
                                        #   in Loop: Header=BB187_3 Depth=1
	cmpq	$805306368, %rax        # imm = 0x30000000
	je	.LBB187_13
# %bb.12:                               # %if.then20
                                        #   in Loop: Header=BB187_3 Depth=1
	cmpq	$536870912, %rax        # imm = 0x20000000
	jne	.LBB187_15
.LBB187_13:                             # %sw.bb
	leaq	-32(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	compoundgood0
	jmp	.LBB187_17
.LBB187_16:                             # %for.end
	movl	$0, -32(%rbp)
.LBB187_17:                             # %return
	movl	-32(%rbp), %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB187_10:                             # %sw.bb26
	leaq	-32(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	compoundgood1
	jmp	.LBB187_17
.Lfunc_end187:
	.size	compoundgood, .Lfunc_end187-compoundgood
	.cfi_endproc
                                        # -- End function
	.globl	checkline9              # -- Begin function checkline9
	.p2align	4, 0x90
	.type	checkline9,@function
checkline9:                             # @checkline9
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.7.291, %esi
	movl	$ctoken, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end188:
	.size	checkline9, .Lfunc_end188-checkline9
	.cfi_endproc
                                        # -- End function
	.globl	checkline10             # -- Begin function checkline10
	.p2align	4, 0x90
	.type	checkline10,@function
checkline10:                            # @checkline10
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.8.292, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end189:
	.size	checkline10, .Lfunc_end189-checkline10
	.cfi_endproc
                                        # -- End function
	.globl	checkline11             # -- Begin function checkline11
	.p2align	4, 0x90
	.type	checkline11,@function
checkline11:                            # @checkline11
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.8.292, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end190:
	.size	checkline11, .Lfunc_end190-checkline11
	.cfi_endproc
                                        # -- End function
	.globl	checkline12             # -- Begin function checkline12
	.p2align	4, 0x90
	.type	checkline12,@function
checkline12:                            # @checkline12
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	hits(%rip), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.9.293, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end191:
	.size	checkline12, .Lfunc_end191-checkline12
	.cfi_endproc
                                        # -- End function
	.globl	checkline13             # -- Begin function checkline13
	.p2align	4, 0x90
	.type	checkline13,@function
checkline13:                            # @checkline13
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.10.294, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end192:
	.size	checkline13, .Lfunc_end192-checkline13
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities       # -- Begin function makepossibilities
	.p2align	4, 0x90
	.type	makepossibilities,@function
makepossibilities:                      # @makepossibilities
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222298, -32(%rbp)   # imm = 0xD3ED7DA
	movl	$555555631, -28(%rbp)   # imm = 0x211D1B2F
	movl	$444444520, -24(%rbp)   # imm = 0x1A7DAF68
	movl	$222222298, %edi        # imm = 0xD3ED7DA
	movl	$555555631, %esi        # imm = 0x211D1B2F
	movl	$444444520, %edx        # imm = 0x1A7DAF68
	callq	guardMe
	movq	%rbx, -16(%rbp)
	movl	$0, -20(%rbp)
	leaq	-20(%rbp), %rbx
	cmpl	$99, -20(%rbp)
	jg	.LBB193_3
	.p2align	4, 0x90
.LBB193_2:                              # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	makepossibilities0
	addl	$1, -20(%rbp)
	cmpl	$99, -20(%rbp)
	jle	.LBB193_2
.LBB193_3:                              # %for.end
	movl	$0, pcount(%rip)
	movl	$0, maxposslen(%rip)
	movl	$0, easypossibilities(%rip)
	movq	-16(%rbp), %rdi
	callq	wrongcapital
	cmpl	$99, pcount(%rip)
	jle	.LBB193_4
# %bb.5:                                # %if.end
	cmpl	$99, pcount(%rip)
	jle	.LBB193_6
.LBB193_7:                              # %if.end5
	cmpl	$99, pcount(%rip)
	jle	.LBB193_8
.LBB193_9:                              # %if.end8
	cmpl	$99, pcount(%rip)
	jle	.LBB193_10
.LBB193_11:                             # %if.end11
	cmpl	$1, compoundflag(%rip)
	je	.LBB193_14
.LBB193_12:                             # %land.lhs.true
	cmpl	$99, pcount(%rip)
	jg	.LBB193_14
# %bb.13:                               # %if.then14
	leaq	-16(%rbp), %rdi
	callq	makepossibilities5
	jmp	.LBB193_14
.LBB193_4:                              # %if.then
	leaq	-16(%rbp), %rdi
	callq	makepossibilities1
	cmpl	$99, pcount(%rip)
	jg	.LBB193_7
.LBB193_6:                              # %if.then4
	leaq	-16(%rbp), %rdi
	callq	makepossibilities2
	cmpl	$99, pcount(%rip)
	jg	.LBB193_9
.LBB193_8:                              # %if.then7
	leaq	-16(%rbp), %rdi
	callq	makepossibilities3
	cmpl	$99, pcount(%rip)
	jg	.LBB193_11
.LBB193_10:                             # %if.then10
	leaq	-16(%rbp), %rdi
	callq	makepossibilities4
	cmpl	$1, compoundflag(%rip)
	jne	.LBB193_12
.LBB193_14:                             # %if.end15
	movl	pcount(%rip), %eax
	movl	%eax, easypossibilities(%rip)
	testl	%eax, %eax
	je	.LBB193_16
# %bb.15:                               # %lor.lhs.false
	cmpl	$0, tryhardflag(%rip)
	je	.LBB193_17
.LBB193_16:                             # %if.then17
	leaq	-16(%rbp), %rdi
	callq	makepossibilities6
.LBB193_17:                             # %if.end18
	cmpl	$0, sortit(%rip)
	jne	.LBB193_19
# %bb.18:                               # %lor.lhs.false20
	movl	pcount(%rip), %eax
	cmpl	easypossibilities(%rip), %eax
	jle	.LBB193_25
.LBB193_19:                             # %land.lhs.true22
	cmpl	$0, pcount(%rip)
	je	.LBB193_25
# %bb.20:                               # %if.then24
	cmpl	$0, easypossibilities(%rip)
	jle	.LBB193_23
# %bb.21:                               # %land.lhs.true26
	cmpl	$0, sortit(%rip)
	je	.LBB193_23
# %bb.22:                               # %if.then28
	callq	makepossibilities7
.LBB193_23:                             # %if.end29
	movl	pcount(%rip), %eax
	cmpl	easypossibilities(%rip), %eax
	jle	.LBB193_25
# %bb.24:                               # %if.then32
	callq	makepossibilities8
.LBB193_25:                             # %if.end38
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end193:
	.size	makepossibilities, .Lfunc_end193-makepossibilities
	.cfi_endproc
                                        # -- End function
	.globl	checkline14             # -- Begin function checkline14
	.p2align	4, 0x90
	.type	checkline14,@function
checkline14:                            # @checkline14
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %r14
	movq	%r14, 8(%rsp)
	movl	easypossibilities(%rip), %r15d
	testl	%r15d, %r15d
	movl	$38, %eax
	movl	$63, %ebx
	cmovnel	%eax, %ebx
	movl	currentchar(%rip), %ebp
	movl	$contextbufs, %eax
	subl	%eax, %ebp
	movl	$ctoken, %edi
	callq	strlen
	subl	%eax, %ebp
	addl	contextoffset(%rip), %ebp
	movl	$.L.str.11.295, %esi
	movl	$ctoken, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %edx
	movl	%r15d, %r8d
	movl	%ebp, %r9d
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end194:
	.size	checkline14, .Lfunc_end194-checkline14
	.cfi_endproc
                                        # -- End function
	.globl	checkline15             # -- Begin function checkline15
	.p2align	4, 0x90
	.type	checkline15,@function
checkline15:                            # @checkline15
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 16(%rsp)
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	movl	$44, %ecx
	movl	$58, %edx
	cmovnel	%ecx, %edx
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rcx
	movl	$.L.str.12.296, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end195:
	.size	checkline15, .Lfunc_end195-checkline15
	.cfi_endproc
                                        # -- End function
	.globl	checkline16             # -- Begin function checkline16
	.p2align	4, 0x90
	.type	checkline16,@function
checkline16:                            # @checkline16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end196:
	.size	checkline16, .Lfunc_end196-checkline16
	.cfi_endproc
                                        # -- End function
	.globl	checkline17             # -- Begin function checkline17
	.p2align	4, 0x90
	.type	checkline17,@function
checkline17:                            # @checkline17
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.13.297, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end197:
	.size	checkline17, .Lfunc_end197-checkline17
	.cfi_endproc
                                        # -- End function
	.globl	checkline18             # -- Begin function checkline18
	.p2align	4, 0x90
	.type	checkline18,@function
checkline18:                            # @checkline18
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rbx
	movq	%rbx, 8(%rsp)
	movl	currentchar(%rip), %ebp
	movl	$contextbufs, %eax
	subl	%eax, %ebp
	movl	$ctoken, %edi
	callq	strlen
	subl	%eax, %ebp
	addl	contextoffset(%rip), %ebp
	movl	$.L.str.14.298, %esi
	movl	$ctoken, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end198:
	.size	checkline18, .Lfunc_end198-checkline18
	.cfi_endproc
                                        # -- End function
	.globl	correct                 # -- Begin function correct
	.p2align	4, 0x90
	.type	correct,@function
correct:                                # @correct
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r13
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %r14
	movl	$222222295, -132(%rbp)  # imm = 0xD3ED7D7
	movl	$555555628, -128(%rbp)  # imm = 0x211D1B2C
	movl	$444444517, -124(%rbp)  # imm = 0x1A7DAF65
	movl	$222222295, %edi        # imm = 0xD3ED7D7
	movl	$555555628, %esi        # imm = 0x211D1B2C
	movl	$444444517, %edx        # imm = 0x1A7DAF65
	callq	guardMe
	movl	$222222294, -120(%rbp)  # imm = 0xD3ED7D6
	movl	$555555627, -116(%rbp)  # imm = 0x211D1B2B
	movl	$444444516, -112(%rbp)  # imm = 0x1A7DAF64
	movl	$222222294, %edi        # imm = 0xD3ED7D6
	movl	$555555627, %esi        # imm = 0x211D1B2B
	movl	$444444516, %edx        # imm = 0x1A7DAF64
	callq	guardMe
	movq	%r14, -56(%rbp)
	movl	%r12d, -108(%rbp)
	movq	%r15, -64(%rbp)
	movl	%ebx, -104(%rbp)
	movq	%r13, -96(%rbp)
	movq	(%r13), %rbx
	movq	%r14, %rdi
	callq	strlen
	subq	%rax, %rbx
	movq	%rbx, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	strlen
	movslq	minword(%rip), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB199_73
# %bb.1:                                # %if.end
	leaq	-44(%rbp), %rbx
	leaq	-448(%rbp), %r15
	leaq	-48(%rbp), %r14
	jmp	.LBB199_2
.LBB199_42:                             # %if.then121
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	erase
	callq	correct14
	xorl	%edi, %edi
	callq	done
	.p2align	4, 0x90
.LBB199_2:                              # %checkagain
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB199_11 Depth 2
                                        #     Child Loop BB199_21 Depth 2
                                        #     Child Loop BB199_24 Depth 2
                                        #     Child Loop BB199_34 Depth 2
	movq	-64(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	jne	.LBB199_73
# %bb.3:                                # %lor.lhs.false
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	compoundgood
	testl	%eax, %eax
	jne	.LBB199_73
# %bb.4:                                # %if.end7
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	erase
	movq	-56(%rbp), %rsi
	movl	$.L.str.22.251, %edi
	xorl	%eax, %eax
	callq	printf
	cmpq	$0, currentfile(%rip)
	je	.LBB199_6
# %bb.5:                                # %if.then10
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	correct0
.LBB199_6:                              # %if.end12
                                        #   in Loop: Header=BB199_2 Depth=1
	cmpl	$0, readonly(%rip)
	je	.LBB199_8
# %bb.7:                                # %if.then14
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$.L.str.24.253, %edi
	movl	$.L.str.25.254, %esi
	xorl	%eax, %eax
	callq	printf
.LBB199_8:                              # %if.end16
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$.L.str.20.210, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-64(%rbp), %rdi
	callq	makepossibilities
	movl	li(%rip), %ecx
	subl	contextsize(%rip), %ecx
	addl	$-4, %ecx
	subl	minimenusize(%rip), %ecx
	movl	%ecx, -84(%rbp)
	movl	co(%rip), %eax
	movl	maxposslen(%rip), %esi
	addl	$8, %esi
	cltd
	idivl	%esi
	movl	%eax, -100(%rbp)
	imull	%eax, %ecx
	cmpl	%ecx, pcount(%rip)
	jle	.LBB199_10
# %bb.9:                                # %if.then22
                                        #   in Loop: Header=BB199_2 Depth=1
	leaq	-84(%rbp), %rdi
	leaq	-100(%rbp), %rsi
	callq	correct1
.LBB199_10:                             # %if.end24
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB199_11
	.p2align	4, 0x90
.LBB199_18:                             # %for.inc
                                        #   in Loop: Header=BB199_11 Depth=2
	movq	%rbx, %rdi
	callq	correct5
.LBB199_11:                             # %for.cond
                                        #   Parent Loop BB199_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	pcount(%rip), %eax
	jge	.LBB199_19
# %bb.12:                               # %for.body
                                        #   in Loop: Header=BB199_11 Depth=2
	movl	contextsize(%rip), %ecx
	movl	-44(%rbp), %eax
	cltd
	idivl	-84(%rbp)
                                        # kill: def %edx killed %edx def %rdx
	leal	(%rcx,%rdx), %edi
	addl	$3, %edi
	movl	maxposslen(%rip), %esi
	addl	$8, %esi
	imull	%eax, %esi
	callq	move
	movl	-44(%rbp), %eax
	cmpl	easypossibilities(%rip), %eax
	jl	.LBB199_14
# %bb.13:                               # %if.then34
                                        #   in Loop: Header=BB199_11 Depth=2
	movq	%rbx, %rdi
	callq	correct2
	jmp	.LBB199_18
	.p2align	4, 0x90
.LBB199_14:                             # %if.else
                                        #   in Loop: Header=BB199_11 Depth=2
	cmpl	$10, easypossibilities(%rip)
	jl	.LBB199_17
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB199_11 Depth=2
	cmpl	$9, -44(%rbp)
	jg	.LBB199_17
# %bb.16:                               # %if.then40
                                        #   in Loop: Header=BB199_11 Depth=2
	movq	%rbx, %rdi
	callq	correct3
	jmp	.LBB199_18
	.p2align	4, 0x90
.LBB199_17:                             # %if.else45
                                        #   in Loop: Header=BB199_11 Depth=2
	movq	%rbx, %rdi
	callq	correct4
	jmp	.LBB199_18
	.p2align	4, 0x90
.LBB199_19:                             # %for.end
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$2, %edi
	xorl	%esi, %esi
	callq	move
	movq	%rbx, %rdi
	callq	correct6
	addl	$-1, -44(%rbp)
	jle	.LBB199_22
	.p2align	4, 0x90
.LBB199_21:                             # %for.body55
                                        #   Parent Loop BB199_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	correct7
	addl	$-1, -44(%rbp)
	jg	.LBB199_21
.LBB199_22:                             # %for.end62
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	%r14, %r12
	movq	%r15, %r14
	movq	$contextbufs, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	movl	$contextbufs, %edi
	callq	line_size
	movl	co(%rip), %ecx
	movl	sg(%rip), %edx
	addl	%edx, %edx
	subl	%edx, %ecx
	addl	$-1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB199_31
# %bb.23:                               # %if.then68
                                        #   in Loop: Header=BB199_2 Depth=1
	leaq	-80(%rbp), %r15
	movq	%r15, %rdi
	leaq	-72(%rbp), %rsi
	callq	correct8
	jmp	.LBB199_24
	.p2align	4, 0x90
.LBB199_26:                             # %if.end81
                                        #   in Loop: Header=BB199_24 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	correct9
.LBB199_24:                             # %while.cond
                                        #   Parent Loop BB199_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB199_27
# %bb.25:                               # %while.body
                                        #   in Loop: Header=BB199_24 Depth=2
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	callq	line_size
                                        # kill: def %eax killed %eax def %rax
	leal	1(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	sg(%rip), %ecx
	leal	(%rax,%rcx,2), %eax
	addl	$1, %eax
	cmpl	co(%rip), %eax
	jg	.LBB199_26
.LBB199_27:                             # %while.end
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jbe	.LBB199_29
# %bb.28:                               # %if.then87
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	%r15, %rdi
	leaq	-72(%rbp), %rsi
	callq	correct10
.LBB199_29:                             # %if.end88
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$contextbufs, %eax
	cmpq	%rax, -80(%rbp)
	jae	.LBB199_31
# %bb.30:                               # %if.then91
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	$contextbufs, -80(%rbp)
.LBB199_31:                             # %if.end93
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	-80(%rbp), %r15
	movq	-72(%rbp), %r13
	movq	-56(%rbp), %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%eax, %edx
	callq	show_line
	cmpl	$0, minimenusize(%rip)
	je	.LBB199_33
# %bb.32:                               # %if.then98
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	correct11
.LBB199_33:                             # %if.end101
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	%r14, %r15
	movq	%r12, %r14
	leaq	-240(%rbp), %r12
	jmp	.LBB199_34
	.p2align	4, 0x90
.LBB199_67:                             # %if.then203
                                        #   in Loop: Header=BB199_34 Depth=2
	movl	$7, %edi
	callq	putchar
.LBB199_34:                             # %for.cond102
                                        #   Parent Loop BB199_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
                                        # kill: def %eax killed %eax def %rax
	andl	$127, %eax
	movl	%eax, -48(%rbp)
	addl	$-10, %eax
	cmpl	$110, %eax
	ja	.LBB199_67
# %bb.35:                               # %for.cond102
                                        #   in Loop: Header=BB199_34 Depth=2
	jmpq	*.LJTI199_0(,%rax,8)
.LBB199_58:                             # %sw.bb181
                                        #   in Loop: Header=BB199_34 Depth=2
	movl	-48(%rbp), %eax
	addl	$-48, %eax
	movl	%eax, -44(%rbp)
	cmpl	$10, easypossibilities(%rip)
	jl	.LBB199_62
# %bb.59:                               # %if.then185
                                        #   in Loop: Header=BB199_34 Depth=2
	callq	getchar
	andl	$127, %eax
	movl	%eax, -48(%rbp)
	cmpl	$48, %eax
	jl	.LBB199_65
# %bb.60:                               # %land.lhs.true190
                                        #   in Loop: Header=BB199_34 Depth=2
	cmpl	$57, -48(%rbp)
	jg	.LBB199_65
# %bb.61:                               # %if.then193
                                        #   in Loop: Header=BB199_34 Depth=2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	correct22
	jmp	.LBB199_62
.LBB199_65:                             # %if.else197
                                        #   in Loop: Header=BB199_34 Depth=2
	cmpl	$13, -48(%rbp)
	je	.LBB199_62
# %bb.66:                               # %land.lhs.true200
                                        #   in Loop: Header=BB199_34 Depth=2
	cmpl	$10, -48(%rbp)
	jne	.LBB199_67
	.p2align	4, 0x90
.LBB199_62:                             # %if.end207
                                        #   in Loop: Header=BB199_34 Depth=2
	movl	-44(%rbp), %eax
	cmpl	easypossibilities(%rip), %eax
	jge	.LBB199_67
	jmp	.LBB199_63
.LBB199_68:                             # %sw.bb226
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	li(%rip), %edi
	addl	$-1, %edi
	xorl	%esi, %esi
	callq	move
	movl	$.L.str.37.266, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r12, %rdi
	callq	my_getline
	testq	%rax, %rax
	je	.LBB199_69
# %bb.70:                               # %if.end236
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$.L.str.31.260, %edi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	%r12, %rdi
	callq	lookharder
	callq	erase
	jmp	.LBB199_2
.LBB199_37:                             # %sw.bb107
                                        #   in Loop: Header=BB199_2 Depth=1
	cmpl	$0, changes(%rip)
	je	.LBB199_39
# %bb.38:                               # %if.then109
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	%r14, %rdi
	callq	correct13
	cmpl	$121, -48(%rbp)
	je	.LBB199_42
	jmp	.LBB199_41
.LBB199_50:                             # %sw.bb153
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	li(%rip), %edi
	addl	$-1, %edi
	xorl	%esi, %esi
	callq	move
	cmpl	$0, readonly(%rip)
	je	.LBB199_52
# %bb.51:                               # %if.then156
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	correct19
.LBB199_52:                             # %if.end159
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$.L.str.33.262, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %rdi
	callq	my_getline
	testq	%rax, %rax
	je	.LBB199_53
# %bb.54:                               # %if.else167
                                        #   in Loop: Header=BB199_2 Depth=1
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	$contextbufs, %edi
	callq	inserttoken
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-104(%rbp), %edx
	xorl	%ecx, %ecx
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB199_56
# %bb.55:                               # %if.then170
                                        #   in Loop: Header=BB199_2 Depth=1
	leaq	-56(%rbp), %rdi
	callq	correct21
.LBB199_56:                             # %if.end173
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$1, changes(%rip)
	jmp	.LBB199_57
.LBB199_36:                             # %sw.bb
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	stop
	callq	erase
	jmp	.LBB199_2
.LBB199_47:                             # %sw.bb138
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	li(%rip), %edi
	addl	$-1, %edi
	xorl	%esi, %esi
	callq	move
	movl	$33, %edi
	callq	putchar
	movq	%r15, %rdi
	callq	my_getline
	testq	%rax, %rax
	je	.LBB199_48
# %bb.49:                               # %if.end148
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$.L.str.31.260, %edi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	%r15, %rdi
	callq	shellescape
	callq	erase
	jmp	.LBB199_2
.LBB199_46:                             # %sw.bb137
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$1, %edi
	callq	givehelp
	jmp	.LBB199_2
.LBB199_53:                             # %if.then164
                                        #   in Loop: Header=BB199_2 Depth=1
	leaq	-108(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	callq	correct20
.LBB199_57:                             # %if.end174
                                        #   in Loop: Header=BB199_2 Depth=1
	callq	erase
	movq	-64(%rbp), %rdi
	callq	strlen
	movslq	minword(%rip), %rcx
	cmpq	%rcx, %rax
	ja	.LBB199_2
	jmp	.LBB199_73
.LBB199_69:                             # %if.then234
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$7, %edi
	callq	putchar
	callq	erase
	jmp	.LBB199_2
.LBB199_39:                             # %if.else114
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$121, -48(%rbp)
	cmpl	$121, -48(%rbp)
	je	.LBB199_42
.LBB199_41:                             # %lor.lhs.false118
                                        #   in Loop: Header=BB199_2 Depth=1
	cmpl	$89, -48(%rbp)
	jne	.LBB199_2
	jmp	.LBB199_42
.LBB199_48:                             # %if.then145
                                        #   in Loop: Header=BB199_2 Depth=1
	movl	$7, %edi
	callq	putchar
	callq	erase
	callq	correct18
	jmp	.LBB199_2
.LBB199_63:                             # %if.then210
	leaq	-44(%rbp), %rdi
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	correct23
	movl	$1, changes(%rip)
	leaq	-96(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	movq	%rbx, %rsi
	callq	correct24
	callq	erase
	cmpl	$0, readonly(%rip)
	je	.LBB199_73
# %bb.64:                               # %if.then216
	callq	correct25
.LBB199_73:                             # %return
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB199_45:                             # %sw.bb132
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	strtosichar
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ichartosstr
	movl	$184, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	treeinsert
	callq	erase
	callq	correct17
	jmp	.LBB199_73
.LBB199_43:                             # %sw.bb124
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	strtosichar
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ichartosstr
	movl	$184, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	treeinsert
	callq	erase
	callq	correct15
	movl	$1, changes(%rip)
	jmp	.LBB199_73
.LBB199_44:                             # %sw.bb128
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	lowcase
	movq	-64(%rbp), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movl	$184, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	treeinsert
	callq	erase
	callq	correct16
	movl	$1, changes(%rip)
	jmp	.LBB199_73
.LBB199_71:                             # %sw.bb240
	movl	$1, quit(%rip)
	callq	erase
	callq	correct26
	jmp	.LBB199_73
.LBB199_72:                             # %sw.bb105
	callq	erase
	callq	correct12
	jmp	.LBB199_73
.Lfunc_end199:
	.size	correct, .Lfunc_end199-correct
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI199_0:
	.quad	.LBB199_34
	.quad	.LBB199_67
	.quad	.LBB199_2
	.quad	.LBB199_34
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_36
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_72
	.quad	.LBB199_47
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_58
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_46
	.quad	.LBB199_67
	.quad	.LBB199_45
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_43
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_68
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_37
	.quad	.LBB199_50
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_44
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_71
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_45
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_43
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_68
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_37
	.quad	.LBB199_50
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_44
	.quad	.LBB199_67
	.quad	.LBB199_67
	.quad	.LBB199_71
                                        # -- End function
	.text
	.globl	checkline19             # -- Begin function checkline19
	.p2align	4, 0x90
	.type	checkline19,@function
checkline19:                            # @checkline19
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.15.299, %esi
	movl	$ctoken, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end200:
	.size	checkline19, .Lfunc_end200-checkline19
	.cfi_endproc
                                        # -- End function
	.globl	checkline20             # -- Begin function checkline20
	.p2align	4, 0x90
	.type	checkline20,@function
checkline20:                            # @checkline20
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$10, %edi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end201:
	.size	checkline20, .Lfunc_end201-checkline20
	.cfi_endproc
                                        # -- End function
	.globl	correct0                # -- Begin function correct0
	.p2align	4, 0x90
	.type	correct0,@function
correct0:                               # @correct0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	currentfile(%rip), %rsi
	movl	$.L.str.23.252, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end202:
	.size	correct0, .Lfunc_end202-correct0
	.cfi_endproc
                                        # -- End function
	.globl	correct1                # -- Begin function correct1
	.p2align	4, 0x90
	.type	correct1,@function
correct1:                               # @correct1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -12(%rsp)
	imull	%ecx, %eax
	movl	%eax, pcount(%rip)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end203:
	.size	correct1, .Lfunc_end203-correct1
	.cfi_endproc
                                        # -- End function
	.globl	correct2                # -- Begin function correct2
	.p2align	4, 0x90
	.type	correct2,@function
correct2:                               # @correct2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rsi
	movl	$.L.str.26.255, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end204:
	.size	correct2, .Lfunc_end204-correct2
	.cfi_endproc
                                        # -- End function
	.globl	correct3                # -- Begin function correct3
	.p2align	4, 0x90
	.type	correct3,@function
correct3:                               # @correct3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rsi
	imulq	$120, %rsi, %rax
	leaq	possibilities(%rax), %rdx
	movl	$.L.str.27.256, %edi
	xorl	%eax, %eax
                                        # kill: def %esi killed %esi killed %rsi
	callq	printf
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end205:
	.size	correct3, .Lfunc_end205-correct3
	.cfi_endproc
                                        # -- End function
	.globl	correct4                # -- Begin function correct4
	.p2align	4, 0x90
	.type	correct4,@function
correct4:                               # @correct4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rsi
	imulq	$120, %rsi, %rax
	leaq	possibilities(%rax), %rdx
	movl	$.L.str.28.257, %edi
	xorl	%eax, %eax
                                        # kill: def %esi killed %esi killed %rsi
	callq	printf
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end206:
	.size	correct4, .Lfunc_end206-correct4
	.cfi_endproc
                                        # -- End function
	.globl	correct5                # -- Begin function correct5
	.p2align	4, 0x90
	.type	correct5,@function
correct5:                               # @correct5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end207:
	.size	correct5, .Lfunc_end207-correct5
	.cfi_endproc
                                        # -- End function
	.globl	correct6                # -- Begin function correct6
	.p2align	4, 0x90
	.type	correct6,@function
correct6:                               # @correct6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	contextsize(%rip), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end208:
	.size	correct6, .Lfunc_end208-correct6
	.cfi_endproc
                                        # -- End function
	.globl	correct7                # -- Begin function correct7
	.p2align	4, 0x90
	.type	correct7,@function
correct7:                               # @correct7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rax
	shlq	$13, %rax
	leaq	contextbufs(%rax), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rsi
	callq	show_line
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end209:
	.size	correct7, .Lfunc_end209-correct7
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function line_size
	.type	line_size,@function
line_size:                              # @line_size
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222305, -132(%rbp)  # imm = 0xD3ED7E1
	movl	$555555638, -128(%rbp)  # imm = 0x211D1B36
	movl	$444444527, -124(%rbp)  # imm = 0x1A7DAF6F
	movl	$222222305, %edi        # imm = 0xD3ED7E1
	movl	$555555638, %esi        # imm = 0x211D1B36
	movl	$444444527, %edx        # imm = 0x1A7DAF6F
	callq	guardMe
	movl	$222222304, -120(%rbp)  # imm = 0xD3ED7E0
	movl	$555555637, -116(%rbp)  # imm = 0x211D1B35
	movl	$444444526, -112(%rbp)  # imm = 0x1A7DAF6E
	movl	$222222304, %edi        # imm = 0xD3ED7E0
	movl	$555555637, %esi        # imm = 0x211D1B35
	movl	$444444526, %edx        # imm = 0x1A7DAF6E
	callq	guardMe
	movl	$222222303, -108(%rbp)  # imm = 0xD3ED7DF
	movl	$555555636, -104(%rbp)  # imm = 0x211D1B34
	movl	$444444525, -100(%rbp)  # imm = 0x1A7DAF6D
	movl	$222222303, %edi        # imm = 0xD3ED7DF
	movl	$555555636, %esi        # imm = 0x211D1B34
	movl	$444444525, %edx        # imm = 0x1A7DAF6D
	callq	guardMe
	movl	$222222302, -96(%rbp)   # imm = 0xD3ED7DE
	movl	$555555635, -92(%rbp)   # imm = 0x211D1B33
	movl	$444444524, -88(%rbp)   # imm = 0x1A7DAF6C
	movl	$222222302, %edi        # imm = 0xD3ED7DE
	movl	$555555635, %esi        # imm = 0x211D1B33
	movl	$444444524, %edx        # imm = 0x1A7DAF6C
	callq	guardMe
	movl	$222222301, -84(%rbp)   # imm = 0xD3ED7DD
	movl	$555555634, -80(%rbp)   # imm = 0x211D1B32
	movl	$444444523, -76(%rbp)   # imm = 0x1A7DAF6B
	movl	$222222301, %edi        # imm = 0xD3ED7DD
	movl	$555555634, %esi        # imm = 0x211D1B32
	movl	$444444523, %edx        # imm = 0x1A7DAF6B
	callq	guardMe
	movl	$222222300, -72(%rbp)   # imm = 0xD3ED7DC
	movl	$555555633, -68(%rbp)   # imm = 0x211D1B31
	movl	$444444522, -64(%rbp)   # imm = 0x1A7DAF6A
	movl	$222222300, %edi        # imm = 0xD3ED7DC
	movl	$555555633, %esi        # imm = 0x211D1B31
	movl	$444444522, %edx        # imm = 0x1A7DAF6A
	callq	guardMe
	movl	$222222299, -60(%rbp)   # imm = 0xD3ED7DB
	movl	$555555632, -56(%rbp)   # imm = 0x211D1B30
	movl	$444444521, -52(%rbp)   # imm = 0x1A7DAF69
	movl	$222222299, %edi        # imm = 0xD3ED7DB
	movl	$555555632, %esi        # imm = 0x211D1B30
	movl	$444444521, %edx        # imm = 0x1A7DAF69
	callq	guardMe
	movq	%rbx, -40(%rbp)
	movq	%r14, -48(%rbp)
	movl	$0, -28(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-48(%rbp), %r15
	leaq	-28(%rbp), %rbx
	jmp	.LBB210_1
	.p2align	4, 0x90
.LBB210_5:                              # %for.body
                                        #   in Loop: Header=BB210_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	line_size0
.LBB210_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB210_2
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB210_1 Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB210_5
	jmp	.LBB210_6
	.p2align	4, 0x90
.LBB210_2:                              #   in Loop: Header=BB210_1 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB210_5
.LBB210_6:                              # %for.end
	movl	-28(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end210:
	.size	line_size, .Lfunc_end210-line_size
	.cfi_endproc
                                        # -- End function
	.globl	correct8                # -- Begin function correct8
	.p2align	4, 0x90
	.type	correct8,@function
correct8:                               # @correct8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movl	co(%rip), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movslq	%edx, %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end211:
	.size	correct8, .Lfunc_end211-correct8
	.cfi_endproc
                                        # -- End function
	.globl	correct9                # -- Begin function correct9
	.p2align	4, 0x90
	.type	correct9,@function
correct9:                               # @correct9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movslq	-28(%rsp), %rcx
	movslq	co(%rip), %rdx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	addq	%rax, %rdi
	movq	%rdi, -24(%rsp)
	movl	%ecx, (%rsi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end212:
	.size	correct9, .Lfunc_end212-correct9
	.cfi_endproc
                                        # -- End function
	.globl	correct10               # -- Begin function correct10
	.p2align	4, 0x90
	.type	correct10,@function
correct10:                              # @correct10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end213:
	.size	correct10, .Lfunc_end213-correct10
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function show_line
	.type	show_line,@function
show_line:                              # @show_line
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -44(%rbp)
	testl	%edx, %edx
	je	.LBB214_1
# %bb.2:                                # %cond.true
	movl	sg(%rip), %eax
	addl	%eax, %eax
	jmp	.LBB214_3
.LBB214_1:
	xorl	%eax, %eax
.LBB214_3:                              # %cond.end
	movl	%eax, -28(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-56(%rbp), %r15
	leaq	-28(%rbp), %rbx
	jmp	.LBB214_4
	.p2align	4, 0x90
.LBB214_8:                              # %while.body
                                        #   in Loop: Header=BB214_4 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	show_line0
.LBB214_4:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB214_5
# %bb.6:                                # %land.rhs
                                        #   in Loop: Header=BB214_4 Depth=1
	movl	co(%rip), %eax
	addl	$-1, %eax
	cmpl	%eax, -28(%rbp)
	setl	%al
	testb	%al, %al
	jne	.LBB214_8
	jmp	.LBB214_9
	.p2align	4, 0x90
.LBB214_5:                              #   in Loop: Header=BB214_4 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB214_8
.LBB214_9:                              # %while.end
	cmpl	$0, -44(%rbp)
	je	.LBB214_17
# %bb.10:                               # %if.then
	leaq	-56(%rbp), %r14
	leaq	-44(%rbp), %rsi
	movq	%r14, %rdi
	callq	show_line1
	leaq	-40(%rbp), %r15
	leaq	-28(%rbp), %rbx
	jmp	.LBB214_11
	.p2align	4, 0x90
.LBB214_15:                             # %while.body11
                                        #   in Loop: Header=BB214_11 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	show_line2
.LBB214_11:                             # %while.cond3
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB214_12
# %bb.13:                               # %land.rhs6
                                        #   in Loop: Header=BB214_11 Depth=1
	movl	co(%rip), %eax
	addl	$-1, %eax
	cmpl	%eax, -28(%rbp)
	setl	%al
	testb	%al, %al
	jne	.LBB214_15
	jmp	.LBB214_16
	.p2align	4, 0x90
.LBB214_12:                             #   in Loop: Header=BB214_11 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB214_15
.LBB214_16:                             # %while.end18
	callq	normal
.LBB214_17:                             # %if.end
	leaq	-40(%rbp), %r14
	leaq	-28(%rbp), %rbx
	jmp	.LBB214_18
	.p2align	4, 0x90
.LBB214_22:                             # %while.body27
                                        #   in Loop: Header=BB214_18 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	show_line3
.LBB214_18:                             # %while.cond19
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB214_19
# %bb.20:                               # %land.rhs22
                                        #   in Loop: Header=BB214_18 Depth=1
	movl	co(%rip), %eax
	addl	$-1, %eax
	cmpl	%eax, -28(%rbp)
	setl	%al
	testb	%al, %al
	jne	.LBB214_22
	jmp	.LBB214_23
	.p2align	4, 0x90
.LBB214_19:                             #   in Loop: Header=BB214_18 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB214_22
.LBB214_23:                             # %while.end30
	movl	$.L.str.31.260, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end214:
	.size	show_line, .Lfunc_end214-show_line
	.cfi_endproc
                                        # -- End function
	.globl	correct11               # -- Begin function correct11
	.p2align	4, 0x90
	.type	correct11,@function
correct11:                              # @correct11
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	li(%rip), %edi
	addl	$-2, %edi
	xorl	%esi, %esi
	callq	move
	movl	$.L.str.29.258, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end215:
	.size	correct11, .Lfunc_end215-correct11
	.cfi_endproc
                                        # -- End function
	.globl	correct12               # -- Begin function correct12
	.p2align	4, 0x90
	.type	correct12,@function
correct12:                              # @correct12
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end216:
	.size	correct12, .Lfunc_end216-correct12
	.cfi_endproc
                                        # -- End function
	.globl	correct13               # -- Begin function correct13
	.p2align	4, 0x90
	.type	correct13,@function
correct13:                              # @correct13
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movl	$.L.str.30.259, %edi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
	andl	$127, %eax
	movl	%eax, 12(%rsp)
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end217:
	.size	correct13, .Lfunc_end217-correct13
	.cfi_endproc
                                        # -- End function
	.globl	correct14               # -- Begin function correct14
	.p2align	4, 0x90
	.type	correct14,@function
correct14:                              # @correct14
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end218:
	.size	correct14, .Lfunc_end218-correct14
	.cfi_endproc
                                        # -- End function
	.globl	strtosichar             # -- Begin function strtosichar
	.p2align	4, 0x90
	.type	strtosichar,@function
strtosichar:                            # @strtosichar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222453, -40(%rbp)   # imm = 0xD3ED875
	movl	$555555786, -36(%rbp)   # imm = 0x211D1BCA
	movl	$444444675, -32(%rbp)   # imm = 0x1A7DB003
	movl	$222222453, %edi        # imm = 0xD3ED875
	movl	$555555786, %esi        # imm = 0x211D1BCA
	movl	$444444675, %edx        # imm = 0x1A7DB003
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movl	%r14d, -28(%rbp)
	movl	$strtosichar.out, %edi
	movl	$184, %edx
	movq	%rbx, %rsi
	movl	%r14d, %ecx
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB219_2
# %bb.1:                                # %if.then
	leaq	-24(%rbp), %rdi
	callq	strtosichar0
.LBB219_2:                              # %if.end
	movl	$strtosichar.out, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end219:
	.size	strtosichar, .Lfunc_end219-strtosichar
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert              # -- Begin function treeinsert
	.p2align	4, 0x90
	.type	treeinsert,@function
treeinsert:                             # @treeinsert
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$222222400, -100(%rbp)  # imm = 0xD3ED840
	movl	$555555733, -96(%rbp)   # imm = 0x211D1B95
	movl	$444444622, -92(%rbp)   # imm = 0x1A7DAFCE
	movl	$222222400, %edi        # imm = 0xD3ED840
	movl	$555555733, %esi        # imm = 0x211D1B95
	movl	$444444622, %edx        # imm = 0x1A7DAFCE
	callq	guardMe
	movq	%rbx, -88(%rbp)
	movl	%r15d, -80(%rbp)
	movl	%r14d, -72(%rbp)
	cmpl	$0, cantexpand(%rip)
	jne	.LBB220_23
# %bb.1:                                # %land.lhs.true
	imull	$100, hcount(%rip), %eax
	cltq
	imulq	$-368140053, %rax, %rcx # imm = 0xEA0EA0EB
	shrq	$32, %rcx
	addl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$6, %eax
	addl	%ecx, %eax
	cmpl	pershsize(%rip), %eax
	jl	.LBB220_23
# %bb.2:                                # %if.then
	leaq	-44(%rbp), %rbx
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	%rbx, %rdi
	callq	treeinsert0
	jmp	.LBB220_3
	.p2align	4, 0x90
.LBB220_5:                              # %for.inc
                                        #   in Loop: Header=BB220_3 Depth=1
	movq	%rbx, %rdi
	callq	treeinsert1
.LBB220_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$3, %rax
	ja	.LBB220_6
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB220_3 Depth=1
	movslq	-44(%rbp), %rax
	movl	goodsizes(,%rax,4), %eax
	cmpl	pershsize(%rip), %eax
	jle	.LBB220_5
.LBB220_6:                              # %for.end
	movslq	-44(%rbp), %rax
	cmpq	$4, %rax
	jb	.LBB220_8
# %bb.7:                                # %if.then9
	callq	treeinsert2
	jmp	.LBB220_9
.LBB220_8:                              # %if.else
	leaq	-44(%rbp), %rdi
	callq	treeinsert3
.LBB220_9:                              # %if.end13
	movl	pershsize(%rip), %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, pershtab(%rip)
	testq	%rax, %rax
	je	.LBB220_10
# %bb.12:                               # %if.else24
	movl	$0, -44(%rbp)
	leaq	-76(%rbp), %r14
	leaq	-136(%rbp), %r15
	leaq	-56(%rbp), %rbx
	leaq	-144(%rbp), %r12
	leaq	-44(%rbp), %r13
	jmp	.LBB220_13
	.p2align	4, 0x90
.LBB220_20:                             # %for.inc60
                                        #   in Loop: Header=BB220_13 Depth=1
	movq	%r13, %rdi
	callq	treeinsert8
.LBB220_13:                             # %for.cond25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB220_17 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB220_21
# %bb.14:                               # %for.body28
                                        #   in Loop: Header=BB220_13 Depth=1
	movslq	-44(%rbp), %rax
	movq	-64(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rdx
	movq	%rdx, -56(%rbp)
	testb	$4, 19(%rcx,%rax,8)
	je	.LBB220_20
# %bb.15:                               # %if.then33
                                        #   in Loop: Header=BB220_13 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	treeinsert5
	cmpq	$0, -56(%rbp)
	jne	.LBB220_17
	jmp	.LBB220_20
	.p2align	4, 0x90
.LBB220_18:                             # %if.then42
                                        #   in Loop: Header=BB220_17 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	treeinsert6
	cmpq	$0, -56(%rbp)
	je	.LBB220_20
.LBB220_17:                             # %while.body
                                        #   Parent Loop BB220_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -76(%rbp)
	jne	.LBB220_18
# %bb.19:                               # %if.else51
                                        #   in Loop: Header=BB220_17 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	treeinsert7
	cmpq	$0, -56(%rbp)
	jne	.LBB220_17
	jmp	.LBB220_20
.LBB220_21:                             # %for.end62
	cmpq	$0, -64(%rbp)
	je	.LBB220_23
# %bb.22:                               # %if.then65
	leaq	-64(%rbp), %rdi
	callq	treeinsert9
	jmp	.LBB220_23
.LBB220_10:                             # %if.then17
	movq	stderr(%rip), %rdi
	movl	$.L.str.12.433, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpq	$0, -64(%rbp)
	je	.LBB220_33
# %bb.11:                               # %if.end22
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	callq	treeinsert4
.LBB220_23:                             # %if.end68
	movq	-88(%rbp), %rdi
	movl	-80(%rbp), %esi
	leaq	-128(%rbp), %rdx
	callq	makedent
	testl	%eax, %eax
	js	.LBB220_32
# %bb.24:                               # %if.end73
	cmpl	$0, -72(%rbp)
	je	.LBB220_26
# %bb.25:                               # %if.then75
	leaq	-128(%rbp), %rdi
	callq	treeinsert10
.LBB220_26:                             # %if.end78
	movq	-88(%rbp), %rsi
	leaq	-272(%rbp), %rbx
	movl	$120, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	strtoichar
	movq	%rbx, %rdi
	callq	upcase
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	lookup
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	je	.LBB220_29
# %bb.27:                               # %if.then85
	movq	-56(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	combinecaps
	testl	%eax, %eax
	jns	.LBB220_31
# %bb.28:                               # %if.then89
	leaq	-128(%rbp), %rdi
	callq	treeinsert11
	jmp	.LBB220_32
.LBB220_29:                             # %if.else92
	leaq	-128(%rbp), %rdi
	callq	tinsert
	movq	%rax, -56(%rbp)
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	jne	.LBB220_31
# %bb.30:                               # %if.then99
	leaq	-56(%rbp), %rdi
	callq	treeinsert12
.LBB220_31:                             # %if.end102
	leaq	-72(%rbp), %rdi
	callq	treeinsert13
.LBB220_32:                             # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB220_33:                             # %if.then21
	movl	$1, %edi
	callq	exit
.Lfunc_end220:
	.size	treeinsert, .Lfunc_end220-treeinsert
	.cfi_endproc
                                        # -- End function
	.globl	correct15               # -- Begin function correct15
	.p2align	4, 0x90
	.type	correct15,@function
correct15:                              # @correct15
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end221:
	.size	correct15, .Lfunc_end221-correct15
	.cfi_endproc
                                        # -- End function
	.globl	correct16               # -- Begin function correct16
	.p2align	4, 0x90
	.type	correct16,@function
correct16:                              # @correct16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end222:
	.size	correct16, .Lfunc_end222-correct16
	.cfi_endproc
                                        # -- End function
	.globl	correct17               # -- Begin function correct17
	.p2align	4, 0x90
	.type	correct17,@function
correct17:                              # @correct17
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end223:
	.size	correct17, .Lfunc_end223-correct17
	.cfi_endproc
                                        # -- End function
	.globl	givehelp                # -- Begin function givehelp
	.p2align	4, 0x90
	.type	givehelp,@function
givehelp:                               # @givehelp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$222222288, -68(%rbp)   # imm = 0xD3ED7D0
	movl	$555555621, -64(%rbp)   # imm = 0x211D1B25
	movl	$444444510, -60(%rbp)   # imm = 0x1A7DAF5E
	movl	$222222288, %edi        # imm = 0xD3ED7D0
	movl	$555555621, %esi        # imm = 0x211D1B25
	movl	$444444510, %edx        # imm = 0x1A7DAF5E
	callq	guardMe
	movl	$222222287, -56(%rbp)   # imm = 0xD3ED7CF
	movl	$555555620, -52(%rbp)   # imm = 0x211D1B24
	movl	$444444509, -48(%rbp)   # imm = 0x1A7DAF5D
	movl	$222222287, %edi        # imm = 0xD3ED7CF
	movl	$555555620, %esi        # imm = 0x211D1B24
	movl	$444444509, %edx        # imm = 0x1A7DAF5D
	callq	guardMe
	movl	$222222286, -44(%rbp)   # imm = 0xD3ED7CE
	movl	$555555619, -40(%rbp)   # imm = 0x211D1B23
	movl	$444444508, -36(%rbp)   # imm = 0x1A7DAF5C
	movl	$222222286, %edi        # imm = 0xD3ED7CE
	movl	$555555619, %esi        # imm = 0x211D1B23
	movl	$444444508, %edx        # imm = 0x1A7DAF5C
	callq	guardMe
	movl	$222222285, -32(%rbp)   # imm = 0xD3ED7CD
	movl	$555555618, -28(%rbp)   # imm = 0x211D1B22
	movl	$444444507, -24(%rbp)   # imm = 0x1A7DAF5B
	movl	$222222285, %edi        # imm = 0xD3ED7CD
	movl	$555555618, %esi        # imm = 0x211D1B22
	movl	$444444507, %edx        # imm = 0x1A7DAF5B
	callq	guardMe
	movl	%ebx, -20(%rbp)
	leaq	-16(%rbp), %rdi
	testl	%ebx, %ebx
	je	.LBB224_2
# %bb.1:                                # %if.then
	callq	givehelp0
	jmp	.LBB224_3
.LBB224_2:                              # %if.else
	callq	givehelp1
.LBB224_3:                              # %if.end
	movq	-16(%rbp), %rdi
	movl	$.L.str.190, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.1.191, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.2.192, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.3.193, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.4.194, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.5.195, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.5.195, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.5.195, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.5.195, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.6.196, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.7.197, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.8.198, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.9.199, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.10.200, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.11.201, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.12.202, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.13.203, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.14.204, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.15.205, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.16.206, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.17.207, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.18.208, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.19.209, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$0, -20(%rbp)
	je	.LBB224_6
# %bb.4:                                # %if.then24
	leaq	-16(%rbp), %rdi
	callq	givehelp2
	.p2align	4, 0x90
.LBB224_5:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	getchar
	cmpl	$32, %eax
	jne	.LBB224_5
.LBB224_6:                              # %if.end29
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end224:
	.size	givehelp, .Lfunc_end224-givehelp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function my_getline
	.type	my_getline,@function
my_getline:                             # @my_getline
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movl	$222222310, -108(%rbp)  # imm = 0xD3ED7E6
	movl	$555555643, -104(%rbp)  # imm = 0x211D1B3B
	movl	$444444532, -100(%rbp)  # imm = 0x1A7DAF74
	movl	$222222310, %edi        # imm = 0xD3ED7E6
	movl	$555555643, %esi        # imm = 0x211D1B3B
	movl	$444444532, %edx        # imm = 0x1A7DAF74
	callq	guardMe
	movl	$222222309, -96(%rbp)   # imm = 0xD3ED7E5
	movl	$555555642, -92(%rbp)   # imm = 0x211D1B3A
	movl	$444444531, -88(%rbp)   # imm = 0x1A7DAF73
	movl	$222222309, %edi        # imm = 0xD3ED7E5
	movl	$555555642, %esi        # imm = 0x211D1B3A
	movl	$444444531, %edx        # imm = 0x1A7DAF73
	callq	guardMe
	movl	$222222308, -84(%rbp)   # imm = 0xD3ED7E4
	movl	$555555641, -80(%rbp)   # imm = 0x211D1B39
	movl	$444444530, -76(%rbp)   # imm = 0x1A7DAF72
	movl	$222222308, %edi        # imm = 0xD3ED7E4
	movl	$555555641, %esi        # imm = 0x211D1B39
	movl	$444444530, %edx        # imm = 0x1A7DAF72
	callq	guardMe
	movl	$222222307, -72(%rbp)   # imm = 0xD3ED7E3
	movl	$555555640, -68(%rbp)   # imm = 0x211D1B38
	movl	$444444529, -64(%rbp)   # imm = 0x1A7DAF71
	movl	$222222307, %edi        # imm = 0xD3ED7E3
	movl	$555555640, %esi        # imm = 0x211D1B38
	movl	$444444529, %edx        # imm = 0x1A7DAF71
	callq	guardMe
	movl	$222222306, -60(%rbp)   # imm = 0xD3ED7E2
	movl	$555555639, -56(%rbp)   # imm = 0x211D1B37
	movl	$444444528, -52(%rbp)   # imm = 0x1A7DAF70
	movl	$222222306, %edi        # imm = 0xD3ED7E2
	movl	$555555639, %esi        # imm = 0x211D1B37
	movl	$444444528, %edx        # imm = 0x1A7DAF70
	callq	guardMe
	movq	%rbx, -32(%rbp)
	leaq	-40(%rbp), %rbx
	leaq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	callq	my_getline0
	leaq	-20(%rbp), %r14
	jmp	.LBB225_1
	.p2align	4, 0x90
.LBB225_2:                              # %if.then
                                        #   in Loop: Header=BB225_1 Depth=1
	movq	%r14, %rdi
	callq	my_getline1
	callq	backup
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	my_getline2
.LBB225_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB225_13 Depth 2
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
	andl	$127, %eax
	movl	%eax, -20(%rbp)
	cmpl	$92, %eax
	je	.LBB225_2
# %bb.3:                                # %if.else
                                        #   in Loop: Header=BB225_1 Depth=1
	cmpl	$7, -20(%rbp)
	je	.LBB225_4
# %bb.5:                                # %if.else10
                                        #   in Loop: Header=BB225_1 Depth=1
	cmpl	$10, -20(%rbp)
	je	.LBB225_7
# %bb.6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB225_1 Depth=1
	cmpl	$13, -20(%rbp)
	je	.LBB225_7
# %bb.9:                                # %if.else16
                                        #   in Loop: Header=BB225_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	uerasechar(%rip), %eax
	jne	.LBB225_12
# %bb.10:                               # %if.then19
                                        #   in Loop: Header=BB225_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB225_1
# %bb.11:                               # %if.then22
                                        #   in Loop: Header=BB225_1 Depth=1
	movq	%rbx, %rdi
	callq	my_getline4
	callq	backup
	movl	$32, %edi
	callq	putchar
	callq	backup
	jmp	.LBB225_1
	.p2align	4, 0x90
.LBB225_12:                             # %if.else25
                                        #   in Loop: Header=BB225_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	ukillchar(%rip), %eax
	je	.LBB225_13
# %bb.15:                               # %if.else33
                                        #   in Loop: Header=BB225_1 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	my_getline6
	jmp	.LBB225_1
	.p2align	4, 0x90
.LBB225_14:                             # %while.body
                                        #   in Loop: Header=BB225_13 Depth=2
	movq	%rbx, %rdi
	callq	my_getline5
	callq	backup
	movl	$32, %edi
	callq	putchar
	callq	backup
.LBB225_13:                             # %while.cond
                                        #   Parent Loop BB225_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB225_14
	jmp	.LBB225_1
.LBB225_7:                              # %if.then15
	leaq	-48(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	my_getline3
	jmp	.LBB225_8
.LBB225_4:                              # %if.then9
	movq	$0, -48(%rbp)
.LBB225_8:                              # %return
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end225:
	.size	my_getline, .Lfunc_end225-my_getline
	.cfi_endproc
                                        # -- End function
	.globl	correct18               # -- Begin function correct18
	.p2align	4, 0x90
	.type	correct18,@function
correct18:                              # @correct18
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end226:
	.size	correct18, .Lfunc_end226-correct18
	.cfi_endproc
                                        # -- End function
	.globl	correct19               # -- Begin function correct19
	.p2align	4, 0x90
	.type	correct19,@function
correct19:                              # @correct19
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$7, %edi
	callq	putchar
	movl	$.L.str.32.261, %edi
	movl	$.L.str.25.254, %esi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end227:
	.size	correct19, .Lfunc_end227-correct19
	.cfi_endproc
                                        # -- End function
	.globl	correct20               # -- Begin function correct20
	.p2align	4, 0x90
	.type	correct20,@function
correct20:                              # @correct20
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 16(%rsp)
	movl	$7, %edi
	callq	putchar
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	movl	12(%rsp), %edx
	xorl	%ecx, %ecx
	callq	ichartostr
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end228:
	.size	correct20, .Lfunc_end228-correct20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function inserttoken
	.type	inserttoken,@function
inserttoken:                            # @inserttoken
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$222222312, -112(%rbp)  # imm = 0xD3ED7E8
	movl	$555555645, -108(%rbp)  # imm = 0x211D1B3D
	movl	$444444534, -104(%rbp)  # imm = 0x1A7DAF76
	movl	$222222312, %edi        # imm = 0xD3ED7E8
	movl	$555555645, %esi        # imm = 0x211D1B3D
	movl	$444444534, %edx        # imm = 0x1A7DAF76
	callq	guardMe
	movl	$222222311, -100(%rbp)  # imm = 0xD3ED7E7
	movl	$555555644, -96(%rbp)   # imm = 0x211D1B3C
	movl	$444444533, -92(%rbp)   # imm = 0x1A7DAF75
	movl	$222222311, %edi        # imm = 0xD3ED7E7
	movl	$555555644, %esi        # imm = 0x211D1B3C
	movl	$444444533, %edx        # imm = 0x1A7DAF75
	callq	guardMe
	movq	%rbx, -88(%rbp)
	movq	%r12, -72(%rbp)
	movq	%r15, -48(%rbp)
	movq	%r14, -64(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-88(%rbp), %rsi
	leaq	-56(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	inserttoken0
	jmp	.LBB229_1
	.p2align	4, 0x90
.LBB229_2:                              # %for.inc
                                        #   in Loop: Header=BB229_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	inserttoken1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	inserttoken2
.LBB229_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB229_2
# %bb.3:                                # %for.end
	leaq	-80(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %r14
	movq	%r14, %r8
	callq	inserttoken3
	leaq	-40(%rbp), %rbx
	jmp	.LBB229_4
	.p2align	4, 0x90
.LBB229_5:                              # %while.body
                                        #   in Loop: Header=BB229_4 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	inserttoken4
.LBB229_4:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.LBB229_5
# %bb.6:                                # %while.end
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB229_10
# %bb.7:                                # %if.then
	leaq	-40(%rbp), %r14
	leaq	-48(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	inserttoken5
	jmp	.LBB229_8
	.p2align	4, 0x90
.LBB229_9:                              # %while.body11
                                        #   in Loop: Header=BB229_8 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	inserttoken6
.LBB229_8:                              # %while.cond9
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB229_9
	.p2align	4, 0x90
.LBB229_10:                             # %while.cond15
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
	testb	%al, %al
	jne	.LBB229_10
# %bb.11:                               # %while.end21
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end229:
	.size	inserttoken, .Lfunc_end229-inserttoken
	.cfi_endproc
                                        # -- End function
	.globl	correct21               # -- Begin function correct21
	.p2align	4, 0x90
	.type	correct21,@function
correct21:                              # @correct21
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	$7, %edi
	callq	putchar
	movq	8(%rsp), %rsi
	movl	$.L.str.34.263, %edi
	movl	$484, %edx              # imm = 0x1E4
	movl	$.L.str.35.264, %ecx
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end230:
	.size	correct21, .Lfunc_end230-correct21
	.cfi_endproc
                                        # -- End function
	.globl	correct22               # -- Begin function correct22
	.p2align	4, 0x90
	.type	correct22,@function
correct22:                              # @correct22
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	leal	(%rcx,%rcx,4), %ecx
	leal	-48(%rax,%rcx,2), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end231:
	.size	correct22, .Lfunc_end231-correct22
	.cfi_endproc
                                        # -- End function
	.globl	correct23               # -- Begin function correct23
	.p2align	4, 0x90
	.type	correct23,@function
correct23:                              # @correct23
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 16(%rsp)
	movslq	12(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rsi
	callq	strcpy
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end232:
	.size	correct23, .Lfunc_end232-correct23
	.cfi_endproc
                                        # -- End function
	.globl	correct24               # -- Begin function correct24
	.p2align	4, 0x90
	.type	correct24,@function
correct24:                              # @correct24
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	(%rdx), %rsi
	movq	%rsi, 8(%rsp)
	movl	$contextbufs, %edi
	movq	%rax, %rdx
	callq	inserttoken
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end233:
	.size	correct24, .Lfunc_end233-correct24
	.cfi_endproc
                                        # -- End function
	.globl	correct25               # -- Begin function correct25
	.p2align	4, 0x90
	.type	correct25,@function
correct25:                              # @correct25
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	li(%rip), %edi
	decl	%edi
	xorl	%esi, %esi
	callq	move
	movl	$7, %edi
	callq	putchar
	movl	$.L.str.36.265, %edi
	movl	$.L.str.25.254, %esi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	popq	%rax
	retq
.Lfunc_end234:
	.size	correct25, .Lfunc_end234-correct25
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lookharder
	.type	lookharder,@function
lookharder:                             # @lookharder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222314, -72(%rbp)   # imm = 0xD3ED7EA
	movl	$555555647, -68(%rbp)   # imm = 0x211D1B3F
	movl	$444444536, -64(%rbp)   # imm = 0x1A7DAF78
	movl	$222222314, %edi        # imm = 0xD3ED7EA
	movl	$555555647, %esi        # imm = 0x211D1B3F
	movl	$444444536, %edx        # imm = 0x1A7DAF78
	callq	guardMe
	movl	$222222313, -60(%rbp)   # imm = 0xD3ED7E9
	movl	$555555646, -56(%rbp)   # imm = 0x211D1B3E
	movl	$444444535, -52(%rbp)   # imm = 0x1A7DAF77
	movl	$222222313, %edi        # imm = 0xD3ED7E9
	movl	$555555646, %esi        # imm = 0x211D1B3E
	movl	$444444535, %edx        # imm = 0x1A7DAF77
	callq	guardMe
	movq	%rbx, -80(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movl	$0, -28(%rbp)
	leaq	-48(%rbp), %r15
	leaq	-28(%rbp), %r14
	leaq	-40(%rbp), %rbx
	jmp	.LBB235_1
	.p2align	4, 0x90
.LBB235_5:                              # %for.inc
                                        #   in Loop: Header=BB235_1 Depth=1
	movq	%rbx, %rdi
	callq	lookharder2
.LBB235_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB235_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB235_1 Depth=1
	movq	-40(%rbp), %rax
	cmpb	$42, (%rax)
	jne	.LBB235_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB235_1 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	lookharder0
	jmp	.LBB235_5
	.p2align	4, 0x90
.LBB235_4:                              # %if.else
                                        #   in Loop: Header=BB235_1 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lookharder1
	jmp	.LBB235_5
.LBB235_6:                              # %for.end
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	cmpb	$0, -192(%rbp)
	je	.LBB235_14
# %bb.7:                                # %if.then8
	cmpl	$0, -28(%rbp)
	je	.LBB235_8
.LBB235_11:                             # %if.end20
	cmpl	$0, -28(%rbp)
	jne	.LBB235_13
.LBB235_12:                             # %if.then22
	leaq	-192(%rbp), %rdi
	movl	$.L.str.83.270, %esi
	callq	strcat
.LBB235_13:                             # %if.end25
	leaq	-352(%rbp), %rbx
	leaq	-192(%rbp), %rcx
	movl	$.L.str.84.271, %esi
	movl	$.L.str.85.272, %edx
	movl	$.L.str.82.269, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	%rbx, %rdi
	callq	shellescape
.LBB235_14:                             # %if.end31
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB235_8:                              # %land.lhs.true
	cmpl	$0, lookharder.look(%rip)
	je	.LBB235_11
# %bb.9:                                # %if.then11
	leaq	-352(%rbp), %rbx
	leaq	-192(%rbp), %rcx
	movl	$.L.str.80.267, %esi
	movl	$.L.str.81.268, %edx
	movl	$.L.str.82.269, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	%rbx, %rdi
	callq	shellescape
	testl	%eax, %eax
	jne	.LBB235_14
# %bb.10:                               # %if.else18
	movl	$0, lookharder.look(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB235_13
	jmp	.LBB235_12
.Lfunc_end235:
	.size	lookharder, .Lfunc_end235-lookharder
	.cfi_endproc
                                        # -- End function
	.globl	correct26               # -- Begin function correct26
	.p2align	4, 0x90
	.type	correct26,@function
correct26:                              # @correct26
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rax
	retq
.Lfunc_end236:
	.size	correct26, .Lfunc_end236-correct26
	.cfi_endproc
                                        # -- End function
	.globl	lookharder0             # -- Begin function lookharder0
	.p2align	4, 0x90
	.type	lookharder0,@function
lookharder0:                            # @lookharder0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -20(%rsp)
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movb	$46, (%rax)
	movq	-32(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movb	$42, (%rax)
	movq	-16(%rsp), %rax
	movl	-20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end237:
	.size	lookharder0, .Lfunc_end237-lookharder0
	.cfi_endproc
                                        # -- End function
	.globl	lookharder1             # -- Begin function lookharder1
	.p2align	4, 0x90
	.type	lookharder1,@function
lookharder1:                            # @lookharder1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -24(%rsp)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end238:
	.size	lookharder1, .Lfunc_end238-lookharder1
	.cfi_endproc
                                        # -- End function
	.globl	lookharder2             # -- Begin function lookharder2
	.p2align	4, 0x90
	.type	lookharder2,@function
lookharder2:                            # @lookharder2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end239:
	.size	lookharder2, .Lfunc_end239-lookharder2
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken0            # -- Begin function inserttoken0
	.p2align	4, 0x90
	.type	inserttoken0,@function
inserttoken0:                           # @inserttoken0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$8240, %rsp             # imm = 0x2030
	.cfi_def_cfa_offset 8256
	.cfi_offset %rbx, -16
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 32(%rsp)
	movq	(%rsi), %rsi
	movq	%rsi, (%rsp)
	movq	%rdx, 24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	24(%rsp), %rax
	movq	%rbx, (%rax)
	movq	32(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8240, %rsp             # imm = 0x2030
	popq	%rbx
	retq
.Lfunc_end240:
	.size	inserttoken0, .Lfunc_end240-inserttoken0
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken1            # -- Begin function inserttoken1
	.p2align	4, 0x90
	.type	inserttoken1,@function
inserttoken1:                           # @inserttoken1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movb	(%rcx), %cl
	movb	%cl, (%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end241:
	.size	inserttoken1, .Lfunc_end241-inserttoken1
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken2            # -- Begin function inserttoken2
	.p2align	4, 0x90
	.type	inserttoken2,@function
inserttoken2:                           # @inserttoken2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	incq	%rcx
	movq	%rcx, -16(%rsp)
	incq	%rax
	movq	%rax, -32(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end242:
	.size	inserttoken2, .Lfunc_end242-inserttoken2
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken3            # -- Begin function inserttoken3
	.p2align	4, 0x90
	.type	inserttoken3,@function
inserttoken3:                           # @inserttoken3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 80(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 72(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%r8, 32(%rsp)
	movq	(%r8), %rdi
	movq	%rdi, 24(%rsp)
	movq	(%rax), %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, 8(%rsp)
	callq	skipoverword
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	80(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$88, %rsp
	retq
.Lfunc_end243:
	.size	inserttoken3, .Lfunc_end243-inserttoken3
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken4            # -- Begin function inserttoken4
	.p2align	4, 0x90
	.type	inserttoken4,@function
inserttoken4:                           # @inserttoken4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -24(%rsp)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end244:
	.size	inserttoken4, .Lfunc_end244-inserttoken4
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken5            # -- Begin function inserttoken5
	.p2align	4, 0x90
	.type	inserttoken5,@function
inserttoken5:                           # @inserttoken5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rsp)
	movb	%cl, (%rax)
	movq	-32(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movb	$0, (%rax)
	movq	-16(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end245:
	.size	inserttoken5, .Lfunc_end245-inserttoken5
	.cfi_endproc
                                        # -- End function
	.globl	inserttoken6            # -- Begin function inserttoken6
	.p2align	4, 0x90
	.type	inserttoken6,@function
inserttoken6:                           # @inserttoken6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -24(%rsp)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end246:
	.size	inserttoken6, .Lfunc_end246-inserttoken6
	.cfi_endproc
                                        # -- End function
	.globl	skipoverword            # -- Begin function skipoverword
	.p2align	4, 0x90
	.type	skipoverword,@function
skipoverword:                           # @skipoverword
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222364, -92(%rbp)   # imm = 0xD3ED81C
	movl	$555555697, -88(%rbp)   # imm = 0x211D1B71
	movl	$444444586, -84(%rbp)   # imm = 0x1A7DAFAA
	movl	$222222364, %edi        # imm = 0xD3ED81C
	movl	$555555697, %esi        # imm = 0x211D1B71
	movl	$444444586, %edx        # imm = 0x1A7DAFAA
	callq	guardMe
	movl	$222222363, -80(%rbp)   # imm = 0xD3ED81B
	movl	$555555696, -76(%rbp)   # imm = 0x211D1B70
	movl	$444444585, -72(%rbp)   # imm = 0x1A7DAFA9
	movl	$222222363, %edi        # imm = 0xD3ED81B
	movl	$555555696, %esi        # imm = 0x211D1B70
	movl	$444444585, %edx        # imm = 0x1A7DAFA9
	callq	guardMe
	movl	$222222362, -68(%rbp)   # imm = 0xD3ED81A
	movl	$555555695, -64(%rbp)   # imm = 0x211D1B6F
	movl	$444444584, -60(%rbp)   # imm = 0x1A7DAFA8
	movl	$222222362, %edi        # imm = 0xD3ED81A
	movl	$555555695, %esi        # imm = 0x211D1B6F
	movl	$444444584, %edx        # imm = 0x1A7DAFA8
	callq	guardMe
	movl	$222222361, -56(%rbp)   # imm = 0xD3ED819
	movl	$555555694, -52(%rbp)   # imm = 0x211D1B6E
	movl	$444444583, -48(%rbp)   # imm = 0x1A7DAFA7
	movl	$222222361, %edi        # imm = 0xD3ED819
	movl	$555555694, %esi        # imm = 0x211D1B6E
	movl	$444444583, %edx        # imm = 0x1A7DAFA7
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	-32(%rbp), %rbx
	leaq	-44(%rbp), %r14
	leaq	-40(%rbp), %r15
	jmp	.LBB247_1
	.p2align	4, 0x90
.LBB247_8:                              # %if.then7
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	skipoverword1
	movq	$0, -40(%rbp)
.LBB247_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB247_2
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1894(%rax)
	je	.LBB247_9
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	stringcharlen
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	jg	.LBB247_8
.LBB247_9:                              # %if.else8
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+982(%rax)
	je	.LBB247_11
# %bb.10:                               # %if.then12
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	%rbx, %rdi
	callq	skipoverword2
	movq	$0, -40(%rbp)
	jmp	.LBB247_1
	.p2align	4, 0x90
.LBB247_11:                             # %if.else13
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1666(%rax)
	je	.LBB247_4
# %bb.12:                               # %if.then17
                                        #   in Loop: Header=BB247_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB247_13
# %bb.14:                               # %if.else21
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	cmpq	%rax, -40(%rbp)
	jne	.LBB247_15
	jmp	.LBB247_4
.LBB247_13:                             # %if.then20
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	skipoverword3
.LBB247_15:                             # %if.end27
                                        #   in Loop: Header=BB247_1 Depth=1
	movq	%rbx, %rdi
	callq	skipoverword4
	jmp	.LBB247_1
.LBB247_2:                              # %if.then
	cmpl	$0, TeX_comment(%rip)
	je	.LBB247_4
# %bb.3:                                # %if.then2
	callq	skipoverword0
.LBB247_4:                              # %for.end
	cmpq	$0, -40(%rbp)
	je	.LBB247_16
# %bb.5:                                # %cond.true
	movq	-40(%rbp), %rax
	jmp	.LBB247_17
.LBB247_16:                             # %cond.false
	movq	-32(%rbp), %rax
.LBB247_17:                             # %cond.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end247:
	.size	skipoverword, .Lfunc_end247-skipoverword
	.cfi_endproc
                                        # -- End function
	.globl	skipoverword0           # -- Begin function skipoverword0
	.p2align	4, 0x90
	.type	skipoverword0,@function
skipoverword0:                          # @skipoverword0
	.cfi_startproc
# %bb.0:                                # %entry
	movl	save_math_mode(%rip), %eax
	movl	%eax, math_mode(%rip)
	movb	save_LaTeX_Mode(%rip), %al
	movb	%al, LaTeX_Mode(%rip)
	movl	$0, TeX_comment(%rip)
	retq
.Lfunc_end248:
	.size	skipoverword0, .Lfunc_end248-skipoverword0
	.cfi_endproc
                                        # -- End function
	.globl	skipoverword1           # -- Begin function skipoverword1
	.p2align	4, 0x90
	.type	skipoverword1,@function
skipoverword1:                          # @skipoverword1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movslq	-28(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rsp)
	movl	%ecx, (%rsi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end249:
	.size	skipoverword1, .Lfunc_end249-skipoverword1
	.cfi_endproc
                                        # -- End function
	.globl	skipoverword2           # -- Begin function skipoverword2
	.p2align	4, 0x90
	.type	skipoverword2,@function
skipoverword2:                          # @skipoverword2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end250:
	.size	skipoverword2, .Lfunc_end250-skipoverword2
	.cfi_endproc
                                        # -- End function
	.globl	skipoverword3           # -- Begin function skipoverword3
	.p2align	4, 0x90
	.type	skipoverword3,@function
skipoverword3:                          # @skipoverword3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end251:
	.size	skipoverword3, .Lfunc_end251-skipoverword3
	.cfi_endproc
                                        # -- End function
	.globl	skipoverword4           # -- Begin function skipoverword4
	.p2align	4, 0x90
	.type	skipoverword4,@function
skipoverword4:                          # @skipoverword4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end252:
	.size	skipoverword4, .Lfunc_end252-skipoverword4
	.cfi_endproc
                                        # -- End function
	.globl	my_getline0             # -- Begin function my_getline0
	.p2align	4, 0x90
	.type	my_getline0,@function
my_getline0:                            # @my_getline0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end253:
	.size	my_getline0, .Lfunc_end253-my_getline0
	.cfi_endproc
                                        # -- End function
	.globl	my_getline1             # -- Begin function my_getline1
	.p2align	4, 0x90
	.type	my_getline1,@function
my_getline1:                            # @my_getline1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movl	$92, %edi
	callq	putchar
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
	andl	$127, %eax
	movl	%eax, 12(%rsp)
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end254:
	.size	my_getline1, .Lfunc_end254-my_getline1
	.cfi_endproc
                                        # -- End function
	.globl	my_getline2             # -- Begin function my_getline2
	.p2align	4, 0x90
	.type	my_getline2,@function
my_getline2:                            # @my_getline2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %edi
	movl	%edi, 12(%rsp)
	callq	putchar
	movb	12(%rsp), %al
	movq	16(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movb	%al, (%rcx)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end255:
	.size	my_getline2, .Lfunc_end255-my_getline2
	.cfi_endproc
                                        # -- End function
	.globl	my_getline3             # -- Begin function my_getline3
	.p2align	4, 0x90
	.type	my_getline3,@function
my_getline3:                            # @my_getline3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -48(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -32(%rsp)
	movb	$0, (%rax)
	movq	-48(%rsp), %rax
	movq	%rax, -40(%rsp)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end256:
	.size	my_getline3, .Lfunc_end256-my_getline3
	.cfi_endproc
                                        # -- End function
	.globl	my_getline4             # -- Begin function my_getline4
	.p2align	4, 0x90
	.type	my_getline4,@function
my_getline4:                            # @my_getline4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	decq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end257:
	.size	my_getline4, .Lfunc_end257-my_getline4
	.cfi_endproc
                                        # -- End function
	.globl	my_getline5             # -- Begin function my_getline5
	.p2align	4, 0x90
	.type	my_getline5,@function
my_getline5:                            # @my_getline5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	decq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end258:
	.size	my_getline5, .Lfunc_end258-my_getline5
	.cfi_endproc
                                        # -- End function
	.globl	my_getline6             # -- Begin function my_getline6
	.p2align	4, 0x90
	.type	my_getline6,@function
my_getline6:                            # @my_getline6
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, 12(%rsp)
	movb	12(%rsp), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsp)
	movb	%cl, (%rax)
	movl	12(%rsp), %edi
	callq	putchar
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end259:
	.size	my_getline6, .Lfunc_end259-my_getline6
	.cfi_endproc
                                        # -- End function
	.globl	givehelp0               # -- Begin function givehelp0
	.p2align	4, 0x90
	.type	givehelp0,@function
givehelp0:                              # @givehelp0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	callq	erase
	movq	stdout(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end260:
	.size	givehelp0, .Lfunc_end260-givehelp0
	.cfi_endproc
                                        # -- End function
	.globl	givehelp1               # -- Begin function givehelp1
	.p2align	4, 0x90
	.type	givehelp1,@function
givehelp1:                              # @givehelp1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	stderr(%rip), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end261:
	.size	givehelp1, .Lfunc_end261-givehelp1
	.cfi_endproc
                                        # -- End function
	.globl	givehelp2               # -- Begin function givehelp2
	.p2align	4, 0x90
	.type	givehelp2,@function
givehelp2:                              # @givehelp2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.20.210, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str.21.211, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rsp), %rdi
	callq	fflush
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end262:
	.size	givehelp2, .Lfunc_end262-givehelp2
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert0             # -- Begin function treeinsert0
	.p2align	4, 0x90
	.type	treeinsert0,@function
treeinsert0:                            # @treeinsert0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -32(%rsp)
	movq	%rdx, -8(%rsp)
	movl	pershsize(%rip), %eax
	movl	%eax, -12(%rsp)
	movq	pershtab(%rip), %rcx
	movq	%rcx, -40(%rsp)
	movl	$0, -44(%rsp)
	movl	%eax, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end263:
	.size	treeinsert0, .Lfunc_end263-treeinsert0
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert1             # -- Begin function treeinsert1
	.p2align	4, 0x90
	.type	treeinsert1,@function
treeinsert1:                            # @treeinsert1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end264:
	.size	treeinsert1, .Lfunc_end264-treeinsert1
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert2             # -- Begin function treeinsert2
	.p2align	4, 0x90
	.type	treeinsert2,@function
treeinsert2:                            # @treeinsert2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	pershsize(%rip), %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, pershsize(%rip)
	retq
.Lfunc_end265:
	.size	treeinsert2, .Lfunc_end265-treeinsert2
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert3             # -- Begin function treeinsert3
	.p2align	4, 0x90
	.type	treeinsert3,@function
treeinsert3:                            # @treeinsert3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movslq	-12(%rsp), %rax
	movl	goodsizes(,%rax,4), %ecx
	movl	%ecx, pershsize(%rip)
	movl	%eax, (%rdi)
	retq
.Lfunc_end266:
	.size	treeinsert3, .Lfunc_end266-treeinsert3
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert4             # -- Begin function treeinsert4
	.p2align	4, 0x90
	.type	treeinsert4,@function
treeinsert4:                            # @treeinsert4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.13.434, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, cantexpand(%rip)
	movl	12(%rsp), %eax
	movl	%eax, pershsize(%rip)
	movq	16(%rsp), %rcx
	movq	%rcx, pershtab(%rip)
	movl	$1, newwords(%rip)
	movq	24(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end267:
	.size	treeinsert4, .Lfunc_end267-treeinsert4
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert5             # -- Begin function treeinsert5
	.p2align	4, 0x90
	.type	treeinsert5,@function
treeinsert5:                            # @treeinsert5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 16(%rsp)
	callq	tinsert
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	movl	$1073741824, %ecx       # imm = 0x40000000
	andl	16(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	40(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end268:
	.size	treeinsert5, .Lfunc_end268-treeinsert5
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert6             # -- Begin function treeinsert6
	.p2align	4, 0x90
	.type	treeinsert6,@function
treeinsert6:                            # @treeinsert6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rsp)
	movq	%rdx, -24(%rsp)
	movl	(%rdx), %edx
	movl	%edx, -60(%rsp)
	movq	%rcx, -32(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rsp)
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	16(%rcx), %edx
	movl	%edx, -60(%rsp)
	movq	(%rax), %rdx
	movq	%rdx, -48(%rsp)
	movq	%rcx, (%rax)
	movq	-56(%rsp), %rax
	movq	%rax, -40(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -56(%rsp)
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-60(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end269:
	.size	treeinsert6, .Lfunc_end269-treeinsert6
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert7             # -- Begin function treeinsert7
	.p2align	4, 0x90
	.type	treeinsert7,@function
treeinsert7:                            # @treeinsert7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, 56(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 48(%rsp)
	movl	(%rdx), %eax
	movl	%eax, 12(%rsp)
	movq	%rcx, 40(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movl	$1073741824, %eax       # imm = 0x40000000
	andl	16(%rdi), %eax
	movl	%eax, 12(%rsp)
	callq	tinsert
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	callq	free
	movq	48(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	56(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$72, %rsp
	retq
.Lfunc_end270:
	.size	treeinsert7, .Lfunc_end270-treeinsert7
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert8             # -- Begin function treeinsert8
	.p2align	4, 0x90
	.type	treeinsert8,@function
treeinsert8:                            # @treeinsert8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end271:
	.size	treeinsert8, .Lfunc_end271-treeinsert8
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert9             # -- Begin function treeinsert9
	.p2align	4, 0x90
	.type	treeinsert9,@function
treeinsert9:                            # @treeinsert9
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	free
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end272:
	.size	treeinsert9, .Lfunc_end272-treeinsert9
	.cfi_endproc
                                        # -- End function
	.globl	makedent                # -- Begin function makedent
	.p2align	4, 0x90
	.type	makedent,@function
makedent:                               # @makedent
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$222222440, -116(%rbp)  # imm = 0xD3ED868
	movl	$555555773, -112(%rbp)  # imm = 0x211D1BBD
	movl	$444444662, -108(%rbp)  # imm = 0x1A7DAFF6
	movl	$222222440, %edi        # imm = 0xD3ED868
	movl	$555555773, %esi        # imm = 0x211D1BBD
	movl	$444444662, %edx        # imm = 0x1A7DAFF6
	callq	guardMe
	movl	$222222439, -104(%rbp)  # imm = 0xD3ED867
	movl	$555555772, -100(%rbp)  # imm = 0x211D1BBC
	movl	$444444661, -96(%rbp)   # imm = 0x1A7DAFF5
	movl	$222222439, %edi        # imm = 0xD3ED867
	movl	$555555772, %esi        # imm = 0x211D1BBC
	movl	$444444661, %edx        # imm = 0x1A7DAFF5
	callq	guardMe
	movl	$222222438, -92(%rbp)   # imm = 0xD3ED866
	movl	$555555771, -88(%rbp)   # imm = 0x211D1BBB
	movl	$444444660, -84(%rbp)   # imm = 0x1A7DAFF4
	movl	$222222438, %edi        # imm = 0xD3ED866
	movl	$555555771, %esi        # imm = 0x211D1BBB
	movl	$444444660, %edx        # imm = 0x1A7DAFF4
	callq	guardMe
	movq	%rbx, -48(%rbp)
	movl	%r15d, -80(%rbp)
	movq	%r14, -40(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpb	$10, (%rcx,%rax)
	jne	.LBB273_2
# %bb.1:                                # %if.then
	leaq	-48(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	callq	makedent0
.LBB273_2:                              # %if.end
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	orq	$67108864, 16(%rax)     # imm = 0x4000000
	movq	-40(%rbp), %rax
	andq	$-134217729, 16(%rax)   # imm = 0xF7FFFFFF
	movq	-48(%rbp), %rdi
	movsbl	hashheader+68(%rip), %esi
	callq	index
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB273_4
# %bb.3:                                # %if.then15
	leaq	-64(%rbp), %rdi
	callq	makedent1
.LBB273_4:                              # %if.end16
	movq	-48(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	movl	$100, %edx
	movl	$1, %ecx
	callq	strtoichar
	testl	%eax, %eax
	jne	.LBB273_6
# %bb.5:                                # %lor.lhs.false
	movq	-48(%rbp), %rdi
	movl	-80(%rbp), %edx
	leaq	-240(%rbp), %r14
	movl	$1, %ecx
	movq	%r14, %rsi
	callq	ichartostr
	testl	%eax, %eax
	je	.LBB273_9
.LBB273_6:                              # %if.then22
	leaq	-48(%rbp), %rdi
	callq	makedent2
.LBB273_7:                              # %return
	movl	$-1, -28(%rbp)
.LBB273_8:                              # %return
	movl	-28(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB273_9:                              # %if.end24
	movq	%r14, -72(%rbp)
	leaq	-72(%rbp), %rbx
	jmp	.LBB273_11
	.p2align	4, 0x90
.LBB273_10:                             # %for.inc
                                        #   in Loop: Header=BB273_11 Depth=1
	movq	%rbx, %rdi
	callq	makedent4
.LBB273_11:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB273_17
# %bb.12:                               # %for.body
                                        #   in Loop: Header=BB273_11 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+982(%rax)
	jne	.LBB273_10
# %bb.13:                               # %if.then32
                                        #   in Loop: Header=BB273_11 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1666(%rax)
	je	.LBB273_16
# %bb.14:                               # %lor.lhs.false36
                                        #   in Loop: Header=BB273_11 Depth=1
	cmpq	%r14, -72(%rbp)
	je	.LBB273_16
# %bb.15:                               # %lor.lhs.false40
                                        #   in Loop: Header=BB273_11 Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB273_10
.LBB273_16:                             # %if.then45
	leaq	-48(%rbp), %rdi
	callq	makedent3
	jmp	.LBB273_7
.LBB273_17:                             # %for.end
	movq	-48(%rbp), %rdi
	callq	strlen
	movl	%eax, -52(%rbp)
	leaq	-240(%rbp), %rdi
	callq	whatcap
	movq	-40(%rbp), %rcx
	orq	%rax, 16(%rcx)
	cmpl	$100, -52(%rbp)
	jl	.LBB273_19
# %bb.18:                               # %if.then58
	leaq	-48(%rbp), %rdi
	callq	makedent5
	jmp	.LBB273_7
.LBB273_19:                             # %if.end60
	movl	-52(%rbp), %edi
	addl	$1, %edi
	callq	mymalloc
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB273_34
# %bb.20:                               # %if.end67
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	strcpy
	movq	-40(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	je	.LBB273_22
# %bb.21:                               # %if.then75
	leaq	-40(%rbp), %rdi
	callq	makedent7
.LBB273_22:                             # %if.end77
	cmpq	$0, -64(%rbp)
	je	.LBB273_33
# %bb.23:                               # %if.end81
	addq	$1, -64(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-76(%rbp), %r15
	leaq	-64(%rbp), %rbx
	jmp	.LBB273_25
	.p2align	4, 0x90
.LBB273_24:                             # %if.then107
                                        #   in Loop: Header=BB273_25 Depth=1
	movq	%rbx, %rdi
	callq	makedent10
.LBB273_25:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB273_27
# %bb.26:                               # %land.rhs
                                        #   in Loop: Header=BB273_25 Depth=1
	movq	-64(%rbp), %rax
	cmpb	$10, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB273_28
	jmp	.LBB273_33
.LBB273_27:                             #   in Loop: Header=BB273_25 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB273_33
.LBB273_28:                             # %while.body
                                        #   in Loop: Header=BB273_25 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	addl	$-65, %eax
	movl	%eax, -76(%rbp)
	js	.LBB273_31
# %bb.29:                               # %land.lhs.true
                                        #   in Loop: Header=BB273_25 Depth=1
	cmpl	$26, -76(%rbp)
	jg	.LBB273_31
# %bb.30:                               # %if.then95
                                        #   in Loop: Header=BB273_25 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	makedent8
	jmp	.LBB273_32
	.p2align	4, 0x90
.LBB273_31:                             # %if.else
                                        #   in Loop: Header=BB273_25 Depth=1
	movq	%rbx, %rdi
	callq	makedent9
.LBB273_32:                             # %if.end101
                                        #   in Loop: Header=BB273_25 Depth=1
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movsbl	1(%rax), %eax
	movsbl	hashheader+68(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB273_25
	jmp	.LBB273_24
.LBB273_33:                             # %while.end
	movl	$0, -28(%rbp)
	jmp	.LBB273_8
.LBB273_34:                             # %if.then65
	leaq	-48(%rbp), %rdi
	callq	makedent6
	jmp	.LBB273_7
.Lfunc_end273:
	.size	makedent, .Lfunc_end273-makedent
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert10            # -- Begin function treeinsert10
	.p2align	4, 0x90
	.type	treeinsert10,@function
treeinsert10:                           # @treeinsert10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	$134217728, %edx        # imm = 0x8000000
	orq	16(%rdi), %rdx
	movq	%rcx, -24(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rdx, -16(%rsp)
	movq	%rcx, 8(%rdi)
	movq	%rax, (%rdi)
	movq	%rdx, 16(%rdi)
	retq
.Lfunc_end274:
	.size	treeinsert10, .Lfunc_end274-treeinsert10
	.cfi_endproc
                                        # -- End function
	.globl	lookup                  # -- Begin function lookup
	.p2align	4, 0x90
	.type	lookup,@function
lookup:                                 # @lookup
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222437, -104(%rbp)  # imm = 0xD3ED865
	movl	$555555770, -100(%rbp)  # imm = 0x211D1BBA
	movl	$444444659, -96(%rbp)   # imm = 0x1A7DAFF3
	movl	$222222437, %edi        # imm = 0xD3ED865
	movl	$555555770, %esi        # imm = 0x211D1BBA
	movl	$444444659, %edx        # imm = 0x1A7DAFF3
	callq	guardMe
	movl	$222222436, -92(%rbp)   # imm = 0xD3ED864
	movl	$555555769, -88(%rbp)   # imm = 0x211D1BB9
	movl	$444444658, -84(%rbp)   # imm = 0x1A7DAFF2
	movl	$222222436, %edi        # imm = 0xD3ED864
	movl	$555555769, %esi        # imm = 0x211D1BB9
	movl	$444444658, %edx        # imm = 0x1A7DAFF2
	callq	guardMe
	movl	$222222435, -80(%rbp)   # imm = 0xD3ED863
	movl	$555555768, -76(%rbp)   # imm = 0x211D1BB8
	movl	$444444657, -72(%rbp)   # imm = 0x1A7DAFF1
	movl	$222222435, %edi        # imm = 0xD3ED863
	movl	$555555768, %esi        # imm = 0x211D1BB8
	movl	$444444657, %edx        # imm = 0x1A7DAFF1
	callq	guardMe
	movl	$222222434, -68(%rbp)   # imm = 0xD3ED862
	movl	$555555767, -64(%rbp)   # imm = 0x211D1BB7
	movl	$444444656, -60(%rbp)   # imm = 0x1A7DAFF0
	movl	$222222434, %edi        # imm = 0xD3ED862
	movl	$555555767, %esi        # imm = 0x211D1BB7
	movl	$444444656, %edx        # imm = 0x1A7DAFF0
	callq	guardMe
	movq	%rbx, -56(%rbp)
	movl	%r14d, -36(%rbp)
	movl	hashsize(%rip), %esi
	movq	%rbx, %rdi
	callq	hash
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	hashtbl(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rsi
	leaq	-224(%rbp), %rdi
	movl	$120, %edx
	movl	$1, %ecx
	callq	ichartostr
	testl	%eax, %eax
	je	.LBB275_2
# %bb.1:                                # %if.then
	movq	stderr(%rip), %rdi
	leaq	-224(%rbp), %rdx
	movl	$.L.str.10.377, %esi
	movl	$461, %ecx              # imm = 0x1CD
	movl	$.L.str.11.378, %r8d
	xorl	%eax, %eax
	callq	fprintf
.LBB275_2:                              # %if.end
	leaq	-223(%rbp), %r14
	leaq	-24(%rbp), %rbx
	cmpq	$0, -24(%rbp)
	jne	.LBB275_4
.LBB275_11:                             # %for.end
	cmpl	$0, -36(%rbp)
	je	.LBB275_13
# %bb.12:                               # %if.then22
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	callq	lookup3
	jmp	.LBB275_14
	.p2align	4, 0x90
.LBB275_10:                             # %for.inc
                                        #   in Loop: Header=BB275_4 Depth=1
	movq	%rbx, %rdi
	callq	lookup2
	cmpq	$0, -24(%rbp)
	je	.LBB275_11
.LBB275_4:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB275_8 Depth 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB275_8
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB275_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	movsbl	-224(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB275_8
# %bb.6:                                # %land.lhs.true10
                                        #   in Loop: Header=BB275_4 Depth=1
	movq	-48(%rbp), %rdi
	addq	$1, %rdi
	movq	%r14, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB275_8
	jmp	.LBB275_7
	.p2align	4, 0x90
.LBB275_9:                              # %while.body
                                        #   in Loop: Header=BB275_8 Depth=2
	movq	%rbx, %rdi
	callq	lookup1
.LBB275_8:                              # %while.cond
                                        #   Parent Loop BB275_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB275_9
	jmp	.LBB275_10
.LBB275_13:                             # %if.else
	movq	$0, -32(%rbp)
	jmp	.LBB275_14
.LBB275_7:                              # %if.then16
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	lookup0
.LBB275_14:                             # %return
	movq	-32(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end275:
	.size	lookup, .Lfunc_end275-lookup
	.cfi_endproc
                                        # -- End function
	.globl	combinecaps             # -- Begin function combinecaps
	.p2align	4, 0x90
	.type	combinecaps,@function
combinecaps:                            # @combinecaps
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222462, -96(%rbp)   # imm = 0xD3ED87E
	movl	$555555795, -92(%rbp)   # imm = 0x211D1BD3
	movl	$444444684, -88(%rbp)   # imm = 0x1A7DB00C
	movl	$222222462, %edi        # imm = 0xD3ED87E
	movl	$555555795, %esi        # imm = 0x211D1BD3
	movl	$444444684, %edx        # imm = 0x1A7DB00C
	callq	guardMe
	movl	$222222461, -84(%rbp)   # imm = 0xD3ED87D
	movl	$555555794, -80(%rbp)   # imm = 0x211D1BD2
	movl	$444444683, -76(%rbp)   # imm = 0x1A7DB00B
	movl	$222222461, %edi        # imm = 0xD3ED87D
	movl	$555555794, %esi        # imm = 0x211D1BD2
	movl	$444444683, %edx        # imm = 0x1A7DB00B
	callq	guardMe
	movl	$222222460, -72(%rbp)   # imm = 0xD3ED87C
	movl	$555555793, -68(%rbp)   # imm = 0x211D1BD1
	movl	$444444682, -64(%rbp)   # imm = 0x1A7DB00A
	movl	$222222460, %edi        # imm = 0xD3ED87C
	movl	$555555793, %esi        # imm = 0x211D1BD1
	movl	$444444682, %edx        # imm = 0x1A7DB00A
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	%r14, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	%rbx, -56(%rbp)
	movl	$1879048192, %eax       # imm = 0x70000000
	andq	16(%rbx), %rax
	cmpq	$1342177280, %rax       # imm = 0x50000000
	jne	.LBB276_3
	.p2align	4, 0x90
.LBB276_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	testb	$64, 19(%rax)
	je	.LBB276_4
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB276_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	combine_two_entries
	movl	%eax, -36(%rbp)
	testl	%eax, %eax
	je	.LBB276_1
.LBB276_4:                              # %if.end8
	cmpl	$0, -36(%rbp)
	jne	.LBB276_10
	jmp	.LBB276_5
.LBB276_3:                              # %if.else
	leaq	-36(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	callq	combinecaps0
	cmpl	$0, -36(%rbp)
	jne	.LBB276_10
.LBB276_5:                              # %if.then10
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	forcevheader
	movl	$24, %edi
	callq	mymalloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB276_6
# %bb.7:                                # %if.end15
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	$1073741824, %ecx       # imm = 0x40000000
	andq	16(%rax), %rcx
	movq	-48(%rbp), %rax
	orq	%rcx, 16(%rax)
	movq	-32(%rbp), %rax
	orq	$1073741824, 16(%rax)   # imm = 0x40000000
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	combineaffixes
	movq	-24(%rbp), %rax
	movl	$134217728, %ecx        # imm = 0x8000000
	andq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	orq	%rcx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	jne	.LBB276_9
# %bb.8:                                # %if.then37
	leaq	-48(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	combinecaps2
	jmp	.LBB276_10
.LBB276_6:                              # %if.then13
	leaq	-24(%rbp), %rdi
	callq	combinecaps1
	movl	$-1, -60(%rbp)
	jmp	.LBB276_11
.LBB276_9:                              # %if.else40
	leaq	-24(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	combinecaps3
.LBB276_10:                             # %if.end44
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB276_11:                             # %return
	movl	-60(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end276:
	.size	combinecaps, .Lfunc_end276-combinecaps
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert11            # -- Begin function treeinsert11
	.p2align	4, 0x90
	.type	treeinsert11,@function
treeinsert11:                           # @treeinsert11
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	16(%rdi), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, %rdi
	callq	free
	movq	32(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rsi
	movq	%rsi, 16(%rax)
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end277:
	.size	treeinsert11, .Lfunc_end277-treeinsert11
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tinsert
	.type	tinsert,@function
tinsert:                                # @tinsert
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movl	$222222503, -72(%rbp)   # imm = 0xD3ED8A7
	movl	$555555836, -68(%rbp)   # imm = 0x211D1BFC
	movl	$444444725, -64(%rbp)   # imm = 0x1A7DB035
	movl	$222222503, %edi        # imm = 0xD3ED8A7
	movl	$555555836, %esi        # imm = 0x211D1BFC
	movl	$444444725, %edx        # imm = 0x1A7DB035
	callq	guardMe
	movl	$222222502, -60(%rbp)   # imm = 0xD3ED8A6
	movl	$555555835, -56(%rbp)   # imm = 0x211D1BFB
	movl	$444444724, -52(%rbp)   # imm = 0x1A7DB034
	movl	$222222502, %edi        # imm = 0xD3ED8A6
	movl	$555555835, %esi        # imm = 0x211D1BFB
	movl	$444444724, %edx        # imm = 0x1A7DB034
	callq	guardMe
	movq	%rbx, -48(%rbp)
	movq	8(%rbx), %rsi
	leaq	-192(%rbp), %rdi
	movl	$120, %edx
	movl	$1, %ecx
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB278_2
# %bb.1:                                # %if.then
	leaq	-48(%rbp), %rdi
	callq	tinsert0
.LBB278_2:                              # %if.end
	movl	pershsize(%rip), %esi
	leaq	-192(%rbp), %rdi
	callq	hash
	movl	%eax, -36(%rbp)
	movq	$0, -32(%rbp)
	movslq	-36(%rbp), %rax
	movq	pershtab(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rdx
	movq	%rdx, -24(%rbp)
	testb	$4, 19(%rcx,%rax,8)
	je	.LBB278_7
# %bb.3:                                # %if.then7
	leaq	-32(%rbp), %r14
	leaq	-24(%rbp), %rbx
	cmpq	$0, -24(%rbp)
	je	.LBB278_6
	.p2align	4, 0x90
.LBB278_5:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	tinsert1
	cmpq	$0, -24(%rbp)
	jne	.LBB278_5
.LBB278_6:                              # %while.end
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	je	.LBB278_10
.LBB278_7:                              # %if.end13
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB278_9
# %bb.8:                                # %if.then15
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	tinsert3
.LBB278_9:                              # %if.end17
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB278_10:                             # %if.then10
	callq	tinsert2
.Lfunc_end278:
	.size	tinsert, .Lfunc_end278-tinsert
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert12            # -- Begin function treeinsert12
	.p2align	4, 0x90
	.type	treeinsert12,@function
treeinsert12:                           # @treeinsert12
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	addvheader
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end279:
	.size	treeinsert12, .Lfunc_end279-treeinsert12
	.cfi_endproc
                                        # -- End function
	.globl	treeinsert13            # -- Begin function treeinsert13
	.p2align	4, 0x90
	.type	treeinsert13,@function
treeinsert13:                           # @treeinsert13
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	orl	%eax, newwords(%rip)
	movl	%eax, (%rdi)
	retq
.Lfunc_end280:
	.size	treeinsert13, .Lfunc_end280-treeinsert13
	.cfi_endproc
                                        # -- End function
	.globl	addvheader              # -- Begin function addvheader
	.p2align	4, 0x90
	.type	addvheader,@function
addvheader:                             # @addvheader
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222459, -56(%rbp)   # imm = 0xD3ED87B
	movl	$555555792, -52(%rbp)   # imm = 0x211D1BD0
	movl	$444444681, -48(%rbp)   # imm = 0x1A7DB009
	movl	$222222459, %edi        # imm = 0xD3ED87B
	movl	$555555792, %esi        # imm = 0x211D1BD0
	movl	$444444681, %edx        # imm = 0x1A7DB009
	callq	guardMe
	movl	$222222458, -44(%rbp)   # imm = 0xD3ED87A
	movl	$555555791, -40(%rbp)   # imm = 0x211D1BCF
	movl	$444444680, -36(%rbp)   # imm = 0x1A7DB008
	movl	$222222458, %edi        # imm = 0xD3ED87A
	movl	$555555791, %esi        # imm = 0x211D1BCF
	movl	$444444680, %edx        # imm = 0x1A7DB008
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movl	$24, %edi
	callq	mymalloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB281_3
# %bb.1:                                # %if.end
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	je	.LBB281_4
# %bb.2:                                # %if.then3
	leaq	-16(%rbp), %rdi
	callq	addvheader1
	jmp	.LBB281_6
.LBB281_3:                              # %if.then
	leaq	-32(%rbp), %rdi
	callq	addvheader0
	jmp	.LBB281_8
.LBB281_4:                              # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	leal	1(%rax), %edi
	callq	mymalloc
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB281_7
# %bb.5:                                # %if.end15
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	addvheader3
.LBB281_6:                              # %if.end19
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	addvheader4
	movl	$0, -20(%rbp)
	jmp	.LBB281_9
.LBB281_7:                              # %if.then12
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	addvheader2
.LBB281_8:                              # %return
	movl	$-1, -20(%rbp)
.LBB281_9:                              # %return
	movl	-20(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end281:
	.size	addvheader, .Lfunc_end281-addvheader
	.cfi_endproc
                                        # -- End function
	.globl	mymalloc                # -- Begin function mymalloc
	.p2align	4, 0x90
	.type	mymalloc,@function
mymalloc:                               # @mymalloc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$222222515, -36(%rbp)   # imm = 0xD3ED8B3
	movl	$555555848, -32(%rbp)   # imm = 0x211D1C08
	movl	$444444737, -28(%rbp)   # imm = 0x1A7DB041
	movl	$222222515, %edi        # imm = 0xD3ED8B3
	movl	$555555848, %esi        # imm = 0x211D1C08
	movl	$444444737, %edx        # imm = 0x1A7DB041
	callq	guardMe
	movl	$222222514, -24(%rbp)   # imm = 0xD3ED8B2
	movl	$555555847, -20(%rbp)   # imm = 0x211D1C07
	movl	$444444736, -16(%rbp)   # imm = 0x1A7DB040
	movl	$222222514, %edi        # imm = 0xD3ED8B2
	movl	$555555847, %esi        # imm = 0x211D1C07
	movl	$444444736, %edx        # imm = 0x1A7DB040
	callq	guardMe
	movl	%ebx, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	malloc
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end282:
	.size	mymalloc, .Lfunc_end282-mymalloc
	.cfi_endproc
                                        # -- End function
	.globl	addvheader0             # -- Begin function addvheader0
	.p2align	4, 0x90
	.type	addvheader0,@function
addvheader0:                            # @addvheader0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	8(%rax), %rdx
	movl	$.L.str.3.390, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end283:
	.size	addvheader0, .Lfunc_end283-addvheader0
	.cfi_endproc
                                        # -- End function
	.globl	addvheader1             # -- Begin function addvheader1
	.p2align	4, 0x90
	.type	addvheader1,@function
addvheader1:                            # @addvheader1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	$0, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end284:
	.size	addvheader1, .Lfunc_end284-addvheader1
	.cfi_endproc
                                        # -- End function
	.globl	addvheader2             # -- Begin function addvheader2
	.p2align	4, 0x90
	.type	addvheader2,@function
addvheader2:                            # @addvheader2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	stderr(%rip), %rdi
	movq	8(%rax), %rdx
	movl	$.L.str.3.390, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rsp), %rdi
	callq	myfree
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end285:
	.size	addvheader2, .Lfunc_end285-addvheader2
	.cfi_endproc
                                        # -- End function
	.globl	addvheader3             # -- Begin function addvheader3
	.p2align	4, 0x90
	.type	addvheader3,@function
addvheader3:                            # @addvheader3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 8(%rsp)
	movq	8(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end286:
	.size	addvheader3, .Lfunc_end286-addvheader3
	.cfi_endproc
                                        # -- End function
	.globl	addvheader4             # -- Begin function addvheader4
	.p2align	4, 0x90
	.type	addvheader4,@function
addvheader4:                            # @addvheader4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rax), %rdi
	callq	chupcase
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rsp), %rax
	andq	$-805306369, 16(%rax)   # imm = 0xCFFFFFFF
	movq	8(%rsp), %rax
	orq	$1342177280, 16(%rax)   # imm = 0x50000000
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end287:
	.size	addvheader4, .Lfunc_end287-addvheader4
	.cfi_endproc
                                        # -- End function
	.globl	chupcase                # -- Begin function chupcase
	.p2align	4, 0x90
	.type	chupcase,@function
chupcase:                               # @chupcase
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222452, -64(%rbp)   # imm = 0xD3ED874
	movl	$555555785, -60(%rbp)   # imm = 0x211D1BC9
	movl	$444444674, -56(%rbp)   # imm = 0x1A7DB002
	movl	$222222452, %edi        # imm = 0xD3ED874
	movl	$555555785, %esi        # imm = 0x211D1BC9
	movl	$444444674, %edx        # imm = 0x1A7DB002
	callq	guardMe
	movl	$222222451, -52(%rbp)   # imm = 0xD3ED873
	movl	$555555784, -48(%rbp)   # imm = 0x211D1BC8
	movl	$444444673, -44(%rbp)   # imm = 0x1A7DB001
	movl	$222222451, %edi        # imm = 0xD3ED873
	movl	$555555784, %esi        # imm = 0x211D1BC8
	movl	$444444673, %edx        # imm = 0x1A7DB001
	callq	guardMe
	movl	$222222450, -40(%rbp)   # imm = 0xD3ED872
	movl	$555555783, -36(%rbp)   # imm = 0x211D1BC7
	movl	$444444672, -32(%rbp)   # imm = 0x1A7DB000
	movl	$222222450, %edi        # imm = 0xD3ED872
	movl	$555555783, %esi        # imm = 0x211D1BC7
	movl	$444444672, %edx        # imm = 0x1A7DB000
	callq	guardMe
	movl	$222222449, -28(%rbp)   # imm = 0xD3ED871
	movl	$555555782, -24(%rbp)   # imm = 0x211D1BC6
	movl	$444444671, -20(%rbp)   # imm = 0x1A7DAFFF
	movl	$222222449, %edi        # imm = 0xD3ED871
	movl	$555555782, %esi        # imm = 0x211D1BC6
	movl	$444444671, %edx        # imm = 0x1A7DAFFF
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	chupcase0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end288:
	.size	chupcase, .Lfunc_end288-chupcase
	.cfi_endproc
                                        # -- End function
	.globl	chupcase0               # -- Begin function chupcase0
	.p2align	4, 0x90
	.type	chupcase0,@function
chupcase0:                              # @chupcase0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, (%rsp)
	movl	$1, %esi
	callq	strtosichar
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	callq	upcase
	movq	(%rsp), %rbx
	movq	8(%rsp), %r14
	movq	%rbx, %rdi
	callq	strlen
	leal	1(%rax), %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	ichartostr
	movq	16(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end289:
	.size	chupcase0, .Lfunc_end289-chupcase0
	.cfi_endproc
                                        # -- End function
	.globl	myfree                  # -- Begin function myfree
	.p2align	4, 0x90
	.type	myfree,@function
myfree:                                 # @myfree
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222516, -28(%rbp)   # imm = 0xD3ED8B4
	movl	$555555849, -24(%rbp)   # imm = 0x211D1C09
	movl	$444444738, -20(%rbp)   # imm = 0x1A7DB042
	movl	$222222516, %edi        # imm = 0xD3ED8B4
	movl	$555555849, %esi        # imm = 0x211D1C09
	movl	$444444738, %edx        # imm = 0x1A7DB042
	callq	guardMe
	movq	%rbx, -16(%rbp)
	cmpq	$0, hashstrings(%rip)
	je	.LBB290_3
# %bb.1:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	hashstrings(%rip), %rax
	jb	.LBB290_3
# %bb.2:                                # %land.lhs.true2
	movslq	hashheader+12(%rip), %rax
	addq	hashstrings(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jbe	.LBB290_4
.LBB290_3:                              # %if.end
	leaq	-16(%rbp), %rdi
	callq	myfree0
.LBB290_4:                              # %return
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end290:
	.size	myfree, .Lfunc_end290-myfree
	.cfi_endproc
                                        # -- End function
	.globl	myfree0                 # -- Begin function myfree0
	.p2align	4, 0x90
	.type	myfree0,@function
myfree0:                                # @myfree0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	free
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end291:
	.size	myfree0, .Lfunc_end291-myfree0
	.cfi_endproc
                                        # -- End function
	.globl	tinsert0                # -- Begin function tinsert0
	.p2align	4, 0x90
	.type	tinsert0,@function
tinsert0:                               # @tinsert0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	8(%rax), %rdx
	movl	$.L.str.17.435, %esi
	movl	$443, %ecx              # imm = 0x1BB
	movl	$.L.str.18.436, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end292:
	.size	tinsert0, .Lfunc_end292-tinsert0
	.cfi_endproc
                                        # -- End function
	.globl	hash                    # -- Begin function hash
	.p2align	4, 0x90
	.type	hash,@function
hash:                                   # @hash
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -40(%rbp)
	movl	$4, -20(%rbp)
	leaq	-32(%rbp), %r14
	leaq	-40(%rbp), %rbx
	jmp	.LBB293_1
	.p2align	4, 0x90
.LBB293_5:                              # %for.body
                                        #   in Loop: Header=BB293_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hash0
.LBB293_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	testl	%eax, %eax
	je	.LBB293_2
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB293_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB293_5
	jmp	.LBB293_6
	.p2align	4, 0x90
.LBB293_2:                              #   in Loop: Header=BB293_1 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB293_5
.LBB293_6:                              # %for.end
	leaq	-32(%rbp), %r14
	leaq	-40(%rbp), %rbx
	jmp	.LBB293_7
	.p2align	4, 0x90
.LBB293_8:                              # %while.body
                                        #   in Loop: Header=BB293_7 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hash1
.LBB293_7:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB293_8
# %bb.9:                                # %while.end
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end293:
	.size	hash, .Lfunc_end293-hash
	.cfi_endproc
                                        # -- End function
	.globl	tinsert1                # -- Begin function tinsert1
	.p2align	4, 0x90
	.type	tinsert1,@function
tinsert1:                               # @tinsert1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	%rax, -32(%rsp)
	movq	(%rax), %rax
	movq	%rax, -24(%rsp)
	movq	%rax, (%rsi)
	movq	-16(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end294:
	.size	tinsert1, .Lfunc_end294-tinsert1
	.cfi_endproc
                                        # -- End function
	.globl	tinsert2                # -- Begin function tinsert2
	.p2align	4, 0x90
	.type	tinsert2,@function
tinsert2:                               # @tinsert2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.12.433, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end295:
	.size	tinsert2, .Lfunc_end295-tinsert2
	.cfi_endproc
                                        # -- End function
	.globl	tinsert3                # -- Begin function tinsert3
	.p2align	4, 0x90
	.type	tinsert3,@function
tinsert3:                               # @tinsert3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end296:
	.size	tinsert3, .Lfunc_end296-tinsert3
	.cfi_endproc
                                        # -- End function
	.globl	hash0                   # -- Begin function hash0
	.p2align	4, 0x90
	.type	hash0,@function
hash0:                                  # @hash0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -24(%rsp)
	shlq	$8, %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movzbl	(%rax), %eax
	movzbl	hashheader+754(%rax), %eax
	orq	%rcx, %rax
	movq	%rax, -24(%rsp)
	movq	%rax, (%rsi)
	movq	-16(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end297:
	.size	hash0, .Lfunc_end297-hash0
	.cfi_endproc
                                        # -- End function
	.globl	hash1                   # -- Begin function hash1
	.p2align	4, 0x90
	.type	hash1,@function
hash1:                                  # @hash1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, %rdx
	shlq	$5, %rdx
	shrl	$27, %ecx
	orq	%rdx, %rcx
	movq	%rcx, -24(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movzbl	(%rax), %eax
	movzbl	hashheader+754(%rax), %eax
	xorq	%rcx, %rax
	movq	%rax, -24(%rsp)
	movq	%rax, (%rsi)
	movq	-16(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end298:
	.size	hash1, .Lfunc_end298-hash1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function combine_two_entries
	.type	combine_two_entries,@function
combine_two_entries:                    # @combine_two_entries
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$222222463, -68(%rbp)   # imm = 0xD3ED87F
	movl	$555555796, -64(%rbp)   # imm = 0x211D1BD4
	movl	$444444685, -60(%rbp)   # imm = 0x1A7DB00D
	movl	$222222463, %edi        # imm = 0xD3ED87F
	movl	$555555796, %esi        # imm = 0x211D1BD4
	movl	$444444685, %edx        # imm = 0x1A7DB00D
	callq	guardMe
	movq	%r15, -56(%rbp)
	movq	%rbx, -40(%rbp)
	movq	%r14, -32(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	acoversb
	testl	%eax, %eax
	je	.LBB299_2
# %bb.1:                                # %if.then
	leaq	-56(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	combine_two_entries0
	movl	$1, -44(%rbp)
	jmp	.LBB299_10
.LBB299_2:                              # %if.else
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	acoversb
	testl	%eax, %eax
	je	.LBB299_9
# %bb.3:                                # %if.then11
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	combineaffixes
	movq	-40(%rbp), %rax
	movl	$1207959552, %ecx       # imm = 0x48000000
	andq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	orq	%rcx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	$134217728, %ecx        # imm = 0x8000000
	andq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	orq	%rcx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB299_5
# %bb.4:                                # %if.then26
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	combine_two_entries1
.LBB299_5:                              # %if.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	myfree
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	jne	.LBB299_8
# %bb.6:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movl	$1879048192, %ecx       # imm = 0x70000000
	andq	16(%rax), %rcx
	cmpq	$1342177280, %rcx       # imm = 0x50000000
	je	.LBB299_8
# %bb.7:                                # %if.then41
	leaq	-56(%rbp), %rdi
	callq	combine_two_entries2
.LBB299_8:                              # %if.end43
	movl	$1, -44(%rbp)
	jmp	.LBB299_10
.LBB299_9:                              # %if.else44
	movl	$0, -44(%rbp)
.LBB299_10:                             # %return
	movl	-44(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end299:
	.size	combine_two_entries, .Lfunc_end299-combine_two_entries
	.cfi_endproc
                                        # -- End function
	.globl	combinecaps0            # -- Begin function combinecaps0
	.p2align	4, 0x90
	.type	combinecaps0,@function
combinecaps0:                           # @combinecaps0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 56(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	(%rdx), %rsi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdx
	callq	combine_two_entries
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$72, %rsp
	retq
.Lfunc_end300:
	.size	combinecaps0, .Lfunc_end300-combinecaps0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function forcevheader
	.type	forcevheader,@function
forcevheader:                           # @forcevheader
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$222222464, -60(%rbp)   # imm = 0xD3ED880
	movl	$555555797, -56(%rbp)   # imm = 0x211D1BD5
	movl	$444444686, -52(%rbp)   # imm = 0x1A7DB00E
	movl	$222222464, %edi        # imm = 0xD3ED880
	movl	$555555797, %esi        # imm = 0x211D1BD5
	movl	$444444686, %edx        # imm = 0x1A7DB00E
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	%r15, -48(%rbp)
	movq	%r14, -40(%rbp)
	movl	$1879048192, %eax       # imm = 0x70000000
	andq	16(%rbx), %rax
	cmpq	$268435456, %rax        # imm = 0x10000000
	jne	.LBB301_2
# %bb.1:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	movq	-40(%rbp), %rcx
	xorl	16(%rcx), %eax
	testl	$134217728, %eax        # imm = 0x8000000
	je	.LBB301_4
.LBB301_2:                              # %if.else
	movq	-32(%rbp), %rax
	movl	$1879048192, %ecx       # imm = 0x70000000
	andq	16(%rax), %rcx
	cmpq	$1342177280, %rcx       # imm = 0x50000000
	je	.LBB301_4
# %bb.3:                                # %if.then11
	leaq	-32(%rbp), %rdi
	callq	forcevheader0
.LBB301_4:                              # %if.end12
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end301:
	.size	forcevheader, .Lfunc_end301-forcevheader
	.cfi_endproc
                                        # -- End function
	.globl	combinecaps1            # -- Begin function combinecaps1
	.p2align	4, 0x90
	.type	combinecaps1,@function
combinecaps1:                           # @combinecaps1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	8(%rax), %rdx
	movl	$.L.str.3.390, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end302:
	.size	combinecaps1, .Lfunc_end302-combinecaps1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function combineaffixes
	.type	combineaffixes,@function
combineaffixes:                         # @combineaffixes
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222468, -80(%rbp)   # imm = 0xD3ED884
	movl	$555555801, -76(%rbp)   # imm = 0x211D1BD9
	movl	$444444690, -72(%rbp)   # imm = 0x1A7DB012
	movl	$222222468, %edi        # imm = 0xD3ED884
	movl	$555555801, %esi        # imm = 0x211D1BD9
	movl	$444444690, %edx        # imm = 0x1A7DB012
	callq	guardMe
	movl	$222222467, -68(%rbp)   # imm = 0xD3ED883
	movl	$555555800, -64(%rbp)   # imm = 0x211D1BD8
	movl	$444444689, -60(%rbp)   # imm = 0x1A7DB011
	movl	$222222467, %edi        # imm = 0xD3ED883
	movl	$555555800, %esi        # imm = 0x211D1BD8
	movl	$444444689, %edx        # imm = 0x1A7DB011
	callq	guardMe
	movl	$222222466, -56(%rbp)   # imm = 0xD3ED882
	movl	$555555799, -52(%rbp)   # imm = 0x211D1BD7
	movl	$444444688, -48(%rbp)   # imm = 0x1A7DB010
	movl	$222222466, %edi        # imm = 0xD3ED882
	movl	$555555799, %esi        # imm = 0x211D1BD7
	movl	$444444688, %edx        # imm = 0x1A7DB010
	callq	guardMe
	movl	$222222465, -44(%rbp)   # imm = 0xD3ED881
	movl	$555555798, -40(%rbp)   # imm = 0x211D1BD6
	movl	$444444687, -36(%rbp)   # imm = 0x1A7DB00F
	movl	$222222465, %edi        # imm = 0xD3ED881
	movl	$555555798, %esi        # imm = 0x211D1BD6
	movl	$444444687, %edx        # imm = 0x1A7DB00F
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	%r14, -24(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	combineaffixes0
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end303:
	.size	combineaffixes, .Lfunc_end303-combineaffixes
	.cfi_endproc
                                        # -- End function
	.globl	combinecaps2            # -- Begin function combinecaps2
	.p2align	4, 0x90
	.type	combinecaps2,@function
combinecaps2:                           # @combinecaps2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end304:
	.size	combinecaps2, .Lfunc_end304-combinecaps2
	.cfi_endproc
                                        # -- End function
	.globl	combinecaps3            # -- Begin function combinecaps3
	.p2align	4, 0x90
	.type	combinecaps3,@function
combinecaps3:                           # @combinecaps3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rax)
	movq	8(%rsp), %rax
	movq	8(%rax), %rdi
	callq	myfree
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end305:
	.size	combinecaps3, .Lfunc_end305-combinecaps3
	.cfi_endproc
                                        # -- End function
	.globl	combineaffixes0         # -- Begin function combineaffixes0
	.p2align	4, 0x90
	.type	combineaffixes0,@function
combineaffixes0:                        # @combineaffixes0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movq	$-2080374785, %rdx      # imm = 0x83FFFFFF
	andq	16(%rcx), %rdx
	orq	%rdx, 16(%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end306:
	.size	combineaffixes0, .Lfunc_end306-combineaffixes0
	.cfi_endproc
                                        # -- End function
	.globl	forcevheader0           # -- Begin function forcevheader0
	.p2align	4, 0x90
	.type	forcevheader0,@function
forcevheader0:                          # @forcevheader0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	addvheader
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end307:
	.size	forcevheader0, .Lfunc_end307-forcevheader0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function acoversb
	.type	acoversb,@function
acoversb:                               # @acoversb
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	issubset
	movl	%eax, -28(%rbp)
	testl	%eax, %eax
	je	.LBB308_4
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-24(%rbp), %rcx
	xorl	16(%rcx), %eax
	testl	$134217728, %eax        # imm = 0x8000000
	je	.LBB308_5
# %bb.2:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	testb	$8, 19(%rax)
	jne	.LBB308_5
	jmp	.LBB308_3
.LBB308_4:                              # %if.else
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-24(%rbp), %rcx
	xorl	16(%rcx), %eax
	testl	$134217728, %eax        # imm = 0x8000000
	jne	.LBB308_3
.LBB308_5:                              # %if.end18
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-24(%rbp), %rcx
	xorl	16(%rcx), %eax
	testl	$805306368, %eax        # imm = 0x30000000
	je	.LBB308_6
# %bb.8:                                # %if.else36
	cmpl	$0, -28(%rbp)
	je	.LBB308_3
# %bb.9:                                # %if.else39
	movq	-24(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$268435456, %rcx        # imm = 0x10000000
	je	.LBB308_12
# %bb.10:                               # %if.else45
	movq	-16(%rbp), %rax
	testb	$48, 19(%rax)
	jne	.LBB308_3
# %bb.11:                               # %land.lhs.true50
	movq	-24(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$536870912, %rcx        # imm = 0x20000000
	jne	.LBB308_3
	jmp	.LBB308_12
.LBB308_6:                              # %if.then26
	movq	-16(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	jne	.LBB308_12
# %bb.7:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB308_12
.LBB308_3:                              # %if.else56
	movl	$0, -4(%rbp)
	jmp	.LBB308_13
.LBB308_12:                             # %if.then55
	movl	$1, -4(%rbp)
.LBB308_13:                             # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end308:
	.size	acoversb, .Lfunc_end308-acoversb
	.cfi_endproc
                                        # -- End function
	.globl	combine_two_entries0    # -- Begin function combine_two_entries0
	.p2align	4, 0x90
	.type	combine_two_entries0,@function
combine_two_entries0:                   # @combine_two_entries0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 16(%rsp)
	callq	combineaffixes
	movq	8(%rsp), %rax
	movl	$134217728, %ecx        # imm = 0x8000000
	movq	16(%rax), %rax
	andq	%rcx, %rax
	movq	16(%rsp), %rdx
	orq	%rax, 16(%rdx)
	movq	8(%rsp), %rax
	andq	16(%rax), %rcx
	movq	24(%rsp), %rax
	orq	%rcx, 16(%rax)
	movq	8(%rsp), %rax
	movq	8(%rax), %rdi
	callq	myfree
	movq	40(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end309:
	.size	combine_two_entries0, .Lfunc_end309-combine_two_entries0
	.cfi_endproc
                                        # -- End function
	.globl	combine_two_entries1    # -- Begin function combine_two_entries1
	.p2align	4, 0x90
	.type	combine_two_entries1,@function
combine_two_entries1:                   # @combine_two_entries1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 8(%rsp)
	movq	8(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end310:
	.size	combine_two_entries1, .Lfunc_end310-combine_two_entries1
	.cfi_endproc
                                        # -- End function
	.globl	combine_two_entries2    # -- Begin function combine_two_entries2
	.p2align	4, 0x90
	.type	combine_two_entries2,@function
combine_two_entries2:                   # @combine_two_entries2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	addvheader
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end311:
	.size	combine_two_entries2, .Lfunc_end311-combine_two_entries2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function issubset
	.type	issubset,@function
issubset:                               # @issubset
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222470, -44(%rbp)   # imm = 0xD3ED886
	movl	$555555803, -40(%rbp)   # imm = 0x211D1BDB
	movl	$444444692, -36(%rbp)   # imm = 0x1A7DB014
	movl	$222222470, %edi        # imm = 0xD3ED886
	movl	$555555803, %esi        # imm = 0x211D1BDB
	movl	$444444692, %edx        # imm = 0x1A7DB014
	callq	guardMe
	movl	$222222469, -32(%rbp)   # imm = 0xD3ED885
	movl	$555555802, -28(%rbp)   # imm = 0x211D1BDA
	movl	$444444691, -24(%rbp)   # imm = 0x1A7DB013
	movl	$222222469, %edi        # imm = 0xD3ED885
	movl	$555555802, %esi        # imm = 0x211D1BDA
	movl	$444444691, %edx        # imm = 0x1A7DB013
	callq	guardMe
	movq	%rbx, -64(%rbp)
	movq	%r14, -56(%rbp)
	movq	16(%rbx), %rax
	movq	16(%r14), %rcx
	andq	%rax, %rcx
	xorq	%rax, %rcx
	testq	$-2080374785, %rcx      # imm = 0x83FFFFFF
	je	.LBB312_2
# %bb.1:                                # %if.then
	movl	$0, -20(%rbp)
	jmp	.LBB312_3
.LBB312_2:                              # %if.else
	movl	$1, -20(%rbp)
.LBB312_3:                              # %return
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end312:
	.size	issubset, .Lfunc_end312-issubset
	.cfi_endproc
                                        # -- End function
	.globl	lookup0                 # -- Begin function lookup0
	.p2align	4, 0x90
	.type	lookup0,@function
lookup0:                                # @lookup0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end313:
	.size	lookup0, .Lfunc_end313-lookup0
	.cfi_endproc
                                        # -- End function
	.globl	lookup1                 # -- Begin function lookup1
	.p2align	4, 0x90
	.type	lookup1,@function
lookup1:                                # @lookup1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end314:
	.size	lookup1, .Lfunc_end314-lookup1
	.cfi_endproc
                                        # -- End function
	.globl	lookup2                 # -- Begin function lookup2
	.p2align	4, 0x90
	.type	lookup2,@function
lookup2:                                # @lookup2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end315:
	.size	lookup2, .Lfunc_end315-lookup2
	.cfi_endproc
                                        # -- End function
	.globl	lookup3                 # -- Begin function lookup3
	.p2align	4, 0x90
	.type	lookup3,@function
lookup3:                                # @lookup3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 24(%rsp)
	callq	treelookup
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end316:
	.size	lookup3, .Lfunc_end316-lookup3
	.cfi_endproc
                                        # -- End function
	.globl	treelookup              # -- Begin function treelookup
	.p2align	4, 0x90
	.type	treelookup,@function
treelookup:                             # @treelookup
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movl	$222222507, -96(%rbp)   # imm = 0xD3ED8AB
	movl	$555555840, -92(%rbp)   # imm = 0x211D1C00
	movl	$444444729, -88(%rbp)   # imm = 0x1A7DB039
	movl	$222222507, %edi        # imm = 0xD3ED8AB
	movl	$555555840, %esi        # imm = 0x211D1C00
	movl	$444444729, %edx        # imm = 0x1A7DB039
	callq	guardMe
	movl	$222222506, -84(%rbp)   # imm = 0xD3ED8AA
	movl	$555555839, -80(%rbp)   # imm = 0x211D1BFF
	movl	$444444728, -76(%rbp)   # imm = 0x1A7DB038
	movl	$222222506, %edi        # imm = 0xD3ED8AA
	movl	$555555839, %esi        # imm = 0x211D1BFF
	movl	$444444728, %edx        # imm = 0x1A7DB038
	callq	guardMe
	movl	$222222505, -72(%rbp)   # imm = 0xD3ED8A9
	movl	$555555838, -68(%rbp)   # imm = 0x211D1BFE
	movl	$444444727, -64(%rbp)   # imm = 0x1A7DB037
	movl	$222222505, %edi        # imm = 0xD3ED8A9
	movl	$555555838, %esi        # imm = 0x211D1BFE
	movl	$444444727, %edx        # imm = 0x1A7DB037
	callq	guardMe
	movl	$222222504, -60(%rbp)   # imm = 0xD3ED8A8
	movl	$555555837, -56(%rbp)   # imm = 0x211D1BFD
	movl	$444444726, -52(%rbp)   # imm = 0x1A7DB036
	movl	$222222504, %edi        # imm = 0xD3ED8A8
	movl	$555555837, %esi        # imm = 0x211D1BFD
	movl	$444444726, %edx        # imm = 0x1A7DB036
	callq	guardMe
	movq	%rbx, -48(%rbp)
	cmpl	$0, pershsize(%rip)
	jle	.LBB317_13
# %bb.1:                                # %if.end
	movq	-48(%rbp), %rsi
	leaq	-224(%rbp), %r14
	movl	$120, %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	callq	ichartostr
	movq	-48(%rbp), %rdi
	movl	pershsize(%rip), %esi
	callq	hash
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	pershtab(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rbx
	cmpq	$0, -24(%rbp)
	jne	.LBB317_4
	jmp	.LBB317_3
	.p2align	4, 0x90
.LBB317_9:                              # %while.end
	movq	%rbx, %rdi
	callq	treelookup1
	cmpq	$0, -24(%rbp)
	je	.LBB317_3
.LBB317_4:                              # %land.rhs
	movq	-24(%rbp), %rax
	movb	19(%rax), %al
	andb	$4, %al
	shrb	$2, %al
	testb	%al, %al
	jne	.LBB317_6
	jmp	.LBB317_10
	.p2align	4, 0x90
.LBB317_3:
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB317_10
.LBB317_6:                              # %while.body
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB317_7
	jmp	.LBB317_10
	.p2align	4, 0x90
.LBB317_8:                              # %while.body15
                                        #   in Loop: Header=BB317_7 Depth=1
	movq	%rbx, %rdi
	callq	treelookup0
.LBB317_7:                              # %while.cond10
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB317_8
	jmp	.LBB317_9
.LBB317_10:                             # %while.end17
	cmpq	$0, -24(%rbp)
	je	.LBB317_13
# %bb.11:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	testb	$4, 19(%rax)
	je	.LBB317_13
# %bb.12:                               # %if.then23
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	treelookup2
	jmp	.LBB317_14
.LBB317_13:                             # %if.else
	movq	$0, -32(%rbp)
.LBB317_14:                             # %return
	movq	-32(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end317:
	.size	treelookup, .Lfunc_end317-treelookup
	.cfi_endproc
                                        # -- End function
	.globl	treelookup0             # -- Begin function treelookup0
	.p2align	4, 0x90
	.type	treelookup0,@function
treelookup0:                            # @treelookup0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end318:
	.size	treelookup0, .Lfunc_end318-treelookup0
	.cfi_endproc
                                        # -- End function
	.globl	treelookup1             # -- Begin function treelookup1
	.p2align	4, 0x90
	.type	treelookup1,@function
treelookup1:                            # @treelookup1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end319:
	.size	treelookup1, .Lfunc_end319-treelookup1
	.cfi_endproc
                                        # -- End function
	.globl	treelookup2             # -- Begin function treelookup2
	.p2align	4, 0x90
	.type	treelookup2,@function
treelookup2:                            # @treelookup2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end320:
	.size	treelookup2, .Lfunc_end320-treelookup2
	.cfi_endproc
                                        # -- End function
	.globl	makedent0               # -- Begin function makedent0
	.p2align	4, 0x90
	.type	makedent0,@function
makedent0:                              # @makedent0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movslq	-28(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end321:
	.size	makedent0, .Lfunc_end321-makedent0
	.cfi_endproc
                                        # -- End function
	.globl	makedent1               # -- Begin function makedent1
	.p2align	4, 0x90
	.type	makedent1,@function
makedent1:                              # @makedent1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end322:
	.size	makedent1, .Lfunc_end322-makedent1
	.cfi_endproc
                                        # -- End function
	.globl	makedent2               # -- Begin function makedent2
	.p2align	4, 0x90
	.type	makedent2,@function
makedent2:                              # @makedent2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.385, %esi
	movl	$152, %ecx
	movl	$.L.str.1.386, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end323:
	.size	makedent2, .Lfunc_end323-makedent2
	.cfi_endproc
                                        # -- End function
	.globl	makedent3               # -- Begin function makedent3
	.p2align	4, 0x90
	.type	makedent3,@function
makedent3:                              # @makedent3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.2.387, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end324:
	.size	makedent3, .Lfunc_end324-makedent3
	.cfi_endproc
                                        # -- End function
	.globl	makedent4               # -- Begin function makedent4
	.p2align	4, 0x90
	.type	makedent4,@function
makedent4:                              # @makedent4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end325:
	.size	makedent4, .Lfunc_end325-makedent4
	.cfi_endproc
                                        # -- End function
	.globl	whatcap                 # -- Begin function whatcap
	.p2align	4, 0x90
	.type	whatcap,@function
whatcap:                                # @whatcap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222448, -56(%rbp)   # imm = 0xD3ED870
	movl	$555555781, -52(%rbp)   # imm = 0x211D1BC5
	movl	$444444670, -48(%rbp)   # imm = 0x1A7DAFFE
	movl	$222222448, %edi        # imm = 0xD3ED870
	movl	$555555781, %esi        # imm = 0x211D1BC5
	movl	$444444670, %edx        # imm = 0x1A7DAFFE
	callq	guardMe
	movl	$222222447, -44(%rbp)   # imm = 0xD3ED86F
	movl	$555555780, -40(%rbp)   # imm = 0x211D1BC4
	movl	$444444669, -36(%rbp)   # imm = 0x1A7DAFFD
	movl	$222222447, %edi        # imm = 0xD3ED86F
	movl	$555555780, %esi        # imm = 0x211D1BC4
	movl	$444444669, %edx        # imm = 0x1A7DAFFD
	callq	guardMe
	movq	%rbx, -32(%rbp)
	leaq	-16(%rbp), %rbx
	leaq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	callq	whatcap0
	jmp	.LBB326_1
	.p2align	4, 0x90
.LBB326_3:                              # %for.inc
                                        #   in Loop: Header=BB326_1 Depth=1
	movq	%rbx, %rdi
	callq	whatcap1
.LBB326_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB326_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB326_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB326_3
.LBB326_4:                              # %for.end
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB326_5
# %bb.6:                                # %if.else
	leaq	-16(%rbp), %rbx
	jmp	.LBB326_7
	.p2align	4, 0x90
.LBB326_9:                              # %for.inc12
                                        #   in Loop: Header=BB326_7 Depth=1
	movq	%rbx, %rdi
	callq	whatcap2
.LBB326_7:                              # %for.cond4
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB326_10
# %bb.8:                                # %for.body6
                                        #   in Loop: Header=BB326_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB326_9
.LBB326_10:                             # %for.end14
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB326_11
.LBB326_18:                             # %if.else38
	movq	$805306368, -24(%rbp)   # imm = 0x30000000
	jmp	.LBB326_19
.LBB326_5:                              # %if.then3
	movq	$268435456, -24(%rbp)   # imm = 0x10000000
.LBB326_19:                             # %return
	movq	-24(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB326_11:                             # %if.then18
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB326_17
# %bb.12:                               # %if.then23
	leaq	-16(%rbp), %rbx
	leaq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	callq	whatcap3
	jmp	.LBB326_13
	.p2align	4, 0x90
.LBB326_15:                             # %for.inc34
                                        #   in Loop: Header=BB326_13 Depth=1
	movq	%rbx, %rdi
	callq	whatcap4
.LBB326_13:                             # %for.cond24
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB326_16
# %bb.14:                               # %for.body28
                                        #   in Loop: Header=BB326_13 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB326_15
	jmp	.LBB326_18
.LBB326_17:                             # %if.else37
	movq	$0, -24(%rbp)
	jmp	.LBB326_19
.LBB326_16:                             # %for.end36
	movq	$536870912, -24(%rbp)   # imm = 0x20000000
	jmp	.LBB326_19
.Lfunc_end326:
	.size	whatcap, .Lfunc_end326-whatcap
	.cfi_endproc
                                        # -- End function
	.globl	makedent5               # -- Begin function makedent5
	.p2align	4, 0x90
	.type	makedent5,@function
makedent5:                              # @makedent5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.385, %esi
	movl	$182, %ecx
	movl	$.L.str.1.386, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end327:
	.size	makedent5, .Lfunc_end327-makedent5
	.cfi_endproc
                                        # -- End function
	.globl	makedent6               # -- Begin function makedent6
	.p2align	4, 0x90
	.type	makedent6,@function
makedent6:                              # @makedent6
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.3.390, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end328:
	.size	makedent6, .Lfunc_end328-makedent6
	.cfi_endproc
                                        # -- End function
	.globl	makedent7               # -- Begin function makedent7
	.p2align	4, 0x90
	.type	makedent7,@function
makedent7:                              # @makedent7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rax), %rdi
	callq	chupcase
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end329:
	.size	makedent7, .Lfunc_end329-makedent7
	.cfi_endproc
                                        # -- End function
	.globl	makedent8               # -- Begin function makedent8
	.p2align	4, 0x90
	.type	makedent8,@function
makedent8:                              # @makedent8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movl	$1, %edx
                                        # kill: def %cl killed %cl killed %ecx
	shlq	%cl, %rdx
	orq	%rdx, 16(%rax)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end330:
	.size	makedent8, .Lfunc_end330-makedent8
	.cfi_endproc
                                        # -- End function
	.globl	makedent9               # -- Begin function makedent9
	.p2align	4, 0x90
	.type	makedent9,@function
makedent9:                              # @makedent9
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	stderr(%rip), %rdi
	movzbl	(%rax), %edx
	movl	$.L.str.4.391, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end331:
	.size	makedent9, .Lfunc_end331-makedent9
	.cfi_endproc
                                        # -- End function
	.globl	makedent10              # -- Begin function makedent10
	.p2align	4, 0x90
	.type	makedent10,@function
makedent10:                             # @makedent10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end332:
	.size	makedent10, .Lfunc_end332-makedent10
	.cfi_endproc
                                        # -- End function
	.globl	whatcap0                # -- Begin function whatcap0
	.p2align	4, 0x90
	.type	whatcap0,@function
whatcap0:                               # @whatcap0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end333:
	.size	whatcap0, .Lfunc_end333-whatcap0
	.cfi_endproc
                                        # -- End function
	.globl	whatcap1                # -- Begin function whatcap1
	.p2align	4, 0x90
	.type	whatcap1,@function
whatcap1:                               # @whatcap1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end334:
	.size	whatcap1, .Lfunc_end334-whatcap1
	.cfi_endproc
                                        # -- End function
	.globl	whatcap2                # -- Begin function whatcap2
	.p2align	4, 0x90
	.type	whatcap2,@function
whatcap2:                               # @whatcap2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end335:
	.size	whatcap2, .Lfunc_end335-whatcap2
	.cfi_endproc
                                        # -- End function
	.globl	whatcap3                # -- Begin function whatcap3
	.p2align	4, 0x90
	.type	whatcap3,@function
whatcap3:                               # @whatcap3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end336:
	.size	whatcap3, .Lfunc_end336-whatcap3
	.cfi_endproc
                                        # -- End function
	.globl	whatcap4                # -- Begin function whatcap4
	.p2align	4, 0x90
	.type	whatcap4,@function
whatcap4:                               # @whatcap4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end337:
	.size	whatcap4, .Lfunc_end337-whatcap4
	.cfi_endproc
                                        # -- End function
	.globl	strtosichar0            # -- Begin function strtosichar0
	.p2align	4, 0x90
	.type	strtosichar0,@function
strtosichar0:                           # @strtosichar0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.385, %esi
	movl	$938, %ecx              # imm = 0x3AA
	movl	$.L.str.1.386, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end338:
	.size	strtosichar0, .Lfunc_end338-strtosichar0
	.cfi_endproc
                                        # -- End function
	.globl	show_line0              # -- Begin function show_line0
	.p2align	4, 0x90
	.type	show_line0,@function
show_line0:                             # @show_line0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movl	(%rdx), %esi
	movl	%esi, 12(%rsp)
	movl	24(%rsp), %ecx
	subl	16(%rsp), %ecx
	leaq	16(%rsp), %rdi
	movl	$1, %edx
	callq	show_char
	addl	12(%rsp), %eax
	movl	%eax, 12(%rsp)
	movq	32(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	40(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end339:
	.size	show_line0, .Lfunc_end339-show_line0
	.cfi_endproc
                                        # -- End function
	.globl	show_line1              # -- Begin function show_line1
	.p2align	4, 0x90
	.type	show_line1,@function
show_line1:                             # @show_line1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	callq	inverse
	movslq	12(%rsp), %rax
	addq	%rax, 16(%rsp)
	movq	24(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end340:
	.size	show_line1, .Lfunc_end340-show_line1
	.cfi_endproc
                                        # -- End function
	.globl	show_line2              # -- Begin function show_line2
	.p2align	4, 0x90
	.type	show_line2,@function
show_line2:                             # @show_line2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movl	(%rdx), %esi
	movl	%esi, 12(%rsp)
	movl	24(%rsp), %ecx
	subl	16(%rsp), %ecx
	leaq	16(%rsp), %rdi
	movl	$1, %edx
	callq	show_char
	addl	12(%rsp), %eax
	movl	%eax, 12(%rsp)
	movq	32(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	40(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end341:
	.size	show_line2, .Lfunc_end341-show_line2
	.cfi_endproc
                                        # -- End function
	.globl	show_line3              # -- Begin function show_line3
	.p2align	4, 0x90
	.type	show_line3,@function
show_line3:                             # @show_line3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %esi
	movl	%esi, 12(%rsp)
	leaq	16(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	show_char
	addl	12(%rsp), %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end342:
	.size	show_line3, .Lfunc_end342-show_line3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function show_char
	.type	show_char,@function
show_char:                              # @show_char
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	$222222315, -88(%rbp)   # imm = 0xD3ED7EB
	movl	$555555648, -84(%rbp)   # imm = 0x211D1B40
	movl	$444444537, -80(%rbp)   # imm = 0x1A7DAF79
	movl	$222222315, %edi        # imm = 0xD3ED7EB
	movl	$555555648, %esi        # imm = 0x211D1B40
	movl	$444444537, %edx        # imm = 0x1A7DAF79
	callq	guardMe
	movq	%rbx, -64(%rbp)
	movl	%r12d, -76(%rbp)
	movl	%r15d, -48(%rbp)
	movl	%r14d, -52(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	show_char0
	movl	$1, -44(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1894(%rax)
	je	.LBB343_1
# %bb.2:                                # %land.rhs
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	callq	stringcharlen
	movl	%eax, -44(%rbp)
	movl	$1, %ecx
	testl	%eax, %eax
	jg	.LBB343_4
# %bb.3:                                # %cond.false
	movl	$1, -44(%rbp)
	xorl	%ecx, %ecx
.LBB343_4:                              # %cond.end
	testl	%ecx, %ecx
	setne	%al
	jmp	.LBB343_5
.LBB343_1:
	xorl	%eax, %eax
.LBB343_5:                              # %land.end
	leaq	-33(%rbp), %rdi
	testb	%al, %al
	je	.LBB343_7
# %bb.6:                                # %if.then
	callq	show_char1
	cmpl	$0, vflag(%rip)
	jne	.LBB343_14
	jmp	.LBB343_9
.LBB343_7:                              # %if.else
	leaq	-40(%rbp), %rsi
	callq	show_char2
	cmpl	$0, vflag(%rip)
	jne	.LBB343_14
.LBB343_9:                              # %land.lhs.true
	movzbl	-33(%rbp), %eax
	cmpb	$0, hashheader+982(%rax)
	je	.LBB343_14
# %bb.10:                               # %land.lhs.true11
	cmpl	$1, -44(%rbp)
	jne	.LBB343_14
# %bb.11:                               # %if.then14
	cmpl	$0, -48(%rbp)
	je	.LBB343_13
# %bb.12:                               # %if.then16
	leaq	-40(%rbp), %rdi
	callq	show_char3
.LBB343_13:                             # %if.end18
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	show_char4
	jmp	.LBB343_39
.LBB343_14:                             # %if.end19
	cmpl	$9, -40(%rbp)
	jne	.LBB343_18
# %bb.15:                               # %if.then22
	cmpl	$0, -48(%rbp)
	je	.LBB343_17
# %bb.16:                               # %if.then24
	movl	$9, %edi
	callq	putchar
.LBB343_17:                             # %if.end26
	leaq	-56(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	show_char5
	jmp	.LBB343_39
.LBB343_18:                             # %if.end28
	movl	$0, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB343_21
# %bb.19:                               # %land.lhs.true31
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB343_21
# %bb.20:                               # %if.then34
	leaq	-44(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	callq	show_char6
.LBB343_21:                             # %if.end35
	movl	$0, -72(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-68(%rbp), %rbx
	leaq	-72(%rbp), %r15
	jmp	.LBB343_22
	.p2align	4, 0x90
.LBB343_37:                             # %for.inc
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	%r15, %rdi
	callq	show_char13
.LBB343_22:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB343_38
# %bb.23:                               # %for.body
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %eax
	movl	%eax, -40(%rbp)
	cmpl	$128, %eax
	jl	.LBB343_27
# %bb.24:                               # %if.then42
                                        #   in Loop: Header=BB343_22 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB343_26
# %bb.25:                               # %if.then44
                                        #   in Loop: Header=BB343_22 Depth=1
	callq	show_char7
.LBB343_26:                             # %if.end47
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	show_char8
.LBB343_27:                             # %if.end50
                                        #   in Loop: Header=BB343_22 Depth=1
	cmpl	$32, -40(%rbp)
	jl	.LBB343_29
# %bb.28:                               # %lor.lhs.false
                                        #   in Loop: Header=BB343_22 Depth=1
	cmpl	$127, -40(%rbp)
	jne	.LBB343_34
.LBB343_29:                             # %if.then55
                                        #   in Loop: Header=BB343_22 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB343_33
# %bb.30:                               # %if.then57
                                        #   in Loop: Header=BB343_22 Depth=1
	movl	$94, %edi
	callq	putchar
	cmpl	$127, -40(%rbp)
	jne	.LBB343_32
# %bb.31:                               # %if.then61
                                        #   in Loop: Header=BB343_22 Depth=1
	movl	$63, %edi
	callq	putchar
	jmp	.LBB343_33
	.p2align	4, 0x90
.LBB343_34:                             # %if.else70
                                        #   in Loop: Header=BB343_22 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB343_36
# %bb.35:                               # %if.then72
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	%r14, %rdi
	callq	show_char11
.LBB343_36:                             # %if.end74
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	%rbx, %rdi
	callq	show_char12
	jmp	.LBB343_37
	.p2align	4, 0x90
.LBB343_32:                             # %if.else63
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	%r14, %rdi
	callq	show_char9
.LBB343_33:                             # %if.end68
                                        #   in Loop: Header=BB343_22 Depth=1
	movq	%rbx, %rdi
	callq	show_char10
	jmp	.LBB343_37
.LBB343_38:                             # %for.end
	leaq	-56(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	callq	show_char14
.LBB343_39:                             # %return
	movl	-56(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end343:
	.size	show_char, .Lfunc_end343-show_char
	.cfi_endproc
                                        # -- End function
	.globl	show_char0              # -- Begin function show_char0
	.p2align	4, 0x90
	.type	show_char0,@function
show_char0:                             # @show_char0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movzbl	(%rcx), %ecx
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end344:
	.size	show_char0, .Lfunc_end344-show_char0
	.cfi_endproc
                                        # -- End function
	.globl	show_char1              # -- Begin function show_char1
	.p2align	4, 0x90
	.type	show_char1,@function
show_char1:                             # @show_char1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	$128, %eax
	addl	laststringch(%rip), %eax
	movb	%al, -9(%rsp)
	movb	%al, (%rdi)
	retq
.Lfunc_end345:
	.size	show_char1, .Lfunc_end345-show_char1
	.cfi_endproc
                                        # -- End function
	.globl	show_char2              # -- Begin function show_char2
	.p2align	4, 0x90
	.type	show_char2,@function
show_char2:                             # @show_char2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movb	(%rdi), %al
	movb	%al, -25(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movb	%al, -25(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movb	-25(%rsp), %cl
	movb	%cl, (%rax)
	retq
.Lfunc_end346:
	.size	show_char2, .Lfunc_end346-show_char2
	.cfi_endproc
                                        # -- End function
	.globl	show_char3              # -- Begin function show_char3
	.p2align	4, 0x90
	.type	show_char3,@function
show_char3:                             # @show_char3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	callq	putchar
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end347:
	.size	show_char3, .Lfunc_end347-show_char3
	.cfi_endproc
                                        # -- End function
	.globl	show_char4              # -- Begin function show_char4
	.p2align	4, 0x90
	.type	show_char4,@function
show_char4:                             # @show_char4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	incq	(%rax)
	movl	$1, -28(%rsp)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end348:
	.size	show_char4, .Lfunc_end348-show_char4
	.cfi_endproc
                                        # -- End function
	.globl	show_char5              # -- Begin function show_char5
	.p2align	4, 0x90
	.type	show_char5,@function
show_char5:                             # @show_char5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -36(%rsp)
	movq	%rsi, -16(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -40(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -32(%rsp)
	incq	(%rax)
	movl	-40(%rsp), %eax
	andl	$7, %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rsp)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end349:
	.size	show_char5, .Lfunc_end349-show_char5
	.cfi_endproc
                                        # -- End function
	.globl	show_char6              # -- Begin function show_char6
	.p2align	4, 0x90
	.type	show_char6,@function
show_char6:                             # @show_char6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end350:
	.size	show_char6, .Lfunc_end350-show_char6
	.cfi_endproc
                                        # -- End function
	.globl	show_char7              # -- Begin function show_char7
	.p2align	4, 0x90
	.type	show_char7,@function
show_char7:                             # @show_char7
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$77, %edi
	callq	putchar
	movl	$45, %edi
	callq	putchar
	popq	%rax
	retq
.Lfunc_end351:
	.size	show_char7, .Lfunc_end351-show_char7
	.cfi_endproc
                                        # -- End function
	.globl	show_char8              # -- Begin function show_char8
	.p2align	4, 0x90
	.type	show_char8,@function
show_char8:                             # @show_char8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	addl	$2, %ecx
	movl	%ecx, -12(%rsp)
	andl	$127, %eax
	movl	%eax, -28(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end352:
	.size	show_char8, .Lfunc_end352-show_char8
	.cfi_endproc
                                        # -- End function
	.globl	show_char9              # -- Begin function show_char9
	.p2align	4, 0x90
	.type	show_char9,@function
show_char9:                             # @show_char9
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	addl	$64, %edi
	callq	putchar
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end353:
	.size	show_char9, .Lfunc_end353-show_char9
	.cfi_endproc
                                        # -- End function
	.globl	show_char10             # -- Begin function show_char10
	.p2align	4, 0x90
	.type	show_char10,@function
show_char10:                            # @show_char10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	addl	$2, %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end354:
	.size	show_char10, .Lfunc_end354-show_char10
	.cfi_endproc
                                        # -- End function
	.globl	show_char11             # -- Begin function show_char11
	.p2align	4, 0x90
	.type	show_char11,@function
show_char11:                            # @show_char11
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	callq	putchar
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end355:
	.size	show_char11, .Lfunc_end355-show_char11
	.cfi_endproc
                                        # -- End function
	.globl	show_char12             # -- Begin function show_char12
	.p2align	4, 0x90
	.type	show_char12,@function
show_char12:                            # @show_char12
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end356:
	.size	show_char12, .Lfunc_end356-show_char12
	.cfi_endproc
                                        # -- End function
	.globl	show_char13             # -- Begin function show_char13
	.p2align	4, 0x90
	.type	show_char13,@function
show_char13:                            # @show_char13
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end357:
	.size	show_char13, .Lfunc_end357-show_char13
	.cfi_endproc
                                        # -- End function
	.globl	show_char14             # -- Begin function show_char14
	.p2align	4, 0x90
	.type	show_char14,@function
show_char14:                            # @show_char14
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end358:
	.size	show_char14, .Lfunc_end358-show_char14
	.cfi_endproc
                                        # -- End function
	.globl	line_size0              # -- Begin function line_size0
	.p2align	4, 0x90
	.type	line_size0,@function
line_size0:                             # @line_size0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movl	(%rdx), %esi
	movl	%esi, 12(%rsp)
	movl	24(%rsp), %ecx
	subl	16(%rsp), %ecx
	leaq	16(%rsp), %rdi
	xorl	%edx, %edx
	callq	show_char
	addl	12(%rsp), %eax
	movl	%eax, 12(%rsp)
	movq	32(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	40(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end359:
	.size	line_size0, .Lfunc_end359-line_size0
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities0      # -- Begin function makepossibilities0
	.p2align	4, 0x90
	.type	makepossibilities0,@function
makepossibilities0:                     # @makepossibilities0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movslq	-12(%rsp), %rax
	imulq	$120, %rax, %rax
	movb	$0, possibilities(%rax)
	movq	-8(%rsp), %rax
	movl	-12(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end360:
	.size	makepossibilities0, .Lfunc_end360-makepossibilities0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function wrongcapital
	.type	wrongcapital,@function
wrongcapital:                           # @wrongcapital
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222319, -64(%rbp)   # imm = 0xD3ED7EF
	movl	$555555652, -60(%rbp)   # imm = 0x211D1B44
	movl	$444444541, -56(%rbp)   # imm = 0x1A7DAF7D
	movl	$222222319, %edi        # imm = 0xD3ED7EF
	movl	$555555652, %esi        # imm = 0x211D1B44
	movl	$444444541, %edx        # imm = 0x1A7DAF7D
	callq	guardMe
	movl	$222222318, -52(%rbp)   # imm = 0xD3ED7EE
	movl	$555555651, -48(%rbp)   # imm = 0x211D1B43
	movl	$444444540, -44(%rbp)   # imm = 0x1A7DAF7C
	movl	$222222318, %edi        # imm = 0xD3ED7EE
	movl	$555555651, %esi        # imm = 0x211D1B43
	movl	$444444540, %edx        # imm = 0x1A7DAF7C
	callq	guardMe
	movl	$222222317, -40(%rbp)   # imm = 0xD3ED7ED
	movl	$555555650, -36(%rbp)   # imm = 0x211D1B42
	movl	$444444539, -32(%rbp)   # imm = 0x1A7DAF7B
	movl	$222222317, %edi        # imm = 0xD3ED7ED
	movl	$555555650, %esi        # imm = 0x211D1B42
	movl	$444444539, %edx        # imm = 0x1A7DAF7B
	callq	guardMe
	movl	$222222316, -28(%rbp)   # imm = 0xD3ED7EC
	movl	$555555649, -24(%rbp)   # imm = 0x211D1B41
	movl	$444444538, -20(%rbp)   # imm = 0x1A7DAF7A
	movl	$222222316, %edi        # imm = 0xD3ED7EC
	movl	$555555649, %esi        # imm = 0x211D1B41
	movl	$444444538, %edx        # imm = 0x1A7DAF7A
	callq	guardMe
	movq	%rbx, -16(%rbp)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB361_2
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rsi
	leaq	-192(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, %rdi
	callq	upcase
	movq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
.LBB361_2:                              # %if.end
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end361:
	.size	wrongcapital, .Lfunc_end361-wrongcapital
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities1      # -- Begin function makepossibilities1
	.p2align	4, 0x90
	.type	makepossibilities1,@function
makepossibilities1:                     # @makepossibilities1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	missingletter
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end362:
	.size	makepossibilities1, .Lfunc_end362-makepossibilities1
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities2      # -- Begin function makepossibilities2
	.p2align	4, 0x90
	.type	makepossibilities2,@function
makepossibilities2:                     # @makepossibilities2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	transposedletter
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end363:
	.size	makepossibilities2, .Lfunc_end363-makepossibilities2
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities3      # -- Begin function makepossibilities3
	.p2align	4, 0x90
	.type	makepossibilities3,@function
makepossibilities3:                     # @makepossibilities3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	extraletter
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end364:
	.size	makepossibilities3, .Lfunc_end364-makepossibilities3
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities4      # -- Begin function makepossibilities4
	.p2align	4, 0x90
	.type	makepossibilities4,@function
makepossibilities4:                     # @makepossibilities4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	wrongletter
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end365:
	.size	makepossibilities4, .Lfunc_end365-makepossibilities4
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities5      # -- Begin function makepossibilities5
	.p2align	4, 0x90
	.type	makepossibilities5,@function
makepossibilities5:                     # @makepossibilities5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	missingspace
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end366:
	.size	makepossibilities5, .Lfunc_end366-makepossibilities5
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities6      # -- Begin function makepossibilities6
	.p2align	4, 0x90
	.type	makepossibilities6,@function
makepossibilities6:                     # @makepossibilities6
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	tryveryhard
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end367:
	.size	makepossibilities6, .Lfunc_end367-makepossibilities6
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities7      # -- Begin function makepossibilities7
	.p2align	4, 0x90
	.type	makepossibilities7,@function
makepossibilities7:                     # @makepossibilities7
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	easypossibilities(%rip), %esi
	movl	$possibilities, %edi
	movl	$120, %edx
	movl	$posscmp, %ecx
	callq	qsort
	popq	%rax
	retq
.Lfunc_end368:
	.size	makepossibilities7, .Lfunc_end368-makepossibilities7
	.cfi_endproc
                                        # -- End function
	.globl	makepossibilities8      # -- Begin function makepossibilities8
	.p2align	4, 0x90
	.type	makepossibilities8,@function
makepossibilities8:                     # @makepossibilities8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movslq	easypossibilities(%rip), %rax
	imulq	$120, %rax, %rcx
	leaq	possibilities(%rcx), %rdi
	movl	pcount(%rip), %esi
	subl	%eax, %esi
	movl	$120, %edx
	movl	$posscmp, %ecx
	callq	qsort
	popq	%rax
	retq
.Lfunc_end369:
	.size	makepossibilities8, .Lfunc_end369-makepossibilities8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function posscmp
	.type	posscmp,@function
posscmp:                                # @posscmp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222338, -88(%rbp)   # imm = 0xD3ED802
	movl	$555555671, -84(%rbp)   # imm = 0x211D1B57
	movl	$444444560, -80(%rbp)   # imm = 0x1A7DAF90
	movl	$222222338, %edi        # imm = 0xD3ED802
	movl	$555555671, %esi        # imm = 0x211D1B57
	movl	$444444560, %edx        # imm = 0x1A7DAF90
	callq	guardMe
	movl	$222222337, -76(%rbp)   # imm = 0xD3ED801
	movl	$555555670, -72(%rbp)   # imm = 0x211D1B56
	movl	$444444559, -68(%rbp)   # imm = 0x1A7DAF8F
	movl	$222222337, %edi        # imm = 0xD3ED801
	movl	$555555670, %esi        # imm = 0x211D1B56
	movl	$444444559, %edx        # imm = 0x1A7DAF8F
	callq	guardMe
	movl	$222222336, -64(%rbp)   # imm = 0xD3ED800
	movl	$555555669, -60(%rbp)   # imm = 0x211D1B55
	movl	$444444558, -56(%rbp)   # imm = 0x1A7DAF8E
	movl	$222222336, %edi        # imm = 0xD3ED800
	movl	$555555669, %esi        # imm = 0x211D1B55
	movl	$444444558, %edx        # imm = 0x1A7DAF8E
	callq	guardMe
	movl	$222222335, -52(%rbp)   # imm = 0xD3ED7FF
	movl	$555555668, -48(%rbp)   # imm = 0x211D1B54
	movl	$444444557, -44(%rbp)   # imm = 0x1A7DAF8D
	movl	$222222335, %edi        # imm = 0xD3ED7FF
	movl	$555555668, %esi        # imm = 0x211D1B54
	movl	$444444557, %edx        # imm = 0x1A7DAF8D
	callq	guardMe
	movl	$222222334, -40(%rbp)   # imm = 0xD3ED7FE
	movl	$555555667, -36(%rbp)   # imm = 0x211D1B53
	movl	$444444556, -32(%rbp)   # imm = 0x1A7DAF8C
	movl	$222222334, %edi        # imm = 0xD3ED7FE
	movl	$555555667, %esi        # imm = 0x211D1B53
	movl	$444444556, %edx        # imm = 0x1A7DAF8C
	callq	guardMe
	movl	$222222333, -28(%rbp)   # imm = 0xD3ED7FD
	movl	$555555666, -24(%rbp)   # imm = 0x211D1B52
	movl	$444444555, -20(%rbp)   # imm = 0x1A7DAF8B
	movl	$222222333, %edi        # imm = 0xD3ED7FD
	movl	$555555666, %esi        # imm = 0x211D1B52
	movl	$444444555, %edx        # imm = 0x1A7DAF8B
	callq	guardMe
	movq	%rbx, -104(%rbp)
	movq	%r14, -96(%rbp)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	casecmp
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end370:
	.size	posscmp, .Lfunc_end370-posscmp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tryveryhard
	.type	tryveryhard,@function
tryveryhard:                            # @tryveryhard
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222293, -76(%rbp)   # imm = 0xD3ED7D5
	movl	$555555626, -72(%rbp)   # imm = 0x211D1B2A
	movl	$444444515, -68(%rbp)   # imm = 0x1A7DAF63
	movl	$222222293, %edi        # imm = 0xD3ED7D5
	movl	$555555626, %esi        # imm = 0x211D1B2A
	movl	$444444515, %edx        # imm = 0x1A7DAF63
	callq	guardMe
	movl	$222222292, -64(%rbp)   # imm = 0xD3ED7D4
	movl	$555555625, -60(%rbp)   # imm = 0x211D1B29
	movl	$444444514, -56(%rbp)   # imm = 0x1A7DAF62
	movl	$222222292, %edi        # imm = 0xD3ED7D4
	movl	$555555625, %esi        # imm = 0x211D1B29
	movl	$444444514, %edx        # imm = 0x1A7DAF62
	callq	guardMe
	movl	$222222291, -52(%rbp)   # imm = 0xD3ED7D3
	movl	$555555624, -48(%rbp)   # imm = 0x211D1B28
	movl	$444444513, -44(%rbp)   # imm = 0x1A7DAF61
	movl	$222222291, %edi        # imm = 0xD3ED7D3
	movl	$555555624, %esi        # imm = 0x211D1B28
	movl	$444444513, %edx        # imm = 0x1A7DAF61
	callq	guardMe
	movl	$222222290, -40(%rbp)   # imm = 0xD3ED7D2
	movl	$555555623, -36(%rbp)   # imm = 0x211D1B27
	movl	$444444512, -32(%rbp)   # imm = 0x1A7DAF60
	movl	$222222290, %edi        # imm = 0xD3ED7D2
	movl	$555555623, %esi        # imm = 0x211D1B27
	movl	$444444512, %edx        # imm = 0x1A7DAF60
	callq	guardMe
	movl	$222222289, -28(%rbp)   # imm = 0xD3ED7D1
	movl	$555555622, -24(%rbp)   # imm = 0x211D1B26
	movl	$444444511, -20(%rbp)   # imm = 0x1A7DAF5F
	movl	$222222289, %edi        # imm = 0xD3ED7D1
	movl	$555555622, %esi        # imm = 0x211D1B26
	movl	$444444511, %edx        # imm = 0x1A7DAF5F
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	tryveryhard0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end371:
	.size	tryveryhard, .Lfunc_end371-tryveryhard
	.cfi_endproc
                                        # -- End function
	.globl	tryveryhard0            # -- Begin function tryveryhard0
	.p2align	4, 0x90
	.type	tryveryhard0,@function
tryveryhard0:                           # @tryveryhard0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end372:
	.size	tryveryhard0, .Lfunc_end372-tryveryhard0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function missingspace
	.type	missingspace,@function
missingspace:                           # @missingspace
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2584, %rsp             # imm = 0xA18
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222329, -100(%rbp)  # imm = 0xD3ED7F9
	movl	$555555662, -96(%rbp)   # imm = 0x211D1B4E
	movl	$444444551, -92(%rbp)   # imm = 0x1A7DAF87
	movl	$222222329, %edi        # imm = 0xD3ED7F9
	movl	$555555662, %esi        # imm = 0x211D1B4E
	movl	$444444551, %edx        # imm = 0x1A7DAF87
	callq	guardMe
	movq	%rbx, -88(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, -64(%rbp)
	cmpl	$3, %eax
	jl	.LBB373_15
# %bb.1:                                # %lor.lhs.false
	cmpl	$118, -64(%rbp)
	jg	.LBB373_15
# %bb.2:                                # %if.end
	leaq	-223(%rbp), %rbx
	movq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, -56(%rbp)
	leaq	-224(%rbp), %r12
	leaq	-1424(%rbp), %r14
	leaq	-2624(%rbp), %r15
	leaq	-60(%rbp), %rbx
	leaq	-56(%rbp), %r13
	jmp	.LBB373_3
	.p2align	4, 0x90
.LBB373_14:                             # %for.inc62
                                        #   in Loop: Header=BB373_3 Depth=1
	movq	%r13, %rdi
	callq	missingspace2
.LBB373_3:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB373_7 Depth 2
                                        #       Child Loop BB373_9 Depth 3
	movq	-56(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB373_15
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB373_3 Depth=1
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -1(%rax)
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB373_14
# %bb.5:                                # %if.then13
                                        #   in Loop: Header=BB373_3 Depth=1
	movq	-88(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	save_cap
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rdi
	addq	$1, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB373_14
# %bb.6:                                # %if.then20
                                        #   in Loop: Header=BB373_3 Depth=1
	movq	-56(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, %rsi
	movq	%r15, %rdx
	callq	save_cap
	movl	%eax, -76(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB373_7
.LBB373_13:                             # %for.inc57
                                        #   in Loop: Header=BB373_7 Depth=2
	leaq	-44(%rbp), %rdi
	callq	missingspace1
.LBB373_7:                              # %for.cond25
                                        #   Parent Loop BB373_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB373_9 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB373_14
# %bb.8:                                # %for.body28
                                        #   in Loop: Header=BB373_7 Depth=2
	movq	-56(%rbp), %rax
	subq	%r12, %rax
	movslq	-44(%rbp), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rbp, %rcx
	addq	$-1424, %rcx            # imm = 0xFA70
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB373_9
	.p2align	4, 0x90
.LBB373_12:                             # %for.inc
                                        #   in Loop: Header=BB373_9 Depth=3
	movq	%rbx, %rdi
	callq	missingspace0
.LBB373_9:                              # %for.cond32
                                        #   Parent Loop BB373_3 Depth=1
                                        #     Parent Loop BB373_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB373_13
# %bb.10:                               # %for.body35
                                        #   in Loop: Header=BB373_9 Depth=3
	movq	-72(%rbp), %rax
	movb	$32, (%rax)
	movq	-72(%rbp), %rdi
	addq	$1, %rdi
	movslq	-60(%rbp), %rax
	imulq	$120, %rax, %rax
	leaq	(%rax,%rbp), %rsi
	addq	$-2624, %rsi            # imm = 0xF5C0
	callq	strcpy
	movslq	-44(%rbp), %rax
	imulq	$120, %rax, %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-1424, %rdi            # imm = 0xFA70
	callq	insert
	testl	%eax, %eax
	js	.LBB373_15
# %bb.11:                               # %if.end48
                                        #   in Loop: Header=BB373_9 Depth=3
	movq	-72(%rbp), %rax
	movb	$45, (%rax)
	movslq	-44(%rbp), %rax
	imulq	$120, %rax, %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-1424, %rdi            # imm = 0xFA70
	callq	insert
	testl	%eax, %eax
	jns	.LBB373_12
.LBB373_15:                             # %for.end63
	addq	$2584, %rsp             # imm = 0xA18
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end373:
	.size	missingspace, .Lfunc_end373-missingspace
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function save_cap
	.type	save_cap,@function
save_cap:                               # @save_cap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$222222343, -144(%rbp)  # imm = 0xD3ED807
	movl	$555555676, -140(%rbp)  # imm = 0x211D1B5C
	movl	$444444565, -136(%rbp)  # imm = 0x1A7DAF95
	movl	$222222343, %edi        # imm = 0xD3ED807
	movl	$555555676, %esi        # imm = 0x211D1B5C
	movl	$444444565, %edx        # imm = 0x1A7DAF95
	callq	guardMe
	movl	$222222342, -132(%rbp)  # imm = 0xD3ED806
	movl	$555555675, -128(%rbp)  # imm = 0x211D1B5B
	movl	$444444564, -124(%rbp)  # imm = 0x1A7DAF94
	movl	$222222342, %edi        # imm = 0xD3ED806
	movl	$555555675, %esi        # imm = 0x211D1B5B
	movl	$444444564, %edx        # imm = 0x1A7DAF94
	callq	guardMe
	movl	$222222341, -120(%rbp)  # imm = 0xD3ED805
	movl	$555555674, -116(%rbp)  # imm = 0x211D1B5A
	movl	$444444563, -112(%rbp)  # imm = 0x1A7DAF93
	movl	$222222341, %edi        # imm = 0xD3ED805
	movl	$555555674, %esi        # imm = 0x211D1B5A
	movl	$444444563, %edx        # imm = 0x1A7DAF93
	callq	guardMe
	movl	$222222340, -108(%rbp)  # imm = 0xD3ED804
	movl	$555555673, -104(%rbp)  # imm = 0x211D1B59
	movl	$444444562, -100(%rbp)  # imm = 0x1A7DAF92
	movl	$222222340, %edi        # imm = 0xD3ED804
	movl	$555555673, %esi        # imm = 0x211D1B59
	movl	$444444562, %edx        # imm = 0x1A7DAF92
	callq	guardMe
	movq	%rbx, -96(%rbp)
	movq	%r15, -88(%rbp)
	movq	%r14, -80(%rbp)
	cmpb	$0, (%rbx)
	je	.LBB374_1
# %bb.2:                                # %if.end
	leaq	-44(%rbp), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	save_cap0
	leaq	-68(%rbp), %r15
	leaq	-64(%rbp), %r12
	leaq	-60(%rbp), %r13
	leaq	-56(%rbp), %r14
	addl	$-1, -48(%rbp)
	jns	.LBB374_5
	jmp	.LBB374_4
	.p2align	4, 0x90
.LBB374_13:                             # %if.end31
	subq	$8, %rsp
	movq	%r13, %rdi
	movq	%r14, %rsi
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%r15, %r8
	leaq	-44(%rbp), %r9
	pushq	%r12
	pushq	%rbx
	leaq	-88(%rbp), %rax
	pushq	%rax
	callq	save_cap3
	addq	$32, %rsp
	addl	$-1, -48(%rbp)
	js	.LBB374_4
.LBB374_5:                              # %land.rhs
	cmpl	$10, -44(%rbp)
	setl	%al
	testb	%al, %al
	jne	.LBB374_7
	jmp	.LBB374_14
	.p2align	4, 0x90
.LBB374_4:
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB374_14
.LBB374_7:                              # %for.body
	movslq	-48(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	$0, hits+8(,%rax,8)
	je	.LBB374_9
# %bb.8:                                # %if.then6
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	save_cap1
	jmp	.LBB374_10
	.p2align	4, 0x90
.LBB374_9:                              # %if.else
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
.LBB374_10:                             # %if.end15
	movslq	-48(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	$0, hits+16(,%rax,8)
	je	.LBB374_12
# %bb.11:                               # %if.then19
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	save_cap2
	jmp	.LBB374_13
	.p2align	4, 0x90
.LBB374_12:                             # %if.else30
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB374_13
.LBB374_14:                             # %for.end
	leaq	-52(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	callq	save_cap4
	jmp	.LBB374_15
.LBB374_1:                              # %if.then
	movl	$0, -52(%rbp)
.LBB374_15:                             # %return
	movl	-52(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end374:
	.size	save_cap, .Lfunc_end374-save_cap
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function insert
	.type	insert,@function
insert:                                 # @insert
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222347, -80(%rbp)   # imm = 0xD3ED80B
	movl	$555555680, -76(%rbp)   # imm = 0x211D1B60
	movl	$444444569, -72(%rbp)   # imm = 0x1A7DAF99
	movl	$222222347, %edi        # imm = 0xD3ED80B
	movl	$555555680, %esi        # imm = 0x211D1B60
	movl	$444444569, %edx        # imm = 0x1A7DAF99
	callq	guardMe
	movl	$222222346, -68(%rbp)   # imm = 0xD3ED80A
	movl	$555555679, -64(%rbp)   # imm = 0x211D1B5F
	movl	$444444568, -60(%rbp)   # imm = 0x1A7DAF98
	movl	$222222346, %edi        # imm = 0xD3ED80A
	movl	$555555679, %esi        # imm = 0x211D1B5F
	movl	$444444568, %edx        # imm = 0x1A7DAF98
	callq	guardMe
	movl	$222222345, -56(%rbp)   # imm = 0xD3ED809
	movl	$555555678, -52(%rbp)   # imm = 0x211D1B5E
	movl	$444444567, -48(%rbp)   # imm = 0x1A7DAF97
	movl	$222222345, %edi        # imm = 0xD3ED809
	movl	$555555678, %esi        # imm = 0x211D1B5E
	movl	$444444567, %edx        # imm = 0x1A7DAF97
	callq	guardMe
	movl	$222222344, -44(%rbp)   # imm = 0xD3ED808
	movl	$555555677, -40(%rbp)   # imm = 0x211D1B5D
	movl	$444444566, -36(%rbp)   # imm = 0x1A7DAF96
	movl	$222222344, %edi        # imm = 0xD3ED808
	movl	$555555677, %esi        # imm = 0x211D1B5D
	movl	$444444566, %edx        # imm = 0x1A7DAF96
	callq	guardMe
	movq	%rbx, -32(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	insert0
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rbx
	jmp	.LBB375_1
	.p2align	4, 0x90
.LBB375_3:                              # %for.inc
                                        #   in Loop: Header=BB375_1 Depth=1
	movq	%rbx, %rdi
	callq	insert1
.LBB375_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	pcount(%rip), %eax
	jge	.LBB375_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB375_1 Depth=1
	movslq	-12(%rbp), %rax
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB375_3
	jmp	.LBB375_8
.LBB375_4:                              # %for.end
	movslq	pcount(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, pcount(%rip)
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, -12(%rbp)
	cmpl	maxposslen(%rip), %eax
	jle	.LBB375_6
# %bb.5:                                # %if.then11
	leaq	-12(%rbp), %rdi
	callq	insert2
.LBB375_6:                              # %if.end12
	cmpl	$100, pcount(%rip)
	jl	.LBB375_8
# %bb.7:                                # %if.then15
	movl	$-1, -16(%rbp)
	jmp	.LBB375_9
.LBB375_8:                              # %if.else
	movl	$0, -16(%rbp)
.LBB375_9:                              # %return
	movl	-16(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end375:
	.size	insert, .Lfunc_end375-insert
	.cfi_endproc
                                        # -- End function
	.globl	missingspace0           # -- Begin function missingspace0
	.p2align	4, 0x90
	.type	missingspace0,@function
missingspace0:                          # @missingspace0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end376:
	.size	missingspace0, .Lfunc_end376-missingspace0
	.cfi_endproc
                                        # -- End function
	.globl	missingspace1           # -- Begin function missingspace1
	.p2align	4, 0x90
	.type	missingspace1,@function
missingspace1:                          # @missingspace1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end377:
	.size	missingspace1, .Lfunc_end377-missingspace1
	.cfi_endproc
                                        # -- End function
	.globl	missingspace2           # -- Begin function missingspace2
	.p2align	4, 0x90
	.type	missingspace2,@function
missingspace2:                          # @missingspace2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end378:
	.size	missingspace2, .Lfunc_end378-missingspace2
	.cfi_endproc
                                        # -- End function
	.globl	insert0                 # -- Begin function insert0
	.p2align	4, 0x90
	.type	insert0,@function
insert0:                                # @insert0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 16(%rsp)
	xorl	%esi, %esi
	callq	ichartosstr
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end379:
	.size	insert0, .Lfunc_end379-insert0
	.cfi_endproc
                                        # -- End function
	.globl	insert1                 # -- Begin function insert1
	.p2align	4, 0x90
	.type	insert1,@function
insert1:                                # @insert1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end380:
	.size	insert1, .Lfunc_end380-insert1
	.cfi_endproc
                                        # -- End function
	.globl	insert2                 # -- Begin function insert2
	.p2align	4, 0x90
	.type	insert2,@function
insert2:                                # @insert2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, maxposslen(%rip)
	movl	%eax, (%rdi)
	retq
.Lfunc_end381:
	.size	insert2, .Lfunc_end381-insert2
	.cfi_endproc
                                        # -- End function
	.globl	save_cap0               # -- Begin function save_cap0
	.p2align	4, 0x90
	.type	save_cap0,@function
save_cap0:                              # @save_cap0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	numhits(%rip), %eax
	movl	%eax, -12(%rsp)
	movl	$0, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end382:
	.size	save_cap0, .Lfunc_end382-save_cap0
	.cfi_endproc
                                        # -- End function
	.globl	save_cap1               # -- Begin function save_cap1
	.p2align	4, 0x90
	.type	save_cap1,@function
save_cap1:                              # @save_cap1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -32(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -36(%rsp)
	movq	%rdx, -8(%rsp)
	movl	(%rdx), %eax
	movl	%eax, -28(%rsp)
	movslq	-28(%rsp), %rax
	leaq	(%rax,%rax,2), %rcx
	movq	hits+8(,%rcx,8), %rsi
	movswl	18(%rsi), %esi
	movl	%esi, -36(%rsp)
	movq	hits+8(,%rcx,8), %rcx
	movswl	20(%rcx), %ecx
	movl	%ecx, -32(%rsp)
	movl	%eax, (%rdx)
	movq	-24(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movl	-32(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end383:
	.size	save_cap1, .Lfunc_end383-save_cap1
	.cfi_endproc
                                        # -- End function
	.globl	save_cap2               # -- Begin function save_cap2
	.p2align	4, 0x90
	.type	save_cap2,@function
save_cap2:                              # @save_cap2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -28(%rsp)
	movq	%rdx, -24(%rsp)
	movl	(%rdx), %eax
	movl	%eax, -36(%rsp)
	movslq	-36(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	hits+16(,%rax,8), %rcx
	movswl	18(%rcx), %ecx
	movl	%ecx, -28(%rsp)
	movq	hits+16(,%rax,8), %rax
	movswl	20(%rax), %eax
	movl	%eax, -32(%rsp)
	movq	-16(%rsp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movl	-32(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end384:
	.size	save_cap2, .Lfunc_end384-save_cap2
	.cfi_endproc
                                        # -- End function
	.globl	save_cap3               # -- Begin function save_cap3
	.p2align	4, 0x90
	.type	save_cap3,@function
save_cap3:                              # @save_cap3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 20(%rsp)
	movq	%rsi, 88(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 16(%rsp)
	movq	%rdx, 80(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	%r8, 64(%rsp)
	movl	(%r8), %ecx
	movl	%ecx, 28(%rsp)
	movq	%r9, 56(%rsp)
	movl	(%r9), %eax
	movl	%eax, 12(%rsp)
	movq	112(%rsp), %rax
	movq	(%rax), %rsi
	movq	%rsi, 48(%rsp)
	movq	120(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	128(%rsp), %rax
	movl	(%rax), %edx
	movl	%edx, 24(%rsp)
	movq	40(%rsp), %rdi
	movl	16(%rsp), %r8d
	movl	20(%rsp), %r9d
	movslq	8(%rsp), %rax
	shlq	$3, %rax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	20(%rsp), %r10
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	48(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	hits+16(%rax,%rax,2)
	.cfi_adjust_cfa_offset 8
	pushq	hits+8(%rax,%rax,2)
	.cfi_adjust_cfa_offset 8
	pushq	hits(%rax,%rax,2)
	.cfi_adjust_cfa_offset 8
	callq	save_root_cap
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movq	120(%rsp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	128(%rsp), %rax
	movl	24(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	112(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movl	28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	96(%rsp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	56(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	88(%rsp), %rax
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	72(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
.Lfunc_end385:
	.size	save_cap3, .Lfunc_end385-save_cap3
	.cfi_endproc
                                        # -- End function
	.globl	save_cap4               # -- Begin function save_cap4
	.p2align	4, 0x90
	.type	save_cap4,@function
save_cap4:                              # @save_cap4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end386:
	.size	save_cap4, .Lfunc_end386-save_cap4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function save_root_cap
	.type	save_root_cap,@function
save_root_cap:                          # @save_root_cap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -112(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -100(%rbp)
	movq	48(%rbp), %rax
	cmpl	$9, (%rax)
	jg	.LBB387_4
# %bb.1:                                # %if.end
	movq	-112(%rbp), %rsi
	leaq	-304(%rbp), %rdi
	callq	strcpy
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	hashheader+1210(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$1879048192, %ecx       # imm = 0x70000000
	andq	16(%rax), %rcx
	cmpq	$268435456, %rcx        # imm = 0x10000000
	je	.LBB387_2
# %bb.5:                                # %if.end12
	leaq	-64(%rbp), %rbx
	leaq	-96(%rbp), %rsi
	movq	%rbx, %rdi
	callq	save_root_cap0
	jmp	.LBB387_6
	.p2align	4, 0x90
.LBB387_8:                              # %for.inc
                                        #   in Loop: Header=BB387_6 Depth=1
	movq	%rbx, %rdi
	callq	save_root_cap1
.LBB387_6:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB387_9
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB387_6 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB387_8
.LBB387_9:                              # %for.end
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB387_2
# %bb.10:                               # %if.end29
	leaq	-64(%rbp), %rbx
	leaq	-96(%rbp), %rsi
	movq	%rbx, %rdi
	callq	save_root_cap2
	jmp	.LBB387_11
	.p2align	4, 0x90
.LBB387_13:                             # %for.inc38
                                        #   in Loop: Header=BB387_11 Depth=1
	movq	%rbx, %rdi
	callq	save_root_cap3
.LBB387_11:                             # %for.cond30
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB387_14
# %bb.12:                               # %for.body32
                                        #   in Loop: Header=BB387_11 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB387_13
.LBB387_14:                             # %for.end40
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB387_15
.LBB387_31:                             # %if.end152
	movq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	strtosichar
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rax
	testb	$64, 19(%rax)
	je	.LBB387_33
# %bb.32:                               # %if.then161
	leaq	-56(%rbp), %rdi
	callq	save_root_cap4
.LBB387_33:                             # %if.end163
	movl	$805306368, %r13d       # imm = 0x30000000
	leaq	-304(%rbp), %r14
	leaq	-44(%rbp), %r15
	leaq	-64(%rbp), %rbx
	leaq	-56(%rbp), %r12
	cmpq	$0, 24(%rbp)
	jne	.LBB387_35
	jmp	.LBB387_36
	.p2align	4, 0x90
.LBB387_44:                             # %if.end322
	movq	%r12, %rdi
	callq	save_root_cap11
	cmpq	$0, 24(%rbp)
	je	.LBB387_36
.LBB387_35:                             # %lor.lhs.false167
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB387_43
.LBB387_36:                             # %land.lhs.true176
	cmpq	$0, 32(%rbp)
	je	.LBB387_38
# %bb.37:                               # %lor.lhs.false179
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB387_43
.LBB387_38:                             # %if.then188
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r13, %rax
	cmpq	$805306368, %rax        # imm = 0x30000000
	je	.LBB387_45
# %bb.39:                               # %if.then194
	movq	%r14, %rdi
	callq	lowcase
	cmpl	$0, -76(%rbp)
	jne	.LBB387_41
# %bb.40:                               # %lor.lhs.false197
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r13, %rax
	cmpq	$536870912, %rax        # imm = 0x20000000
	jne	.LBB387_42
.LBB387_41:                             # %if.then203
	movzbl	-304(%rbp), %eax
	movb	hashheader+754(%rax), %al
	movb	%al, -304(%rbp)
	jmp	.LBB387_42
	.p2align	4, 0x90
.LBB387_45:                             # %if.else219
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	strtosichar
	movq	%rax, -64(%rbp)
	movslq	-84(%rbp), %rcx
	leaq	(%rax,%rcx), %rdi
	movslq	-68(%rbp), %rax
	leaq	(%rax,%rbp), %rsi
	addq	$-304, %rsi             # imm = 0xFED0
	movslq	-72(%rbp), %rdx
	subq	%rcx, %rdx
	movslq	-80(%rbp), %rax
	subq	%rax, %rdx
	callq	bcopy
	movslq	-84(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB387_49
# %bb.46:                               # %if.then233
	movl	$0, -44(%rbp)
	jmp	.LBB387_47
	.p2align	4, 0x90
.LBB387_48:                             # %for.inc244
                                        #   in Loop: Header=BB387_47 Depth=1
	movslq	-44(%rbp), %rax
	movzbl	-304(%rbp,%rax), %ecx
	movzbl	hashheader+754(%rcx), %ecx
	movb	%cl, -304(%rbp,%rax)
	movq	%r15, %rdi
	callq	save_root_cap5
.LBB387_47:                             # %for.cond234
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB387_48
	jmp	.LBB387_52
.LBB387_49:                             # %if.else247
	movl	$0, -44(%rbp)
	jmp	.LBB387_50
	.p2align	4, 0x90
.LBB387_51:                             # %for.inc258
                                        #   in Loop: Header=BB387_50 Depth=1
	movslq	-44(%rbp), %rax
	movzbl	-304(%rbp,%rax), %ecx
	movzbl	hashheader+526(%rcx), %ecx
	movb	%cl, -304(%rbp,%rax)
	movq	%r15, %rdi
	callq	save_root_cap6
.LBB387_50:                             # %for.cond248
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB387_51
.LBB387_52:                             # %if.end261
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-100(%rbp), %ecx
	addl	%eax, %ecx
	movl	-84(%rbp), %edx
	subl	%edx, %ecx
	movl	-80(%rbp), %esi
	subl	%esi, %ecx
	movl	%ecx, -88(%rbp)
	subl	%edx, %eax
	subl	%esi, %eax
	movl	%eax, -44(%rbp)
	movslq	-72(%rbp), %rax
	movslq	-80(%rbp), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	leaq	(%rcx,%rax), %rdx
	addq	$-1, %rdx
	movq	%rdx, -64(%rbp)
	movzbl	-1(%rcx,%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB387_56
# %bb.53:                               # %if.then275
	movslq	-44(%rbp), %rax
	addq	%rbp, %rax
	addq	$-304, %rax             # imm = 0xFED0
	movq	%rax, -64(%rbp)
	jmp	.LBB387_54
	.p2align	4, 0x90
.LBB387_55:                             # %for.inc285
                                        #   in Loop: Header=BB387_54 Depth=1
	movq	%rbx, %rdi
	callq	save_root_cap7
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	save_root_cap8
.LBB387_54:                             # %for.cond279
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.LBB387_55
	jmp	.LBB387_42
.LBB387_56:                             # %if.else289
	movslq	-44(%rbp), %rax
	addq	%rbp, %rax
	addq	$-304, %rax             # imm = 0xFED0
	movq	%rax, -64(%rbp)
	jmp	.LBB387_57
	.p2align	4, 0x90
.LBB387_58:                             # %for.inc299
                                        #   in Loop: Header=BB387_57 Depth=1
	movq	%rbx, %rdi
	callq	save_root_cap9
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	save_root_cap10
.LBB387_57:                             # %for.cond293
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.LBB387_58
	.p2align	4, 0x90
.LBB387_42:                             # %if.end303
	movq	48(%rbp), %rax
	movslq	(%rax), %rax
	imulq	$120, %rax, %rdi
	addq	40(%rbp), %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	48(%rbp), %rax
	addl	$1, (%rax)
	movq	48(%rbp), %rax
	cmpl	$9, (%rax)
	jg	.LBB387_4
.LBB387_43:                             # %if.end315
	movq	-56(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB387_44
	jmp	.LBB387_4
.LBB387_2:                              # %if.then5
	leaq	-304(%rbp), %rbx
	movq	%rbx, %rdi
	callq	upcase
.LBB387_3:                              # %return
	movq	48(%rbp), %rax
	movslq	(%rax), %rax
	imulq	$120, %rax, %rdi
	addq	40(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	48(%rbp), %rax
	addl	$1, (%rax)
.LBB387_4:                              # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB387_15:                             # %if.then44
	cmpl	$0, -76(%rbp)
	je	.LBB387_19
# %bb.16:                               # %if.then46
	movq	-56(%rbp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$536870912, %rcx        # imm = 0x20000000
	je	.LBB387_18
# %bb.17:                               # %lor.lhs.false
	movq	-56(%rbp), %rax
	testb	$48, 19(%rax)
	jne	.LBB387_21
	jmp	.LBB387_18
.LBB387_19:                             # %if.else
	movq	-56(%rbp), %rax
	testb	$48, 19(%rax)
	je	.LBB387_20
.LBB387_21:                             # %if.end84
	movl	$805306368, %eax        # imm = 0x30000000
	.p2align	4, 0x90
.LBB387_22:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rcx
	testb	$64, 19(%rcx)
	je	.LBB387_31
# %bb.23:                               # %while.body
                                        #   in Loop: Header=BB387_22 Depth=1
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	16(%rcx), %rcx
	andq	%rax, %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	je	.LBB387_22
# %bb.24:                               # %lor.lhs.false94
                                        #   in Loop: Header=BB387_22 Depth=1
	cmpq	$0, 24(%rbp)
	je	.LBB387_26
# %bb.25:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB387_22 Depth=1
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	24(%rbp), %rdx
	movzbl	16(%rdx), %edx
	btq	%rdx, %rcx
	jae	.LBB387_22
.LBB387_26:                             # %land.lhs.true
                                        #   in Loop: Header=BB387_22 Depth=1
	cmpq	$0, 32(%rbp)
	je	.LBB387_28
# %bb.27:                               # %lor.lhs.false105
                                        #   in Loop: Header=BB387_22 Depth=1
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rbp), %rdx
	movzbl	16(%rdx), %edx
	btq	%rdx, %rcx
	jae	.LBB387_22
.LBB387_28:                             # %if.end115
                                        #   in Loop: Header=BB387_22 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB387_30
# %bb.29:                               # %if.then117
                                        #   in Loop: Header=BB387_22 Depth=1
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	andq	%rax, %rcx
	cmpq	$536870912, %rcx        # imm = 0x20000000
	jne	.LBB387_22
	jmp	.LBB387_18
.LBB387_30:                             # %if.else136
                                        #   in Loop: Header=BB387_22 Depth=1
	movq	-56(%rbp), %rcx
	testb	$48, 19(%rcx)
	jne	.LBB387_22
.LBB387_20:                             # %if.then75
	leaq	-304(%rbp), %rbx
	movq	%rbx, %rdi
	callq	lowcase
	jmp	.LBB387_3
.LBB387_18:                             # %if.then57
	leaq	-304(%rbp), %rbx
	movq	%rbx, %rdi
	callq	lowcase
	movzbl	-304(%rbp), %eax
	movb	hashheader+754(%rax), %al
	movb	%al, -304(%rbp)
	jmp	.LBB387_3
.Lfunc_end387:
	.size	save_root_cap, .Lfunc_end387-save_root_cap
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap0          # -- Begin function save_root_cap0
	.p2align	4, 0x90
	.type	save_root_cap0,@function
save_root_cap0:                         # @save_root_cap0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end388:
	.size	save_root_cap0, .Lfunc_end388-save_root_cap0
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap1          # -- Begin function save_root_cap1
	.p2align	4, 0x90
	.type	save_root_cap1,@function
save_root_cap1:                         # @save_root_cap1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end389:
	.size	save_root_cap1, .Lfunc_end389-save_root_cap1
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap2          # -- Begin function save_root_cap2
	.p2align	4, 0x90
	.type	save_root_cap2,@function
save_root_cap2:                         # @save_root_cap2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end390:
	.size	save_root_cap2, .Lfunc_end390-save_root_cap2
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap3          # -- Begin function save_root_cap3
	.p2align	4, 0x90
	.type	save_root_cap3,@function
save_root_cap3:                         # @save_root_cap3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end391:
	.size	save_root_cap3, .Lfunc_end391-save_root_cap3
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap4          # -- Begin function save_root_cap4
	.p2align	4, 0x90
	.type	save_root_cap4,@function
save_root_cap4:                         # @save_root_cap4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end392:
	.size	save_root_cap4, .Lfunc_end392-save_root_cap4
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap5          # -- Begin function save_root_cap5
	.p2align	4, 0x90
	.type	save_root_cap5,@function
save_root_cap5:                         # @save_root_cap5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end393:
	.size	save_root_cap5, .Lfunc_end393-save_root_cap5
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap6          # -- Begin function save_root_cap6
	.p2align	4, 0x90
	.type	save_root_cap6,@function
save_root_cap6:                         # @save_root_cap6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end394:
	.size	save_root_cap6, .Lfunc_end394-save_root_cap6
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap7          # -- Begin function save_root_cap7
	.p2align	4, 0x90
	.type	save_root_cap7,@function
save_root_cap7:                         # @save_root_cap7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movb	hashheader+754(%rcx), %cl
	movb	%cl, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end395:
	.size	save_root_cap7, .Lfunc_end395-save_root_cap7
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap8          # -- Begin function save_root_cap8
	.p2align	4, 0x90
	.type	save_root_cap8,@function
save_root_cap8:                         # @save_root_cap8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	incq	%rax
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end396:
	.size	save_root_cap8, .Lfunc_end396-save_root_cap8
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap9          # -- Begin function save_root_cap9
	.p2align	4, 0x90
	.type	save_root_cap9,@function
save_root_cap9:                         # @save_root_cap9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movb	hashheader+526(%rcx), %cl
	movb	%cl, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end397:
	.size	save_root_cap9, .Lfunc_end397-save_root_cap9
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap10         # -- Begin function save_root_cap10
	.p2align	4, 0x90
	.type	save_root_cap10,@function
save_root_cap10:                        # @save_root_cap10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	incq	%rax
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end398:
	.size	save_root_cap10, .Lfunc_end398-save_root_cap10
	.cfi_endproc
                                        # -- End function
	.globl	save_root_cap11         # -- Begin function save_root_cap11
	.p2align	4, 0x90
	.type	save_root_cap11,@function
save_root_cap11:                        # @save_root_cap11
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end399:
	.size	save_root_cap11, .Lfunc_end399-save_root_cap11
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function wrongletter
	.type	wrongletter,@function
wrongletter:                            # @wrongletter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222328, -84(%rbp)   # imm = 0xD3ED7F8
	movl	$555555661, -80(%rbp)   # imm = 0x211D1B4D
	movl	$444444550, -76(%rbp)   # imm = 0x1A7DAF86
	movl	$222222328, %edi        # imm = 0xD3ED7F8
	movl	$555555661, %esi        # imm = 0x211D1B4D
	movl	$444444550, %edx        # imm = 0x1A7DAF86
	callq	guardMe
	movl	$222222327, -72(%rbp)   # imm = 0xD3ED7F7
	movl	$555555660, -68(%rbp)   # imm = 0x211D1B4C
	movl	$444444549, -64(%rbp)   # imm = 0x1A7DAF85
	movl	$222222327, %edi        # imm = 0xD3ED7F7
	movl	$555555660, %esi        # imm = 0x211D1B4C
	movl	$444444549, %edx        # imm = 0x1A7DAF85
	callq	guardMe
	movl	$222222326, -60(%rbp)   # imm = 0xD3ED7F6
	movl	$555555659, -56(%rbp)   # imm = 0x211D1B4B
	movl	$444444548, -52(%rbp)   # imm = 0x1A7DAF84
	movl	$222222326, %edi        # imm = 0xD3ED7F6
	movl	$555555659, %esi        # imm = 0x211D1B4B
	movl	$444444548, %edx        # imm = 0x1A7DAF84
	callq	guardMe
	movq	%rbx, -48(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %rsi
	leaq	-208(%rbp), %r14
	movq	%r14, %rdi
	callq	strcpy
	movq	%r14, %rdi
	callq	upcase
	movl	$0, -32(%rbp)
	leaq	-36(%rbp), %rbx
	leaq	-32(%rbp), %r15
	jmp	.LBB400_1
	.p2align	4, 0x90
.LBB400_11:                             # %for.inc42
                                        #   in Loop: Header=BB400_1 Depth=1
	movb	-25(%rbp), %al
	movslq	-32(%rbp), %rcx
	movb	%al, -208(%rbp,%rcx)
	movq	%r15, %rdi
	callq	wrongletter1
.LBB400_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB400_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB400_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB400_1 Depth=1
	movslq	-32(%rbp), %rax
	movb	-208(%rbp,%rax), %al
	movb	%al, -25(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB400_3
	.p2align	4, 0x90
.LBB400_10:                             # %for.inc
                                        #   in Loop: Header=BB400_3 Depth=2
	movq	%rbx, %rdi
	callq	wrongletter0
.LBB400_3:                              # %for.cond4
                                        #   Parent Loop BB400_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	Trynum(%rip), %eax
	jge	.LBB400_11
# %bb.4:                                # %for.body7
                                        #   in Loop: Header=BB400_3 Depth=2
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB400_10
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB400_3 Depth=2
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	cmpb	$0, hashheader+1666(%rax)
	je	.LBB400_8
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB400_3 Depth=2
	cmpl	$0, -32(%rbp)
	je	.LBB400_10
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB400_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	cmpl	%eax, -32(%rbp)
	je	.LBB400_10
.LBB400_8:                              # %if.end24
                                        #   in Loop: Header=BB400_3 Depth=2
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	movslq	-32(%rbp), %rcx
	movb	%al, -208(%rbp,%rcx)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB400_10
# %bb.9:                                # %if.then32
                                        #   in Loop: Header=BB400_3 Depth=2
	movq	-48(%rbp), %rsi
	movq	%r14, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB400_10
.LBB400_12:                             # %for.end44
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end400:
	.size	wrongletter, .Lfunc_end400-wrongletter
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ins_cap
	.type	ins_cap,@function
ins_cap:                                # @ins_cap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1264, %rsp             # imm = 0x4F0
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222350, -64(%rbp)   # imm = 0xD3ED80E
	movl	$555555683, -60(%rbp)   # imm = 0x211D1B63
	movl	$444444572, -56(%rbp)   # imm = 0x1A7DAF9C
	movl	$222222350, %edi        # imm = 0xD3ED80E
	movl	$555555683, %esi        # imm = 0x211D1B63
	movl	$444444572, %edx        # imm = 0x1A7DAF9C
	callq	guardMe
	movl	$222222349, -52(%rbp)   # imm = 0xD3ED80D
	movl	$555555682, -48(%rbp)   # imm = 0x211D1B62
	movl	$444444571, -44(%rbp)   # imm = 0x1A7DAF9B
	movl	$222222349, %edi        # imm = 0xD3ED80D
	movl	$555555682, %esi        # imm = 0x211D1B62
	movl	$444444571, %edx        # imm = 0x1A7DAF9B
	callq	guardMe
	movl	$222222348, -40(%rbp)   # imm = 0xD3ED80C
	movl	$555555681, -36(%rbp)   # imm = 0x211D1B61
	movl	$444444570, -32(%rbp)   # imm = 0x1A7DAF9A
	movl	$222222348, %edi        # imm = 0xD3ED80C
	movl	$555555681, %esi        # imm = 0x211D1B61
	movl	$444444570, %edx        # imm = 0x1A7DAF9A
	callq	guardMe
	movq	%rbx, -80(%rbp)
	movq	%r14, -72(%rbp)
	leaq	-1280(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	save_cap
	movl	%eax, -28(%rbp)
	movl	$0, -20(%rbp)
	leaq	-20(%rbp), %rbx
	jmp	.LBB401_1
	.p2align	4, 0x90
.LBB401_4:                              # %for.inc
                                        #   in Loop: Header=BB401_1 Depth=1
	movq	%rbx, %rdi
	callq	ins_cap0
.LBB401_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB401_5
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB401_1 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$120, %rax, %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-1280, %rdi            # imm = 0xFB00
	callq	insert
	testl	%eax, %eax
	jns	.LBB401_4
# %bb.3:                                # %if.then
	movl	$-1, -24(%rbp)
	jmp	.LBB401_6
.LBB401_5:                              # %for.end
	movl	$0, -24(%rbp)
.LBB401_6:                              # %return
	movl	-24(%rbp), %eax
	addq	$1264, %rsp             # imm = 0x4F0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end401:
	.size	ins_cap, .Lfunc_end401-ins_cap
	.cfi_endproc
                                        # -- End function
	.globl	wrongletter0            # -- Begin function wrongletter0
	.p2align	4, 0x90
	.type	wrongletter0,@function
wrongletter0:                           # @wrongletter0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end402:
	.size	wrongletter0, .Lfunc_end402-wrongletter0
	.cfi_endproc
                                        # -- End function
	.globl	wrongletter1            # -- Begin function wrongletter1
	.p2align	4, 0x90
	.type	wrongletter1,@function
wrongletter1:                           # @wrongletter1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end403:
	.size	wrongletter1, .Lfunc_end403-wrongletter1
	.cfi_endproc
                                        # -- End function
	.globl	ins_cap0                # -- Begin function ins_cap0
	.p2align	4, 0x90
	.type	ins_cap0,@function
ins_cap0:                               # @ins_cap0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end404:
	.size	ins_cap0, .Lfunc_end404-ins_cap0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function extraletter
	.type	extraletter,@function
extraletter:                            # @extraletter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222325, -72(%rbp)   # imm = 0xD3ED7F5
	movl	$555555658, -68(%rbp)   # imm = 0x211D1B4A
	movl	$444444547, -64(%rbp)   # imm = 0x1A7DAF83
	movl	$222222325, %edi        # imm = 0xD3ED7F5
	movl	$555555658, %esi        # imm = 0x211D1B4A
	movl	$444444547, %edx        # imm = 0x1A7DAF83
	callq	guardMe
	movl	$222222324, -60(%rbp)   # imm = 0xD3ED7F4
	movl	$555555657, -56(%rbp)   # imm = 0x211D1B49
	movl	$444444546, -52(%rbp)   # imm = 0x1A7DAF82
	movl	$222222324, %edi        # imm = 0xD3ED7F4
	movl	$555555657, %esi        # imm = 0x211D1B49
	movl	$444444546, %edx        # imm = 0x1A7DAF82
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$2, %rax
	jb	.LBB405_6
# %bb.1:                                # %if.end
	movq	-32(%rbp), %rsi
	addq	$1, %rsi
	leaq	-192(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%rbx, -48(%rbp)
	leaq	-48(%rbp), %r14
	leaq	-40(%rbp), %r15
	jmp	.LBB405_2
	.p2align	4, 0x90
.LBB405_5:                              # %if.end14
                                        #   in Loop: Header=BB405_2 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	extraletter0
.LBB405_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB405_6
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB405_2 Depth=1
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB405_5
# %bb.4:                                # %if.then7
                                        #   in Loop: Header=BB405_2 Depth=1
	movq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB405_5
.LBB405_6:                              # %for.end
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end405:
	.size	extraletter, .Lfunc_end405-extraletter
	.cfi_endproc
                                        # -- End function
	.globl	extraletter0            # -- Begin function extraletter0
	.p2align	4, 0x90
	.type	extraletter0,@function
extraletter0:                           # @extraletter0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -24(%rsp)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end406:
	.size	extraletter0, .Lfunc_end406-extraletter0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function transposedletter
	.type	transposedletter,@function
transposedletter:                       # @transposedletter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222323, -72(%rbp)   # imm = 0xD3ED7F3
	movl	$555555656, -68(%rbp)   # imm = 0x211D1B48
	movl	$444444545, -64(%rbp)   # imm = 0x1A7DAF81
	movl	$222222323, %edi        # imm = 0xD3ED7F3
	movl	$555555656, %esi        # imm = 0x211D1B48
	movl	$444444545, %edx        # imm = 0x1A7DAF81
	callq	guardMe
	movl	$222222322, -60(%rbp)   # imm = 0xD3ED7F2
	movl	$555555655, -56(%rbp)   # imm = 0x211D1B47
	movl	$444444544, -52(%rbp)   # imm = 0x1A7DAF80
	movl	$222222322, %edi        # imm = 0xD3ED7F2
	movl	$555555655, %esi        # imm = 0x211D1B47
	movl	$444444544, %edx        # imm = 0x1A7DAF80
	callq	guardMe
	movq	%rbx, -48(%rbp)
	leaq	-192(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	%r15, -40(%rbp)
	leaq	-25(%rbp), %r14
	leaq	-40(%rbp), %rbx
	jmp	.LBB407_1
	.p2align	4, 0x90
.LBB407_4:                              # %for.inc
                                        #   in Loop: Header=BB407_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	transposedletter0
	movq	%rbx, %rdi
	callq	transposedletter1
.LBB407_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB407_5
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB407_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, -25(%rbp)
	movzbl	1(%rax), %ecx
	movb	%cl, (%rax)
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movb	%al, 1(%rcx)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB407_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB407_1 Depth=1
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB407_4
.LBB407_5:                              # %for.end
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end407:
	.size	transposedletter, .Lfunc_end407-transposedletter
	.cfi_endproc
                                        # -- End function
	.globl	transposedletter0       # -- Begin function transposedletter0
	.p2align	4, 0x90
	.type	transposedletter0,@function
transposedletter0:                      # @transposedletter0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movb	(%rdi), %al
	movb	%al, -25(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movb	(%rax), %cl
	movb	%cl, -25(%rsp)
	movb	1(%rax), %cl
	movb	%cl, (%rax)
	movb	-25(%rsp), %al
	movq	-24(%rsp), %rcx
	movb	%al, 1(%rcx)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movb	-25(%rsp), %cl
	movb	%cl, (%rax)
	retq
.Lfunc_end408:
	.size	transposedletter0, .Lfunc_end408-transposedletter0
	.cfi_endproc
                                        # -- End function
	.globl	transposedletter1       # -- Begin function transposedletter1
	.p2align	4, 0x90
	.type	transposedletter1,@function
transposedletter1:                      # @transposedletter1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end409:
	.size	transposedletter1, .Lfunc_end409-transposedletter1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function missingletter
	.type	missingletter,@function
missingletter:                          # @missingletter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$222222321, -88(%rbp)   # imm = 0xD3ED7F1
	movl	$555555654, -84(%rbp)   # imm = 0x211D1B46
	movl	$444444543, -80(%rbp)   # imm = 0x1A7DAF7F
	movl	$222222321, %edi        # imm = 0xD3ED7F1
	movl	$555555654, %esi        # imm = 0x211D1B46
	movl	$444444543, %edx        # imm = 0x1A7DAF7F
	callq	guardMe
	movl	$222222320, -76(%rbp)   # imm = 0xD3ED7F0
	movl	$555555653, -72(%rbp)   # imm = 0x211D1B45
	movl	$444444542, -68(%rbp)   # imm = 0x1A7DAF7E
	movl	$222222320, %edi        # imm = 0xD3ED7F0
	movl	$555555653, %esi        # imm = 0x211D1B45
	movl	$444444542, %edx        # imm = 0x1A7DAF7E
	callq	guardMe
	movq	%rbx, -56(%rbp)
	leaq	-223(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-224(%rbp), %rbx
	movq	%rbx, -48(%rbp)
	leaq	-36(%rbp), %r14
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	jmp	.LBB410_1
	.p2align	4, 0x90
.LBB410_9:                              # %for.end
                                        #   in Loop: Header=BB410_1 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	missingletter1
.LBB410_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB410_3 Depth 2
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB410_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB410_1 Depth=1
	movl	$0, -36(%rbp)
	jmp	.LBB410_3
	.p2align	4, 0x90
.LBB410_8:                              # %for.inc
                                        #   in Loop: Header=BB410_3 Depth=2
	movq	%r14, %rdi
	callq	missingletter0
.LBB410_3:                              # %for.cond3
                                        #   Parent Loop BB410_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	Trynum(%rip), %eax
	jge	.LBB410_9
# %bb.4:                                # %for.body6
                                        #   in Loop: Header=BB410_3 Depth=2
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	cmpb	$0, hashheader+1666(%rax)
	je	.LBB410_6
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB410_3 Depth=2
	cmpq	%rbx, -48(%rbp)
	je	.LBB410_8
.LBB410_6:                              # %if.end
                                        #   in Loop: Header=BB410_3 Depth=2
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	movq	-48(%rbp), %rcx
	movb	%al, (%rcx)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB410_8
# %bb.7:                                # %if.then18
                                        #   in Loop: Header=BB410_3 Depth=2
	movq	-56(%rbp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB410_8
.LBB410_16:                             # %for.end54
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB410_10:                             # %for.end27
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rbx
	leaq	-224(%rbp), %r14
	jmp	.LBB410_11
	.p2align	4, 0x90
.LBB410_15:                             # %for.inc52
                                        #   in Loop: Header=BB410_11 Depth=1
	movq	%rbx, %rdi
	callq	missingletter2
.LBB410_11:                             # %for.cond28
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	Trynum(%rip), %eax
	jge	.LBB410_16
# %bb.12:                               # %for.body31
                                        #   in Loop: Header=BB410_11 Depth=1
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	cmpb	$0, hashheader+1666(%rax)
	jne	.LBB410_15
# %bb.13:                               # %if.end38
                                        #   in Loop: Header=BB410_11 Depth=1
	movslq	-36(%rbp), %rax
	movzbl	Try(%rax), %eax
	movq	-48(%rbp), %rcx
	movb	%al, (%rcx)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	good
	testl	%eax, %eax
	je	.LBB410_15
# %bb.14:                               # %if.then44
                                        #   in Loop: Header=BB410_11 Depth=1
	movq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB410_15
	jmp	.LBB410_16
.Lfunc_end410:
	.size	missingletter, .Lfunc_end410-missingletter
	.cfi_endproc
                                        # -- End function
	.globl	missingletter0          # -- Begin function missingletter0
	.p2align	4, 0x90
	.type	missingletter0,@function
missingletter0:                         # @missingletter0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end411:
	.size	missingletter0, .Lfunc_end411-missingletter0
	.cfi_endproc
                                        # -- End function
	.globl	missingletter1          # -- Begin function missingletter1
	.p2align	4, 0x90
	.type	missingletter1,@function
missingletter1:                         # @missingletter1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -24(%rsp)
	movb	(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end412:
	.size	missingletter1, .Lfunc_end412-missingletter1
	.cfi_endproc
                                        # -- End function
	.globl	missingletter2          # -- Begin function missingletter2
	.p2align	4, 0x90
	.type	missingletter2,@function
missingletter2:                         # @missingletter2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end413:
	.size	missingletter2, .Lfunc_end413-missingletter2
	.cfi_endproc
                                        # -- End function
	.globl	compoundgood0           # -- Begin function compoundgood0
	.p2align	4, 0x90
	.type	compoundgood0,@function
compoundgood0:                          # @compoundgood0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end414:
	.size	compoundgood0, .Lfunc_end414-compoundgood0
	.cfi_endproc
                                        # -- End function
	.globl	compoundgood1           # -- Begin function compoundgood1
	.p2align	4, 0x90
	.type	compoundgood1,@function
compoundgood1:                          # @compoundgood1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	xorl	%ecx, %ecx
	cmpq	$268435456, %rax        # imm = 0x10000000
	sete	%cl
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end415:
	.size	compoundgood1, .Lfunc_end415-compoundgood1
	.cfi_endproc
                                        # -- End function
	.globl	compoundgood2           # -- Begin function compoundgood2
	.p2align	4, 0x90
	.type	compoundgood2,@function
compoundgood2:                          # @compoundgood2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movb	(%rsi), %cl
	movb	%cl, -25(%rsp)
	movb	%cl, (%rax)
	movq	-24(%rsp), %rax
	movb	-25(%rsp), %cl
	movb	%cl, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end416:
	.size	compoundgood2, .Lfunc_end416-compoundgood2
	.cfi_endproc
                                        # -- End function
	.globl	compoundgood3           # -- Begin function compoundgood3
	.p2align	4, 0x90
	.type	compoundgood3,@function
compoundgood3:                          # @compoundgood3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end417:
	.size	compoundgood3, .Lfunc_end417-compoundgood3
	.cfi_endproc
                                        # -- End function
	.globl	good0                   # -- Begin function good0
	.p2align	4, 0x90
	.type	good0,@function
good0:                                  # @good0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -24(%rsp)
	movzbl	(%rcx), %ecx
	movb	hashheader+754(%rcx), %cl
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end418:
	.size	good0, .Lfunc_end418-good0
	.cfi_endproc
                                        # -- End function
	.globl	good1                   # -- Begin function good1
	.p2align	4, 0x90
	.type	good1,@function
good1:                                  # @good1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end419:
	.size	good1, .Lfunc_end419-good1
	.cfi_endproc
                                        # -- End function
	.globl	good2                   # -- Begin function good2
	.p2align	4, 0x90
	.type	good2,@function
good2:                                  # @good2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	xorl	%esi, %esi
	callq	ichartosstr
	movq	%rax, %rcx
	movl	$.L.str.362, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	movq	8(%rsp), %rax
	movq	%rax, orig_word(%rip)
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end420:
	.size	good2, .Lfunc_end420-good2
	.cfi_endproc
                                        # -- End function
	.globl	good3                   # -- Begin function good3
	.p2align	4, 0x90
	.type	good3,@function
good3:                                  # @good3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, hits(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end421:
	.size	good3, .Lfunc_end421-good3
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok                  # -- Begin function cap_ok
	.p2align	4, 0x90
	.type	cap_ok,@function
cap_ok:                                 # @cap_ok
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$222222426, -160(%rbp)  # imm = 0xD3ED85A
	movl	$555555759, -156(%rbp)  # imm = 0x211D1BAF
	movl	$444444648, -152(%rbp)  # imm = 0x1A7DAFE8
	movl	$222222426, %edi        # imm = 0xD3ED85A
	movl	$555555759, %esi        # imm = 0x211D1BAF
	movl	$444444648, %edx        # imm = 0x1A7DAFE8
	callq	guardMe
	movl	$222222425, -148(%rbp)  # imm = 0xD3ED859
	movl	$555555758, -144(%rbp)  # imm = 0x211D1BAE
	movl	$444444647, -140(%rbp)  # imm = 0x1A7DAFE7
	movl	$222222425, %edi        # imm = 0xD3ED859
	movl	$555555758, %esi        # imm = 0x211D1BAE
	movl	$444444647, %edx        # imm = 0x1A7DAFE7
	callq	guardMe
	movq	%rbx, -128(%rbp)
	movq	%r15, -72(%rbp)
	movl	%r14d, -116(%rbp)
	movq	%rbx, %rdi
	callq	whatcap
	movq	%rax, -112(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	cmpq	$268435456, %rax        # imm = 0x10000000
	je	.LBB422_17
# %bb.1:                                # %if.else
	cmpq	$805306368, -112(%rbp)  # imm = 0x30000000
	jne	.LBB422_9
# %bb.2:                                # %if.then2
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB422_4
# %bb.3:                                # %if.then3
	leaq	-64(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	callq	cap_ok0
	jmp	.LBB422_5
.LBB422_4:                              # %if.else7
	leaq	-64(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	callq	cap_ok1
.LBB422_5:                              # %if.end
	movq	-72(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB422_7
# %bb.6:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movswl	20(%rax), %eax
	jmp	.LBB422_8
.LBB422_7:
	xorl	%eax, %eax
.LBB422_8:                              # %cond.end
	movl	%eax, -100(%rbp)
.LBB422_9:                              # %if.end13
	leaq	-80(%rbp), %r15
	leaq	-72(%rbp), %rsi
	movq	%r15, %rdi
	callq	cap_ok2
	movl	$805306368, %r13d       # imm = 0x30000000
	leaq	-288(%rbp), %r14
	leaq	-56(%rbp), %rbx
	leaq	-128(%rbp), %r12
	jmp	.LBB422_11
	.p2align	4, 0x90
.LBB422_10:                             # %if.end125
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	%r15, %rdi
	callq	cap_ok10
.LBB422_11:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB422_25 Depth 2
                                        #     Child Loop BB422_21 Depth 2
                                        #     Child Loop BB422_28 Depth 2
                                        #     Child Loop BB422_35 Depth 2
                                        #     Child Loop BB422_32 Depth 2
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	andq	%r13, %rax
	movq	%rax, -136(%rbp)
	cmpq	-112(%rbp), %rax
	je	.LBB422_15
# %bb.12:                               # %if.then16
                                        #   in Loop: Header=BB422_11 Depth=1
	cmpq	$0, -136(%rbp)
	jne	.LBB422_38
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB422_11 Depth=1
	cmpq	$536870912, -112(%rbp)  # imm = 0x20000000
	jne	.LBB422_38
	jmp	.LBB422_37
	.p2align	4, 0x90
.LBB422_15:                             # %if.else26
                                        #   in Loop: Header=BB422_11 Depth=1
	cmpq	$805306368, -112(%rbp)  # imm = 0x30000000
	je	.LBB422_18
.LBB422_37:                             # %if.end112
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	entryhasaffixes
	testl	%eax, %eax
	jne	.LBB422_17
.LBB422_38:                             # %if.end118
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	-80(%rbp), %rax
	testb	$64, 19(%rax)
	jne	.LBB422_10
	jmp	.LBB422_39
	.p2align	4, 0x90
.LBB422_18:                             # %if.else34
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movl	$100, %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	callq	strtoichar
	movq	%r14, -96(%rbp)
	movslq	-64(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	movslq	-60(%rbp), %rax
	movzbl	-288(%rbp,%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB422_23
# %bb.19:                               # %if.then42
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	cap_ok3
	jmp	.LBB422_21
	.p2align	4, 0x90
.LBB422_20:                             # %for.inc
                                        #   in Loop: Header=BB422_21 Depth=2
	movq	%rbx, %rdi
	callq	cap_ok4
.LBB422_21:                             # %for.cond43
                                        #   Parent Loop BB422_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB422_27
# %bb.22:                               # %for.body
                                        #   in Loop: Header=BB422_21 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB422_20
	jmp	.LBB422_38
.LBB422_23:                             # %if.else51
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	cap_ok5
	jmp	.LBB422_25
	.p2align	4, 0x90
.LBB422_24:                             # %for.inc61
                                        #   in Loop: Header=BB422_25 Depth=2
	movq	%rbx, %rdi
	callq	cap_ok6
.LBB422_25:                             # %for.cond52
                                        #   Parent Loop BB422_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB422_27
# %bb.26:                               # %for.body55
                                        #   in Loop: Header=BB422_25 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB422_24
	jmp	.LBB422_38
.LBB422_27:                             # %if.end64
                                        #   in Loop: Header=BB422_11 Depth=1
	leaq	-88(%rbp), %rdi
	leaq	-100(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-116(%rbp), %r8
	leaq	-64(%rbp), %r9
	callq	cap_ok7
	.p2align	4, 0x90
.LBB422_28:                             # %while.cond
                                        #   Parent Loop BB422_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB422_30
# %bb.29:                               # %while.body
                                        #   in Loop: Header=BB422_28 Depth=2
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movzbl	(%rax), %eax
	movq	-56(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB422_28
	jmp	.LBB422_38
.LBB422_30:                             # %while.end
                                        #   in Loop: Header=BB422_11 Depth=1
	movq	-88(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movzbl	-1(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	jne	.LBB422_32
	jmp	.LBB422_35
	.p2align	4, 0x90
.LBB422_31:                             # %for.inc97
                                        #   in Loop: Header=BB422_32 Depth=2
	movq	%rbx, %rdi
	callq	cap_ok8
.LBB422_32:                             # %for.cond89
                                        #   Parent Loop BB422_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB422_37
# %bb.33:                               # %for.body91
                                        #   in Loop: Header=BB422_32 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB422_31
	jmp	.LBB422_38
	.p2align	4, 0x90
.LBB422_34:                             # %for.inc109
                                        #   in Loop: Header=BB422_35 Depth=2
	movq	%rbx, %rdi
	callq	cap_ok9
.LBB422_35:                             # %for.cond101
                                        #   Parent Loop BB422_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB422_37
# %bb.36:                               # %for.body103
                                        #   in Loop: Header=BB422_35 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB422_34
	jmp	.LBB422_38
.LBB422_17:                             # %if.then115
	movl	$1, -44(%rbp)
	jmp	.LBB422_40
.LBB422_39:                             # %for.end126
	movl	$0, -44(%rbp)
.LBB422_40:                             # %return
	movl	-44(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end422:
	.size	cap_ok, .Lfunc_end422-cap_ok
	.cfi_endproc
                                        # -- End function
	.globl	chk_aff                 # -- Begin function chk_aff
	.p2align	4, 0x90
	.type	chk_aff,@function
chk_aff:                                # @chk_aff
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222490, -132(%rbp)  # imm = 0xD3ED89A
	movl	$555555823, -128(%rbp)  # imm = 0x211D1BEF
	movl	$444444712, -124(%rbp)  # imm = 0x1A7DB028
	movl	$222222490, %edi        # imm = 0xD3ED89A
	movl	$555555823, %esi        # imm = 0x211D1BEF
	movl	$444444712, %edx        # imm = 0x1A7DB028
	callq	guardMe
	movl	$222222489, -120(%rbp)  # imm = 0xD3ED899
	movl	$555555822, -116(%rbp)  # imm = 0x211D1BEE
	movl	$444444711, -112(%rbp)  # imm = 0x1A7DB027
	movl	$222222489, %edi        # imm = 0xD3ED899
	movl	$555555822, %esi        # imm = 0x211D1BEE
	movl	$444444711, %edx        # imm = 0x1A7DB027
	callq	guardMe
	movl	$222222488, -108(%rbp)  # imm = 0xD3ED898
	movl	$555555821, -104(%rbp)  # imm = 0x211D1BED
	movl	$444444710, -100(%rbp)  # imm = 0x1A7DB026
	movl	$222222488, %edi        # imm = 0xD3ED898
	movl	$555555821, %esi        # imm = 0x211D1BED
	movl	$444444710, %edx        # imm = 0x1A7DB026
	callq	guardMe
	movq	%r14, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movl	%r13d, -52(%rbp)
	movl	%r12d, -48(%rbp)
	movl	%r15d, -44(%rbp)
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	subq	$8, %rsp
	leaq	-56(%rbp), %rax
	leaq	-72(%rbp), %r10
	leaq	-52(%rbp), %r11
	leaq	-64(%rbp), %r14
	leaq	-44(%rbp), %rsi
	leaq	-96(%rbp), %r15
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %r8
	leaq	16(%rbp), %r9
	movq	%r14, %rdi
	movq	%r15, %rdx
	pushq	%rax
	pushq	%r10
	pushq	%r11
	callq	chk_aff0
	addq	$32, %rsp
	jmp	.LBB423_1
	.p2align	4, 0x90
.LBB423_11:                             # %if.end20
                                        #   in Loop: Header=BB423_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	chk_aff1
.LBB423_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB423_3
# %bb.2:                                #   in Loop: Header=BB423_1 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB423_5
	jmp	.LBB423_12
	.p2align	4, 0x90
.LBB423_3:                              # %land.rhs
                                        #   in Loop: Header=BB423_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	testb	%al, %al
	je	.LBB423_12
.LBB423_5:                              # %while.body
                                        #   in Loop: Header=BB423_1 Depth=1
	movq	-96(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB423_17
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB423_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	je	.LBB423_11
# %bb.7:                                # %if.then8
                                        #   in Loop: Header=BB423_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	16(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	(%rax), %r9
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ebx
	pushq	%rbx
	pushq	%rax
	callq	pfx_list_chk
	addq	$16, %rsp
	cmpl	$0, numhits(%rip)
	je	.LBB423_11
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB423_1 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB423_11
# %bb.9:                                # %land.lhs.true14
                                        #   in Loop: Header=BB423_1 Depth=1
	cmpl	$0, cflag(%rip)
	jne	.LBB423_11
# %bb.10:                               # %land.lhs.true16
                                        #   in Loop: Header=BB423_1 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB423_11
	jmp	.LBB423_17
.LBB423_12:                             # %while.end
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	16(%rbp), %r8d
	movq	-64(%rbp), %r9
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ebx
	pushq	%rbx
	pushq	%rax
	callq	pfx_list_chk
	addq	$16, %rsp
	cmpl	$0, numhits(%rip)
	je	.LBB423_16
# %bb.13:                               # %land.lhs.true27
	cmpl	$0, -44(%rbp)
	jne	.LBB423_16
# %bb.14:                               # %land.lhs.true29
	cmpl	$0, cflag(%rip)
	jne	.LBB423_16
# %bb.15:                               # %land.lhs.true31
	cmpl	$0, -48(%rbp)
	je	.LBB423_17
.LBB423_16:                             # %if.end34
	leaq	-44(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	16(%rbp), %r8
	leaq	-52(%rbp), %r9
	callq	chk_aff2
.LBB423_17:                             # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end423:
	.size	chk_aff, .Lfunc_end423-chk_aff
	.cfi_endproc
                                        # -- End function
	.globl	good4                   # -- Begin function good4
	.p2align	4, 0x90
	.type	good4,@function
good4:                                  # @good4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	numhits(%rip), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end424:
	.size	good4, .Lfunc_end424-good4
	.cfi_endproc
                                        # -- End function
	.globl	chk_aff0                # -- Begin function chk_aff0
	.p2align	4, 0x90
	.type	chk_aff0,@function
chk_aff0:                               # @chk_aff0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 88(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 8(%rsp)
	movq	%rdx, 80(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, 72(%rsp)
	movl	(%rcx), %eax
	movl	%eax, 4(%rsp)
	movq	%r8, 64(%rsp)
	movq	(%r8), %rdi
	movq	%rdi, 56(%rsp)
	movq	%r9, 48(%rsp)
	movl	(%r9), %r8d
	movl	%r8d, 20(%rsp)
	movq	112(%rsp), %rax
	movl	(%rax), %edx
	movl	%edx, 16(%rsp)
	movq	120(%rsp), %rax
	movq	(%rax), %rsi
	movq	%rsi, 24(%rsp)
	movq	128(%rsp), %rax
	movl	(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movl	4(%rsp), %r10d
	movl	8(%rsp), %eax
	movl	$pflagindex, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	pfx_list_chk
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	24(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movzbl	(%rax), %eax
	shlq	$4, %rax
	leaq	pflagindex(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	128(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	112(%rsp), %rax
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	64(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	88(%rsp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	96(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$104, %rsp
	retq
.Lfunc_end425:
	.size	chk_aff0, .Lfunc_end425-chk_aff0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pfx_list_chk
	.type	pfx_list_chk,@function
pfx_list_chk:                           # @pfx_list_chk
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222493, -164(%rbp)  # imm = 0xD3ED89D
	movl	$555555826, -160(%rbp)  # imm = 0x211D1BF2
	movl	$444444715, -156(%rbp)  # imm = 0x1A7DB02B
	movl	$222222493, %edi        # imm = 0xD3ED89D
	movl	$555555826, %esi        # imm = 0x211D1BF2
	movl	$444444715, %edx        # imm = 0x1A7DB02B
	callq	guardMe
	movl	$222222492, -152(%rbp)  # imm = 0xD3ED89C
	movl	$555555825, -148(%rbp)  # imm = 0x211D1BF1
	movl	$444444714, -144(%rbp)  # imm = 0x1A7DB02A
	movl	$222222492, %edi        # imm = 0xD3ED89C
	movl	$555555825, %esi        # imm = 0x211D1BF1
	movl	$444444714, %edx        # imm = 0x1A7DB02A
	callq	guardMe
	movl	$222222491, -140(%rbp)  # imm = 0xD3ED89B
	movl	$555555824, -136(%rbp)  # imm = 0x211D1BF0
	movl	$444444713, -132(%rbp)  # imm = 0x1A7DB029
	movl	$222222491, %edi        # imm = 0xD3ED89B
	movl	$555555824, %esi        # imm = 0x211D1BF0
	movl	$444444713, %edx        # imm = 0x1A7DB029
	callq	guardMe
	movq	%r14, -88(%rbp)
	movq	%rbx, -112(%rbp)
	movl	%r13d, -72(%rbp)
	movl	%r12d, -68(%rbp)
	movl	%r15d, -100(%rbp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	leaq	-96(%rbp), %r14
	leaq	-48(%rbp), %r12
	leaq	-128(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pfx_list_chk0
	leaq	-352(%rbp), %r15
	leaq	-56(%rbp), %rbx
	leaq	-544(%rbp), %r13
	cmpl	$0, -96(%rbp)
	jg	.LBB426_2
	jmp	.LBB426_36
	.p2align	4, 0x90
.LBB426_35:                             # %for.inc165
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pfx_list_chk5
	cmpl	$0, -96(%rbp)
	jle	.LBB426_36
.LBB426_2:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB426_13 Depth 2
	movq	-48(%rbp), %rax
	movzwl	24(%rax), %eax
	testb	$2, %al
	je	.LBB426_4
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB426_2 Depth=1
	testb	$2, -68(%rbp)
	je	.LBB426_35
.LBB426_4:                              # %if.end
                                        #   in Loop: Header=BB426_2 Depth=1
	cmpl	$2, compoundflag(%rip)
	jne	.LBB426_6
# %bb.5:                                # %land.lhs.true8
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	xorl	-68(%rbp), %eax
	testb	$2, %al
	jne	.LBB426_35
.LBB426_6:                              # %if.end15
                                        #   in Loop: Header=BB426_2 Depth=1
	movl	-72(%rbp), %eax
	movq	-48(%rbp), %rcx
	movswl	20(%rcx), %ecx
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jle	.LBB426_35
# %bb.7:                                # %land.lhs.true19
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB426_9
# %bb.8:                                # %lor.lhs.false
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-112(%rbp), %rsi
	movswq	20(%rax), %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB426_35
.LBB426_9:                              # %land.lhs.true28
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	18(%rax), %ecx
	addl	-52(%rbp), %ecx
	movswl	22(%rax), %eax
	cmpl	%eax, %ecx
	jl	.LBB426_35
# %bb.10:                               # %if.then33
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB426_12
# %bb.11:                               # %if.then35
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%r15, %rdi
	callq	strcpy
.LBB426_12:                             # %if.end37
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movswq	18(%rax), %rcx
	leaq	(%rcx,%rbp), %rdi
	addq	$-352, %rdi             # imm = 0xFEA0
	movswq	20(%rax), %rsi
	addq	-112(%rbp), %rsi
	callq	strcpy
	movq	%r15, -64(%rbp)
	movl	$0, -56(%rbp)
	jmp	.LBB426_13
	.p2align	4, 0x90
.LBB426_15:                             # %for.inc
                                        #   in Loop: Header=BB426_13 Depth=2
	movq	%rbx, %rdi
	callq	pfx_list_chk1
.LBB426_13:                             # %for.cond47
                                        #   Parent Loop BB426_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	movswl	22(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jge	.LBB426_16
# %bb.14:                               # %for.body52
                                        #   in Loop: Header=BB426_13 Depth=2
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movsbl	26(%rcx,%rax), %eax
	movl	-56(%rbp), %ecx
	btl	%ecx, %eax
	jb	.LBB426_15
.LBB426_16:                             # %for.end
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	22(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.LBB426_35
# %bb.17:                               # %if.then63
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	18(%rax), %eax
	addl	%eax, -52(%rbp)
	cmpl	$0, cflag(%rip)
	je	.LBB426_19
# %bb.18:                               # %if.then68
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	16(%rax), %esi
	addl	$65, %esi
	movswl	18(%rax), %edx
	movswl	20(%rax), %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	callq	flagpr
.LBB426_33:                             # %if.end155
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-48(%rbp), %rax
	movzwl	24(%rax), %eax
	testb	$1, %al
	je	.LBB426_35
# %bb.34:                               # %if.then160
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-88(%rbp), %rdi
	movl	-52(%rbp), %edx
	movl	-100(%rbp), %ecx
	orl	$1, %ecx
	movq	-48(%rbp), %r8
	movl	16(%rbp), %r9d
	movl	24(%rbp), %eax
	subq	$8, %rsp
	movq	%r15, %rsi
	pushq	%rax
	callq	chk_suf
	addq	$16, %rsp
	jmp	.LBB426_35
.LBB426_19:                             # %if.else
                                        #   in Loop: Header=BB426_2 Depth=1
	cmpl	$0, 16(%rbp)
	je	.LBB426_26
# %bb.20:                               # %if.then77
                                        #   in Loop: Header=BB426_2 Depth=1
	movl	$1, %esi
	movq	%r15, %rdi
	callq	lookup
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	je	.LBB426_33
# %bb.21:                               # %if.then82
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	%r13, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB426_23
# %bb.22:                               # %if.then86
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	%r12, %rdi
	leaq	-64(%rbp), %rsi
	callq	pfx_list_chk2
.LBB426_23:                             # %if.end94
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-64(%rbp), %rdi
	movl	%edi, %eax
	subl	%r13d, %eax
	movl	%eax, -92(%rbp)
	movq	%r15, %rsi
	callq	strcpy
	movslq	-52(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB426_25
# %bb.24:                               # %if.then103
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	%r12, %rdi
	leaq	-64(%rbp), %rsi
	callq	pfx_list_chk3
.LBB426_25:                             # %if.end107
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	movswl	18(%rax), %edx
	movl	-64(%rbp), %r9d
	subl	%r13d, %r9d
	subl	-52(%rbp), %r9d
	movl	-92(%rbp), %ecx
	subl	%ecx, %r9d
	subq	$8, %rsp
	movl	$0, %r8d
	movq	%r13, %rdi
	pushq	$0
	pushq	%rax
	pushq	-80(%rbp)
	callq	ins_root_cap
	addq	$32, %rsp
	jmp	.LBB426_33
.LBB426_26:                             # %if.else122
                                        #   in Loop: Header=BB426_2 Depth=1
	movl	$1, %esi
	movq	%r15, %rdi
	callq	lookup
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	je	.LBB426_33
# %bb.27:                               # %land.lhs.true127
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB426_33
# %bb.28:                               # %if.then134
                                        #   in Loop: Header=BB426_2 Depth=1
	cmpl	$9, numhits(%rip)
	jg	.LBB426_30
# %bb.29:                               # %if.then137
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	%r12, %rdi
	leaq	-80(%rbp), %rsi
	callq	pfx_list_chk4
.LBB426_30:                             # %if.end145
                                        #   in Loop: Header=BB426_2 Depth=1
	cmpl	$0, 24(%rbp)
	jne	.LBB426_33
# %bb.31:                               # %if.then147
                                        #   in Loop: Header=BB426_2 Depth=1
	movq	-88(%rbp), %rdi
	movl	-72(%rbp), %edx
	movl	$hits, %esi
	callq	cap_ok
	testl	%eax, %eax
	jne	.LBB426_36
# %bb.32:                               # %if.end151
                                        #   in Loop: Header=BB426_2 Depth=1
	movl	$0, numhits(%rip)
	jmp	.LBB426_33
.LBB426_36:                             # %for.end167
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end426:
	.size	pfx_list_chk, .Lfunc_end426-pfx_list_chk
	.cfi_endproc
                                        # -- End function
	.globl	chk_aff1                # -- Begin function chk_aff1
	.p2align	4, 0x90
	.type	chk_aff1,@function
chk_aff1:                               # @chk_aff1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -16(%rsp)
	movzbl	(%rcx), %ecx
	shlq	$4, %rcx
	addq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rdx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end427:
	.size	chk_aff1, .Lfunc_end427-chk_aff1
	.cfi_endproc
                                        # -- End function
	.globl	chk_aff2                # -- Begin function chk_aff2
	.p2align	4, 0x90
	.type	chk_aff2,@function
chk_aff2:                               # @chk_aff2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 80(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 72(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 8(%rsp)
	movq	%rdx, 64(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	(%rcx), %rsi
	movq	%rsi, 40(%rsp)
	movq	%r8, 32(%rsp)
	movl	(%r8), %ecx
	movl	%ecx, 20(%rsp)
	movq	%r9, 24(%rsp)
	movl	(%r9), %edx
	movl	%edx, 16(%rsp)
	movl	8(%rsp), %r9d
	movl	12(%rsp), %eax
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	callq	chk_suf
	movq	24(%rsp), %rax
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	72(%rsp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	64(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$88, %rsp
	retq
.Lfunc_end428:
	.size	chk_aff2, .Lfunc_end428-chk_aff2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function chk_suf
	.type	chk_suf,@function
chk_suf:                                # @chk_suf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -72(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -44(%rbp)
	subq	$8, %rsp
	leaq	-48(%rbp), %rax
	leaq	16(%rbp), %r10
	leaq	-60(%rbp), %r12
	leaq	-56(%rbp), %r15
	leaq	-96(%rbp), %r13
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-44(%rbp), %r14
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %r9
	pushq	%rax
	pushq	%r10
	pushq	%r12
	callq	chk_suf0
	addq	$32, %rsp
	jmp	.LBB429_1
	.p2align	4, 0x90
.LBB429_11:                             # %if.end20
                                        #   in Loop: Header=BB429_1 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	chk_suf1
.LBB429_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB429_3
# %bb.2:                                #   in Loop: Header=BB429_1 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB429_5
	jmp	.LBB429_12
	.p2align	4, 0x90
.LBB429_3:                              # %land.rhs
                                        #   in Loop: Header=BB429_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	testb	%al, %al
	je	.LBB429_12
.LBB429_5:                              # %while.body
                                        #   in Loop: Header=BB429_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB429_13
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB429_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	je	.LBB429_11
# %bb.7:                                # %if.then8
                                        #   in Loop: Header=BB429_1 Depth=1
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	-48(%rbp), %r8d
	movq	-80(%rbp), %r9
	movl	-44(%rbp), %eax
	movl	16(%rbp), %ebx
	pushq	%rbx
	pushq	%rax
	callq	suf_list_chk
	addq	$16, %rsp
	cmpl	$0, numhits(%rip)
	je	.LBB429_11
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB429_1 Depth=1
	cmpl	$0, 16(%rbp)
	jne	.LBB429_11
# %bb.9:                                # %land.lhs.true14
                                        #   in Loop: Header=BB429_1 Depth=1
	cmpl	$0, cflag(%rip)
	jne	.LBB429_11
# %bb.10:                               # %land.lhs.true16
                                        #   in Loop: Header=BB429_1 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB429_11
	jmp	.LBB429_13
.LBB429_12:                             # %while.end
	leaq	-80(%rbp), %rdi
	leaq	16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-72(%rbp), %r9
	pushq	%r12
	pushq	%r14
	callq	chk_suf2
	addq	$16, %rsp
.LBB429_13:                             # %return
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end429:
	.size	chk_suf, .Lfunc_end429-chk_suf
	.cfi_endproc
                                        # -- End function
	.globl	chk_suf0                # -- Begin function chk_suf0
	.p2align	4, 0x90
	.type	chk_suf0,@function
chk_suf0:                               # @chk_suf0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 48(%rsp)
	movq	%rsi, 88(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 40(%rsp)
	movq	%rdx, 80(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	%r8, 64(%rsp)
	movq	(%r8), %rsi
	movq	%rsi, 16(%rsp)
	movq	%r9, 56(%rsp)
	movl	(%r9), %r10d
	movl	%r10d, 12(%rsp)
	movq	112(%rsp), %rcx
	movl	(%rcx), %edx
	movl	%edx, (%rsp)
	movq	120(%rsp), %rcx
	movl	(%rcx), %eax
	movl	%eax, 8(%rsp)
	movq	128(%rsp), %rcx
	movl	(%rcx), %r8d
	movl	%r8d, 4(%rsp)
	movq	24(%rsp), %rdi
	movq	32(%rsp), %r9
	movl	$sflagindex, %ecx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	suf_list_chk
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	16(%rsp), %rax
	movslq	(%rsp), %rcx
	leaq	-1(%rax,%rcx), %rdx
	movq	%rdx, 40(%rsp)
	movzbl	-1(%rax,%rcx), %eax
	shlq	$4, %rax
	leaq	sflagindex(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	128(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	120(%rsp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	64(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	96(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	88(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	112(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
.Lfunc_end430:
	.size	chk_suf0, .Lfunc_end430-chk_suf0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function suf_list_chk
	.type	suf_list_chk,@function
suf_list_chk:                           # @suf_list_chk
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222495, -160(%rbp)  # imm = 0xD3ED89F
	movl	$555555828, -156(%rbp)  # imm = 0x211D1BF4
	movl	$444444717, -152(%rbp)  # imm = 0x1A7DB02D
	movl	$222222495, %edi        # imm = 0xD3ED89F
	movl	$555555828, %esi        # imm = 0x211D1BF4
	movl	$444444717, %edx        # imm = 0x1A7DB02D
	callq	guardMe
	movl	$222222494, -148(%rbp)  # imm = 0xD3ED89E
	movl	$555555827, -144(%rbp)  # imm = 0x211D1BF3
	movl	$444444716, -140(%rbp)  # imm = 0x1A7DB02C
	movl	$222222494, %edi        # imm = 0xD3ED89E
	movl	$555555827, %esi        # imm = 0x211D1BF3
	movl	$444444716, %edx        # imm = 0x1A7DB02C
	callq	guardMe
	movq	%r14, -120(%rbp)
	movq	%rbx, -112(%rbp)
	movl	%r13d, -96(%rbp)
	movq	%r12, -136(%rbp)
	movl	%r15d, -52(%rbp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	leaq	-544(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -92(%rbp)
	leaq	-92(%rbp), %r15
	leaq	-48(%rbp), %rbx
	leaq	-76(%rbp), %r12
	leaq	-64(%rbp), %r13
	cmpl	$0, -92(%rbp)
	jg	.LBB431_2
	jmp	.LBB431_49
	.p2align	4, 0x90
.LBB431_48:                             # %for.inc
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	suf_list_chk7
	cmpl	$0, -92(%rbp)
	jle	.LBB431_49
.LBB431_2:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB431_16 Depth 2
	testb	$1, -52(%rbp)
	je	.LBB431_4
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movzwl	24(%rax), %eax
	testb	$1, %al
	je	.LBB431_48
.LBB431_4:                              # %if.end
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movzwl	24(%rax), %eax
	testb	$2, %al
	je	.LBB431_6
# %bb.5:                                # %land.lhs.true10
                                        #   in Loop: Header=BB431_2 Depth=1
	testb	$2, -52(%rbp)
	je	.LBB431_48
.LBB431_6:                              # %if.end15
                                        #   in Loop: Header=BB431_2 Depth=1
	cmpl	$2, compoundflag(%rip)
	jne	.LBB431_8
# %bb.7:                                # %land.lhs.true18
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	xorl	-52(%rbp), %eax
	testb	$2, %al
	jne	.LBB431_48
.LBB431_8:                              # %if.end25
                                        #   in Loop: Header=BB431_2 Depth=1
	movl	-96(%rbp), %eax
	movq	-48(%rbp), %rcx
	movswl	20(%rcx), %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
	jle	.LBB431_48
# %bb.9:                                # %land.lhs.true29
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB431_11
# %bb.10:                               # %lor.lhs.false
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movslq	-56(%rbp), %rsi
	addq	-112(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB431_48
.LBB431_11:                             # %land.lhs.true37
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	18(%rax), %ecx
	addl	-56(%rbp), %ecx
	movswl	22(%rax), %eax
	cmpl	%eax, %ecx
	jl	.LBB431_48
# %bb.12:                               # %if.then42
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-112(%rbp), %rsi
	movq	%r14, %rdi
	callq	strcpy
	movslq	-56(%rbp), %rax
	addq	%rbp, %rax
	addq	$-544, %rax             # imm = 0xFDE0
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB431_14
# %bb.13:                               # %if.then49
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcpy
	movq	-48(%rbp), %rax
	movswl	18(%rax), %eax
	addl	%eax, -56(%rbp)
	movslq	-56(%rbp), %rax
	addq	%rbp, %rax
	addq	$-544, %rax             # imm = 0xFDE0
	movq	%rax, -64(%rbp)
	jmp	.LBB431_15
.LBB431_14:                             # %if.else
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%r13, %rdi
	callq	suf_list_chk0
.LBB431_15:                             # %if.end57
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	suf_list_chk1
	.p2align	4, 0x90
.LBB431_16:                             # %for.cond60
                                        #   Parent Loop BB431_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, -76(%rbp)
	js	.LBB431_18
# %bb.17:                               # %for.body63
                                        #   in Loop: Header=BB431_16 Depth=2
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	-1(%rax), %eax
	movq	-48(%rbp), %rcx
	movsbl	26(%rcx,%rax), %eax
	movl	-76(%rbp), %ecx
	btl	%ecx, %eax
	jb	.LBB431_16
.LBB431_18:                             # %for.end
                                        #   in Loop: Header=BB431_2 Depth=1
	cmpl	$0, -76(%rbp)
	jns	.LBB431_48
# %bb.19:                               # %if.then72
                                        #   in Loop: Header=BB431_2 Depth=1
	cmpl	$0, cflag(%rip)
	je	.LBB431_24
# %bb.20:                               # %if.then74
                                        #   in Loop: Header=BB431_2 Depth=1
	testb	$1, -52(%rbp)
	je	.LBB431_22
# %bb.21:                               # %if.then77
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-72(%rbp), %rax
	movswl	16(%rax), %esi
	addl	$65, %esi
	movswl	18(%rax), %edx
	movswl	20(%rax), %ecx
	movq	-48(%rbp), %rax
	movswl	16(%rax), %r8d
	addl	$65, %r8d
	movswl	20(%rax), %r9d
	jmp	.LBB431_23
.LBB431_24:                             # %if.else98
                                        #   in Loop: Header=BB431_2 Depth=1
	cmpl	$0, 16(%rbp)
	je	.LBB431_39
# %bb.25:                               # %if.then100
                                        #   in Loop: Header=BB431_2 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	lookup
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB431_48
# %bb.26:                               # %if.then105
                                        #   in Loop: Header=BB431_2 Depth=1
	leaq	-352(%rbp), %rax
	movq	%rax, -64(%rbp)
	testb	$1, -52(%rbp)
	je	.LBB431_29
# %bb.27:                               # %land.lhs.true109
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-72(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB431_29
# %bb.28:                               # %if.then114
                                        #   in Loop: Header=BB431_2 Depth=1
	leaq	-72(%rbp), %rdi
	movq	%r13, %rsi
	callq	suf_list_chk2
.LBB431_29:                             # %if.end122
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-64(%rbp), %rdi
	movl	%edi, %eax
	leaq	-352(%rbp), %rcx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movq	%r14, %rsi
	callq	strcpy
	movslq	-56(%rbp), %rax
	addq	%rax, -64(%rbp)
	testb	$1, -52(%rbp)
	je	.LBB431_32
# %bb.30:                               # %land.lhs.true131
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-72(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB431_32
# %bb.31:                               # %if.then136
                                        #   in Loop: Header=BB431_2 Depth=1
	leaq	-72(%rbp), %rdi
	movq	%r13, %rsi
	callq	suf_list_chk3
.LBB431_32:                             # %if.end144
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB431_34
# %bb.33:                               # %if.then147
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	suf_list_chk4
.LBB431_34:                             # %if.end155
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB431_36
# %bb.35:                               # %if.then158
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	suf_list_chk5
.LBB431_36:                             # %if.end166
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-120(%rbp), %rsi
	xorl	%edx, %edx
	testb	$1, -52(%rbp)
	je	.LBB431_38
# %bb.37:                               # %cond.true
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-72(%rbp), %rax
	movswl	18(%rax), %edx
.LBB431_38:                             # %cond.end
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	18(%rax), %r8d
	movl	-64(%rbp), %r9d
	leaq	-352(%rbp), %rdi
	subl	%edi, %r9d
	subl	-56(%rbp), %r9d
	movl	-100(%rbp), %ecx
	subl	%ecx, %r9d
	subq	$8, %rsp
	pushq	%rax
	pushq	-72(%rbp)
	pushq	-88(%rbp)
	callq	ins_root_cap
	addq	$32, %rsp
	jmp	.LBB431_48
.LBB431_22:                             # %if.else90
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-48(%rbp), %rax
	movswl	16(%rax), %r8d
	addl	$65, %r8d
	movswl	20(%rax), %r9d
	movl	$-1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.LBB431_23:                             # %for.inc
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%r14, %rdi
	callq	flagpr
	jmp	.LBB431_48
.LBB431_39:                             # %if.else186
                                        #   in Loop: Header=BB431_2 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	lookup
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB431_48
# %bb.40:                               # %land.lhs.true191
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB431_48
# %bb.41:                               # %land.lhs.true198
                                        #   in Loop: Header=BB431_2 Depth=1
	testb	$1, -52(%rbp)
	je	.LBB431_43
# %bb.42:                               # %lor.lhs.false202
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB431_48
.LBB431_43:                             # %if.then211
                                        #   in Loop: Header=BB431_2 Depth=1
	cmpl	$9, numhits(%rip)
	jg	.LBB431_45
# %bb.44:                               # %if.then214
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	%rbx, %rdi
	leaq	-72(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	suf_list_chk6
.LBB431_45:                             # %if.end221
                                        #   in Loop: Header=BB431_2 Depth=1
	cmpl	$0, 24(%rbp)
	jne	.LBB431_48
# %bb.46:                               # %if.then223
                                        #   in Loop: Header=BB431_2 Depth=1
	movq	-120(%rbp), %rdi
	movl	-96(%rbp), %edx
	movl	$hits, %esi
	callq	cap_ok
	testl	%eax, %eax
	jne	.LBB431_49
# %bb.47:                               # %if.end227
                                        #   in Loop: Header=BB431_2 Depth=1
	movl	$0, numhits(%rip)
	jmp	.LBB431_48
.LBB431_49:                             # %for.end236
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end431:
	.size	suf_list_chk, .Lfunc_end431-suf_list_chk
	.cfi_endproc
                                        # -- End function
	.globl	chk_suf1                # -- Begin function chk_suf1
	.p2align	4, 0x90
	.type	chk_suf1,@function
chk_suf1:                               # @chk_suf1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, -16(%rsp)
	movzbl	-1(%rcx), %ecx
	shlq	$4, %rcx
	addq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rdx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end432:
	.size	chk_suf1, .Lfunc_end432-chk_suf1
	.cfi_endproc
                                        # -- End function
	.globl	chk_suf2                # -- Begin function chk_suf2
	.p2align	4, 0x90
	.type	chk_suf2,@function
chk_suf2:                               # @chk_suf2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 88(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	movq	%rdx, 80(%rsp)
	movl	(%rdx), %eax
	movl	%eax, 8(%rsp)
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	(%r8), %rcx
	movq	%rcx, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	(%r9), %rsi
	movq	%rsi, 32(%rsp)
	movq	112(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 20(%rsp)
	movq	120(%rsp), %rdx
	movl	(%rdx), %edx
	movl	%edx, 16(%rsp)
	movl	8(%rsp), %r8d
	movq	24(%rsp), %r9
	movl	12(%rsp), %r10d
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	suf_list_chk
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	112(%rsp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rax
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	96(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	80(%rsp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	88(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
.Lfunc_end433:
	.size	chk_suf2, .Lfunc_end433-chk_suf2
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk0           # -- Begin function suf_list_chk0
	.p2align	4, 0x90
	.type	suf_list_chk0,@function
suf_list_chk0:                          # @suf_list_chk0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end434:
	.size	suf_list_chk0, .Lfunc_end434-suf_list_chk0
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk1           # -- Begin function suf_list_chk1
	.p2align	4, 0x90
	.type	suf_list_chk1,@function
suf_list_chk1:                          # @suf_list_chk1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movswl	22(%rax), %ecx
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end435:
	.size	suf_list_chk1, .Lfunc_end435-suf_list_chk1
	.cfi_endproc
                                        # -- End function
	.globl	flagpr                  # -- Begin function flagpr
	.p2align	4, 0x90
	.type	flagpr,@function
flagpr:                                 # @flagpr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$222222433, -132(%rbp)  # imm = 0xD3ED861
	movl	$555555766, -128(%rbp)  # imm = 0x211D1BB6
	movl	$444444655, -124(%rbp)  # imm = 0x1A7DAFEF
	movl	$222222433, %edi        # imm = 0xD3ED861
	movl	$555555766, %esi        # imm = 0x211D1BB6
	movl	$444444655, %edx        # imm = 0x1A7DAFEF
	callq	guardMe
	movl	$222222432, -120(%rbp)  # imm = 0xD3ED860
	movl	$555555765, -116(%rbp)  # imm = 0x211D1BB5
	movl	$444444654, -112(%rbp)  # imm = 0x1A7DAFEE
	movl	$222222432, %edi        # imm = 0xD3ED860
	movl	$555555765, %esi        # imm = 0x211D1BB5
	movl	$444444654, %edx        # imm = 0x1A7DAFEE
	callq	guardMe
	movl	$222222431, -108(%rbp)  # imm = 0xD3ED85F
	movl	$555555764, -104(%rbp)  # imm = 0x211D1BB4
	movl	$444444653, -100(%rbp)  # imm = 0x1A7DAFED
	movl	$222222431, %edi        # imm = 0xD3ED85F
	movl	$555555764, %esi        # imm = 0x211D1BB4
	movl	$444444653, %edx        # imm = 0x1A7DAFED
	callq	guardMe
	movl	$222222430, -96(%rbp)   # imm = 0xD3ED85E
	movl	$555555763, -92(%rbp)   # imm = 0x211D1BB3
	movl	$444444652, -88(%rbp)   # imm = 0x1A7DAFEC
	movl	$222222430, %edi        # imm = 0xD3ED85E
	movl	$555555763, %esi        # imm = 0x211D1BB3
	movl	$444444652, %edx        # imm = 0x1A7DAFEC
	callq	guardMe
	movq	%r14, -80(%rbp)
	movl	%ebx, -72(%rbp)
	movl	%r13d, -56(%rbp)
	movl	%r12d, -52(%rbp)
	movl	%r15d, -68(%rbp)
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)
	movq	orig_word(%rip), %rdi
	callq	strlen
	movl	%eax, -60(%rbp)
	cmpl	$0, -72(%rbp)
	jle	.LBB436_10
# %bb.1:                                # %if.then
	movq	orig_word(%rip), %rax
	movslq	-52(%rbp), %rcx
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax,%rcx), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB436_6
# %bb.2:                                # %if.then2
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rdi
	callq	flagpr0
	jmp	.LBB436_3
	.p2align	4, 0x90
.LBB436_5:                              # %for.inc
                                        #   in Loop: Header=BB436_3 Depth=1
	movq	%rbx, %rdi
	callq	flagpr1
.LBB436_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	addq	orig_word(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jae	.LBB436_10
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB436_3 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB436_5
	jmp	.LBB436_38
.LBB436_6:                              # %if.else
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rdi
	callq	flagpr2
	jmp	.LBB436_7
	.p2align	4, 0x90
.LBB436_9:                              # %for.inc22
                                        #   in Loop: Header=BB436_7 Depth=1
	movq	%rbx, %rdi
	callq	flagpr3
.LBB436_7:                              # %for.cond11
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	addq	orig_word(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jae	.LBB436_10
# %bb.8:                                # %for.body16
                                        #   in Loop: Header=BB436_7 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB436_9
	jmp	.LBB436_38
.LBB436_10:                             # %if.end26
	cmpl	$0, -68(%rbp)
	jle	.LBB436_20
# %bb.11:                               # %if.then29
	movslq	-60(%rbp), %rax
	addq	orig_word(%rip), %rax
	movslq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movzbl	-1(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB436_16
# %bb.12:                               # %if.then38
	leaq	-48(%rbp), %rbx
	jmp	.LBB436_13
	.p2align	4, 0x90
.LBB436_15:                             # %for.inc49
                                        #   in Loop: Header=BB436_13 Depth=1
	movq	%rbx, %rdi
	callq	flagpr4
.LBB436_13:                             # %for.cond39
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB436_20
# %bb.14:                               # %for.body43
                                        #   in Loop: Header=BB436_13 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB436_15
	jmp	.LBB436_38
.LBB436_16:                             # %if.else52
	leaq	-48(%rbp), %rbx
	leaq	-64(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	movq	%rbx, %rdi
	callq	flagpr5
	jmp	.LBB436_17
	.p2align	4, 0x90
.LBB436_19:                             # %for.inc68
                                        #   in Loop: Header=BB436_17 Depth=1
	movq	%rbx, %rdi
	callq	flagpr6
.LBB436_17:                             # %for.cond58
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB436_20
# %bb.18:                               # %for.body62
                                        #   in Loop: Header=BB436_17 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB436_19
	jmp	.LBB436_38
.LBB436_20:                             # %if.end72
	movl	$32, %edi
	callq	putchar
	movq	orig_word(%rip), %rax
	movslq	-52(%rbp), %rcx
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax,%rcx), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB436_24
# %bb.21:                               # %if.then79
	leaq	-80(%rbp), %rbx
	addl	$-1, -56(%rbp)
	js	.LBB436_27
	.p2align	4, 0x90
.LBB436_23:                             # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	flagpr7
	addl	$-1, -56(%rbp)
	jns	.LBB436_23
	jmp	.LBB436_27
.LBB436_24:                             # %if.else86
	leaq	-80(%rbp), %rbx
	addl	$-1, -56(%rbp)
	js	.LBB436_27
	.p2align	4, 0x90
.LBB436_26:                             # %while.body91
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	flagpr8
	addl	$-1, -56(%rbp)
	jns	.LBB436_26
.LBB436_27:                             # %if.end99
	leaq	-64(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	callq	flagpr9
	leaq	-48(%rbp), %r14
	leaq	-80(%rbp), %rbx
	addl	$-1, -56(%rbp)
	js	.LBB436_30
	.p2align	4, 0x90
.LBB436_29:                             # %for.inc110
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	flagpr10
	movq	%rbx, %rdi
	callq	flagpr11
	addl	$-1, -56(%rbp)
	jns	.LBB436_29
.LBB436_30:                             # %for.end112
	movq	-48(%rbp), %rax
	cmpq	orig_word(%rip), %rax
	jbe	.LBB436_32
# %bb.31:                               # %if.then115
	leaq	-48(%rbp), %rdi
	callq	flagpr12
.LBB436_32:                             # %if.end117
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB436_39
# %bb.33:                               # %if.then121
	leaq	-80(%rbp), %rdi
	callq	flagpr13
	jmp	.LBB436_34
.LBB436_39:                             # %if.else124
	leaq	-80(%rbp), %rbx
	jmp	.LBB436_40
	.p2align	4, 0x90
.LBB436_41:                             # %while.body127
                                        #   in Loop: Header=BB436_40 Depth=1
	movq	%rbx, %rdi
	callq	flagpr14
.LBB436_40:                             # %while.cond125
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB436_41
.LBB436_34:                             # %if.end135
	movsbl	hashheader+68(%rip), %edi
	callq	putchar
	cmpl	$0, -72(%rbp)
	jle	.LBB436_36
# %bb.35:                               # %if.then140
	leaq	-72(%rbp), %rdi
	callq	flagpr15
.LBB436_36:                             # %if.end142
	cmpl	$0, -68(%rbp)
	jle	.LBB436_38
# %bb.37:                               # %if.then145
	leaq	-68(%rbp), %rdi
	callq	flagpr16
.LBB436_38:                             # %if.end147
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end436:
	.size	flagpr, .Lfunc_end436-flagpr
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk2           # -- Begin function suf_list_chk2
	.p2align	4, 0x90
	.type	suf_list_chk2,@function
suf_list_chk2:                          # @suf_list_chk2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movq	8(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movswq	20(%rax), %rax
	addq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	$43, (%rax)
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end437:
	.size	suf_list_chk2, .Lfunc_end437-suf_list_chk2
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk3           # -- Begin function suf_list_chk3
	.p2align	4, 0x90
	.type	suf_list_chk3,@function
suf_list_chk3:                          # @suf_list_chk3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	$45, (%rax)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movswq	18(%rax), %rax
	addq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end438:
	.size	suf_list_chk3, .Lfunc_end438-suf_list_chk3
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk4           # -- Begin function suf_list_chk4
	.p2align	4, 0x90
	.type	suf_list_chk4,@function
suf_list_chk4:                          # @suf_list_chk4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	$45, (%rax)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movswq	18(%rax), %rax
	addq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end439:
	.size	suf_list_chk4, .Lfunc_end439-suf_list_chk4
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk5           # -- Begin function suf_list_chk5
	.p2align	4, 0x90
	.type	suf_list_chk5,@function
suf_list_chk5:                          # @suf_list_chk5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	$43, (%rax)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	8(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movswq	20(%rax), %rax
	addq	8(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end440:
	.size	suf_list_chk5, .Lfunc_end440-suf_list_chk5
	.cfi_endproc
                                        # -- End function
	.globl	ins_root_cap            # -- Begin function ins_root_cap
	.p2align	4, 0x90
	.type	ins_root_cap,@function
ins_root_cap:                           # @ins_root_cap
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1320, %rsp             # imm = 0x528
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222352, -96(%rbp)   # imm = 0xD3ED810
	movl	$555555685, -92(%rbp)   # imm = 0x211D1B65
	movl	$444444574, -88(%rbp)   # imm = 0x1A7DAF9E
	movl	$222222352, %edi        # imm = 0xD3ED810
	movl	$555555685, %esi        # imm = 0x211D1B65
	movl	$444444574, %edx        # imm = 0x1A7DAF9E
	callq	guardMe
	movl	$222222351, -84(%rbp)   # imm = 0xD3ED80F
	movl	$555555684, -80(%rbp)   # imm = 0x211D1B64
	movl	$444444573, -76(%rbp)   # imm = 0x1A7DAF9D
	movl	$222222351, %edi        # imm = 0xD3ED80F
	movl	$555555684, %esi        # imm = 0x211D1B64
	movl	$444444573, %edx        # imm = 0x1A7DAF9D
	callq	guardMe
	movq	%r14, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movl	%r13d, -72(%rbp)
	movl	%r12d, -68(%rbp)
	movl	%r15d, -64(%rbp)
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	%r9d, -60(%rbp)
	movl	$0, -48(%rbp)
	movaps	16(%rbp), %xmm0
	movq	32(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	leaq	-1312(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	save_root_cap
	movl	$0, -44(%rbp)
	leaq	-44(%rbp), %rbx
	jmp	.LBB441_1
	.p2align	4, 0x90
.LBB441_4:                              # %for.inc
                                        #   in Loop: Header=BB441_1 Depth=1
	movq	%rbx, %rdi
	callq	ins_root_cap0
.LBB441_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB441_5
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB441_1 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$120, %rax, %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-1312, %rdi            # imm = 0xFAE0
	callq	insert
	testl	%eax, %eax
	jns	.LBB441_4
# %bb.3:                                # %if.then
	movl	$-1, -52(%rbp)
	jmp	.LBB441_6
.LBB441_5:                              # %for.end
	movl	$0, -52(%rbp)
.LBB441_6:                              # %return
	movl	-52(%rbp), %eax
	addq	$1320, %rsp             # imm = 0x528
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end441:
	.size	ins_root_cap, .Lfunc_end441-ins_root_cap
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk6           # -- Begin function suf_list_chk6
	.p2align	4, 0x90
	.type	suf_list_chk6,@function
suf_list_chk6:                          # @suf_list_chk6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -48(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -32(%rsp)
	movslq	numhits(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, hits(,%rcx,8)
	movq	-48(%rsp), %rax
	movslq	numhits(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, hits+8(,%rcx,8)
	movq	-40(%rsp), %rax
	movslq	numhits(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, hits+16(,%rcx,8)
	incl	numhits(%rip)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end442:
	.size	suf_list_chk6, .Lfunc_end442-suf_list_chk6
	.cfi_endproc
                                        # -- End function
	.globl	suf_list_chk7           # -- Begin function suf_list_chk7
	.p2align	4, 0x90
	.type	suf_list_chk7,@function
suf_list_chk7:                          # @suf_list_chk7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rcx, -16(%rsp)
	decl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end443:
	.size	suf_list_chk7, .Lfunc_end443-suf_list_chk7
	.cfi_endproc
                                        # -- End function
	.globl	ins_root_cap0           # -- Begin function ins_root_cap0
	.p2align	4, 0x90
	.type	ins_root_cap0,@function
ins_root_cap0:                          # @ins_root_cap0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end444:
	.size	ins_root_cap0, .Lfunc_end444-ins_root_cap0
	.cfi_endproc
                                        # -- End function
	.globl	flagpr0                 # -- Begin function flagpr0
	.p2align	4, 0x90
	.type	flagpr0,@function
flagpr0:                                # @flagpr0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	orig_word(%rip), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end445:
	.size	flagpr0, .Lfunc_end445-flagpr0
	.cfi_endproc
                                        # -- End function
	.globl	flagpr1                 # -- Begin function flagpr1
	.p2align	4, 0x90
	.type	flagpr1,@function
flagpr1:                                # @flagpr1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end446:
	.size	flagpr1, .Lfunc_end446-flagpr1
	.cfi_endproc
                                        # -- End function
	.globl	flagpr2                 # -- Begin function flagpr2
	.p2align	4, 0x90
	.type	flagpr2,@function
flagpr2:                                # @flagpr2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	orig_word(%rip), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end447:
	.size	flagpr2, .Lfunc_end447-flagpr2
	.cfi_endproc
                                        # -- End function
	.globl	flagpr3                 # -- Begin function flagpr3
	.p2align	4, 0x90
	.type	flagpr3,@function
flagpr3:                                # @flagpr3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end448:
	.size	flagpr3, .Lfunc_end448-flagpr3
	.cfi_endproc
                                        # -- End function
	.globl	flagpr4                 # -- Begin function flagpr4
	.p2align	4, 0x90
	.type	flagpr4,@function
flagpr4:                                # @flagpr4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end449:
	.size	flagpr4, .Lfunc_end449-flagpr4
	.cfi_endproc
                                        # -- End function
	.globl	flagpr5                 # -- Begin function flagpr5
	.p2align	4, 0x90
	.type	flagpr5,@function
flagpr5:                                # @flagpr5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movl	(%rdx), %eax
	movl	%eax, -36(%rsp)
	movslq	-36(%rsp), %rax
	movq	%rax, %rcx
	addq	orig_word(%rip), %rcx
	movslq	-40(%rsp), %rsi
	subq	%rsi, %rcx
	movq	%rcx, -32(%rsp)
	movl	%eax, (%rdx)
	movq	-24(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end450:
	.size	flagpr5, .Lfunc_end450-flagpr5
	.cfi_endproc
                                        # -- End function
	.globl	flagpr6                 # -- Begin function flagpr6
	.p2align	4, 0x90
	.type	flagpr6,@function
flagpr6:                                # @flagpr6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end451:
	.size	flagpr6, .Lfunc_end451-flagpr6
	.cfi_endproc
                                        # -- End function
	.globl	flagpr7                 # -- Begin function flagpr7
	.p2align	4, 0x90
	.type	flagpr7,@function
flagpr7:                                # @flagpr7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rax), %edi
	callq	printichar
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end452:
	.size	flagpr7, .Lfunc_end452-flagpr7
	.cfi_endproc
                                        # -- End function
	.globl	flagpr8                 # -- Begin function flagpr8
	.p2align	4, 0x90
	.type	flagpr8,@function
flagpr8:                                # @flagpr8
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rax), %eax
	movzbl	hashheader+526(%rax), %edi
	callq	printichar
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end453:
	.size	flagpr8, .Lfunc_end453-flagpr8
	.cfi_endproc
                                        # -- End function
	.globl	flagpr9                 # -- Begin function flagpr9
	.p2align	4, 0x90
	.type	flagpr9,@function
flagpr9:                                # @flagpr9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -32(%rsp)
	movl	(%rsi), %esi
	movl	%esi, -48(%rsp)
	movq	%rdx, -40(%rsp)
	movl	(%rdx), %edx
	movl	%edx, -52(%rsp)
	movq	%rcx, -8(%rsp)
	movl	(%rcx), %edx
	movl	%edx, -12(%rsp)
	movl	%edx, %edi
	subl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, -52(%rsp)
	movl	%edx, (%rcx)
	movq	-40(%rsp), %rax
	movl	-52(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-32(%rsp), %rax
	movl	-48(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end454:
	.size	flagpr9, .Lfunc_end454-flagpr9
	.cfi_endproc
                                        # -- End function
	.globl	flagpr10                # -- Begin function flagpr10
	.p2align	4, 0x90
	.type	flagpr10,@function
flagpr10:                               # @flagpr10
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rax), %edi
	callq	printichar
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end455:
	.size	flagpr10, .Lfunc_end455-flagpr10
	.cfi_endproc
                                        # -- End function
	.globl	flagpr11                # -- Begin function flagpr11
	.p2align	4, 0x90
	.type	flagpr11,@function
flagpr11:                               # @flagpr11
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end456:
	.size	flagpr11, .Lfunc_end456-flagpr11
	.cfi_endproc
                                        # -- End function
	.globl	flagpr12                # -- Begin function flagpr12
	.p2align	4, 0x90
	.type	flagpr12,@function
flagpr12:                               # @flagpr12
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	decq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end457:
	.size	flagpr12, .Lfunc_end457-flagpr12
	.cfi_endproc
                                        # -- End function
	.globl	flagpr13                # -- Begin function flagpr13
	.p2align	4, 0x90
	.type	flagpr13,@function
flagpr13:                               # @flagpr13
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	xorl	%esi, %esi
	callq	ichartosstr
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end458:
	.size	flagpr13, .Lfunc_end458-flagpr13
	.cfi_endproc
                                        # -- End function
	.globl	flagpr14                # -- Begin function flagpr14
	.p2align	4, 0x90
	.type	flagpr14,@function
flagpr14:                               # @flagpr14
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rax), %eax
	movzbl	hashheader+526(%rax), %edi
	callq	printichar
	movq	stdout(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end459:
	.size	flagpr14, .Lfunc_end459-flagpr14
	.cfi_endproc
                                        # -- End function
	.globl	flagpr15                # -- Begin function flagpr15
	.p2align	4, 0x90
	.type	flagpr15,@function
flagpr15:                               # @flagpr15
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	callq	putchar
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end460:
	.size	flagpr15, .Lfunc_end460-flagpr15
	.cfi_endproc
                                        # -- End function
	.globl	flagpr16                # -- Begin function flagpr16
	.p2align	4, 0x90
	.type	flagpr16,@function
flagpr16:                               # @flagpr16
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	callq	putchar
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end461:
	.size	flagpr16, .Lfunc_end461-flagpr16
	.cfi_endproc
                                        # -- End function
	.globl	printichar              # -- Begin function printichar
	.p2align	4, 0x90
	.type	printichar,@function
printichar:                             # @printichar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$222222486, -48(%rbp)   # imm = 0xD3ED896
	movl	$555555819, -44(%rbp)   # imm = 0x211D1BEB
	movl	$444444708, -40(%rbp)   # imm = 0x1A7DB024
	movl	$222222486, %edi        # imm = 0xD3ED896
	movl	$555555819, %esi        # imm = 0x211D1BEB
	movl	$444444708, %edx        # imm = 0x1A7DB024
	callq	guardMe
	movl	$222222485, -36(%rbp)   # imm = 0xD3ED895
	movl	$555555818, -32(%rbp)   # imm = 0x211D1BEA
	movl	$444444707, -28(%rbp)   # imm = 0x1A7DB023
	movl	$222222485, %edi        # imm = 0xD3ED895
	movl	$555555818, %esi        # imm = 0x211D1BEA
	movl	$444444707, %edx        # imm = 0x1A7DB023
	callq	guardMe
	movl	$222222484, -24(%rbp)   # imm = 0xD3ED894
	movl	$555555817, -20(%rbp)   # imm = 0x211D1BE9
	movl	$444444706, -16(%rbp)   # imm = 0x1A7DB022
	movl	$222222484, %edi        # imm = 0xD3ED894
	movl	$555555817, %esi        # imm = 0x211D1BE9
	movl	$444444706, %edx        # imm = 0x1A7DB022
	callq	guardMe
	movl	%ebx, -12(%rbp)
	leaq	-12(%rbp), %rdi
	cmpl	$127, %ebx
	jg	.LBB462_2
# %bb.1:                                # %if.then
	callq	printichar0
	jmp	.LBB462_3
.LBB462_2:                              # %if.else
	callq	printichar1
.LBB462_3:                              # %if.end
	movl	$printichar.out, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end462:
	.size	printichar, .Lfunc_end462-printichar
	.cfi_endproc
                                        # -- End function
	.globl	printichar0             # -- Begin function printichar0
	.p2align	4, 0x90
	.type	printichar0,@function
printichar0:                            # @printichar0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movb	%al, printichar.out(%rip)
	movb	$0, printichar.out+1(%rip)
	movl	%eax, (%rdi)
	retq
.Lfunc_end463:
	.size	printichar0, .Lfunc_end463-printichar0
	.cfi_endproc
                                        # -- End function
	.globl	printichar1             # -- Begin function printichar1
	.p2align	4, 0x90
	.type	printichar1,@function
printichar1:                            # @printichar1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	addl	$-128, %eax
	leaq	(%rax,%rax,4), %rcx
	leaq	hashheader+2022(%rax,%rcx,2), %rsi
	movl	$printichar.out, %edi
	callq	strcpy
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end464:
	.size	printichar1, .Lfunc_end464-printichar1
	.cfi_endproc
                                        # -- End function
	.globl	pfx_list_chk0           # -- Begin function pfx_list_chk0
	.p2align	4, 0x90
	.type	pfx_list_chk0,@function
pfx_list_chk0:                          # @pfx_list_chk0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end465:
	.size	pfx_list_chk0, .Lfunc_end465-pfx_list_chk0
	.cfi_endproc
                                        # -- End function
	.globl	pfx_list_chk1           # -- Begin function pfx_list_chk1
	.p2align	4, 0x90
	.type	pfx_list_chk1,@function
pfx_list_chk1:                          # @pfx_list_chk1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end466:
	.size	pfx_list_chk1, .Lfunc_end466-pfx_list_chk1
	.cfi_endproc
                                        # -- End function
	.globl	pfx_list_chk2           # -- Begin function pfx_list_chk2
	.p2align	4, 0x90
	.type	pfx_list_chk2,@function
pfx_list_chk2:                          # @pfx_list_chk2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movq	8(%rax), %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movswq	20(%rax), %rax
	addq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	$43, (%rax)
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end467:
	.size	pfx_list_chk2, .Lfunc_end467-pfx_list_chk2
	.cfi_endproc
                                        # -- End function
	.globl	pfx_list_chk3           # -- Begin function pfx_list_chk3
	.p2align	4, 0x90
	.type	pfx_list_chk3,@function
pfx_list_chk3:                          # @pfx_list_chk3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	$45, (%rax)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	strcpy
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end468:
	.size	pfx_list_chk3, .Lfunc_end468-pfx_list_chk3
	.cfi_endproc
                                        # -- End function
	.globl	pfx_list_chk4           # -- Begin function pfx_list_chk4
	.p2align	4, 0x90
	.type	pfx_list_chk4,@function
pfx_list_chk4:                          # @pfx_list_chk4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	numhits(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, hits(,%rcx,8)
	movq	-32(%rsp), %rax
	movslq	numhits(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, hits+8(,%rcx,8)
	movslq	numhits(%rip), %rax
	leaq	(%rax,%rax,2), %rax
	movq	$0, hits+16(,%rax,8)
	incl	numhits(%rip)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end469:
	.size	pfx_list_chk4, .Lfunc_end469-pfx_list_chk4
	.cfi_endproc
                                        # -- End function
	.globl	pfx_list_chk5           # -- Begin function pfx_list_chk5
	.p2align	4, 0x90
	.type	pfx_list_chk5,@function
pfx_list_chk5:                          # @pfx_list_chk5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rcx, -16(%rsp)
	decl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end470:
	.size	pfx_list_chk5, .Lfunc_end470-pfx_list_chk5
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok0                 # -- Begin function cap_ok0
	.p2align	4, 0x90
	.type	cap_ok0,@function
cap_ok0:                                # @cap_ok0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -36(%rsp)
	movq	%rsi, -32(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -16(%rsp)
	movq	8(%rax), %rcx
	movswl	20(%rcx), %ecx
	movl	%ecx, -36(%rsp)
	movq	8(%rax), %rcx
	movswl	18(%rcx), %ecx
	movl	%ecx, -40(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end471:
	.size	cap_ok0, .Lfunc_end471-cap_ok0
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok1                 # -- Begin function cap_ok1
	.p2align	4, 0x90
	.type	cap_ok1,@function
cap_ok1:                                # @cap_ok1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	$0, -12(%rsp)
	movl	$0, -28(%rsp)
	movl	$0, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end472:
	.size	cap_ok1, .Lfunc_end472-cap_ok1
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok2                 # -- Begin function cap_ok2
	.p2align	4, 0x90
	.type	cap_ok2,@function
cap_ok2:                                # @cap_ok2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end473:
	.size	cap_ok2, .Lfunc_end473-cap_ok2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function entryhasaffixes
	.type	entryhasaffixes,@function
entryhasaffixes:                        # @entryhasaffixes
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222429, -76(%rbp)   # imm = 0xD3ED85D
	movl	$555555762, -72(%rbp)   # imm = 0x211D1BB2
	movl	$444444651, -68(%rbp)   # imm = 0x1A7DAFEB
	movl	$222222429, %edi        # imm = 0xD3ED85D
	movl	$555555762, %esi        # imm = 0x211D1BB2
	movl	$444444651, %edx        # imm = 0x1A7DAFEB
	callq	guardMe
	movl	$222222428, -64(%rbp)   # imm = 0xD3ED85C
	movl	$555555761, -60(%rbp)   # imm = 0x211D1BB1
	movl	$444444650, -56(%rbp)   # imm = 0x1A7DAFEA
	movl	$222222428, %edi        # imm = 0xD3ED85C
	movl	$555555761, %esi        # imm = 0x211D1BB1
	movl	$444444650, %edx        # imm = 0x1A7DAFEA
	callq	guardMe
	movl	$222222427, -52(%rbp)   # imm = 0xD3ED85B
	movl	$555555760, -48(%rbp)   # imm = 0x211D1BB0
	movl	$444444649, -44(%rbp)   # imm = 0x1A7DAFE9
	movl	$222222427, %edi        # imm = 0xD3ED85B
	movl	$555555760, %esi        # imm = 0x211D1BB0
	movl	$444444649, %edx        # imm = 0x1A7DAFE9
	callq	guardMe
	movq	%r14, -40(%rbp)
	movq	%rbx, -32(%rbp)
	cmpq	$0, 8(%rbx)
	je	.LBB474_2
# %bb.1:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB474_6
.LBB474_2:                              # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB474_4
# %bb.3:                                # %land.lhs.true4
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB474_6
.LBB474_4:                              # %if.end15
	movl	$1, -20(%rbp)
	jmp	.LBB474_7
.LBB474_6:                              # %if.then14
	movl	$0, -20(%rbp)
.LBB474_7:                              # %return
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end474:
	.size	entryhasaffixes, .Lfunc_end474-entryhasaffixes
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok3                 # -- Begin function cap_ok3
	.p2align	4, 0x90
	.type	cap_ok3,@function
cap_ok3:                                # @cap_ok3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end475:
	.size	cap_ok3, .Lfunc_end475-cap_ok3
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok4                 # -- Begin function cap_ok4
	.p2align	4, 0x90
	.type	cap_ok4,@function
cap_ok4:                                # @cap_ok4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end476:
	.size	cap_ok4, .Lfunc_end476-cap_ok4
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok5                 # -- Begin function cap_ok5
	.p2align	4, 0x90
	.type	cap_ok5,@function
cap_ok5:                                # @cap_ok5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end477:
	.size	cap_ok5, .Lfunc_end477-cap_ok5
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok6                 # -- Begin function cap_ok6
	.p2align	4, 0x90
	.type	cap_ok6,@function
cap_ok6:                                # @cap_ok6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end478:
	.size	cap_ok6, .Lfunc_end478-cap_ok6
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok7                 # -- Begin function cap_ok7
	.p2align	4, 0x90
	.type	cap_ok7,@function
cap_ok7:                                # @cap_ok7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -56(%rsp)
	movq	%rsi, -16(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -72(%rsp)
	movq	%rdx, -24(%rsp)
	movl	(%rdx), %eax
	movl	%eax, -76(%rsp)
	movq	%rcx, -32(%rsp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rsp)
	movq	%r8, -40(%rsp)
	movl	(%r8), %ecx
	movl	%ecx, -68(%rsp)
	movq	%r9, -48(%rsp)
	movl	(%r9), %edx
	movl	%edx, -80(%rsp)
	movslq	-76(%rsp), %rdx
	addq	%rax, %rdx
	movq	%rdx, -64(%rsp)
	movslq	-68(%rsp), %rax
	addq	%rdx, %rax
	movslq	-80(%rsp), %rdx
	subq	%rdx, %rax
	movslq	-72(%rsp), %rdx
	subq	%rdx, %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rsp), %rax
	movl	-80(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movl	-72(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movl	-76(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end479:
	.size	cap_ok7, .Lfunc_end479-cap_ok7
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok8                 # -- Begin function cap_ok8
	.p2align	4, 0x90
	.type	cap_ok8,@function
cap_ok8:                                # @cap_ok8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end480:
	.size	cap_ok8, .Lfunc_end480-cap_ok8
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok9                 # -- Begin function cap_ok9
	.p2align	4, 0x90
	.type	cap_ok9,@function
cap_ok9:                                # @cap_ok9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end481:
	.size	cap_ok9, .Lfunc_end481-cap_ok9
	.cfi_endproc
                                        # -- End function
	.globl	cap_ok10                # -- Begin function cap_ok10
	.p2align	4, 0x90
	.type	cap_ok10,@function
cap_ok10:                               # @cap_ok10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end482:
	.size	cap_ok10, .Lfunc_end482-cap_ok10
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword0             # -- Begin function skiptoword0
	.p2align	4, 0x90
	.type	skiptoword0,@function
skiptoword0:                            # @skiptoword0
	.cfi_startproc
# %bb.0:                                # %entry
	movl	math_mode(%rip), %eax
	movl	%eax, save_math_mode(%rip)
	movb	LaTeX_Mode(%rip), %al
	movb	%al, save_LaTeX_Mode(%rip)
	retq
.Lfunc_end483:
	.size	skiptoword0, .Lfunc_end483-skiptoword0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_math_check
	.type	TeX_math_check,@function
TeX_math_check:                         # @TeX_math_check
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movl	%edi, %r14d
	movl	$222222375, -80(%rbp)   # imm = 0xD3ED827
	movl	$555555708, -76(%rbp)   # imm = 0x211D1B7C
	movl	$444444597, -72(%rbp)   # imm = 0x1A7DAFB5
	movl	$222222375, %edi        # imm = 0xD3ED827
	movl	$555555708, %esi        # imm = 0x211D1B7C
	movl	$444444597, %edx        # imm = 0x1A7DAFB5
	callq	guardMe
	movl	$222222374, -68(%rbp)   # imm = 0xD3ED826
	movl	$555555707, -64(%rbp)   # imm = 0x211D1B7B
	movl	$444444596, -60(%rbp)   # imm = 0x1A7DAFB4
	movl	$222222374, %edi        # imm = 0xD3ED826
	movl	$555555707, %esi        # imm = 0x211D1B7B
	movl	$444444596, %edx        # imm = 0x1A7DAFB4
	callq	guardMe
	movl	$222222373, -56(%rbp)   # imm = 0xD3ED825
	movl	$555555706, -52(%rbp)   # imm = 0x211D1B7A
	movl	$444444595, -48(%rbp)   # imm = 0x1A7DAFB3
	movl	$222222373, %edi        # imm = 0xD3ED825
	movl	$555555706, %esi        # imm = 0x211D1B7A
	movl	$444444595, %edx        # imm = 0x1A7DAFB3
	callq	guardMe
	movl	$222222372, -44(%rbp)   # imm = 0xD3ED824
	movl	$555555705, -40(%rbp)   # imm = 0x211D1B79
	movl	$444444594, -36(%rbp)   # imm = 0x1A7DAFB2
	movl	$222222372, %edi        # imm = 0xD3ED824
	movl	$555555705, %esi        # imm = 0x211D1B79
	movl	$444444594, %edx        # imm = 0x1A7DAFB2
	callq	guardMe
	movl	%r14d, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movq	%rbx, %rdi
	callq	TeX_open_paren
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB484_1
# %bb.2:                                # %if.else
	movb	$80, LaTeX_Mode(%rip)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rax)
	movl	$.L.str.18.337, %esi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB484_7
# %bb.3:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.19.338, %esi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB484_7
# %bb.4:                                # %lor.lhs.false8
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.20.339, %esi
	movl	$11, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB484_7
# %bb.5:                                # %lor.lhs.false12
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.21.340, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB484_7
# %bb.6:                                # %lor.lhs.false16
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.22.341, %esi
	movl	$4, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB484_7
# %bb.8:                                # %if.end22
	cmpl	$98, -32(%rbp)
	jne	.LBB484_10
# %bb.9:                                # %if.then25
	leaq	-24(%rbp), %rdi
	callq	TeX_math_check2
	jmp	.LBB484_11
.LBB484_7:                              # %if.then20
	leaq	-24(%rbp), %rdi
	callq	TeX_math_check1
	movl	$1, -28(%rbp)
	jmp	.LBB484_12
.LBB484_1:                              # %if.then
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	TeX_math_check0
.LBB484_12:                             # %return
	movl	-28(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB484_10:                             # %if.else26
	leaq	-24(%rbp), %rdi
	callq	TeX_math_check3
.LBB484_11:                             # %if.end27
	movl	$0, -28(%rbp)
	jmp	.LBB484_12
.Lfunc_end484:
	.size	TeX_math_check, .Lfunc_end484-TeX_math_check
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_LR_check
	.type	TeX_LR_check,@function
TeX_LR_check:                           # @TeX_LR_check
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movl	%edi, %r14d
	movl	$222222382, -116(%rbp)  # imm = 0xD3ED82E
	movl	$555555715, -112(%rbp)  # imm = 0x211D1B83
	movl	$444444604, -108(%rbp)  # imm = 0x1A7DAFBC
	movl	$222222382, %edi        # imm = 0xD3ED82E
	movl	$555555715, %esi        # imm = 0x211D1B83
	movl	$444444604, %edx        # imm = 0x1A7DAFBC
	callq	guardMe
	movl	$222222381, -104(%rbp)  # imm = 0xD3ED82D
	movl	$555555714, -100(%rbp)  # imm = 0x211D1B82
	movl	$444444603, -96(%rbp)   # imm = 0x1A7DAFBB
	movl	$222222381, %edi        # imm = 0xD3ED82D
	movl	$555555714, %esi        # imm = 0x211D1B82
	movl	$444444603, %edx        # imm = 0x1A7DAFBB
	callq	guardMe
	movl	$222222380, -92(%rbp)   # imm = 0xD3ED82C
	movl	$555555713, -88(%rbp)   # imm = 0x211D1B81
	movl	$444444602, -84(%rbp)   # imm = 0x1A7DAFBA
	movl	$222222380, %edi        # imm = 0xD3ED82C
	movl	$555555713, %esi        # imm = 0x211D1B81
	movl	$444444602, %edx        # imm = 0x1A7DAFBA
	callq	guardMe
	movl	$222222379, -80(%rbp)   # imm = 0xD3ED82B
	movl	$555555712, -76(%rbp)   # imm = 0x211D1B80
	movl	$444444601, -72(%rbp)   # imm = 0x1A7DAFB9
	movl	$222222379, %edi        # imm = 0xD3ED82B
	movl	$555555712, %esi        # imm = 0x211D1B80
	movl	$444444601, %edx        # imm = 0x1A7DAFB9
	callq	guardMe
	movl	$222222378, -68(%rbp)   # imm = 0xD3ED82A
	movl	$555555711, -64(%rbp)   # imm = 0x211D1B7F
	movl	$444444600, -60(%rbp)   # imm = 0x1A7DAFB8
	movl	$222222378, %edi        # imm = 0xD3ED82A
	movl	$555555711, %esi        # imm = 0x211D1B7F
	movl	$444444600, %edx        # imm = 0x1A7DAFB8
	callq	guardMe
	movl	$222222377, -56(%rbp)   # imm = 0xD3ED829
	movl	$555555710, -52(%rbp)   # imm = 0x211D1B7E
	movl	$444444599, -48(%rbp)   # imm = 0x1A7DAFB7
	movl	$222222377, %edi        # imm = 0xD3ED829
	movl	$555555710, %esi        # imm = 0x211D1B7E
	movl	$444444599, %edx        # imm = 0x1A7DAFB7
	callq	guardMe
	movl	$222222376, -44(%rbp)   # imm = 0xD3ED828
	movl	$555555709, -40(%rbp)   # imm = 0x211D1B7D
	movl	$444444598, -36(%rbp)   # imm = 0x1A7DAFB6
	movl	$222222376, %edi        # imm = 0xD3ED828
	movl	$555555709, %esi        # imm = 0x211D1B7D
	movl	$444444598, %edx        # imm = 0x1A7DAFB6
	callq	guardMe
	movl	%r14d, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movq	%rbx, %rdi
	callq	TeX_open_paren
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB485_3
# %bb.1:                                # %if.end
	movb	$80, LaTeX_Mode(%rip)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rax)
	movl	$.L.str.24.335, %esi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB485_4
# %bb.2:                                # %if.end21
	leaq	-24(%rbp), %rdi
	callq	TeX_LR_check4
	movl	$0, -28(%rbp)
	jmp	.LBB485_11
.LBB485_3:                              # %if.then
	leaq	-28(%rbp), %rdi
	callq	TeX_LR_check0
	jmp	.LBB485_11
.LBB485_4:                              # %if.then4
	movq	-24(%rbp), %rdi
	callq	TeX_skip_parens
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB485_6
# %bb.5:                                # %if.then5
	leaq	-24(%rbp), %rdi
	callq	TeX_LR_check1
.LBB485_6:                              # %if.end7
	cmpl	$0, -32(%rbp)
	je	.LBB485_8
# %bb.7:                                # %if.then9
	leaq	-24(%rbp), %rdi
	callq	TeX_LR_check2
	jmp	.LBB485_10
.LBB485_8:                              # %if.else11
	movl	math_mode(%rip), %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	shll	$7, %ecx
	subl	%ecx, %eax
	movl	%eax, math_mode(%rip)
	jns	.LBB485_10
# %bb.9:                                # %if.then17
	callq	TeX_LR_check3
.LBB485_10:                             # %if.end20
	movl	$1, -28(%rbp)
.LBB485_11:                             # %return
	movl	-28(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end485:
	.size	TeX_LR_check, .Lfunc_end485-TeX_LR_check
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword1             # -- Begin function skiptoword1
	.p2align	4, 0x90
	.type	skiptoword1,@function
skiptoword1:                            # @skiptoword1
	.cfi_startproc
# %bb.0:                                # %entry
	decl	math_mode(%rip)
	retq
.Lfunc_end486:
	.size	skiptoword1, .Lfunc_end486-skiptoword1
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword2             # -- Begin function skiptoword2
	.p2align	4, 0x90
	.type	skiptoword2,@function
skiptoword2:                            # @skiptoword2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end487:
	.size	skiptoword2, .Lfunc_end487-skiptoword2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_math_end
	.type	TeX_math_end,@function
TeX_math_end:                           # @TeX_math_end
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222225, -48(%rbp)   # imm = 0xD3ED791
	movl	$555555558, -44(%rbp)   # imm = 0x211D1AE6
	movl	$444444447, -40(%rbp)   # imm = 0x1A7DAF1F
	movl	$222222225, %edi        # imm = 0xD3ED791
	movl	$555555558, %esi        # imm = 0x211D1AE6
	movl	$444444447, %edx        # imm = 0x1A7DAF1F
	callq	guardMe
	movl	$222222224, -36(%rbp)   # imm = 0xD3ED790
	movl	$555555557, -32(%rbp)   # imm = 0x211D1AE5
	movl	$444444446, -28(%rbp)   # imm = 0x1A7DAF1E
	movl	$222222224, %edi        # imm = 0xD3ED790
	movl	$555555557, %esi        # imm = 0x211D1AE5
	movl	$444444446, %edx        # imm = 0x1A7DAF1E
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movq	(%rbx), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+62(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB488_4
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %eax
	movsbl	hashheader+62(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB488_10
# %bb.2:                                # %if.then7
	leaq	-24(%rbp), %rdi
	callq	TeX_math_end0
	jmp	.LBB488_10
.LBB488_4:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+65(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB488_8
# %bb.5:                                # %if.then12
	cmpl	$0, TeX_comment(%rip)
	jne	.LBB488_7
# %bb.6:                                # %if.then13
	callq	TeX_math_end1
.LBB488_7:                              # %if.else36
	movl	$0, -12(%rbp)
	jmp	.LBB488_11
.LBB488_8:                              # %if.end16
	movq	-24(%rbp), %rax
	addq	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+54(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB488_10
# %bb.9:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+56(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB488_10
# %bb.12:                               # %if.end27
	movq	-24(%rbp), %rdi
	callq	TeX_LR_begin
	testl	%eax, %eax
	je	.LBB488_14
.LBB488_10:                             # %if.then26
	movl	$1, -12(%rbp)
.LBB488_11:                             # %return
	movl	-12(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB488_14:                             # %if.end30
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.27.303, %esi
	movl	$3, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	jne	.LBB488_7
# %bb.15:                               # %if.then34
	leaq	-12(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	TeX_math_end2
	jmp	.LBB488_11
.Lfunc_end488:
	.size	TeX_math_end, .Lfunc_end488-TeX_math_end
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword3             # -- Begin function skiptoword3
	.p2align	4, 0x90
	.type	skiptoword3,@function
skiptoword3:                            # @skiptoword3
	.cfi_startproc
# %bb.0:                                # %entry
	decl	math_mode(%rip)
	retq
.Lfunc_end489:
	.size	skiptoword3, .Lfunc_end489-skiptoword3
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword4             # -- Begin function skiptoword4
	.p2align	4, 0x90
	.type	skiptoword4,@function
skiptoword4:                            # @skiptoword4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.16.300, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end490:
	.size	skiptoword4, .Lfunc_end490-skiptoword4
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword5             # -- Begin function skiptoword5
	.p2align	4, 0x90
	.type	skiptoword5,@function
skiptoword5:                            # @skiptoword5
	.cfi_startproc
# %bb.0:                                # %entry
	decl	math_mode(%rip)
	retq
.Lfunc_end491:
	.size	skiptoword5, .Lfunc_end491-skiptoword5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_strncmp
	.type	TeX_strncmp,@function
TeX_strncmp:                            # @TeX_strncmp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$222222227, -72(%rbp)   # imm = 0xD3ED793
	movl	$555555560, -68(%rbp)   # imm = 0x211D1AE8
	movl	$444444449, -64(%rbp)   # imm = 0x1A7DAF21
	movl	$222222227, %edi        # imm = 0xD3ED793
	movl	$555555560, %esi        # imm = 0x211D1AE8
	movl	$444444449, %edx        # imm = 0x1A7DAF21
	callq	guardMe
	movl	$222222226, -60(%rbp)   # imm = 0xD3ED792
	movl	$555555559, -56(%rbp)   # imm = 0x211D1AE7
	movl	$444444448, -52(%rbp)   # imm = 0x1A7DAF20
	movl	$222222226, %edi        # imm = 0xD3ED792
	movl	$555555559, %esi        # imm = 0x211D1AE7
	movl	$444444448, %edx        # imm = 0x1A7DAF20
	callq	guardMe
	movq	%rbx, -48(%rbp)
	movq	%r15, -80(%rbp)
	movl	%r14d, -28(%rbp)
	movslq	-28(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strncmp
	movl	%eax, -36(%rbp)
	testl	%eax, %eax
	jne	.LBB492_4
# %bb.1:                                # %if.then
	movslq	-28(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %eax
	testl	$-128, %eax
	jne	.LBB492_4
# %bb.2:                                # %land.lhs.true
	movslq	-28(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbq	(%rcx,%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$4, %ah
	je	.LBB492_4
# %bb.3:                                # %if.then13
	movl	$1, -32(%rbp)
	jmp	.LBB492_5
.LBB492_4:                              # %if.end14
	leaq	-32(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	callq	TeX_strncmp0
.LBB492_5:                              # %return
	movl	-32(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end492:
	.size	TeX_strncmp, .Lfunc_end492-TeX_strncmp
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword6             # -- Begin function skiptoword6
	.p2align	4, 0x90
	.type	skiptoword6,@function
skiptoword6:                            # @skiptoword6
	.cfi_startproc
# %bb.0:                                # %entry
	decl	math_mode(%rip)
	retq
.Lfunc_end493:
	.size	skiptoword6, .Lfunc_end493-skiptoword6
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword7             # -- Begin function skiptoword7
	.p2align	4, 0x90
	.type	skiptoword7,@function
skiptoword7:                            # @skiptoword7
	.cfi_startproc
# %bb.0:                                # %entry
	incl	math_mode(%rip)
	retq
.Lfunc_end494:
	.size	skiptoword7, .Lfunc_end494-skiptoword7
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_skip_parens
	.type	TeX_skip_parens,@function
TeX_skip_parens:                        # @TeX_skip_parens
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222230, -52(%rbp)   # imm = 0xD3ED796
	movl	$555555563, -48(%rbp)   # imm = 0x211D1AEB
	movl	$444444452, -44(%rbp)   # imm = 0x1A7DAF24
	movl	$222222230, %edi        # imm = 0xD3ED796
	movl	$555555563, %esi        # imm = 0x211D1AEB
	movl	$444444452, %edx        # imm = 0x1A7DAF24
	callq	guardMe
	movl	$222222229, -40(%rbp)   # imm = 0xD3ED795
	movl	$555555562, -36(%rbp)   # imm = 0x211D1AEA
	movl	$444444451, -32(%rbp)   # imm = 0x1A7DAF23
	movl	$222222229, %edi        # imm = 0xD3ED795
	movl	$555555562, %esi        # imm = 0x211D1AEA
	movl	$444444451, %edx        # imm = 0x1A7DAF23
	callq	guardMe
	movl	$222222228, -28(%rbp)   # imm = 0xD3ED794
	movl	$555555561, -24(%rbp)   # imm = 0x211D1AE9
	movl	$444444450, -20(%rbp)   # imm = 0x1A7DAF22
	movl	$222222228, %edi        # imm = 0xD3ED794
	movl	$555555561, %esi        # imm = 0x211D1AE9
	movl	$444444450, %edx        # imm = 0x1A7DAF22
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-16(%rbp), %rbx
	jmp	.LBB495_2
	.p2align	4, 0x90
.LBB495_1:                              # %while.body
                                        #   in Loop: Header=BB495_2 Depth=1
	movq	%rbx, %rdi
	callq	TeX_skip_parens0
.LBB495_2:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB495_6
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB495_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+58(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB495_6
# %bb.4:                                # %land.rhs
                                        #   in Loop: Header=BB495_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+62(%rip), %ecx
	cmpl	%ecx, %eax
	setne	%al
	testb	%al, %al
	jne	.LBB495_1
	jmp	.LBB495_7
	.p2align	4, 0x90
.LBB495_6:                              #   in Loop: Header=BB495_2 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB495_1
.LBB495_7:                              # %while.end
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end495:
	.size	TeX_skip_parens, .Lfunc_end495-TeX_skip_parens
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_math_begin
	.type	TeX_math_begin,@function
TeX_math_begin:                         # @TeX_math_begin
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movl	$222222232, -52(%rbp)   # imm = 0xD3ED798
	movl	$555555565, -48(%rbp)   # imm = 0x211D1AED
	movl	$444444454, -44(%rbp)   # imm = 0x1A7DAF26
	movl	$222222232, %edi        # imm = 0xD3ED798
	movl	$555555565, %esi        # imm = 0x211D1AED
	movl	$444444454, %edx        # imm = 0x1A7DAF26
	callq	guardMe
	movl	$222222231, -40(%rbp)   # imm = 0xD3ED797
	movl	$555555564, -36(%rbp)   # imm = 0x211D1AEC
	movl	$444444453, -32(%rbp)   # imm = 0x1A7DAF25
	movl	$222222231, %edi        # imm = 0xD3ED797
	movl	$555555564, %esi        # imm = 0x211D1AEC
	movl	$444444453, %edx        # imm = 0x1A7DAF25
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movq	(%rbx), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+62(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_4
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %eax
	movsbl	hashheader+62(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_3
# %bb.2:                                # %if.then7
	leaq	-24(%rbp), %rdi
	callq	TeX_math_begin0
	jmp	.LBB496_3
.LBB496_4:                              # %if.end8
	leaq	-24(%rbp), %r14
	jmp	.LBB496_6
	.p2align	4, 0x90
.LBB496_5:                              # %if.else39
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	%r14, %rdi
	callq	TeX_math_begin2
.LBB496_6:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+61(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_16
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+53(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB496_3
# %bb.8:                                # %lor.lhs.false
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+55(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB496_3
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	btl	$10, %eax
	jb	.LBB496_12
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$64, (%rax)
	je	.LBB496_12
# %bb.11:                               # %if.then29
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	%r14, %rdi
	callq	TeX_math_begin1
	jmp	.LBB496_6
	.p2align	4, 0x90
.LBB496_12:                             # %if.else31
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.34.302, %esi
	movl	$5, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	jne	.LBB496_25
# %bb.13:                               # %if.then35
                                        #   in Loop: Header=BB496_6 Depth=1
	movq	-24(%rbp), %rsi
	movl	$98, %edi
	callq	TeX_math_check
	testl	%eax, %eax
	je	.LBB496_5
.LBB496_3:                              # %if.end
	movl	$1, -28(%rbp)
.LBB496_27:                             # %return
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB496_16:                             # %while.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+55(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB496_18
# %bb.17:                               # %lor.lhs.false50
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+59(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_26
.LBB496_18:                             # %land.lhs.true55
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %eax
	movsbl	hashheader+64(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_26
# %bb.19:                               # %if.then61
	leaq	-24(%rbp), %rdi
	callq	TeX_math_begin4
	.p2align	4, 0x90
.LBB496_20:                             # %while.cond63
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB496_26
# %bb.21:                               # %while.body65
                                        #   in Loop: Header=BB496_20 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movsbl	(%rcx), %eax
	movsbl	hashheader+64(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_20
# %bb.22:                               # %land.lhs.true71
                                        #   in Loop: Header=BB496_20 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+56(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB496_24
# %bb.23:                               # %lor.lhs.false76
                                        #   in Loop: Header=BB496_20 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+60(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB496_20
.LBB496_24:                             # %if.then81
	movq	-24(%rbp), %rdi
	callq	TeX_math_begin
	movl	%eax, -28(%rbp)
	jmp	.LBB496_27
.LBB496_25:                             # %if.else42
	leaq	-24(%rbp), %rdi
	callq	TeX_math_begin3
.LBB496_26:                             # %if.else85
	movl	$0, -28(%rbp)
	jmp	.LBB496_27
.Lfunc_end496:
	.size	TeX_math_begin, .Lfunc_end496-TeX_math_begin
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword8             # -- Begin function skiptoword8
	.p2align	4, 0x90
	.type	skiptoword8,@function
skiptoword8:                            # @skiptoword8
	.cfi_startproc
# %bb.0:                                # %entry
	incl	math_mode(%rip)
	retq
.Lfunc_end497:
	.size	skiptoword8, .Lfunc_end497-skiptoword8
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword9             # -- Begin function skiptoword9
	.p2align	4, 0x90
	.type	skiptoword9,@function
skiptoword9:                            # @skiptoword9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$5, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end498:
	.size	skiptoword9, .Lfunc_end498-skiptoword9
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword10            # -- Begin function skiptoword10
	.p2align	4, 0x90
	.type	skiptoword10,@function
skiptoword10:                           # @skiptoword10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$3, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end499:
	.size	skiptoword10, .Lfunc_end499-skiptoword10
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword11            # -- Begin function skiptoword11
	.p2align	4, 0x90
	.type	skiptoword11,@function
skiptoword11:                           # @skiptoword11
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end500:
	.size	skiptoword11, .Lfunc_end500-skiptoword11
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword12            # -- Begin function skiptoword12
	.p2align	4, 0x90
	.type	skiptoword12,@function
skiptoword12:                           # @skiptoword12
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end501:
	.size	skiptoword12, .Lfunc_end501-skiptoword12
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword13            # -- Begin function skiptoword13
	.p2align	4, 0x90
	.type	skiptoword13,@function
skiptoword13:                           # @skiptoword13
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$4, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end502:
	.size	skiptoword13, .Lfunc_end502-skiptoword13
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword14            # -- Begin function skiptoword14
	.p2align	4, 0x90
	.type	skiptoword14,@function
skiptoword14:                           # @skiptoword14
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$5, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end503:
	.size	skiptoword14, .Lfunc_end503-skiptoword14
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword15            # -- Begin function skiptoword15
	.p2align	4, 0x90
	.type	skiptoword15,@function
skiptoword15:                           # @skiptoword15
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$3, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end504:
	.size	skiptoword15, .Lfunc_end504-skiptoword15
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword16            # -- Begin function skiptoword16
	.p2align	4, 0x90
	.type	skiptoword16,@function
skiptoword16:                           # @skiptoword16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$2, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end505:
	.size	skiptoword16, .Lfunc_end505-skiptoword16
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword17            # -- Begin function skiptoword17
	.p2align	4, 0x90
	.type	skiptoword17,@function
skiptoword17:                           # @skiptoword17
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end506:
	.size	skiptoword17, .Lfunc_end506-skiptoword17
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword18            # -- Begin function skiptoword18
	.p2align	4, 0x90
	.type	skiptoword18,@function
skiptoword18:                           # @skiptoword18
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end507:
	.size	skiptoword18, .Lfunc_end507-skiptoword18
	.cfi_endproc
                                        # -- End function
	.globl	skiptoword19            # -- Begin function skiptoword19
	.p2align	4, 0x90
	.type	skiptoword19,@function
skiptoword19:                           # @skiptoword19
	.cfi_startproc
# %bb.0:                                # %entry
	movl	save_math_mode(%rip), %eax
	movl	%eax, math_mode(%rip)
	movb	save_LaTeX_Mode(%rip), %al
	movb	%al, LaTeX_Mode(%rip)
	retq
.Lfunc_end508:
	.size	skiptoword19, .Lfunc_end508-skiptoword19
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_begin0         # -- Begin function TeX_math_begin0
	.p2align	4, 0x90
	.type	TeX_math_begin0,@function
TeX_math_begin0:                        # @TeX_math_begin0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end509:
	.size	TeX_math_begin0, .Lfunc_end509-TeX_math_begin0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_begin1         # -- Begin function TeX_math_begin1
	.p2align	4, 0x90
	.type	TeX_math_begin1,@function
TeX_math_begin1:                        # @TeX_math_begin1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end510:
	.size	TeX_math_begin1, .Lfunc_end510-TeX_math_begin1
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_begin2         # -- Begin function TeX_math_begin2
	.p2align	4, 0x90
	.type	TeX_math_begin2,@function
TeX_math_begin2:                        # @TeX_math_begin2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	decq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end511:
	.size	TeX_math_begin2, .Lfunc_end511-TeX_math_begin2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_begin3         # -- Begin function TeX_math_begin3
	.p2align	4, 0x90
	.type	TeX_math_begin3,@function
TeX_math_begin3:                        # @TeX_math_begin3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_skip_check
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end512:
	.size	TeX_math_begin3, .Lfunc_end512-TeX_math_begin3
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_begin4         # -- Begin function TeX_math_begin4
	.p2align	4, 0x90
	.type	TeX_math_begin4,@function
TeX_math_begin4:                        # @TeX_math_begin4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end513:
	.size	TeX_math_begin4, .Lfunc_end513-TeX_math_begin4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_skip_check
	.type	TeX_skip_check,@function
TeX_skip_check:                         # @TeX_skip_check
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movl	$222222401, -40(%rbp)   # imm = 0xD3ED841
	movl	$555555734, -36(%rbp)   # imm = 0x211D1B96
	movl	$444444623, -32(%rbp)   # imm = 0x1A7DAFCF
	movl	$222222401, %edi        # imm = 0xD3ED841
	movl	$555555734, %esi        # imm = 0x211D1B96
	movl	$444444623, %edx        # imm = 0x1A7DAFCF
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movq	(%rbx), %rdi
	movl	$.L.str.27.303, %esi
	movl	$3, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.1:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.35.304, %esi
	movl	$6, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.2:                                # %lor.lhs.false3
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.36.305, %esi
	movl	$6, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.3:                                # %lor.lhs.false6
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.37.306, %esi
	movl	$4, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.4:                                # %lor.lhs.false9
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.38.307, %esi
	movl	$3, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.5:                                # %lor.lhs.false12
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32.308, %esi
	movl	$6, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.6:                                # %lor.lhs.false15
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39.309, %esi
	movl	$5, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.7:                                # %lor.lhs.false18
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.40.310, %esi
	movl	$5, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.8:                                # %lor.lhs.false21
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.41.311, %esi
	movl	$6, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.9:                                # %lor.lhs.false24
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.42.312, %esi
	movl	$7, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.10:                               # %lor.lhs.false27
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.43.313, %esi
	movl	$11, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.11:                               # %lor.lhs.false30
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.44.314, %esi
	movl	$13, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.12:                               # %lor.lhs.false33
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.45.315, %esi
	movl	$13, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.13:                               # %lor.lhs.false36
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.46.316, %esi
	movl	$10, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.14:                               # %lor.lhs.false39
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.47.317, %esi
	movl	$9, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.15:                               # %lor.lhs.false42
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.48.318, %esi
	movl	$13, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.16:                               # %lor.lhs.false45
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.49.319, %esi
	movl	$12, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.17:                               # %lor.lhs.false48
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.50.320, %esi
	movl	$7, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.18:                               # %lor.lhs.false51
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.51.321, %esi
	movl	$11, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.19:                               # %lor.lhs.false54
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.52.322, %esi
	movl	$7, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_28
# %bb.20:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.53.323, %esi
	movl	$4, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_36
# %bb.21:                               # %lor.lhs.false63
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.54.324, %esi
	movl	$10, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_36
# %bb.22:                               # %lor.lhs.false67
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.55.325, %esi
	movl	$12, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_36
# %bb.23:                               # %lor.lhs.false71
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.56.326, %esi
	movl	$9, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_36
# %bb.24:                               # %lor.lhs.false75
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.57.327, %esi
	movl	$11, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_36
# %bb.25:                               # %lor.lhs.false79
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.58.328, %esi
	movl	$10, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_36
# %bb.26:                               # %if.else95
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.59.329, %esi
	movl	$4, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB514_38
# %bb.27:                               # %if.else108
	leaq	-24(%rbp), %r14
	jmp	.LBB514_32
.LBB514_31:                             # %while.body117
                                        #   in Loop: Header=BB514_32 Depth=1
	movq	%r14, %rdi
	callq	TeX_skip_check2
.LBB514_32:                             # %while.cond109
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %ecx
	movb	$1, %al
	btl	$10, %ecx
	jb	.LBB514_34
# %bb.33:                               # %lor.rhs
                                        #   in Loop: Header=BB514_32 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$64, (%rax)
	sete	%al
.LBB514_34:                             # %lor.end
                                        #   in Loop: Header=BB514_32 Depth=1
	testb	%al, %al
	jne	.LBB514_31
# %bb.35:                               # %while.end119
	leaq	-24(%rbp), %rdi
	callq	TeX_skip_check3
	jmp	.LBB514_30
.LBB514_36:                             # %if.then83
	movq	-24(%rbp), %rdi
	callq	TeX_skip_parens
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB514_29
# %bb.37:                               # %if.else88
	movq	-24(%rbp), %rax
	addq	$1, (%rax)
.LBB514_28:                             # %if.then
	movq	-24(%rbp), %rdi
	callq	TeX_skip_parens
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB514_30
.LBB514_29:                             # %if.then59
	movb	$114, LaTeX_Mode(%rip)
.LBB514_30:                             # %if.end123
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB514_38:                             # %if.then99
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rbx
	movq	%rbx, %rsi
	callq	TeX_skip_check0
	jmp	.LBB514_41
.LBB514_40:                             # %while.body
                                        #   in Loop: Header=BB514_41 Depth=1
	movq	%rbx, %rdi
	callq	TeX_skip_check1
.LBB514_41:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB514_39
# %bb.42:                               # %land.rhs
                                        #   in Loop: Header=BB514_41 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB514_40
	jmp	.LBB514_30
.LBB514_39:                             #   in Loop: Header=BB514_41 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB514_40
	jmp	.LBB514_30
.Lfunc_end514:
	.size	TeX_skip_check, .Lfunc_end514-TeX_skip_check
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_check0         # -- Begin function TeX_skip_check0
	.p2align	4, 0x90
	.type	TeX_skip_check0,@function
TeX_skip_check0:                        # @TeX_skip_check0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	(%rax), %rcx
	movsbl	4(%rcx), %ecx
	movl	%ecx, -28(%rsp)
	addq	$5, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end515:
	.size	TeX_skip_check0, .Lfunc_end515-TeX_skip_check0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_check1         # -- Begin function TeX_skip_check1
	.p2align	4, 0x90
	.type	TeX_skip_check1,@function
TeX_skip_check1:                        # @TeX_skip_check1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end516:
	.size	TeX_skip_check1, .Lfunc_end516-TeX_skip_check1
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_check2         # -- Begin function TeX_skip_check2
	.p2align	4, 0x90
	.type	TeX_skip_check2,@function
TeX_skip_check2:                        # @TeX_skip_check2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end517:
	.size	TeX_skip_check2, .Lfunc_end517-TeX_skip_check2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_check3         # -- Begin function TeX_skip_check3
	.p2align	4, 0x90
	.type	TeX_skip_check3,@function
TeX_skip_check3:                        # @TeX_skip_check3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	decq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end518:
	.size	TeX_skip_check3, .Lfunc_end518-TeX_skip_check3
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_parens0        # -- Begin function TeX_skip_parens0
	.p2align	4, 0x90
	.type	TeX_skip_parens0,@function
TeX_skip_parens0:                       # @TeX_skip_parens0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end519:
	.size	TeX_skip_parens0, .Lfunc_end519-TeX_skip_parens0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_strncmp0            # -- Begin function TeX_strncmp0
	.p2align	4, 0x90
	.type	TeX_strncmp0,@function
TeX_strncmp0:                           # @TeX_strncmp0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end520:
	.size	TeX_strncmp0, .Lfunc_end520-TeX_strncmp0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_end0           # -- Begin function TeX_math_end0
	.p2align	4, 0x90
	.type	TeX_math_end0,@function
TeX_math_end0:                          # @TeX_math_end0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end521:
	.size	TeX_math_end0, .Lfunc_end521-TeX_math_end0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_end1           # -- Begin function TeX_math_end1
	.p2align	4, 0x90
	.type	TeX_math_end1,@function
TeX_math_end1:                          # @TeX_math_end1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	math_mode(%rip), %eax
	movl	%eax, save_math_mode(%rip)
	movb	LaTeX_Mode(%rip), %al
	movb	%al, save_LaTeX_Mode(%rip)
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	movl	$1, TeX_comment(%rip)
	retq
.Lfunc_end522:
	.size	TeX_math_end1, .Lfunc_end522-TeX_math_end1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_LR_begin
	.type	TeX_LR_begin,@function
TeX_LR_begin:                           # @TeX_LR_begin
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222403, -44(%rbp)   # imm = 0xD3ED843
	movl	$555555736, -40(%rbp)   # imm = 0x211D1B98
	movl	$444444625, -36(%rbp)   # imm = 0x1A7DAFD1
	movl	$222222403, %edi        # imm = 0xD3ED843
	movl	$555555736, %esi        # imm = 0x211D1B98
	movl	$444444625, %edx        # imm = 0x1A7DAFD1
	callq	guardMe
	movl	$222222402, -32(%rbp)   # imm = 0xD3ED842
	movl	$555555735, -28(%rbp)   # imm = 0x211D1B97
	movl	$444444624, -24(%rbp)   # imm = 0x1A7DAFD0
	movl	$222222402, %edi        # imm = 0xD3ED842
	movl	$555555735, %esi        # imm = 0x211D1B97
	movl	$444444624, %edx        # imm = 0x1A7DAFD0
	callq	guardMe
	movq	%rbx, -16(%rbp)
	movq	(%rbx), %rdi
	movl	$.L.str.28.330, %esi
	movl	$4, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_4
# %bb.1:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.29.331, %esi
	movl	$7, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_4
# %bb.2:                                # %lor.lhs.false3
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.30.332, %esi
	movl	$4, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_4
# %bb.3:                                # %lor.lhs.false6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.31.333, %esi
	movl	$8, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_4
# %bb.5:                                # %if.else
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.32.308, %esi
	movl	$6, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_7
# %bb.6:                                # %lor.lhs.false11
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.33.334, %esi
	movl	$8, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_7
# %bb.9:                                # %if.else18
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.34.302, %esi
	movl	$5, %edx
	callq	TeX_strncmp
	testl	%eax, %eax
	je	.LBB523_10
# %bb.11:                               # %if.else23
	movl	$0, -20(%rbp)
	jmp	.LBB523_14
.LBB523_4:                              # %if.then
	callq	TeX_LR_begin0
.LBB523_13:                             # %if.end25
	leaq	-16(%rbp), %rdi
	callq	TeX_LR_begin2
	movl	$1, -20(%rbp)
.LBB523_14:                             # %return
	movl	-20(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB523_7:                              # %if.then14
	addl	$2, math_mode(%rip)
	movq	-16(%rbp), %rdi
	callq	TeX_open_paren
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB523_12
# %bb.8:                                # %if.then16
	leaq	-16(%rbp), %rdi
	callq	TeX_LR_begin1
	jmp	.LBB523_13
.LBB523_12:                             # %if.else17
	movb	$114, LaTeX_Mode(%rip)
	jmp	.LBB523_13
.LBB523_10:                             # %if.then21
	movq	-16(%rbp), %rsi
	movl	$1, %edi
	callq	TeX_LR_check
	movl	%eax, -20(%rbp)
	jmp	.LBB523_14
.Lfunc_end523:
	.size	TeX_LR_begin, .Lfunc_end523-TeX_LR_begin
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_end2           # -- Begin function TeX_math_end2
	.p2align	4, 0x90
	.type	TeX_math_end2,@function
TeX_math_end2:                          # @TeX_math_end2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rsi
	movq	%rsi, 16(%rsp)
	movl	$101, %edi
	callq	TeX_math_check
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end524:
	.size	TeX_math_end2, .Lfunc_end524-TeX_math_end2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_begin0           # -- Begin function TeX_LR_begin0
	.p2align	4, 0x90
	.type	TeX_LR_begin0,@function
TeX_LR_begin0:                          # @TeX_LR_begin0
	.cfi_startproc
# %bb.0:                                # %entry
	addl	$2, math_mode(%rip)
	retq
.Lfunc_end525:
	.size	TeX_LR_begin0, .Lfunc_end525-TeX_LR_begin0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_open_paren
	.type	TeX_open_paren,@function
TeX_open_paren:                         # @TeX_open_paren
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222404, -28(%rbp)   # imm = 0xD3ED844
	movl	$555555737, -24(%rbp)   # imm = 0x211D1B99
	movl	$444444626, -20(%rbp)   # imm = 0x1A7DAFD2
	movl	$222222404, %edi        # imm = 0xD3ED844
	movl	$555555737, %esi        # imm = 0x211D1B99
	movl	$444444626, %edx        # imm = 0x1A7DAFD2
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-16(%rbp), %rbx
	jmp	.LBB526_2
	.p2align	4, 0x90
.LBB526_1:                              # %while.body
                                        #   in Loop: Header=BB526_2 Depth=1
	movq	%rbx, %rdi
	callq	TeX_open_paren0
.LBB526_2:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB526_6
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB526_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+57(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB526_6
# %bb.4:                                # %land.rhs
                                        #   in Loop: Header=BB526_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movsbl	hashheader+62(%rip), %ecx
	cmpl	%ecx, %eax
	setne	%al
	testb	%al, %al
	jne	.LBB526_1
	jmp	.LBB526_7
	.p2align	4, 0x90
.LBB526_6:                              #   in Loop: Header=BB526_2 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB526_1
.LBB526_7:                              # %while.end
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end526:
	.size	TeX_open_paren, .Lfunc_end526-TeX_open_paren
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_begin1           # -- Begin function TeX_LR_begin1
	.p2align	4, 0x90
	.type	TeX_LR_begin1,@function
TeX_LR_begin1:                          # @TeX_LR_begin1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end527:
	.size	TeX_LR_begin1, .Lfunc_end527-TeX_LR_begin1
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_begin2           # -- Begin function TeX_LR_begin2
	.p2align	4, 0x90
	.type	TeX_LR_begin2,@function
TeX_LR_begin2:                          # @TeX_LR_begin2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_open_paren
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end528:
	.size	TeX_LR_begin2, .Lfunc_end528-TeX_LR_begin2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_open_paren0         # -- Begin function TeX_open_paren0
	.p2align	4, 0x90
	.type	TeX_open_paren0,@function
TeX_open_paren0:                        # @TeX_open_paren0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end529:
	.size	TeX_open_paren0, .Lfunc_end529-TeX_open_paren0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_check0           # -- Begin function TeX_LR_check0
	.p2align	4, 0x90
	.type	TeX_LR_check0,@function
TeX_LR_check0:                          # @TeX_LR_check0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movb	$109, LaTeX_Mode(%rip)
	movl	$0, -12(%rsp)
	movl	$0, (%rdi)
	retq
.Lfunc_end530:
	.size	TeX_LR_check0, .Lfunc_end530-TeX_LR_check0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_check1           # -- Begin function TeX_LR_check1
	.p2align	4, 0x90
	.type	TeX_LR_check1,@function
TeX_LR_check1:                          # @TeX_LR_check1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end531:
	.size	TeX_LR_check1, .Lfunc_end531-TeX_LR_check1
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_check2           # -- Begin function TeX_LR_check2
	.p2align	4, 0x90
	.type	TeX_LR_check2,@function
TeX_LR_check2:                          # @TeX_LR_check2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_skip_parens
	movl	math_mode(%rip), %eax
	leal	2(%rax), %ecx
	andl	$127, %ecx
	shll	$7, %ecx
	leal	-126(%rax,%rcx), %eax
	movl	%eax, math_mode(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end532:
	.size	TeX_LR_check2, .Lfunc_end532-TeX_LR_check2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_check3           # -- Begin function TeX_LR_check3
	.p2align	4, 0x90
	.type	TeX_LR_check3,@function
TeX_LR_check3:                          # @TeX_LR_check3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.26.336, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, math_mode(%rip)
	popq	%rax
	retq
.Lfunc_end533:
	.size	TeX_LR_check3, .Lfunc_end533-TeX_LR_check3
	.cfi_endproc
                                        # -- End function
	.globl	TeX_LR_check4           # -- Begin function TeX_LR_check4
	.p2align	4, 0x90
	.type	TeX_LR_check4,@function
TeX_LR_check4:                          # @TeX_LR_check4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	decq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end534:
	.size	TeX_LR_check4, .Lfunc_end534-TeX_LR_check4
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_check0         # -- Begin function TeX_math_check0
	.p2align	4, 0x90
	.type	TeX_math_check0,@function
TeX_math_check0:                        # @TeX_math_check0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movb	%al, LaTeX_Mode(%rip)
	movl	$0, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end535:
	.size	TeX_math_check0, .Lfunc_end535-TeX_math_check0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_check1         # -- Begin function TeX_math_check1
	.p2align	4, 0x90
	.type	TeX_math_check1,@function
TeX_math_check1:                        # @TeX_math_check1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	(%rax)
	movq	8(%rsp), %rdi
	callq	TeX_skip_parens
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end536:
	.size	TeX_math_check1, .Lfunc_end536-TeX_math_check1
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_check2         # -- Begin function TeX_math_check2
	.p2align	4, 0x90
	.type	TeX_math_check2,@function
TeX_math_check2:                        # @TeX_math_check2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_skip_args
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end537:
	.size	TeX_math_check2, .Lfunc_end537-TeX_math_check2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_math_check3         # -- Begin function TeX_math_check3
	.p2align	4, 0x90
	.type	TeX_math_check3,@function
TeX_math_check3:                        # @TeX_math_check3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_skip_parens
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end538:
	.size	TeX_math_check3, .Lfunc_end538-TeX_math_check3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function TeX_skip_args
	.type	TeX_skip_args,@function
TeX_skip_args:                          # @TeX_skip_args
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222409, -84(%rbp)   # imm = 0xD3ED849
	movl	$555555742, -80(%rbp)   # imm = 0x211D1B9E
	movl	$444444631, -76(%rbp)   # imm = 0x1A7DAFD7
	movl	$222222409, %edi        # imm = 0xD3ED849
	movl	$555555742, %esi        # imm = 0x211D1B9E
	movl	$444444631, %edx        # imm = 0x1A7DAFD7
	callq	guardMe
	movl	$222222408, -72(%rbp)   # imm = 0xD3ED848
	movl	$555555741, -68(%rbp)   # imm = 0x211D1B9D
	movl	$444444630, -64(%rbp)   # imm = 0x1A7DAFD6
	movl	$222222408, %edi        # imm = 0xD3ED848
	movl	$555555741, %esi        # imm = 0x211D1B9D
	movl	$444444630, %edx        # imm = 0x1A7DAFD6
	callq	guardMe
	movl	$222222407, -60(%rbp)   # imm = 0xD3ED847
	movl	$555555740, -56(%rbp)   # imm = 0x211D1B9C
	movl	$444444629, -52(%rbp)   # imm = 0x1A7DAFD5
	movl	$222222407, %edi        # imm = 0xD3ED847
	movl	$555555740, %esi        # imm = 0x211D1B9C
	movl	$444444629, %edx        # imm = 0x1A7DAFD5
	callq	guardMe
	movl	$222222406, -48(%rbp)   # imm = 0xD3ED846
	movl	$555555739, -44(%rbp)   # imm = 0x211D1B9B
	movl	$444444628, -40(%rbp)   # imm = 0x1A7DAFD4
	movl	$222222406, %edi        # imm = 0xD3ED846
	movl	$555555739, %esi        # imm = 0x211D1B9B
	movl	$444444628, %edx        # imm = 0x1A7DAFD4
	callq	guardMe
	movl	$222222405, -36(%rbp)   # imm = 0xD3ED845
	movl	$555555738, -32(%rbp)   # imm = 0x211D1B9A
	movl	$444444627, -28(%rbp)   # imm = 0x1A7DAFD3
	movl	$222222405, %edi        # imm = 0xD3ED845
	movl	$555555738, %esi        # imm = 0x211D1B9A
	movl	$444444627, %edx        # imm = 0x1A7DAFD3
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	(%rbx), %rdi
	movl	$.L.str.23.342, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB539_2
# %bb.1:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.24.335, %esi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB539_3
.LBB539_2:                              # %if.then
	addl	$1, -12(%rbp)
.LBB539_3:                              # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.25.343, %esi
	movl	$8, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB539_5
# %bb.4:                                # %if.then5
	addl	$1, -12(%rbp)
.LBB539_5:                              # %if.end7
	movq	-24(%rbp), %rdi
	callq	TeX_skip_parens
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB539_10
# %bb.6:                                # %if.end9
	leaq	-24(%rbp), %rdi
	callq	TeX_skip_args0
	movl	-12(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	testl	%eax, %eax
	je	.LBB539_10
# %bb.7:                                # %if.end13
	leaq	-24(%rbp), %rdi
	callq	TeX_skip_args1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB539_10
# %bb.8:                                # %if.end18
	leaq	-24(%rbp), %rdi
	callq	TeX_skip_args2
	cmpl	$0, -12(%rbp)
	je	.LBB539_10
# %bb.9:                                # %if.then20
	leaq	-24(%rbp), %rdi
	callq	TeX_skip_args3
.LBB539_10:                             # %if.end21
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end539:
	.size	TeX_skip_args, .Lfunc_end539-TeX_skip_args
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_args0          # -- Begin function TeX_skip_args0
	.p2align	4, 0x90
	.type	TeX_skip_args0,@function
TeX_skip_args0:                         # @TeX_skip_args0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end540:
	.size	TeX_skip_args0, .Lfunc_end540-TeX_skip_args0
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_args1          # -- Begin function TeX_skip_args1
	.p2align	4, 0x90
	.type	TeX_skip_args1,@function
TeX_skip_args1:                         # @TeX_skip_args1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_skip_parens
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end541:
	.size	TeX_skip_args1, .Lfunc_end541-TeX_skip_args1
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_args2          # -- Begin function TeX_skip_args2
	.p2align	4, 0x90
	.type	TeX_skip_args2,@function
TeX_skip_args2:                         # @TeX_skip_args2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end542:
	.size	TeX_skip_args2, .Lfunc_end542-TeX_skip_args2
	.cfi_endproc
                                        # -- End function
	.globl	TeX_skip_args3          # -- Begin function TeX_skip_args3
	.p2align	4, 0x90
	.type	TeX_skip_args3,@function
TeX_skip_args3:                         # @TeX_skip_args3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	TeX_skip_parens
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end543:
	.size	TeX_skip_args3, .Lfunc_end543-TeX_skip_args3
	.cfi_endproc
                                        # -- End function
	.globl	copyout0                # -- Begin function copyout0
	.p2align	4, 0x90
	.type	copyout0,@function
copyout0:                               # @copyout0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	(%rax), %rax
	movsbl	(%rax), %edi
	movq	outfile(%rip), %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end544:
	.size	copyout0, .Lfunc_end544-copyout0
	.cfi_endproc
                                        # -- End function
	.globl	copyout1                # -- Begin function copyout1
	.p2align	4, 0x90
	.type	copyout1,@function
copyout1:                               # @copyout1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	incq	(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end545:
	.size	copyout1, .Lfunc_end545-copyout1
	.cfi_endproc
                                        # -- End function
	.globl	dumpmode                # -- Begin function dumpmode
	.p2align	4, 0x90
	.type	dumpmode,@function
dumpmode:                               # @dumpmode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movb	hashheader+68(%rip), %bl
	movl	$222222411, -32(%rbp)   # imm = 0xD3ED84B
	movl	$555555744, -28(%rbp)   # imm = 0x211D1BA0
	movl	$444444633, -24(%rbp)   # imm = 0x1A7DAFD9
	movl	$222222411, %edi        # imm = 0xD3ED84B
	movl	$555555744, %esi        # imm = 0x211D1BA0
	movl	$444444633, %edx        # imm = 0x1A7DAFD9
	callq	guardMe
	movl	$222222410, -20(%rbp)   # imm = 0xD3ED84A
	movl	$555555743, -16(%rbp)   # imm = 0x211D1B9F
	movl	$444444632, -12(%rbp)   # imm = 0x1A7DAFD8
	movl	$222222410, %edi        # imm = 0xD3ED84A
	movl	$555555743, %esi        # imm = 0x211D1B9F
	movl	$444444632, %edx        # imm = 0x1A7DAFD8
	callq	guardMe
	cmpb	$92, %bl
	je	.LBB546_7
# %bb.1:                                # %lor.lhs.false
	cmpb	$35, hashheader+68(%rip)
	je	.LBB546_7
# %bb.2:                                # %lor.lhs.false5
	cmpb	$62, hashheader+68(%rip)
	je	.LBB546_7
# %bb.3:                                # %lor.lhs.false9
	cmpb	$58, hashheader+68(%rip)
	je	.LBB546_7
# %bb.4:                                # %lor.lhs.false13
	cmpb	$45, hashheader+68(%rip)
	je	.LBB546_7
# %bb.5:                                # %lor.lhs.false17
	cmpb	$44, hashheader+68(%rip)
	je	.LBB546_7
# %bb.6:                                # %lor.lhs.false21
	cmpb	$91, hashheader+68(%rip)
	jne	.LBB546_8
.LBB546_7:                              # %if.then
	callq	dumpmode0
	cmpl	$0, numpflags(%rip)
	je	.LBB546_14
.LBB546_13:                             # %if.then40
	callq	dumpmode3
.LBB546_14:                             # %if.end42
	cmpl	$0, numsflags(%rip)
	je	.LBB546_16
# %bb.15:                               # %if.then44
	callq	dumpmode4
.LBB546_16:                             # %if.end46
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB546_8:                              # %if.else
	movsbl	hashheader+68(%rip), %eax
	cmpl	$32, %eax
	jl	.LBB546_10
# %bb.9:                                # %lor.lhs.false29
	movsbl	hashheader+68(%rip), %eax
	cmpl	$127, %eax
	jl	.LBB546_11
.LBB546_10:                             # %if.then33
	callq	dumpmode1
	cmpl	$0, numpflags(%rip)
	jne	.LBB546_13
	jmp	.LBB546_14
.LBB546_11:                             # %if.else36
	callq	dumpmode2
	cmpl	$0, numpflags(%rip)
	jne	.LBB546_13
	jmp	.LBB546_14
.Lfunc_end546:
	.size	dumpmode, .Lfunc_end546-dumpmode
	.cfi_endproc
                                        # -- End function
	.globl	dumpmode0               # -- Begin function dumpmode0
	.p2align	4, 0x90
	.type	dumpmode0,@function
dumpmode0:                              # @dumpmode0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movsbl	hashheader+68(%rip), %esi
	movl	$.L.str.346, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end547:
	.size	dumpmode0, .Lfunc_end547-dumpmode0
	.cfi_endproc
                                        # -- End function
	.globl	dumpmode1               # -- Begin function dumpmode1
	.p2align	4, 0x90
	.type	dumpmode1,@function
dumpmode1:                              # @dumpmode1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movzbl	hashheader+68(%rip), %esi
	movl	$.L.str.1.347, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end548:
	.size	dumpmode1, .Lfunc_end548-dumpmode1
	.cfi_endproc
                                        # -- End function
	.globl	dumpmode2               # -- Begin function dumpmode2
	.p2align	4, 0x90
	.type	dumpmode2,@function
dumpmode2:                              # @dumpmode2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movsbl	hashheader+68(%rip), %esi
	movl	$.L.str.2.348, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end549:
	.size	dumpmode2, .Lfunc_end549-dumpmode2
	.cfi_endproc
                                        # -- End function
	.globl	dumpmode3               # -- Begin function dumpmode3
	.p2align	4, 0x90
	.type	dumpmode3,@function
dumpmode3:                              # @dumpmode3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.3.349, %edi
	xorl	%eax, %eax
	callq	printf
	movq	pflaglist(%rip), %rdi
	movl	numpflags(%rip), %esi
	callq	tbldump
	popq	%rax
	retq
.Lfunc_end550:
	.size	dumpmode3, .Lfunc_end550-dumpmode3
	.cfi_endproc
                                        # -- End function
	.globl	dumpmode4               # -- Begin function dumpmode4
	.p2align	4, 0x90
	.type	dumpmode4,@function
dumpmode4:                              # @dumpmode4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.4.350, %edi
	xorl	%eax, %eax
	callq	printf
	movq	sflaglist(%rip), %rdi
	movl	numsflags(%rip), %esi
	callq	tbldump
	popq	%rax
	retq
.Lfunc_end551:
	.size	dumpmode4, .Lfunc_end551-dumpmode4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tbldump
	.type	tbldump,@function
tbldump:                                # @tbldump
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222413, -56(%rbp)   # imm = 0xD3ED84D
	movl	$555555746, -52(%rbp)   # imm = 0x211D1BA2
	movl	$444444635, -48(%rbp)   # imm = 0x1A7DAFDB
	movl	$222222413, %edi        # imm = 0xD3ED84D
	movl	$555555746, %esi        # imm = 0x211D1BA2
	movl	$444444635, %edx        # imm = 0x1A7DAFDB
	callq	guardMe
	movl	$222222412, -44(%rbp)   # imm = 0xD3ED84C
	movl	$555555745, -40(%rbp)   # imm = 0x211D1BA1
	movl	$444444634, -36(%rbp)   # imm = 0x1A7DAFDA
	movl	$222222412, %edi        # imm = 0xD3ED84C
	movl	$555555745, %esi        # imm = 0x211D1BA1
	movl	$444444634, %edx        # imm = 0x1A7DAFDA
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movl	%r14d, -20(%rbp)
	leaq	-32(%rbp), %rbx
	addl	$-1, -20(%rbp)
	js	.LBB552_3
	.p2align	4, 0x90
.LBB552_2:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	tbldump0
	addl	$-1, -20(%rbp)
	jns	.LBB552_2
.LBB552_3:                              # %while.end
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end552:
	.size	tbldump, .Lfunc_end552-tbldump
	.cfi_endproc
                                        # -- End function
	.globl	tbldump0                # -- Begin function tbldump0
	.p2align	4, 0x90
	.type	tbldump0,@function
tbldump0:                               # @tbldump0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	leaq	256(%rdi), %rax
	movq	%rax, 8(%rsp)
	callq	entdump
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end553:
	.size	tbldump0, .Lfunc_end553-tbldump0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function entdump
	.type	entdump,@function
entdump:                                # @entdump
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222414, -36(%rbp)   # imm = 0xD3ED84E
	movl	$555555747, -32(%rbp)   # imm = 0x211D1BA3
	movl	$444444636, -28(%rbp)   # imm = 0x1A7DAFDC
	movl	$222222414, %edi        # imm = 0xD3ED84E
	movl	$555555747, %esi        # imm = 0x211D1BA3
	movl	$444444636, %edx        # imm = 0x1A7DAFDC
	callq	guardMe
	movq	%rbx, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	entdump0
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rbx
	jmp	.LBB554_1
	.p2align	4, 0x90
.LBB554_4:                              # %for.inc
                                        #   in Loop: Header=BB554_1 Depth=1
	movq	%rbx, %rdi
	callq	entdump2
.LBB554_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movswl	22(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.LBB554_5
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB554_1 Depth=1
	movq	-24(%rbp), %rdi
	addq	$26, %rdi
	movzbl	-12(%rbp), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	callq	setdump
	movq	-24(%rbp), %rax
	movswl	22(%rax), %eax
	addl	$-1, %eax
	cmpl	%eax, -12(%rbp)
	jge	.LBB554_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB554_1 Depth=1
	callq	entdump1
	jmp	.LBB554_4
.LBB554_5:                              # %for.end
	cmpl	$0, -12(%rbp)
	jne	.LBB554_7
# %bb.6:                                # %if.then12
	callq	entdump3
.LBB554_7:                              # %if.end14
	movl	$.L.str.8.354, %edi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rsi
	movl	$9, %edi
	callq	_IO_putc
	movq	-24(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB554_9
# %bb.8:                                # %if.then18
	leaq	-24(%rbp), %rdi
	callq	entdump4
.LBB554_9:                              # %if.end21
	movq	-24(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB554_10
# %bb.11:                               # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rsi
	jmp	.LBB554_12
.LBB554_10:
	movl	$.L.str.11.356, %esi
.LBB554_12:                             # %cond.end
	movl	$.L.str.10.357, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end554:
	.size	entdump, .Lfunc_end554-entdump
	.cfi_endproc
                                        # -- End function
	.globl	entdump0                # -- Begin function entdump0
	.p2align	4, 0x90
	.type	entdump0,@function
entdump0:                               # @entdump0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movzwl	24(%rax), %ecx
	movl	$.L.str.6.351, %edx
	movl	$.L.str.7.352, %esi
	testb	$1, %cl
	cmovneq	%rdx, %rsi
	movswl	16(%rax), %edx
	addl	$65, %edx
	movl	$.L.str.5.353, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end555:
	.size	entdump0, .Lfunc_end555-entdump0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function setdump
	.type	setdump,@function
setdump:                                # @setdump
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222417, -84(%rbp)   # imm = 0xD3ED851
	movl	$555555750, -80(%rbp)   # imm = 0x211D1BA6
	movl	$444444639, -76(%rbp)   # imm = 0x1A7DAFDF
	movl	$222222417, %edi        # imm = 0xD3ED851
	movl	$555555750, %esi        # imm = 0x211D1BA6
	movl	$444444639, %edx        # imm = 0x1A7DAFDF
	callq	guardMe
	movl	$222222416, -72(%rbp)   # imm = 0xD3ED850
	movl	$555555749, -68(%rbp)   # imm = 0x211D1BA5
	movl	$444444638, -64(%rbp)   # imm = 0x1A7DAFDE
	movl	$222222416, %edi        # imm = 0xD3ED850
	movl	$555555749, %esi        # imm = 0x211D1BA5
	movl	$444444638, %edx        # imm = 0x1A7DAFDE
	callq	guardMe
	movl	$222222415, -60(%rbp)   # imm = 0xD3ED84F
	movl	$555555748, -56(%rbp)   # imm = 0x211D1BA4
	movl	$444444637, -52(%rbp)   # imm = 0x1A7DAFDD
	movl	$222222415, %edi        # imm = 0xD3ED84F
	movl	$555555748, %esi        # imm = 0x211D1BA4
	movl	$444444637, %edx        # imm = 0x1A7DAFDD
	callq	guardMe
	movq	%rbx, -48(%rbp)
	movl	%r14d, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -40(%rbp)
	movl	$128, -32(%rbp)
	leaq	-40(%rbp), %r14
	leaq	-32(%rbp), %r15
	leaq	-28(%rbp), %rbx
	jmp	.LBB556_1
	.p2align	4, 0x90
.LBB556_3:                              # %if.then
                                        #   in Loop: Header=BB556_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	setdump0
.LBB556_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	addl	$-1, -32(%rbp)
	js	.LBB556_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB556_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %eax
	testl	%eax, -36(%rbp)
	je	.LBB556_1
	jmp	.LBB556_3
.LBB556_4:                              # %for.end
	cmpl	$1, -28(%rbp)
	jne	.LBB556_6
# %bb.5:                                # %if.then3
	leaq	-40(%rbp), %rdi
	callq	setdump1
	jmp	.LBB556_11
.LBB556_6:                              # %if.else
	cmpl	$128, -28(%rbp)
	jne	.LBB556_8
# %bb.7:                                # %if.then6
	callq	setdump2
	jmp	.LBB556_11
.LBB556_8:                              # %if.else8
	cmpl	$65, -28(%rbp)
	jl	.LBB556_10
# %bb.9:                                # %if.then11
	leaq	-36(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	setdump3
	jmp	.LBB556_11
.LBB556_10:                             # %if.else14
	leaq	-36(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	setdump4
.LBB556_11:                             # %if.end19
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end556:
	.size	setdump, .Lfunc_end556-setdump
	.cfi_endproc
                                        # -- End function
	.globl	entdump1                # -- Begin function entdump1
	.p2align	4, 0x90
	.type	entdump1,@function
entdump1:                               # @entdump1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rsi
	movl	$32, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end557:
	.size	entdump1, .Lfunc_end557-entdump1
	.cfi_endproc
                                        # -- End function
	.globl	entdump2                # -- Begin function entdump2
	.p2align	4, 0x90
	.type	entdump2,@function
entdump2:                               # @entdump2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end558:
	.size	entdump2, .Lfunc_end558-entdump2
	.cfi_endproc
                                        # -- End function
	.globl	entdump3                # -- Begin function entdump3
	.p2align	4, 0x90
	.type	entdump3,@function
entdump3:                               # @entdump3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rsi
	movl	$46, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end559:
	.size	entdump3, .Lfunc_end559-entdump3
	.cfi_endproc
                                        # -- End function
	.globl	entdump4                # -- Begin function entdump4
	.p2align	4, 0x90
	.type	entdump4,@function
entdump4:                               # @entdump4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	(%rax), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rcx
	movl	$.L.str.9.355, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end560:
	.size	entdump4, .Lfunc_end560-entdump4
	.cfi_endproc
                                        # -- End function
	.globl	setdump0                # -- Begin function setdump0
	.p2align	4, 0x90
	.type	setdump0,@function
setdump0:                               # @setdump0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -36(%rsp)
	movq	%rdx, -8(%rsp)
	movl	(%rdx), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	movl	%eax, -40(%rsp)
	movl	%ecx, (%rdx)
	movq	-32(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end561:
	.size	setdump0, .Lfunc_end561-setdump0
	.cfi_endproc
                                        # -- End function
	.globl	setdump1                # -- Begin function setdump1
	.p2align	4, 0x90
	.type	setdump1,@function
setdump1:                               # @setdump1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	movq	stdout(%rip), %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end562:
	.size	setdump1, .Lfunc_end562-setdump1
	.cfi_endproc
                                        # -- End function
	.globl	setdump2                # -- Begin function setdump2
	.p2align	4, 0x90
	.type	setdump2,@function
setdump2:                               # @setdump2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rsi
	movl	$46, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end563:
	.size	setdump2, .Lfunc_end563-setdump2
	.cfi_endproc
                                        # -- End function
	.globl	setdump3                # -- Begin function setdump3
	.p2align	4, 0x90
	.type	setdump3,@function
setdump3:                               # @setdump3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movl	$.L.str.12.358, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rdi
	movl	12(%rsp), %esi
	xorl	%edx, %edx
	callq	subsetdump
	movq	stdout(%rip), %rsi
	movl	$93, %edi
	callq	_IO_putc
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end564:
	.size	setdump3, .Lfunc_end564-setdump3
	.cfi_endproc
                                        # -- End function
	.globl	setdump4                # -- Begin function setdump4
	.p2align	4, 0x90
	.type	setdump4,@function
setdump4:                               # @setdump4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	stdout(%rip), %rsi
	movl	$91, %edi
	callq	_IO_putc
	movq	16(%rsp), %rdi
	movl	12(%rsp), %esi
	movl	%esi, %edx
	callq	subsetdump
	movq	stdout(%rip), %rsi
	movl	$93, %edi
	callq	_IO_putc
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end565:
	.size	setdump4, .Lfunc_end565-setdump4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function subsetdump
	.type	subsetdump,@function
subsetdump:                             # @subsetdump
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$222222421, -96(%rbp)   # imm = 0xD3ED855
	movl	$555555754, -92(%rbp)   # imm = 0x211D1BAA
	movl	$444444643, -88(%rbp)   # imm = 0x1A7DAFE3
	movl	$222222421, %edi        # imm = 0xD3ED855
	movl	$555555754, %esi        # imm = 0x211D1BAA
	movl	$444444643, %edx        # imm = 0x1A7DAFE3
	callq	guardMe
	movl	$222222420, -84(%rbp)   # imm = 0xD3ED854
	movl	$555555753, -80(%rbp)   # imm = 0x211D1BA9
	movl	$444444642, -76(%rbp)   # imm = 0x1A7DAFE2
	movl	$222222420, %edi        # imm = 0xD3ED854
	movl	$555555753, %esi        # imm = 0x211D1BA9
	movl	$444444642, %edx        # imm = 0x1A7DAFE2
	callq	guardMe
	movl	$222222419, -72(%rbp)   # imm = 0xD3ED853
	movl	$555555752, -68(%rbp)   # imm = 0x211D1BA8
	movl	$444444641, -64(%rbp)   # imm = 0x1A7DAFE1
	movl	$222222419, %edi        # imm = 0xD3ED853
	movl	$555555752, %esi        # imm = 0x211D1BA8
	movl	$444444641, %edx        # imm = 0x1A7DAFE1
	callq	guardMe
	movl	$222222418, -60(%rbp)   # imm = 0xD3ED852
	movl	$555555751, -56(%rbp)   # imm = 0x211D1BA7
	movl	$444444640, -52(%rbp)   # imm = 0x1A7DAFE0
	movl	$222222418, %edi        # imm = 0xD3ED852
	movl	$555555751, %esi        # imm = 0x211D1BA7
	movl	$444444640, %edx        # imm = 0x1A7DAFE0
	callq	guardMe
	movq	%rbx, -48(%rbp)
	movl	%r15d, -40(%rbp)
	movl	%r14d, -36(%rbp)
	movl	$0, -28(%rbp)
	leaq	-32(%rbp), %r14
	leaq	-28(%rbp), %rbx
	leaq	-48(%rbp), %r15
	cmpl	$127, -28(%rbp)
	jle	.LBB566_2
	jmp	.LBB566_14
	.p2align	4, 0x90
.LBB566_13:                             # %for.inc27
                                        #   in Loop: Header=BB566_2 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	subsetdump5
	cmpl	$127, -28(%rbp)
	jg	.LBB566_14
.LBB566_2:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB566_5 Depth 2
                                        #     Child Loop BB566_10 Depth 2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	xorl	-36(%rbp), %eax
	testl	%eax, -40(%rbp)
	jne	.LBB566_13
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB566_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	subsetdump0
	cmpl	$127, -28(%rbp)
	jle	.LBB566_5
	jmp	.LBB566_7
	.p2align	4, 0x90
.LBB566_6:                              # %for.inc
                                        #   in Loop: Header=BB566_5 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	subsetdump1
	cmpl	$127, -28(%rbp)
	jg	.LBB566_7
.LBB566_5:                              # %for.body6
                                        #   Parent Loop BB566_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	xorl	-36(%rbp), %eax
	testl	%eax, -40(%rbp)
	je	.LBB566_6
.LBB566_7:                              # %for.end
                                        #   in Loop: Header=BB566_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jne	.LBB566_9
# %bb.8:                                # %if.then13
                                        #   in Loop: Header=BB566_2 Depth=1
	movq	%r14, %rdi
	callq	subsetdump2
	jmp	.LBB566_13
.LBB566_9:                              # %if.else
                                        #   in Loop: Header=BB566_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$3, %eax
	cmpl	%eax, -28(%rbp)
	jle	.LBB566_10
# %bb.12:                               # %if.else22
                                        #   in Loop: Header=BB566_2 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	subsetdump4
	jmp	.LBB566_13
	.p2align	4, 0x90
.LBB566_11:                             # %while.body
                                        #   in Loop: Header=BB566_10 Depth=2
	movq	%r14, %rdi
	callq	subsetdump3
.LBB566_10:                             # %while.cond
                                        #   Parent Loop BB566_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB566_11
	jmp	.LBB566_13
.LBB566_14:                             # %for.end30
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end566:
	.size	subsetdump, .Lfunc_end566-subsetdump
	.cfi_endproc
                                        # -- End function
	.globl	subsetdump0             # -- Begin function subsetdump0
	.p2align	4, 0x90
	.type	subsetdump0,@function
subsetdump0:                            # @subsetdump0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end567:
	.size	subsetdump0, .Lfunc_end567-subsetdump0
	.cfi_endproc
                                        # -- End function
	.globl	subsetdump1             # -- Begin function subsetdump1
	.p2align	4, 0x90
	.type	subsetdump1,@function
subsetdump1:                            # @subsetdump1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	incq	%rcx
	movq	%rcx, -16(%rsp)
	incl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end568:
	.size	subsetdump1, .Lfunc_end568-subsetdump1
	.cfi_endproc
                                        # -- End function
	.globl	subsetdump2             # -- Begin function subsetdump2
	.p2align	4, 0x90
	.type	subsetdump2,@function
subsetdump2:                            # @subsetdump2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	movq	stdout(%rip), %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end569:
	.size	subsetdump2, .Lfunc_end569-subsetdump2
	.cfi_endproc
                                        # -- End function
	.globl	subsetdump3             # -- Begin function subsetdump3
	.p2align	4, 0x90
	.type	subsetdump3,@function
subsetdump3:                            # @subsetdump3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	movq	stdout(%rip), %rsi
	callq	_IO_putc
	movl	12(%rsp), %eax
	incl	%eax
	movl	%eax, 12(%rsp)
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end570:
	.size	subsetdump3, .Lfunc_end570-subsetdump3
	.cfi_endproc
                                        # -- End function
	.globl	subsetdump4             # -- Begin function subsetdump4
	.p2align	4, 0x90
	.type	subsetdump4,@function
subsetdump4:                            # @subsetdump4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edx
	movl	%edx, 4(%rsp)
	movq	%rsi, 8(%rsp)
	movl	(%rsi), %esi
	movl	%esi, (%rsp)
	decl	%edx
	movl	$.L.str.13.359, %edi
	xorl	%eax, %eax
	callq	printf
	movq	8(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	16(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end571:
	.size	subsetdump4, .Lfunc_end571-subsetdump4
	.cfi_endproc
                                        # -- End function
	.globl	subsetdump5             # -- Begin function subsetdump5
	.p2align	4, 0x90
	.type	subsetdump5,@function
subsetdump5:                            # @subsetdump5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	incq	%rcx
	movq	%rcx, -16(%rsp)
	incl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end572:
	.size	subsetdump5, .Lfunc_end572-subsetdump5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function expandmode
	.type	expandmode,@function
expandmode:                             # @expandmode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24632, %rsp            # imm = 0x6038
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, -48(%rbp)
	leaq	-8288(%rbp), %r15
	leaq	-56(%rbp), %r14
	jmp	.LBB573_1
	.p2align	4, 0x90
.LBB573_30:                             # %if.end122
                                        #   in Loop: Header=BB573_1 Depth=1
	movl	$10, %edi
	callq	putchar
.LBB573_1:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB573_16 Depth 2
	movq	stdin(%rip), %rdx
	movl	$8192, %esi             # imm = 0x2000
	movq	%r15, %rdi
	callq	xgets
	testq	%rax, %rax
	je	.LBB573_31
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	%r15, %rdi
	callq	strlen
	movl	%eax, -44(%rbp)
	movslq	-44(%rbp), %rax
	cmpb	$10, -8289(%rbp,%rax)
	jne	.LBB573_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB573_1 Depth=1
	movslq	-44(%rbp), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, -44(%rbp)
	movb	$0, -8289(%rbp,%rax)
.LBB573_4:                              # %if.end
                                        #   in Loop: Header=BB573_1 Depth=1
	leaq	-16480(%rbp), %rdi
	movq	%r15, %rsi
	callq	strcpy
	movsbl	hashheader+68(%rip), %esi
	movq	%r15, %rdi
	callq	index
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	je	.LBB573_6
# %bb.5:                                # %if.then16
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	subl	%r15d, %ecx
	movl	%ecx, -44(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
.LBB573_6:                              # %if.end19
                                        #   in Loop: Header=BB573_1 Depth=1
	cmpl	$2, -48(%rbp)
	je	.LBB573_9
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB573_1 Depth=1
	cmpl	$3, -48(%rbp)
	je	.LBB573_9
# %bb.8:                                # %lor.lhs.false24
                                        #   in Loop: Header=BB573_1 Depth=1
	cmpl	$4, -48(%rbp)
	jne	.LBB573_10
	.p2align	4, 0x90
.LBB573_9:                              # %if.then27
                                        #   in Loop: Header=BB573_1 Depth=1
	movl	$.L.str.185, %edi
	xorl	%eax, %eax
	leaq	-16480(%rbp), %rsi
	callq	printf
.LBB573_10:                             # %if.end30
                                        #   in Loop: Header=BB573_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB573_12
# %bb.11:                               # %if.then33
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	-56(%rbp), %rax
	subq	%r15, %rax
	cmpq	$101, %rax
	jl	.LBB573_14
.LBB573_13:                             # %if.then48
                                        #   in Loop: Header=BB573_1 Depth=1
	movb	$0, -8188(%rbp)
.LBB573_14:                             # %if.end51
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	stdout(%rip), %rsi
	movq	%r15, %rdi
	callq	fputs
	cmpq	$0, -56(%rbp)
	je	.LBB573_30
# %bb.15:                               # %if.then56
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	$0, -72(%rbp)
	jmp	.LBB573_16
	.p2align	4, 0x90
.LBB573_25:                             # %if.then83
                                        #   in Loop: Header=BB573_16 Depth=2
	movq	%r14, %rdi
	callq	expandmode1
.LBB573_16:                             # %while.cond58
                                        #   Parent Loop BB573_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB573_17
# %bb.18:                               # %land.rhs
                                        #   in Loop: Header=BB573_16 Depth=2
	movq	-56(%rbp), %rax
	cmpb	$10, (%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB573_20
	jmp	.LBB573_26
	.p2align	4, 0x90
.LBB573_17:                             #   in Loop: Header=BB573_16 Depth=2
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB573_26
.LBB573_20:                             # %while.body65
                                        #   in Loop: Header=BB573_16 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	addl	$-65, %eax
	movl	%eax, -64(%rbp)
	js	.LBB573_23
# %bb.21:                               # %land.lhs.true
                                        #   in Loop: Header=BB573_16 Depth=2
	cmpl	$26, -64(%rbp)
	jg	.LBB573_23
# %bb.22:                               # %if.then72
                                        #   in Loop: Header=BB573_16 Depth=2
	movzbl	-64(%rbp), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	orq	%rax, -72(%rbp)
	jmp	.LBB573_24
	.p2align	4, 0x90
.LBB573_23:                             # %if.else74
                                        #   in Loop: Header=BB573_16 Depth=2
	movq	%r14, %rdi
	callq	expandmode0
.LBB573_24:                             # %if.end77
                                        #   in Loop: Header=BB573_16 Depth=2
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movsbl	1(%rax), %eax
	movsbl	hashheader+68(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB573_16
	jmp	.LBB573_25
	.p2align	4, 0x90
.LBB573_26:                             # %while.end
                                        #   in Loop: Header=BB573_1 Depth=1
	movl	$8192, %edx             # imm = 0x2000
	movl	$1, %ecx
	leaq	-24672(%rbp), %rdi
	movq	%r15, %rsi
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB573_28
# %bb.27:                               # %if.then89
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.187, %esi
	movl	$991, %ecx              # imm = 0x3DF
	movl	$.L.str.188, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	fprintf
.LBB573_28:                             # %if.end92
                                        #   in Loop: Header=BB573_1 Depth=1
	movl	-48(%rbp), %ecx
	movl	$.L.str.55, %r8d
	leaq	-16480(%rbp), %r12
	movq	%r12, %rdi
	leaq	-24672(%rbp), %rbx
	movq	%rbx, %rsi
	leaq	-72(%rbp), %r13
	movq	%r13, %rdx
	callq	expand_pre
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %r8d
	xorl	%ecx, %ecx
	movl	$.L.str.55, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	expand_suf
	addl	-60(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	$4, -48(%rbp)
	jne	.LBB573_30
# %bb.29:                               # %if.then104
                                        #   in Loop: Header=BB573_1 Depth=1
	cvtsi2sdl	-60(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movl	$.L.str.189, %esi
	movb	$1, %al
	leaq	-96(%rbp), %rbx
	movq	%rbx, %rdi
	callq	sprintf
	movq	stdout(%rip), %rsi
	movq	%rbx, %rdi
	callq	fputs
	movl	$3, %ecx
	leaq	-16480(%rbp), %rdi
	leaq	-24672(%rbp), %rsi
	movq	%r15, %r13
	movq	%rdi, %rbx
	movq	%rsi, %r15
	leaq	-72(%rbp), %r12
	movq	%r12, %rdx
	leaq	-96(%rbp), %r12
	movq	%r12, %r8
	callq	expand_pre
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	-72(%rbp), %rdx
	movq	%r13, %r15
	movq	%r12, %r9
	callq	expand_suf
	jmp	.LBB573_30
	.p2align	4, 0x90
.LBB573_12:                             # %if.else
                                        #   in Loop: Header=BB573_1 Depth=1
	movq	%r15, %rdi
	callq	strlen
	cmpl	$100, %eax
	jge	.LBB573_13
	jmp	.LBB573_14
.LBB573_31:                             # %while.end124
	addq	$24632, %rsp            # imm = 0x6038
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end573:
	.size	expandmode, .Lfunc_end573-expandmode
	.cfi_endproc
                                        # -- End function
	.globl	xgets                   # -- Begin function xgets
	.p2align	4, 0x90
	.type	xgets,@function
xgets:                                  # @xgets
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$222222517, -116(%rbp)  # imm = 0xD3ED8B5
	movl	$555555850, -112(%rbp)  # imm = 0x211D1C0A
	movl	$444444739, -108(%rbp)  # imm = 0x1A7DB043
	movl	$222222517, %edi        # imm = 0xD3ED8B5
	movl	$555555850, %esi        # imm = 0x211D1C0A
	movl	$444444739, %edx        # imm = 0x1A7DB043
	callq	guardMe
	movq	%rbx, -56(%rbp)
	movl	%r15d, -60(%rbp)
	movq	%r14, -104(%rbp)
	movq	%rbx, -48(%rbp)
	cmpl	$0, xgets.Include_Len(%rip)
	jne	.LBB574_4
# %bb.1:                                # %if.then
	movl	$.L.str.1.450, %edi
	callq	getenv
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB574_3
# %bb.2:                                # %if.then2
	leaq	-96(%rbp), %rdi
	callq	xgets0
.LBB574_3:                              # %if.end
	leaq	-104(%rbp), %rdi
	callq	xgets1
.LBB574_4:                              # %if.end4
	movl	$xgets.F, %ebx
	leaq	-88(%rbp), %r14
	leaq	-48(%rbp), %r15
	leaq	-56(%rbp), %r12
	jmp	.LBB574_5
	.p2align	4, 0x90
.LBB574_19:                             # %if.end57
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	xgets3
.LBB574_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	subq	-56(%rbp), %rax
	movl	$0, -36(%rbp)
	addq	$1, %rax
	movslq	-60(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB574_8
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	xgets.current_F(%rip), %rax
	movq	(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	je	.LBB574_8
# %bb.7:                                # %if.then11
                                        #   in Loop: Header=BB574_5 Depth=1
	movzbl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movb	%al, (%rcx)
	cmpl	$10, -36(%rbp)
	jne	.LBB574_5
	.p2align	4, 0x90
.LBB574_8:                              # %if.end17
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$-1, -36(%rbp)
	je	.LBB574_9
.LBB574_13:                             # %if.end35
                                        #   in Loop: Header=BB574_5 Depth=1
	cmpl	$0, incfileflag(%rip)
	je	.LBB574_20
# %bb.14:                               # %land.lhs.true38
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	-56(%rbp), %rdi
	movq	xgets.Include_File(%rip), %rsi
	movl	xgets.Include_Len(%rip), %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB574_20
# %bb.15:                               # %if.then43
                                        #   in Loop: Header=BB574_5 Depth=1
	movslq	xgets.Include_Len(%rip), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	xgets.current_F(%rip), %rax
	subq	%rbx, %rax
	sarq	$3, %rax
	cmpq	$4, %rax
	jg	.LBB574_19
# %bb.16:                               # %land.lhs.true48
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	-72(%rbp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB574_19
# %bb.17:                               # %if.then52
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	-72(%rbp), %rdi
	movl	$.L.str.2.451, %esi
	callq	fopen
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB574_19
# %bb.18:                               # %if.then54
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	%r14, %rdi
	callq	xgets2
	jmp	.LBB574_19
	.p2align	4, 0x90
.LBB574_9:                              # %if.then20
                                        #   in Loop: Header=BB574_5 Depth=1
	cmpq	%rbx, xgets.current_F(%rip)
	je	.LBB574_10
# %bb.12:                               # %if.else
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	xgets.current_F(%rip), %rax
	leaq	-8(%rax), %rcx
	movq	%rcx, xgets.current_F(%rip)
	movq	(%rax), %rdi
	callq	fclose
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB574_5
	jmp	.LBB574_13
.LBB574_10:                             # %if.then23
                                        #   in Loop: Header=BB574_5 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB574_13
# %bb.11:                               # %if.then26
	movq	$0, -80(%rbp)
	jmp	.LBB574_21
.LBB574_20:                             # %for.end
	leaq	-80(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	xgets4
.LBB574_21:                             # %return
	movq	-80(%rbp), %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end574:
	.size	xgets, .Lfunc_end574-xgets
	.cfi_endproc
                                        # -- End function
	.globl	expandmode0             # -- Begin function expandmode0
	.p2align	4, 0x90
	.type	expandmode0,@function
expandmode0:                            # @expandmode0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	stderr(%rip), %rdi
	movzbl	(%rax), %edx
	movl	$.L.str.186, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end575:
	.size	expandmode0, .Lfunc_end575-expandmode0
	.cfi_endproc
                                        # -- End function
	.globl	expandmode1             # -- Begin function expandmode1
	.p2align	4, 0x90
	.type	expandmode1,@function
expandmode1:                            # @expandmode1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end576:
	.size	expandmode1, .Lfunc_end576-expandmode1
	.cfi_endproc
                                        # -- End function
	.globl	expand_pre              # -- Begin function expand_pre
	.p2align	4, 0x90
	.type	expand_pre,@function
expand_pre:                             # @expand_pre
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$222222498, -132(%rbp)  # imm = 0xD3ED8A2
	movl	$555555831, -128(%rbp)  # imm = 0x211D1BF7
	movl	$444444720, -124(%rbp)  # imm = 0x1A7DB030
	movl	$222222498, %edi        # imm = 0xD3ED8A2
	movl	$555555831, %esi        # imm = 0x211D1BF7
	movl	$444444720, %edx        # imm = 0x1A7DB030
	callq	guardMe
	movl	$222222497, -120(%rbp)  # imm = 0xD3ED8A1
	movl	$555555830, -116(%rbp)  # imm = 0x211D1BF6
	movl	$444444719, -112(%rbp)  # imm = 0x1A7DB02F
	movl	$222222497, %edi        # imm = 0xD3ED8A1
	movl	$555555830, %esi        # imm = 0x211D1BF6
	movl	$444444719, %edx        # imm = 0x1A7DB02F
	callq	guardMe
	movl	$222222496, -108(%rbp)  # imm = 0xD3ED8A0
	movl	$555555829, -104(%rbp)  # imm = 0x211D1BF5
	movl	$444444718, -100(%rbp)  # imm = 0x1A7DB02E
	movl	$222222496, %edi        # imm = 0xD3ED8A0
	movl	$555555829, %esi        # imm = 0x211D1BF5
	movl	$444444718, %edx        # imm = 0x1A7DB02E
	callq	guardMe
	movq	%rbx, -96(%rbp)
	movq	%r13, -88(%rbp)
	movq	%r12, -64(%rbp)
	movl	%r15d, -52(%rbp)
	movq	%r14, -80(%rbp)
	leaq	-48(%rbp), %r14
	leaq	-72(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	expand_pre0
	movl	$0, -44(%rbp)
	leaq	-52(%rbp), %r13
	leaq	-96(%rbp), %r15
	leaq	-88(%rbp), %r12
	cmpl	$0, -48(%rbp)
	jg	.LBB577_2
	jmp	.LBB577_5
	.p2align	4, 0x90
.LBB577_4:                              # %for.inc
                                        #   in Loop: Header=BB577_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	expand_pre2
	cmpl	$0, -48(%rbp)
	jle	.LBB577_5
.LBB577_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB577_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB577_2 Depth=1
	leaq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-44(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%rbx, %r9
	callq	expand_pre1
	jmp	.LBB577_4
.LBB577_5:                              # %for.end
	movl	-44(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end577:
	.size	expand_pre, .Lfunc_end577-expand_pre
	.cfi_endproc
                                        # -- End function
	.globl	expand_suf              # -- Begin function expand_suf
	.p2align	4, 0x90
	.type	expand_suf,@function
expand_suf:                             # @expand_suf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222387, -140(%rbp)  # imm = 0xD3ED833
	movl	$555555720, -136(%rbp)  # imm = 0x211D1B88
	movl	$444444609, -132(%rbp)  # imm = 0x1A7DAFC1
	movl	$222222387, %edi        # imm = 0xD3ED833
	movl	$555555720, %esi        # imm = 0x211D1B88
	movl	$444444609, %edx        # imm = 0x1A7DAFC1
	callq	guardMe
	movl	$222222386, -128(%rbp)  # imm = 0xD3ED832
	movl	$555555719, -124(%rbp)  # imm = 0x211D1B87
	movl	$444444608, -120(%rbp)  # imm = 0x1A7DAFC0
	movl	$222222386, %edi        # imm = 0xD3ED832
	movl	$555555719, %esi        # imm = 0x211D1B87
	movl	$444444608, %edx        # imm = 0x1A7DAFC0
	callq	guardMe
	movl	$222222385, -116(%rbp)  # imm = 0xD3ED831
	movl	$555555718, -112(%rbp)  # imm = 0x211D1B86
	movl	$444444607, -108(%rbp)  # imm = 0x1A7DAFBF
	movl	$222222385, %edi        # imm = 0xD3ED831
	movl	$555555718, %esi        # imm = 0x211D1B86
	movl	$444444607, %edx        # imm = 0x1A7DAFBF
	callq	guardMe
	movq	%r14, -104(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r13, -88(%rbp)
	movl	%r12d, -56(%rbp)
	movl	%r15d, -52(%rbp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	leaq	-48(%rbp), %r14
	leaq	-64(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	expand_suf0
	movl	$0, -44(%rbp)
	leaq	-104(%rbp), %r13
	leaq	-96(%rbp), %r15
	leaq	-52(%rbp), %r12
	cmpl	$0, -48(%rbp)
	jg	.LBB578_2
	jmp	.LBB578_7
	.p2align	4, 0x90
.LBB578_6:                              # %for.inc
                                        #   in Loop: Header=BB578_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	expand_suf2
	cmpl	$0, -48(%rbp)
	jle	.LBB578_7
.LBB578_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movzbl	16(%rcx), %ecx
	btq	%rcx, %rax
	jae	.LBB578_6
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB578_2 Depth=1
	testb	$1, -56(%rbp)
	je	.LBB578_5
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB578_2 Depth=1
	movq	-64(%rbp), %rax
	movzwl	24(%rax), %eax
	testb	$1, %al
	je	.LBB578_6
.LBB578_5:                              # %if.then7
                                        #   in Loop: Header=BB578_2 Depth=1
	leaq	-44(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	movq	%r12, %r9
	callq	expand_suf1
	jmp	.LBB578_6
.LBB578_7:                              # %for.end
	movl	-44(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end578:
	.size	expand_suf, .Lfunc_end578-expand_suf
	.cfi_endproc
                                        # -- End function
	.globl	expand_suf0             # -- Begin function expand_suf0
	.p2align	4, 0x90
	.type	expand_suf0,@function
expand_suf0:                            # @expand_suf0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	sflaglist(%rip), %rax
	movq	%rax, -16(%rsp)
	movl	numsflags(%rip), %ecx
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end579:
	.size	expand_suf0, .Lfunc_end579-expand_suf0
	.cfi_endproc
                                        # -- End function
	.globl	expand_suf1             # -- Begin function expand_suf1
	.p2align	4, 0x90
	.type	expand_suf1,@function
expand_suf1:                            # @expand_suf1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 80(%rsp)
	movl	(%rdi), %eax
	movl	%eax, (%rsp)
	movq	%rsi, 72(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 64(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	(%rcx), %rsi
	movq	%rsi, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	(%r8), %rdx
	movq	%rdx, 24(%rsp)
	movq	%r9, 16(%rsp)
	movl	(%r9), %ecx
	movl	%ecx, 4(%rsp)
	movq	8(%rsp), %r8
	callq	pr_suf_expansion
	addl	%eax, (%rsp)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	80(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	72(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$88, %rsp
	retq
.Lfunc_end580:
	.size	expand_suf1, .Lfunc_end580-expand_suf1
	.cfi_endproc
                                        # -- End function
	.globl	expand_suf2             # -- Begin function expand_suf2
	.p2align	4, 0x90
	.type	expand_suf2,@function
expand_suf2:                            # @expand_suf2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rcx, -16(%rsp)
	decl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end581:
	.size	expand_suf2, .Lfunc_end581-expand_suf2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pr_suf_expansion
	.type	pr_suf_expansion,@function
pr_suf_expansion:                       # @pr_suf_expansion
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	$222222388, -108(%rbp)  # imm = 0xD3ED834
	movl	$555555721, -104(%rbp)  # imm = 0x211D1B89
	movl	$444444610, -100(%rbp)  # imm = 0x1A7DAFC2
	movl	$222222388, %edi        # imm = 0xD3ED834
	movl	$555555721, %esi        # imm = 0x211D1B89
	movl	$444444610, %edx        # imm = 0x1A7DAFC2
	callq	guardMe
	movq	%r13, -96(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r12, -64(%rbp)
	movl	%r15d, -72(%rbp)
	movq	%r14, -88(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rcx
	movswl	22(%rcx), %ecx
	movl	%ecx, -68(%rbp)
	cmpl	%eax, %ecx
	jg	.LBB582_1
# %bb.2:                                # %if.end
	movq	-64(%rbp), %rax
	movswl	18(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.LBB582_1
# %bb.4:                                # %if.end7
	leaq	-56(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	pr_suf_expansion0
	.p2align	4, 0x90
.LBB582_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	addl	$-1, -68(%rbp)
	js	.LBB582_8
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB582_5 Depth=1
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	-1(%rax), %eax
	movzbl	hashheader+754(%rax), %eax
	movq	-64(%rbp), %rcx
	movsbl	26(%rcx,%rax), %eax
	movl	-68(%rbp), %ecx
	btl	%ecx, %eax
	jb	.LBB582_5
.LBB582_1:                              # %if.then
	movl	$0, -48(%rbp)
.LBB582_14:                             # %return
	movl	-48(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB582_8:                              # %for.end
	movq	-80(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	callq	strcpy
	movslq	-44(%rbp), %rax
	addq	%rbp, %rax
	addq	$-240, %rax
	movq	-64(%rbp), %rcx
	movswq	18(%rcx), %rdx
	subq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpw	$0, 20(%rcx)
	je	.LBB582_15
# %bb.9:                                # %if.then25
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcpy
	movq	-56(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB582_16
# %bb.10:                               # %if.end35
	cmpl	$3, -72(%rbp)
	jne	.LBB582_11
.LBB582_17:                             # %if.then38
	leaq	-96(%rbp), %rdi
	callq	pr_suf_expansion3
	cmpl	$4, -72(%rbp)
	jne	.LBB582_12
	jmp	.LBB582_13
.LBB582_15:                             # %if.else
	leaq	-56(%rbp), %rdi
	callq	pr_suf_expansion2
	cmpl	$3, -72(%rbp)
	je	.LBB582_17
.LBB582_11:                             # %if.end40
	cmpl	$4, -72(%rbp)
	je	.LBB582_13
.LBB582_12:                             # %if.then43
	leaq	-240(%rbp), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movl	$.L.str.1.414, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB582_13:                             # %if.end47
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	pr_suf_expansion4
	jmp	.LBB582_14
.LBB582_16:                             # %if.then31
	leaq	-64(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	pr_suf_expansion1
	cmpl	$3, -72(%rbp)
	jne	.LBB582_11
	jmp	.LBB582_17
.Lfunc_end582:
	.size	pr_suf_expansion, .Lfunc_end582-pr_suf_expansion
	.cfi_endproc
                                        # -- End function
	.globl	pr_suf_expansion0       # -- Begin function pr_suf_expansion0
	.p2align	4, 0x90
	.type	pr_suf_expansion0,@function
pr_suf_expansion0:                      # @pr_suf_expansion0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -44(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -16(%rsp)
	movslq	-44(%rsp), %rcx
	addq	%rax, %rcx
	movq	%rcx, -40(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end583:
	.size	pr_suf_expansion0, .Lfunc_end583-pr_suf_expansion0
	.cfi_endproc
                                        # -- End function
	.globl	pr_suf_expansion1       # -- Begin function pr_suf_expansion1
	.p2align	4, 0x90
	.type	pr_suf_expansion1,@function
pr_suf_expansion1:                      # @pr_suf_expansion1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	movswl	20(%rax), %esi
	callq	forcelc
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end584:
	.size	pr_suf_expansion1, .Lfunc_end584-pr_suf_expansion1
	.cfi_endproc
                                        # -- End function
	.globl	pr_suf_expansion2       # -- Begin function pr_suf_expansion2
	.p2align	4, 0x90
	.type	pr_suf_expansion2,@function
pr_suf_expansion2:                      # @pr_suf_expansion2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end585:
	.size	pr_suf_expansion2, .Lfunc_end585-pr_suf_expansion2
	.cfi_endproc
                                        # -- End function
	.globl	pr_suf_expansion3       # -- Begin function pr_suf_expansion3
	.p2align	4, 0x90
	.type	pr_suf_expansion3,@function
pr_suf_expansion3:                      # @pr_suf_expansion3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$.L.str.413, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end586:
	.size	pr_suf_expansion3, .Lfunc_end586-pr_suf_expansion3
	.cfi_endproc
                                        # -- End function
	.globl	pr_suf_expansion4       # -- Begin function pr_suf_expansion4
	.p2align	4, 0x90
	.type	pr_suf_expansion4,@function
pr_suf_expansion4:                      # @pr_suf_expansion4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movl	(%rdx), %ecx
	movl	%ecx, -12(%rsp)
	movswl	20(%rax), %esi
	addl	%ecx, %esi
	movswl	18(%rax), %eax
	subl	%eax, %esi
	movl	%esi, -44(%rsp)
	movl	%ecx, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end587:
	.size	pr_suf_expansion4, .Lfunc_end587-pr_suf_expansion4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function forcelc
	.type	forcelc,@function
forcelc:                                # @forcelc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$222222384, -56(%rbp)   # imm = 0xD3ED830
	movl	$555555717, -52(%rbp)   # imm = 0x211D1B85
	movl	$444444606, -48(%rbp)   # imm = 0x1A7DAFBE
	movl	$222222384, %edi        # imm = 0xD3ED830
	movl	$555555717, %esi        # imm = 0x211D1B85
	movl	$444444606, %edx        # imm = 0x1A7DAFBE
	callq	guardMe
	movl	$222222383, -44(%rbp)   # imm = 0xD3ED82F
	movl	$555555716, -40(%rbp)   # imm = 0x211D1B84
	movl	$444444605, -36(%rbp)   # imm = 0x1A7DAFBD
	movl	$222222383, %edi        # imm = 0xD3ED82F
	movl	$555555716, %esi        # imm = 0x211D1B84
	movl	$444444605, %edx        # imm = 0x1A7DAFBD
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movl	%r14d, -20(%rbp)
	leaq	-32(%rbp), %rbx
	addl	$-1, -20(%rbp)
	js	.LBB588_3
	.p2align	4, 0x90
.LBB588_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	forcelc0
	movq	%rbx, %rdi
	callq	forcelc1
	addl	$-1, -20(%rbp)
	jns	.LBB588_2
.LBB588_3:                              # %for.end
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end588:
	.size	forcelc, .Lfunc_end588-forcelc
	.cfi_endproc
                                        # -- End function
	.globl	forcelc0                # -- Begin function forcelc0
	.p2align	4, 0x90
	.type	forcelc0,@function
forcelc0:                               # @forcelc0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movzbl	(%rax), %ecx
	movb	hashheader+526(%rcx), %cl
	movb	%cl, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end589:
	.size	forcelc0, .Lfunc_end589-forcelc0
	.cfi_endproc
                                        # -- End function
	.globl	forcelc1                # -- Begin function forcelc1
	.p2align	4, 0x90
	.type	forcelc1,@function
forcelc1:                               # @forcelc1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end590:
	.size	forcelc1, .Lfunc_end590-forcelc1
	.cfi_endproc
                                        # -- End function
	.globl	expand_pre0             # -- Begin function expand_pre0
	.p2align	4, 0x90
	.type	expand_pre0,@function
expand_pre0:                            # @expand_pre0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	pflaglist(%rip), %rax
	movq	%rax, -16(%rsp)
	movl	numpflags(%rip), %ecx
	movl	%ecx, -28(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end591:
	.size	expand_pre0, .Lfunc_end591-expand_pre0
	.cfi_endproc
                                        # -- End function
	.globl	expand_pre1             # -- Begin function expand_pre1
	.p2align	4, 0x90
	.type	expand_pre1,@function
expand_pre1:                            # @expand_pre1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 88(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	%rdx, 80(%rsp)
	movl	(%rdx), %eax
	movl	%eax, 8(%rsp)
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	(%r8), %rsi
	movq	%rsi, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	(%r9), %rdx
	movq	%rdx, 32(%rsp)
	movq	112(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movl	8(%rsp), %r8d
	movq	16(%rsp), %r9
	callq	pr_pre_expansion
	addl	%eax, 12(%rsp)
	movq	112(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	96(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	88(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	80(%rsp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
.Lfunc_end592:
	.size	expand_pre1, .Lfunc_end592-expand_pre1
	.cfi_endproc
                                        # -- End function
	.globl	expand_pre2             # -- Begin function expand_pre2
	.p2align	4, 0x90
	.type	expand_pre2,@function
expand_pre2:                            # @expand_pre2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rcx, -16(%rsp)
	decl	%eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end593:
	.size	expand_pre2, .Lfunc_end593-expand_pre2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pr_pre_expansion
	.type	pr_pre_expansion,@function
pr_pre_expansion:                       # @pr_pre_expansion
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$222222501, -148(%rbp)  # imm = 0xD3ED8A5
	movl	$555555834, -144(%rbp)  # imm = 0x211D1BFA
	movl	$444444723, -140(%rbp)  # imm = 0x1A7DB033
	movl	$222222501, %edi        # imm = 0xD3ED8A5
	movl	$555555834, %esi        # imm = 0x211D1BFA
	movl	$444444723, %edx        # imm = 0x1A7DB033
	callq	guardMe
	movl	$222222500, -136(%rbp)  # imm = 0xD3ED8A4
	movl	$555555833, -132(%rbp)  # imm = 0x211D1BF9
	movl	$444444722, -128(%rbp)  # imm = 0x1A7DB032
	movl	$222222500, %edi        # imm = 0xD3ED8A4
	movl	$555555833, %esi        # imm = 0x211D1BF9
	movl	$444444722, %edx        # imm = 0x1A7DB032
	callq	guardMe
	movl	$222222499, -124(%rbp)  # imm = 0xD3ED8A3
	movl	$555555832, -120(%rbp)  # imm = 0x211D1BF8
	movl	$444444721, -116(%rbp)  # imm = 0x1A7DB031
	movl	$222222499, %edi        # imm = 0xD3ED8A3
	movl	$555555832, %esi        # imm = 0x211D1BF8
	movl	$444444721, %edx        # imm = 0x1A7DB031
	callq	guardMe
	movq	%r14, -96(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r13, -56(%rbp)
	movq	%r12, -112(%rbp)
	movl	%r15d, -68(%rbp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rcx
	movswl	22(%rcx), %ecx
	cmpl	%eax, %ecx
	jg	.LBB594_1
# %bb.2:                                # %if.end
	movq	-56(%rbp), %rax
	movswl	18(%rax), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	jle	.LBB594_1
# %bb.4:                                # %if.end7
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-72(%rbp), %rbx
	leaq	-80(%rbp), %r8
	movq	%rbx, %rcx
	callq	pr_pre_expansion0
	jmp	.LBB594_6
	.p2align	4, 0x90
.LBB594_5:                              # %for.inc
                                        #   in Loop: Header=BB594_6 Depth=1
	movq	%rbx, %rdi
	callq	pr_pre_expansion1
.LBB594_6:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movswl	22(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jge	.LBB594_9
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB594_6 Depth=1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	hashheader+754(%rax), %eax
	movq	-56(%rbp), %rcx
	movsbl	26(%rcx,%rax), %eax
	movl	-72(%rbp), %ecx
	btl	%ecx, %eax
	jb	.LBB594_5
.LBB594_1:                              # %if.then
	movl	$0, -64(%rbp)
.LBB594_34:                             # %return
	movl	-64(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB594_9:                              # %for.end
	movq	-56(%rbp), %rax
	cmpw	$0, 20(%rax)
	je	.LBB594_11
# %bb.10:                               # %if.then21
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-272(%rbp), %rdi
	callq	strcpy
	movq	-56(%rbp), %rax
	movswq	20(%rax), %rax
	addq	%rbp, %rax
	addq	$-272, %rax             # imm = 0xFEF0
	movq	%rax, -48(%rbp)
.LBB594_11:                             # %if.end26
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movswq	18(%rax), %rsi
	addq	-80(%rbp), %rsi
	callq	strcpy
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB594_23
# %bb.12:                               # %if.then36
	leaq	-48(%rbp), %rbx
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	callq	pr_pre_expansion2
	jmp	.LBB594_14
	.p2align	4, 0x90
.LBB594_13:                             # %for.inc46
                                        #   in Loop: Header=BB594_14 Depth=1
	movq	%rbx, %rdi
	callq	pr_pre_expansion3
.LBB594_14:                             # %for.cond38
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB594_16
# %bb.15:                               # %for.body40
                                        #   in Loop: Header=BB594_14 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	jne	.LBB594_13
.LBB594_16:                             # %for.end48
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB594_27
# %bb.17:                               # %if.then50
	leaq	-48(%rbp), %rbx
	jmp	.LBB594_19
	.p2align	4, 0x90
.LBB594_18:                             # %for.inc59
                                        #   in Loop: Header=BB594_19 Depth=1
	movq	%rbx, %rdi
	callq	pr_pre_expansion4
.LBB594_19:                             # %for.cond51
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB594_21
# %bb.20:                               # %for.body53
                                        #   in Loop: Header=BB594_19 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB594_18
.LBB594_21:                             # %for.end61
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB594_25
# %bb.22:                               # %if.then63
	movq	-56(%rbp), %rax
	movswq	20(%rax), %rax
	movzbl	-272(%rbp,%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	jne	.LBB594_27
	jmp	.LBB594_24
.LBB594_23:                             # %if.else80
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	jne	.LBB594_27
.LBB594_24:                             # %if.then84
	movq	-56(%rbp), %rax
	movswl	20(%rax), %esi
	leaq	-272(%rbp), %rdi
	jmp	.LBB594_26
.LBB594_25:                             # %if.else
	leaq	-271(%rbp), %rdi
	movl	-60(%rbp), %esi
	addl	$-1, %esi
.LBB594_26:                             # %if.end89
	callq	forcelc
.LBB594_27:                             # %if.end89
	cmpl	$3, -68(%rbp)
	jne	.LBB594_29
# %bb.28:                               # %if.then92
	leaq	-96(%rbp), %rdi
	callq	pr_pre_expansion5
.LBB594_29:                             # %if.end94
	cmpl	$4, -68(%rbp)
	je	.LBB594_31
# %bb.30:                               # %if.then97
	leaq	-272(%rbp), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movl	$.L.str.1.414, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
.LBB594_31:                             # %if.end101
	movq	-56(%rbp), %rax
	movzwl	24(%rax), %eax
	testb	$1, %al
	je	.LBB594_33
# %bb.32:                               # %if.then105
	movl	-60(%rbp), %ebx
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movl	-68(%rbp), %r8d
	movq	-88(%rbp), %r9
	leaq	-272(%rbp), %rsi
	movl	$1, %ecx
	callq	expand_suf
	addl	%ebx, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB594_34
.LBB594_33:                             # %if.else109
	leaq	-64(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	callq	pr_pre_expansion6
	jmp	.LBB594_34
.Lfunc_end594:
	.size	pr_pre_expansion, .Lfunc_end594-pr_pre_expansion
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion0       # -- Begin function pr_pre_expansion0
	.p2align	4, 0x90
	.type	pr_pre_expansion0,@function
pr_pre_expansion0:                      # @pr_pre_expansion0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -64(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -48(%rsp)
	movl	(%rdx), %edx
	movl	%edx, -68(%rsp)
	movq	%rcx, -56(%rsp)
	movl	(%rcx), %ecx
	movl	%ecx, -72(%rsp)
	movq	%r8, -8(%rsp)
	movq	(%r8), %rcx
	movq	%rcx, -16(%rsp)
	movswl	20(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rsp)
	movl	$0, -72(%rsp)
	movq	%rcx, -64(%rsp)
	movq	%rcx, (%r8)
	movq	-24(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rsp), %rax
	movl	-68(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-56(%rsp), %rax
	movl	-72(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end595:
	.size	pr_pre_expansion0, .Lfunc_end595-pr_pre_expansion0
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion1       # -- Begin function pr_pre_expansion1
	.p2align	4, 0x90
	.type	pr_pre_expansion1,@function
pr_pre_expansion1:                      # @pr_pre_expansion1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end596:
	.size	pr_pre_expansion1, .Lfunc_end596-pr_pre_expansion1
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion2       # -- Begin function pr_pre_expansion2
	.p2align	4, 0x90
	.type	pr_pre_expansion2,@function
pr_pre_expansion2:                      # @pr_pre_expansion2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end597:
	.size	pr_pre_expansion2, .Lfunc_end597-pr_pre_expansion2
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion3       # -- Begin function pr_pre_expansion3
	.p2align	4, 0x90
	.type	pr_pre_expansion3,@function
pr_pre_expansion3:                      # @pr_pre_expansion3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end598:
	.size	pr_pre_expansion3, .Lfunc_end598-pr_pre_expansion3
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion4       # -- Begin function pr_pre_expansion4
	.p2align	4, 0x90
	.type	pr_pre_expansion4,@function
pr_pre_expansion4:                      # @pr_pre_expansion4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	incq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end599:
	.size	pr_pre_expansion4, .Lfunc_end599-pr_pre_expansion4
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion5       # -- Begin function pr_pre_expansion5
	.p2align	4, 0x90
	.type	pr_pre_expansion5,@function
pr_pre_expansion5:                      # @pr_pre_expansion5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$.L.str.413, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end600:
	.size	pr_pre_expansion5, .Lfunc_end600-pr_pre_expansion5
	.cfi_endproc
                                        # -- End function
	.globl	pr_pre_expansion6       # -- Begin function pr_pre_expansion6
	.p2align	4, 0x90
	.type	pr_pre_expansion6,@function
pr_pre_expansion6:                      # @pr_pre_expansion6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end601:
	.size	pr_pre_expansion6, .Lfunc_end601-pr_pre_expansion6
	.cfi_endproc
                                        # -- End function
	.globl	xgets0                  # -- Begin function xgets0
	.p2align	4, 0x90
	.type	xgets0,@function
xgets0:                                 # @xgets0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, xgets.Include_File(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end602:
	.size	xgets0, .Lfunc_end602-xgets0
	.cfi_endproc
                                        # -- End function
	.globl	xgets1                  # -- Begin function xgets1
	.p2align	4, 0x90
	.type	xgets1,@function
xgets1:                                 # @xgets1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	xgets.Include_File(%rip), %rdi
	callq	strlen
	movl	%eax, xgets.Include_Len(%rip)
	movq	8(%rsp), %rax
	movq	xgets.current_F(%rip), %rcx
	movq	%rax, (%rcx)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end603:
	.size	xgets1, .Lfunc_end603-xgets1
	.cfi_endproc
                                        # -- End function
	.globl	xgets2                  # -- Begin function xgets2
	.p2align	4, 0x90
	.type	xgets2,@function
xgets2:                                 # @xgets2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	xgets.current_F(%rip), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, xgets.current_F(%rip)
	movq	%rax, 8(%rcx)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end604:
	.size	xgets2, .Lfunc_end604-xgets2
	.cfi_endproc
                                        # -- End function
	.globl	xgets3                  # -- Begin function xgets3
	.p2align	4, 0x90
	.type	xgets3,@function
xgets3:                                 # @xgets3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end605:
	.size	xgets3, .Lfunc_end605-xgets3
	.cfi_endproc
                                        # -- End function
	.globl	xgets4                  # -- Begin function xgets4
	.p2align	4, 0x90
	.type	xgets4,@function
xgets4:                                 # @xgets4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end606:
	.size	xgets4, .Lfunc_end606-xgets4
	.cfi_endproc
                                        # -- End function
	.globl	askmode                 # -- Begin function askmode
	.p2align	4, 0x90
	.type	askmode,@function
askmode:                                # @askmode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$222222355, -92(%rbp)   # imm = 0xD3ED813
	movl	$555555688, -88(%rbp)   # imm = 0x211D1B68
	movl	$444444577, -84(%rbp)   # imm = 0x1A7DAFA1
	movl	$222222355, %edi        # imm = 0xD3ED813
	movl	$555555688, %esi        # imm = 0x211D1B68
	movl	$444444577, %edx        # imm = 0x1A7DAFA1
	callq	guardMe
	movl	$222222354, -80(%rbp)   # imm = 0xD3ED812
	movl	$555555687, -76(%rbp)   # imm = 0x211D1B67
	movl	$444444576, -72(%rbp)   # imm = 0x1A7DAFA0
	movl	$222222354, %edi        # imm = 0xD3ED812
	movl	$555555687, %esi        # imm = 0x211D1B67
	movl	$444444576, %edx        # imm = 0x1A7DAFA0
	callq	guardMe
	movl	$222222353, -68(%rbp)   # imm = 0xD3ED811
	movl	$555555686, -64(%rbp)   # imm = 0x211D1B66
	movl	$444444575, -60(%rbp)   # imm = 0x1A7DAF9F
	movl	$222222353, %edi        # imm = 0xD3ED811
	movl	$555555686, %esi        # imm = 0x211D1B66
	movl	$444444575, %edx        # imm = 0x1A7DAF9F
	callq	guardMe
	cmpl	$0, fflag(%rip)
	je	.LBB607_2
# %bb.1:                                # %if.then
	movq	askfilename(%rip), %rdi
	movq	stdout(%rip), %rdx
	movl	$.L.str.38.275, %esi
	callq	freopen
	testq	%rax, %rax
	je	.LBB607_55
.LBB607_2:                              # %if.end3
	callq	askmode1
	leaq	-24(%rbp), %rbx
	leaq	-20(%rbp), %r14
	jmp	.LBB607_3
	.p2align	4, 0x90
.LBB607_53:                             # %if.then160
                                        #   in Loop: Header=BB607_3 Depth=1
	callq	askmode10
.LBB607_3:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB607_12 Depth 2
                                        #     Child Loop BB607_45 Depth 2
	movq	stdout(%rip), %rdi
	callq	fflush
	cmpl	$0, contextoffset(%rip)
	je	.LBB607_4
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB607_3 Depth=1
	movq	stdin(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$4096, %esi             # imm = 0x1000
	callq	fgets
	testq	%rax, %rax
	jne	.LBB607_7
	jmp	.LBB607_54
	.p2align	4, 0x90
.LBB607_4:                              # %if.then7
                                        #   in Loop: Header=BB607_3 Depth=1
	movq	stdin(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$4096, %esi             # imm = 0x1000
	callq	xgets
	testq	%rax, %rax
	je	.LBB607_54
.LBB607_7:                              # %if.end16
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$contextbufs, %edi
	callq	strlen
	movl	%eax, -24(%rbp)
	movslq	-24(%rbp), %rax
	cmpb	$10, contextbufs-1(%rax)
	jne	.LBB607_9
# %bb.8:                                # %if.then21
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$1, -28(%rbp)
	movq	%rbx, %rdi
	callq	askmode2
	cmpl	$4095, -24(%rbp)        # imm = 0xFFF
	je	.LBB607_11
	jmp	.LBB607_20
	.p2align	4, 0x90
.LBB607_9:                              # %if.else24
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$0, -28(%rbp)
	cmpl	$4095, -24(%rbp)        # imm = 0xFFF
	jne	.LBB607_20
.LBB607_11:                             # %if.then29
                                        #   in Loop: Header=BB607_3 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	askmode3
	jmp	.LBB607_12
	.p2align	4, 0x90
.LBB607_19:                             # %if.end58
                                        #   in Loop: Header=BB607_12 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	askmode4
.LBB607_12:                             # %while.cond34
                                        #   Parent Loop BB607_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-24(%rbp), %rax
	cmpq	$8190, %rax             # imm = 0x1FFE
	ja	.LBB607_13
# %bb.14:                               # %land.rhs
                                        #   in Loop: Header=BB607_12 Depth=2
	movzbl	-20(%rbp), %ecx
	movb	$1, %al
	cmpb	$0, hashheader+982(%rcx)
	jne	.LBB607_17
# %bb.15:                               # %lor.lhs.false
                                        #   in Loop: Header=BB607_12 Depth=2
	movzbl	-20(%rbp), %ecx
	cmpb	$0, hashheader+1666(%rcx)
	jne	.LBB607_17
# %bb.16:                               # %lor.rhs
                                        #   in Loop: Header=BB607_12 Depth=2
	movzbl	-20(%rbp), %eax
	cmpb	$0, hashheader+1894(%rax)
	setne	%al
	testb	%al, %al
	jne	.LBB607_18
	jmp	.LBB607_20
	.p2align	4, 0x90
.LBB607_13:                             #   in Loop: Header=BB607_12 Depth=2
	xorl	%eax, %eax
.LBB607_17:                             # %land.end
                                        #   in Loop: Header=BB607_12 Depth=2
	testb	%al, %al
	je	.LBB607_20
.LBB607_18:                             # %while.body53
                                        #   in Loop: Header=BB607_12 Depth=2
	movq	stdin(%rip), %rdi
	callq	_IO_getc
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	jne	.LBB607_19
.LBB607_20:                             # %if.end64
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpl	$0, contextoffset(%rip)
	je	.LBB607_22
# %bb.21:                               # %if.then67
                                        #   in Loop: Header=BB607_3 Depth=1
	callq	askmode5
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
	.p2align	4, 0x90
.LBB607_22:                             # %if.else68
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$42, contextbufs(%rip)
	je	.LBB607_24
# %bb.23:                               # %lor.lhs.false72
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$64, contextbufs(%rip)
	jne	.LBB607_25
.LBB607_24:                             # %if.then76
                                        #   in Loop: Header=BB607_3 Depth=1
	callq	askmode6
.LBB607_48:                             # %if.end152
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB607_50
.LBB607_49:                             # %if.then154
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$0, contextoffset(%rip)
	cmpl	$0, sflag(%rip)
	je	.LBB607_3
	jmp	.LBB607_52
.LBB607_25:                             # %if.else82
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$38, contextbufs(%rip)
	jne	.LBB607_27
# %bb.26:                               # %if.then86
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$contextbufs+1, %edi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	callq	lowcase
	movq	-56(%rbp), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movl	$184, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	treeinsert
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	.p2align	4, 0x90
.LBB607_50:                             # %if.else155
                                        #   in Loop: Header=BB607_3 Depth=1
	movq	%rbx, %rdi
	callq	askmode9
	cmpl	$0, sflag(%rip)
	je	.LBB607_3
.LBB607_52:                             # %if.then158
                                        #   in Loop: Header=BB607_3 Depth=1
	callq	stop
	cmpl	$0, fflag(%rip)
	je	.LBB607_3
	jmp	.LBB607_53
.LBB607_27:                             # %if.else89
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$35, contextbufs(%rip)
	jne	.LBB607_29
# %bb.28:                               # %if.then93
                                        #   in Loop: Header=BB607_3 Depth=1
	callq	treeoutput
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_29:                             # %if.else94
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$33, contextbufs(%rip)
	jne	.LBB607_31
# %bb.30:                               # %if.then98
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$1, terse(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_31:                             # %if.else99
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$37, contextbufs(%rip)
	jne	.LBB607_33
# %bb.32:                               # %if.then103
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$0, terse(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_33:                             # %if.else104
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$45, contextbufs(%rip)
	jne	.LBB607_35
# %bb.34:                               # %if.then108
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	movl	$0, tflag(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_35:                             # %if.else109
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$43, contextbufs(%rip)
	jne	.LBB607_40
# %bb.36:                               # %if.then113
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	movl	$contextbufs+1, %edi
	movl	$.L.str.41.278, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB607_37
# %bb.38:                               # %land.rhs117
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$contextbufs+1, %edi
	movl	$.L.str.42.279, %esi
	callq	strcmp
	testl	%eax, %eax
	setne	%al
	jmp	.LBB607_39
.LBB607_40:                             # %if.else122
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$126, contextbufs(%rip)
	jne	.LBB607_43
# %bb.41:                               # %if.then126
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$contextbufs+1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	findfiletype
	movl	%eax, defdupchar(%rip)
	testl	%eax, %eax
	jns	.LBB607_48
# %bb.42:                               # %if.then130
                                        #   in Loop: Header=BB607_3 Depth=1
	movl	$0, defdupchar(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_43:                             # %if.else132
                                        #   in Loop: Header=BB607_3 Depth=1
	cmpb	$94, contextbufs(%rip)
	jne	.LBB607_47
# %bb.44:                               # %if.then136
                                        #   in Loop: Header=BB607_3 Depth=1
	movq	$contextbufs, -48(%rbp)
	movq	$contextbufs+1, -40(%rbp)
	.p2align	4, 0x90
.LBB607_45:                             # %for.cond
                                        #   Parent Loop BB607_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	movq	-48(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movb	%al, (%rcx)
	testb	%al, %al
	jne	.LBB607_45
# %bb.46:                               # %for.end
                                        #   in Loop: Header=BB607_3 Depth=1
	movq	%rbx, %rdi
	callq	askmode7
.LBB607_47:                             # %if.end143
                                        #   in Loop: Header=BB607_3 Depth=1
	callq	askmode8
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_37:                             #   in Loop: Header=BB607_3 Depth=1
	xorl	%eax, %eax
.LBB607_39:                             # %land.end121
                                        #   in Loop: Header=BB607_3 Depth=1
	movzbl	%al, %eax
	movl	%eax, tflag(%rip)
	cmpl	$0, -28(%rbp)
	jne	.LBB607_49
	jmp	.LBB607_50
.LBB607_54:                             # %while.end164
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB607_55:                             # %if.then1
	callq	askmode0
.Lfunc_end607:
	.size	askmode, .Lfunc_end607-askmode
	.cfi_endproc
                                        # -- End function
	.globl	askmode0                # -- Begin function askmode0
	.p2align	4, 0x90
	.type	askmode0,@function
askmode0:                               # @askmode0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	askfilename(%rip), %rdx
	movl	$.L.str.39.276, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end608:
	.size	askmode0, .Lfunc_end608-askmode0
	.cfi_endproc
                                        # -- End function
	.globl	askmode1                # -- Begin function askmode1
	.p2align	4, 0x90
	.type	askmode1,@function
askmode1:                               # @askmode1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	Version_ID.22(%rip), %rsi
	movl	$.L.str.40.277, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, contextoffset(%rip)
	popq	%rax
	retq
.Lfunc_end609:
	.size	askmode1, .Lfunc_end609-askmode1
	.cfi_endproc
                                        # -- End function
	.globl	askmode2                # -- Begin function askmode2
	.p2align	4, 0x90
	.type	askmode2,@function
askmode2:                               # @askmode2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	movslq	-12(%rsp), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, -12(%rsp)
	movb	$0, contextbufs-1(%rax)
	movl	%ecx, (%rdi)
	retq
.Lfunc_end610:
	.size	askmode2, .Lfunc_end610-askmode2
	.cfi_endproc
                                        # -- End function
	.globl	askmode3                # -- Begin function askmode3
	.p2align	4, 0x90
	.type	askmode3,@function
askmode3:                               # @askmode3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -20(%rsp)
	movslq	-20(%rsp), %rax
	movzbl	contextbufs-1(%rax), %ecx
	movl	%ecx, -24(%rsp)
	movl	%eax, (%rsi)
	movq	-16(%rsp), %rax
	movl	-24(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end611:
	.size	askmode3, .Lfunc_end611-askmode3
	.cfi_endproc
                                        # -- End function
	.globl	askmode4                # -- Begin function askmode4
	.p2align	4, 0x90
	.type	askmode4,@function
askmode4:                               # @askmode4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -4(%rsp)
	movslq	-28(%rsp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -28(%rsp)
	movb	%al, contextbufs(%rcx)
	movslq	-28(%rsp), %rcx
	movb	$0, contextbufs(%rcx)
	movq	-24(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end612:
	.size	askmode4, .Lfunc_end612-askmode4
	.cfi_endproc
                                        # -- End function
	.globl	askmode5                # -- Begin function askmode5
	.p2align	4, 0x90
	.type	askmode5,@function
askmode5:                               # @askmode5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	checkline
	popq	%rax
	retq
.Lfunc_end613:
	.size	askmode5, .Lfunc_end613-askmode5
	.cfi_endproc
                                        # -- End function
	.globl	askmode6                # -- Begin function askmode6
	.p2align	4, 0x90
	.type	askmode6,@function
askmode6:                               # @askmode6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$contextbufs+1, %edi
	xorl	%esi, %esi
	callq	strtosichar
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ichartosstr
	xorl	%edx, %edx
	cmpb	$42, contextbufs(%rip)
	sete	%dl
	movl	$184, %esi
	movq	%rax, %rdi
	callq	treeinsert
	popq	%rax
	retq
.Lfunc_end614:
	.size	askmode6, .Lfunc_end614-askmode6
	.cfi_endproc
                                        # -- End function
	.globl	askmode7                # -- Begin function askmode7
	.p2align	4, 0x90
	.type	askmode7,@function
askmode7:                               # @askmode7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	contextoffset(%rip)
	decl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end615:
	.size	askmode7, .Lfunc_end615-askmode7
	.cfi_endproc
                                        # -- End function
	.globl	askmode8                # -- Begin function askmode8
	.p2align	4, 0x90
	.type	askmode8,@function
askmode8:                               # @askmode8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	checkline
	popq	%rax
	retq
.Lfunc_end616:
	.size	askmode8, .Lfunc_end616-askmode8
	.cfi_endproc
                                        # -- End function
	.globl	askmode9                # -- Begin function askmode9
	.p2align	4, 0x90
	.type	askmode9,@function
askmode9:                               # @askmode9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -12(%rsp)
	addl	%eax, contextoffset(%rip)
	movl	%eax, (%rdi)
	retq
.Lfunc_end617:
	.size	askmode9, .Lfunc_end617-askmode9
	.cfi_endproc
                                        # -- End function
	.globl	askmode10               # -- Begin function askmode10
	.p2align	4, 0x90
	.type	askmode10,@function
askmode10:                              # @askmode10
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stdout(%rip), %rdi
	callq	rewind
	movq	askfilename(%rip), %rdi
	movl	$438, %esi              # imm = 0x1B6
	xorl	%eax, %eax
	callq	creat
	popq	%rax
	retq
.Lfunc_end618:
	.size	askmode10, .Lfunc_end618-askmode10
	.cfi_endproc
                                        # -- End function
	.globl	treeinit                # -- Begin function treeinit
	.p2align	4, 0x90
	.type	treeinit,@function
treeinit:                               # @treeinit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$4160, %rsp             # imm = 0x1040
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222390, -76(%rbp)   # imm = 0xD3ED836
	movl	$555555723, -72(%rbp)   # imm = 0x211D1B8B
	movl	$444444612, -68(%rbp)   # imm = 0x1A7DAFC4
	movl	$222222390, %edi        # imm = 0xD3ED836
	movl	$555555723, %esi        # imm = 0x211D1B8B
	movl	$444444612, %edx        # imm = 0x1A7DAFC4
	callq	guardMe
	movl	$222222389, -64(%rbp)   # imm = 0xD3ED835
	movl	$555555722, -60(%rbp)   # imm = 0x211D1B8A
	movl	$444444611, -56(%rbp)   # imm = 0x1A7DAFC3
	movl	$222222389, %edi        # imm = 0xD3ED835
	movl	$555555722, %esi        # imm = 0x211D1B8A
	movl	$444444611, %edx        # imm = 0x1A7DAFC3
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movq	%r14, -48(%rbp)
	testq	%rbx, %rbx
	jne	.LBB619_2
# %bb.1:                                # %if.then
	leaq	-24(%rbp), %rdi
	callq	treeinit0
.LBB619_2:                              # %if.end
	movl	$.L.str.1.420, %edi
	callq	getenv
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB619_39
# %bb.3:                                # %if.end4
	cmpq	$0, -24(%rbp)
	je	.LBB619_4
# %bb.21:                               # %if.else54
	movq	-24(%rbp), %rax
	movb	$1, %bl
	cmpb	$47, (%rax)
	je	.LBB619_24
# %bb.22:                               # %lor.lhs.false
	movq	-24(%rbp), %rdi
	movl	$.L.str.5.424, %esi
	movl	$2, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB619_24
# %bb.23:                               # %lor.rhs
	movq	-24(%rbp), %rdi
	movl	$.L.str.6.425, %esi
	movl	$3, %edx
	callq	strncmp
	testl	%eax, %eax
	sete	%bl
.LBB619_24:                             # %lor.end
	movzbl	%bl, %eax
	movl	%eax, -52(%rbp)
	testb	%al, %al
	je	.LBB619_32
# %bb.25:                               # %if.then64
	movq	-24(%rbp), %rsi
	movl	$personaldict, %edi
	callq	strcpy
	movl	$personaldict, %edi
	movl	$.L.str.7.426, %esi
	callq	fopen
	movq	%rax, dictf(%rip)
	testq	%rax, %rax
	je	.LBB619_27
# %bb.26:                               # %if.then69
	callq	treeinit4
	cmpl	$0, lflag(%rip)
	jne	.LBB619_39
	jmp	.LBB619_28
.LBB619_4:                              # %if.then6
	movq	-48(%rbp), %rcx
	movl	$personaldict, %edi
	xorl	%esi, %esi
	movl	$.L.str.2.421, %edx
	callq	trydict
	movq	%rax, dictf(%rip)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rcx
	leaq	-4176(%rbp), %rdi
	movl	$.L.str.2.421, %edx
	callq	trydict
	movq	%rax, -32(%rbp)
	cmpq	$0, dictf(%rip)
	jne	.LBB619_7
# %bb.5:                                # %land.lhs.true
	cmpq	$0, -32(%rbp)
	jne	.LBB619_7
# %bb.6:                                # %if.then11
	movl	$personaldict, %edi
	xorl	%esi, %esi
	movl	$.L.str.2.421, %edx
	movl	$.L.str.3.422, %ecx
	callq	trydict
	movq	%rax, dictf(%rip)
	movq	-40(%rbp), %rsi
	leaq	-4176(%rbp), %rdi
	movl	$.L.str.2.421, %edx
	movl	$.L.str.3.422, %ecx
	callq	trydict
	movq	%rax, -32(%rbp)
.LBB619_7:                              # %if.end15
	cmpq	$0, dictf(%rip)
	jne	.LBB619_10
# %bb.8:                                # %land.lhs.true17
	cmpq	$0, -32(%rbp)
	jne	.LBB619_10
# %bb.9:                                # %if.then19
	movq	-48(%rbp), %rcx
	movl	$personaldict, %edi
	xorl	%esi, %esi
	movl	$.L.str.2.421, %edx
	callq	trydict
	movq	%rax, dictf(%rip)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rcx
	leaq	-4176(%rbp), %rdi
	movl	$.L.str.2.421, %edx
	callq	trydict
	movq	%rax, -32(%rbp)
.LBB619_10:                             # %if.end23
	cmpq	$0, dictf(%rip)
	jne	.LBB619_13
# %bb.11:                               # %land.lhs.true25
	cmpq	$0, -32(%rbp)
	jne	.LBB619_13
# %bb.12:                               # %if.then27
	movl	$personaldict, %edi
	xorl	%esi, %esi
	movl	$.L.str.2.421, %edx
	movl	$.L.str.3.422, %ecx
	callq	trydict
	movq	%rax, dictf(%rip)
	movq	-40(%rbp), %rsi
	leaq	-4176(%rbp), %rdi
	movl	$.L.str.2.421, %edx
	movl	$.L.str.3.422, %ecx
	callq	trydict
	movq	%rax, -32(%rbp)
.LBB619_13:                             # %if.end31
	cmpb	$0, personaldict(%rip)
	je	.LBB619_14
# %bb.17:                               # %if.end43
	cmpq	$0, dictf(%rip)
	je	.LBB619_19
.LBB619_18:                             # %if.then46
	callq	treeinit2
.LBB619_19:                             # %if.end48
	cmpq	$0, -32(%rbp)
	je	.LBB619_27
# %bb.20:                               # %if.then51
	leaq	-32(%rbp), %rdi
	callq	treeinit3
	cmpl	$0, lflag(%rip)
	jne	.LBB619_39
	jmp	.LBB619_28
.LBB619_32:                             # %if.else72
	movq	-24(%rbp), %rsi
	movl	$personaldict, %edi
	callq	strcpy
	movl	$personaldict, %edi
	movl	$.L.str.7.426, %esi
	callq	fopen
	movq	%rax, dictf(%rip)
	testq	%rax, %rax
	je	.LBB619_34
# %bb.33:                               # %if.then77
	callq	treeinit5
	cmpq	$0, dictf(%rip)
	jne	.LBB619_27
	jmp	.LBB619_38
.LBB619_14:                             # %if.then34
	cmpb	$0, -4176(%rbp)
	je	.LBB619_16
# %bb.15:                               # %if.then38
	leaq	-4176(%rbp), %rsi
	movl	$personaldict, %edi
	callq	strcpy
	cmpq	$0, dictf(%rip)
	jne	.LBB619_18
	jmp	.LBB619_19
.LBB619_34:                             # %if.else79
	cmpl	$0, -52(%rbp)
	jne	.LBB619_37
# %bb.35:                               # %if.then81
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	$personaldict, %edi
	movl	$.L.str.8.427, %esi
	xorl	%eax, %eax
	callq	sprintf
	movl	$personaldict, %edi
	movl	$.L.str.7.426, %esi
	callq	fopen
	movq	%rax, dictf(%rip)
	testq	%rax, %rax
	je	.LBB619_37
# %bb.36:                               # %if.then86
	callq	treeinit6
.LBB619_37:                             # %if.end90
	cmpq	$0, dictf(%rip)
	je	.LBB619_38
.LBB619_27:                             # %if.end97
	cmpl	$0, lflag(%rip)
	jne	.LBB619_39
.LBB619_28:                             # %land.lhs.true99
	cmpl	$0, aflag(%rip)
	jne	.LBB619_39
# %bb.29:                               # %land.lhs.true101
	movl	$personaldict, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	access
	testl	%eax, %eax
	jns	.LBB619_39
# %bb.30:                               # %land.lhs.true105
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB619_39
# %bb.31:                               # %if.then109
	callq	treeinit8
	jmp	.LBB619_39
.LBB619_38:                             # %if.then93
	leaq	-24(%rbp), %rdi
	callq	treeinit7
.LBB619_39:                             # %if.end112
	addq	$4160, %rsp             # imm = 0x1040
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB619_16:                             # %if.else
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	treeinit1
	cmpq	$0, dictf(%rip)
	jne	.LBB619_18
	jmp	.LBB619_19
.Lfunc_end619:
	.size	treeinit, .Lfunc_end619-treeinit
	.cfi_endproc
                                        # -- End function
	.globl	treeinit0               # -- Begin function treeinit0
	.p2align	4, 0x90
	.type	treeinit0,@function
treeinit0:                              # @treeinit0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	$.L.str.419, %edi
	callq	getenv
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end620:
	.size	treeinit0, .Lfunc_end620-treeinit0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function trydict
	.type	trydict,@function
trydict:                                # @trydict
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$222222394, -120(%rbp)  # imm = 0xD3ED83A
	movl	$555555727, -116(%rbp)  # imm = 0x211D1B8F
	movl	$444444616, -112(%rbp)  # imm = 0x1A7DAFC8
	movl	$222222394, %edi        # imm = 0xD3ED83A
	movl	$555555727, %esi        # imm = 0x211D1B8F
	movl	$444444616, %edx        # imm = 0x1A7DAFC8
	callq	guardMe
	movl	$222222393, -108(%rbp)  # imm = 0xD3ED839
	movl	$555555726, -104(%rbp)  # imm = 0x211D1B8E
	movl	$444444615, -100(%rbp)  # imm = 0x1A7DAFC7
	movl	$222222393, %edi        # imm = 0xD3ED839
	movl	$555555726, %esi        # imm = 0x211D1B8E
	movl	$444444615, %edx        # imm = 0x1A7DAFC7
	callq	guardMe
	movl	$222222392, -96(%rbp)   # imm = 0xD3ED838
	movl	$555555725, -92(%rbp)   # imm = 0x211D1B8D
	movl	$444444614, -88(%rbp)   # imm = 0x1A7DAFC6
	movl	$222222392, %edi        # imm = 0xD3ED838
	movl	$555555725, %esi        # imm = 0x211D1B8D
	movl	$444444614, %edx        # imm = 0x1A7DAFC6
	callq	guardMe
	movl	$222222391, -84(%rbp)   # imm = 0xD3ED837
	movl	$555555724, -80(%rbp)   # imm = 0x211D1B8C
	movl	$444444613, -76(%rbp)   # imm = 0x1A7DAFC5
	movl	$222222391, %edi        # imm = 0xD3ED837
	movl	$555555724, %esi        # imm = 0x211D1B8C
	movl	$444444613, %edx        # imm = 0x1A7DAFC5
	callq	guardMe
	movq	%r12, -40(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r15, -56(%rbp)
	movq	%r14, -48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	testq	%rbx, %rbx
	je	.LBB621_1
# %bb.2:                                # %if.else
	leaq	-72(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	callq	trydict1
	jmp	.LBB621_3
.LBB621_1:                              # %if.then
	leaq	-40(%rbp), %rdx
	callq	trydict0
.LBB621_3:                              # %if.end
	movq	-40(%rbp), %rdi
	movl	$.L.str.7.426, %esi
	callq	fopen
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	jne	.LBB621_5
# %bb.4:                                # %if.then4
	leaq	-40(%rbp), %rdi
	callq	trydict2
.LBB621_5:                              # %if.end5
	movq	-64(%rbp), %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end621:
	.size	trydict, .Lfunc_end621-trydict
	.cfi_endproc
                                        # -- End function
	.globl	treeinit1               # -- Begin function treeinit1
	.p2align	4, 0x90
	.type	treeinit1,@function
treeinit1:                              # @treeinit1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %r8
	movq	%r8, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdx
	movq	%rdx, 8(%rsp)
	movl	$personaldict, %edi
	movl	$.L.str.4.423, %esi
	movl	$.L.str.2.421, %ecx
	xorl	%eax, %eax
	callq	sprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end622:
	.size	treeinit1, .Lfunc_end622-treeinit1
	.cfi_endproc
                                        # -- End function
	.globl	treeinit2               # -- Begin function treeinit2
	.p2align	4, 0x90
	.type	treeinit2,@function
treeinit2:                              # @treeinit2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	dictf(%rip), %rdi
	callq	treeload
	movq	dictf(%rip), %rdi
	callq	fclose
	popq	%rax
	retq
.Lfunc_end623:
	.size	treeinit2, .Lfunc_end623-treeinit2
	.cfi_endproc
                                        # -- End function
	.globl	treeinit3               # -- Begin function treeinit3
	.p2align	4, 0x90
	.type	treeinit3,@function
treeinit3:                              # @treeinit3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	treeload
	movq	8(%rsp), %rdi
	callq	fclose
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end624:
	.size	treeinit3, .Lfunc_end624-treeinit3
	.cfi_endproc
                                        # -- End function
	.globl	treeinit4               # -- Begin function treeinit4
	.p2align	4, 0x90
	.type	treeinit4,@function
treeinit4:                              # @treeinit4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	dictf(%rip), %rdi
	callq	treeload
	movq	dictf(%rip), %rdi
	callq	fclose
	popq	%rax
	retq
.Lfunc_end625:
	.size	treeinit4, .Lfunc_end625-treeinit4
	.cfi_endproc
                                        # -- End function
	.globl	treeinit5               # -- Begin function treeinit5
	.p2align	4, 0x90
	.type	treeinit5,@function
treeinit5:                              # @treeinit5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	dictf(%rip), %rdi
	callq	treeload
	movq	dictf(%rip), %rdi
	callq	fclose
	popq	%rax
	retq
.Lfunc_end626:
	.size	treeinit5, .Lfunc_end626-treeinit5
	.cfi_endproc
                                        # -- End function
	.globl	treeinit6               # -- Begin function treeinit6
	.p2align	4, 0x90
	.type	treeinit6,@function
treeinit6:                              # @treeinit6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	dictf(%rip), %rdi
	callq	treeload
	movq	dictf(%rip), %rdi
	callq	fclose
	popq	%rax
	retq
.Lfunc_end627:
	.size	treeinit6, .Lfunc_end627-treeinit6
	.cfi_endproc
                                        # -- End function
	.globl	treeinit7               # -- Begin function treeinit7
	.p2align	4, 0x90
	.type	treeinit7,@function
treeinit7:                              # @treeinit7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.9.428, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$.L.str.10.429, %edi
	callq	perror
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end628:
	.size	treeinit7, .Lfunc_end628-treeinit7
	.cfi_endproc
                                        # -- End function
	.globl	treeinit8               # -- Begin function treeinit8
	.p2align	4, 0x90
	.type	treeinit8,@function
treeinit8:                              # @treeinit8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.11.430, %esi
	movl	$personaldict, %edx
	xorl	%eax, %eax
	callq	fprintf
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sleep
	popq	%rax
	retq
.Lfunc_end629:
	.size	treeinit8, .Lfunc_end629-treeinit8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function treeload
	.type	treeload,@function
treeload:                               # @treeload
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$8264, %rsp             # imm = 0x2048
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$222222399, -76(%rbp)   # imm = 0xD3ED83F
	movl	$555555732, -72(%rbp)   # imm = 0x211D1B94
	movl	$444444621, -68(%rbp)   # imm = 0x1A7DAFCD
	movl	$222222399, %edi        # imm = 0xD3ED83F
	movl	$555555732, %esi        # imm = 0x211D1B94
	movl	$444444621, %edx        # imm = 0x1A7DAFCD
	callq	guardMe
	movl	$222222398, -64(%rbp)   # imm = 0xD3ED83E
	movl	$555555731, -60(%rbp)   # imm = 0x211D1B93
	movl	$444444620, -56(%rbp)   # imm = 0x1A7DAFCC
	movl	$222222398, %edi        # imm = 0xD3ED83E
	movl	$555555731, %esi        # imm = 0x211D1B93
	movl	$444444620, %edx        # imm = 0x1A7DAFCC
	callq	guardMe
	movl	$222222397, -52(%rbp)   # imm = 0xD3ED83D
	movl	$555555730, -48(%rbp)   # imm = 0x211D1B92
	movl	$444444619, -44(%rbp)   # imm = 0x1A7DAFCB
	movl	$222222397, %edi        # imm = 0xD3ED83D
	movl	$555555730, %esi        # imm = 0x211D1B92
	movl	$444444619, %edx        # imm = 0x1A7DAFCB
	callq	guardMe
	movl	$222222396, -40(%rbp)   # imm = 0xD3ED83C
	movl	$555555729, -36(%rbp)   # imm = 0x211D1B91
	movl	$444444618, -32(%rbp)   # imm = 0x1A7DAFCA
	movl	$222222396, %edi        # imm = 0xD3ED83C
	movl	$555555729, %esi        # imm = 0x211D1B91
	movl	$444444618, %edx        # imm = 0x1A7DAFCA
	callq	guardMe
	movl	$222222395, -28(%rbp)   # imm = 0xD3ED83B
	movl	$555555728, -24(%rbp)   # imm = 0x211D1B90
	movl	$444444617, -20(%rbp)   # imm = 0x1A7DAFC9
	movl	$222222395, %edi        # imm = 0xD3ED83B
	movl	$555555728, %esi        # imm = 0x211D1B90
	movl	$444444617, %edx        # imm = 0x1A7DAFC9
	callq	guardMe
	movq	%rbx, -16(%rbp)
	leaq	-8272(%rbp), %rbx
	jmp	.LBB630_1
	.p2align	4, 0x90
.LBB630_2:                              # %while.body
                                        #   in Loop: Header=BB630_1 Depth=1
	movl	$8192, %esi             # imm = 0x2000
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	treeinsert
.LBB630_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdx
	movl	$8192, %esi             # imm = 0x2000
	movq	%rbx, %rdi
	callq	fgets
	testq	%rax, %rax
	jne	.LBB630_2
# %bb.3:                                # %while.end
	movl	$0, newwords(%rip)
	addq	$8264, %rsp             # imm = 0x2048
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end630:
	.size	treeload, .Lfunc_end630-treeload
	.cfi_endproc
                                        # -- End function
	.globl	trydict0                # -- Begin function trydict0
	.p2align	4, 0x90
	.type	trydict0,@function
trydict0:                               # @trydict0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	(%rsi), %r8
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.16.437, %esi
	xorl	%eax, %eax
	movq	%r8, %rdx
	callq	sprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end631:
	.size	trydict0, .Lfunc_end631-trydict0
	.cfi_endproc
                                        # -- End function
	.globl	trydict1                # -- Begin function trydict1
	.p2align	4, 0x90
	.type	trydict1,@function
trydict1:                               # @trydict1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	(%rdi), %r8
	movq	%r8, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	(%rsi), %r9
	movq	%r9, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.4.423, %esi
	xorl	%eax, %eax
	movq	%r9, %rcx
	callq	sprintf
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$72, %rsp
	retq
.Lfunc_end632:
	.size	trydict1, .Lfunc_end632-trydict1
	.cfi_endproc
                                        # -- End function
	.globl	trydict2                # -- Begin function trydict2
	.p2align	4, 0x90
	.type	trydict2,@function
trydict2:                               # @trydict2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movb	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end633:
	.size	trydict2, .Lfunc_end633-trydict2
	.cfi_endproc
                                        # -- End function
	.globl	initckch0               # -- Begin function initckch0
	.p2align	4, 0x90
	.type	initckch0,@function
initckch0:                              # @initckch0
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%dil, -1(%rsp)
	movslq	Trynum(%rip), %rax
	movb	%dil, Try(%rax)
	retq
.Lfunc_end634:
	.size	initckch0, .Lfunc_end634-initckch0
	.cfi_endproc
                                        # -- End function
	.globl	initckch1               # -- Begin function initckch1
	.p2align	4, 0x90
	.type	initckch1,@function
initckch1:                              # @initckch1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movb	(%rdi), %al
	movb	%al, -25(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movb	(%rax), %cl
	movb	%cl, -25(%rsp)
	incq	%rax
	movq	%rax, -24(%rsp)
	movq	%rax, (%rsi)
	movq	-16(%rsp), %rax
	movb	-25(%rsp), %cl
	movb	%cl, (%rax)
	retq
.Lfunc_end635:
	.size	initckch1, .Lfunc_end635-initckch1
	.cfi_endproc
                                        # -- End function
	.globl	initckch2               # -- Begin function initckch2
	.p2align	4, 0x90
	.type	initckch2,@function
initckch2:                              # @initckch2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movb	(%rdi), %al
	movb	%al, -9(%rsp)
	movzbl	-9(%rsp), %eax
	movb	$1, hashheader+982(%rax)
	movl	hashheader+32(%rip), %ecx
	leal	1(%rcx), %edx
	movl	%edx, hashheader+32(%rip)
	movw	%cx, hashheader+70(%rax,%rax)
	movslq	Trynum(%rip), %rcx
	movb	%al, Try(%rcx)
	incl	Trynum(%rip)
	movb	%al, (%rdi)
	retq
.Lfunc_end636:
	.size	initckch2, .Lfunc_end636-initckch2
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype0           # -- Begin function findfiletype0
	.p2align	4, 0x90
	.type	findfiletype0,@function
findfiletype0:                          # @findfiletype0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rax
	movq	chartypes(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	8(%rcx,%rax,8), %rdi
	movl	$.L.str.5.408, %esi
	callq	strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movq	16(%rsp), %rax
	movl	%ecx, (%rax)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end637:
	.size	findfiletype0, .Lfunc_end637-findfiletype0
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype1           # -- Begin function findfiletype1
	.p2align	4, 0x90
	.type	findfiletype1,@function
findfiletype1:                          # @findfiletype1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end638:
	.size	findfiletype1, .Lfunc_end638-findfiletype1
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype2           # -- Begin function findfiletype2
	.p2align	4, 0x90
	.type	findfiletype2,@function
findfiletype2:                          # @findfiletype2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end639:
	.size	findfiletype2, .Lfunc_end639-findfiletype2
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype3           # -- Begin function findfiletype3
	.p2align	4, 0x90
	.type	findfiletype3,@function
findfiletype3:                          # @findfiletype3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -28(%rsp)
	movslq	-28(%rsp), %rax
	movq	chartypes(%rip), %rcx
	leaq	(%rax,%rax,2), %rdx
	movq	16(%rcx,%rdx,8), %rcx
	movq	%rcx, -24(%rsp)
	movl	%eax, (%rsi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end640:
	.size	findfiletype3, .Lfunc_end640-findfiletype3
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype4           # -- Begin function findfiletype4
	.p2align	4, 0x90
	.type	findfiletype4,@function
findfiletype4:                          # @findfiletype4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rax
	movq	chartypes(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	8(%rcx,%rax,8), %rdi
	movl	$.L.str.5.408, %esi
	callq	strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movq	16(%rsp), %rax
	movl	%ecx, (%rax)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end641:
	.size	findfiletype4, .Lfunc_end641-findfiletype4
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype5           # -- Begin function findfiletype5
	.p2align	4, 0x90
	.type	findfiletype5,@function
findfiletype5:                          # @findfiletype5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -12(%rsp)
	movl	%eax, -28(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end642:
	.size	findfiletype5, .Lfunc_end642-findfiletype5
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype6           # -- Begin function findfiletype6
	.p2align	4, 0x90
	.type	findfiletype6,@function
findfiletype6:                          # @findfiletype6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movslq	-28(%rsp), %rcx
	leaq	1(%rax,%rcx), %rax
	movq	%rax, -24(%rsp)
	movl	%ecx, (%rsi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end643:
	.size	findfiletype6, .Lfunc_end643-findfiletype6
	.cfi_endproc
                                        # -- End function
	.globl	findfiletype7           # -- Begin function findfiletype7
	.p2align	4, 0x90
	.type	findfiletype7,@function
findfiletype7:                          # @findfiletype7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end644:
	.size	findfiletype7, .Lfunc_end644-findfiletype7
	.cfi_endproc
                                        # -- End function
	.globl	linit0                  # -- Begin function linit0
	.p2align	4, 0x90
	.type	linit0,@function
linit0:                                 # @linit0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.365, %esi
	movl	$hashname, %edx
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end645:
	.size	linit0, .Lfunc_end645-linit0
	.cfi_endproc
                                        # -- End function
	.globl	linit1                  # -- Begin function linit1
	.p2align	4, 0x90
	.type	linit1,@function
linit1:                                 # @linit1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.1.366, %esi
	movl	$hashname, %edx
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end646:
	.size	linit1, .Lfunc_end646-linit1
	.cfi_endproc
                                        # -- End function
	.globl	linit2                  # -- Begin function linit2
	.p2align	4, 0x90
	.type	linit2,@function
linit2:                                 # @linit2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.2.367, %esi
	movl	$hashname, %edx
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end647:
	.size	linit2, .Lfunc_end647-linit2
	.cfi_endproc
                                        # -- End function
	.globl	linit3                  # -- Begin function linit3
	.p2align	4, 0x90
	.type	linit3,@function
linit3:                                 # @linit3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	hashsize(%rip), %ecx
	movl	$.L.str.3.368, %esi
	movl	$hashname, %edx
	movl	$3928, %r8d             # imm = 0xF58
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end648:
	.size	linit3, .Lfunc_end648-linit3
	.cfi_endproc
                                        # -- End function
	.globl	linit4                  # -- Begin function linit4
	.p2align	4, 0x90
	.type	linit4,@function
linit4:                                 # @linit4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movzwl	hashheader(%rip), %r8d
	movl	$.L.str.4.369, %esi
	movl	$hashname, %edx
	movl	$38402, %ecx            # imm = 0x9602
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end649:
	.size	linit4, .Lfunc_end649-linit4
	.cfi_endproc
                                        # -- End function
	.globl	linit5                  # -- Begin function linit5
	.p2align	4, 0x90
	.type	linit5,@function
linit5:                                 # @linit5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movzwl	hashheader+3924(%rip), %r8d
	movl	$.L.str.5.370, %esi
	movl	$hashname, %edx
	movl	$38402, %ecx            # imm = 0x9602
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end650:
	.size	linit5, .Lfunc_end650-linit5
	.cfi_endproc
                                        # -- End function
	.globl	linit6                  # -- Begin function linit6
	.p2align	4, 0x90
	.type	linit6,@function
linit6:                                 # @linit6
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movzwl	hashheader+2(%rip), %edx
	movswl	hashheader+4(%rip), %ecx
	movswl	hashheader+6(%rip), %r8d
	movl	$.L.str.6.371, %esi
	movl	$3, %r9d
	movl	$0, %eax
	pushq	$10
	.cfi_adjust_cfa_offset 8
	pushq	$100
	.cfi_adjust_cfa_offset 8
	callq	fprintf
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end651:
	.size	linit6, .Lfunc_end651-linit6
	.cfi_endproc
                                        # -- End function
	.globl	linit7                  # -- Begin function linit7
	.p2align	4, 0x90
	.type	linit7,@function
linit7:                                 # @linit7
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.7.372, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end652:
	.size	linit7, .Lfunc_end652-linit7
	.cfi_endproc
                                        # -- End function
	.globl	linit8                  # -- Begin function linit8
	.p2align	4, 0x90
	.type	linit8,@function
linit8:                                 # @linit8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	hashtbl(%rip), %rax
	movq	$0, 8(%rax)
	movq	hashtbl(%rip), %rax
	movq	$0, (%rax)
	movq	hashtbl(%rip), %rax
	andq	$-201326593, 16(%rax)   # imm = 0xF3FFFFFF
	movl	hashheader+16(%rip), %edi
	callq	malloc
	movq	%rax, hashstrings(%rip)
	popq	%rax
	retq
.Lfunc_end653:
	.size	linit8, .Lfunc_end653-linit8
	.cfi_endproc
                                        # -- End function
	.globl	linit9                  # -- Begin function linit9
	.p2align	4, 0x90
	.type	linit9,@function
linit9:                                 # @linit9
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	hashheader+20(%rip), %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, hashtbl(%rip)
	movl	hashheader+20(%rip), %eax
	movl	%eax, hashsize(%rip)
	movl	hashheader+12(%rip), %edi
	callq	malloc
	movq	%rax, hashstrings(%rip)
	popq	%rax
	retq
.Lfunc_end654:
	.size	linit9, .Lfunc_end654-linit9
	.cfi_endproc
                                        # -- End function
	.globl	linit10                 # -- Begin function linit10
	.p2align	4, 0x90
	.type	linit10,@function
linit10:                                # @linit10
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.7.372, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end655:
	.size	linit10, .Lfunc_end655-linit10
	.cfi_endproc
                                        # -- End function
	.globl	linit11                 # -- Begin function linit11
	.p2align	4, 0x90
	.type	linit11,@function
linit11:                                # @linit11
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.8.373, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end656:
	.size	linit11, .Lfunc_end656-linit11
	.cfi_endproc
                                        # -- End function
	.globl	linit12                 # -- Begin function linit12
	.p2align	4, 0x90
	.type	linit12,@function
linit12:                                # @linit12
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	movslq	hashheader+12(%rip), %rax
	movslq	hashheader+16(%rip), %rcx
	subq	%rcx, %rax
	movslq	hashheader+20(%rip), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	lseek
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end657:
	.size	linit12, .Lfunc_end657-linit12
	.cfi_endproc
                                        # -- End function
	.globl	linit13                 # -- Begin function linit13
	.p2align	4, 0x90
	.type	linit13,@function
linit13:                                # @linit13
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.8.373, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end658:
	.size	linit13, .Lfunc_end658-linit13
	.cfi_endproc
                                        # -- End function
	.globl	linit14                 # -- Begin function linit14
	.p2align	4, 0x90
	.type	linit14,@function
linit14:                                # @linit14
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.8.373, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end659:
	.size	linit14, .Lfunc_end659-linit14
	.cfi_endproc
                                        # -- End function
	.globl	linit15                 # -- Begin function linit15
	.p2align	4, 0x90
	.type	linit15,@function
linit15:                                # @linit15
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	hashsize(%rip), %eax
	movl	%eax, -12(%rsp)
	movq	hashtbl(%rip), %rcx
	movq	%rcx, -32(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end660:
	.size	linit15, .Lfunc_end660-linit15
	.cfi_endproc
                                        # -- End function
	.globl	linit16                 # -- Begin function linit16
	.p2align	4, 0x90
	.type	linit16,@function
linit16:                                # @linit16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	$0, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end661:
	.size	linit16, .Lfunc_end661-linit16
	.cfi_endproc
                                        # -- End function
	.globl	linit17                 # -- Begin function linit17
	.p2align	4, 0x90
	.type	linit17,@function
linit17:                                # @linit17
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movslq	8(%rax), %rcx
	addq	hashstrings(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end662:
	.size	linit17, .Lfunc_end662-linit17
	.cfi_endproc
                                        # -- End function
	.globl	linit18                 # -- Begin function linit18
	.p2align	4, 0x90
	.type	linit18,@function
linit18:                                # @linit18
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end663:
	.size	linit18, .Lfunc_end663-linit18
	.cfi_endproc
                                        # -- End function
	.globl	linit19                 # -- Begin function linit19
	.p2align	4, 0x90
	.type	linit19,@function
linit19:                                # @linit19
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movslq	(%rax), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	hashtbl(%rip), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end664:
	.size	linit19, .Lfunc_end664-linit19
	.cfi_endproc
                                        # -- End function
	.globl	linit20                 # -- Begin function linit20
	.p2align	4, 0x90
	.type	linit20,@function
linit20:                                # @linit20
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$24, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end665:
	.size	linit20, .Lfunc_end665-linit20
	.cfi_endproc
                                        # -- End function
	.globl	linit21                 # -- Begin function linit21
	.p2align	4, 0x90
	.type	linit21,@function
linit21:                                # @linit21
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	numsflags(%rip), %eax
	addl	numpflags(%rip), %eax
	movl	%eax, -12(%rsp)
	movq	sflaglist(%rip), %rcx
	movq	%rcx, -32(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end666:
	.size	linit21, .Lfunc_end666-linit21
	.cfi_endproc
                                        # -- End function
	.globl	linit22                 # -- Begin function linit22
	.p2align	4, 0x90
	.type	linit22,@function
linit22:                                # @linit22
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movslq	(%rax), %rcx
	addq	hashstrings(%rip), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end667:
	.size	linit22, .Lfunc_end667-linit22
	.cfi_endproc
                                        # -- End function
	.globl	linit23                 # -- Begin function linit23
	.p2align	4, 0x90
	.type	linit23,@function
linit23:                                # @linit23
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end668:
	.size	linit23, .Lfunc_end668-linit23
	.cfi_endproc
                                        # -- End function
	.globl	linit24                 # -- Begin function linit24
	.p2align	4, 0x90
	.type	linit24,@function
linit24:                                # @linit24
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movslq	8(%rax), %rcx
	addq	hashstrings(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end669:
	.size	linit24, .Lfunc_end669-linit24
	.cfi_endproc
                                        # -- End function
	.globl	linit25                 # -- Begin function linit25
	.p2align	4, 0x90
	.type	linit25,@function
linit25:                                # @linit25
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	$0, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end670:
	.size	linit25, .Lfunc_end670-linit25
	.cfi_endproc
                                        # -- End function
	.globl	linit26                 # -- Begin function linit26
	.p2align	4, 0x90
	.type	linit26,@function
linit26:                                # @linit26
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	$256, %eax              # imm = 0x100
	addq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end671:
	.size	linit26, .Lfunc_end671-linit26
	.cfi_endproc
                                        # -- End function
	.globl	linit27                 # -- Begin function linit27
	.p2align	4, 0x90
	.type	linit27,@function
linit27:                                # @linit27
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	numsflags(%rip), %eax
	movl	%eax, -12(%rsp)
	movq	sflaglist(%rip), %rcx
	movq	%rcx, -32(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end672:
	.size	linit27, .Lfunc_end672-linit27
	.cfi_endproc
                                        # -- End function
	.globl	linit28                 # -- Begin function linit28
	.p2align	4, 0x90
	.type	linit28,@function
linit28:                                # @linit28
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -48(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -16(%rsp)
	movq	8(%rax), %rcx
	movswq	20(%rax), %rsi
	leaq	-1(%rcx,%rsi), %rdi
	movq	%rdi, -48(%rsp)
	movzbl	-1(%rcx,%rsi), %ecx
	shlq	$4, %rcx
	leaq	sflagindex(%rcx), %rcx
	movq	%rcx, -40(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end673:
	.size	linit28, .Lfunc_end673-linit28
	.cfi_endproc
                                        # -- End function
	.globl	linit29                 # -- Begin function linit29
	.p2align	4, 0x90
	.type	linit29,@function
linit29:                                # @linit29
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end674:
	.size	linit29, .Lfunc_end674-linit29
	.cfi_endproc
                                        # -- End function
	.globl	linit30                 # -- Begin function linit30
	.p2align	4, 0x90
	.type	linit30,@function
linit30:                                # @linit30
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, -16(%rsp)
	movzbl	-1(%rcx), %ecx
	shlq	$4, %rcx
	addq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rdx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end675:
	.size	linit30, .Lfunc_end675-linit30
	.cfi_endproc
                                        # -- End function
	.globl	linit31                 # -- Begin function linit31
	.p2align	4, 0x90
	.type	linit31,@function
linit31:                                # @linit31
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end676:
	.size	linit31, .Lfunc_end676-linit31
	.cfi_endproc
                                        # -- End function
	.globl	linit32                 # -- Begin function linit32
	.p2align	4, 0x90
	.type	linit32,@function
linit32:                                # @linit32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.9.374, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end677:
	.size	linit32, .Lfunc_end677-linit32
	.cfi_endproc
                                        # -- End function
	.globl	linit33                 # -- Begin function linit33
	.p2align	4, 0x90
	.type	linit33,@function
linit33:                                # @linit33
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movl	$0, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end678:
	.size	linit33, .Lfunc_end678-linit33
	.cfi_endproc
                                        # -- End function
	.globl	linit34                 # -- Begin function linit34
	.p2align	4, 0x90
	.type	linit34,@function
linit34:                                # @linit34
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	decl	%ecx
	movl	%ecx, -12(%rsp)
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end679:
	.size	linit34, .Lfunc_end679-linit34
	.cfi_endproc
                                        # -- End function
	.globl	linit35                 # -- Begin function linit35
	.p2align	4, 0x90
	.type	linit35,@function
linit35:                                # @linit35
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	numpflags(%rip), %eax
	movl	%eax, -12(%rsp)
	movq	pflaglist(%rip), %rcx
	movq	%rcx, -32(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end680:
	.size	linit35, .Lfunc_end680-linit35
	.cfi_endproc
                                        # -- End function
	.globl	linit36                 # -- Begin function linit36
	.p2align	4, 0x90
	.type	linit36,@function
linit36:                                # @linit36
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -48(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -16(%rsp)
	movq	8(%rax), %rcx
	leaq	1(%rcx), %rsi
	movq	%rsi, -48(%rsp)
	movzbl	(%rcx), %ecx
	shlq	$4, %rcx
	leaq	pflagindex(%rcx), %rcx
	movq	%rcx, -40(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end681:
	.size	linit36, .Lfunc_end681-linit36
	.cfi_endproc
                                        # -- End function
	.globl	linit37                 # -- Begin function linit37
	.p2align	4, 0x90
	.type	linit37,@function
linit37:                                # @linit37
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end682:
	.size	linit37, .Lfunc_end682-linit37
	.cfi_endproc
                                        # -- End function
	.globl	linit38                 # -- Begin function linit38
	.p2align	4, 0x90
	.type	linit38,@function
linit38:                                # @linit38
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -16(%rsp)
	movzbl	(%rcx), %ecx
	shlq	$4, %rcx
	addq	(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rdx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end683:
	.size	linit38, .Lfunc_end683-linit38
	.cfi_endproc
                                        # -- End function
	.globl	linit39                 # -- Begin function linit39
	.p2align	4, 0x90
	.type	linit39,@function
linit39:                                # @linit39
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end684:
	.size	linit39, .Lfunc_end684-linit39
	.cfi_endproc
                                        # -- End function
	.globl	linit40                 # -- Begin function linit40
	.p2align	4, 0x90
	.type	linit40,@function
linit40:                                # @linit40
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	$.L.str.9.374, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end685:
	.size	linit40, .Lfunc_end685-linit40
	.cfi_endproc
                                        # -- End function
	.globl	linit41                 # -- Begin function linit41
	.p2align	4, 0x90
	.type	linit41,@function
linit41:                                # @linit41
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movl	$0, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end686:
	.size	linit41, .Lfunc_end686-linit41
	.cfi_endproc
                                        # -- End function
	.globl	linit42                 # -- Begin function linit42
	.p2align	4, 0x90
	.type	linit42,@function
linit42:                                # @linit42
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	decl	%ecx
	movl	%ecx, -12(%rsp)
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end687:
	.size	linit42, .Lfunc_end687-linit42
	.cfi_endproc
                                        # -- End function
	.globl	linit43                 # -- Begin function linit43
	.p2align	4, 0x90
	.type	linit43,@function
linit43:                                # @linit43
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.9.374, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$-1, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end688:
	.size	linit43, .Lfunc_end688-linit43
	.cfi_endproc
                                        # -- End function
	.globl	linit44                 # -- Begin function linit44
	.p2align	4, 0x90
	.type	linit44,@function
linit44:                                # @linit44
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	$0, -12(%rsp)
	movl	hashheader+44(%rip), %eax
	movl	%eax, -28(%rsp)
	movl	$0, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end689:
	.size	linit44, .Lfunc_end689-linit44
	.cfi_endproc
                                        # -- End function
	.globl	linit45                 # -- Begin function linit45
	.p2align	4, 0x90
	.type	linit45,@function
linit45:                                # @linit45
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 4(%rsp)
	movq	%rsi, 8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, (%rsp)
	movslq	(%rsp), %rax
	addq	hashstrings(%rip), %rax
	movslq	4(%rsp), %rcx
	movq	chartypes(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, (%rdx,%rcx,8)
	movslq	4(%rsp), %rax
	movq	chartypes(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movl	(%rsp), %ecx
	leal	1(%rcx,%rax), %eax
	movl	%eax, (%rsp)
	movslq	(%rsp), %rax
	addq	hashstrings(%rip), %rax
	movslq	4(%rsp), %rcx
	movq	chartypes(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, 8(%rdx,%rcx,8)
	movslq	4(%rsp), %rax
	movq	chartypes(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	8(%rcx,%rax,8), %rdi
	callq	strlen
	movl	(%rsp), %ecx
	leal	1(%rcx,%rax), %eax
	movl	%eax, (%rsp)
	movslq	(%rsp), %rax
	addq	hashstrings(%rip), %rax
	movslq	4(%rsp), %rcx
	movq	chartypes(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rax, 16(%rdx,%rcx,8)
	movq	8(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	16(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end690:
	.size	linit45, .Lfunc_end690-linit45
	.cfi_endproc
                                        # -- End function
	.globl	linit46                 # -- Begin function linit46
	.p2align	4, 0x90
	.type	linit46,@function
linit46:                                # @linit46
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movslq	12(%rsp), %rdi
	addq	hashstrings(%rip), %rdi
	callq	strlen
	movl	12(%rsp), %ecx
	leal	1(%rcx,%rax), %eax
	movl	%eax, 12(%rsp)
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end691:
	.size	linit46, .Lfunc_end691-linit46
	.cfi_endproc
                                        # -- End function
	.globl	linit47                 # -- Begin function linit47
	.p2align	4, 0x90
	.type	linit47,@function
linit47:                                # @linit47
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end692:
	.size	linit47, .Lfunc_end692-linit47
	.cfi_endproc
                                        # -- End function
	.globl	linit48                 # -- Begin function linit48
	.p2align	4, 0x90
	.type	linit48,@function
linit48:                                # @linit48
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end693:
	.size	linit48, .Lfunc_end693-linit48
	.cfi_endproc
                                        # -- End function
	.globl	linit49                 # -- Begin function linit49
	.p2align	4, 0x90
	.type	linit49,@function
linit49:                                # @linit49
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	$1, inited(%rip)
	movl	$0, -12(%rsp)
	movl	$0, (%rdi)
	retq
.Lfunc_end694:
	.size	linit49, .Lfunc_end694-linit49
	.cfi_endproc
                                        # -- End function
	.globl	usage0                  # -- Begin function usage0
	.p2align	4, 0x90
	.type	usage0,@function
usage0:                                 # @usage0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.132, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.133, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.134, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.135, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.136, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.137, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Cmd(%rip), %rdx
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end695:
	.size	usage0, .Lfunc_end695-usage0
	.cfi_endproc
                                        # -- End function
	.globl	guardMe                 # -- Begin function guardMe
	.p2align	4, 0x90
	.type	guardMe,@function
guardMe:                                # @guardMe
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1072, %rsp             # imm = 0x430
	movl	%edi, -28(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -20(%rbp)
	movl	-28(%rbp), %eax
	movq	%rax, -48(%rbp)
	movl	$0, -12(%rbp)
	movb	$0, -1(%rbp)
.LBB696_1:                              # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB696_3
# %bb.2:                                #   in Loop: Header=BB696_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB696_1
.LBB696_3:
	movzbl	-1(%rbp), %eax
	movl	-20(%rbp), %ecx
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB696_9
# %bb.4:
	movabsq	$.L.str.191, %rdi
	movabsq	$.L.str.1.192, %rsi
	movb	$0, %al
	callq	printf
	leaq	-1072(%rbp), %rdi
	movl	$128, %esi
	callq	backtrace
	leaq	-1072(%rbp), %rdi
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	callq	backtrace_symbols
	movq	%rax, -40(%rbp)
	movl	$0, -8(%rbp)
.LBB696_5:                              # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB696_8
# %bb.6:                                #   in Loop: Header=BB696_5 Depth=1
	movabsq	$.L.str.2.193, %rdi
	movq	-40(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movb	$0, %al
	callq	printf
# %bb.7:                                #   in Loop: Header=BB696_5 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB696_5
.LBB696_8:
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	free
.LBB696_9:
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbp
	retq
.Lfunc_end696:
	.size	guardMe, .Lfunc_end696-guardMe
	.cfi_endproc
                                        # -- End function
	.globl	logHash                 # -- Begin function logHash
	.p2align	4, 0x90
	.type	logHash,@function
logHash:                                # @logHash
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end697:
	.size	logHash, .Lfunc_end697-logHash
	.cfi_endproc
                                        # -- End function
	.type	minimenusize,@object    # @minimenusize
	.data
	.globl	minimenusize
	.p2align	2
minimenusize:
	.long	2                       # 0x2
	.size	minimenusize, 4

	.type	eflag,@object           # @eflag
	.bss
	.globl	eflag
	.p2align	2
eflag:
	.long	0                       # 0x0
	.size	eflag, 4

	.type	dumpflag,@object        # @dumpflag
	.globl	dumpflag
	.p2align	2
dumpflag:
	.long	0                       # 0x0
	.size	dumpflag, 4

	.type	fflag,@object           # @fflag
	.globl	fflag
	.p2align	2
fflag:
	.long	0                       # 0x0
	.size	fflag, 4

	.type	sflag,@object           # @sflag
	.globl	sflag
	.p2align	2
sflag:
	.long	0                       # 0x0
	.size	sflag, 4

	.type	vflag,@object           # @vflag
	.globl	vflag
	.p2align	2
vflag:
	.long	0                       # 0x0
	.size	vflag, 4

	.type	xflag,@object           # @xflag
	.globl	xflag
	.p2align	2
xflag:
	.long	0                       # 0x0
	.size	xflag, 4

	.type	deftflag,@object        # @deftflag
	.data
	.globl	deftflag
	.p2align	2
deftflag:
	.long	4294967295              # 0xffffffff
	.size	deftflag, 4

	.type	tflag,@object           # @tflag
	.bss
	.globl	tflag
	.p2align	2
tflag:
	.long	0                       # 0x0
	.size	tflag, 4

	.type	prefstringchar,@object  # @prefstringchar
	.data
	.globl	prefstringchar
	.p2align	2
prefstringchar:
	.long	4294967295              # 0xffffffff
	.size	prefstringchar, 4

	.type	terse,@object           # @terse
	.bss
	.globl	terse
	.p2align	2
terse:
	.long	0                       # 0x0
	.size	terse, 4

	.type	tempfile,@object        # @tempfile
	.globl	tempfile
	.p2align	4
tempfile:
	.zero	4096
	.size	tempfile, 4096

	.type	minword,@object         # @minword
	.data
	.globl	minword
	.p2align	2
minword:
	.long	1                       # 0x1
	.size	minword, 4

	.type	sortit,@object          # @sortit
	.globl	sortit
	.p2align	2
sortit:
	.long	1                       # 0x1
	.size	sortit, 4

	.type	compoundflag,@object    # @compoundflag
	.globl	compoundflag
	.p2align	2
compoundflag:
	.long	4294967295              # 0xffffffff
	.size	compoundflag, 4

	.type	tryhardflag,@object     # @tryhardflag
	.globl	tryhardflag
	.p2align	2
tryhardflag:
	.long	4294967295              # 0xffffffff
	.size	tryhardflag, 4

	.type	currentfile,@object     # @currentfile
	.bss
	.globl	currentfile
	.p2align	3
currentfile:
	.quad	0
	.size	currentfile, 8

	.type	math_mode,@object       # @math_mode
	.globl	math_mode
	.p2align	2
math_mode:
	.long	0                       # 0x0
	.size	math_mode, 4

	.type	LaTeX_Mode,@object      # @LaTeX_Mode
	.data
	.globl	LaTeX_Mode
LaTeX_Mode:
	.byte	80                      # 0x50
	.size	LaTeX_Mode, 1

	.type	Trynum,@object          # @Trynum
	.comm	Trynum,4,4
	.type	hashname,@object        # @hashname
	.comm	hashname,4096,16
	.type	incfileflag,@object     # @incfileflag
	.comm	incfileflag,4,4
	.type	aflag,@object           # @aflag
	.comm	aflag,4,4
	.type	nodictflag,@object      # @nodictflag
	.comm	nodictflag,4,4
	.type	cflag,@object           # @cflag
	.comm	cflag,4,4
	.type	lflag,@object           # @lflag
	.comm	lflag,4,4
	.type	askfilename,@object     # @askfilename
	.comm	askfilename,8,8
	.type	contextsize,@object     # @contextsize
	.comm	contextsize,4,4
	.type	defdupchar,@object      # @defdupchar
	.comm	defdupchar,4,4
	.type	hashheader,@object      # @hashheader
	.comm	hashheader,3928,4
	.type	infile,@object          # @infile
	.comm	infile,8,8
	.type	outfile,@object         # @outfile
	.comm	outfile,8,8
	.type	BC,@object              # @BC
	.comm	BC,8,8
	.type	cd,@object              # @cd
	.comm	cd,8,8
	.type	cl,@object              # @cl
	.comm	cl,8,8
	.type	cm,@object              # @cm
	.comm	cm,8,8
	.type	ho,@object              # @ho
	.comm	ho,8,8
	.type	nd,@object              # @nd
	.comm	nd,8,8
	.type	so,@object              # @so
	.comm	so,8,8
	.type	se,@object              # @se
	.comm	se,8,8
	.type	sg,@object              # @sg
	.comm	sg,4,4
	.type	ti,@object              # @ti
	.comm	ti,8,8
	.type	te,@object              # @te
	.comm	te,8,8
	.type	li,@object              # @li
	.comm	li,4,4
	.type	co,@object              # @co
	.comm	co,4,4
	.type	contextbufs,@object     # @contextbufs
	.comm	contextbufs,81920,16
	.type	contextoffset,@object   # @contextoffset
	.comm	contextoffset,4,4
	.type	currentchar,@object     # @currentchar
	.comm	currentchar,8,8
	.type	ctoken,@object          # @ctoken
	.comm	ctoken,120,16
	.type	itoken,@object          # @itoken
	.comm	itoken,120,16
	.type	termcap,@object         # @termcap
	.comm	termcap,2048,16
	.type	termstr,@object         # @termstr
	.comm	termstr,2048,16
	.type	termptr,@object         # @termptr
	.comm	termptr,8,8
	.type	numhits,@object         # @numhits
	.comm	numhits,4,4
	.type	hits,@object            # @hits
	.comm	hits,240,16
	.type	hashstrings,@object     # @hashstrings
	.comm	hashstrings,8,8
	.type	hashtbl,@object         # @hashtbl
	.comm	hashtbl,8,8
	.type	hashsize,@object        # @hashsize
	.comm	hashsize,4,4
	.type	uerasechar,@object      # @uerasechar
	.comm	uerasechar,4,4
	.type	ukillchar,@object       # @ukillchar
	.comm	ukillchar,4,4
	.type	laststringch,@object    # @laststringch
	.comm	laststringch,4,4
	.type	numpflags,@object       # @numpflags
	.comm	numpflags,4,4
	.type	numsflags,@object       # @numsflags
	.comm	numsflags,4,4
	.type	pflagindex,@object      # @pflagindex
	.comm	pflagindex,3648,16
	.type	pflaglist,@object       # @pflaglist
	.comm	pflaglist,8,8
	.type	sflagindex,@object      # @sflagindex
	.comm	sflagindex,3648,16
	.type	sflaglist,@object       # @sflaglist
	.comm	sflaglist,8,8
	.type	chartypes,@object       # @chartypes
	.comm	chartypes,8,8
	.type	changes,@object         # @changes
	.comm	changes,4,4
	.type	readonly,@object        # @readonly
	.comm	readonly,4,4
	.type	quit,@object            # @quit
	.comm	quit,4,4
	.type	possibilities,@object   # @possibilities
	.comm	possibilities,12000,16
	.type	pcount,@object          # @pcount
	.comm	pcount,4,4
	.type	maxposslen,@object      # @maxposslen
	.comm	maxposslen,4,4
	.type	easypossibilities,@object # @easypossibilities
	.comm	easypossibilities,4,4
	.type	Try,@object             # @Try
	.comm	Try,228,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"COLUMNS"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LINES"
	.size	.L.str.1, 6

	.type	osbuf,@object           # @osbuf
	.local	osbuf
	.comm	osbuf,60,4
	.type	termchanged,@object     # @termchanged
	.local	termchanged
	.comm	termchanged,4,4
	.type	sbuf,@object            # @sbuf
	.local	sbuf
	.comm	sbuf,60,4
	.type	oldint,@object          # @oldint
	.local	oldint
	.comm	oldint,8,8
	.type	oldterm,@object         # @oldterm
	.local	oldterm
	.comm	oldterm,8,8
	.type	oldttin,@object         # @oldttin
	.local	oldttin
	.comm	oldttin,8,8
	.type	oldttou,@object         # @oldttou
	.local	oldttou
	.comm	oldttou,8,8
	.type	oldtstp,@object         # @oldtstp
	.local	oldtstp
	.comm	oldtstp,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Can't deal with non-interactive use yet.\n"
	.size	.L.str.3, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Screen too small:  need at least %d lines\n"
	.size	.L.str.2, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Couldn't fork, try later.\r\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n-- Type space to continue --"
	.size	.L.str.5, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DICTIONARY"
	.size	.L.str.13, 11

	.type	main.libdictname,@object # @main.libdictname
	.local	main.libdictname
	.comm	main.libdictname,13,1
	.type	.L.str.3.16,@object     # @.str.3.16
.L.str.3.16:
	.asciz	".hash"
	.size	.L.str.3.16, 6

	.type	LibDict,@object         # @LibDict
	.local	LibDict
	.comm	LibDict,8,8
	.type	.L.str.1.14,@object     # @.str.1.14
.L.str.1.14:
	.asciz	"%s/%s"
	.size	.L.str.1.14, 6

	.type	.L.str.2.15,@object     # @.str.2.15
.L.str.2.15:
	.asciz	"."
	.size	.L.str.2.15, 2

	.type	.L.str.4.17,@object     # @.str.4.17
.L.str.4.17:
	.asciz	"english.hash"
	.size	.L.str.4.17, 13

	.type	Version_ID,@object      # @Version_ID
	.data
	.p2align	4
Version_ID:
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.143
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.143
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	0
	.size	Version_ID, 320

	.type	.L.str.5.18,@object     # @.str.5.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5.18:
	.asciz	"(#) "
	.size	.L.str.5.18, 5

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"nroff"
	.size	.L.str.127, 6

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"tex"
	.size	.L.str.128, 4

	.type	main.outbuf,@object     # @main.outbuf
	.local	main.outbuf
	.comm	main.outbuf,8192,16
	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	".tex"
	.size	.L.str.176, 5

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"r"
	.size	.L.str.177, 2

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"/tmp/ispellXXXXXX"
	.size	.L.str.115, 18

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"w"
	.size	.L.str.180, 2

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"%.*s%s"
	.size	.L.str.184, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".bak"
	.size	.L.str.10, 5

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Can't create %s\r\n"
	.size	.L.str.181, 18

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"temporary file disappeared (%s)\r\n"
	.size	.L.str.183, 34

	.type	newwords,@object        # @newwords
	.local	newwords
	.comm	newwords,4,4
	.type	personaldict,@object    # @personaldict
	.local	personaldict
	.comm	personaldict,4096,16
	.type	.L.str.14.442,@object   # @.str.14.442
.L.str.14.442:
	.asciz	"w"
	.size	.L.str.14.442, 2

	.type	dictf,@object           # @dictf
	.local	dictf
	.comm	dictf,8,8
	.type	hcount,@object          # @hcount
	.local	hcount
	.comm	hcount,4,4
	.type	has_marker,@object      # @has_marker
	.local	has_marker
	.comm	has_marker,4,4
	.type	.L.str.7.403,@object    # @.str.7.403
.L.str.7.403:
	.asciz	"\n"
	.size	.L.str.7.403, 2

	.type	.L.str.6.402,@object    # @.str.6.402
.L.str.6.402:
	.asciz	"%s"
	.size	.L.str.6.402, 3

	.type	ichartosstr.out,@object # @ichartosstr.out
	.local	ichartosstr.out
	.comm	ichartosstr.out,184,16
	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.385, 51

	.type	.L.str.1.386,@object    # @.str.1.386
.L.str.1.386:
	.asciz	"makedent.c"
	.size	.L.str.1.386, 11

	.type	pershtab,@object        # @pershtab
	.local	pershtab
	.comm	pershtab,8,8
	.type	pershsize,@object       # @pershsize
	.local	pershsize
	.comm	pershsize,4,4
	.type	.L.str.15.443,@object   # @.str.15.443
.L.str.15.443:
	.asciz	"Can't create %s\r\n"
	.size	.L.str.15.443, 18

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"if t"
	.size	.L.str.284, 5

	.type	.L.str.1.285,@object    # @.str.1.285
.L.str.1.285:
	.asciz	"if n"
	.size	.L.str.1.285, 5

	.type	.L.str.2.286,@object    # @.str.2.286
.L.str.2.286:
	.asciz	"ds "
	.size	.L.str.2.286, 4

	.type	.L.str.3.287,@object    # @.str.3.287
.L.str.3.287:
	.asciz	"de "
	.size	.L.str.3.287, 4

	.type	.L.str.4.288,@object    # @.str.4.288
.L.str.4.288:
	.asciz	"nr "
	.size	.L.str.4.288, 4

	.type	.L.str.15.299,@object   # @.str.15.299
.L.str.15.299:
	.asciz	"%s"
	.size	.L.str.15.299, 3

	.type	.L.str.22.251,@object   # @.str.22.251
.L.str.22.251:
	.asciz	"    %s"
	.size	.L.str.22.251, 7

	.type	.L.str.24.253,@object   # @.str.24.253
.L.str.24.253:
	.asciz	" %s"
	.size	.L.str.24.253, 4

	.type	.L.str.25.254,@object   # @.str.25.254
.L.str.25.254:
	.asciz	"[READONLY]"
	.size	.L.str.25.254, 11

	.type	.L.str.20.210,@object   # @.str.20.210
.L.str.20.210:
	.asciz	"\r\n\r\n"
	.size	.L.str.20.210, 5

	.type	.L.str.31.260,@object   # @.str.31.260
.L.str.31.260:
	.asciz	"\r\n"
	.size	.L.str.31.260, 3

	.type	.L.str.33.262,@object   # @.str.33.262
.L.str.33.262:
	.asciz	"Replace with: "
	.size	.L.str.33.262, 15

	.type	.L.str.37.266,@object   # @.str.37.266
.L.str.37.266:
	.asciz	"Lookup string ('*' is wildcard): "
	.size	.L.str.37.266, 34

	.type	lookharder.look,@object # @lookharder.look
	.data
	.p2align	2
lookharder.look:
	.long	4294967295              # 0xffffffff
	.size	lookharder.look, 4

	.type	.L.str.80.267,@object   # @.str.80.267
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80.267:
	.asciz	"%s %s %s"
	.size	.L.str.80.267, 9

	.type	.L.str.81.268,@object   # @.str.81.268
.L.str.81.268:
	.asciz	"look -df"
	.size	.L.str.81.268, 9

	.type	.L.str.82.269,@object   # @.str.82.269
.L.str.82.269:
	.asciz	"/usr/dict/words"
	.size	.L.str.82.269, 16

	.type	.L.str.83.270,@object   # @.str.83.270
.L.str.83.270:
	.asciz	".*"
	.size	.L.str.83.270, 3

	.type	.L.str.84.271,@object   # @.str.84.271
.L.str.84.271:
	.asciz	"%s ^%s$ %s"
	.size	.L.str.84.271, 11

	.type	.L.str.85.272,@object   # @.str.85.272
.L.str.85.272:
	.asciz	"/usr/bin/egrep -i"
	.size	.L.str.85.272, 18

	.type	.L.str.36.265,@object   # @.str.36.265
.L.str.36.265:
	.asciz	"%s"
	.size	.L.str.36.265, 3

	.type	.L.str.34.263,@object   # @.str.34.263
.L.str.34.263:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.34.263, 51

	.type	.L.str.35.264,@object   # @.str.35.264
.L.str.35.264:
	.asciz	"correct.c"
	.size	.L.str.35.264, 10

	.type	TeX_comment,@object     # @TeX_comment
	.local	TeX_comment
	.comm	TeX_comment,4,4
	.type	save_math_mode,@object  # @save_math_mode
	.local	save_math_mode
	.comm	save_math_mode,4,4
	.type	save_LaTeX_Mode,@object # @save_LaTeX_Mode
	.local	save_LaTeX_Mode
	.comm	save_LaTeX_Mode,1,1
	.type	.L.str.32.261,@object   # @.str.32.261
.L.str.32.261:
	.asciz	"%s "
	.size	.L.str.32.261, 4

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Whenever a word is found that is not in the dictionary,\r\n"
	.size	.L.str.190, 58

	.type	.L.str.1.191,@object    # @.str.1.191
.L.str.1.191:
	.asciz	"it is printed on the first line of the screen.  If the dictionary\r\n"
	.size	.L.str.1.191, 68

	.type	.L.str.2.192,@object    # @.str.2.192
.L.str.2.192:
	.asciz	"contains any similar words, they are listed with a number\r\n"
	.size	.L.str.2.192, 60

	.type	.L.str.3.193,@object    # @.str.3.193
.L.str.3.193:
	.asciz	"next to each one.  You have the option of replacing the word\r\n"
	.size	.L.str.3.193, 63

	.type	.L.str.4.194,@object    # @.str.4.194
.L.str.4.194:
	.asciz	"completely, or choosing one of the suggested words.\r\n"
	.size	.L.str.4.194, 54

	.type	.L.str.5.195,@object    # @.str.5.195
.L.str.5.195:
	.zero	1
	.size	.L.str.5.195, 1

	.type	.L.str.6.196,@object    # @.str.6.196
.L.str.6.196:
	.asciz	"\r\nCommands are:\r\n\r\n"
	.size	.L.str.6.196, 20

	.type	.L.str.7.197,@object    # @.str.7.197
.L.str.7.197:
	.asciz	"R       Replace the misspelled word completely.\r\n"
	.size	.L.str.7.197, 50

	.type	.L.str.8.198,@object    # @.str.8.198
.L.str.8.198:
	.asciz	"Space   Accept the word this time only.\r\n"
	.size	.L.str.8.198, 42

	.type	.L.str.9.199,@object    # @.str.9.199
.L.str.9.199:
	.asciz	"A       Accept the word for the rest of this session.\r\n"
	.size	.L.str.9.199, 56

	.type	.L.str.10.200,@object   # @.str.10.200
.L.str.10.200:
	.asciz	"I       Accept the word, and put it in your private dictionary.\r\n"
	.size	.L.str.10.200, 66

	.type	.L.str.11.201,@object   # @.str.11.201
.L.str.11.201:
	.asciz	"U       Accept and add lowercase version to private dictionary.\r\n"
	.size	.L.str.11.201, 66

	.type	.L.str.12.202,@object   # @.str.12.202
.L.str.12.202:
	.asciz	"0-n     Replace with one of the suggested words.\r\n"
	.size	.L.str.12.202, 51

	.type	.L.str.13.203,@object   # @.str.13.203
.L.str.13.203:
	.asciz	"L       Look up words in system dictionary.\r\n"
	.size	.L.str.13.203, 46

	.type	.L.str.14.204,@object   # @.str.14.204
.L.str.14.204:
	.asciz	"X       Write the rest of this file, ignoring misspellings,\r\n        and start next file.\r\n"
	.size	.L.str.14.204, 92

	.type	.L.str.15.205,@object   # @.str.15.205
.L.str.15.205:
	.asciz	"Q       Quit immediately.  Asks for confirmation.\r\n        Leaves file unchanged.\r\n"
	.size	.L.str.15.205, 84

	.type	.L.str.16.206,@object   # @.str.16.206
.L.str.16.206:
	.asciz	"!       Shell escape.\r\n"
	.size	.L.str.16.206, 24

	.type	.L.str.17.207,@object   # @.str.17.207
.L.str.17.207:
	.asciz	"^L      Redraw screen.\r\n"
	.size	.L.str.17.207, 25

	.type	.L.str.18.208,@object   # @.str.18.208
.L.str.18.208:
	.asciz	"^Z      Suspend program.\r\n"
	.size	.L.str.18.208, 27

	.type	.L.str.19.209,@object   # @.str.19.209
.L.str.19.209:
	.asciz	"?       Show this help screen.\r\n"
	.size	.L.str.19.209, 33

	.type	.L.str.21.211,@object   # @.str.21.211
.L.str.21.211:
	.asciz	"-- Type space to continue --"
	.size	.L.str.21.211, 29

	.type	cantexpand,@object      # @cantexpand
	.local	cantexpand
	.comm	cantexpand,4,4
	.type	goodsizes,@object       # @goodsizes
	.data
	.p2align	4
goodsizes:
	.long	53                      # 0x35
	.long	223                     # 0xdf
	.long	907                     # 0x38b
	.long	3631                    # 0xe2f
	.size	goodsizes, 16

	.type	.L.str.12.433,@object   # @.str.12.433
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12.433:
	.asciz	"Ran out of space for personal dictionary\r\n"
	.size	.L.str.12.433, 43

	.type	.L.str.3.390,@object    # @.str.3.390
.L.str.3.390:
	.asciz	"\r\nCouldn't allocate space for word '%s'\r\n"
	.size	.L.str.3.390, 42

	.type	.L.str.17.435,@object   # @.str.17.435
.L.str.17.435:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.17.435, 51

	.type	.L.str.18.436,@object   # @.str.18.436
.L.str.18.436:
	.asciz	"tree.c"
	.size	.L.str.18.436, 7

	.type	.L.str.10.377,@object   # @.str.10.377
.L.str.10.377:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.10.377, 51

	.type	.L.str.11.378,@object   # @.str.11.378
.L.str.11.378:
	.asciz	"lookup.c"
	.size	.L.str.11.378, 9

	.type	.L.str.4.391,@object    # @.str.4.391
.L.str.4.391:
	.asciz	"\r\nIllegal affix flag character '%c'\r\n"
	.size	.L.str.4.391, 38

	.type	.L.str.2.387,@object    # @.str.2.387
.L.str.2.387:
	.asciz	"\r\nWord '%s' contains illegal characters\r\n"
	.size	.L.str.2.387, 42

	.type	.L.str.13.434,@object   # @.str.13.434
.L.str.13.434:
	.asciz	"Continuing anyway (with reduced performance).\r\n"
	.size	.L.str.13.434, 48

	.type	strtosichar.out,@object # @strtosichar.out
	.local	strtosichar.out
	.comm	strtosichar.out,184,16
	.type	.L.str.30.259,@object   # @.str.30.259
.L.str.30.259:
	.asciz	"Are you sure you want to throw away your changes? "
	.size	.L.str.30.259, 51

	.type	.L.str.29.258,@object   # @.str.29.258
.L.str.29.258:
	.asciz	"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\r\n"
	.size	.L.str.29.258, 80

	.type	.L.str.28.257,@object   # @.str.28.257
.L.str.28.257:
	.asciz	"%2d: %s"
	.size	.L.str.28.257, 8

	.type	.L.str.27.256,@object   # @.str.27.256
.L.str.27.256:
	.asciz	"0%d: %s"
	.size	.L.str.27.256, 8

	.type	.L.str.26.255,@object   # @.str.26.255
.L.str.26.255:
	.asciz	"??: %s"
	.size	.L.str.26.255, 7

	.type	.L.str.23.252,@object   # @.str.23.252
.L.str.23.252:
	.asciz	"              File: %s"
	.size	.L.str.23.252, 23

	.type	.L.str.14.298,@object   # @.str.14.298
.L.str.14.298:
	.asciz	"# %s %d\n"
	.size	.L.str.14.298, 9

	.type	.L.str.13.297,@object   # @.str.13.297
.L.str.13.297:
	.asciz	"\n"
	.size	.L.str.13.297, 2

	.type	.L.str.12.296,@object   # @.str.12.296
.L.str.12.296:
	.asciz	"%c %s"
	.size	.L.str.12.296, 6

	.type	.L.str.11.295,@object   # @.str.11.295
.L.str.11.295:
	.asciz	"%c %s %d %d"
	.size	.L.str.11.295, 12

	.type	.L.str.10.294,@object   # @.str.10.294
.L.str.10.294:
	.asciz	"-\n"
	.size	.L.str.10.294, 3

	.type	.L.str.9.293,@object    # @.str.9.293
.L.str.9.293:
	.asciz	"+ %s\n"
	.size	.L.str.9.293, 6

	.type	.L.str.8.292,@object    # @.str.8.292
.L.str.8.292:
	.asciz	"*\n"
	.size	.L.str.8.292, 3

	.type	.L.str.7.291,@object    # @.str.7.291
.L.str.7.291:
	.asciz	"%s\n"
	.size	.L.str.7.291, 4

	.type	orig_word,@object       # @orig_word
	.local	orig_word
	.comm	orig_word,8,8
	.type	printichar.out,@object  # @printichar.out
	.local	printichar.out
	.comm	printichar.out,11,1
	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"%s"
	.size	.L.str.362, 3

	.type	.L.str.5.289,@object    # @.str.5.289
.L.str.5.289:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.5.289, 51

	.type	.L.str.6.290,@object    # @.str.6.290
.L.str.6.290:
	.asciz	"defmt.c"
	.size	.L.str.6.290, 8

	.type	.L.str.17.301,@object   # @.str.17.301
.L.str.17.301:
	.asciz	"\\end"
	.size	.L.str.17.301, 5

	.type	.L.str.34.302,@object   # @.str.34.302
.L.str.34.302:
	.asciz	"begin"
	.size	.L.str.34.302, 6

	.type	.L.str.27.303,@object   # @.str.27.303
.L.str.27.303:
	.asciz	"end"
	.size	.L.str.27.303, 4

	.type	.L.str.35.304,@object   # @.str.35.304
.L.str.35.304:
	.asciz	"vspace"
	.size	.L.str.35.304, 7

	.type	.L.str.36.305,@object   # @.str.36.305
.L.str.36.305:
	.asciz	"hspace"
	.size	.L.str.36.305, 7

	.type	.L.str.37.306,@object   # @.str.37.306
.L.str.37.306:
	.asciz	"cite"
	.size	.L.str.37.306, 5

	.type	.L.str.38.307,@object   # @.str.38.307
.L.str.38.307:
	.asciz	"ref"
	.size	.L.str.38.307, 4

	.type	.L.str.32.308,@object   # @.str.32.308
.L.str.32.308:
	.asciz	"parbox"
	.size	.L.str.32.308, 7

	.type	.L.str.39.309,@object   # @.str.39.309
.L.str.39.309:
	.asciz	"label"
	.size	.L.str.39.309, 6

	.type	.L.str.40.310,@object   # @.str.40.310
.L.str.40.310:
	.asciz	"input"
	.size	.L.str.40.310, 6

	.type	.L.str.41.311,@object   # @.str.41.311
.L.str.41.311:
	.asciz	"nocite"
	.size	.L.str.41.311, 7

	.type	.L.str.42.312,@object   # @.str.42.312
.L.str.42.312:
	.asciz	"include"
	.size	.L.str.42.312, 8

	.type	.L.str.43.313,@object   # @.str.43.313
.L.str.43.313:
	.asciz	"includeonly"
	.size	.L.str.43.313, 12

	.type	.L.str.44.314,@object   # @.str.44.314
.L.str.44.314:
	.asciz	"documentstyle"
	.size	.L.str.44.314, 14

	.type	.L.str.45.315,@object   # @.str.45.315
.L.str.45.315:
	.asciz	"documentclass"
	.size	.L.str.45.315, 14

	.type	.L.str.46.316,@object   # @.str.46.316
.L.str.46.316:
	.asciz	"usepackage"
	.size	.L.str.46.316, 11

	.type	.L.str.47.317,@object   # @.str.47.317
.L.str.47.317:
	.asciz	"pagestyle"
	.size	.L.str.47.317, 10

	.type	.L.str.48.318,@object   # @.str.48.318
.L.str.48.318:
	.asciz	"pagenumbering"
	.size	.L.str.48.318, 14

	.type	.L.str.49.319,@object   # @.str.49.319
.L.str.49.319:
	.asciz	"bibliography"
	.size	.L.str.49.319, 13

	.type	.L.str.50.320,@object   # @.str.50.320
.L.str.50.320:
	.asciz	"bibitem"
	.size	.L.str.50.320, 8

	.type	.L.str.51.321,@object   # @.str.51.321
.L.str.51.321:
	.asciz	"hyphenation"
	.size	.L.str.51.321, 12

	.type	.L.str.52.322,@object   # @.str.52.322
.L.str.52.322:
	.asciz	"pageref"
	.size	.L.str.52.322, 8

	.type	.L.str.53.323,@object   # @.str.53.323
.L.str.53.323:
	.asciz	"rule"
	.size	.L.str.53.323, 5

	.type	.L.str.54.324,@object   # @.str.54.324
.L.str.54.324:
	.asciz	"setcounter"
	.size	.L.str.54.324, 11

	.type	.L.str.55.325,@object   # @.str.55.325
.L.str.55.325:
	.asciz	"addtocounter"
	.size	.L.str.55.325, 13

	.type	.L.str.56.326,@object   # @.str.56.326
.L.str.56.326:
	.asciz	"setlength"
	.size	.L.str.56.326, 10

	.type	.L.str.57.327,@object   # @.str.57.327
.L.str.57.327:
	.asciz	"addtolength"
	.size	.L.str.57.327, 12

	.type	.L.str.58.328,@object   # @.str.58.328
.L.str.58.328:
	.asciz	"settowidth"
	.size	.L.str.58.328, 11

	.type	.L.str.59.329,@object   # @.str.59.329
.L.str.59.329:
	.asciz	"verb"
	.size	.L.str.59.329, 5

	.type	.L.str.16.300,@object   # @.str.16.300
.L.str.16.300:
	.asciz	"****ERROR in parsing TeX math mode!\r\n"
	.size	.L.str.16.300, 38

	.type	.L.str.28.330,@object   # @.str.28.330
.L.str.28.330:
	.asciz	"mbox"
	.size	.L.str.28.330, 5

	.type	.L.str.29.331,@object   # @.str.29.331
.L.str.29.331:
	.asciz	"makebox"
	.size	.L.str.29.331, 8

	.type	.L.str.30.332,@object   # @.str.30.332
.L.str.30.332:
	.asciz	"fbox"
	.size	.L.str.30.332, 5

	.type	.L.str.31.333,@object   # @.str.31.333
.L.str.31.333:
	.asciz	"framebox"
	.size	.L.str.31.333, 9

	.type	.L.str.33.334,@object   # @.str.33.334
.L.str.33.334:
	.asciz	"raisebox"
	.size	.L.str.33.334, 9

	.type	.L.str.24.335,@object   # @.str.24.335
.L.str.24.335:
	.asciz	"minipage"
	.size	.L.str.24.335, 9

	.type	.L.str.26.336,@object   # @.str.26.336
.L.str.26.336:
	.asciz	"***ERROR in LR to math-mode switch.\n"
	.size	.L.str.26.336, 37

	.type	.L.str.18.337,@object   # @.str.18.337
.L.str.18.337:
	.asciz	"equation"
	.size	.L.str.18.337, 9

	.type	.L.str.19.338,@object   # @.str.19.338
.L.str.19.338:
	.asciz	"eqnarray"
	.size	.L.str.19.338, 9

	.type	.L.str.20.339,@object   # @.str.20.339
.L.str.20.339:
	.asciz	"displaymath"
	.size	.L.str.20.339, 12

	.type	.L.str.21.340,@object   # @.str.21.340
.L.str.21.340:
	.asciz	"picture"
	.size	.L.str.21.340, 8

	.type	.L.str.22.341,@object   # @.str.22.341
.L.str.22.341:
	.asciz	"math"
	.size	.L.str.22.341, 5

	.type	.L.str.23.342,@object   # @.str.23.342
.L.str.23.342:
	.asciz	"tabular"
	.size	.L.str.23.342, 8

	.type	.L.str.25.343,@object   # @.str.25.343
.L.str.25.343:
	.asciz	"tabular*"
	.size	.L.str.25.343, 9

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"temporary file"
	.size	.L.str.182, 15

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Warning:  Can't write to %s\r\n"
	.size	.L.str.179, 30

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"Can't open %s\r\n"
	.size	.L.str.178, 16

	.type	.L.str.4.350,@object    # @.str.4.350
.L.str.4.350:
	.asciz	"suffixes\n"
	.size	.L.str.4.350, 10

	.type	.L.str.8.354,@object    # @.str.8.354
.L.str.8.354:
	.asciz	"\t> "
	.size	.L.str.8.354, 4

	.type	.L.str.11.356,@object   # @.str.11.356
.L.str.11.356:
	.asciz	"-"
	.size	.L.str.11.356, 2

	.type	.L.str.10.357,@object   # @.str.10.357
.L.str.10.357:
	.asciz	"%s\n"
	.size	.L.str.10.357, 4

	.type	.L.str.9.355,@object    # @.str.9.355
.L.str.9.355:
	.asciz	"-%s,"
	.size	.L.str.9.355, 5

	.type	.L.str.13.359,@object   # @.str.13.359
.L.str.13.359:
	.asciz	"%c-%c"
	.size	.L.str.13.359, 6

	.type	.L.str.12.358,@object   # @.str.12.358
.L.str.12.358:
	.asciz	"[^"
	.size	.L.str.12.358, 3

	.type	.L.str.6.351,@object    # @.str.6.351
.L.str.6.351:
	.asciz	"*"
	.size	.L.str.6.351, 2

	.type	.L.str.7.352,@object    # @.str.7.352
.L.str.7.352:
	.asciz	" "
	.size	.L.str.7.352, 2

	.type	.L.str.5.353,@object    # @.str.5.353
.L.str.5.353:
	.asciz	"  flag %s%c: "
	.size	.L.str.5.353, 14

	.type	.L.str.3.349,@object    # @.str.3.349
.L.str.3.349:
	.asciz	"prefixes\n"
	.size	.L.str.3.349, 10

	.type	.L.str.2.348,@object    # @.str.2.348
.L.str.2.348:
	.asciz	"flagmarker %c\n"
	.size	.L.str.2.348, 15

	.type	.L.str.1.347,@object    # @.str.1.347
.L.str.1.347:
	.asciz	"flagmarker \\%3.3o\n"
	.size	.L.str.1.347, 19

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"flagmarker \\%c\n"
	.size	.L.str.346, 16

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"%s "
	.size	.L.str.185, 4

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.187, 51

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"ispell.c"
	.size	.L.str.188, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.zero	1
	.size	.L.str.55, 1

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	" %f"
	.size	.L.str.189, 4

	.type	.L.str.1.414,@object    # @.str.1.414
.L.str.1.414:
	.asciz	" %s%s"
	.size	.L.str.1.414, 6

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"\n%s"
	.size	.L.str.413, 4

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"\r\nIllegal affix flag character '%c'\r\n"
	.size	.L.str.186, 38

	.type	xgets.Include_Len,@object # @xgets.Include_Len
	.local	xgets.Include_Len
	.comm	xgets.Include_Len,4,4
	.type	.L.str.1.450,@object    # @.str.1.450
.L.str.1.450:
	.asciz	"INCLUDE_STRING"
	.size	.L.str.1.450, 15

	.type	xgets.current_F,@object # @xgets.current_F
	.data
	.p2align	3
xgets.current_F:
	.quad	xgets.F
	.size	xgets.current_F, 8

	.type	xgets.F,@object         # @xgets.F
	.local	xgets.F
	.comm	xgets.F,48,16
	.type	xgets.Include_File,@object # @xgets.Include_File
	.p2align	3
xgets.Include_File:
	.quad	.L.str.452
	.size	xgets.Include_File, 8

	.type	.L.str.2.451,@object    # @.str.2.451
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2.451:
	.asciz	"r"
	.size	.L.str.2.451, 2

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"&Include_File&"
	.size	.L.str.452, 15

	.type	.L.str.38.275,@object   # @.str.38.275
.L.str.38.275:
	.asciz	"w"
	.size	.L.str.38.275, 2

	.type	.L.str.41.278,@object   # @.str.41.278
.L.str.41.278:
	.asciz	"nroff"
	.size	.L.str.41.278, 6

	.type	.L.str.42.279,@object   # @.str.42.279
.L.str.42.279:
	.asciz	"troff"
	.size	.L.str.42.279, 6

	.type	Version_ID.22,@object   # @Version_ID.22
	.data
	.p2align	4
Version_ID.22:
	.quad	.L.str.43.212
	.quad	.L.str.44.213
	.quad	.L.str.45.214
	.quad	.L.str.46.215
	.quad	.L.str.47.216
	.quad	.L.str.48.217
	.quad	.L.str.49.218
	.quad	.L.str.50.219
	.quad	.L.str.47.216
	.quad	.L.str.51.220
	.quad	.L.str.52.221
	.quad	.L.str.53.222
	.quad	.L.str.54.223
	.quad	.L.str.55.224
	.quad	.L.str.56.225
	.quad	.L.str.57.226
	.quad	.L.str.58.227
	.quad	.L.str.59.228
	.quad	.L.str.60.229
	.quad	.L.str.61.230
	.quad	.L.str.62.231
	.quad	.L.str.63.232
	.quad	.L.str.64.233
	.quad	.L.str.65.234
	.quad	.L.str.66.235
	.quad	.L.str.67.236
	.quad	.L.str.47.216
	.quad	.L.str.68.237
	.quad	.L.str.69.238
	.quad	.L.str.70.239
	.quad	.L.str.71.240
	.quad	.L.str.72.241
	.quad	.L.str.73.242
	.quad	.L.str.74.243
	.quad	.L.str.75.244
	.quad	.L.str.76.245
	.quad	.L.str.77.246
	.quad	.L.str.78.247
	.quad	.L.str.79.248
	.quad	0
	.size	Version_ID.22, 320

	.type	.L.str.40.277,@object   # @.str.40.277
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40.277:
	.asciz	"%s\n"
	.size	.L.str.40.277, 4

	.type	.L.str.43.212,@object   # @.str.43.212
.L.str.43.212:
	.asciz	"@(#) International Ispell Version 3.1.20 10/10/95"
	.size	.L.str.43.212, 50

	.type	.L.str.44.213,@object   # @.str.44.213
.L.str.44.213:
	.asciz	"@(#) Copyright (c), 1983, by Pace Willisson"
	.size	.L.str.44.213, 44

	.type	.L.str.45.214,@object   # @.str.45.214
.L.str.45.214:
	.asciz	"@(#) International version Copyright (c) 1987, 1988, 1990-1995,"
	.size	.L.str.45.214, 64

	.type	.L.str.46.215,@object   # @.str.46.215
.L.str.46.215:
	.asciz	"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved."
	.size	.L.str.46.215, 65

	.type	.L.str.47.216,@object   # @.str.47.216
.L.str.47.216:
	.asciz	"@(#)"
	.size	.L.str.47.216, 5

	.type	.L.str.48.217,@object   # @.str.48.217
.L.str.48.217:
	.asciz	"@(#) Redistribution and use in source and binary forms, with or without"
	.size	.L.str.48.217, 72

	.type	.L.str.49.218,@object   # @.str.49.218
.L.str.49.218:
	.asciz	"@(#) modification, are permitted provided that the following conditions"
	.size	.L.str.49.218, 72

	.type	.L.str.50.219,@object   # @.str.50.219
.L.str.50.219:
	.asciz	"@(#) are met:"
	.size	.L.str.50.219, 14

	.type	.L.str.51.220,@object   # @.str.51.220
.L.str.51.220:
	.asciz	"@(#) 1. Redistributions of source code must retain the above copyright"
	.size	.L.str.51.220, 71

	.type	.L.str.52.221,@object   # @.str.52.221
.L.str.52.221:
	.asciz	"@(#)    notice, this list of conditions and the following disclaimer."
	.size	.L.str.52.221, 70

	.type	.L.str.53.222,@object   # @.str.53.222
.L.str.53.222:
	.asciz	"@(#) 2. Redistributions in binary form must reproduce the above"
	.size	.L.str.53.222, 64

	.type	.L.str.54.223,@object   # @.str.54.223
.L.str.54.223:
	.asciz	"@(#)    copyright notice, this list of conditions and the following"
	.size	.L.str.54.223, 68

	.type	.L.str.55.224,@object   # @.str.55.224
.L.str.55.224:
	.asciz	"@(#)    disclaimer in the documentation and/or other materials provided"
	.size	.L.str.55.224, 72

	.type	.L.str.56.225,@object   # @.str.56.225
.L.str.56.225:
	.asciz	"@(#)    with the distribution."
	.size	.L.str.56.225, 31

	.type	.L.str.57.226,@object   # @.str.57.226
.L.str.57.226:
	.asciz	"@(#) 3. All modifications to the source code must be clearly marked as"
	.size	.L.str.57.226, 71

	.type	.L.str.58.227,@object   # @.str.58.227
.L.str.58.227:
	.asciz	"@(#)    such.  Binary redistributions based on modified source code"
	.size	.L.str.58.227, 68

	.type	.L.str.59.228,@object   # @.str.59.228
.L.str.59.228:
	.asciz	"@(#)    must be clearly marked as modified versions in the documentation"
	.size	.L.str.59.228, 73

	.type	.L.str.60.229,@object   # @.str.60.229
.L.str.60.229:
	.asciz	"@(#)    and/or other materials provided with the distribution."
	.size	.L.str.60.229, 63

	.type	.L.str.61.230,@object   # @.str.61.230
.L.str.61.230:
	.asciz	"@(#) 4. All advertising materials mentioning features or use of this"
	.size	.L.str.61.230, 69

	.type	.L.str.62.231,@object   # @.str.62.231
.L.str.62.231:
	.asciz	"@(#)    software must display the following acknowledgment:"
	.size	.L.str.62.231, 60

	.type	.L.str.63.232,@object   # @.str.63.232
.L.str.63.232:
	.asciz	"@(#)      This product includes software developed by Geoff Kuenning and"
	.size	.L.str.63.232, 73

	.type	.L.str.64.233,@object   # @.str.64.233
.L.str.64.233:
	.asciz	"@(#)      other unpaid contributors."
	.size	.L.str.64.233, 37

	.type	.L.str.65.234,@object   # @.str.65.234
.L.str.65.234:
	.asciz	"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote"
	.size	.L.str.65.234, 73

	.type	.L.str.66.235,@object   # @.str.66.235
.L.str.66.235:
	.asciz	"@(#)    products derived from this software without specific prior"
	.size	.L.str.66.235, 67

	.type	.L.str.67.236,@object   # @.str.67.236
.L.str.67.236:
	.asciz	"@(#)    written permission."
	.size	.L.str.67.236, 28

	.type	.L.str.68.237,@object   # @.str.68.237
.L.str.68.237:
	.asciz	"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS"
	.size	.L.str.68.237, 71

	.type	.L.str.69.238,@object   # @.str.69.238
.L.str.69.238:
	.asciz	"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT"
	.size	.L.str.69.238, 68

	.type	.L.str.70.239,@object   # @.str.70.239
.L.str.70.239:
	.asciz	"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
	.size	.L.str.70.239, 71

	.type	.L.str.71.240,@object   # @.str.71.240
.L.str.71.240:
	.asciz	"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF"
	.size	.L.str.71.240, 71

	.type	.L.str.72.241,@object   # @.str.72.241
.L.str.72.241:
	.asciz	"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,"
	.size	.L.str.72.241, 66

	.type	.L.str.73.242,@object   # @.str.73.242
.L.str.73.242:
	.asciz	"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES"
	.size	.L.str.73.242, 62

	.type	.L.str.74.243,@object   # @.str.74.243
.L.str.74.243:
	.asciz	"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR"
	.size	.L.str.74.243, 72

	.type	.L.str.75.244,@object   # @.str.75.244
.L.str.75.244:
	.asciz	"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)"
	.size	.L.str.75.244, 72

	.type	.L.str.76.245,@object   # @.str.76.245
.L.str.76.245:
	.asciz	"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,"
	.size	.L.str.76.245, 73

	.type	.L.str.77.246,@object   # @.str.77.246
.L.str.77.246:
	.asciz	"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)"
	.size	.L.str.77.246, 67

	.type	.L.str.78.247,@object   # @.str.78.247
.L.str.78.247:
	.asciz	"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED"
	.size	.L.str.78.247, 73

	.type	.L.str.79.248,@object   # @.str.79.248
.L.str.79.248:
	.asciz	"@(#) OF THE POSSIBILITY OF SUCH DAMAGE."
	.size	.L.str.79.248, 40

	.type	.L.str.39.276,@object   # @.str.39.276
.L.str.39.276:
	.asciz	"Can't create %s\r\n"
	.size	.L.str.39.276, 18

	.type	.L.str.1.420,@object    # @.str.1.420
.L.str.1.420:
	.asciz	"HOME"
	.size	.L.str.1.420, 5

	.type	.L.str.2.421,@object    # @.str.2.421
.L.str.2.421:
	.asciz	".ispell_"
	.size	.L.str.2.421, 9

	.type	.L.str.3.422,@object    # @.str.3.422
.L.str.3.422:
	.asciz	"words"
	.size	.L.str.3.422, 6

	.type	.L.str.5.424,@object    # @.str.5.424
.L.str.5.424:
	.asciz	"./"
	.size	.L.str.5.424, 3

	.type	.L.str.6.425,@object    # @.str.6.425
.L.str.6.425:
	.asciz	"../"
	.size	.L.str.6.425, 4

	.type	.L.str.7.426,@object    # @.str.7.426
.L.str.7.426:
	.asciz	"r"
	.size	.L.str.7.426, 2

	.type	.L.str.8.427,@object    # @.str.8.427
.L.str.8.427:
	.asciz	"%s/%s"
	.size	.L.str.8.427, 6

	.type	.L.str.11.430,@object   # @.str.11.430
.L.str.11.430:
	.asciz	"Warning: Cannot update personal dictionary (%s)\r\n"
	.size	.L.str.11.430, 50

	.type	.L.str.9.428,@object    # @.str.9.428
.L.str.9.428:
	.asciz	"Can't open %s\r\n"
	.size	.L.str.9.428, 16

	.type	.L.str.10.429,@object   # @.str.10.429
.L.str.10.429:
	.zero	1
	.size	.L.str.10.429, 1

	.type	.L.str.4.423,@object    # @.str.4.423
.L.str.4.423:
	.asciz	"%s/%s%s"
	.size	.L.str.4.423, 8

	.type	.L.str.16.437,@object   # @.str.16.437
.L.str.16.437:
	.asciz	"%s%s"
	.size	.L.str.16.437, 5

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"WORDLIST"
	.size	.L.str.419, 9

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"ispell:  unrecognized formatter type '%s'\n"
	.size	.L.str.131, 43

	.type	.L.str.5.408,@object    # @.str.5.408
.L.str.5.408:
	.asciz	"tex"
	.size	.L.str.5.408, 4

	.type	inited,@object          # @inited
	.local	inited
	.comm	inited,4,4
	.type	.L.str.9.374,@object    # @.str.9.374
.L.str.9.374:
	.asciz	"Couldn't allocate space for language tables\r\n"
	.size	.L.str.9.374, 46

	.type	.L.str.8.373,@object    # @.str.8.373
.L.str.8.373:
	.asciz	"Illegal format hash table\r\n"
	.size	.L.str.8.373, 28

	.type	.L.str.7.372,@object    # @.str.7.372
.L.str.7.372:
	.asciz	"Couldn't allocate space for hash table\r\n"
	.size	.L.str.7.372, 41

	.type	.L.str.6.371,@object    # @.str.6.371
.L.str.6.371:
	.asciz	"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\r\n"
	.size	.L.str.6.371, 76

	.type	.L.str.5.370,@object    # @.str.5.370
.L.str.5.370:
	.asciz	"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\r\n"
	.size	.L.str.5.370, 64

	.type	.L.str.4.369,@object    # @.str.4.369
.L.str.4.369:
	.asciz	"Illegal format hash table %s - expected magic 0x%x, got 0x%x\r\n"
	.size	.L.str.4.369, 63

	.type	.L.str.3.368,@object    # @.str.3.368
.L.str.3.368:
	.asciz	"Truncated hash table %s:  got %d bytes, expected %d\r\n"
	.size	.L.str.3.368, 54

	.type	.L.str.2.367,@object    # @.str.2.367
.L.str.2.367:
	.asciz	"Null hash table %s\r\n"
	.size	.L.str.2.367, 21

	.type	.L.str.1.366,@object    # @.str.1.366
.L.str.1.366:
	.asciz	"Trouble reading hash table %s\r\n"
	.size	.L.str.1.366, 32

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"Can't open %s\r\n"
	.size	.L.str.365, 16

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"ispell:  specified file does not exist\n"
	.size	.L.str.129, 40

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"ispell:  specified files do not exist\n"
	.size	.L.str.130, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Compiled-in options:\n"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\t!USG (BSD)\n"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\tBAKEXT = \"%s\"\n"
	.size	.L.str.9, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\tBINDIR = \"%s\"\n"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/usr/local/bin"
	.size	.L.str.12, 15

	.type	.L.str.13.19,@object    # @.str.13.19
.L.str.13.19:
	.asciz	"\t!BOTTOMCONTEXT\n"
	.size	.L.str.13.19, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\tCBREAK\n"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\tCC = \"%s\"\n"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cc"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\tCFLAGS = \"%s\"\n"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"-O"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\t!COMMANDFORSPACE\n"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\t!CONTEXTROUNDUP\n"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\tCONTEXTPCT = %d\n"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\tCOUNTSUFFIX = \"%s\"\n"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	".cnt"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\tDEFHASH = \"%s\"\n"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\tDEFINCSTR = \"%s\"\n"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"&Include_File&"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\tDEFLANG = \"%s\"\n"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"english.aff"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\tDEFNOBACKUPFLAG = %d\n"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\tDEFPAFF = \"%s\"\n"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"words"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\tDEFPDICT = \"%s\"\n"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	".ispell_"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\tDEFTEXFLAG = %d\n"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\tEGREPCMD = \"%s\"\n"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/usr/bin/egrep -i"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\tELISPDIR = \"%s\"\n"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/usr/local/lib/emacs/site-lisp"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\tEMACS = \"%s\"\n"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"emacs"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\t!EQUAL_COLUMNS\n"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\t!GENERATE_LIBRARY_PROTOS\n"
	.size	.L.str.42, 27

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\t!HAS_RENAME\n"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\tHASHSUFFIX = \"%s\"\n"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\tHOME = \"%s\"\n"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"HOME"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\t!IGNOREBIB\n"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\tINCSTRVAR = \"%s\"\n"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"INCLUDE_STRING"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\tINPUTWORDLEN = %d\n"
	.size	.L.str.50, 20

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\tLANGUAGES = \"%s\"\n"
	.size	.L.str.51, 19

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}"
	.size	.L.str.52, 81

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"\tLIBDIR = \"%s\"\n"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\tLIBES = \"%s\"\n"
	.size	.L.str.54, 15

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"\tLINT = \"%s\"\n"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"lint"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"\tLINTFLAGS = \"%s\"\n"
	.size	.L.str.58, 19

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\tLOOK = \"%s\"\n"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"look -df"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\tMAKE_SORTTMP = \"%s\"\n"
	.size	.L.str.61, 22

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"-T ${TMPDIR-/tmp}"
	.size	.L.str.62, 18

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"\tMALLOC_INCREMENT = %d\n"
	.size	.L.str.63, 24

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\tMAN1DIR = \"%s\"\n"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/usr/local/man/man1"
	.size	.L.str.65, 20

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"\tMAN1EXT = \"%s\"\n"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	".1"
	.size	.L.str.67, 3

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"\tMAN4DIR = \"%s\"\n"
	.size	.L.str.68, 17

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/usr/local/man/man4"
	.size	.L.str.69, 20

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"\tMAN4EXT = \"%s\"\n"
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	".4"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"\tMASKBITS = %d\n"
	.size	.L.str.72, 16

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"\tMASKTYPE = %s\n"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"long"
	.size	.L.str.74, 5

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"\tMASKTYPE_WIDTH = %d\n"
	.size	.L.str.75, 22

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\tMASTERHASH = \"%s\"\n"
	.size	.L.str.76, 20

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"americanmed+.hash"
	.size	.L.str.77, 18

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"\tMAXAFFIXLEN = %d\n"
	.size	.L.str.78, 19

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\tMAXCONTEXT = %d\n"
	.size	.L.str.79, 18

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"\tMAXINCLUDEFILES = %d\n"
	.size	.L.str.80, 23

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"\tMAXNAMLEN = %d\n"
	.size	.L.str.81, 17

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"\tMAXPATHLEN = %d\n"
	.size	.L.str.82, 18

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"\tMAXPCT = %d\n"
	.size	.L.str.83, 14

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"\tMAXSEARCH = %d\n"
	.size	.L.str.84, 17

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"\tMAXSTRINGCHARLEN = %d\n"
	.size	.L.str.85, 24

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"\tMAXSTRINGCHARS = %d\n"
	.size	.L.str.86, 22

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\tMAX_CAPS = %d\n"
	.size	.L.str.87, 16

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"\tMAX_HITS = %d\n"
	.size	.L.str.88, 16

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"\tMAX_SCREEN_SIZE = %d\n"
	.size	.L.str.89, 23

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"\tMINCONTEXT = %d\n"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"\tMINIMENU\n"
	.size	.L.str.91, 11

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"\tMINWORD = %d\n"
	.size	.L.str.92, 15

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"\tMSDOS_BINARY_OPEN = 0x%x\n"
	.size	.L.str.93, 27

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"\tMSGLANG = %s\n"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"english"
	.size	.L.str.95, 8

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"\t!NO_CAPITALIZATION_SUPPORT\n"
	.size	.L.str.96, 29

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"\t!NO_STDLIB_H (STDLIB_H)\n"
	.size	.L.str.97, 26

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"\tNO8BIT\n"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"\tNRSPECIAL = \"%s\"\n"
	.size	.L.str.99, 19

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"().\\*"
	.size	.L.str.100, 6

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"\tOLDPAFF = \"%s\"\n"
	.size	.L.str.101, 17

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"\tOLDPDICT = \"%s\"\n"
	.size	.L.str.102, 18

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"\tPDICTHOME = (undefined)\n"
	.size	.L.str.103, 26

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"\tPDICTVAR = \"%s\"\n"
	.size	.L.str.104, 18

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"WORDLIST"
	.size	.L.str.105, 9

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"\t!PIECEMEAL_HASH_WRITES\n"
	.size	.L.str.106, 25

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"\t!REGEX_LOOKUP\n"
	.size	.L.str.107, 16

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"\tREGLIB = \"%s\"\n"
	.size	.L.str.108, 16

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"\tSIGNAL_TYPE = %s\n"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"void"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"\tSORTPERSONAL = %d\n"
	.size	.L.str.111, 20

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"\tSTATSUFFIX = \"%s\"\n"
	.size	.L.str.112, 20

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	".stat"
	.size	.L.str.113, 6

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"\tTEMPNAME = \"%s\"\n"
	.size	.L.str.114, 18

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"\tTERMLIB = \"%s\"\n"
	.size	.L.str.116, 17

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"\tTEXINFODIR = \"%s\"\n"
	.size	.L.str.117, 20

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"/usr/local/info"
	.size	.L.str.118, 16

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"\tTEXSPECIAL = \"%s\"\n"
	.size	.L.str.119, 20

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"()[]{}<>\\$*.%"
	.size	.L.str.120, 14

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"\t!TRUNCATEBAK\n"
	.size	.L.str.121, 15

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"\t!USESH\n"
	.size	.L.str.122, 9

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"\tWORDS = \"%s\"\n"
	.size	.L.str.123, 15

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"/usr/dict/words"
	.size	.L.str.124, 16

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"\tYACC = \"%s\"\n"
	.size	.L.str.125, 14

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"yacc"
	.size	.L.str.126, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s\n"
	.size	.L.str.6, 4

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"@(#) International Ispell Version 3.1.20 10/10/95"
	.size	.L.str.139, 50

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"@(#) Copyright (c), 1983, by Pace Willisson"
	.size	.L.str.140, 44

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"@(#) International version Copyright (c) 1987, 1988, 1990-1995,"
	.size	.L.str.141, 64

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved."
	.size	.L.str.142, 65

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"@(#)"
	.size	.L.str.143, 5

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"@(#) Redistribution and use in source and binary forms, with or without"
	.size	.L.str.144, 72

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"@(#) modification, are permitted provided that the following conditions"
	.size	.L.str.145, 72

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"@(#) are met:"
	.size	.L.str.146, 14

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"@(#) 1. Redistributions of source code must retain the above copyright"
	.size	.L.str.147, 71

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"@(#)    notice, this list of conditions and the following disclaimer."
	.size	.L.str.148, 70

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"@(#) 2. Redistributions in binary form must reproduce the above"
	.size	.L.str.149, 64

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"@(#)    copyright notice, this list of conditions and the following"
	.size	.L.str.150, 68

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"@(#)    disclaimer in the documentation and/or other materials provided"
	.size	.L.str.151, 72

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"@(#)    with the distribution."
	.size	.L.str.152, 31

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"@(#) 3. All modifications to the source code must be clearly marked as"
	.size	.L.str.153, 71

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"@(#)    such.  Binary redistributions based on modified source code"
	.size	.L.str.154, 68

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"@(#)    must be clearly marked as modified versions in the documentation"
	.size	.L.str.155, 73

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"@(#)    and/or other materials provided with the distribution."
	.size	.L.str.156, 63

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"@(#) 4. All advertising materials mentioning features or use of this"
	.size	.L.str.157, 69

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"@(#)    software must display the following acknowledgment:"
	.size	.L.str.158, 60

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"@(#)      This product includes software developed by Geoff Kuenning and"
	.size	.L.str.159, 73

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"@(#)      other unpaid contributors."
	.size	.L.str.160, 37

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote"
	.size	.L.str.161, 73

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"@(#)    products derived from this software without specific prior"
	.size	.L.str.162, 67

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"@(#)    written permission."
	.size	.L.str.163, 28

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS"
	.size	.L.str.164, 71

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT"
	.size	.L.str.165, 68

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
	.size	.L.str.166, 71

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF"
	.size	.L.str.167, 71

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,"
	.size	.L.str.168, 66

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES"
	.size	.L.str.169, 62

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR"
	.size	.L.str.170, 72

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)"
	.size	.L.str.171, 72

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,"
	.size	.L.str.172, 73

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)"
	.size	.L.str.173, 67

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED"
	.size	.L.str.174, 73

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"@(#) OF THE POSSIBILITY OF SUCH DAMAGE."
	.size	.L.str.175, 40

	.type	Cmd,@object             # @Cmd
	.local	Cmd
	.comm	Cmd,8,8
	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Usage: %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -x | -b | -S | -B | -C | -P | -m | -Lcontext | -M | -N | -Ttype | -V] file .....\n"
	.size	.L.str.132, 137

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"       %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -Ttype] -l\n"
	.size	.L.str.133, 67

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"       %s [-dfile | -pfile | -ffile | -Wn | -t | -n | -s | -B | -C | -P | -m | -Ttype] {-a | -A}\n"
	.size	.L.str.134, 98

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"       %s [-dfile] [-wchars | -Wn] -c\n"
	.size	.L.str.135, 39

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"       %s [-dfile] [-wchars] -e[1-4]\n"
	.size	.L.str.136, 38

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"       %s [-dfile] [-wchars] -D\n"
	.size	.L.str.137, 33

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"       %s -v\n"
	.size	.L.str.138, 14

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"%sTampered binary!\n"
	.size	.L.str.191, 20

	.type	.L.str.1.192,@object    # @.str.1.192
.L.str.1.192:
	.asciz	"\033[0m"
	.size	.L.str.1.192, 5

	.type	.L.str.2.193,@object    # @.str.2.193
.L.str.2.193:
	.asciz	"%s\n"
	.size	.L.str.2.193, 4


	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.ident	"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
