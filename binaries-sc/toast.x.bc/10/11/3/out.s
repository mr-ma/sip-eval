	.text
	.file	"llvm-link"
	.globl	audio_init_input        # -- Begin function audio_init_input
	.p2align	4, 0x90
	.type	audio_init_input,@function
audio_init_input:                       # @audio_init_input
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	in, %rdi
	callq	fgetc
	cmpl	$46, %eax
	jne	.LBB0_8
# %bb.1:                                # %lor.lhs.false
	movq	in, %rdi
	callq	fgetc
	cmpl	$115, %eax
	jne	.LBB0_8
# %bb.2:                                # %lor.lhs.false3
	movq	in, %rdi
	callq	fgetc
	cmpl	$110, %eax
	jne	.LBB0_8
# %bb.3:                                # %lor.lhs.false6
	movq	in, %rdi
	callq	fgetc
	cmpl	$100, %eax
	jne	.LBB0_8
# %bb.4:                                # %lor.lhs.false9
	leaq	-24(%rbp), %rsi
	movq	in, %rdi
	callq	get_u32
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.5:                                # %lor.lhs.false11
	leaq	-16(%rbp), %rsi
	movq	in, %rdi
	callq	get_u32
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.6:                                # %lor.lhs.false14
	leaq	-16(%rbp), %rsi
	movq	in, %rdi
	callq	get_u32
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:                                # %lor.lhs.false17
	movq	in, %rdi
	movq	-24(%rbp), %rsi
	subq	$16, %rsi
	movl	$1, %edx
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB0_12
.LBB0_8:                                # %if.then
	movq	stderr, %rdi
	movq	progname, %rdx
	cmpq	$0, inname
	je	.LBB0_10
# %bb.9:                                # %cond.true
	movq	inname, %rcx
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false
	movabsq	$.L.str.1.15, %rcx
	jmp	.LBB0_11
.LBB0_11:                               # %cond.end
	movabsq	$.L.str.61, %rsi
	movq	progname, %r8
	movb	$0, %al
	callq	fprintf
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_12:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	subq	$1, %rcx
	je	.LBB0_15
	jmp	.LBB0_13
.LBB0_13:                               # %if.end
	movq	%rax, %rcx
	subq	$2, %rcx
	je	.LBB0_16
	jmp	.LBB0_14
.LBB0_14:                               # %if.end
	subq	$3, %rax
	je	.LBB0_17
	jmp	.LBB0_18
.LBB0_15:                               # %sw.bb
	movabsq	$ulaw_input, %rax
	movq	%rax, input
	jmp	.LBB0_19
.LBB0_16:                               # %sw.bb22
	movabsq	$alaw_input, %rax
	movq	%rax, input
	jmp	.LBB0_19
.LBB0_17:                               # %sw.bb23
	movabsq	$linear_input, %rax
	movq	%rax, input
	jmp	.LBB0_19
.LBB0_18:                               # %sw.default
	leaq	-16(%rbp), %rdi
	callq	audio_init_input0
	movabsq	$ulaw_input, %rax
	movq	%rax, input
.LBB0_19:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB0_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	audio_init_input, .Lfunc_end0-audio_init_input
	.cfi_endproc
                                        # -- End function
	.globl	audio_init_output       # -- Begin function audio_init_output
	.p2align	4, 0x90
	.type	audio_init_output,@function
audio_init_output:                      # @audio_init_output
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$222222234, -16(%rbp)   # imm = 0xD3ED79A
	movl	$555555567, -12(%rbp)   # imm = 0x211D1AEF
	movl	$444444456, -8(%rbp)    # imm = 0x1A7DAF28
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	guardMe
	movabsq	$.L.str.3.65, %rdi
	movq	out, %rsi
	callq	fputs
	cmpl	$-1, %eax
	je	.LBB1_8
# %bb.1:                                # %lor.lhs.false
	movq	out, %rdi
	movl	$32, %esi
	callq	put_u32
	cmpl	$0, %eax
	jne	.LBB1_8
# %bb.2:                                # %lor.lhs.false2
	movq	out, %rdi
	movq	$-1, %rsi
	callq	put_u32
	cmpl	$0, %eax
	jne	.LBB1_8
# %bb.3:                                # %lor.lhs.false5
	movq	out, %rdi
	movl	$1, %esi
	callq	put_u32
	cmpl	$0, %eax
	jne	.LBB1_8
# %bb.4:                                # %lor.lhs.false8
	movq	out, %rdi
	movl	$8000, %esi             # imm = 0x1F40
	callq	put_u32
	cmpl	$0, %eax
	jne	.LBB1_8
# %bb.5:                                # %lor.lhs.false11
	movq	out, %rdi
	movl	$1, %esi
	callq	put_u32
	cmpl	$0, %eax
	jne	.LBB1_8
# %bb.6:                                # %lor.lhs.false14
	movq	out, %rdi
	xorl	%esi, %esi
	callq	put_u32
	cmpl	$0, %eax
	jne	.LBB1_8
# %bb.7:                                # %lor.lhs.false17
	movq	out, %rdi
	xorl	%esi, %esi
	callq	put_u32
	cmpl	$0, %eax
	je	.LBB1_9
.LBB1_8:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %if.end
	movl	$0, -4(%rbp)
.LBB1_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	audio_init_output, .Lfunc_end1-audio_init_output
	.cfi_endproc
                                        # -- End function
	.globl	ulaw_input              # -- Begin function ulaw_input
	.p2align	4, 0x90
	.type	ulaw_input,@function
ulaw_input:                             # @ulaw_input
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
	movl	$222222230, -32(%rbp)   # imm = 0xD3ED796
	movl	$555555563, -28(%rbp)   # imm = 0x211D1AEB
	movl	$444444452, -24(%rbp)   # imm = 0x1A7DAF24
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	guardMe
	movq	%rbx, -40(%rbp)
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$160, -12(%rbp)
	jge	.LBB2_3
# %bb.2:                                # %land.rhs
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	in, %rdi
	callq	fgetc
	movl	%eax, -16(%rbp)
	cmpl	$-1, %eax
	setne	%al
.LBB2_3:                                # %land.end
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_6
.LBB2_4:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-12(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	ulaw_input0
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-12(%rbp), %rdi
	callq	ulaw_input1
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	cmpl	$-1, -16(%rbp)
	jne	.LBB2_9
# %bb.7:                                # %land.lhs.true
	movq	in, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB2_9
# %bb.8:                                # %if.then
	movl	$-1, -20(%rbp)
	jmp	.LBB2_10
.LBB2_9:                                # %if.end
	leaq	-20(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	callq	ulaw_input2
.LBB2_10:                               # %return
	movl	-20(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ulaw_input, .Lfunc_end2-ulaw_input
	.cfi_endproc
                                        # -- End function
	.globl	ulaw_output             # -- Begin function ulaw_output
	.p2align	4, 0x90
	.type	ulaw_output,@function
ulaw_output:                            # @ulaw_output
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
	movl	$222222231, -28(%rbp)   # imm = 0xD3ED797
	movl	$555555564, -24(%rbp)   # imm = 0x211D1AEC
	movl	$444444453, -20(%rbp)   # imm = 0x1A7DAF25
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	guardMe
	movq	%rbx, -40(%rbp)
	movl	$0, -12(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$160, -12(%rbp)
	jge	.LBB3_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	sarl	$3, %eax
	cltq
	movsbl	s2u(,%rax), %edi
	movq	out, %rsi
	callq	fputc
	cmpl	$-1, %eax
	jne	.LBB3_4
# %bb.3:                                # %if.then
	movl	$-1, -16(%rbp)
	jmp	.LBB3_7
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	callq	ulaw_output0
	jmp	.LBB3_1
.LBB3_6:                                # %for.end
	movl	$0, -16(%rbp)
.LBB3_7:                                # %return
	movl	-16(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ulaw_output, .Lfunc_end3-ulaw_output
	.cfi_endproc
                                        # -- End function
	.globl	ulaw_output0            # -- Begin function ulaw_output0
	.p2align	4, 0x90
	.type	ulaw_output0,@function
ulaw_output0:                           # @ulaw_output0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	addq	$2, %rax
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end4:
	.size	ulaw_output0, .Lfunc_end4-ulaw_output0
	.cfi_endproc
                                        # -- End function
	.globl	ulaw_input0             # -- Begin function ulaw_input0
	.p2align	4, 0x90
	.type	ulaw_input0,@function
ulaw_input0:                            # @ulaw_input0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -36(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	%rdx, -32(%rsp)
	movl	(%rdx), %ecx
	movl	%ecx, -40(%rsp)
	movzbl	-40(%rsp), %ecx
	movzwl	u2s(%rcx,%rcx), %ecx
	movslq	-36(%rsp), %rdx
	movw	%cx, (%rax,%rdx,2)
	movq	-32(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end5:
	.size	ulaw_input0, .Lfunc_end5-ulaw_input0
	.cfi_endproc
                                        # -- End function
	.globl	ulaw_input1             # -- Begin function ulaw_input1
	.p2align	4, 0x90
	.type	ulaw_input1,@function
ulaw_input1:                            # @ulaw_input1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end6:
	.size	ulaw_input1, .Lfunc_end6-ulaw_input1
	.cfi_endproc
                                        # -- End function
	.globl	ulaw_input2             # -- Begin function ulaw_input2
	.p2align	4, 0x90
	.type	ulaw_input2,@function
ulaw_input2:                            # @ulaw_input2
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
.Lfunc_end7:
	.size	ulaw_input2, .Lfunc_end7-ulaw_input2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function put_u32
	.type	put_u32,@function
put_u32:                                # @put_u32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	andq	$255, %rax
	movsbl	%al, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	je	.LBB8_4
# %bb.1:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	andq	$255, %rax
	movsbl	%al, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	je	.LBB8_4
# %bb.2:                                # %lor.lhs.false10
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	andq	$255, %rax
	movsbl	%al, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	je	.LBB8_4
# %bb.3:                                # %lor.lhs.false18
	movq	-16(%rbp), %rax
	andq	$255, %rax
	movsbl	%al, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	cmpl	$-1, %eax
	jne	.LBB8_5
.LBB8_4:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.end
	movl	$0, -4(%rbp)
.LBB8_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	put_u32, .Lfunc_end8-put_u32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function get_u32
	.type	get_u32,@function
get_u32:                                # @get_u32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -4(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_4
# %bb.1:                                # %lor.lhs.false
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -4(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_4
# %bb.2:                                # %lor.lhs.false5
	movq	-16(%rbp), %rax
	shlq	$8, %rax
	movl	-4(%rbp), %ecx
	movzbl	%cl, %ecx
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -4(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_4
# %bb.3:                                # %lor.lhs.false11
	movq	-16(%rbp), %rax
	shlq	$8, %rax
	movl	-4(%rbp), %ecx
	movzbl	%cl, %ecx
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -4(%rbp)
	cmpl	$-1, %eax
	jne	.LBB9_5
.LBB9_4:                                # %if.then
	movl	$-1, -20(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.end
	leaq	-40(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	get_u320
	movl	$0, -20(%rbp)
.LBB9_6:                                # %return
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_u32, .Lfunc_end9-get_u32
	.cfi_endproc
                                        # -- End function
	.globl	alaw_input              # -- Begin function alaw_input
	.p2align	4, 0x90
	.type	alaw_input,@function
alaw_input:                             # @alaw_input
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$160, -4(%rbp)
	jge	.LBB10_3
# %bb.2:                                # %land.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	in, %rdi
	callq	fgetc
	movl	%eax, -8(%rbp)
	cmpl	$-1, %eax
	setne	%al
.LBB10_3:                               # %land.end
                                        #   in Loop: Header=BB10_1 Depth=1
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_6
.LBB10_4:                               # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-4(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rdx
	callq	alaw_input0
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-4(%rbp), %rdi
	callq	alaw_input1
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	cmpl	$-1, -8(%rbp)
	jne	.LBB10_9
# %bb.7:                                # %land.lhs.true
	movq	in, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB10_9
# %bb.8:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB10_10
.LBB10_9:                               # %if.end
	leaq	-12(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	alaw_input2
.LBB10_10:                              # %return
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	alaw_input, .Lfunc_end10-alaw_input
	.cfi_endproc
                                        # -- End function
	.globl	linear_input            # -- Begin function linear_input
	.p2align	4, 0x90
	.type	linear_input,@function
linear_input:                           # @linear_input
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	in, %rcx
	movl	$2, %esi
	movl	$160, %edx
	callq	fread
                                        # kill: def %eax killed %eax killed %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	linear_input, .Lfunc_end11-linear_input
	.cfi_endproc
                                        # -- End function
	.globl	audio_init_input0       # -- Begin function audio_init_input0
	.p2align	4, 0x90
	.type	audio_init_input0,@function
audio_init_input0:                      # @audio_init_input0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	inname(%rip), %r8
	movl	$.L.str.2.62, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end12:
	.size	audio_init_input0, .Lfunc_end12-audio_init_input0
	.cfi_endproc
                                        # -- End function
	.globl	alaw_input0             # -- Begin function alaw_input0
	.p2align	4, 0x90
	.type	alaw_input0,@function
alaw_input0:                            # @alaw_input0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -36(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	%rdx, -32(%rsp)
	movl	(%rdx), %ecx
	movl	%ecx, -40(%rsp)
	movzbl	-40(%rsp), %ecx
	movzwl	a2s(%rcx,%rcx), %ecx
	movslq	-36(%rsp), %rdx
	movw	%cx, (%rax,%rdx,2)
	movq	-32(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end13:
	.size	alaw_input0, .Lfunc_end13-alaw_input0
	.cfi_endproc
                                        # -- End function
	.globl	alaw_input1             # -- Begin function alaw_input1
	.p2align	4, 0x90
	.type	alaw_input1,@function
alaw_input1:                            # @alaw_input1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end14:
	.size	alaw_input1, .Lfunc_end14-alaw_input1
	.cfi_endproc
                                        # -- End function
	.globl	alaw_input2             # -- Begin function alaw_input2
	.p2align	4, 0x90
	.type	alaw_input2,@function
alaw_input2:                            # @alaw_input2
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
.Lfunc_end15:
	.size	alaw_input2, .Lfunc_end15-alaw_input2
	.cfi_endproc
                                        # -- End function
	.globl	get_u320                # -- Begin function get_u320
	.p2align	4, 0x90
	.type	get_u320,@function
get_u320:                               # @get_u320
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -44(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -40(%rsp)
	shlq	$8, %rcx
	movzbl	-44(%rsp), %edx
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end16:
	.size	get_u320, .Lfunc_end16-get_u320
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function generic_init
	.type	generic_init,@function
generic_init:                           # @generic_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	generic_init, .Lfunc_end17-generic_init
	.cfi_endproc
                                        # -- End function
	.globl	alaw_output             # -- Begin function alaw_output
	.p2align	4, 0x90
	.type	alaw_output,@function
alaw_output:                            # @alaw_output
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$160, -4(%rbp)
	jge	.LBB18_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	sarl	$4, %eax
	cltq
	movzbl	s2a(,%rax), %edi
	movq	out, %rsi
	callq	fputc
	cmpl	$-1, %eax
	jne	.LBB18_4
# %bb.3:                                # %if.then
	movl	$-1, -8(%rbp)
	jmp	.LBB18_7
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_5
.LBB18_5:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	leaq	-16(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	alaw_output0
	jmp	.LBB18_1
.LBB18_6:                               # %for.end
	movl	$0, -8(%rbp)
.LBB18_7:                               # %return
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	alaw_output, .Lfunc_end18-alaw_output
	.cfi_endproc
                                        # -- End function
	.globl	alaw_output0            # -- Begin function alaw_output0
	.p2align	4, 0x90
	.type	alaw_output0,@function
alaw_output0:                           # @alaw_output0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	addq	$2, %rax
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end19:
	.size	alaw_output0, .Lfunc_end19-alaw_output0
	.cfi_endproc
                                        # -- End function
	.globl	linear_output           # -- Begin function linear_output
	.p2align	4, 0x90
	.type	linear_output,@function
linear_output:                          # @linear_output
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
	movl	$222222229, -20(%rbp)   # imm = 0xD3ED795
	movl	$555555562, -16(%rbp)   # imm = 0x211D1AEA
	movl	$444444451, -12(%rbp)   # imm = 0x1A7DAF23
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	out, %rcx
	movl	$2, %esi
	movl	$160, %edx
	callq	fwrite
	xorl	%ecx, %ecx
	cmpq	$160, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	linear_output, .Lfunc_end20-linear_output
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
	subq	$32, %rsp
	movl	$0, -24(%rbp)
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	parse_argv0
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.12, %rdx
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	getopt
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	je	.LBB21_18
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$-70, %eax
	movl	%eax, %ecx
	subl	$48, %ecx
	ja	.LBB21_16
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	.LJTI21_0(,%rax,8), %rax
	jmpq	*%rax
.LBB21_4:                               # %sw.bb
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, f_decode
	jmp	.LBB21_17
.LBB21_5:                               # %sw.bb1
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, f_force
	jmp	.LBB21_17
.LBB21_6:                               # %sw.bb2
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, f_cat
	jmp	.LBB21_17
.LBB21_7:                               # %sw.bb3
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, f_precious
	jmp	.LBB21_17
.LBB21_8:                               # %sw.bb4
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, f_fast
	jmp	.LBB21_17
.LBB21_9:                               # %sw.bb5
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$1, f_verbose
	jmp	.LBB21_17
.LBB21_10:                              # %sw.bb6
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$f_ulaw, %rdi
	callq	set_format
	jmp	.LBB21_17
.LBB21_11:                              # %sw.bb7
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$f_linear, %rdi
	callq	set_format
	jmp	.LBB21_17
.LBB21_12:                              # %sw.bb8
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$f_alaw, %rdi
	callq	set_format
	jmp	.LBB21_17
.LBB21_13:                              # %sw.bb9
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$f_audio, %rdi
	callq	set_format
	jmp	.LBB21_17
.LBB21_14:                              # %sw.bb10
	callq	version
	xorl	%edi, %edi
	callq	exit
.LBB21_15:                              # %sw.bb11
	callq	help
	xorl	%edi, %edi
	callq	exit
.LBB21_16:                              # %sw.default
	callq	main0
.LBB21_17:                              # %sw.epilog
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_1
.LBB21_18:                              # %while.end
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	main1
	movabsq	$onintr, %rdi
	callq	catch_signals
	cmpl	$0, -4(%rbp)
	jg	.LBB21_20
# %bb.19:                               # %if.then
	xorl	%edi, %edi
	callq	process
	jmp	.LBB21_24
.LBB21_20:                              # %if.else
	jmp	.LBB21_21
.LBB21_21:                              # %while.cond15
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, %eax
	je	.LBB21_23
# %bb.22:                               # %while.body16
                                        #   in Loop: Header=BB21_21 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rdi
	callq	process
	jmp	.LBB21_21
.LBB21_23:                              # %while.end18
	jmp	.LBB21_24
.LBB21_24:                              # %if.end
	xorl	%edi, %edi
	callq	exit
.Lfunc_end21:
	.size	main, .Lfunc_end21-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_8
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_9
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_12
	.quad	.LBB21_16
	.quad	.LBB21_6
	.quad	.LBB21_4
	.quad	.LBB21_16
	.quad	.LBB21_5
	.quad	.LBB21_16
	.quad	.LBB21_15
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_11
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_7
	.quad	.LBB21_16
	.quad	.LBB21_16
	.quad	.LBB21_13
	.quad	.LBB21_16
	.quad	.LBB21_10
	.quad	.LBB21_14
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function parse_argv0
	.type	parse_argv0,@function
parse_argv0:                            # @parse_argv0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB22_2
# %bb.1:                                # %cond.true
	movq	-8(%rbp), %rdi
	jmp	.LBB22_3
.LBB22_2:                               # %cond.false
	movabsq	$.L.str.14, %rdi
	jmp	.LBB22_3
.LBB22_3:                               # %cond.end
	callq	endname
	movabsq	$.L.str.15, %rsi
	movq	%rax, -8(%rbp)
	movq	%rax, progname
	movq	-8(%rbp), %rdi
	movl	$2, %edx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB22_5
# %bb.4:                                # %if.then
	movl	$1, f_decode
.LBB22_5:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, -12(%rbp)
	cmpl	$3, %eax
	jl	.LBB22_8
# %bb.6:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	addq	$-3, %rdi
	movl	$.L.str.16, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB22_8
# %bb.7:                                # %if.then8
	callq	parse_argv00
.LBB22_8:                               # %if.end9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	parse_argv0, .Lfunc_end22-parse_argv0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function set_format
	.type	set_format,@function
set_format:                             # @set_format
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, f_format
	je	.LBB23_3
# %bb.1:                                # %land.lhs.true
	movq	f_format, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB23_3
# %bb.2:                                # %if.then
	callq	set_format0
.LBB23_3:                               # %if.end
	leaq	-8(%rbp), %rdi
	callq	set_format1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	set_format, .Lfunc_end23-set_format
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function version
	.type	version,@function
version:                                # @version
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	version0
	popq	%rbp
	retq
.Lfunc_end24:
	.size	version, .Lfunc_end24-version
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function help
	.type	help,@function
help:                                   # @help
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	help0
	popq	%rbp
	retq
.Lfunc_end25:
	.size	help, .Lfunc_end25-help
	.cfi_endproc
                                        # -- End function
	.globl	main0                   # -- Begin function main0
	.p2align	4, 0x90
	.type	main0,@function
main0:                                  # @main0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end26:
	.size	main0, .Lfunc_end26-main0
	.cfi_endproc
                                        # -- End function
	.globl	main1                   # -- Begin function main1
	.p2align	4, 0x90
	.type	main1,@function
main1:                                  # @main1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	movl	f_cat(%rip), %edx
	orl	%edx, f_precious(%rip)
	movslq	optind(%rip), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -16(%rsp)
	subl	optind(%rip), %eax
	movl	%eax, -28(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end27:
	.size	main1, .Lfunc_end27-main1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function onintr
	.type	onintr,@function
onintr:                                 # @onintr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	callq	onintr0
	movq	$0, outname
	cmpq	$0, -8(%rbp)
	je	.LBB28_2
# %bb.1:                                # %if.then
	leaq	-8(%rbp), %rdi
	callq	onintr1
.LBB28_2:                               # %if.end
	movl	$1, %edi
	callq	exit
.Lfunc_end28:
	.size	onintr, .Lfunc_end28-onintr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function catch_signals
	.type	catch_signals,@function
catch_signals:                          # @catch_signals
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	catch_signals0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	catch_signals, .Lfunc_end29-catch_signals
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function process
	.type	process,@function
process:                                # @process
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$instat, %rsi
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, out
	movq	$0, in
	movq	$0, outname
	movq	$0, inname
	movq	-8(%rbp), %rdi
	callq	open_input
	cmpl	$0, %eax
	je	.LBB30_2
# %bb.1:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	open_output
	cmpl	$0, %eax
	jne	.LBB30_3
.LBB30_2:                               # %if.then
	jmp	.LBB30_44
.LBB30_3:                               # %if.end
	cmpl	$0, f_decode
	je	.LBB30_5
# %bb.4:                                # %cond.true
	movq	init_output, %rcx
	jmp	.LBB30_6
.LBB30_5:                               # %cond.false
	movq	init_input, %rcx
.LBB30_6:                               # %cond.end
	callq	*%rcx
	cmpl	$0, %eax
	je	.LBB30_17
# %bb.7:                                # %if.then6
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.34, %rax
	movq	stderr, %rdi
	movq	progname, %rdx
	movl	f_decode, %esi
	cmpl	$0, %esi
	cmovneq	%rax, %rcx
	cmpl	$0, f_decode
	je	.LBB30_12
# %bb.8:                                # %cond.true10
	cmpq	$0, outname
	je	.LBB30_10
# %bb.9:                                # %cond.true12
	movq	outname, %r8
	jmp	.LBB30_11
.LBB30_10:                              # %cond.false13
	movabsq	$.L.str.36, %r8
	jmp	.LBB30_11
.LBB30_11:                              # %cond.end14
	jmp	.LBB30_16
.LBB30_12:                              # %cond.false16
	cmpq	$0, inname
	je	.LBB30_14
# %bb.13:                               # %cond.true18
	movq	inname, %r8
	jmp	.LBB30_15
.LBB30_14:                              # %cond.false19
	movabsq	$.L.str.37, %r8
	jmp	.LBB30_15
.LBB30_15:                              # %cond.end20
.LBB30_16:                              # %cond.end22
	movabsq	$.L.str.33, %rsi
	movb	$0, %al
	callq	fprintf
	jmp	.LBB30_44
.LBB30_17:                              # %if.end25
	movabsq	$process_encode, %rcx
	movabsq	$process_decode, %rax
	movl	f_decode, %edx
	cmpl	$0, %edx
	cmovneq	%rax, %rcx
	callq	*%rcx
	cmpl	$0, %eax
	je	.LBB30_19
# %bb.18:                               # %if.then30
	jmp	.LBB30_44
.LBB30_19:                              # %if.end31
	movq	out, %rdi
	callq	fflush
	cmpl	$0, %eax
	jl	.LBB30_21
# %bb.20:                               # %lor.lhs.false33
	movq	out, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB30_28
.LBB30_21:                              # %if.then36
	cmpq	$0, outname
	je	.LBB30_23
# %bb.22:                               # %cond.true38
	movq	outname, %rdi
	jmp	.LBB30_24
.LBB30_23:                              # %cond.false39
	movabsq	$.L.str.36, %rdi
	jmp	.LBB30_24
.LBB30_24:                              # %cond.end40
	callq	perror
	movq	stderr, %rdi
	movq	progname, %rdx
	cmpq	$0, outname
	je	.LBB30_26
# %bb.25:                               # %cond.true43
	movq	outname, %rcx
	jmp	.LBB30_27
.LBB30_26:                              # %cond.false44
	movabsq	$.L.str.36, %rcx
	jmp	.LBB30_27
.LBB30_27:                              # %cond.end45
	movabsq	$.L.str.38, %rsi
	movb	$0, %al
	callq	fprintf
	jmp	.LBB30_44
.LBB30_28:                              # %if.end48
	movq	out, %rax
	cmpq	stdout, %rax
	je	.LBB30_34
# %bb.29:                               # %if.then50
	callq	update_times
	callq	update_mode
	callq	update_own
	movq	out, %rdi
	callq	fclose
	cmpl	$0, %eax
	jge	.LBB30_31
# %bb.30:                               # %if.then53
	callq	process0
	jmp	.LBB30_44
.LBB30_31:                              # %if.end55
	movq	outname, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB30_33
# %bb.32:                               # %if.then57
	callq	process1
.LBB30_33:                              # %if.end58
	movq	$0, outname
.LBB30_34:                              # %if.end59
	movq	$0, out
	movq	in, %rax
	cmpq	stdin, %rax
	je	.LBB30_43
# %bb.35:                               # %if.then61
	movq	in, %rdi
	callq	fclose
	movq	$0, in
	cmpl	$0, f_cat
	jne	.LBB30_40
# %bb.36:                               # %land.lhs.true
	cmpl	$0, f_precious
	jne	.LBB30_40
# %bb.37:                               # %if.then65
	movq	inname, %rdi
	callq	unlink
	cmpl	$0, %eax
	jge	.LBB30_39
# %bb.38:                               # %if.then68
	callq	process2
.LBB30_39:                              # %if.end70
	jmp	.LBB30_44
.LBB30_40:                              # %if.end71
	movq	inname, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB30_42
# %bb.41:                               # %if.then73
	callq	process3
.LBB30_42:                              # %if.end74
	movq	$0, inname
.LBB30_43:                              # %if.end75
	movl	$0, -12(%rbp)
	jmp	.LBB30_61
.LBB30_44:                              # %err
	cmpq	$0, out
	je	.LBB30_51
# %bb.45:                               # %land.lhs.true77
	movq	out, %rax
	cmpq	stdout, %rax
	je	.LBB30_51
# %bb.46:                               # %if.then79
	movq	out, %rdi
	callq	fclose
	movq	$0, out
	movq	outname, %rdi
	callq	unlink
	cmpl	$0, %eax
	jge	.LBB30_50
# %bb.47:                               # %land.lhs.true83
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB30_50
# %bb.48:                               # %land.lhs.true86
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB30_50
# %bb.49:                               # %if.then89
	callq	process4
.LBB30_50:                              # %if.end91
	jmp	.LBB30_51
.LBB30_51:                              # %if.end92
	cmpq	$0, in
	je	.LBB30_54
# %bb.52:                               # %land.lhs.true94
	movq	in, %rax
	cmpq	stdin, %rax
	je	.LBB30_54
# %bb.53:                               # %if.then96
	callq	process5
.LBB30_54:                              # %if.end98
	cmpq	$0, inname
	je	.LBB30_57
# %bb.55:                               # %land.lhs.true100
	movq	inname, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB30_57
# %bb.56:                               # %if.then102
	callq	process6
.LBB30_57:                              # %if.end103
	cmpq	$0, outname
	je	.LBB30_60
# %bb.58:                               # %land.lhs.true105
	movq	outname, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB30_60
# %bb.59:                               # %if.then107
	callq	process7
.LBB30_60:                              # %if.end108
	movl	$-1, -12(%rbp)
.LBB30_61:                              # %return
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	process, .Lfunc_end30-process
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function open_input
	.type	open_input,@function
open_input:                             # @open_input
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
	movl	$222222227, -52(%rbp)   # imm = 0xD3ED793
	movl	$555555560, -48(%rbp)   # imm = 0x211D1AE8
	movl	$444444449, -44(%rbp)   # imm = 0x1A7DAF21
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	%r14, -64(%rbp)
	movq	f_format, %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_2
# %bb.1:                                # %if.then
	callq	open_input0
	jmp	.LBB31_15
.LBB31_2:                               # %if.else
	cmpl	$0, f_decode
	je	.LBB31_4
# %bb.3:                                # %if.then2
	leaq	-32(%rbp), %rdi
	callq	open_input1
	jmp	.LBB31_8
.LBB31_4:                               # %if.else3
	cmpl	$0, f_cat
	jne	.LBB31_7
# %bb.5:                                # %land.lhs.true
	movabsq	$.L.str.41, %rsi
	movq	-32(%rbp), %rdi
	callq	suffix
	cmpq	$0, %rax
	je	.LBB31_7
# %bb.6:                                # %if.then7
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	open_input2
	jmp	.LBB31_19
.LBB31_7:                               # %if.end
	leaq	-32(%rbp), %rdi
	callq	open_input3
.LBB31_8:                               # %if.end12
	movabsq	$.L.str.43, %rsi
	movq	inname, %rdi
	callq	fopen
	movq	%rax, in
	cmpq	$0, %rax
	jne	.LBB31_10
# %bb.9:                                # %if.then15
	leaq	-20(%rbp), %rdi
	callq	open_input4
	jmp	.LBB31_19
.LBB31_10:                              # %if.end17
	movq	inname, %rdi
	movq	in, %rsi
	movq	-64(%rbp), %rdx
	callq	okay_as_input
	cmpl	$0, %eax
	jne	.LBB31_12
# %bb.11:                               # %if.then20
	movl	$0, -20(%rbp)
	jmp	.LBB31_19
.LBB31_12:                              # %if.end21
	cmpq	$0, -40(%rbp)
	jne	.LBB31_14
# %bb.13:                               # %if.then23
	leaq	-40(%rbp), %rdi
	callq	open_input5
.LBB31_14:                              # %if.end25
	jmp	.LBB31_15
.LBB31_15:                              # %if.end26
	cmpq	$0, -40(%rbp)
	je	.LBB31_17
# %bb.16:                               # %cond.true
	movq	-40(%rbp), %rdi
	jmp	.LBB31_18
.LBB31_17:                              # %cond.false
	movabsq	$f_ulaw, %rdi
	jmp	.LBB31_18
.LBB31_18:                              # %cond.end
	callq	prepare_io
	movl	$1, -20(%rbp)
.LBB31_19:                              # %return
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	open_input, .Lfunc_end31-open_input
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function open_output
	.type	open_output,@function
open_output:                            # @open_output
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB32_2
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, f_cat
	je	.LBB32_3
.LBB32_2:                               # %if.then
	callq	open_output0
	jmp	.LBB32_19
.LBB32_3:                               # %if.else
	movabsq	$codename, %rax
	movabsq	$plainname, %rcx
	movl	$-1, -4(%rbp)
	movl	f_decode, %edx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	length_okay
	cmpl	$0, %eax
	jne	.LBB32_5
# %bb.4:                                # %if.then5
	movl	$0, -8(%rbp)
	jmp	.LBB32_20
.LBB32_5:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	$193, %esi
	movl	$438, %edx              # imm = 0x1B6
	movb	$0, %al
	callq	open
	movl	%eax, -4(%rbp)
	cmpl	$0, %eax
	jl	.LBB32_7
# %bb.6:                                # %if.then7
	leaq	-4(%rbp), %rdi
	callq	open_output1
	jmp	.LBB32_14
.LBB32_7:                               # %if.else9
	callq	__errno_location
	cmpl	$17, (%rax)
	je	.LBB32_9
# %bb.8:                                # %if.then13
	movq	$0, out
	jmp	.LBB32_13
.LBB32_9:                               # %if.else14
	movq	-16(%rbp), %rdi
	callq	ok_to_replace
	cmpl	$0, %eax
	je	.LBB32_11
# %bb.10:                               # %if.then17
	leaq	-16(%rbp), %rdi
	callq	open_output2
	jmp	.LBB32_12
.LBB32_11:                              # %if.else19
	movl	$0, -8(%rbp)
	jmp	.LBB32_20
.LBB32_12:                              # %if.end20
	jmp	.LBB32_13
.LBB32_13:                              # %if.end21
	jmp	.LBB32_14
.LBB32_14:                              # %if.end22
	cmpq	$0, out
	jne	.LBB32_18
# %bb.15:                               # %if.then24
	movq	-16(%rbp), %rdi
	callq	perror
	movabsq	$.L.str.52, %rsi
	movq	stderr, %rdi
	movq	progname, %rdx
	movq	-16(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	cmpl	$0, -4(%rbp)
	jl	.LBB32_17
# %bb.16:                               # %if.then28
	leaq	-4(%rbp), %rdi
	callq	open_output3
.LBB32_17:                              # %if.end30
	movl	$0, -8(%rbp)
	jmp	.LBB32_20
.LBB32_18:                              # %if.end31
	leaq	-16(%rbp), %rdi
	callq	open_output4
.LBB32_19:                              # %if.end32
	movl	$1, -8(%rbp)
.LBB32_20:                              # %return
	movl	-8(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	open_output, .Lfunc_end32-open_output
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function process_decode
	.type	process_decode,@function
process_decode:                         # @process_decode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	callq	gsm_create
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB33_2
# %bb.1:                                # %if.then
	callq	process_decode0
	movl	$-1, -4(%rbp)
	jmp	.LBB33_28
.LBB33_2:                               # %if.end
	leaq	-16(%rbp), %rdi
	callq	process_decode1
.LBB33_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rdi
	movq	in, %rcx
	movl	$1, %esi
	movl	$33, %edx
	callq	fread
	movl	%eax, -8(%rbp)
	cmpl	$0, %eax
	jle	.LBB33_19
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB33_3 Depth=1
	movslq	-8(%rbp), %rax
	cmpq	$33, %rax
	je	.LBB33_11
# %bb.5:                                # %if.then8
	cmpl	$0, -8(%rbp)
	jl	.LBB33_10
# %bb.6:                                # %if.then11
	movabsq	$.L.str.50, %r8
	movl	$33, %eax
	movq	stderr, %rdi
	movq	progname, %rdx
	movslq	-8(%rbp), %rsi
	movl	$33, %ecx
	subq	%rsi, %rcx
	movslq	-8(%rbp), %rsi
	subq	%rsi, %rax
	cmpq	$1, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	addq	%rax, %r8
	cmpq	$0, inname
	je	.LBB33_8
# %bb.7:                                # %cond.true
	movq	inname, %r9
	jmp	.LBB33_9
.LBB33_8:                               # %cond.false
	movabsq	$.L.str.37, %r9
	jmp	.LBB33_9
.LBB33_9:                               # %cond.end
	movabsq	$.L.str.56, %rsi
	movb	$0, %al
	callq	fprintf
.LBB33_10:                              # %if.end19
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	process_decode2
	jmp	.LBB33_28
.LBB33_11:                              # %if.end21
                                        #   in Loop: Header=BB33_3 Depth=1
	leaq	-384(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gsm_decode
	cmpl	$0, %eax
	je	.LBB33_16
# %bb.12:                               # %if.then26
	movq	stderr, %rdi
	movq	progname, %rdx
	cmpq	$0, inname
	je	.LBB33_14
# %bb.13:                               # %cond.true28
	movq	inname, %rcx
	jmp	.LBB33_15
.LBB33_14:                              # %cond.false29
	movabsq	$.L.str.37, %rcx
	jmp	.LBB33_15
.LBB33_15:                              # %cond.end30
	movabsq	$.L.str.57, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	callq	gsm_destroy
	callq	__errno_location
	movl	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB33_28
.LBB33_16:                              # %if.end34
                                        #   in Loop: Header=BB33_3 Depth=1
	leaq	-384(%rbp), %rdi
	movq	output, %rax
	callq	*%rax
	cmpl	$0, %eax
	jge	.LBB33_18
# %bb.17:                               # %if.then39
	leaq	-16(%rbp), %rdi
	callq	process_decode3
	movl	$-1, -4(%rbp)
	jmp	.LBB33_28
.LBB33_18:                              # %if.end41
                                        #   in Loop: Header=BB33_3 Depth=1
	jmp	.LBB33_3
.LBB33_19:                              # %while.end
	cmpl	$0, -8(%rbp)
	jge	.LBB33_27
# %bb.20:                               # %if.then44
	cmpq	$0, inname
	je	.LBB33_22
# %bb.21:                               # %cond.true46
	movq	inname, %rdi
	jmp	.LBB33_23
.LBB33_22:                              # %cond.false47
	movabsq	$.L.str.37, %rdi
	jmp	.LBB33_23
.LBB33_23:                              # %cond.end48
	callq	perror
	movq	stderr, %rdi
	movq	progname, %rdx
	cmpq	$0, inname
	je	.LBB33_25
# %bb.24:                               # %cond.true51
	movq	inname, %rcx
	jmp	.LBB33_26
.LBB33_25:                              # %cond.false52
	movabsq	$.L.str.37, %rcx
	jmp	.LBB33_26
.LBB33_26:                              # %cond.end53
	movabsq	$.L.str.59, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	callq	gsm_destroy
	movl	$-1, -4(%rbp)
	jmp	.LBB33_28
.LBB33_27:                              # %if.end56
	leaq	-16(%rbp), %rdi
	callq	process_decode4
	movl	$0, -4(%rbp)
.LBB33_28:                              # %return
	movl	-4(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end33:
	.size	process_decode, .Lfunc_end33-process_decode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function process_encode
	.type	process_encode,@function
process_encode:                         # @process_encode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	callq	gsm_create
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB34_2
# %bb.1:                                # %if.then
	callq	process_encode0
	movl	$-1, -8(%rbp)
	jmp	.LBB34_24
.LBB34_2:                               # %if.end
	leaq	-16(%rbp), %rdi
	callq	process_encode1
.LBB34_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-384(%rbp), %rdi
	movq	input, %rax
	callq	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$0, %eax
	jle	.LBB34_15
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB34_3 Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$160, %rax
	jae	.LBB34_6
# %bb.5:                                # %if.then6
                                        #   in Loop: Header=BB34_3 Depth=1
	movl	$320, %edx              # imm = 0x140
	leaq	-384(%rbp), %rdi
	movslq	-4(%rbp), %rax
	shlq	$1, %rax
	addq	%rax, %rdi
	movslq	-4(%rbp), %rax
	shlq	$1, %rax
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB34_6:                               # %if.end9
                                        #   in Loop: Header=BB34_3 Depth=1
	leaq	-64(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gsm_encode
	leaq	-64(%rbp), %rdi
	movq	out, %rcx
	movl	$33, %esi
	movl	$1, %edx
	callq	fwrite
	cmpq	$1, %rax
	je	.LBB34_14
# %bb.7:                                # %if.then16
	cmpq	$0, outname
	je	.LBB34_9
# %bb.8:                                # %cond.true
	movq	outname, %rdi
	jmp	.LBB34_10
.LBB34_9:                               # %cond.false
	movabsq	$.L.str.36, %rdi
	jmp	.LBB34_10
.LBB34_10:                              # %cond.end
	callq	perror
	movq	stderr, %rdi
	movq	progname, %rdx
	cmpq	$0, outname
	je	.LBB34_12
# %bb.11:                               # %cond.true19
	movq	outname, %rcx
	jmp	.LBB34_13
.LBB34_12:                              # %cond.false20
	movabsq	$.L.str.36, %rcx
	jmp	.LBB34_13
.LBB34_13:                              # %cond.end21
	movabsq	$.L.str.58, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	callq	gsm_destroy
	movl	$-1, -8(%rbp)
	jmp	.LBB34_24
.LBB34_14:                              # %if.end24
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_3
.LBB34_15:                              # %while.end
	cmpl	$0, -4(%rbp)
	jge	.LBB34_23
# %bb.16:                               # %if.then27
	cmpq	$0, inname
	je	.LBB34_18
# %bb.17:                               # %cond.true29
	movq	inname, %rdi
	jmp	.LBB34_19
.LBB34_18:                              # %cond.false30
	movabsq	$.L.str.37, %rdi
	jmp	.LBB34_19
.LBB34_19:                              # %cond.end31
	callq	perror
	movq	stderr, %rdi
	movq	progname, %rdx
	cmpq	$0, inname
	je	.LBB34_21
# %bb.20:                               # %cond.true34
	movq	inname, %rcx
	jmp	.LBB34_22
.LBB34_21:                              # %cond.false35
	movabsq	$.L.str.37, %rcx
	jmp	.LBB34_22
.LBB34_22:                              # %cond.end36
	movabsq	$.L.str.59, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	callq	gsm_destroy
	movl	$-1, -8(%rbp)
	jmp	.LBB34_24
.LBB34_23:                              # %if.end39
	leaq	-16(%rbp), %rdi
	callq	process_encode2
	movl	$0, -8(%rbp)
.LBB34_24:                              # %return
	movl	-8(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end34:
	.size	process_encode, .Lfunc_end34-process_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function update_times
	.type	update_times,@function
update_times:                           # @update_times
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
	movq	instat+16, %rbx
	movl	$222222228, -20(%rbp)   # imm = 0xD3ED794
	movl	$555555561, -16(%rbp)   # imm = 0x211D1AE9
	movl	$444444450, -12(%rbp)   # imm = 0x1A7DAF22
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	guardMe
	cmpq	$0, %rbx
	jne	.LBB35_2
# %bb.1:                                # %if.then
	jmp	.LBB35_4
.LBB35_2:                               # %if.end
	cmpq	$0, outname
	je	.LBB35_4
# %bb.3:                                # %if.then2
	callq	update_times0
.LBB35_4:                               # %if.end4
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	update_times, .Lfunc_end35-update_times
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function update_mode
	.type	update_mode,@function
update_mode:                            # @update_mode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	$0, instat+16
	jne	.LBB36_2
# %bb.1:                                # %if.then
	jmp	.LBB36_4
.LBB36_2:                               # %if.end
	movq	out, %rdi
	movb	$0, %al
	callq	fileno
	movl	instat+24, %esi
	andl	$4095, %esi             # imm = 0xFFF
	movl	%eax, %edi
	movb	$0, %al
	callq	fchmod
	cmpl	$0, %eax
	je	.LBB36_4
# %bb.3:                                # %if.then3
	callq	update_mode0
.LBB36_4:                               # %if.end5
	popq	%rbp
	retq
.Lfunc_end36:
	.size	update_mode, .Lfunc_end36-update_mode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function update_own
	.type	update_own,@function
update_own:                             # @update_own
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	$0, instat+16
	jne	.LBB37_2
# %bb.1:                                # %if.then
	jmp	.LBB37_3
.LBB37_2:                               # %if.end
	callq	update_own0
.LBB37_3:                               # %return
	popq	%rbp
	retq
.Lfunc_end37:
	.size	update_own, .Lfunc_end37-update_own
	.cfi_endproc
                                        # -- End function
	.globl	process0                # -- Begin function process0
	.p2align	4, 0x90
	.type	process0,@function
process0:                               # @process0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outname(%rip), %rdi
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	outname(%rip), %rcx
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end38:
	.size	process0, .Lfunc_end38-process0
	.cfi_endproc
                                        # -- End function
	.globl	process1                # -- Begin function process1
	.p2align	4, 0x90
	.type	process1,@function
process1:                               # @process1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outname(%rip), %rdi
	callq	free
	popq	%rax
	retq
.Lfunc_end39:
	.size	process1, .Lfunc_end39-process1
	.cfi_endproc
                                        # -- End function
	.globl	process2                # -- Begin function process2
	.p2align	4, 0x90
	.type	process2,@function
process2:                               # @process2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	inname(%rip), %rdi
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	inname(%rip), %rcx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end40:
	.size	process2, .Lfunc_end40-process2
	.cfi_endproc
                                        # -- End function
	.globl	process3                # -- Begin function process3
	.p2align	4, 0x90
	.type	process3,@function
process3:                               # @process3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	inname(%rip), %rdi
	callq	free
	popq	%rax
	retq
.Lfunc_end41:
	.size	process3, .Lfunc_end41-process3
	.cfi_endproc
                                        # -- End function
	.globl	process4                # -- Begin function process4
	.p2align	4, 0x90
	.type	process4,@function
process4:                               # @process4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outname(%rip), %rdi
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	outname(%rip), %rcx
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end42:
	.size	process4, .Lfunc_end42-process4
	.cfi_endproc
                                        # -- End function
	.globl	process5                # -- Begin function process5
	.p2align	4, 0x90
	.type	process5,@function
process5:                               # @process5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	in(%rip), %rdi
	callq	fclose
	movq	$0, in(%rip)
	popq	%rax
	retq
.Lfunc_end43:
	.size	process5, .Lfunc_end43-process5
	.cfi_endproc
                                        # -- End function
	.globl	process6                # -- Begin function process6
	.p2align	4, 0x90
	.type	process6,@function
process6:                               # @process6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	inname(%rip), %rdi
	callq	free
	popq	%rax
	retq
.Lfunc_end44:
	.size	process6, .Lfunc_end44-process6
	.cfi_endproc
                                        # -- End function
	.globl	process7                # -- Begin function process7
	.p2align	4, 0x90
	.type	process7,@function
process7:                               # @process7
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outname(%rip), %rdi
	callq	free
	popq	%rax
	retq
.Lfunc_end45:
	.size	process7, .Lfunc_end45-process7
	.cfi_endproc
                                        # -- End function
	.globl	update_own0             # -- Begin function update_own0
	.p2align	4, 0x90
	.type	update_own0,@function
update_own0:                            # @update_own0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	out(%rip), %rdi
	xorl	%eax, %eax
	callq	fileno
	movl	%eax, %ecx
	movl	instat+28(%rip), %esi
	movl	instat+32(%rip), %edx
	xorl	%eax, %eax
	movl	%ecx, %edi
	callq	fchown
	popq	%rax
	retq
.Lfunc_end46:
	.size	update_own0, .Lfunc_end46-update_own0
	.cfi_endproc
                                        # -- End function
	.globl	update_mode0            # -- Begin function update_mode0
	.p2align	4, 0x90
	.type	update_mode0,@function
update_mode0:                           # @update_mode0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	outname(%rip), %rdi
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	outname(%rip), %rcx
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	callq	fprintf
	popq	%rax
	retq
.Lfunc_end47:
	.size	update_mode0, .Lfunc_end47-update_mode0
	.cfi_endproc
                                        # -- End function
	.globl	update_times0           # -- Begin function update_times0
	.p2align	4, 0x90
	.type	update_times0,@function
update_times0:                          # @update_times0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	instat+72(%rip), %rax
	movq	%rax, (%rsp)
	movq	instat+88(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	outname(%rip), %rdi
	movq	%rsp, %rsi
	callq	utime
	addq	$24, %rsp
	retq
.Lfunc_end48:
	.size	update_times0, .Lfunc_end48-update_times0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_create              # -- Begin function gsm_create
	.p2align	4, 0x90
	.type	gsm_create,@function
gsm_create:                             # @gsm_create
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$656, %edi              # imm = 0x290
	callq	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB49_2
# %bb.1:                                # %if.then
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	gsm_create0
	jmp	.LBB49_3
.LBB49_2:                               # %if.end
	leaq	-32(%rbp), %rbx
	leaq	-24(%rbp), %r14
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$656, %edx              # imm = 0x290
	callq	memset
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gsm_create1
.LBB49_3:                               # %return
	movq	-32(%rbp), %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gsm_create, .Lfunc_end49-gsm_create
	.cfi_endproc
                                        # -- End function
	.globl	process_encode0         # -- Begin function process_encode0
	.p2align	4, 0x90
	.type	process_encode0,@function
process_encode0:                        # @process_encode0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	progname(%rip), %rdi
	callq	perror
	popq	%rax
	retq
.Lfunc_end50:
	.size	process_encode0, .Lfunc_end50-process_encode0
	.cfi_endproc
                                        # -- End function
	.globl	process_encode1         # -- Begin function process_encode1
	.p2align	4, 0x90
	.type	process_encode1,@function
process_encode1:                        # @process_encode1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$2, %esi
	movl	$f_fast, %edx
	callq	gsm_option
	movq	8(%rsp), %rdi
	movl	$1, %esi
	movl	$f_verbose, %edx
	callq	gsm_option
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end51:
	.size	process_encode1, .Lfunc_end51-process_encode1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_encode              # -- Begin function gsm_encode
	.p2align	4, 0x90
	.type	gsm_encode,@function
gsm_encode:                             # @gsm_encode
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
	movl	$222222243, -36(%rbp)   # imm = 0xD3ED7A3
	movl	$555555576, -32(%rbp)   # imm = 0x211D1AF8
	movl	$444444465, -28(%rbp)   # imm = 0x1A7DAF31
	movl	-36(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	guardMe
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, -64(%rbp)
	movq	%r15, -56(%rbp)
	movq	%r14, -48(%rbp)
	callq	gsm_encode0
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gsm_encode, .Lfunc_end52-gsm_encode
	.cfi_endproc
                                        # -- End function
	.globl	gsm_destroy             # -- Begin function gsm_destroy
	.p2align	4, 0x90
	.type	gsm_destroy,@function
gsm_destroy:                            # @gsm_destroy
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB53_2
# %bb.1:                                # %if.then
	leaq	-8(%rbp), %rdi
	callq	gsm_destroy0
.LBB53_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gsm_destroy, .Lfunc_end53-gsm_destroy
	.cfi_endproc
                                        # -- End function
	.globl	process_encode2         # -- Begin function process_encode2
	.p2align	4, 0x90
	.type	process_encode2,@function
process_encode2:                        # @process_encode2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	gsm_destroy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end54:
	.size	process_encode2, .Lfunc_end54-process_encode2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_destroy0            # -- Begin function gsm_destroy0
	.p2align	4, 0x90
	.type	gsm_destroy0,@function
gsm_destroy0:                           # @gsm_destroy0
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
.Lfunc_end55:
	.size	gsm_destroy0, .Lfunc_end55-gsm_destroy0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_encode0             # -- Begin function gsm_encode0
	.p2align	4, 0x90
	.type	gsm_encode0,@function
gsm_encode0:                            # @gsm_encode0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdi, 208(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 200(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 192(%rsp)
	movq	%rdx, 184(%rsp)
	movq	(%rdx), %rsi
	movq	%rsi, 176(%rsp)
	leaq	48(%rsp), %rax
	leaq	24(%rsp), %r10
	leaq	32(%rsp), %rdx
	leaq	168(%rsp), %rcx
	leaq	16(%rsp), %r8
	leaq	160(%rsp), %r9
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	Gsm_Coder
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	32(%rsp), %eax
	shrl	$2, %eax
	andl	$15, %eax
	orl	$208, %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movl	32(%rsp), %eax
	shll	$6, %eax
	movzwl	34(%rsp), %ecx
	andl	$63, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	36(%rsp), %eax
	movzwl	38(%rsp), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	leal	(%rcx,%rax,8), %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	38(%rsp), %eax
	shll	$6, %eax
	movzwl	40(%rsp), %ecx
	andl	$15, %ecx
	leal	(%rax,%rcx,4), %eax
	movzwl	42(%rsp), %ecx
	shrl	$2, %ecx
	andl	$3, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	42(%rsp), %eax
	shll	$6, %eax
	movzwl	44(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	46(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	168(%rsp), %eax
	movzwl	16(%rsp), %ecx
	shrl	%ecx
	andl	$1, %ecx
	leal	(%rcx,%rax,2), %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	16(%rsp), %eax
	shll	$7, %eax
	movzwl	160(%rsp), %ecx
	andl	$3, %ecx
	shll	$5, %ecx
	orl	%eax, %ecx
	movzwl	24(%rsp), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%ecx, %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	24(%rsp), %eax
	shll	$7, %eax
	movzwl	48(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	50(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	52(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	52(%rsp), %eax
	shll	$6, %eax
	movzwl	54(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	56(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	58(%rsp), %eax
	shll	$5, %eax
	movzwl	60(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,4), %eax
	movzwl	62(%rsp), %ecx
	shrl	%ecx
	andl	$3, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	62(%rsp), %eax
	shll	$7, %eax
	movzwl	64(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	66(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	68(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	68(%rsp), %eax
	shll	$6, %eax
	movzwl	70(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	72(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	170(%rsp), %eax
	movzwl	18(%rsp), %ecx
	shrl	%ecx
	andl	$1, %ecx
	leal	(%rcx,%rax,2), %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	18(%rsp), %eax
	shll	$7, %eax
	movzwl	162(%rsp), %ecx
	andl	$3, %ecx
	shll	$5, %ecx
	orl	%eax, %ecx
	movzwl	26(%rsp), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%ecx, %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	26(%rsp), %eax
	shll	$7, %eax
	movzwl	74(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	76(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	78(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	78(%rsp), %eax
	shll	$6, %eax
	movzwl	80(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	82(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	84(%rsp), %eax
	movl	88(%rsp), %ecx
	shll	$5, %eax
	movzwl	86(%rsp), %edx
	andl	$7, %edx
	leal	(%rax,%rdx,4), %eax
	shrl	%ecx
	andl	$3, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	88(%rsp), %eax
	shll	$7, %eax
	movzwl	90(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	92(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	94(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	94(%rsp), %eax
	shll	$6, %eax
	movzwl	96(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	98(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	172(%rsp), %eax
	movzwl	20(%rsp), %ecx
	shrl	%ecx
	andl	$1, %ecx
	leal	(%rcx,%rax,2), %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	20(%rsp), %eax
	shll	$7, %eax
	movzwl	164(%rsp), %ecx
	andl	$3, %ecx
	shll	$5, %ecx
	orl	%eax, %ecx
	movzwl	28(%rsp), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%ecx, %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	28(%rsp), %eax
	shll	$7, %eax
	movzwl	100(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	102(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	104(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	104(%rsp), %eax
	shll	$6, %eax
	movzwl	106(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	108(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	110(%rsp), %eax
	shll	$5, %eax
	movzwl	112(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,4), %eax
	movzwl	114(%rsp), %ecx
	shrl	%ecx
	andl	$3, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	114(%rsp), %eax
	shll	$7, %eax
	movzwl	116(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	118(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	120(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	120(%rsp), %eax
	shll	$6, %eax
	movzwl	122(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	124(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	174(%rsp), %eax
	movzwl	22(%rsp), %ecx
	shrl	%ecx
	andl	$1, %ecx
	leal	(%rcx,%rax,2), %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	22(%rsp), %eax
	shll	$7, %eax
	movzwl	166(%rsp), %ecx
	andl	$3, %ecx
	shll	$5, %ecx
	orl	%eax, %ecx
	movzwl	30(%rsp), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%ecx, %eax
	movq	8(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movb	%al, (%rcx)
	movzwl	30(%rsp), %eax
	shll	$7, %eax
	movzwl	126(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	128(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	130(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	130(%rsp), %eax
	shll	$6, %eax
	movzwl	132(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	134(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	136(%rsp), %eax
	movl	140(%rsp), %ecx
	shll	$5, %eax
	movzwl	138(%rsp), %edx
	andl	$7, %edx
	leal	(%rax,%rdx,4), %eax
	shrl	%ecx
	andl	$3, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movl	140(%rsp), %eax
	shll	$7, %eax
	movzwl	142(%rsp), %ecx
	andl	$7, %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movzwl	144(%rsp), %eax
	andl	$7, %eax
	leal	(%rcx,%rax,2), %eax
	movzwl	146(%rsp), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movzwl	146(%rsp), %eax
	shll	$6, %eax
	movzwl	148(%rsp), %ecx
	andl	$7, %ecx
	leal	(%rax,%rcx,8), %eax
	movzwl	150(%rsp), %ecx
	andl	$7, %ecx
	orl	%eax, %ecx
	movq	8(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movb	%cl, (%rax)
	movq	184(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	208(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$216, %rsp
	retq
.Lfunc_end56:
	.size	gsm_encode0, .Lfunc_end56-gsm_encode0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Coder               # -- Begin function Gsm_Coder
	.p2align	4, 0x90
	.type	Gsm_Coder,@function
Gsm_Coder:                              # @Gsm_Coder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	leaq	-400(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	addq	$240, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	%rax, %rdx
	callq	Gsm_Preprocess
	leaq	-400(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	Gsm_LPC_Analysis
	leaq	-400(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Gsm_Short_Term_Analysis_Filter
	movl	$0, -8(%rbp)
.LBB57_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_3 Depth 2
	cmpl	$3, -8(%rbp)
	jg	.LBB57_11
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movabsq	$Gsm_Coder.e, %rcx
	addq	$10, %rcx
	leaq	-400(%rbp), %rsi
	movq	-16(%rbp), %rdi
	imull	$40, -8(%rbp), %eax
	cltq
	shlq	$1, %rax
	addq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	%r9, %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %r10
	movq	%r10, %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	%r10, (%rsp)
	callq	Gsm_Long_Term_Predictor
	movabsq	$Gsm_Coder.e, %rsi
	addq	$10, %rsi
	movq	-16(%rbp), %rdi
	movq	16(%rbp), %rdx
	movq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, 16(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	24(%rbp), %r8
	callq	Gsm_RPE_Encoding
	movl	$0, -4(%rbp)
.LBB57_3:                               # %for.cond9
                                        #   Parent Loop BB57_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$39, -4(%rbp)
	jg	.LBB57_9
# %bb.4:                                # %for.body11
                                        #   in Loop: Header=BB57_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$5, %eax
	cltq
	movswq	Gsm_Coder.e(,%rax,2), %rax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movswq	(%rcx,%rdx,2), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB57_6
# %bb.5:                                # %cond.true
                                        #   in Loop: Header=BB57_3 Depth=2
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-40(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB57_7
.LBB57_6:                               # %cond.false
                                        #   in Loop: Header=BB57_3 Depth=2
	movq	-40(%rbp), %rax
.LBB57_7:                               # %cond.end
                                        #   in Loop: Header=BB57_3 Depth=2
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB57_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB57_3
.LBB57_9:                               # %for.end
                                        #   in Loop: Header=BB57_1 Depth=1
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	Gsm_Coder0
# %bb.10:                               # %for.inc27
                                        #   in Loop: Header=BB57_1 Depth=1
	leaq	24(%rbp), %rdi
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	callq	Gsm_Coder1
	jmp	.LBB57_1
.LBB57_11:                              # %for.end30
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$320, %rsi              # imm = 0x140
	movl	$240, %edx
	callq	memcpy
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Gsm_Coder, .Lfunc_end57-Gsm_Coder
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Preprocess          # -- Begin function Gsm_Preprocess
	.p2align	4, 0x90
	.type	Gsm_Preprocess,@function
Gsm_Preprocess:                         # @Gsm_Preprocess
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-6(%rbp), %rax
	leaq	-40(%rbp), %r9
	leaq	-8(%rbp), %r8
	leaq	-96(%rbp), %rcx
	movq	%rdi, -96(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r8, %rdx
	callq	Gsm_Preprocess0
	movl	$160, -60(%rbp)
.LBB58_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB58_36
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-72(%rbp), %rax
	movswl	(%rax), %eax
	sarl	$3, %eax
	shll	$2, %eax
	movw	%ax, -2(%rbp)
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$-16384, %eax           # imm = 0xC000
	jl	.LBB58_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_5
.LBB58_4:                               # %cond.false
	movabsq	$.L.str.31.78, %rdi
	movabsq	$.L.str.1.32, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Preprocess, %rcx
	movl	$64, %edx
	callq	__assert_fail
.LBB58_5:                               # %cond.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movswl	-2(%rbp), %eax
	cmpl	$16380, %eax            # imm = 0x3FFC
	jg	.LBB58_7
# %bb.6:                                # %cond.true11
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_8
.LBB58_7:                               # %cond.false12
	movabsq	$.L.str.2.33, %rdi
	movabsq	$.L.str.1.32, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Preprocess, %rcx
	movl	$65, %edx
	callq	__assert_fail
.LBB58_8:                               # %cond.end13
                                        #   in Loop: Header=BB58_1 Depth=1
	movswl	-2(%rbp), %eax
	movswl	-8(%rbp), %ecx
	subl	%ecx, %eax
	movw	%ax, -10(%rbp)
	movw	-2(%rbp), %ax
	movw	%ax, -8(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	je	.LBB58_10
# %bb.9:                                # %cond.true20
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_11
.LBB58_10:                              # %cond.false21
	movabsq	$.L.str.3.34, %rdi
	movabsq	$.L.str.1.32, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Preprocess, %rcx
	movl	$81, %edx
	callq	__assert_fail
.LBB58_11:                              # %cond.end22
                                        #   in Loop: Header=BB58_1 Depth=1
	movswq	-10(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shlq	$15, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	sarq	$15, %rax
	movw	%ax, -4(%rbp)
	movq	-40(%rbp), %rax
	movswq	-4(%rbp), %rcx
	shlq	$15, %rcx
	subq	%rcx, %rax
	movw	%ax, -42(%rbp)
	movswq	-42(%rbp), %rax
	imulq	$32735, %rax, %rax      # imm = 0x7FDF
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movswq	-4(%rbp), %rax
	imulq	$32735, %rax, %rax      # imm = 0x7FDF
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB58_19
# %bb.12:                               # %cond.true38
                                        #   in Loop: Header=BB58_1 Depth=1
	cmpq	$0, -24(%rbp)
	jl	.LBB58_14
# %bb.13:                               # %cond.true41
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	jmp	.LBB58_18
.LBB58_14:                              # %cond.false43
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
	subq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	subq	%rcx, %rax
	addq	%rax, %rdx
	movq	%rdx, -56(%rbp)
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	jb	.LBB58_16
# %bb.15:                               # %cond.true51
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	$-2147483648, %rax      # imm = 0x80000000
	jmp	.LBB58_17
.LBB58_16:                              # %cond.false52
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%eax, %eax
	subq	-56(%rbp), %rax
	subq	$2, %rax
.LBB58_17:                              # %cond.end55
                                        #   in Loop: Header=BB58_1 Depth=1
.LBB58_18:                              # %cond.end56
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_26
.LBB58_19:                              # %cond.false58
                                        #   in Loop: Header=BB58_1 Depth=1
	cmpq	$0, -24(%rbp)
	jg	.LBB58_21
# %bb.20:                               # %cond.true61
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	jmp	.LBB58_25
.LBB58_21:                              # %cond.false63
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jb	.LBB58_23
# %bb.22:                               # %cond.true67
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jmp	.LBB58_24
.LBB58_23:                              # %cond.false68
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-56(%rbp), %rax
.LBB58_24:                              # %cond.end69
                                        #   in Loop: Header=BB58_1 Depth=1
.LBB58_25:                              # %cond.end71
                                        #   in Loop: Header=BB58_1 Depth=1
.LBB58_26:                              # %cond.end73
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jge	.LBB58_28
# %bb.27:                               # %cond.true77
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$16384, %rax            # imm = 0x4000
	jmp	.LBB58_32
.LBB58_28:                              # %cond.false79
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$16384, %rax            # imm = 0x4000
	movq	%rax, -56(%rbp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jb	.LBB58_30
# %bb.29:                               # %cond.true83
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jmp	.LBB58_31
.LBB58_30:                              # %cond.false84
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-56(%rbp), %rax
.LBB58_31:                              # %cond.end85
                                        #   in Loop: Header=BB58_1 Depth=1
.LBB58_32:                              # %cond.end87
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	%rax, -32(%rbp)
	movswq	-6(%rbp), %rax
	imulq	$-28180, %rax, %rax     # imm = 0x91EC
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -4(%rbp)
	movq	-32(%rbp), %rax
	sarq	$15, %rax
	movw	%ax, -6(%rbp)
	movswq	-6(%rbp), %rax
	movswq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB58_34
# %bb.33:                               # %cond.true102
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-80(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB58_35
.LBB58_34:                              # %cond.false107
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-80(%rbp), %rax
.LBB58_35:                              # %cond.end108
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -88(%rbp)
	movw	%ax, (%rcx)
	jmp	.LBB58_1
.LBB58_36:                              # %while.end
	leaq	-6(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	callq	Gsm_Preprocess1
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	Gsm_Preprocess, .Lfunc_end58-Gsm_Preprocess
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_LPC_Analysis        # -- Begin function Gsm_LPC_Analysis
	.p2align	4, 0x90
	.type	Gsm_LPC_Analysis,@function
Gsm_LPC_Analysis:                       # @Gsm_LPC_Analysis
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Gsm_LPC_Analysis0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	Gsm_LPC_Analysis, .Lfunc_end59-Gsm_LPC_Analysis
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Short_Term_Analysis_Filter # -- Begin function Gsm_Short_Term_Analysis_Filter
	.p2align	4, 0x90
	.type	Gsm_Short_Term_Analysis_Filter,@function
Gsm_Short_Term_Analysis_Filter:         # @Gsm_Short_Term_Analysis_Filter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %r8
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	Gsm_Short_Term_Analysis_Filter0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	Gsm_Short_Term_Analysis_Filter, .Lfunc_end60-Gsm_Short_Term_Analysis_Filter
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Long_Term_Predictor # -- Begin function Gsm_Long_Term_Predictor
	.p2align	4, 0x90
	.type	Gsm_Long_Term_Predictor,@function
Gsm_Long_Term_Predictor:                # @Gsm_Long_Term_Predictor
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
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rbp), %rax
	movl	$222222223, -52(%rbp)   # imm = 0xD3ED78F
	movl	$555555556, -48(%rbp)   # imm = 0x211D1AE4
	movl	$444444445, -44(%rbp)   # imm = 0x1A7DAF1D
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	guardMe
	movq	%r14, -112(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r13, -88(%rbp)
	movq	%r12, -80(%rbp)
	movq	%r15, -72(%rbp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB61_2
# %bb.1:                                # %cond.true
	jmp	.LBB61_3
.LBB61_2:                               # %cond.false
	movabsq	$.L.str.9.71, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, %rcx
	movl	$545, %edx              # imm = 0x221
	callq	__assert_fail
.LBB61_3:                               # %cond.end
	cmpq	$0, -88(%rbp)
	je	.LBB61_5
# %bb.4:                                # %cond.true2
	jmp	.LBB61_6
.LBB61_5:                               # %cond.false3
	movabsq	$.L.str.2.11, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, %rcx
	movl	$545, %edx              # imm = 0x221
	callq	__assert_fail
.LBB61_6:                               # %cond.end4
	cmpq	$0, -80(%rbp)
	je	.LBB61_8
# %bb.7:                                # %cond.true6
	jmp	.LBB61_9
.LBB61_8:                               # %cond.false7
	movabsq	$.L.str.3.12, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, %rcx
	movl	$545, %edx              # imm = 0x221
	callq	__assert_fail
.LBB61_9:                               # %cond.end8
	cmpq	$0, -72(%rbp)
	je	.LBB61_11
# %bb.10:                               # %cond.true10
	jmp	.LBB61_12
.LBB61_11:                              # %cond.false11
	movabsq	$.L.str.4.13, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, %rcx
	movl	$546, %edx              # imm = 0x222
	callq	__assert_fail
.LBB61_12:                              # %cond.end12
	cmpq	$0, -64(%rbp)
	je	.LBB61_14
# %bb.13:                               # %cond.true14
	jmp	.LBB61_15
.LBB61_14:                              # %cond.false15
	movabsq	$.L.str.5.72, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, %rcx
	movl	$546, %edx              # imm = 0x222
	callq	__assert_fail
.LBB61_15:                              # %cond.end16
	cmpq	$0, 16(%rbp)
	je	.LBB61_17
# %bb.16:                               # %cond.true18
	jmp	.LBB61_18
.LBB61_17:                              # %cond.false19
	movabsq	$.L.str.6.73, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, %rcx
	movl	$546, %edx              # imm = 0x222
	callq	__assert_fail
.LBB61_18:                              # %cond.end20
	leaq	-80(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	16(%rbp), %r9
	callq	Gsm_Long_Term_Predictor0
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	Gsm_Long_Term_Predictor, .Lfunc_end61-Gsm_Long_Term_Predictor
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_RPE_Encoding        # -- Begin function Gsm_RPE_Encoding
	.p2align	4, 0x90
	.type	Gsm_RPE_Encoding,@function
Gsm_RPE_Encoding:                       # @Gsm_RPE_Encoding
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-24(%rbp), %rax
	leaq	-8(%rbp), %r9
	leaq	-32(%rbp), %r10
	leaq	-16(%rbp), %r11
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%r8, -8(%rbp)
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	movq	%r11, %rcx
	callq	Gsm_RPE_Encoding0
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Gsm_RPE_Encoding, .Lfunc_end62-Gsm_RPE_Encoding
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Coder0              # -- Begin function Gsm_Coder0
	.p2align	4, 0x90
	.type	Gsm_Coder0,@function
Gsm_Coder0:                             # @Gsm_Coder0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$80, %rcx
	movq	%rcx, -16(%rsp)
	addq	$80, %rax
	movq	%rax, -32(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end63:
	.size	Gsm_Coder0, .Lfunc_end63-Gsm_Coder0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Coder1              # -- Begin function Gsm_Coder1
	.p2align	4, 0x90
	.type	Gsm_Coder1,@function
Gsm_Coder1:                             # @Gsm_Coder1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$26, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end64:
	.size	Gsm_Coder1, .Lfunc_end64-Gsm_Coder1
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_RPE_Encoding0       # -- Begin function Gsm_RPE_Encoding0
	.p2align	4, 0x90
	.type	Gsm_RPE_Encoding0,@function
Gsm_RPE_Encoding0:                      # @Gsm_RPE_Encoding0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$232, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 72(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 64(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 56(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 32(%rsp)
	movq	%rcx, 48(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	leaq	144(%rsp), %rbx
	movq	%rbx, %rsi
	callq	Weighting_filter
	movq	16(%rsp), %rdx
	leaq	80(%rsp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	RPE_grid_selection
	movq	24(%rsp), %rsi
	movq	40(%rsp), %r8
	leaq	12(%rsp), %rdx
	leaq	14(%rsp), %rcx
	movq	%r14, %rdi
	callq	APCM_quantization
	movq	24(%rsp), %rdi
	movswl	14(%rsp), %edx
	movswl	12(%rsp), %esi
	leaq	112(%rsp), %rbx
	movq	%rbx, %rcx
	callq	APCM_inverse_quantization
	movq	16(%rsp), %rax
	movq	32(%rsp), %rdx
	movswl	(%rax), %edi
	movq	%rbx, %rsi
	callq	RPE_grid_positioning
	movq	56(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end65:
	.size	Gsm_RPE_Encoding0, .Lfunc_end65-Gsm_RPE_Encoding0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Weighting_filter
	.type	Weighting_filter,@function
Weighting_filter:                       # @Weighting_filter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rax, %rdi
	callq	Weighting_filter0
	movl	$0, -4(%rbp)
.LBB66_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -4(%rbp)
	jg	.LBB66_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	$4096, -16(%rbp)        # imm = 0x1000
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$-134, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$-374, %rax, %rax       # imm = 0xFE8A
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$2054, %rax, %rax       # imm = 0x806
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$5741, %rax, %rax       # imm = 0x166D
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	shlq	$13, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$5741, %rax, %rax       # imm = 0x166D
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$2054, %rax, %rax       # imm = 0x806
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$-374, %rax, %rax       # imm = 0xFE8A
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$-134, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	sarq	$13, %rax
	movq	%rax, -16(%rbp)
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jge	.LBB66_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB66_8
.LBB66_4:                               # %cond.false
                                        #   in Loop: Header=BB66_1 Depth=1
	cmpq	$32767, -16(%rbp)       # imm = 0x7FFF
	jle	.LBB66_6
# %bb.5:                                # %cond.true54
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB66_7
.LBB66_6:                               # %cond.false55
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-16(%rbp), %rax
.LBB66_7:                               # %cond.end
                                        #   in Loop: Header=BB66_1 Depth=1
.LBB66_8:                               # %cond.end56
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB66_1
.LBB66_10:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Weighting_filter, .Lfunc_end66-Weighting_filter
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function RPE_grid_selection
	.type	RPE_grid_selection,@function
RPE_grid_selection:                     # @RPE_grid_selection
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
	subq	$88, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$222222224, -76(%rbp)   # imm = 0xD3ED790
	movl	$555555557, -72(%rbp)   # imm = 0x211D1AE5
	movl	$444444446, -68(%rbp)   # imm = 0x1A7DAF1E
	movl	-76(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	-68(%rbp), %edx
	callq	guardMe
	leaq	-64(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movq	%rbx, -48(%rbp)
	movq	%r15, -104(%rbp)
	movq	%r14, -96(%rbp)
	movq	$0, -64(%rbp)
	movw	$0, -50(%rbp)
	movq	$0, -40(%rbp)
	callq	RPE_grid_selection0
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	2(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	8(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	14(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	20(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	26(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	32(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	38(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	44(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	50(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	56(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	62(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	68(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	74(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB67_2
# %bb.1:                                # %if.then
	leaq	-64(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	callq	RPE_grid_selection1
.LBB67_2:                               # %if.end
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	4(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	10(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	16(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	22(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	28(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	34(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	40(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	46(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	52(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	58(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	64(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	70(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	76(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB67_4
# %bb.3:                                # %if.then235
	leaq	-64(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	callq	RPE_grid_selection2
.LBB67_4:                               # %if.end236
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movswl	78(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB67_6
# %bb.5:                                # %if.then246
	leaq	-64(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	callq	RPE_grid_selection3
.LBB67_6:                               # %if.end247
	movl	$0, -56(%rbp)
.LBB67_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -56(%rbp)
	jg	.LBB67_10
# %bb.8:                                # %for.body
                                        #   in Loop: Header=BB67_7 Depth=1
	leaq	-104(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movswl	-50(%rbp), %edx
	callq	RPE_grid_selection4
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB67_7 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB67_7
.LBB67_10:                              # %for.end
	leaq	-96(%rbp), %rdi
	leaq	-50(%rbp), %rsi
	callq	RPE_grid_selection5
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	RPE_grid_selection, .Lfunc_end67-RPE_grid_selection
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function APCM_quantization
	.type	APCM_quantization,@function
APCM_quantization:                      # @APCM_quantization
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
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$222222225, -76(%rbp)   # imm = 0xD3ED791
	movl	$555555558, -72(%rbp)   # imm = 0x211D1AE6
	movl	$444444447, -68(%rbp)   # imm = 0x1A7DAF1F
	movl	-76(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	-68(%rbp), %edx
	callq	guardMe
	movq	%rbx, -88(%rbp)
	movq	%r13, -120(%rbp)
	movq	%r12, -112(%rbp)
	movq	%r15, -104(%rbp)
	movq	%r14, -96(%rbp)
	movw	$0, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB68_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -48(%rbp)
	jg	.LBB68_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-88(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -42(%rbp)
	movswl	-42(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB68_7
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB68_1 Depth=1
	movswl	-42(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB68_5
# %bb.4:                                # %cond.true6
                                        #   in Loop: Header=BB68_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB68_6
.LBB68_5:                               # %cond.false
                                        #   in Loop: Header=BB68_1 Depth=1
	xorl	%eax, %eax
	movswl	-42(%rbp), %ecx
	subl	%ecx, %eax
.LBB68_6:                               # %cond.end
                                        #   in Loop: Header=BB68_1 Depth=1
	jmp	.LBB68_8
.LBB68_7:                               # %cond.false8
                                        #   in Loop: Header=BB68_1 Depth=1
	movswl	-42(%rbp), %eax
.LBB68_8:                               # %cond.end10
                                        #   in Loop: Header=BB68_1 Depth=1
	movw	%ax, -42(%rbp)
	movswl	-42(%rbp), %eax
	movswl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB68_10
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB68_1 Depth=1
	leaq	-52(%rbp), %rdi
	leaq	-42(%rbp), %rsi
	callq	APCM_quantization0
.LBB68_10:                              # %if.end
                                        #   in Loop: Header=BB68_1 Depth=1
	jmp	.LBB68_11
.LBB68_11:                              # %for.inc
                                        #   in Loop: Header=BB68_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB68_1
.LBB68_12:                              # %for.end
	leaq	-42(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	movw	$0, -44(%rbp)
	callq	APCM_quantization1
	movl	$0, -64(%rbp)
	movl	$0, -48(%rbp)
.LBB68_13:                              # %for.cond19
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -48(%rbp)
	jg	.LBB68_21
# %bb.14:                               # %for.body22
                                        #   in Loop: Header=BB68_13 Depth=1
	leaq	-64(%rbp), %rdi
	leaq	-42(%rbp), %rsi
	callq	APCM_quantization2
	movswl	-44(%rbp), %eax
	cmpl	$5, %eax
	jg	.LBB68_16
# %bb.15:                               # %cond.true32
                                        #   in Loop: Header=BB68_13 Depth=1
	jmp	.LBB68_17
.LBB68_16:                              # %cond.false33
	movabsq	$.L.str.42.70, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization, %rcx
	movl	$293, %edx              # imm = 0x125
	callq	__assert_fail
.LBB68_17:                              # %cond.end34
                                        #   in Loop: Header=BB68_13 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB68_19
# %bb.18:                               # %if.then37
                                        #   in Loop: Header=BB68_13 Depth=1
	leaq	-44(%rbp), %rdi
	callq	APCM_quantization3
.LBB68_19:                              # %if.end39
                                        #   in Loop: Header=BB68_13 Depth=1
	jmp	.LBB68_20
.LBB68_20:                              # %for.inc40
                                        #   in Loop: Header=BB68_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB68_13
.LBB68_21:                              # %for.end42
	movswl	-44(%rbp), %eax
	cmpl	$6, %eax
	jg	.LBB68_24
# %bb.22:                               # %land.lhs.true
	movswl	-44(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB68_24
# %bb.23:                               # %cond.true49
	jmp	.LBB68_25
.LBB68_24:                              # %cond.false50
	movabsq	$.L.str.2.43, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization, %rcx
	movl	$297, %edx              # imm = 0x129
	callq	__assert_fail
.LBB68_25:                              # %cond.end51
	movswl	-44(%rbp), %eax
	addl	$5, %eax
	movw	%ax, -42(%rbp)
	movswl	-42(%rbp), %eax
	cmpl	$11, %eax
	jg	.LBB68_28
# %bb.26:                               # %land.lhs.true57
	movswl	-42(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB68_28
# %bb.27:                               # %cond.true61
	jmp	.LBB68_29
.LBB68_28:                              # %cond.false62
	movabsq	$.L.str.3.44, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization, %rcx
	movl	$300, %edx              # imm = 0x12C
	callq	__assert_fail
.LBB68_29:                              # %cond.end63
	movswl	-52(%rbp), %eax
	movswl	-42(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	sarl	%cl, %eax
	movswl	-44(%rbp), %ecx
	shll	$3, %ecx
	movswl	%ax, %edi
	movswl	%cx, %esi
	callq	gsm_add
	leaq	-44(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	movw	%ax, -56(%rbp)
	movswl	-56(%rbp), %edi
	callq	APCM_quantization_xmaxc_to_exp_mant
	movswl	-44(%rbp), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jg	.LBB68_32
# %bb.30:                               # %land.lhs.true73
	movswl	-44(%rbp), %eax
	cmpl	$-4096, %eax            # imm = 0xF000
	jl	.LBB68_32
# %bb.31:                               # %cond.true77
	jmp	.LBB68_33
.LBB68_32:                              # %cond.false78
	movabsq	$.L.str.4.45, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization, %rcx
	movl	$323, %edx              # imm = 0x143
	callq	__assert_fail
.LBB68_33:                              # %cond.end79
	movswl	-50(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB68_36
# %bb.34:                               # %land.lhs.true83
	movswl	-50(%rbp), %eax
	cmpl	$7, %eax
	jg	.LBB68_36
# %bb.35:                               # %cond.true87
	jmp	.LBB68_37
.LBB68_36:                              # %cond.false88
	movabsq	$.L.str.5.39, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization, %rcx
	movl	$324, %edx              # imm = 0x144
	callq	__assert_fail
.LBB68_37:                              # %cond.end89
	leaq	-58(%rbp), %rdi
	leaq	-50(%rbp), %rsi
	leaq	-54(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	callq	APCM_quantization4
	movl	$0, -48(%rbp)
.LBB68_38:                              # %for.cond95
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -48(%rbp)
	jg	.LBB68_45
# %bb.39:                               # %for.body98
                                        #   in Loop: Header=BB68_38 Depth=1
	movswl	-54(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB68_42
# %bb.40:                               # %land.lhs.true102
                                        #   in Loop: Header=BB68_38 Depth=1
	movswl	-54(%rbp), %eax
	cmpl	$16, %eax
	jge	.LBB68_42
# %bb.41:                               # %cond.true106
                                        #   in Loop: Header=BB68_38 Depth=1
	jmp	.LBB68_43
.LBB68_42:                              # %cond.false107
	movabsq	$.L.str.6.46, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization, %rcx
	movl	$331, %edx              # imm = 0x14B
	callq	__assert_fail
.LBB68_43:                              # %cond.end108
                                        #   in Loop: Header=BB68_38 Depth=1
	leaq	-58(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-54(%rbp), %r8
	leaq	-42(%rbp), %r9
	callq	APCM_quantization5
# %bb.44:                               # %for.inc127
                                        #   in Loop: Header=BB68_38 Depth=1
	leaq	-48(%rbp), %rdi
	callq	APCM_quantization6
	jmp	.LBB68_38
.LBB68_45:                              # %for.end129
	leaq	-96(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-104(%rbp), %r9
	callq	APCM_quantization7
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	APCM_quantization, .Lfunc_end68-APCM_quantization
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function APCM_inverse_quantization
	.type	APCM_inverse_quantization,@function
APCM_inverse_quantization:              # @APCM_inverse_quantization
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movw	%si, -4(%rbp)
	movw	%dx, -12(%rbp)
	movq	%rcx, -40(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB69_3
# %bb.1:                                # %land.lhs.true
	movswl	-4(%rbp), %eax
	cmpl	$7, %eax
	jg	.LBB69_3
# %bb.2:                                # %cond.true
	jmp	.LBB69_4
.LBB69_3:                               # %cond.false
	movabsq	$.L.str.5.39, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_inverse_quantization, %rcx
	movl	$364, %edx              # imm = 0x16C
	callq	__assert_fail
.LBB69_4:                               # %cond.end
	leaq	-6(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-10(%rbp), %rdx
	leaq	-12(%rbp), %rcx
	leaq	-16(%rbp), %r8
	leaq	-8(%rbp), %r9
	callq	APCM_inverse_quantization0
.LBB69_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, %eax
	je	.LBB69_18
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB69_5 Depth=1
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$7, %eax
	jg	.LBB69_9
# %bb.7:                                # %land.lhs.true11
                                        #   in Loop: Header=BB69_5 Depth=1
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	jl	.LBB69_9
# %bb.8:                                # %cond.true15
                                        #   in Loop: Header=BB69_5 Depth=1
	jmp	.LBB69_10
.LBB69_9:                               # %cond.false16
	movabsq	$.L.str.7.40, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_inverse_quantization, %rcx
	movl	$372, %edx              # imm = 0x174
	callq	__assert_fail
.LBB69_10:                              # %cond.end17
                                        #   in Loop: Header=BB69_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	movswl	(%rax), %eax
	shll	$1, %eax
	subl	$7, %eax
	movw	%ax, -2(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$7, %eax
	jg	.LBB69_13
# %bb.11:                               # %land.lhs.true23
                                        #   in Loop: Header=BB69_5 Depth=1
	movswl	-2(%rbp), %eax
	cmpl	$-7, %eax
	jl	.LBB69_13
# %bb.12:                               # %cond.true27
                                        #   in Loop: Header=BB69_5 Depth=1
	jmp	.LBB69_14
.LBB69_13:                              # %cond.false28
	movabsq	$.L.str.8.41, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_inverse_quantization, %rcx
	movl	$376, %edx              # imm = 0x178
	callq	__assert_fail
.LBB69_14:                              # %cond.end29
                                        #   in Loop: Header=BB69_5 Depth=1
	movswl	-2(%rbp), %eax
	shll	$12, %eax
	movw	%ax, -2(%rbp)
	movswq	-10(%rbp), %rax
	movswq	-2(%rbp), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-6(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB69_16
# %bb.15:                               # %cond.true42
                                        #   in Loop: Header=BB69_5 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-32(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB69_17
.LBB69_16:                              # %cond.false46
                                        #   in Loop: Header=BB69_5 Depth=1
	movq	-32(%rbp), %rax
.LBB69_17:                              # %cond.end47
                                        #   in Loop: Header=BB69_5 Depth=1
	movw	%ax, -2(%rbp)
	movw	-2(%rbp), %ax
	movswl	-8(%rbp), %esi
	movswl	%ax, %edi
	callq	gsm_asr
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -40(%rbp)
	movw	%ax, (%rcx)
	jmp	.LBB69_5
.LBB69_18:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	APCM_inverse_quantization, .Lfunc_end69-APCM_inverse_quantization
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function RPE_grid_positioning
	.type	RPE_grid_positioning,@function
RPE_grid_positioning:                   # @RPE_grid_positioning
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movw	%di, -2(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$13, -20(%rbp)
	movswl	-2(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB70_3
# %bb.1:                                # %land.lhs.true
	movswl	-2(%rbp), %eax
	cmpl	$3, %eax
	jg	.LBB70_3
# %bb.2:                                # %cond.true
	jmp	.LBB70_4
.LBB70_3:                               # %cond.false
	movabsq	$.L.str.9.37, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.RPE_grid_positioning, %rcx
	movl	$402, %edx              # imm = 0x192
	callq	__assert_fail
.LBB70_4:                               # %cond.end
	movswl	-2(%rbp), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	ja	.LBB70_13
# %bb.5:                                # %cond.end
	movq	.LJTI70_0(,%rax,8), %rax
	jmpq	*%rax
.LBB70_6:                               # %sw.bb
	leaq	-16(%rbp), %rdi
	callq	RPE_grid_positioning0
.LBB70_7:                               # %sw.bb6
	jmp	.LBB70_8
.LBB70_8:                               # %do.body
	leaq	-16(%rbp), %rdi
	callq	RPE_grid_positioning1
.LBB70_9:                               # %sw.bb8
	leaq	-16(%rbp), %rdi
	callq	RPE_grid_positioning2
.LBB70_10:                              # %sw.bb10
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	RPE_grid_positioning3
# %bb.11:                               # %do.cond
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jne	.LBB70_8
# %bb.12:                               # %do.end
	jmp	.LBB70_13
.LBB70_13:                              # %sw.epilog
	jmp	.LBB70_14
.LBB70_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movw	-2(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -2(%rbp)
	cwtl
	cmpl	$4, %eax
	jge	.LBB70_16
# %bb.15:                               # %while.body
                                        #   in Loop: Header=BB70_14 Depth=1
	leaq	-16(%rbp), %rdi
	callq	RPE_grid_positioning4
	jmp	.LBB70_14
.LBB70_16:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	RPE_grid_positioning, .Lfunc_end70-RPE_grid_positioning
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI70_0:
	.quad	.LBB70_10
	.quad	.LBB70_9
	.quad	.LBB70_7
	.quad	.LBB70_6
                                        # -- End function
	.text
	.globl	RPE_grid_positioning0   # -- Begin function RPE_grid_positioning0
	.p2align	4, 0x90
	.type	RPE_grid_positioning0,@function
RPE_grid_positioning0:                  # @RPE_grid_positioning0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end71:
	.size	RPE_grid_positioning0, .Lfunc_end71-RPE_grid_positioning0
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_positioning1   # -- Begin function RPE_grid_positioning1
	.p2align	4, 0x90
	.type	RPE_grid_positioning1,@function
RPE_grid_positioning1:                  # @RPE_grid_positioning1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end72:
	.size	RPE_grid_positioning1, .Lfunc_end72-RPE_grid_positioning1
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_positioning2   # -- Begin function RPE_grid_positioning2
	.p2align	4, 0x90
	.type	RPE_grid_positioning2,@function
RPE_grid_positioning2:                  # @RPE_grid_positioning2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end73:
	.size	RPE_grid_positioning2, .Lfunc_end73-RPE_grid_positioning2
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_positioning3   # -- Begin function RPE_grid_positioning3
	.p2align	4, 0x90
	.type	RPE_grid_positioning3,@function
RPE_grid_positioning3:                  # @RPE_grid_positioning3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	leaq	2(%rcx), %rdx
	movq	%rdx, -24(%rsp)
	movzwl	(%rcx), %ecx
	leaq	2(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end74:
	.size	RPE_grid_positioning3, .Lfunc_end74-RPE_grid_positioning3
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_positioning4   # -- Begin function RPE_grid_positioning4
	.p2align	4, 0x90
	.type	RPE_grid_positioning4,@function
RPE_grid_positioning4:                  # @RPE_grid_positioning4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end75:
	.size	RPE_grid_positioning4, .Lfunc_end75-RPE_grid_positioning4
	.cfi_endproc
                                        # -- End function
	.globl	APCM_inverse_quantization0 # -- Begin function APCM_inverse_quantization0
	.p2align	4, 0x90
	.type	APCM_inverse_quantization0,@function
APCM_inverse_quantization0:             # @APCM_inverse_quantization0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, 18(%rsp)
	movq	%rsi, 56(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, 16(%rsp)
	movq	%rdx, 48(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, 14(%rsp)
	movq	%rcx, 40(%rsp)
	movzwl	(%rcx), %eax
	movw	%ax, 12(%rsp)
	movq	%r8, 32(%rsp)
	movl	(%r8), %eax
	movl	%eax, 20(%rsp)
	movq	%r9, 24(%rsp)
	movzwl	(%r9), %eax
	movw	%ax, 10(%rsp)
	movswq	16(%rsp), %rax
	movzwl	gsm_FAC(%rax,%rax), %eax
	movw	%ax, 14(%rsp)
	movswl	12(%rsp), %esi
	movl	$6, %edi
	callq	gsm_sub
	movw	%ax, 10(%rsp)
	movswl	10(%rsp), %edi
	movl	$1, %esi
	callq	gsm_sub
	movswl	%ax, %esi
	movl	$1, %edi
	callq	gsm_asl
	movw	%ax, 18(%rsp)
	movl	$13, 20(%rsp)
	movq	24(%rsp), %rax
	movzwl	10(%rsp), %ecx
	movw	%cx, (%rax)
	movq	32(%rsp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	64(%rsp), %rax
	movzwl	18(%rsp), %ecx
	movw	%cx, (%rax)
	movq	56(%rsp), %rax
	movzwl	16(%rsp), %ecx
	movw	%cx, (%rax)
	movq	48(%rsp), %rax
	movzwl	14(%rsp), %ecx
	movw	%cx, (%rax)
	movq	40(%rsp), %rax
	movzwl	12(%rsp), %ecx
	movw	%cx, (%rax)
	addq	$72, %rsp
	retq
.Lfunc_end76:
	.size	APCM_inverse_quantization0, .Lfunc_end76-APCM_inverse_quantization0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asr                 # -- Begin function gsm_asr
	.p2align	4, 0x90
	.type	gsm_asr,@function
gsm_asr:                                # @gsm_asr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$16, -8(%rbp)
	jl	.LBB77_2
# %bb.1:                                # %if.then
	leaq	-2(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	gsm_asr0
	jmp	.LBB77_7
.LBB77_2:                               # %if.end
	cmpl	$-16, -8(%rbp)
	jg	.LBB77_4
# %bb.3:                                # %if.then6
	movw	$0, -2(%rbp)
	jmp	.LBB77_7
.LBB77_4:                               # %if.end7
	cmpl	$0, -8(%rbp)
	jge	.LBB77_6
# %bb.5:                                # %if.then10
	leaq	-2(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	gsm_asr1
	jmp	.LBB77_7
.LBB77_6:                               # %if.end14
	leaq	-2(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	gsm_asr2
.LBB77_7:                               # %return
	movswl	-2(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gsm_asr, .Lfunc_end77-gsm_asr
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asr0                # -- Begin function gsm_asr0
	.p2align	4, 0x90
	.type	gsm_asr0,@function
gsm_asr0:                               # @gsm_asr0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movswl	-18(%rsp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movw	%cx, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end78:
	.size	gsm_asr0, .Lfunc_end78-gsm_asr0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asr1                # -- Begin function gsm_asr1
	.p2align	4, 0x90
	.type	gsm_asr1,@function
gsm_asr1:                               # @gsm_asr1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -32(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -28(%rsp)
	movq	%rdx, -8(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -30(%rsp)
	movswl	-30(%rsp), %eax
	negl	%ecx
	movl	%eax, %esi
                                        # kill: def %cl killed %cl killed %ecx
	shll	%cl, %esi
	movw	%si, -32(%rsp)
	movw	%ax, (%rdx)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-32(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end79:
	.size	gsm_asr1, .Lfunc_end79-gsm_asr1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asr2                # -- Begin function gsm_asr2
	.p2align	4, 0x90
	.type	gsm_asr2,@function
gsm_asr2:                               # @gsm_asr2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -32(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -28(%rsp)
	movq	%rdx, -8(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -30(%rsp)
	movswl	-30(%rsp), %eax
	movb	-28(%rsp), %cl
	movl	%eax, %esi
	sarl	%cl, %esi
	movw	%si, -32(%rsp)
	movw	%ax, (%rdx)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-32(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end80:
	.size	gsm_asr2, .Lfunc_end80-gsm_asr2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_sub                 # -- Begin function gsm_sub
	.p2align	4, 0x90
	.type	gsm_sub,@function
gsm_sub:                                # @gsm_sub
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, -4(%rbp)
	movw	%si, -2(%rbp)
	movswq	-4(%rbp), %rax
	movswq	-2(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jge	.LBB81_2
# %bb.1:                                # %cond.true
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB81_6
.LBB81_2:                               # %cond.false
	cmpq	$32767, -16(%rbp)       # imm = 0x7FFF
	jle	.LBB81_4
# %bb.3:                                # %cond.true5
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB81_5
.LBB81_4:                               # %cond.false6
	movq	-16(%rbp), %rax
.LBB81_5:                               # %cond.end
.LBB81_6:                               # %cond.end7
	cwtl
	popq	%rbp
	retq
.Lfunc_end81:
	.size	gsm_sub, .Lfunc_end81-gsm_sub
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asl                 # -- Begin function gsm_asl
	.p2align	4, 0x90
	.type	gsm_asl,@function
gsm_asl:                                # @gsm_asl
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$16, -8(%rbp)
	jl	.LBB82_2
# %bb.1:                                # %if.then
	movw	$0, -2(%rbp)
	jmp	.LBB82_7
.LBB82_2:                               # %if.end
	cmpl	$-16, -8(%rbp)
	jg	.LBB82_4
# %bb.3:                                # %if.then2
	leaq	-2(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	gsm_asl0
	jmp	.LBB82_7
.LBB82_4:                               # %if.end6
	cmpl	$0, -8(%rbp)
	jge	.LBB82_6
# %bb.5:                                # %if.then9
	leaq	-2(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	gsm_asl1
	jmp	.LBB82_7
.LBB82_6:                               # %if.end11
	leaq	-2(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	gsm_asl2
.LBB82_7:                               # %return
	movswl	-2(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	gsm_asl, .Lfunc_end82-gsm_asl
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asl0                # -- Begin function gsm_asl0
	.p2align	4, 0x90
	.type	gsm_asl0,@function
gsm_asl0:                               # @gsm_asl0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movswl	-18(%rsp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movw	%cx, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end83:
	.size	gsm_asl0, .Lfunc_end83-gsm_asl0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asl1                # -- Begin function gsm_asl1
	.p2align	4, 0x90
	.type	gsm_asl1,@function
gsm_asl1:                               # @gsm_asl1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, 10(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %esi
	movl	%esi, 12(%rsp)
	movq	%rdx, 16(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, 8(%rsp)
	negl	%esi
	movswl	8(%rsp), %edi
	callq	gsm_asr
	movw	%ax, 10(%rsp)
	movq	16(%rsp), %rax
	movzwl	8(%rsp), %ecx
	movw	%cx, (%rax)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movzwl	10(%rsp), %ecx
	movw	%cx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end84:
	.size	gsm_asl1, .Lfunc_end84-gsm_asl1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_asl2                # -- Begin function gsm_asl2
	.p2align	4, 0x90
	.type	gsm_asl2,@function
gsm_asl2:                               # @gsm_asl2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -32(%rsp)
	movq	%rsi, -24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -28(%rsp)
	movq	%rdx, -8(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -30(%rsp)
	movswl	-30(%rsp), %eax
	movb	-28(%rsp), %cl
	movl	%eax, %esi
	shll	%cl, %esi
	movw	%si, -32(%rsp)
	movw	%ax, (%rdx)
	movq	-24(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-32(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end85:
	.size	gsm_asl2, .Lfunc_end85-gsm_asl2
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization0      # -- Begin function APCM_quantization0
	.p2align	4, 0x90
	.type	APCM_quantization0,@function
APCM_quantization0:                     # @APCM_quantization0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movw	%ax, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end86:
	.size	APCM_quantization0, .Lfunc_end86-APCM_quantization0
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization1      # -- Begin function APCM_quantization1
	.p2align	4, 0x90
	.type	APCM_quantization1,@function
APCM_quantization1:                     # @APCM_quantization1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movswl	-18(%rsp), %eax
	movl	%eax, %ecx
	shrl	$9, %ecx
	movw	%cx, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end87:
	.size	APCM_quantization1, .Lfunc_end87-APCM_quantization1
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization2      # -- Begin function APCM_quantization2
	.p2align	4, 0x90
	.type	APCM_quantization2,@function
APCM_quantization2:                     # @APCM_quantization2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -22(%rsp)
	movswl	-22(%rsp), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	setle	%dl
	orl	%eax, %edx
	movl	%edx, -20(%rsp)
	shrl	%ecx
	movw	%cx, -22(%rsp)
	movw	%cx, (%rsi)
	movq	-16(%rsp), %rax
	movl	-20(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end88:
	.size	APCM_quantization2, .Lfunc_end88-APCM_quantization2
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization3      # -- Begin function APCM_quantization3
	.p2align	4, 0x90
	.type	APCM_quantization3,@function
APCM_quantization3:                     # @APCM_quantization3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	incl	%eax
	movw	%ax, -10(%rsp)
	movw	%ax, (%rdi)
	retq
.Lfunc_end89:
	.size	APCM_quantization3, .Lfunc_end89-APCM_quantization3
	.cfi_endproc
                                        # -- End function
	.globl	gsm_add                 # -- Begin function gsm_add
	.p2align	4, 0x90
	.type	gsm_add,@function
gsm_add:                                # @gsm_add
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, -4(%rbp)
	movw	%si, -2(%rbp)
	movswq	-4(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jge	.LBB90_2
# %bb.1:                                # %cond.true
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB90_6
.LBB90_2:                               # %cond.false
	cmpq	$32767, -16(%rbp)       # imm = 0x7FFF
	jle	.LBB90_4
# %bb.3:                                # %cond.true5
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB90_5
.LBB90_4:                               # %cond.false6
	movq	-16(%rbp), %rax
.LBB90_5:                               # %cond.end
.LBB90_6:                               # %cond.end7
	cwtl
	popq	%rbp
	retq
.Lfunc_end90:
	.size	gsm_add, .Lfunc_end90-gsm_add
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function APCM_quantization_xmaxc_to_exp_mant
	.type	APCM_quantization_xmaxc_to_exp_mant,@function
APCM_quantization_xmaxc_to_exp_mant:    # @APCM_quantization_xmaxc_to_exp_mant
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movw	%di, -6(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movw	$0, -4(%rbp)
	movswl	-6(%rbp), %eax
	cmpl	$15, %eax
	jle	.LBB91_2
# %bb.1:                                # %if.then
	leaq	-4(%rbp), %rdi
	leaq	-6(%rbp), %rsi
	callq	APCM_quantization_xmaxc_to_exp_mant0
.LBB91_2:                               # %if.end
	movswl	-6(%rbp), %eax
	movswl	-4(%rbp), %ecx
	shll	$3, %ecx
	subl	%ecx, %eax
	movw	%ax, -2(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB91_4
# %bb.3:                                # %if.then11
	leaq	-2(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	callq	APCM_quantization_xmaxc_to_exp_mant1
	jmp	.LBB91_8
.LBB91_4:                               # %if.else
	jmp	.LBB91_5
.LBB91_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movswl	-2(%rbp), %eax
	cmpl	$7, %eax
	jg	.LBB91_7
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB91_5 Depth=1
	leaq	-4(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	callq	APCM_quantization_xmaxc_to_exp_mant2
	jmp	.LBB91_5
.LBB91_7:                               # %while.end
	leaq	-2(%rbp), %rdi
	callq	APCM_quantization_xmaxc_to_exp_mant3
.LBB91_8:                               # %if.end21
	movswl	-4(%rbp), %eax
	cmpl	$-4, %eax
	jl	.LBB91_11
# %bb.9:                                # %land.lhs.true
	movswl	-4(%rbp), %eax
	cmpl	$6, %eax
	jg	.LBB91_11
# %bb.10:                               # %cond.true
	jmp	.LBB91_12
.LBB91_11:                              # %cond.false
	movabsq	$.L.str.10.47, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, %rcx
	movl	$249, %edx
	callq	__assert_fail
.LBB91_12:                              # %cond.end
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB91_15
# %bb.13:                               # %land.lhs.true31
	movswl	-2(%rbp), %eax
	cmpl	$7, %eax
	jg	.LBB91_15
# %bb.14:                               # %cond.true35
	jmp	.LBB91_16
.LBB91_15:                              # %cond.false36
	movabsq	$.L.str.5.39, %rdi
	movabsq	$.L.str.1.38, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, %rcx
	movl	$250, %edx
	callq	__assert_fail
.LBB91_16:                              # %cond.end37
	leaq	-16(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	callq	APCM_quantization_xmaxc_to_exp_mant4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	APCM_quantization_xmaxc_to_exp_mant, .Lfunc_end91-APCM_quantization_xmaxc_to_exp_mant
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization4      # -- Begin function APCM_quantization4
	.p2align	4, 0x90
	.type	APCM_quantization4,@function
APCM_quantization4:                     # @APCM_quantization4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -36(%rsp)
	movq	%rsi, -16(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -38(%rsp)
	movq	%rdx, -24(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -40(%rsp)
	movq	%rcx, -32(%rsp)
	movzwl	(%rcx), %eax
	movw	%ax, -34(%rsp)
	movzwl	-34(%rsp), %eax
	movl	$6, %ecx
	subl	%eax, %ecx
	movw	%cx, -40(%rsp)
	movswq	-38(%rsp), %rcx
	movzwl	gsm_NRFAC(%rcx,%rcx), %ecx
	movw	%cx, -36(%rsp)
	movq	-32(%rsp), %rcx
	movw	%ax, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	-40(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-38(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movzwl	-36(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end92:
	.size	APCM_quantization4, .Lfunc_end92-APCM_quantization4
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization5      # -- Begin function APCM_quantization5
	.p2align	4, 0x90
	.type	APCM_quantization5,@function
APCM_quantization5:                     # @APCM_quantization5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -70(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -56(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -64(%rsp)
	movq	%rcx, -32(%rsp)
	movl	(%rcx), %eax
	movl	%eax, -68(%rsp)
	movq	%r8, -40(%rsp)
	movzwl	(%r8), %eax
	movw	%ax, -72(%rsp)
	movq	%r9, -48(%rsp)
	movzwl	(%r9), %eax
	movw	%ax, -74(%rsp)
	movq	-56(%rsp), %rax
	movslq	-68(%rsp), %rcx
	movswl	(%rax,%rcx,2), %eax
	movb	-72(%rsp), %cl
	shll	%cl, %eax
	movw	%ax, -74(%rsp)
	movswl	-70(%rsp), %eax
	movswl	-74(%rsp), %ecx
	imull	%eax, %ecx
	shrl	$15, %ecx
	movw	%cx, -74(%rsp)
	movswl	-74(%rsp), %eax
	shrl	$12, %eax
	movw	%ax, -74(%rsp)
	movzwl	-74(%rsp), %eax
	addl	$4, %eax
	movq	-64(%rsp), %rcx
	movslq	-68(%rsp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-48(%rsp), %rax
	movzwl	-74(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-40(%rsp), %rax
	movzwl	-72(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movzwl	-70(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movl	-68(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end93:
	.size	APCM_quantization5, .Lfunc_end93-APCM_quantization5
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization6      # -- Begin function APCM_quantization6
	.p2align	4, 0x90
	.type	APCM_quantization6,@function
APCM_quantization6:                     # @APCM_quantization6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end94:
	.size	APCM_quantization6, .Lfunc_end94-APCM_quantization6
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization7      # -- Begin function APCM_quantization7
	.p2align	4, 0x90
	.type	APCM_quantization7,@function
APCM_quantization7:                     # @APCM_quantization7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -64(%rsp)
	movq	%rsi, -16(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -76(%rsp)
	movq	%rdx, -24(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -74(%rsp)
	movq	%rcx, -32(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rsp)
	movq	%r8, -48(%rsp)
	movzwl	(%r8), %edx
	movw	%dx, -78(%rsp)
	movq	%r9, -56(%rsp)
	movq	(%r9), %rdx
	movq	%rdx, -72(%rsp)
	movw	%ax, (%rcx)
	movzwl	-78(%rsp), %eax
	movq	-72(%rsp), %rcx
	movw	%ax, (%rcx)
	movzwl	-76(%rsp), %eax
	movq	-64(%rsp), %rcx
	movw	%ax, (%rcx)
	movq	-56(%rsp), %rax
	movq	-72(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-76(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movzwl	-74(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-48(%rsp), %rax
	movzwl	-78(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end95:
	.size	APCM_quantization7, .Lfunc_end95-APCM_quantization7
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization_xmaxc_to_exp_mant0 # -- Begin function APCM_quantization_xmaxc_to_exp_mant0
	.p2align	4, 0x90
	.type	APCM_quantization_xmaxc_to_exp_mant0,@function
APCM_quantization_xmaxc_to_exp_mant0:   # @APCM_quantization_xmaxc_to_exp_mant0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movswl	-18(%rsp), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	decl	%ecx
	movw	%cx, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end96:
	.size	APCM_quantization_xmaxc_to_exp_mant0, .Lfunc_end96-APCM_quantization_xmaxc_to_exp_mant0
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization_xmaxc_to_exp_mant1 # -- Begin function APCM_quantization_xmaxc_to_exp_mant1
	.p2align	4, 0x90
	.type	APCM_quantization_xmaxc_to_exp_mant1,@function
APCM_quantization_xmaxc_to_exp_mant1:   # @APCM_quantization_xmaxc_to_exp_mant1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -8(%rsp)
	movw	$-4, -18(%rsp)
	movw	$7, -20(%rsp)
	movw	$-4, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end97:
	.size	APCM_quantization_xmaxc_to_exp_mant1, .Lfunc_end97-APCM_quantization_xmaxc_to_exp_mant1
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization_xmaxc_to_exp_mant2 # -- Begin function APCM_quantization_xmaxc_to_exp_mant2
	.p2align	4, 0x90
	.type	APCM_quantization_xmaxc_to_exp_mant2,@function
APCM_quantization_xmaxc_to_exp_mant2:   # @APCM_quantization_xmaxc_to_exp_mant2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -18(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -20(%rsp)
	movzwl	-20(%rsp), %ecx
	leal	1(%rcx,%rcx), %ecx
	movw	%cx, -20(%rsp)
	decl	%eax
	movw	%ax, -18(%rsp)
	movw	%cx, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-18(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end98:
	.size	APCM_quantization_xmaxc_to_exp_mant2, .Lfunc_end98-APCM_quantization_xmaxc_to_exp_mant2
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization_xmaxc_to_exp_mant3 # -- Begin function APCM_quantization_xmaxc_to_exp_mant3
	.p2align	4, 0x90
	.type	APCM_quantization_xmaxc_to_exp_mant3,@function
APCM_quantization_xmaxc_to_exp_mant3:   # @APCM_quantization_xmaxc_to_exp_mant3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -10(%rsp)
	movzwl	-10(%rsp), %eax
	addl	$-8, %eax
	movw	%ax, -10(%rsp)
	movw	%ax, (%rdi)
	retq
.Lfunc_end99:
	.size	APCM_quantization_xmaxc_to_exp_mant3, .Lfunc_end99-APCM_quantization_xmaxc_to_exp_mant3
	.cfi_endproc
                                        # -- End function
	.globl	APCM_quantization_xmaxc_to_exp_mant4 # -- Begin function APCM_quantization_xmaxc_to_exp_mant4
	.p2align	4, 0x90
	.type	APCM_quantization_xmaxc_to_exp_mant4,@function
APCM_quantization_xmaxc_to_exp_mant4:   # @APCM_quantization_xmaxc_to_exp_mant4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -16(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -52(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -32(%rsp)
	movq	%rcx, -40(%rsp)
	movzwl	(%rcx), %ecx
	movw	%cx, -50(%rsp)
	movw	%cx, (%rax)
	movzwl	-52(%rsp), %eax
	movq	-48(%rsp), %rcx
	movw	%ax, (%rcx)
	movq	-40(%rsp), %rax
	movzwl	-50(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-52(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end100:
	.size	APCM_quantization_xmaxc_to_exp_mant4, .Lfunc_end100-APCM_quantization_xmaxc_to_exp_mant4
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_selection0     # -- Begin function RPE_grid_selection0
	.p2align	4, 0x90
	.type	RPE_grid_selection0,@function
RPE_grid_selection0:                    # @RPE_grid_selection0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -56(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -64(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, -80(%rsp)
	movq	%rcx, -32(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, -72(%rsp)
	movq	%r8, -40(%rsp)
	movq	(%r8), %rdx
	movq	%rdx, -48(%rsp)
	movswl	6(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	imulq	%rax, %rax
	addq	%rcx, %rax
	movq	%rax, -72(%rsp)
	movq	-64(%rsp), %rcx
	movswl	12(%rcx), %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -80(%rsp)
	imulq	%rcx, %rcx
	addq	%rax, %rcx
	movq	%rcx, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	18(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	24(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	30(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	36(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	42(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	48(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	54(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	60(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	66(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-64(%rsp), %rax
	movswl	72(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	imulq	%rax, %rax
	addq	%rax, -72(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -48(%rsp)
	movq	-64(%rsp), %rcx
	movswl	(%rcx), %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -80(%rsp)
	imulq	%rcx, %rcx
	addq	%rax, %rcx
	addq	%rcx, %rcx
	movq	%rcx, -72(%rsp)
	movq	%rcx, -56(%rsp)
	movq	-40(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-80(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movq	-72(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end101:
	.size	RPE_grid_selection0, .Lfunc_end101-RPE_grid_selection0
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_selection1     # -- Begin function RPE_grid_selection1
	.p2align	4, 0x90
	.type	RPE_grid_selection1,@function
RPE_grid_selection1:                    # @RPE_grid_selection1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -32(%rsp)
	movq	%rdx, -8(%rsp)
	movw	$1, -42(%rsp)
	movq	%rax, -40(%rsp)
	movw	$1, (%rdx)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end102:
	.size	RPE_grid_selection1, .Lfunc_end102-RPE_grid_selection1
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_selection2     # -- Begin function RPE_grid_selection2
	.p2align	4, 0x90
	.type	RPE_grid_selection2,@function
RPE_grid_selection2:                    # @RPE_grid_selection2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -32(%rsp)
	movq	%rdx, -8(%rsp)
	movw	$2, -42(%rsp)
	movq	%rax, -40(%rsp)
	movw	$2, (%rdx)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end103:
	.size	RPE_grid_selection2, .Lfunc_end103-RPE_grid_selection2
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_selection3     # -- Begin function RPE_grid_selection3
	.p2align	4, 0x90
	.type	RPE_grid_selection3,@function
RPE_grid_selection3:                    # @RPE_grid_selection3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -32(%rsp)
	movq	%rdx, -8(%rsp)
	movw	$3, -42(%rsp)
	movq	%rax, -40(%rsp)
	movw	$3, (%rdx)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end104:
	.size	RPE_grid_selection3, .Lfunc_end104-RPE_grid_selection3
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_selection4     # -- Begin function RPE_grid_selection4
	.p2align	4, 0x90
	.type	RPE_grid_selection4,@function
RPE_grid_selection4:                    # @RPE_grid_selection4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %esi
	movw	%si, -42(%rsp)
	movl	%edx, -36(%rsp)
	movslq	-36(%rsp), %rdx
	movq	%rcx, -32(%rsp)
	movl	(%rcx), %ecx
	movl	%ecx, -40(%rsp)
	movslq	-40(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	addq	%rdx, %rsi
	movzwl	-42(%rsp,%rsi,2), %edx
	movw	%dx, (%rax,%rcx,2)
	movq	-32(%rsp), %rax
	movl	-40(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movzwl	-42(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end105:
	.size	RPE_grid_selection4, .Lfunc_end105-RPE_grid_selection4
	.cfi_endproc
                                        # -- End function
	.globl	RPE_grid_selection5     # -- Begin function RPE_grid_selection5
	.p2align	4, 0x90
	.type	RPE_grid_selection5,@function
RPE_grid_selection5:                    # @RPE_grid_selection5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -26(%rsp)
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movzwl	-26(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end106:
	.size	RPE_grid_selection5, .Lfunc_end106-RPE_grid_selection5
	.cfi_endproc
                                        # -- End function
	.globl	Weighting_filter0       # -- Begin function Weighting_filter0
	.p2align	4, 0x90
	.type	Weighting_filter0,@function
Weighting_filter0:                      # @Weighting_filter0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$-10, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end107:
	.size	Weighting_filter0, .Lfunc_end107-Weighting_filter0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Long_Term_Predictor0 # -- Begin function Gsm_Long_Term_Predictor0
	.p2align	4, 0x90
	.type	Gsm_Long_Term_Predictor0,@function
Gsm_Long_Term_Predictor0:               # @Gsm_Long_Term_Predictor0
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
	movq	(%rdx), %rdi
	movq	%rdi, 32(%rsp)
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, 24(%rsp)
	movq	%r8, 64(%rsp)
	movq	(%r8), %rsi
	movq	%rsi, 16(%rsp)
	movq	%r9, 56(%rsp)
	movq	(%r9), %rdx
	movq	%rdx, 8(%rsp)
	callq	Calculation_of_the_LTP_parameters
	movq	8(%rsp), %rax
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	48(%rsp), %r9
	movswl	(%rsi), %esi
	movswl	(%rax), %edi
	callq	Long_term_analysis_filtering
	movq	96(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	88(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	80(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
.Lfunc_end108:
	.size	Gsm_Long_Term_Predictor0, .Lfunc_end108-Gsm_Long_Term_Predictor0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Calculation_of_the_LTP_parameters
	.type	Calculation_of_the_LTP_parameters,@function
Calculation_of_the_LTP_parameters:      # @Calculation_of_the_LTP_parameters
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
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -208(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -216(%rbp)
	movw	$0, -82(%rbp)
	movl	$0, -80(%rbp)
.LBB109_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -80(%rbp)
	jg	.LBB109_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-208(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -58(%rbp)
	movswl	-58(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB109_7
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB109_1 Depth=1
	movswl	-58(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB109_5
# %bb.4:                                # %cond.true6
                                        #   in Loop: Header=BB109_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB109_6
.LBB109_5:                              # %cond.false
                                        #   in Loop: Header=BB109_1 Depth=1
	xorl	%eax, %eax
	movswl	-58(%rbp), %ecx
	subl	%ecx, %eax
.LBB109_6:                              # %cond.end
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_8
.LBB109_7:                              # %cond.false8
                                        #   in Loop: Header=BB109_1 Depth=1
	movswl	-58(%rbp), %eax
.LBB109_8:                              # %cond.end10
                                        #   in Loop: Header=BB109_1 Depth=1
	movw	%ax, -58(%rbp)
	movswl	-58(%rbp), %eax
	movswl	-82(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB109_10
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB109_1 Depth=1
	leaq	-82(%rbp), %rdi
	leaq	-58(%rbp), %rsi
	callq	Calculation_of_the_LTP_parameters0
.LBB109_10:                             # %if.end
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_11
.LBB109_11:                             # %for.inc
                                        #   in Loop: Header=BB109_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB109_1
.LBB109_12:                             # %for.end
	movw	$0, -58(%rbp)
	movswl	-82(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB109_14
# %bb.13:                               # %if.then20
	movw	$0, -74(%rbp)
	jmp	.LBB109_18
.LBB109_14:                             # %if.else
	movswl	-82(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB109_16
# %bb.15:                               # %cond.true24
	jmp	.LBB109_17
.LBB109_16:                             # %cond.false25
	movabsq	$.L.str.9.14, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, %rcx
	movl	$101, %edx
	callq	__assert_fail
.LBB109_17:                             # %cond.end26
	leaq	-58(%rbp), %rdi
	leaq	-82(%rbp), %rsi
	callq	Calculation_of_the_LTP_parameters1
.LBB109_18:                             # %if.end28
	movswl	-58(%rbp), %eax
	cmpl	$6, %eax
	jle	.LBB109_20
# %bb.19:                               # %if.then32
	movw	$0, -74(%rbp)
	jmp	.LBB109_21
.LBB109_20:                             # %if.else33
	leaq	-74(%rbp), %rdi
	leaq	-58(%rbp), %rsi
	callq	Calculation_of_the_LTP_parameters2
.LBB109_21:                             # %if.end37
	movswl	-74(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB109_23
# %bb.22:                               # %cond.true41
	jmp	.LBB109_24
.LBB109_23:                             # %cond.false42
	movabsq	$.L.str.10.74, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, %rcx
	movl	$108, %edx
	callq	__assert_fail
.LBB109_24:                             # %cond.end43
	movl	$0, -80(%rbp)
.LBB109_25:                             # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -80(%rbp)
	jg	.LBB109_28
# %bb.26:                               # %for.body47
                                        #   in Loop: Header=BB109_25 Depth=1
	movq	-208(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movswl	(%rax,%rcx,2), %eax
	movswl	-74(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	sarl	%cl, %eax
	movslq	-80(%rbp), %rcx
	movw	%ax, -192(%rbp,%rcx,2)
# %bb.27:                               # %for.inc55
                                        #   in Loop: Header=BB109_25 Depth=1
	leaq	-80(%rbp), %rdi
	callq	Calculation_of_the_LTP_parameters3
	jmp	.LBB109_25
.LBB109_28:                             # %for.end57
	movq	$0, -96(%rbp)
	movw	$40, -84(%rbp)
	movl	$40, -44(%rbp)
.LBB109_29:                             # %for.cond58
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$120, -44(%rbp)
	jg	.LBB109_34
# %bb.30:                               # %for.body61
                                        #   in Loop: Header=BB109_29 Depth=1
	movl	$11, %r13d
	movl	$10, %r12d
	movl	$9, %r15d
	movl	$8, %r14d
	movl	$7, %ebx
	movl	$6, %r11d
	movl	$5, %r10d
	movl	$4, %r9d
	movl	$3, %r8d
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movswl	-192(%rbp), %ecx
	movq	-72(%rbp), %rdi
	subl	-44(%rbp), %eax
	cltq
	movswl	(%rdi,%rax,2), %eax
	imull	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rax, -56(%rbp)
	movswl	-190(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-188(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %esi
	movslq	%esi, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-186(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r8d
	movslq	%r8d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-184(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r9d
	movslq	%r9d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-182(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r10d
	movslq	%r10d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-180(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r11d
	movslq	%r11d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-178(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %ebx
	movslq	%ebx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-176(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r14d
	movslq	%r14d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-174(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r15d
	movslq	%r15d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-172(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r12d
	movslq	%r12d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-170(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	-44(%rbp), %r13d
	movslq	%r13d, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-168(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$12, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-166(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$13, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-164(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$14, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-162(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$15, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-160(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$16, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-158(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$17, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-156(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$18, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-154(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$19, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-152(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$20, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-150(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$21, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-148(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$22, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-146(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$23, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-144(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$24, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-142(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$25, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-140(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$26, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-138(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$27, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-136(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$28, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-134(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$29, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-132(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$30, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-130(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$31, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-128(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$32, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-126(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$33, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-124(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$34, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-122(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$35, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-120(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$36, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-118(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$37, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-116(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$38, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movswl	-114(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	$39, %edx
	subl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movswl	(%rcx,%rdx,2), %ecx
	imull	%ecx, %eax
	cltq
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB109_32
# %bb.31:                               # %if.then421
                                        #   in Loop: Header=BB109_29 Depth=1
	leaq	-96(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	callq	Calculation_of_the_LTP_parameters4
.LBB109_32:                             # %if.end423
                                        #   in Loop: Header=BB109_29 Depth=1
	jmp	.LBB109_33
.LBB109_33:                             # %for.inc424
                                        #   in Loop: Header=BB109_29 Depth=1
	leaq	-44(%rbp), %rdi
	callq	Calculation_of_the_LTP_parameters5
	jmp	.LBB109_29
.LBB109_34:                             # %for.end426
	movw	-84(%rbp), %ax
	movq	-216(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-96(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -96(%rbp)
	movswl	-74(%rbp), %eax
	cmpl	$100, %eax
	jg	.LBB109_37
# %bb.35:                               # %land.lhs.true
	movswl	-74(%rbp), %eax
	cmpl	$-100, %eax
	jl	.LBB109_37
# %bb.36:                               # %cond.true434
	jmp	.LBB109_38
.LBB109_37:                             # %cond.false435
	movabsq	$.L.str.11.75, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, %rcx
	movl	$165, %edx
	callq	__assert_fail
.LBB109_38:                             # %cond.end436
	movl	$6, %eax
	movq	-96(%rbp), %rdx
	movswl	-74(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
                                        # kill: def %cl killed %rcx
	sarq	%cl, %rdx
	movq	%rdx, -96(%rbp)
	movswl	-84(%rbp), %eax
	cmpl	$120, %eax
	jg	.LBB109_41
# %bb.39:                               # %land.lhs.true443
	movswl	-84(%rbp), %eax
	cmpl	$40, %eax
	jl	.LBB109_41
# %bb.40:                               # %cond.true447
	jmp	.LBB109_42
.LBB109_41:                             # %cond.false448
	movabsq	$.L.str.12.76, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, %rcx
	movl	$168, %edx
	callq	__assert_fail
.LBB109_42:                             # %cond.end449
	movq	$0, -112(%rbp)
	movl	$0, -80(%rbp)
.LBB109_43:                             # %for.cond450
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -80(%rbp)
	jg	.LBB109_46
# %bb.44:                               # %for.body453
                                        #   in Loop: Header=BB109_43 Depth=1
	leaq	-112(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	callq	Calculation_of_the_LTP_parameters6
# %bb.45:                               # %for.inc463
                                        #   in Loop: Header=BB109_43 Depth=1
	leaq	-80(%rbp), %rdi
	callq	Calculation_of_the_LTP_parameters7
	jmp	.LBB109_43
.LBB109_46:                             # %for.end465
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -96(%rbp)
	jg	.LBB109_48
# %bb.47:                               # %if.then469
	leaq	-200(%rbp), %rdi
	callq	Calculation_of_the_LTP_parameters8
	jmp	.LBB109_58
.LBB109_48:                             # %if.end470
	movq	-96(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jl	.LBB109_50
# %bb.49:                               # %if.then473
	movq	-200(%rbp), %rax
	movw	$3, (%rax)
	jmp	.LBB109_58
.LBB109_50:                             # %if.end474
	leaq	-98(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-58(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	callq	Calculation_of_the_LTP_parameters9
	movw	$0, -86(%rbp)
.LBB109_51:                             # %for.cond486
                                        # =>This Inner Loop Header: Depth=1
	movswl	-86(%rbp), %eax
	cmpl	$2, %eax
	jg	.LBB109_56
# %bb.52:                               # %for.body490
                                        #   in Loop: Header=BB109_51 Depth=1
	movswl	-100(%rbp), %ebx
	movw	-98(%rbp), %ax
	movswq	-86(%rbp), %rcx
	movswl	%ax, %edi
	movswl	gsm_DLB(,%rcx,2), %esi
	callq	gsm_mult
	cwtl
	cmpl	%eax, %ebx
	jg	.LBB109_54
# %bb.53:                               # %if.then498
	jmp	.LBB109_57
.LBB109_54:                             # %if.end499
                                        #   in Loop: Header=BB109_51 Depth=1
	jmp	.LBB109_55
.LBB109_55:                             # %for.inc500
                                        #   in Loop: Header=BB109_51 Depth=1
	leaq	-86(%rbp), %rdi
	callq	Calculation_of_the_LTP_parameters10
	jmp	.LBB109_51
.LBB109_56:                             # %for.end502.loopexit
	jmp	.LBB109_57
.LBB109_57:                             # %for.end502
	leaq	-200(%rbp), %rdi
	leaq	-86(%rbp), %rsi
	callq	Calculation_of_the_LTP_parameters11
.LBB109_58:                             # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end109:
	.size	Calculation_of_the_LTP_parameters, .Lfunc_end109-Calculation_of_the_LTP_parameters
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Long_term_analysis_filtering
	.type	Long_term_analysis_filtering,@function
Long_term_analysis_filtering:           # @Long_term_analysis_filtering
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
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %ebx
	movl	%edi, %r14d
	movl	$222222235, -108(%rbp)  # imm = 0xD3ED79B
	movl	$555555568, -104(%rbp)  # imm = 0x211D1AF0
	movl	$444444457, -100(%rbp)  # imm = 0x1A7DAF29
	movl	-108(%rbp), %edi
	movl	-104(%rbp), %esi
	movl	-100(%rbp), %edx
	callq	guardMe
	movw	%r14w, -66(%rbp)
	movw	%bx, -46(%rbp)
	movq	%r13, -96(%rbp)
	movq	%r12, -88(%rbp)
	movq	%r15, -64(%rbp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movswl	-66(%rbp), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	ja	.LBB110_46
# %bb.1:                                # %entry
	movq	.LJTI110_0(,%rax,8), %rax
	jmpq	*%rax
.LBB110_2:                              # %sw.bb
	movl	$0, -44(%rbp)
.LBB110_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -44(%rbp)
	jg	.LBB110_12
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB110_3 Depth=1
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %ecx
	movswl	-46(%rbp), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$3277, %rax, %rax       # imm = 0xCCD
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-88(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movswq	(%rcx,%rdx,2), %rcx
	subq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB110_6
# %bb.5:                                # %cond.true
                                        #   in Loop: Header=BB110_3 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB110_10
.LBB110_6:                              # %cond.false
                                        #   in Loop: Header=BB110_3 Depth=1
	cmpq	$-32768, -56(%rbp)      # imm = 0x8000
	jg	.LBB110_8
# %bb.7:                                # %cond.true18
                                        #   in Loop: Header=BB110_3 Depth=1
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB110_9
.LBB110_8:                              # %cond.false19
                                        #   in Loop: Header=BB110_3 Depth=1
	movq	-56(%rbp), %rax
.LBB110_9:                              # %cond.end
                                        #   in Loop: Header=BB110_3 Depth=1
.LBB110_10:                             # %cond.end20
                                        #   in Loop: Header=BB110_3 Depth=1
	movq	-80(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.11:                               # %for.inc
                                        #   in Loop: Header=BB110_3 Depth=1
	leaq	-44(%rbp), %rdi
	callq	Long_term_analysis_filtering0
	jmp	.LBB110_3
.LBB110_12:                             # %for.end
	jmp	.LBB110_46
.LBB110_13:                             # %sw.bb25
	movl	$0, -44(%rbp)
.LBB110_14:                             # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -44(%rbp)
	jg	.LBB110_23
# %bb.15:                               # %for.body29
                                        #   in Loop: Header=BB110_14 Depth=1
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %ecx
	movswl	-46(%rbp), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$11469, %rax, %rax      # imm = 0x2CCD
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-88(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movswq	(%rcx,%rdx,2), %rcx
	subq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB110_17
# %bb.16:                               # %cond.true50
                                        #   in Loop: Header=BB110_14 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB110_21
.LBB110_17:                             # %cond.false51
                                        #   in Loop: Header=BB110_14 Depth=1
	cmpq	$-32768, -56(%rbp)      # imm = 0x8000
	jg	.LBB110_19
# %bb.18:                               # %cond.true54
                                        #   in Loop: Header=BB110_14 Depth=1
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB110_20
.LBB110_19:                             # %cond.false55
                                        #   in Loop: Header=BB110_14 Depth=1
	movq	-56(%rbp), %rax
.LBB110_20:                             # %cond.end56
                                        #   in Loop: Header=BB110_14 Depth=1
.LBB110_21:                             # %cond.end58
                                        #   in Loop: Header=BB110_14 Depth=1
	movq	-80(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.22:                               # %for.inc63
                                        #   in Loop: Header=BB110_14 Depth=1
	leaq	-44(%rbp), %rdi
	callq	Long_term_analysis_filtering1
	jmp	.LBB110_14
.LBB110_23:                             # %for.end65
	jmp	.LBB110_46
.LBB110_24:                             # %sw.bb66
	movl	$0, -44(%rbp)
.LBB110_25:                             # %for.cond67
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -44(%rbp)
	jg	.LBB110_34
# %bb.26:                               # %for.body70
                                        #   in Loop: Header=BB110_25 Depth=1
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %ecx
	movswl	-46(%rbp), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$21299, %rax, %rax      # imm = 0x5333
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-88(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movswq	(%rcx,%rdx,2), %rcx
	subq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB110_28
# %bb.27:                               # %cond.true91
                                        #   in Loop: Header=BB110_25 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB110_32
.LBB110_28:                             # %cond.false92
                                        #   in Loop: Header=BB110_25 Depth=1
	cmpq	$-32768, -56(%rbp)      # imm = 0x8000
	jg	.LBB110_30
# %bb.29:                               # %cond.true95
                                        #   in Loop: Header=BB110_25 Depth=1
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB110_31
.LBB110_30:                             # %cond.false96
                                        #   in Loop: Header=BB110_25 Depth=1
	movq	-56(%rbp), %rax
.LBB110_31:                             # %cond.end97
                                        #   in Loop: Header=BB110_25 Depth=1
.LBB110_32:                             # %cond.end99
                                        #   in Loop: Header=BB110_25 Depth=1
	movq	-80(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.33:                               # %for.inc104
                                        #   in Loop: Header=BB110_25 Depth=1
	leaq	-44(%rbp), %rdi
	callq	Long_term_analysis_filtering2
	jmp	.LBB110_25
.LBB110_34:                             # %for.end106
	jmp	.LBB110_46
.LBB110_35:                             # %sw.bb107
	movl	$0, -44(%rbp)
.LBB110_36:                             # %for.cond108
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -44(%rbp)
	jg	.LBB110_45
# %bb.37:                               # %for.body111
                                        #   in Loop: Header=BB110_36 Depth=1
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %ecx
	movswl	-46(%rbp), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movswq	(%rax,%rcx,2), %rax
	imulq	$32767, %rax, %rax      # imm = 0x7FFF
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-88(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rax
	movq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movswq	(%rcx,%rdx,2), %rcx
	subq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB110_39
# %bb.38:                               # %cond.true132
                                        #   in Loop: Header=BB110_36 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB110_43
.LBB110_39:                             # %cond.false133
                                        #   in Loop: Header=BB110_36 Depth=1
	cmpq	$-32768, -56(%rbp)      # imm = 0x8000
	jg	.LBB110_41
# %bb.40:                               # %cond.true136
                                        #   in Loop: Header=BB110_36 Depth=1
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB110_42
.LBB110_41:                             # %cond.false137
                                        #   in Loop: Header=BB110_36 Depth=1
	movq	-56(%rbp), %rax
.LBB110_42:                             # %cond.end138
                                        #   in Loop: Header=BB110_36 Depth=1
.LBB110_43:                             # %cond.end140
                                        #   in Loop: Header=BB110_36 Depth=1
	movq	-80(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.44:                               # %for.inc145
                                        #   in Loop: Header=BB110_36 Depth=1
	leaq	-44(%rbp), %rdi
	callq	Long_term_analysis_filtering3
	jmp	.LBB110_36
.LBB110_45:                             # %for.end147
	jmp	.LBB110_46
.LBB110_46:                             # %sw.epilog
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end110:
	.size	Long_term_analysis_filtering, .Lfunc_end110-Long_term_analysis_filtering
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI110_0:
	.quad	.LBB110_2
	.quad	.LBB110_13
	.quad	.LBB110_24
	.quad	.LBB110_35
                                        # -- End function
	.text
	.globl	Long_term_analysis_filtering0 # -- Begin function Long_term_analysis_filtering0
	.p2align	4, 0x90
	.type	Long_term_analysis_filtering0,@function
Long_term_analysis_filtering0:          # @Long_term_analysis_filtering0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end111:
	.size	Long_term_analysis_filtering0, .Lfunc_end111-Long_term_analysis_filtering0
	.cfi_endproc
                                        # -- End function
	.globl	Long_term_analysis_filtering1 # -- Begin function Long_term_analysis_filtering1
	.p2align	4, 0x90
	.type	Long_term_analysis_filtering1,@function
Long_term_analysis_filtering1:          # @Long_term_analysis_filtering1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end112:
	.size	Long_term_analysis_filtering1, .Lfunc_end112-Long_term_analysis_filtering1
	.cfi_endproc
                                        # -- End function
	.globl	Long_term_analysis_filtering2 # -- Begin function Long_term_analysis_filtering2
	.p2align	4, 0x90
	.type	Long_term_analysis_filtering2,@function
Long_term_analysis_filtering2:          # @Long_term_analysis_filtering2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end113:
	.size	Long_term_analysis_filtering2, .Lfunc_end113-Long_term_analysis_filtering2
	.cfi_endproc
                                        # -- End function
	.globl	Long_term_analysis_filtering3 # -- Begin function Long_term_analysis_filtering3
	.p2align	4, 0x90
	.type	Long_term_analysis_filtering3,@function
Long_term_analysis_filtering3:          # @Long_term_analysis_filtering3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end114:
	.size	Long_term_analysis_filtering3, .Lfunc_end114-Long_term_analysis_filtering3
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters0 # -- Begin function Calculation_of_the_LTP_parameters0
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters0,@function
Calculation_of_the_LTP_parameters0:     # @Calculation_of_the_LTP_parameters0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movw	%ax, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end115:
	.size	Calculation_of_the_LTP_parameters0, .Lfunc_end115-Calculation_of_the_LTP_parameters0
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters1 # -- Begin function Calculation_of_the_LTP_parameters1
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters1,@function
Calculation_of_the_LTP_parameters1:     # @Calculation_of_the_LTP_parameters1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, 6(%rsp)
	movq	%rsi, 8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, 4(%rsp)
	movswq	4(%rsp), %rdi
	shlq	$16, %rdi
	callq	gsm_norm
	movw	%ax, 6(%rsp)
	movq	8(%rsp), %rax
	movzwl	4(%rsp), %ecx
	movw	%cx, (%rax)
	movq	16(%rsp), %rax
	movzwl	6(%rsp), %ecx
	movw	%cx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end116:
	.size	Calculation_of_the_LTP_parameters1, .Lfunc_end116-Calculation_of_the_LTP_parameters1
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters2 # -- Begin function Calculation_of_the_LTP_parameters2
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters2,@function
Calculation_of_the_LTP_parameters2:     # @Calculation_of_the_LTP_parameters2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movzwl	-18(%rsp), %eax
	movl	$6, %ecx
	subl	%eax, %ecx
	movw	%cx, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end117:
	.size	Calculation_of_the_LTP_parameters2, .Lfunc_end117-Calculation_of_the_LTP_parameters2
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters3 # -- Begin function Calculation_of_the_LTP_parameters3
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters3,@function
Calculation_of_the_LTP_parameters3:     # @Calculation_of_the_LTP_parameters3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end118:
	.size	Calculation_of_the_LTP_parameters3, .Lfunc_end118-Calculation_of_the_LTP_parameters3
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters4 # -- Begin function Calculation_of_the_LTP_parameters4
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters4,@function
Calculation_of_the_LTP_parameters4:     # @Calculation_of_the_LTP_parameters4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -32(%rsp)
	movq	%rdx, -8(%rsp)
	movzwl	(%rdx), %esi
	movw	%si, -54(%rsp)
	movq	%rcx, -40(%rsp)
	movl	(%rcx), %ecx
	movl	%ecx, -52(%rsp)
	movzwl	-52(%rsp), %ecx
	movw	%cx, -54(%rsp)
	movq	%rax, -48(%rsp)
	movw	%cx, (%rdx)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rsp), %rax
	movl	-52(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end119:
	.size	Calculation_of_the_LTP_parameters4, .Lfunc_end119-Calculation_of_the_LTP_parameters4
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters5 # -- Begin function Calculation_of_the_LTP_parameters5
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters5,@function
Calculation_of_the_LTP_parameters5:     # @Calculation_of_the_LTP_parameters5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end120:
	.size	Calculation_of_the_LTP_parameters5, .Lfunc_end120-Calculation_of_the_LTP_parameters5
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters6 # -- Begin function Calculation_of_the_LTP_parameters6
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters6,@function
Calculation_of_the_LTP_parameters6:     # @Calculation_of_the_LTP_parameters6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -56(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -48(%rsp)
	movl	(%rdx), %edx
	movl	%edx, -60(%rsp)
	movq	%rcx, -8(%rsp)
	movzwl	(%rcx), %edx
	movw	%dx, -62(%rsp)
	movslq	-60(%rsp), %rdx
	movswq	-62(%rsp), %rsi
	subq	%rsi, %rdx
	movswl	(%rax,%rdx,2), %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -16(%rsp)
	imulq	%rax, %rax
	addq	%rax, -56(%rsp)
	movw	%si, (%rcx)
	movq	-48(%rsp), %rax
	movl	-60(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end121:
	.size	Calculation_of_the_LTP_parameters6, .Lfunc_end121-Calculation_of_the_LTP_parameters6
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters7 # -- Begin function Calculation_of_the_LTP_parameters7
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters7,@function
Calculation_of_the_LTP_parameters7:     # @Calculation_of_the_LTP_parameters7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end122:
	.size	Calculation_of_the_LTP_parameters7, .Lfunc_end122-Calculation_of_the_LTP_parameters7
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters8 # -- Begin function Calculation_of_the_LTP_parameters8
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters8,@function
Calculation_of_the_LTP_parameters8:     # @Calculation_of_the_LTP_parameters8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end123:
	.size	Calculation_of_the_LTP_parameters8, .Lfunc_end123-Calculation_of_the_LTP_parameters8
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters9 # -- Begin function Calculation_of_the_LTP_parameters9
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters9,@function
Calculation_of_the_LTP_parameters9:     # @Calculation_of_the_LTP_parameters9
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, 14(%rsp)
	movq	%rsi, 56(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 24(%rsp)
	movq	%rdx, 48(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, 12(%rsp)
	movq	%rcx, 40(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	%r8, 32(%rsp)
	movzwl	(%r8), %eax
	movw	%ax, 10(%rsp)
	callq	gsm_norm
	movl	%eax, %ecx
	movw	%cx, 12(%rsp)
	movq	16(%rsp), %rax
	shlq	%cl, %rax
	shrq	$16, %rax
	movw	%ax, 10(%rsp)
	movq	24(%rsp), %rax
                                        # kill: def %cl killed %cl killed %cx
	shlq	%cl, %rax
	shrq	$16, %rax
	movw	%ax, 14(%rsp)
	movq	64(%rsp), %rcx
	movw	%ax, (%rcx)
	movq	48(%rsp), %rax
	movzwl	12(%rsp), %ecx
	movw	%cx, (%rax)
	movq	32(%rsp), %rax
	movzwl	10(%rsp), %ecx
	movw	%cx, (%rax)
	movq	56(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$72, %rsp
	retq
.Lfunc_end124:
	.size	Calculation_of_the_LTP_parameters9, .Lfunc_end124-Calculation_of_the_LTP_parameters9
	.cfi_endproc
                                        # -- End function
	.globl	gsm_mult                # -- Begin function gsm_mult
	.p2align	4, 0x90
	.type	gsm_mult,@function
gsm_mult:                               # @gsm_mult
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -4(%rbp)
	movw	%si, -2(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB125_3
# %bb.1:                                # %land.lhs.true
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB125_3
# %bb.2:                                # %if.then
	movw	$32767, -6(%rbp)        # imm = 0x7FFF
	jmp	.LBB125_4
.LBB125_3:                              # %if.else
	leaq	-6(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	gsm_mult0
.LBB125_4:                              # %return
	movswl	-6(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	gsm_mult, .Lfunc_end125-gsm_mult
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters10 # -- Begin function Calculation_of_the_LTP_parameters10
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters10,@function
Calculation_of_the_LTP_parameters10:    # @Calculation_of_the_LTP_parameters10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	incl	%eax
	movw	%ax, -10(%rsp)
	movw	%ax, (%rdi)
	retq
.Lfunc_end126:
	.size	Calculation_of_the_LTP_parameters10, .Lfunc_end126-Calculation_of_the_LTP_parameters10
	.cfi_endproc
                                        # -- End function
	.globl	Calculation_of_the_LTP_parameters11 # -- Begin function Calculation_of_the_LTP_parameters11
	.p2align	4, 0x90
	.type	Calculation_of_the_LTP_parameters11,@function
Calculation_of_the_LTP_parameters11:    # @Calculation_of_the_LTP_parameters11
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -26(%rsp)
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movzwl	-26(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end127:
	.size	Calculation_of_the_LTP_parameters11, .Lfunc_end127-Calculation_of_the_LTP_parameters11
	.cfi_endproc
                                        # -- End function
	.globl	gsm_mult0               # -- Begin function gsm_mult0
	.p2align	4, 0x90
	.type	gsm_mult0,@function
gsm_mult0:                              # @gsm_mult0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -28(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -26(%rsp)
	movq	%rdx, -24(%rsp)
	movzwl	(%rdx), %ecx
	movw	%cx, -30(%rsp)
	movswl	-26(%rsp), %ecx
	movswl	-30(%rsp), %edx
	imull	%ecx, %edx
	shrl	$15, %edx
	movw	%dx, -28(%rsp)
	movw	%ax, (%rsi)
	movq	-24(%rsp), %rax
	movzwl	-30(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-28(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end128:
	.size	gsm_mult0, .Lfunc_end128-gsm_mult0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_norm                # -- Begin function gsm_norm
	.p2align	4, 0x90
	.type	gsm_norm,@function
gsm_norm:                               # @gsm_norm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB129_2
# %bb.1:                                # %cond.true
	jmp	.LBB129_3
.LBB129_2:                              # %cond.false
	movabsq	$.L.str.2.68, %rdi
	movabsq	$.L.str.1.67, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.gsm_norm, %rcx
	movl	$137, %edx
	callq	__assert_fail
.LBB129_3:                              # %cond.end
	cmpq	$0, -8(%rbp)
	jge	.LBB129_7
# %bb.4:                                # %if.then
	cmpq	$-1073741824, -8(%rbp)  # imm = 0xC0000000
	jg	.LBB129_6
# %bb.5:                                # %if.then3
	movw	$0, -10(%rbp)
	jmp	.LBB129_17
.LBB129_6:                              # %if.end
	leaq	-8(%rbp), %rdi
	callq	gsm_norm0
.LBB129_7:                              # %if.end4
	movl	$4294901760, %eax       # imm = 0xFFFF0000
	andq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB129_12
# %bb.8:                                # %cond.true5
	movl	$4278190080, %eax       # imm = 0xFF000000
	andq	-8(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB129_10
# %bb.9:                                # %cond.true8
	movq	-8(%rbp), %rax
	sarq	$24, %rax
	andq	$255, %rax
	movzbl	bitoff(,%rax), %eax
	addl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB129_11
.LBB129_10:                             # %cond.false10
	movq	-8(%rbp), %rax
	sarq	$16, %rax
	andq	$255, %rax
	movzbl	bitoff(,%rax), %eax
	addl	$7, %eax
.LBB129_11:                             # %cond.end16
	jmp	.LBB129_16
.LBB129_12:                             # %cond.false17
	movq	-8(%rbp), %rax
	andq	$65280, %rax            # imm = 0xFF00
	cmpq	$0, %rax
	je	.LBB129_14
# %bb.13:                               # %cond.true20
	movq	-8(%rbp), %rax
	sarq	$8, %rax
	andq	$255, %rax
	movzbl	bitoff(,%rax), %eax
	addl	$15, %eax
	jmp	.LBB129_15
.LBB129_14:                             # %cond.false26
	movq	-8(%rbp), %rax
	andq	$255, %rax
	movzbl	bitoff(,%rax), %eax
	addl	$23, %eax
.LBB129_15:                             # %cond.end31
.LBB129_16:                             # %cond.end33
	movw	%ax, -10(%rbp)
.LBB129_17:                             # %return
	movswl	-10(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	gsm_norm, .Lfunc_end129-gsm_norm
	.cfi_endproc
                                        # -- End function
	.globl	gsm_norm0               # -- Begin function gsm_norm0
	.p2align	4, 0x90
	.type	gsm_norm0,@function
gsm_norm0:                              # @gsm_norm0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	notq	%rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end130:
	.size	gsm_norm0, .Lfunc_end130-gsm_norm0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Short_Term_Analysis_Filter0 # -- Begin function Gsm_Short_Term_Analysis_Filter0
	.p2align	4, 0x90
	.type	Gsm_Short_Term_Analysis_Filter0,@function
Gsm_Short_Term_Analysis_Filter0:        # @Gsm_Short_Term_Analysis_Filter0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movq	%rdi, 56(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 48(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 40(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, 32(%rsp)
	movswq	628(%rax), %rcx
	shlq	$4, %rcx
	leaq	596(%rax,%rcx), %rcx
	movq	%rcx, (%rsp)
	movswl	628(%rax), %ecx
	xorl	$1, %ecx
	movw	%cx, 628(%rax)
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	596(%rax,%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	32(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	Decoding_of_the_coded_Log_Area_Ratios
	movq	24(%rsp), %rdi
	movq	(%rsp), %rsi
	leaq	64(%rsp), %rbx
	movq	%rbx, %rdx
	callq	Coefficients_0_12
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	movl	$13, %edx
	movq	%rbx, %rsi
	callq	Short_term_analysis_filtering
	movq	24(%rsp), %rdi
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	callq	Coefficients_13_26
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	addq	$26, %rcx
	movl	$14, %edx
	movq	%rbx, %rsi
	callq	Short_term_analysis_filtering
	movq	24(%rsp), %rdi
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	callq	Coefficients_27_39
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	addq	$54, %rcx
	movl	$13, %edx
	movq	%rbx, %rsi
	callq	Short_term_analysis_filtering
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	Coefficients_40_159
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	addq	$80, %rcx
	movl	$120, %edx
	movq	%rbx, %rsi
	callq	Short_term_analysis_filtering
	movq	40(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end131:
	.size	Gsm_Short_Term_Analysis_Filter0, .Lfunc_end131-Gsm_Short_Term_Analysis_Filter0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Decoding_of_the_coded_Log_Area_Ratios
	.type	Decoding_of_the_coded_Log_Area_Ratios,@function
Decoding_of_the_coded_Log_Area_Ratios:  # @Decoding_of_the_coded_Log_Area_Ratios
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-32, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_2
# %bb.1:                                # %cond.true
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_3
.LBB132_2:                              # %cond.false
	movq	-16(%rbp), %rax
.LBB132_3:                              # %cond.end
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$0, %rax
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_5
# %bb.4:                                # %cond.true11
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_9
.LBB132_5:                              # %cond.false12
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_7
# %bb.6:                                # %cond.true15
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_8
.LBB132_7:                              # %cond.false16
	movq	-16(%rbp), %rax
.LBB132_8:                              # %cond.end17
.LBB132_9:                              # %cond.end19
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$13107, %rax, %rax      # imm = 0x3333
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_11
# %bb.10:                               # %cond.true31
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_12
.LBB132_11:                             # %cond.false36
	movq	-16(%rbp), %rax
.LBB132_12:                             # %cond.end37
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-32, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_14
# %bb.13:                               # %cond.true47
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_15
.LBB132_14:                             # %cond.false52
	movq	-16(%rbp), %rax
.LBB132_15:                             # %cond.end53
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$0, %rax
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_17
# %bb.16:                               # %cond.true61
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_21
.LBB132_17:                             # %cond.false62
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_19
# %bb.18:                               # %cond.true65
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_20
.LBB132_19:                             # %cond.false66
	movq	-16(%rbp), %rax
.LBB132_20:                             # %cond.end67
.LBB132_21:                             # %cond.end69
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$13107, %rax, %rax      # imm = 0x3333
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_23
# %bb.22:                               # %cond.true83
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_24
.LBB132_23:                             # %cond.false88
	movq	-16(%rbp), %rax
.LBB132_24:                             # %cond.end89
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-16, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_26
# %bb.25:                               # %cond.true99
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_27
.LBB132_26:                             # %cond.false104
	movq	-16(%rbp), %rax
.LBB132_27:                             # %cond.end105
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$4096, %rax             # imm = 0x1000
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_29
# %bb.28:                               # %cond.true113
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_33
.LBB132_29:                             # %cond.false114
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_31
# %bb.30:                               # %cond.true117
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_32
.LBB132_31:                             # %cond.false118
	movq	-16(%rbp), %rax
.LBB132_32:                             # %cond.end119
.LBB132_33:                             # %cond.end121
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$13107, %rax, %rax      # imm = 0x3333
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_35
# %bb.34:                               # %cond.true135
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_36
.LBB132_35:                             # %cond.false140
	movq	-16(%rbp), %rax
.LBB132_36:                             # %cond.end141
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-16, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_38
# %bb.37:                               # %cond.true151
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_39
.LBB132_38:                             # %cond.false156
	movq	-16(%rbp), %rax
.LBB132_39:                             # %cond.end157
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$-5120, %rax            # imm = 0xEC00
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_41
# %bb.40:                               # %cond.true165
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_45
.LBB132_41:                             # %cond.false166
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_43
# %bb.42:                               # %cond.true169
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_44
.LBB132_43:                             # %cond.false170
	movq	-16(%rbp), %rax
.LBB132_44:                             # %cond.end171
.LBB132_45:                             # %cond.end173
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$13107, %rax, %rax      # imm = 0x3333
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_47
# %bb.46:                               # %cond.true187
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_48
.LBB132_47:                             # %cond.false192
	movq	-16(%rbp), %rax
.LBB132_48:                             # %cond.end193
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_50
# %bb.49:                               # %cond.true203
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_51
.LBB132_50:                             # %cond.false208
	movq	-16(%rbp), %rax
.LBB132_51:                             # %cond.end209
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$188, %rax
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_53
# %bb.52:                               # %cond.true217
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_57
.LBB132_53:                             # %cond.false218
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_55
# %bb.54:                               # %cond.true221
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_56
.LBB132_55:                             # %cond.false222
	movq	-16(%rbp), %rax
.LBB132_56:                             # %cond.end223
.LBB132_57:                             # %cond.end225
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$19223, %rax, %rax      # imm = 0x4B17
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_59
# %bb.58:                               # %cond.true239
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_60
.LBB132_59:                             # %cond.false244
	movq	-16(%rbp), %rax
.LBB132_60:                             # %cond.end245
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-8, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_62
# %bb.61:                               # %cond.true255
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_63
.LBB132_62:                             # %cond.false260
	movq	-16(%rbp), %rax
.LBB132_63:                             # %cond.end261
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$-3584, %rax            # imm = 0xF200
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_65
# %bb.64:                               # %cond.true269
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_69
.LBB132_65:                             # %cond.false270
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_67
# %bb.66:                               # %cond.true273
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_68
.LBB132_67:                             # %cond.false274
	movq	-16(%rbp), %rax
.LBB132_68:                             # %cond.end275
.LBB132_69:                             # %cond.end277
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$17476, %rax, %rax      # imm = 0x4444
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_71
# %bb.70:                               # %cond.true291
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_72
.LBB132_71:                             # %cond.false296
	movq	-16(%rbp), %rax
.LBB132_72:                             # %cond.end297
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-4, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_74
# %bb.73:                               # %cond.true307
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_75
.LBB132_74:                             # %cond.false312
	movq	-16(%rbp), %rax
.LBB132_75:                             # %cond.end313
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$-682, %rax             # imm = 0xFD56
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_77
# %bb.76:                               # %cond.true321
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_81
.LBB132_77:                             # %cond.false322
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_79
# %bb.78:                               # %cond.true325
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_80
.LBB132_79:                             # %cond.false326
	movq	-16(%rbp), %rax
.LBB132_80:                             # %cond.end327
.LBB132_81:                             # %cond.end329
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$31454, %rax, %rax      # imm = 0x7ADE
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_83
# %bb.82:                               # %cond.true343
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_84
.LBB132_83:                             # %cond.false348
	movq	-16(%rbp), %rax
.LBB132_84:                             # %cond.end349
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movswq	(%rax), %rax
	addq	$-4, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_86
# %bb.85:                               # %cond.true359
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_87
.LBB132_86:                             # %cond.false364
	movq	-16(%rbp), %rax
.LBB132_87:                             # %cond.end365
	shlq	$10, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	subq	$-2288, %rax            # imm = 0xF710
	movq	%rax, -16(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB132_89
# %bb.88:                               # %cond.true373
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB132_93
.LBB132_89:                             # %cond.false374
	cmpq	$-32768, -16(%rbp)      # imm = 0x8000
	jg	.LBB132_91
# %bb.90:                               # %cond.true377
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB132_92
.LBB132_91:                             # %cond.false378
	movq	-16(%rbp), %rax
.LBB132_92:                             # %cond.end379
.LBB132_93:                             # %cond.end381
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	imulq	$29708, %rax, %rax      # imm = 0x740C
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB132_95
# %bb.94:                               # %cond.true395
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB132_96
.LBB132_95:                             # %cond.false400
	movq	-16(%rbp), %rax
.LBB132_96:                             # %cond.end401
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movw	%ax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end132:
	.size	Decoding_of_the_coded_Log_Area_Ratios, .Lfunc_end132-Decoding_of_the_coded_Log_Area_Ratios
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Coefficients_0_12
	.type	Coefficients_0_12,@function
Coefficients_0_12:                      # @Coefficients_0_12
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
	movl	$222222233, -80(%rbp)   # imm = 0xD3ED799
	movl	$555555566, -76(%rbp)   # imm = 0x211D1AEE
	movl	$444444455, -72(%rbp)   # imm = 0x1A7DAF27
	movl	-80(%rbp), %edi
	movl	-76(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	guardMe
	movl	$222222232, -68(%rbp)   # imm = 0xD3ED798
	movl	$555555565, -64(%rbp)   # imm = 0x211D1AED
	movl	$444444454, -60(%rbp)   # imm = 0x1A7DAF26
	movl	-68(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	callq	guardMe
	movq	%rbx, -56(%rbp)
	movq	%r15, -88(%rbp)
	movq	%r14, -48(%rbp)
	movl	$1, -28(%rbp)
.LBB133_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -28(%rbp)
	jg	.LBB133_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-56(%rbp), %rax
	movswl	(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	-88(%rbp), %rcx
	movswl	(%rcx), %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB133_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB133_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-40(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB133_5
.LBB133_4:                              # %cond.false
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-40(%rbp), %rax
.LBB133_5:                              # %cond.end
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-48(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-48(%rbp), %rax
	movswq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movswl	(%rcx), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB133_7
# %bb.6:                                # %cond.true20
                                        #   in Loop: Header=BB133_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-40(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB133_8
.LBB133_7:                              # %cond.false25
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-40(%rbp), %rax
.LBB133_8:                              # %cond.end26
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-48(%rbp), %rcx
	movw	%ax, (%rcx)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB133_1 Depth=1
	leaq	-88(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	callq	Coefficients_0_120
	jmp	.LBB133_1
.LBB133_10:                             # %for.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end133:
	.size	Coefficients_0_12, .Lfunc_end133-Coefficients_0_12
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function LARp_to_rp
	.type	LARp_to_rp,@function
LARp_to_rp:                             # @LARp_to_rp
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
	movl	$222222236, -52(%rbp)   # imm = 0xD3ED79C
	movl	$555555569, -48(%rbp)   # imm = 0x211D1AF1
	movl	$444444458, -44(%rbp)   # imm = 0x1A7DAF2A
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB134_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -28(%rbp)
	jg	.LBB134_28
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	jge	.LBB134_16
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB134_5
# %bb.4:                                # %cond.true
                                        #   in Loop: Header=BB134_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB134_6
.LBB134_5:                              # %cond.false
                                        #   in Loop: Header=BB134_1 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movswl	(%rcx), %ecx
	subl	%ecx, %eax
.LBB134_6:                              # %cond.end
                                        #   in Loop: Header=BB134_1 Depth=1
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$11059, %eax            # imm = 0x2B33
	jge	.LBB134_8
# %bb.7:                                # %cond.true11
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	shll	$1, %eax
	cltq
	jmp	.LBB134_15
.LBB134_8:                              # %cond.false14
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$20070, %eax            # imm = 0x4E66
	jge	.LBB134_10
# %bb.9:                                # %cond.true18
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	addl	$11059, %eax            # imm = 0x2B33
	cltq
	jmp	.LBB134_14
.LBB134_10:                             # %cond.false21
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	sarl	$2, %eax
	cltq
	addq	$26112, %rax            # imm = 0x6600
	movq	%rax, -40(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB134_12
# %bb.11:                               # %cond.true28
                                        #   in Loop: Header=BB134_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-40(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB134_13
.LBB134_12:                             # %cond.false33
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-40(%rbp), %rax
.LBB134_13:                             # %cond.end34
                                        #   in Loop: Header=BB134_1 Depth=1
.LBB134_14:                             # %cond.end36
                                        #   in Loop: Header=BB134_1 Depth=1
.LBB134_15:                             # %cond.end38
                                        #   in Loop: Header=BB134_1 Depth=1
	xorl	%ecx, %ecx
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	movw	%cx, (%rax)
	jmp	.LBB134_26
.LBB134_16:                             # %if.else
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-24(%rbp), %rax
	movw	(%rax), %ax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$11059, %eax            # imm = 0x2B33
	jge	.LBB134_18
# %bb.17:                               # %cond.true45
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	shll	$1, %eax
	cltq
	jmp	.LBB134_25
.LBB134_18:                             # %cond.false49
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$20070, %eax            # imm = 0x4E66
	jge	.LBB134_20
# %bb.19:                               # %cond.true53
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	addl	$11059, %eax            # imm = 0x2B33
	cltq
	jmp	.LBB134_24
.LBB134_20:                             # %cond.false57
                                        #   in Loop: Header=BB134_1 Depth=1
	movswl	-10(%rbp), %eax
	sarl	$2, %eax
	cltq
	addq	$26112, %rax            # imm = 0x6600
	movq	%rax, -40(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB134_22
# %bb.21:                               # %cond.true65
                                        #   in Loop: Header=BB134_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-40(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB134_23
.LBB134_22:                             # %cond.false70
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-40(%rbp), %rax
.LBB134_23:                             # %cond.end71
                                        #   in Loop: Header=BB134_1 Depth=1
.LBB134_24:                             # %cond.end73
                                        #   in Loop: Header=BB134_1 Depth=1
.LBB134_25:                             # %cond.end75
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB134_26:                             # %if.end
                                        #   in Loop: Header=BB134_1 Depth=1
	jmp	.LBB134_27
.LBB134_27:                             # %for.inc
                                        #   in Loop: Header=BB134_1 Depth=1
	leaq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	callq	LARp_to_rp0
	jmp	.LBB134_1
.LBB134_28:                             # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end134:
	.size	LARp_to_rp, .Lfunc_end134-LARp_to_rp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Short_term_analysis_filtering
	.type	Short_term_analysis_filtering,@function
Short_term_analysis_filtering:          # @Short_term_analysis_filtering
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	leaq	-64(%rbp), %r8
	movq	%rdi, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	callq	Short_term_analysis_filtering0
.LBB135_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB135_3 Depth 2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB135_14
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB135_1 Depth=1
	leaq	-8(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	callq	Short_term_analysis_filtering1
.LBB135_3:                              # %for.cond2
                                        #   Parent Loop BB135_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -8(%rbp)
	jge	.LBB135_12
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB135_3 Depth=2
	movq	-48(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movq	-56(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -10(%rbp)
	movw	-12(%rbp), %ax
	movq	-48(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movswq	-10(%rbp), %rax
	movswq	-2(%rbp), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -4(%rbp)
	movswq	-14(%rbp), %rax
	movswq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB135_6
# %bb.5:                                # %cond.true
                                        #   in Loop: Header=BB135_3 Depth=2
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB135_7
.LBB135_6:                              # %cond.false
                                        #   in Loop: Header=BB135_3 Depth=2
	movq	-24(%rbp), %rax
.LBB135_7:                              # %cond.end
                                        #   in Loop: Header=BB135_3 Depth=2
	movw	%ax, -12(%rbp)
	movswq	-10(%rbp), %rax
	movswq	-14(%rbp), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -4(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB135_9
# %bb.8:                                # %cond.true32
                                        #   in Loop: Header=BB135_3 Depth=2
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB135_10
.LBB135_9:                              # %cond.false37
                                        #   in Loop: Header=BB135_3 Depth=2
	movq	-24(%rbp), %rax
.LBB135_10:                             # %cond.end38
                                        #   in Loop: Header=BB135_3 Depth=2
	movw	%ax, -2(%rbp)
# %bb.11:                               # %for.inc
                                        #   in Loop: Header=BB135_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB135_3
.LBB135_12:                             # %for.end
                                        #   in Loop: Header=BB135_1 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	callq	Short_term_analysis_filtering2
# %bb.13:                               # %for.inc41
                                        #   in Loop: Header=BB135_1 Depth=1
	leaq	-40(%rbp), %rdi
	callq	Short_term_analysis_filtering3
	jmp	.LBB135_1
.LBB135_14:                             # %for.end42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	Short_term_analysis_filtering, .Lfunc_end135-Short_term_analysis_filtering
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Coefficients_13_26
	.type	Coefficients_13_26,@function
Coefficients_13_26:                     # @Coefficients_13_26
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -4(%rbp)
.LBB136_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jg	.LBB136_7
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB136_1 Depth=1
	movq	-40(%rbp), %rax
	movswl	(%rax), %eax
	sarl	$1, %eax
	cltq
	movq	-32(%rbp), %rcx
	movswl	(%rcx), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB136_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB136_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB136_5
.LBB136_4:                              # %cond.false
                                        #   in Loop: Header=BB136_1 Depth=1
	movq	-16(%rbp), %rax
.LBB136_5:                              # %cond.end
                                        #   in Loop: Header=BB136_1 Depth=1
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
# %bb.6:                                # %for.inc
                                        #   in Loop: Header=BB136_1 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	callq	Coefficients_13_260
	jmp	.LBB136_1
.LBB136_7:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	Coefficients_13_26, .Lfunc_end136-Coefficients_13_26
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Coefficients_27_39
	.type	Coefficients_27_39,@function
Coefficients_27_39:                     # @Coefficients_27_39
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -4(%rbp)
.LBB137_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jg	.LBB137_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB137_1 Depth=1
	movq	-40(%rbp), %rax
	movswl	(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	-32(%rbp), %rcx
	movswl	(%rcx), %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB137_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB137_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB137_5
.LBB137_4:                              # %cond.false
                                        #   in Loop: Header=BB137_1 Depth=1
	movq	-16(%rbp), %rax
.LBB137_5:                              # %cond.end
                                        #   in Loop: Header=BB137_1 Depth=1
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-24(%rbp), %rax
	movswq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movswl	(%rcx), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB137_7
# %bb.6:                                # %cond.true20
                                        #   in Loop: Header=BB137_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB137_8
.LBB137_7:                              # %cond.false25
                                        #   in Loop: Header=BB137_1 Depth=1
	movq	-16(%rbp), %rax
.LBB137_8:                              # %cond.end26
                                        #   in Loop: Header=BB137_1 Depth=1
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB137_1 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	callq	Coefficients_27_390
	jmp	.LBB137_1
.LBB137_10:                             # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	Coefficients_27_39, .Lfunc_end137-Coefficients_27_39
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Coefficients_40_159
	.type	Coefficients_40_159,@function
Coefficients_40_159:                    # @Coefficients_40_159
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -4(%rbp)
.LBB138_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jg	.LBB138_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB138_1 Depth=1
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	Coefficients_40_1590
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB138_1 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	callq	Coefficients_40_1591
	jmp	.LBB138_1
.LBB138_4:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	Coefficients_40_159, .Lfunc_end138-Coefficients_40_159
	.cfi_endproc
                                        # -- End function
	.globl	Coefficients_40_1590    # -- Begin function Coefficients_40_1590
	.p2align	4, 0x90
	.type	Coefficients_40_1590,@function
Coefficients_40_1590:                   # @Coefficients_40_1590
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movzwl	(%rcx), %ecx
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end139:
	.size	Coefficients_40_1590, .Lfunc_end139-Coefficients_40_1590
	.cfi_endproc
                                        # -- End function
	.globl	Coefficients_40_1591    # -- Begin function Coefficients_40_1591
	.p2align	4, 0x90
	.type	Coefficients_40_1591,@function
Coefficients_40_1591:                   # @Coefficients_40_1591
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rsp)
	addq	$2, %rax
	movq	%rax, -32(%rsp)
	movq	%rcx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end140:
	.size	Coefficients_40_1591, .Lfunc_end140-Coefficients_40_1591
	.cfi_endproc
                                        # -- End function
	.globl	Coefficients_27_390     # -- Begin function Coefficients_27_390
	.p2align	4, 0x90
	.type	Coefficients_27_390,@function
Coefficients_27_390:                    # @Coefficients_27_390
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -48(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rsi
	addq	$2, %rsi
	movq	%rsi, -16(%rsp)
	addq	$2, %rcx
	movq	%rcx, -48(%rsp)
	addq	$2, %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, (%rdx)
	movq	-32(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end141:
	.size	Coefficients_27_390, .Lfunc_end141-Coefficients_27_390
	.cfi_endproc
                                        # -- End function
	.globl	Coefficients_13_260     # -- Begin function Coefficients_13_260
	.p2align	4, 0x90
	.type	Coefficients_13_260,@function
Coefficients_13_260:                    # @Coefficients_13_260
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -48(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rsi
	addq	$2, %rsi
	movq	%rsi, -16(%rsp)
	addq	$2, %rcx
	movq	%rcx, -48(%rsp)
	addq	$2, %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, (%rdx)
	movq	-32(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end142:
	.size	Coefficients_13_260, .Lfunc_end142-Coefficients_13_260
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_analysis_filtering0 # -- Begin function Short_term_analysis_filtering0
	.p2align	4, 0x90
	.type	Short_term_analysis_filtering0,@function
Short_term_analysis_filtering0:         # @Short_term_analysis_filtering0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	leaq	580(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end143:
	.size	Short_term_analysis_filtering0, .Lfunc_end143-Short_term_analysis_filtering0
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_analysis_filtering1 # -- Begin function Short_term_analysis_filtering1
	.p2align	4, 0x90
	.type	Short_term_analysis_filtering1,@function
Short_term_analysis_filtering1:         # @Short_term_analysis_filtering1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -44(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -46(%rsp)
	movq	%rdx, -32(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -48(%rsp)
	movq	%rcx, -40(%rsp)
	movq	(%rcx), %rax
	movq	%rax, -8(%rsp)
	movzwl	(%rax), %ecx
	movw	%cx, -48(%rsp)
	movw	%cx, -46(%rsp)
	movl	$0, -44(%rsp)
	movq	-40(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rsp), %rax
	movzwl	-48(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movzwl	-46(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end144:
	.size	Short_term_analysis_filtering1, .Lfunc_end144-Short_term_analysis_filtering1
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_analysis_filtering2 # -- Begin function Short_term_analysis_filtering2
	.p2align	4, 0x90
	.type	Short_term_analysis_filtering2,@function
Short_term_analysis_filtering2:         # @Short_term_analysis_filtering2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -26(%rsp)
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movzwl	-26(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end145:
	.size	Short_term_analysis_filtering2, .Lfunc_end145-Short_term_analysis_filtering2
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_analysis_filtering3 # -- Begin function Short_term_analysis_filtering3
	.p2align	4, 0x90
	.type	Short_term_analysis_filtering3,@function
Short_term_analysis_filtering3:         # @Short_term_analysis_filtering3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$2, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end146:
	.size	Short_term_analysis_filtering3, .Lfunc_end146-Short_term_analysis_filtering3
	.cfi_endproc
                                        # -- End function
	.globl	LARp_to_rp0             # -- Begin function LARp_to_rp0
	.p2align	4, 0x90
	.type	LARp_to_rp0,@function
LARp_to_rp0:                            # @LARp_to_rp0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$2, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end147:
	.size	LARp_to_rp0, .Lfunc_end147-LARp_to_rp0
	.cfi_endproc
                                        # -- End function
	.globl	Coefficients_0_120      # -- Begin function Coefficients_0_120
	.p2align	4, 0x90
	.type	Coefficients_0_120,@function
Coefficients_0_120:                     # @Coefficients_0_120
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -48(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rsi
	addq	$2, %rsi
	movq	%rsi, -16(%rsp)
	addq	$2, %rcx
	movq	%rcx, -48(%rsp)
	addq	$2, %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, (%rdx)
	movq	-32(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end148:
	.size	Coefficients_0_120, .Lfunc_end148-Coefficients_0_120
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_LPC_Analysis0       # -- Begin function Gsm_LPC_Analysis0
	.p2align	4, 0x90
	.type	Gsm_LPC_Analysis0,@function
Gsm_LPC_Analysis0:                      # @Gsm_LPC_Analysis0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, (%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 8(%rsp)
	leaq	32(%rsp), %rbx
	movq	%rbx, %rsi
	callq	Autocorrelation
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	Reflection_coefficients
	movq	(%rsp), %rdi
	callq	Transformation_to_Log_Area_Ratios
	movq	(%rsp), %rdi
	callq	Quantization_and_coding
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$112, %rsp
	popq	%rbx
	retq
.Lfunc_end149:
	.size	Gsm_LPC_Analysis0, .Lfunc_end149-Gsm_LPC_Analysis0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Autocorrelation
	.type	Autocorrelation,@function
Autocorrelation:                        # @Autocorrelation
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
	movl	$222222237, -68(%rbp)   # imm = 0xD3ED79D
	movl	$555555570, -64(%rbp)   # imm = 0x211D1AF2
	movl	$444444459, -60(%rbp)   # imm = 0x1A7DAF2B
	movl	-68(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	callq	guardMe
	movq	%rbx, -40(%rbp)
	movq	%r14, -56(%rbp)
	movw	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB150_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$159, -20(%rbp)
	jg	.LBB150_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB150_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movswl	(%rax,%rcx,2), %eax
	cmpl	$0, %eax
	jge	.LBB150_7
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB150_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movswl	(%rax,%rcx,2), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB150_5
# %bb.4:                                # %cond.true8
                                        #   in Loop: Header=BB150_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB150_6
.LBB150_5:                              # %cond.false
                                        #   in Loop: Header=BB150_1 Depth=1
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movswl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
.LBB150_6:                              # %cond.end
                                        #   in Loop: Header=BB150_1 Depth=1
	jmp	.LBB150_8
.LBB150_7:                              # %cond.false12
                                        #   in Loop: Header=BB150_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movswl	(%rax,%rcx,2), %eax
.LBB150_8:                              # %cond.end16
                                        #   in Loop: Header=BB150_1 Depth=1
	movw	%ax, -28(%rbp)
	movswl	-28(%rbp), %eax
	movswl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB150_10
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB150_1 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	Autocorrelation0
.LBB150_10:                             # %if.end
                                        #   in Loop: Header=BB150_1 Depth=1
	jmp	.LBB150_11
.LBB150_11:                             # %for.inc
                                        #   in Loop: Header=BB150_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB150_1
.LBB150_12:                             # %for.end
	movswl	-24(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB150_14
# %bb.13:                               # %if.then26
	movw	$0, -22(%rbp)
	jmp	.LBB150_18
.LBB150_14:                             # %if.else
	movswl	-24(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB150_16
# %bb.15:                               # %cond.true30
	jmp	.LBB150_17
.LBB150_16:                             # %cond.false31
	movabsq	$.L.str.27.77, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Autocorrelation, %rcx
	movl	$57, %edx
	callq	__assert_fail
.LBB150_17:                             # %cond.end32
	leaq	-22(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	Autocorrelation1
.LBB150_18:                             # %if.end37
	movswl	-22(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB150_42
# %bb.19:                               # %if.then41
	movswl	-22(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	ja	.LBB150_41
# %bb.20:                               # %if.then41
	movq	.LJTI150_0(,%rax,8), %rax
	jmpq	*%rax
.LBB150_21:                             # %sw.bb
	movl	$0, -20(%rbp)
.LBB150_22:                             # %for.cond43
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$159, -20(%rbp)
	jg	.LBB150_25
# %bb.23:                               # %for.body46
                                        #   in Loop: Header=BB150_22 Depth=1
	leaq	-20(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	Autocorrelation2
# %bb.24:                               # %for.inc53
                                        #   in Loop: Header=BB150_22 Depth=1
	leaq	-20(%rbp), %rdi
	callq	Autocorrelation3
	jmp	.LBB150_22
.LBB150_25:                             # %for.end55
	jmp	.LBB150_41
.LBB150_26:                             # %sw.bb56
	movl	$0, -20(%rbp)
.LBB150_27:                             # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$159, -20(%rbp)
	jg	.LBB150_30
# %bb.28:                               # %for.body60
                                        #   in Loop: Header=BB150_27 Depth=1
	leaq	-20(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	Autocorrelation4
# %bb.29:                               # %for.inc70
                                        #   in Loop: Header=BB150_27 Depth=1
	leaq	-20(%rbp), %rdi
	callq	Autocorrelation5
	jmp	.LBB150_27
.LBB150_30:                             # %for.end72
	jmp	.LBB150_41
.LBB150_31:                             # %sw.bb73
	movl	$0, -20(%rbp)
.LBB150_32:                             # %for.cond74
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$159, -20(%rbp)
	jg	.LBB150_35
# %bb.33:                               # %for.body77
                                        #   in Loop: Header=BB150_32 Depth=1
	leaq	-20(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	Autocorrelation6
# %bb.34:                               # %for.inc87
                                        #   in Loop: Header=BB150_32 Depth=1
	leaq	-20(%rbp), %rdi
	callq	Autocorrelation7
	jmp	.LBB150_32
.LBB150_35:                             # %for.end89
	jmp	.LBB150_41
.LBB150_36:                             # %sw.bb90
	movl	$0, -20(%rbp)
.LBB150_37:                             # %for.cond91
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$159, -20(%rbp)
	jg	.LBB150_40
# %bb.38:                               # %for.body94
                                        #   in Loop: Header=BB150_37 Depth=1
	leaq	-20(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	Autocorrelation8
# %bb.39:                               # %for.inc104
                                        #   in Loop: Header=BB150_37 Depth=1
	leaq	-20(%rbp), %rdi
	callq	Autocorrelation9
	jmp	.LBB150_37
.LBB150_40:                             # %for.end106
	jmp	.LBB150_41
.LBB150_41:                             # %sw.epilog
	jmp	.LBB150_42
.LBB150_42:                             # %if.end107
	leaq	-26(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	Autocorrelation10
	movl	$9, -20(%rbp)
.LBB150_43:                             # %for.cond108
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB150_46
# %bb.44:                               # %for.body109
                                        #   in Loop: Header=BB150_43 Depth=1
	jmp	.LBB150_45
.LBB150_45:                             # %for.inc110
                                        #   in Loop: Header=BB150_43 Depth=1
	leaq	-20(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	Autocorrelation11
	jmp	.LBB150_43
.LBB150_46:                             # %for.end113
	leaq	-56(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-26(%rbp), %rdx
	callq	Autocorrelation12
	movl	$8, -44(%rbp)
.LBB150_47:                             # %for.cond336
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$159, -44(%rbp)
	jg	.LBB150_50
# %bb.48:                               # %for.body339
                                        #   in Loop: Header=BB150_47 Depth=1
	leaq	-26(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	Autocorrelation13
# %bb.49:                               # %for.inc395
                                        #   in Loop: Header=BB150_47 Depth=1
	leaq	-44(%rbp), %rdi
	callq	Autocorrelation14
	jmp	.LBB150_47
.LBB150_50:                             # %for.end397
	movl	$9, -20(%rbp)
.LBB150_51:                             # %for.cond398
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB150_54
# %bb.52:                               # %for.body401
                                        #   in Loop: Header=BB150_51 Depth=1
	jmp	.LBB150_53
.LBB150_53:                             # %for.inc402
                                        #   in Loop: Header=BB150_51 Depth=1
	leaq	-20(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	Autocorrelation15
	jmp	.LBB150_51
.LBB150_54:                             # %for.end406
	movswl	-22(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB150_63
# %bb.55:                               # %if.then410
	movswl	-22(%rbp), %eax
	cmpl	$4, %eax
	jg	.LBB150_57
# %bb.56:                               # %cond.true414
	jmp	.LBB150_58
.LBB150_57:                             # %cond.false415
	movabsq	$.L.str.2.28, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Autocorrelation, %rcx
	movl	$142, %edx
	callq	__assert_fail
.LBB150_58:                             # %cond.end416
	movl	$160, -20(%rbp)
.LBB150_59:                             # %for.cond417
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB150_62
# %bb.60:                               # %for.body420
                                        #   in Loop: Header=BB150_59 Depth=1
	jmp	.LBB150_61
.LBB150_61:                             # %for.inc421
                                        #   in Loop: Header=BB150_59 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-22(%rbp), %rsi
	callq	Autocorrelation16
	jmp	.LBB150_59
.LBB150_62:                             # %for.end427
	jmp	.LBB150_63
.LBB150_63:                             # %if.end428
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end150:
	.size	Autocorrelation, .Lfunc_end150-Autocorrelation
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI150_0:
	.quad	.LBB150_21
	.quad	.LBB150_26
	.quad	.LBB150_31
	.quad	.LBB150_36
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function Reflection_coefficients
	.type	Reflection_coefficients,@function
Reflection_coefficients:                # @Reflection_coefficients
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB151_6
# %bb.1:                                # %if.then
	movl	$8, -8(%rbp)
.LBB151_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, %eax
	je	.LBB151_5
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB151_2 Depth=1
	jmp	.LBB151_4
.LBB151_4:                              # %for.inc
                                        #   in Loop: Header=BB151_2 Depth=1
	leaq	-24(%rbp), %rdi
	callq	Reflection_coefficients0
	jmp	.LBB151_2
.LBB151_5:                              # %for.end
	jmp	.LBB151_65
.LBB151_6:                              # %if.end
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB151_8
# %bb.7:                                # %cond.true
	jmp	.LBB151_9
.LBB151_8:                              # %cond.false
	movabsq	$.L.str.3.24, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Reflection_coefficients, %rcx
	movl	$197, %edx
	callq	__assert_fail
.LBB151_9:                              # %cond.end
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gsm_norm
	movw	%ax, -2(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB151_12
# %bb.10:                               # %land.lhs.true
	movswl	-2(%rbp), %eax
	cmpl	$32, %eax
	jge	.LBB151_12
# %bb.11:                               # %cond.true9
	jmp	.LBB151_13
.LBB151_12:                             # %cond.false10
	movabsq	$.L.str.4.25, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Reflection_coefficients, %rcx
	movl	$200, %edx
	callq	__assert_fail
.LBB151_13:                             # %cond.end11
	movl	$0, -8(%rbp)
.LBB151_14:                             # %for.cond12
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -8(%rbp)
	jg	.LBB151_17
# %bb.15:                               # %for.body15
                                        #   in Loop: Header=BB151_14 Depth=1
	movq	-40(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movswl	-2(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: def %cl killed %rcx
	shlq	%cl, %rax
	sarq	$16, %rax
	movslq	-8(%rbp), %rcx
	movw	%ax, -128(%rbp,%rcx,2)
# %bb.16:                               # %for.inc21
                                        #   in Loop: Header=BB151_14 Depth=1
	leaq	-8(%rbp), %rdi
	callq	Reflection_coefficients1
	jmp	.LBB151_14
.LBB151_17:                             # %for.end22
	movl	$1, -8(%rbp)
.LBB151_18:                             # %for.cond23
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -8(%rbp)
	jg	.LBB151_21
# %bb.19:                               # %for.body26
                                        #   in Loop: Header=BB151_18 Depth=1
	movslq	-8(%rbp), %rax
	movw	-128(%rbp,%rax,2), %ax
	movslq	-8(%rbp), %rcx
	movw	%ax, -96(%rbp,%rcx,2)
# %bb.20:                               # %for.inc31
                                        #   in Loop: Header=BB151_18 Depth=1
	leaq	-8(%rbp), %rdi
	callq	Reflection_coefficients2
	jmp	.LBB151_18
.LBB151_21:                             # %for.end33
	movl	$0, -8(%rbp)
.LBB151_22:                             # %for.cond34
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -8(%rbp)
	jg	.LBB151_25
# %bb.23:                               # %for.body37
                                        #   in Loop: Header=BB151_22 Depth=1
	movslq	-8(%rbp), %rax
	movw	-128(%rbp,%rax,2), %ax
	movslq	-8(%rbp), %rcx
	movw	%ax, -64(%rbp,%rcx,2)
# %bb.24:                               # %for.inc42
                                        #   in Loop: Header=BB151_22 Depth=1
	leaq	-8(%rbp), %rdi
	callq	Reflection_coefficients3
	jmp	.LBB151_22
.LBB151_25:                             # %for.end44
	movl	$1, -16(%rbp)
.LBB151_26:                             # %for.cond45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_53 Depth 2
	cmpl	$8, -16(%rbp)
	jg	.LBB151_64
# %bb.27:                               # %for.body48
                                        #   in Loop: Header=BB151_26 Depth=1
	movw	-62(%rbp), %ax
	movw	%ax, -2(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB151_32
# %bb.28:                               # %cond.true53
                                        #   in Loop: Header=BB151_26 Depth=1
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB151_30
# %bb.29:                               # %cond.true57
                                        #   in Loop: Header=BB151_26 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB151_31
.LBB151_30:                             # %cond.false58
                                        #   in Loop: Header=BB151_26 Depth=1
	xorl	%eax, %eax
	movswl	-2(%rbp), %ecx
	subl	%ecx, %eax
.LBB151_31:                             # %cond.end60
                                        #   in Loop: Header=BB151_26 Depth=1
	jmp	.LBB151_33
.LBB151_32:                             # %cond.false61
                                        #   in Loop: Header=BB151_26 Depth=1
	movswl	-2(%rbp), %eax
.LBB151_33:                             # %cond.end63
                                        #   in Loop: Header=BB151_26 Depth=1
	movw	%ax, -2(%rbp)
	movswl	-64(%rbp), %eax
	movswl	-2(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB151_39
# %bb.34:                               # %if.then71
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	Reflection_coefficients4
.LBB151_35:                             # %for.cond72
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -8(%rbp)
	jg	.LBB151_38
# %bb.36:                               # %for.body75
                                        #   in Loop: Header=BB151_35 Depth=1
	leaq	-24(%rbp), %rdi
	callq	Reflection_coefficients5
# %bb.37:                               # %for.inc77
                                        #   in Loop: Header=BB151_35 Depth=1
	leaq	-8(%rbp), %rdi
	callq	Reflection_coefficients6
	jmp	.LBB151_35
.LBB151_38:                             # %for.end79
	jmp	.LBB151_65
.LBB151_39:                             # %if.end80
                                        #   in Loop: Header=BB151_26 Depth=1
	movw	-2(%rbp), %ax
	movswl	%ax, %edi
	movswl	-64(%rbp), %esi
	callq	gsm_div
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	jl	.LBB151_41
# %bb.40:                               # %cond.true86
                                        #   in Loop: Header=BB151_26 Depth=1
	jmp	.LBB151_42
.LBB151_41:                             # %cond.false87
	movabsq	$.L.str.5.26, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Reflection_coefficients, %rcx
	movl	$224, %edx
	callq	__assert_fail
.LBB151_42:                             # %cond.end88
                                        #   in Loop: Header=BB151_26 Depth=1
	movswl	-62(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB151_44
# %bb.43:                               # %if.then93
                                        #   in Loop: Header=BB151_26 Depth=1
	leaq	-24(%rbp), %rdi
	callq	Reflection_coefficients7
.LBB151_44:                             # %if.end97
                                        #   in Loop: Header=BB151_26 Depth=1
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	je	.LBB151_46
# %bb.45:                               # %cond.true101
                                        #   in Loop: Header=BB151_26 Depth=1
	jmp	.LBB151_47
.LBB151_46:                             # %cond.false102
	movabsq	$.L.str.6.23, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Reflection_coefficients, %rcx
	movl	$226, %edx
	callq	__assert_fail
.LBB151_47:                             # %cond.end103
                                        #   in Loop: Header=BB151_26 Depth=1
	cmpl	$8, -16(%rbp)
	jne	.LBB151_49
# %bb.48:                               # %if.then106
	jmp	.LBB151_65
.LBB151_49:                             # %if.end107
                                        #   in Loop: Header=BB151_26 Depth=1
	movswq	-62(%rbp), %rax
	movq	-24(%rbp), %rcx
	movswq	(%rcx), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movswq	-64(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB151_51
# %bb.50:                               # %cond.true120
                                        #   in Loop: Header=BB151_26 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-32(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB151_52
.LBB151_51:                             # %cond.false125
                                        #   in Loop: Header=BB151_26 Depth=1
	movq	-32(%rbp), %rax
.LBB151_52:                             # %cond.end126
                                        #   in Loop: Header=BB151_26 Depth=1
	movw	%ax, -64(%rbp)
	movl	$1, -12(%rbp)
.LBB151_53:                             # %for.cond130
                                        #   Parent Loop BB151_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, %eax
	movl	-12(%rbp), %ecx
	subl	-16(%rbp), %eax
	cmpl	%eax, %ecx
	jg	.LBB151_62
# %bb.54:                               # %for.body134
                                        #   in Loop: Header=BB151_53 Depth=2
	movslq	-12(%rbp), %rax
	movswq	-96(%rbp,%rax,2), %rax
	movq	-24(%rbp), %rcx
	movswq	(%rcx), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movswq	-64(%rbp,%rax,2), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB151_56
# %bb.55:                               # %cond.true152
                                        #   in Loop: Header=BB151_53 Depth=2
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-32(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB151_57
.LBB151_56:                             # %cond.false157
                                        #   in Loop: Header=BB151_53 Depth=2
	movq	-32(%rbp), %rax
.LBB151_57:                             # %cond.end158
                                        #   in Loop: Header=BB151_53 Depth=2
	movslq	-12(%rbp), %rcx
	movw	%ax, -64(%rbp,%rcx,2)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movswq	-64(%rbp,%rax,2), %rax
	movq	-24(%rbp), %rcx
	movswq	(%rcx), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -2(%rbp)
	movslq	-12(%rbp), %rax
	movswq	-96(%rbp,%rax,2), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB151_59
# %bb.58:                               # %cond.true180
                                        #   in Loop: Header=BB151_53 Depth=2
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-32(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB151_60
.LBB151_59:                             # %cond.false185
                                        #   in Loop: Header=BB151_53 Depth=2
	movq	-32(%rbp), %rax
.LBB151_60:                             # %cond.end186
                                        #   in Loop: Header=BB151_53 Depth=2
	movslq	-12(%rbp), %rcx
	movw	%ax, -96(%rbp,%rcx,2)
# %bb.61:                               # %for.inc191
                                        #   in Loop: Header=BB151_53 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB151_53
.LBB151_62:                             # %for.end193
                                        #   in Loop: Header=BB151_26 Depth=1
	jmp	.LBB151_63
.LBB151_63:                             # %for.inc194
                                        #   in Loop: Header=BB151_26 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	Reflection_coefficients8
	jmp	.LBB151_26
.LBB151_64:                             # %for.end197.loopexit
	jmp	.LBB151_65
.LBB151_65:                             # %for.end197
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	Reflection_coefficients, .Lfunc_end151-Reflection_coefficients
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Transformation_to_Log_Area_Ratios
	.type	Transformation_to_Log_Area_Ratios,@function
Transformation_to_Log_Area_Ratios:      # @Transformation_to_Log_Area_Ratios
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
	movl	$222222238, -40(%rbp)   # imm = 0xD3ED79E
	movl	$555555571, -36(%rbp)   # imm = 0x211D1AF3
	movl	$444444460, -32(%rbp)   # imm = 0x1A7DAF2C
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	guardMe
	movq	%rbx, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB152_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -28(%rbp)
	jg	.LBB152_31
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB152_1 Depth=1
	movq	-24(%rbp), %rax
	movw	(%rax), %ax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB152_7
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB152_5
# %bb.4:                                # %cond.true6
                                        #   in Loop: Header=BB152_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB152_6
.LBB152_5:                              # %cond.false
                                        #   in Loop: Header=BB152_1 Depth=1
	xorl	%eax, %eax
	movswl	-10(%rbp), %ecx
	subl	%ecx, %eax
.LBB152_6:                              # %cond.end
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_8
.LBB152_7:                              # %cond.false8
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
.LBB152_8:                              # %cond.end10
                                        #   in Loop: Header=BB152_1 Depth=1
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB152_10
# %bb.9:                                # %cond.true16
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_11
.LBB152_10:                             # %cond.false17
	movabsq	$.L.str.7.19, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios, %rcx
	movl	$267, %edx              # imm = 0x10B
	callq	__assert_fail
.LBB152_11:                             # %cond.end18
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$22118, %eax            # imm = 0x5666
	jge	.LBB152_13
# %bb.12:                               # %if.then
                                        #   in Loop: Header=BB152_1 Depth=1
	leaq	-10(%rbp), %rdi
	callq	Transformation_to_Log_Area_Ratios0
	jmp	.LBB152_23
.LBB152_13:                             # %if.else
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$31130, %eax            # imm = 0x799A
	jge	.LBB152_18
# %bb.14:                               # %if.then27
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$11059, %eax            # imm = 0x2B33
	jl	.LBB152_16
# %bb.15:                               # %cond.true31
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_17
.LBB152_16:                             # %cond.false32
	movabsq	$.L.str.8.21, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios, %rcx
	movl	$272, %edx              # imm = 0x110
	callq	__assert_fail
.LBB152_17:                             # %cond.end33
                                        #   in Loop: Header=BB152_1 Depth=1
	leaq	-10(%rbp), %rdi
	callq	Transformation_to_Log_Area_Ratios1
	jmp	.LBB152_22
.LBB152_18:                             # %if.else37
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
	cmpl	$26112, %eax            # imm = 0x6600
	jl	.LBB152_20
# %bb.19:                               # %cond.true41
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_21
.LBB152_20:                             # %cond.false42
	movabsq	$.L.str.9.22, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios, %rcx
	movl	$275, %edx              # imm = 0x113
	callq	__assert_fail
.LBB152_21:                             # %cond.end43
                                        #   in Loop: Header=BB152_1 Depth=1
	leaq	-10(%rbp), %rdi
	callq	Transformation_to_Log_Area_Ratios2
.LBB152_22:                             # %if.end
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_23
.LBB152_23:                             # %if.end49
                                        #   in Loop: Header=BB152_1 Depth=1
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	jge	.LBB152_25
# %bb.24:                               # %cond.true53
                                        #   in Loop: Header=BB152_1 Depth=1
	xorl	%eax, %eax
	movswl	-10(%rbp), %ecx
	subl	%ecx, %eax
	jmp	.LBB152_26
.LBB152_25:                             # %cond.false56
                                        #   in Loop: Header=BB152_1 Depth=1
	movswl	-10(%rbp), %eax
.LBB152_26:                             # %cond.end58
                                        #   in Loop: Header=BB152_1 Depth=1
	movq	-24(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-24(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	je	.LBB152_28
# %bb.27:                               # %cond.true64
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_29
.LBB152_28:                             # %cond.false65
	movabsq	$.L.str.6.23, %rdi
	movabsq	$.L.str.1.20, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios, %rcx
	movl	$281, %edx              # imm = 0x119
	callq	__assert_fail
.LBB152_29:                             # %cond.end66
                                        #   in Loop: Header=BB152_1 Depth=1
	jmp	.LBB152_30
.LBB152_30:                             # %for.inc
                                        #   in Loop: Header=BB152_1 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	Transformation_to_Log_Area_Ratios3
	jmp	.LBB152_1
.LBB152_31:                             # %for.end
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end152:
	.size	Transformation_to_Log_Area_Ratios, .Lfunc_end152-Transformation_to_Log_Area_Ratios
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Quantization_and_coding
	.type	Quantization_and_coding,@function
Quantization_and_coding:                # @Quantization_and_coding
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
	movl	$222222239, -44(%rbp)   # imm = 0xD3ED79F
	movl	$555555572, -40(%rbp)   # imm = 0x211D1AF4
	movl	$444444461, -36(%rbp)   # imm = 0x1A7DAF2D
	movl	-44(%rbp), %edi
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	guardMe
	movq	%rbx, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$20480, %rax, %rax      # imm = 0x5000
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_2
# %bb.1:                                # %cond.true
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_3
.LBB153_2:                              # %cond.false
	movq	-24(%rbp), %rax
.LBB153_3:                              # %cond.end
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_5
# %bb.4:                                # %cond.true14
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_6
.LBB153_5:                              # %cond.false19
	movq	-24(%rbp), %rax
.LBB153_6:                              # %cond.end20
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$31, %eax
	jle	.LBB153_8
# %bb.7:                                # %cond.true29
	movl	$63, %eax
	jmp	.LBB153_12
.LBB153_8:                              # %cond.false30
	movswl	-10(%rbp), %eax
	cmpl	$-32, %eax
	jge	.LBB153_10
# %bb.9:                                # %cond.true34
	xorl	%eax, %eax
	jmp	.LBB153_11
.LBB153_10:                             # %cond.false35
	movswl	-10(%rbp), %eax
	subl	$-32, %eax
.LBB153_11:                             # %cond.end38
.LBB153_12:                             # %cond.end40
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$20480, %rax, %rax      # imm = 0x5000
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_14
# %bb.13:                               # %cond.true52
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_15
.LBB153_14:                             # %cond.false57
	movq	-24(%rbp), %rax
.LBB153_15:                             # %cond.end58
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_17
# %bb.16:                               # %cond.true66
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_18
.LBB153_17:                             # %cond.false71
	movq	-24(%rbp), %rax
.LBB153_18:                             # %cond.end72
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$31, %eax
	jle	.LBB153_20
# %bb.19:                               # %cond.true81
	movl	$63, %eax
	jmp	.LBB153_24
.LBB153_20:                             # %cond.false82
	movswl	-10(%rbp), %eax
	cmpl	$-32, %eax
	jge	.LBB153_22
# %bb.21:                               # %cond.true86
	xorl	%eax, %eax
	jmp	.LBB153_23
.LBB153_22:                             # %cond.false87
	movswl	-10(%rbp), %eax
	subl	$-32, %eax
.LBB153_23:                             # %cond.end90
.LBB153_24:                             # %cond.end92
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$20480, %rax, %rax      # imm = 0x5000
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$2048, %rax             # imm = 0x800
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_26
# %bb.25:                               # %cond.true105
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_27
.LBB153_26:                             # %cond.false110
	movq	-24(%rbp), %rax
.LBB153_27:                             # %cond.end111
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_29
# %bb.28:                               # %cond.true119
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_30
.LBB153_29:                             # %cond.false124
	movq	-24(%rbp), %rax
.LBB153_30:                             # %cond.end125
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$15, %eax
	jle	.LBB153_32
# %bb.31:                               # %cond.true134
	movl	$31, %eax
	jmp	.LBB153_36
.LBB153_32:                             # %cond.false135
	movswl	-10(%rbp), %eax
	cmpl	$-16, %eax
	jge	.LBB153_34
# %bb.33:                               # %cond.true139
	xorl	%eax, %eax
	jmp	.LBB153_35
.LBB153_34:                             # %cond.false140
	movswl	-10(%rbp), %eax
	subl	$-16, %eax
.LBB153_35:                             # %cond.end143
.LBB153_36:                             # %cond.end145
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$20480, %rax, %rax      # imm = 0x5000
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$-2560, %rax            # imm = 0xF600
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_38
# %bb.37:                               # %cond.true158
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_39
.LBB153_38:                             # %cond.false163
	movq	-24(%rbp), %rax
.LBB153_39:                             # %cond.end164
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_41
# %bb.40:                               # %cond.true172
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_42
.LBB153_41:                             # %cond.false177
	movq	-24(%rbp), %rax
.LBB153_42:                             # %cond.end178
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$15, %eax
	jle	.LBB153_44
# %bb.43:                               # %cond.true187
	movl	$31, %eax
	jmp	.LBB153_48
.LBB153_44:                             # %cond.false188
	movswl	-10(%rbp), %eax
	cmpl	$-16, %eax
	jge	.LBB153_46
# %bb.45:                               # %cond.true192
	xorl	%eax, %eax
	jmp	.LBB153_47
.LBB153_46:                             # %cond.false193
	movswl	-10(%rbp), %eax
	subl	$-16, %eax
.LBB153_47:                             # %cond.end196
.LBB153_48:                             # %cond.end198
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$13964, %rax, %rax      # imm = 0x368C
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$94, %rax
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_50
# %bb.49:                               # %cond.true211
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_51
.LBB153_50:                             # %cond.false216
	movq	-24(%rbp), %rax
.LBB153_51:                             # %cond.end217
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_53
# %bb.52:                               # %cond.true225
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_54
.LBB153_53:                             # %cond.false230
	movq	-24(%rbp), %rax
.LBB153_54:                             # %cond.end231
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$7, %eax
	jle	.LBB153_56
# %bb.55:                               # %cond.true240
	movl	$15, %eax
	jmp	.LBB153_60
.LBB153_56:                             # %cond.false241
	movswl	-10(%rbp), %eax
	cmpl	$-8, %eax
	jge	.LBB153_58
# %bb.57:                               # %cond.true245
	xorl	%eax, %eax
	jmp	.LBB153_59
.LBB153_58:                             # %cond.false246
	movswl	-10(%rbp), %eax
	subl	$-8, %eax
.LBB153_59:                             # %cond.end249
.LBB153_60:                             # %cond.end251
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$15360, %rax, %rax      # imm = 0x3C00
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$-1792, %rax            # imm = 0xF900
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_62
# %bb.61:                               # %cond.true264
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_63
.LBB153_62:                             # %cond.false269
	movq	-24(%rbp), %rax
.LBB153_63:                             # %cond.end270
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_65
# %bb.64:                               # %cond.true278
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_66
.LBB153_65:                             # %cond.false283
	movq	-24(%rbp), %rax
.LBB153_66:                             # %cond.end284
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$7, %eax
	jle	.LBB153_68
# %bb.67:                               # %cond.true293
	movl	$15, %eax
	jmp	.LBB153_72
.LBB153_68:                             # %cond.false294
	movswl	-10(%rbp), %eax
	cmpl	$-8, %eax
	jge	.LBB153_70
# %bb.69:                               # %cond.true298
	xorl	%eax, %eax
	jmp	.LBB153_71
.LBB153_70:                             # %cond.false299
	movswl	-10(%rbp), %eax
	subl	$-8, %eax
.LBB153_71:                             # %cond.end302
.LBB153_72:                             # %cond.end304
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$8534, %rax, %rax       # imm = 0x2156
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$-341, %rax             # imm = 0xFEAB
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_74
# %bb.73:                               # %cond.true317
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_75
.LBB153_74:                             # %cond.false322
	movq	-24(%rbp), %rax
.LBB153_75:                             # %cond.end323
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_77
# %bb.76:                               # %cond.true331
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_78
.LBB153_77:                             # %cond.false336
	movq	-24(%rbp), %rax
.LBB153_78:                             # %cond.end337
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$3, %eax
	jle	.LBB153_80
# %bb.79:                               # %cond.true346
	movl	$7, %eax
	jmp	.LBB153_84
.LBB153_80:                             # %cond.false347
	movswl	-10(%rbp), %eax
	cmpl	$-4, %eax
	jge	.LBB153_82
# %bb.81:                               # %cond.true351
	xorl	%eax, %eax
	jmp	.LBB153_83
.LBB153_82:                             # %cond.false352
	movswl	-10(%rbp), %eax
	subl	$-4, %eax
.LBB153_83:                             # %cond.end355
.LBB153_84:                             # %cond.end357
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	imulq	$9036, %rax, %rax       # imm = 0x234C
	sarq	$15, %rax
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$-1144, %rax            # imm = 0xFB88
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_86
# %bb.85:                               # %cond.true370
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_87
.LBB153_86:                             # %cond.false375
	movq	-24(%rbp), %rax
.LBB153_87:                             # %cond.end376
	movw	%ax, -10(%rbp)
	movswq	-10(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB153_89
# %bb.88:                               # %cond.true384
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB153_90
.LBB153_89:                             # %cond.false389
	movq	-24(%rbp), %rax
.LBB153_90:                             # %cond.end390
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	sarl	$9, %eax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$3, %eax
	jle	.LBB153_92
# %bb.91:                               # %cond.true399
	movl	$7, %eax
	jmp	.LBB153_96
.LBB153_92:                             # %cond.false400
	movswl	-10(%rbp), %eax
	cmpl	$-4, %eax
	jge	.LBB153_94
# %bb.93:                               # %cond.true404
	xorl	%eax, %eax
	jmp	.LBB153_95
.LBB153_94:                             # %cond.false405
	movswl	-10(%rbp), %eax
	subl	$-4, %eax
.LBB153_95:                             # %cond.end408
.LBB153_96:                             # %cond.end410
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end153:
	.size	Quantization_and_coding, .Lfunc_end153-Quantization_and_coding
	.cfi_endproc
                                        # -- End function
	.globl	Transformation_to_Log_Area_Ratios0 # -- Begin function Transformation_to_Log_Area_Ratios0
	.p2align	4, 0x90
	.type	Transformation_to_Log_Area_Ratios0,@function
Transformation_to_Log_Area_Ratios0:     # @Transformation_to_Log_Area_Ratios0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -10(%rsp)
	movswl	-10(%rsp), %eax
	shrl	%eax
	movw	%ax, -10(%rsp)
	movw	%ax, (%rdi)
	retq
.Lfunc_end154:
	.size	Transformation_to_Log_Area_Ratios0, .Lfunc_end154-Transformation_to_Log_Area_Ratios0
	.cfi_endproc
                                        # -- End function
	.globl	Transformation_to_Log_Area_Ratios1 # -- Begin function Transformation_to_Log_Area_Ratios1
	.p2align	4, 0x90
	.type	Transformation_to_Log_Area_Ratios1,@function
Transformation_to_Log_Area_Ratios1:     # @Transformation_to_Log_Area_Ratios1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -10(%rsp)
	movzwl	-10(%rsp), %eax
	addl	$-11059, %eax           # imm = 0xD4CD
	movw	%ax, -10(%rsp)
	movw	%ax, (%rdi)
	retq
.Lfunc_end155:
	.size	Transformation_to_Log_Area_Ratios1, .Lfunc_end155-Transformation_to_Log_Area_Ratios1
	.cfi_endproc
                                        # -- End function
	.globl	Transformation_to_Log_Area_Ratios2 # -- Begin function Transformation_to_Log_Area_Ratios2
	.p2align	4, 0x90
	.type	Transformation_to_Log_Area_Ratios2,@function
Transformation_to_Log_Area_Ratios2:     # @Transformation_to_Log_Area_Ratios2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -10(%rsp)
	movzwl	-10(%rsp), %eax
	addl	$-26112, %eax           # imm = 0x9A00
	movw	%ax, -10(%rsp)
	movzwl	-10(%rsp), %eax
	shll	$2, %eax
	movw	%ax, -10(%rsp)
	movw	%ax, (%rdi)
	retq
.Lfunc_end156:
	.size	Transformation_to_Log_Area_Ratios2, .Lfunc_end156-Transformation_to_Log_Area_Ratios2
	.cfi_endproc
                                        # -- End function
	.globl	Transformation_to_Log_Area_Ratios3 # -- Begin function Transformation_to_Log_Area_Ratios3
	.p2align	4, 0x90
	.type	Transformation_to_Log_Area_Ratios3,@function
Transformation_to_Log_Area_Ratios3:     # @Transformation_to_Log_Area_Ratios3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	addq	$2, %rax
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end157:
	.size	Transformation_to_Log_Area_Ratios3, .Lfunc_end157-Transformation_to_Log_Area_Ratios3
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients0 # -- Begin function Reflection_coefficients0
	.p2align	4, 0x90
	.type	Reflection_coefficients0,@function
Reflection_coefficients0:               # @Reflection_coefficients0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end158:
	.size	Reflection_coefficients0, .Lfunc_end158-Reflection_coefficients0
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients1 # -- Begin function Reflection_coefficients1
	.p2align	4, 0x90
	.type	Reflection_coefficients1,@function
Reflection_coefficients1:               # @Reflection_coefficients1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end159:
	.size	Reflection_coefficients1, .Lfunc_end159-Reflection_coefficients1
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients2 # -- Begin function Reflection_coefficients2
	.p2align	4, 0x90
	.type	Reflection_coefficients2,@function
Reflection_coefficients2:               # @Reflection_coefficients2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end160:
	.size	Reflection_coefficients2, .Lfunc_end160-Reflection_coefficients2
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients3 # -- Begin function Reflection_coefficients3
	.p2align	4, 0x90
	.type	Reflection_coefficients3,@function
Reflection_coefficients3:               # @Reflection_coefficients3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end161:
	.size	Reflection_coefficients3, .Lfunc_end161-Reflection_coefficients3
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients4 # -- Begin function Reflection_coefficients4
	.p2align	4, 0x90
	.type	Reflection_coefficients4,@function
Reflection_coefficients4:               # @Reflection_coefficients4
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
.Lfunc_end162:
	.size	Reflection_coefficients4, .Lfunc_end162-Reflection_coefficients4
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients5 # -- Begin function Reflection_coefficients5
	.p2align	4, 0x90
	.type	Reflection_coefficients5,@function
Reflection_coefficients5:               # @Reflection_coefficients5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movw	$0, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end163:
	.size	Reflection_coefficients5, .Lfunc_end163-Reflection_coefficients5
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients6 # -- Begin function Reflection_coefficients6
	.p2align	4, 0x90
	.type	Reflection_coefficients6,@function
Reflection_coefficients6:               # @Reflection_coefficients6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end164:
	.size	Reflection_coefficients6, .Lfunc_end164-Reflection_coefficients6
	.cfi_endproc
                                        # -- End function
	.globl	gsm_div                 # -- Begin function gsm_div
	.p2align	4, 0x90
	.type	gsm_div,@function
gsm_div:                                # @gsm_div
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
	movl	%edi, %ebx
	movl	$222222226, -52(%rbp)   # imm = 0xD3ED792
	movl	$555555559, -48(%rbp)   # imm = 0x211D1AE7
	movl	$444444448, -44(%rbp)   # imm = 0x1A7DAF20
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	guardMe
	leaq	-64(%rbp), %rdi
	leaq	-22(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-20(%rbp), %rcx
	movw	%bx, -20(%rbp)
	movw	%r14w, -22(%rbp)
	callq	gsm_div0
	movw	$0, -18(%rbp)
	movl	$15, -28(%rbp)
	movswl	-20(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB165_3
# %bb.1:                                # %land.lhs.true
	movswl	-22(%rbp), %eax
	movswl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB165_3
# %bb.2:                                # %cond.true
	jmp	.LBB165_4
.LBB165_3:                              # %cond.false
	movabsq	$.L.str.3.69, %rdi
	movabsq	$.L.str.1.67, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.gsm_div, %rcx
	movl	$220, %edx
	callq	__assert_fail
.LBB165_4:                              # %cond.end
	movswl	-20(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB165_6
# %bb.5:                                # %if.then
	movw	$0, -24(%rbp)
	jmp	.LBB165_12
.LBB165_6:                              # %if.end
	jmp	.LBB165_7
.LBB165_7:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB165_11
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB165_7 Depth=1
	movswl	-18(%rbp), %eax
	shll	$1, %eax
	movw	%ax, -18(%rbp)
	movq	-40(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB165_10
# %bb.9:                                # %if.then16
                                        #   in Loop: Header=BB165_7 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-18(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	gsm_div1
.LBB165_10:                             # %if.end17
                                        #   in Loop: Header=BB165_7 Depth=1
	jmp	.LBB165_7
.LBB165_11:                             # %while.end
	leaq	-24(%rbp), %rdi
	leaq	-18(%rbp), %rsi
	callq	gsm_div2
.LBB165_12:                             # %return
	movswl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end165:
	.size	gsm_div, .Lfunc_end165-gsm_div
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients7 # -- Begin function Reflection_coefficients7
	.p2align	4, 0x90
	.type	Reflection_coefficients7,@function
Reflection_coefficients7:               # @Reflection_coefficients7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movzwl	(%rax), %ecx
	negl	%ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end166:
	.size	Reflection_coefficients7, .Lfunc_end166-Reflection_coefficients7
	.cfi_endproc
                                        # -- End function
	.globl	Reflection_coefficients8 # -- Begin function Reflection_coefficients8
	.p2align	4, 0x90
	.type	Reflection_coefficients8,@function
Reflection_coefficients8:               # @Reflection_coefficients8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	addq	$2, %rax
	movq	%rax, -32(%rsp)
	movl	%ecx, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end167:
	.size	Reflection_coefficients8, .Lfunc_end167-Reflection_coefficients8
	.cfi_endproc
                                        # -- End function
	.globl	gsm_div0                # -- Begin function gsm_div0
	.p2align	4, 0x90
	.type	gsm_div0,@function
gsm_div0:                               # @gsm_div0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -16(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -52(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -48(%rsp)
	movq	%rcx, -32(%rsp)
	movzwl	(%rcx), %eax
	movw	%ax, -50(%rsp)
	movswq	-50(%rsp), %rax
	movq	%rax, -48(%rsp)
	movswq	-52(%rsp), %rcx
	movq	%rcx, -40(%rsp)
	movq	-32(%rsp), %rcx
	movw	%ax, (%rcx)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-52(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end168:
	.size	gsm_div0, .Lfunc_end168-gsm_div0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_div1                # -- Begin function gsm_div1
	.p2align	4, 0x90
	.type	gsm_div1,@function
gsm_div1:                               # @gsm_div1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -42(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rsi
	movq	%rsi, -16(%rsp)
	subq	%rsi, %rax
	movq	%rax, -40(%rsp)
	incl	%ecx
	movw	%cx, -42(%rsp)
	movq	%rsi, (%rdx)
	movq	-32(%rsp), %rax
	movzwl	-42(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end169:
	.size	gsm_div1, .Lfunc_end169-gsm_div1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_div2                # -- Begin function gsm_div2
	.p2align	4, 0x90
	.type	gsm_div2,@function
gsm_div2:                               # @gsm_div2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movw	%ax, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end170:
	.size	gsm_div2, .Lfunc_end170-gsm_div2
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation0        # -- Begin function Autocorrelation0
	.p2align	4, 0x90
	.type	Autocorrelation0,@function
Autocorrelation0:                       # @Autocorrelation0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -20(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -18(%rsp)
	movw	%ax, -20(%rsp)
	movw	%ax, (%rsi)
	movq	-16(%rsp), %rax
	movzwl	-20(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end171:
	.size	Autocorrelation0, .Lfunc_end171-Autocorrelation0
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation1        # -- Begin function Autocorrelation1
	.p2align	4, 0x90
	.type	Autocorrelation1,@function
Autocorrelation1:                       # @Autocorrelation1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, 6(%rsp)
	movq	%rsi, 8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, 4(%rsp)
	movswq	4(%rsp), %rdi
	shlq	$16, %rdi
	callq	gsm_norm
                                        # kill: def %ax killed %ax def %eax
	movl	$4, %ecx
	subl	%eax, %ecx
	movw	%cx, 6(%rsp)
	movq	8(%rsp), %rax
	movzwl	4(%rsp), %ecx
	movw	%cx, (%rax)
	movq	16(%rsp), %rax
	movzwl	6(%rsp), %ecx
	movw	%cx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end172:
	.size	Autocorrelation1, .Lfunc_end172-Autocorrelation1
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation2        # -- Begin function Autocorrelation2
	.p2align	4, 0x90
	.type	Autocorrelation2,@function
Autocorrelation2:                       # @Autocorrelation2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	movswl	(%rax,%rcx,2), %edx
	shll	$14, %edx
	addl	$16384, %edx            # imm = 0x4000
	shrl	$15, %edx
	movw	%dx, (%rax,%rcx,2)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end173:
	.size	Autocorrelation2, .Lfunc_end173-Autocorrelation2
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation3        # -- Begin function Autocorrelation3
	.p2align	4, 0x90
	.type	Autocorrelation3,@function
Autocorrelation3:                       # @Autocorrelation3
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end174:
	.size	Autocorrelation3, .Lfunc_end174-Autocorrelation3
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation4        # -- Begin function Autocorrelation4
	.p2align	4, 0x90
	.type	Autocorrelation4,@function
Autocorrelation4:                       # @Autocorrelation4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	movswl	(%rax,%rcx,2), %edx
	shll	$13, %edx
	addl	$16384, %edx            # imm = 0x4000
	shrl	$15, %edx
	movw	%dx, (%rax,%rcx,2)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end175:
	.size	Autocorrelation4, .Lfunc_end175-Autocorrelation4
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation5        # -- Begin function Autocorrelation5
	.p2align	4, 0x90
	.type	Autocorrelation5,@function
Autocorrelation5:                       # @Autocorrelation5
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end176:
	.size	Autocorrelation5, .Lfunc_end176-Autocorrelation5
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation6        # -- Begin function Autocorrelation6
	.p2align	4, 0x90
	.type	Autocorrelation6,@function
Autocorrelation6:                       # @Autocorrelation6
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	movswl	(%rax,%rcx,2), %edx
	shll	$12, %edx
	addl	$16384, %edx            # imm = 0x4000
	shrl	$15, %edx
	movw	%dx, (%rax,%rcx,2)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end177:
	.size	Autocorrelation6, .Lfunc_end177-Autocorrelation6
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation7        # -- Begin function Autocorrelation7
	.p2align	4, 0x90
	.type	Autocorrelation7,@function
Autocorrelation7:                       # @Autocorrelation7
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end178:
	.size	Autocorrelation7, .Lfunc_end178-Autocorrelation7
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation8        # -- Begin function Autocorrelation8
	.p2align	4, 0x90
	.type	Autocorrelation8,@function
Autocorrelation8:                       # @Autocorrelation8
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	movswl	(%rax,%rcx,2), %edx
	shll	$11, %edx
	addl	$16384, %edx            # imm = 0x4000
	shrl	$15, %edx
	movw	%dx, (%rax,%rcx,2)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end179:
	.size	Autocorrelation8, .Lfunc_end179-Autocorrelation8
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation9        # -- Begin function Autocorrelation9
	.p2align	4, 0x90
	.type	Autocorrelation9,@function
Autocorrelation9:                       # @Autocorrelation9
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end180:
	.size	Autocorrelation9, .Lfunc_end180-Autocorrelation9
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation10       # -- Begin function Autocorrelation10
	.p2align	4, 0x90
	.type	Autocorrelation10,@function
Autocorrelation10:                      # @Autocorrelation10
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -42(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -40(%rsp)
	movq	%rax, -24(%rsp)
	movzwl	(%rax), %ecx
	movw	%cx, -42(%rsp)
	movq	%rax, (%rsi)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-42(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end181:
	.size	Autocorrelation10, .Lfunc_end181-Autocorrelation10
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation11       # -- Begin function Autocorrelation11
	.p2align	4, 0x90
	.type	Autocorrelation11,@function
Autocorrelation11:                      # @Autocorrelation11
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end182:
	.size	Autocorrelation11, .Lfunc_end182-Autocorrelation11
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation12       # -- Begin function Autocorrelation12
	.p2align	4, 0x90
	.type	Autocorrelation12,@function
Autocorrelation12:                      # @Autocorrelation12
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -40(%rsp)
	movq	%rdx, -24(%rsp)
	movzwl	(%rdx), %edx
	movw	%dx, -42(%rsp)
	movswq	-42(%rsp), %rdx
	movswq	(%rcx), %rcx
	imulq	%rdx, %rcx
	addq	%rcx, (%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-6(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 24(%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-6(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 24(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-8(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 32(%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-6(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 24(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-8(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 32(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-10(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 40(%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-6(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 24(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-8(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 32(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-10(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 40(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-12(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 48(%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movzwl	2(%rax), %ecx
	movw	%cx, -42(%rsp)
	movswq	-42(%rsp), %rcx
	movswq	2(%rax), %rax
	imulq	%rcx, %rax
	movq	-32(%rsp), %rcx
	addq	%rax, (%rcx)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-6(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 24(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-8(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 32(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-10(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 40(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-12(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 48(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-14(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 56(%rax)
	movq	-24(%rsp), %rax
	movzwl	-42(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end183:
	.size	Autocorrelation12, .Lfunc_end183-Autocorrelation12
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation13       # -- Begin function Autocorrelation13
	.p2align	4, 0x90
	.type	Autocorrelation13,@function
Autocorrelation13:                      # @Autocorrelation13
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -42(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -32(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rcx
	leaq	2(%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movzwl	2(%rcx), %edx
	movw	%dx, -42(%rsp)
	movswq	-42(%rsp), %rdx
	movswq	2(%rcx), %rcx
	imulq	%rdx, %rcx
	addq	%rcx, (%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-2(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 8(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-4(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 16(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-6(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 24(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-8(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 32(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-10(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 40(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-12(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 48(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-14(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 56(%rax)
	movswq	-42(%rsp), %rax
	movq	-40(%rsp), %rcx
	movswq	-16(%rcx), %rcx
	imulq	%rax, %rcx
	movq	-32(%rsp), %rax
	addq	%rcx, 64(%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movzwl	-42(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end184:
	.size	Autocorrelation13, .Lfunc_end184-Autocorrelation13
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation14       # -- Begin function Autocorrelation14
	.p2align	4, 0x90
	.type	Autocorrelation14,@function
Autocorrelation14:                      # @Autocorrelation14
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end185:
	.size	Autocorrelation14, .Lfunc_end185-Autocorrelation14
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation15       # -- Begin function Autocorrelation15
	.p2align	4, 0x90
	.type	Autocorrelation15,@function
Autocorrelation15:                      # @Autocorrelation15
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	shlq	(%rax,%rcx,8)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end186:
	.size	Autocorrelation15, .Lfunc_end186-Autocorrelation15
	.cfi_endproc
                                        # -- End function
	.globl	Autocorrelation16       # -- Begin function Autocorrelation16
	.p2align	4, 0x90
	.type	Autocorrelation16,@function
Autocorrelation16:                      # @Autocorrelation16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -26(%rsp)
	movb	-26(%rsp), %cl
	leaq	2(%rax), %rdx
	movq	%rdx, -24(%rsp)
	movswl	(%rax), %edx
	shll	%cl, %edx
	movw	%dx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-26(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end187:
	.size	Autocorrelation16, .Lfunc_end187-Autocorrelation16
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Preprocess0         # -- Begin function Gsm_Preprocess0
	.p2align	4, 0x90
	.type	Gsm_Preprocess0,@function
Gsm_Preprocess0:                        # @Gsm_Preprocess0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -50(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	%rdx, -32(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -52(%rsp)
	movq	%rcx, -40(%rsp)
	movq	(%rcx), %rax
	movq	%rax, -48(%rsp)
	movzwl	560(%rax), %ecx
	movw	%cx, -52(%rsp)
	movq	568(%rax), %rcx
	movq	%rcx, -24(%rsp)
	movzwl	576(%rax), %eax
	movw	%ax, -50(%rsp)
	movq	-16(%rsp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movzwl	-52(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movzwl	-50(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end188:
	.size	Gsm_Preprocess0, .Lfunc_end188-Gsm_Preprocess0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Preprocess1         # -- Begin function Gsm_Preprocess1
	.p2align	4, 0x90
	.type	Gsm_Preprocess1,@function
Gsm_Preprocess1:                        # @Gsm_Preprocess1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -52(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -48(%rsp)
	movq	%rcx, -32(%rsp)
	movzwl	(%rcx), %ecx
	movw	%cx, -50(%rsp)
	movw	%cx, 560(%rax)
	movq	-40(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rax, 568(%rcx)
	movswl	-52(%rsp), %eax
	movq	-48(%rsp), %rcx
	movl	%eax, 576(%rcx)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movzwl	-50(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movzwl	-52(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end189:
	.size	Gsm_Preprocess1, .Lfunc_end189-Gsm_Preprocess1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_option              # -- Begin function gsm_option
	.p2align	4, 0x90
	.type	gsm_option,@function
gsm_option:                             # @gsm_option
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$-1, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	je	.LBB190_2
	jmp	.LBB190_1
.LBB190_1:                              # %entry
	subl	$2, %eax
	je	.LBB190_5
	jmp	.LBB190_6
.LBB190_2:                              # %sw.bb
	movq	-24(%rbp), %rax
	movsbl	652(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB190_4
# %bb.3:                                # %if.then
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	gsm_option0
.LBB190_4:                              # %if.end
	jmp	.LBB190_7
.LBB190_5:                              # %sw.bb3
	jmp	.LBB190_7
.LBB190_6:                              # %sw.default
	jmp	.LBB190_7
.LBB190_7:                              # %sw.epilog
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end190:
	.size	gsm_option, .Lfunc_end190-gsm_option
	.cfi_endproc
                                        # -- End function
	.globl	gsm_option0             # -- Begin function gsm_option0
	.p2align	4, 0x90
	.type	gsm_option0,@function
gsm_option0:                            # @gsm_option0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)
	movb	(%rcx), %cl
	movb	%cl, 652(%rax)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end191:
	.size	gsm_option0, .Lfunc_end191-gsm_option0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_create0             # -- Begin function gsm_create0
	.p2align	4, 0x90
	.type	gsm_create0,@function
gsm_create0:                            # @gsm_create0
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
.Lfunc_end192:
	.size	gsm_create0, .Lfunc_end192-gsm_create0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_create1             # -- Begin function gsm_create1
	.p2align	4, 0x90
	.type	gsm_create1,@function
gsm_create1:                            # @gsm_create1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movw	$40, 630(%rax)
	movq	-24(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-16(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end193:
	.size	gsm_create1, .Lfunc_end193-gsm_create1
	.cfi_endproc
                                        # -- End function
	.globl	process_decode0         # -- Begin function process_decode0
	.p2align	4, 0x90
	.type	process_decode0,@function
process_decode0:                        # @process_decode0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	progname(%rip), %rdi
	callq	perror
	popq	%rax
	retq
.Lfunc_end194:
	.size	process_decode0, .Lfunc_end194-process_decode0
	.cfi_endproc
                                        # -- End function
	.globl	process_decode1         # -- Begin function process_decode1
	.p2align	4, 0x90
	.type	process_decode1,@function
process_decode1:                        # @process_decode1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$2, %esi
	movl	$f_fast, %edx
	callq	gsm_option
	movq	8(%rsp), %rdi
	movl	$1, %esi
	movl	$f_verbose, %edx
	callq	gsm_option
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end195:
	.size	process_decode1, .Lfunc_end195-process_decode1
	.cfi_endproc
                                        # -- End function
	.globl	process_decode2         # -- Begin function process_decode2
	.p2align	4, 0x90
	.type	process_decode2,@function
process_decode2:                        # @process_decode2
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
	callq	gsm_destroy
	callq	__errno_location
	movl	$0, (%rax)
	movl	$-1, 12(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end196:
	.size	process_decode2, .Lfunc_end196-process_decode2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_decode              # -- Begin function gsm_decode
	.p2align	4, 0x90
	.type	gsm_decode,@function
gsm_decode:                             # @gsm_decode
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
	movl	$222222242, -40(%rbp)   # imm = 0xD3ED7A2
	movl	$555555575, -36(%rbp)   # imm = 0x211D1AF7
	movl	$444444464, -32(%rbp)   # imm = 0x1A7DAF30
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	guardMe
	movq	%rbx, -64(%rbp)
	movq	%r15, -48(%rbp)
	movq	%r14, -56(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	sarl	$4, %eax
	andl	$15, %eax
	cmpl	$13, %eax
	je	.LBB197_2
# %bb.1:                                # %if.then
	movl	$-1, -28(%rbp)
	jmp	.LBB197_3
.LBB197_2:                              # %if.end
	leaq	-28(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	callq	gsm_decode0
.LBB197_3:                              # %return
	movl	-28(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end197:
	.size	gsm_decode, .Lfunc_end197-gsm_decode
	.cfi_endproc
                                        # -- End function
	.globl	process_decode3         # -- Begin function process_decode3
	.p2align	4, 0x90
	.type	process_decode3,@function
process_decode3:                        # @process_decode3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	outname(%rip), %rdi
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	outname(%rip), %rcx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rsp), %rdi
	callq	gsm_destroy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end198:
	.size	process_decode3, .Lfunc_end198-process_decode3
	.cfi_endproc
                                        # -- End function
	.globl	process_decode4         # -- Begin function process_decode4
	.p2align	4, 0x90
	.type	process_decode4,@function
process_decode4:                        # @process_decode4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	gsm_destroy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end199:
	.size	process_decode4, .Lfunc_end199-process_decode4
	.cfi_endproc
                                        # -- End function
	.globl	gsm_decode0             # -- Begin function gsm_decode0
	.p2align	4, 0x90
	.type	gsm_decode0,@function
gsm_decode0:                            # @gsm_decode0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, 224(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 60(%rsp)
	movq	%rsi, 216(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 192(%rsp)
	movq	%rdx, 208(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 184(%rsp)
	movq	%rcx, 200(%rsp)
	movq	(%rcx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$2, %ecx
	movw	%cx, 32(%rsp)
	movzbl	1(%rax), %ecx
	shrl	$6, %ecx
	orl	32(%rsp), %ecx
	movw	%cx, 32(%rsp)
	leaq	2(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	movw	%cx, 34(%rsp)
	movzbl	2(%rax), %ecx
	shrl	$3, %ecx
	movw	%cx, 36(%rsp)
	leaq	3(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	2(%rax), %ecx
	andl	$7, %ecx
	shll	$2, %ecx
	movw	%cx, 38(%rsp)
	movzbl	3(%rax), %ecx
	shrl	$6, %ecx
	movzwl	38(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 38(%rsp)
	movzbl	3(%rax), %ecx
	shrl	$2, %ecx
	andl	$15, %ecx
	movw	%cx, 40(%rsp)
	leaq	4(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	3(%rax), %ecx
	andl	$3, %ecx
	shll	$2, %ecx
	movw	%cx, 42(%rsp)
	movzbl	4(%rax), %ecx
	shrl	$6, %ecx
	movzwl	42(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 42(%rsp)
	movzbl	4(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 44(%rsp)
	leaq	5(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	4(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 46(%rsp)
	movzbl	5(%rax), %ecx
	shrl	%ecx
	movw	%cx, 176(%rsp)
	leaq	6(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	5(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 16(%rsp)
	movzbl	6(%rax), %ecx
	shrl	$7, %ecx
	movzwl	16(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 16(%rsp)
	movzbl	6(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 168(%rsp)
	leaq	7(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	6(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 24(%rsp)
	movzbl	7(%rax), %ecx
	shrl	$7, %ecx
	movzwl	24(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 24(%rsp)
	movzbl	7(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 64(%rsp)
	movzbl	7(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 66(%rsp)
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	7(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 68(%rsp)
	movzbl	8(%rax), %ecx
	shrl	$6, %ecx
	orl	68(%rsp), %ecx
	movw	%cx, 68(%rsp)
	movzbl	8(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 70(%rsp)
	leaq	9(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	8(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 72(%rsp)
	movzbl	9(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 74(%rsp)
	movzbl	9(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 76(%rsp)
	leaq	10(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	9(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 78(%rsp)
	movzbl	10(%rax), %ecx
	shrl	$7, %ecx
	movzwl	78(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 78(%rsp)
	movzbl	10(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 80(%rsp)
	movzbl	10(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 82(%rsp)
	leaq	11(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	10(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 84(%rsp)
	movzbl	11(%rax), %ecx
	shrl	$6, %ecx
	orl	84(%rsp), %ecx
	movw	%cx, 84(%rsp)
	movzbl	11(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 86(%rsp)
	leaq	12(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	11(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 88(%rsp)
	movzbl	12(%rax), %ecx
	shrl	%ecx
	movw	%cx, 178(%rsp)
	leaq	13(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	12(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 18(%rsp)
	movzbl	13(%rax), %ecx
	shrl	$7, %ecx
	movzwl	18(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 18(%rsp)
	movzbl	13(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 170(%rsp)
	leaq	14(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	13(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 26(%rsp)
	movzbl	14(%rax), %ecx
	shrl	$7, %ecx
	movzwl	26(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 26(%rsp)
	movzbl	14(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 90(%rsp)
	movzbl	14(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 92(%rsp)
	leaq	15(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	14(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 94(%rsp)
	movzbl	15(%rax), %ecx
	shrl	$6, %ecx
	movzwl	94(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 94(%rsp)
	movzbl	15(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 96(%rsp)
	leaq	16(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	15(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 98(%rsp)
	movzbl	16(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 100(%rsp)
	movzbl	16(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 102(%rsp)
	leaq	17(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	16(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 104(%rsp)
	movzbl	17(%rax), %ecx
	shrl	$7, %ecx
	orl	104(%rsp), %ecx
	movw	%cx, 104(%rsp)
	movzbl	17(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 106(%rsp)
	movzbl	17(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 108(%rsp)
	leaq	18(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	17(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 110(%rsp)
	movzbl	18(%rax), %ecx
	shrl	$6, %ecx
	movzwl	110(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 110(%rsp)
	movzbl	18(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 112(%rsp)
	leaq	19(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	18(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 114(%rsp)
	movzbl	19(%rax), %ecx
	shrl	%ecx
	movw	%cx, 180(%rsp)
	leaq	20(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	19(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 20(%rsp)
	movzbl	20(%rax), %ecx
	shrl	$7, %ecx
	movzwl	20(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 20(%rsp)
	movzbl	20(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 172(%rsp)
	leaq	21(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	20(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 28(%rsp)
	movzbl	21(%rax), %ecx
	shrl	$7, %ecx
	movzwl	28(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 28(%rsp)
	movzbl	21(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 116(%rsp)
	movzbl	21(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 118(%rsp)
	leaq	22(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	21(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 120(%rsp)
	movzbl	22(%rax), %ecx
	shrl	$6, %ecx
	orl	120(%rsp), %ecx
	movw	%cx, 120(%rsp)
	movzbl	22(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 122(%rsp)
	leaq	23(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	22(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 124(%rsp)
	movzbl	23(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 126(%rsp)
	movzbl	23(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 128(%rsp)
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	23(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 130(%rsp)
	movzbl	24(%rax), %ecx
	shrl	$7, %ecx
	movzwl	130(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 130(%rsp)
	movzbl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 132(%rsp)
	movzbl	24(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 134(%rsp)
	leaq	25(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	24(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 136(%rsp)
	movzbl	25(%rax), %ecx
	shrl	$6, %ecx
	orl	136(%rsp), %ecx
	movw	%cx, 136(%rsp)
	movzbl	25(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 138(%rsp)
	leaq	26(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	25(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 140(%rsp)
	movzbl	26(%rax), %ecx
	shrl	%ecx
	movw	%cx, 182(%rsp)
	leaq	27(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	26(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 22(%rsp)
	movzbl	27(%rax), %ecx
	shrl	$7, %ecx
	movzwl	22(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 22(%rsp)
	movzbl	27(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 174(%rsp)
	leaq	28(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	27(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 30(%rsp)
	movzbl	28(%rax), %ecx
	shrl	$7, %ecx
	movzwl	30(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 30(%rsp)
	movzbl	28(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 142(%rsp)
	movzbl	28(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 144(%rsp)
	leaq	29(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	28(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 146(%rsp)
	movzbl	29(%rax), %ecx
	shrl	$6, %ecx
	movzwl	146(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 146(%rsp)
	movzbl	29(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 148(%rsp)
	leaq	30(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	29(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 150(%rsp)
	movzbl	30(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 152(%rsp)
	movzbl	30(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 154(%rsp)
	leaq	31(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	30(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 156(%rsp)
	movzbl	31(%rax), %ecx
	shrl	$7, %ecx
	orl	156(%rsp), %ecx
	movw	%cx, 156(%rsp)
	movzbl	31(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 158(%rsp)
	movzbl	31(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 160(%rsp)
	leaq	32(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	31(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 162(%rsp)
	movzbl	32(%rax), %ecx
	shrl	$6, %ecx
	movzwl	162(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 162(%rsp)
	movzbl	32(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 164(%rsp)
	movzbl	32(%rax), %eax
	andl	$7, %eax
	movw	%ax, 166(%rsp)
	movq	184(%rsp), %rdi
	leaq	64(%rsp), %rax
	leaq	32(%rsp), %rsi
	leaq	176(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	168(%rsp), %r8
	leaq	24(%rsp), %r9
	pushq	192(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	Gsm_Decoder
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	$0, 60(%rsp)
	movq	200(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	208(%rsp), %rax
	movq	184(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	216(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	224(%rsp), %rax
	movl	60(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$232, %rsp
	retq
.Lfunc_end200:
	.size	gsm_decode0, .Lfunc_end200-gsm_decode0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Decoder             # -- Begin function Gsm_Decoder
	.p2align	4, 0x90
	.type	Gsm_Decoder,@function
Gsm_Decoder:                            # @Gsm_Decoder
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
	subq	$424, %rsp              # imm = 0x1A8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movl	$222222241, -68(%rbp)   # imm = 0xD3ED7A1
	movl	$555555574, -64(%rbp)   # imm = 0x211D1AF6
	movl	$444444463, -60(%rbp)   # imm = 0x1A7DAF2F
	movl	-68(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	callq	guardMe
	leaq	-80(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movq	%r14, -56(%rbp)
	movq	%rbx, -128(%rbp)
	movq	%r13, -112(%rbp)
	movq	%r12, -104(%rbp)
	movq	%r15, -96(%rbp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	callq	Gsm_Decoder0
	movl	$0, -48(%rbp)
.LBB201_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB201_3 Depth 2
	cmpl	$3, -48(%rbp)
	jg	.LBB201_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB201_1 Depth=1
	leaq	-80(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	16(%rbp), %rax
	movq	%rax, (%rsp)
	callq	Gsm_Decoder1
	movl	$0, -44(%rbp)
.LBB201_3:                              # %for.cond3
                                        #   Parent Loop BB201_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$39, -44(%rbp)
	jg	.LBB201_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB201_3 Depth=2
	movq	-80(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	imull	$40, -48(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	%ax, -448(%rbp,%rcx,2)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB201_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB201_3
.LBB201_6:                              # %for.end
                                        #   in Loop: Header=BB201_1 Depth=1
	jmp	.LBB201_7
.LBB201_7:                              # %for.inc8
                                        #   in Loop: Header=BB201_1 Depth=1
	leaq	-88(%rbp), %rdi
	leaq	16(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	callq	Gsm_Decoder2
	jmp	.LBB201_1
.LBB201_8:                              # %for.end14
	leaq	-448(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	24(%rbp), %rcx
	callq	Gsm_Short_Term_Synthesis_Filter
	movq	-56(%rbp), %rdi
	movq	24(%rbp), %rsi
	callq	Postprocessing
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end201:
	.size	Gsm_Decoder, .Lfunc_end201-Gsm_Decoder
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Decoder0            # -- Begin function Gsm_Decoder0
	.p2align	4, 0x90
	.type	Gsm_Decoder0,@function
Gsm_Decoder0:                           # @Gsm_Decoder0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	leaq	240(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end202:
	.size	Gsm_Decoder0, .Lfunc_end202-Gsm_Decoder0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Decoder1            # -- Begin function Gsm_Decoder1
	.p2align	4, 0x90
	.type	Gsm_Decoder1,@function
Gsm_Decoder1:                           # @Gsm_Decoder1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$192, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -16
	movq	%rdi, 104(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, 96(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 88(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 80(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	(%r8), %rdx
	movq	%rdx, 56(%rsp)
	movq	%r9, 48(%rsp)
	movq	(%r9), %rcx
	movq	%rcx, 16(%rsp)
	movq	208(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 40(%rsp)
	movq	8(%rsp), %rdi
	movswl	(%rax), %esi
	movswl	(%rdx), %edx
	leaq	112(%rsp), %rbx
	movq	%rbx, %r8
	callq	Gsm_RPE_Decoding
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %r8
	movswl	(%rcx), %edx
	movswl	(%rax), %esi
	movq	%rbx, %rcx
	callq	Gsm_Long_Term_Synthesis_Filtering
	movq	64(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	104(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	96(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	208(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	88(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	80(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$192, %rsp
	popq	%rbx
	retq
.Lfunc_end203:
	.size	Gsm_Decoder1, .Lfunc_end203-Gsm_Decoder1
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Decoder2            # -- Begin function Gsm_Decoder2
	.p2align	4, 0x90
	.type	Gsm_Decoder2,@function
Gsm_Decoder2:                           # @Gsm_Decoder2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -56(%rsp)
	movq	%rsi, -24(%rsp)
	movq	(%rsi), %rsi
	movq	%rsi, -64(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, -72(%rsp)
	movq	%rcx, -40(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, -80(%rsp)
	movq	%r8, -8(%rsp)
	movq	(%r8), %rcx
	movq	%rcx, -48(%rsp)
	addq	$2, %rax
	movq	%rax, -56(%rsp)
	addq	$2, -80(%rsp)
	addq	$2, %rdx
	movq	%rdx, -72(%rsp)
	addq	$2, %rcx
	movq	%rcx, -48(%rsp)
	addq	$26, -64(%rsp)
	movq	%rcx, (%r8)
	movq	-16(%rsp), %rax
	movq	-56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rax
	movq	-72(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rsp), %rax
	movq	-80(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end204:
	.size	Gsm_Decoder2, .Lfunc_end204-Gsm_Decoder2
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Short_Term_Synthesis_Filter # -- Begin function Gsm_Short_Term_Synthesis_Filter
	.p2align	4, 0x90
	.type	Gsm_Short_Term_Synthesis_Filter,@function
Gsm_Short_Term_Synthesis_Filter:        # @Gsm_Short_Term_Synthesis_Filter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %r8
	leaq	-32(%rbp), %r9
	leaq	-24(%rbp), %r10
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%r10, %rcx
	callq	Gsm_Short_Term_Synthesis_Filter0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end205:
	.size	Gsm_Short_Term_Synthesis_Filter, .Lfunc_end205-Gsm_Short_Term_Synthesis_Filter
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Postprocessing
	.type	Postprocessing,@function
Postprocessing:                         # @Postprocessing
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-2(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Postprocessing0
	movl	$160, -20(%rbp)
.LBB206_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB206_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB206_1 Depth=1
	movswq	-2(%rbp), %rax
	imulq	$28180, %rax, %rax      # imm = 0x6E14
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -4(%rbp)
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	movswq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB206_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB206_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB206_5
.LBB206_4:                              # %cond.false
                                        #   in Loop: Header=BB206_1 Depth=1
	movq	-16(%rbp), %rax
.LBB206_5:                              # %cond.end
                                        #   in Loop: Header=BB206_1 Depth=1
	movw	%ax, -2(%rbp)
	movswq	-2(%rbp), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB206_7
# %bb.6:                                # %cond.true18
                                        #   in Loop: Header=BB206_1 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-16(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB206_8
.LBB206_7:                              # %cond.false23
                                        #   in Loop: Header=BB206_1 Depth=1
	movq	-16(%rbp), %rax
.LBB206_8:                              # %cond.end24
                                        #   in Loop: Header=BB206_1 Depth=1
	andq	$65528, %rax            # imm = 0xFFF8
	movq	-32(%rbp), %rcx
	movw	%ax, (%rcx)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB206_1 Depth=1
	leaq	-32(%rbp), %rdi
	callq	Postprocessing1
	jmp	.LBB206_1
.LBB206_10:                             # %for.end
	leaq	-40(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	callq	Postprocessing2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end206:
	.size	Postprocessing, .Lfunc_end206-Postprocessing
	.cfi_endproc
                                        # -- End function
	.globl	Postprocessing0         # -- Begin function Postprocessing0
	.p2align	4, 0x90
	.type	Postprocessing0,@function
Postprocessing0:                        # @Postprocessing0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -26(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movzwl	650(%rax), %ecx
	movw	%cx, -26(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movzwl	-26(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end207:
	.size	Postprocessing0, .Lfunc_end207-Postprocessing0
	.cfi_endproc
                                        # -- End function
	.globl	Postprocessing1         # -- Begin function Postprocessing1
	.p2align	4, 0x90
	.type	Postprocessing1,@function
Postprocessing1:                        # @Postprocessing1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$2, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end208:
	.size	Postprocessing1, .Lfunc_end208-Postprocessing1
	.cfi_endproc
                                        # -- End function
	.globl	Postprocessing2         # -- Begin function Postprocessing2
	.p2align	4, 0x90
	.type	Postprocessing2,@function
Postprocessing2:                        # @Postprocessing2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %ecx
	movw	%cx, -26(%rsp)
	movw	%cx, 650(%rax)
	movq	-24(%rsp), %rax
	movzwl	-26(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end209:
	.size	Postprocessing2, .Lfunc_end209-Postprocessing2
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Short_Term_Synthesis_Filter0 # -- Begin function Gsm_Short_Term_Synthesis_Filter0
	.p2align	4, 0x90
	.type	Gsm_Short_Term_Synthesis_Filter0,@function
Gsm_Short_Term_Synthesis_Filter0:       # @Gsm_Short_Term_Synthesis_Filter0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	%rdi, 72(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 64(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	%rdx, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 48(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, 40(%rsp)
	movswq	628(%rax), %rcx
	shlq	$4, %rcx
	leaq	596(%rax,%rcx), %rcx
	movq	%rcx, (%rsp)
	movswl	628(%rax), %ecx
	xorl	$1, %ecx
	movw	%cx, 628(%rax)
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	leaq	596(%rax,%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	Decoding_of_the_coded_Log_Area_Ratios
	movq	32(%rsp), %rdi
	movq	(%rsp), %rsi
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdx
	callq	Coefficients_0_12
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r8
	movl	$13, %edx
	movq	%rbx, %rsi
	callq	Short_term_synthesis_filtering
	movq	32(%rsp), %rdi
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	callq	Coefficients_13_26
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	addq	$26, %rcx
	movq	24(%rsp), %r8
	addq	$26, %r8
	movl	$14, %edx
	movq	%rbx, %rsi
	callq	Short_term_synthesis_filtering
	movq	32(%rsp), %rdi
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	callq	Coefficients_27_39
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	addq	$54, %rcx
	movq	24(%rsp), %r8
	addq	$54, %r8
	movl	$13, %edx
	movq	%rbx, %rsi
	callq	Short_term_synthesis_filtering
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	Coefficients_40_159
	movq	%rbx, %rdi
	callq	LARp_to_rp
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rcx
	addq	$80, %rcx
	movq	24(%rsp), %r8
	addq	$80, %r8
	movl	$120, %edx
	movq	%rbx, %rsi
	callq	Short_term_synthesis_filtering
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$96, %rsp
	popq	%rbx
	retq
.Lfunc_end210:
	.size	Gsm_Short_Term_Synthesis_Filter0, .Lfunc_end210-Gsm_Short_Term_Synthesis_Filter0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function Short_term_synthesis_filtering
	.type	Short_term_synthesis_filtering,@function
Short_term_synthesis_filtering:         # @Short_term_synthesis_filtering
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-40(%rbp), %rax
	leaq	-72(%rbp), %r9
	movq	%rdi, -72(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%rax, %rdi
	movq	%r9, %rsi
	callq	Short_term_synthesis_filtering0
.LBB211_1:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB211_3 Depth 2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB211_23
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB211_1 Depth=1
	leaq	-12(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	callq	Short_term_synthesis_filtering1
.LBB211_3:                              # %for.cond
                                        #   Parent Loop BB211_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB211_22
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB211_3 Depth=2
	movq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-40(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -6(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB211_7
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB211_3 Depth=2
	movswl	-6(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB211_7
# %bb.6:                                # %cond.true
                                        #   in Loop: Header=BB211_3 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB211_8
.LBB211_7:                              # %cond.false
                                        #   in Loop: Header=BB211_3 Depth=2
	movswq	-2(%rbp), %rax
	movswq	-6(%rbp), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	andq	$65535, %rax            # imm = 0xFFFF
.LBB211_8:                              # %cond.end
                                        #   in Loop: Header=BB211_3 Depth=2
	movw	%ax, -6(%rbp)
	movswq	-4(%rbp), %rax
	movswq	-6(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -24(%rbp)
	cmpq	$32767, %rax            # imm = 0x7FFF
	jl	.LBB211_10
# %bb.9:                                # %cond.true17
                                        #   in Loop: Header=BB211_3 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB211_14
.LBB211_10:                             # %cond.false18
                                        #   in Loop: Header=BB211_3 Depth=2
	cmpq	$-32768, -24(%rbp)      # imm = 0x8000
	jg	.LBB211_12
# %bb.11:                               # %cond.true21
                                        #   in Loop: Header=BB211_3 Depth=2
	movq	$-32768, %rax           # imm = 0x8000
	jmp	.LBB211_13
.LBB211_12:                             # %cond.false22
                                        #   in Loop: Header=BB211_3 Depth=2
	movq	-24(%rbp), %rax
.LBB211_13:                             # %cond.end23
                                        #   in Loop: Header=BB211_3 Depth=2
.LBB211_14:                             # %cond.end25
                                        #   in Loop: Header=BB211_3 Depth=2
	movw	%ax, -4(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB211_17
# %bb.15:                               # %land.lhs.true31
                                        #   in Loop: Header=BB211_3 Depth=2
	movswl	-4(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB211_17
# %bb.16:                               # %cond.true35
                                        #   in Loop: Header=BB211_3 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB211_18
.LBB211_17:                             # %cond.false36
                                        #   in Loop: Header=BB211_3 Depth=2
	movswq	-2(%rbp), %rax
	movswq	-4(%rbp), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	andq	$65535, %rax            # imm = 0xFFFF
.LBB211_18:                             # %cond.end43
                                        #   in Loop: Header=BB211_3 Depth=2
	movw	%ax, -2(%rbp)
	movq	-40(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rax
	movswq	-2(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB211_20
# %bb.19:                               # %cond.true54
                                        #   in Loop: Header=BB211_3 Depth=2
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-24(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB211_21
.LBB211_20:                             # %cond.false59
                                        #   in Loop: Header=BB211_3 Depth=2
	movq	-24(%rbp), %rax
.LBB211_21:                             # %cond.end60
                                        #   in Loop: Header=BB211_3 Depth=2
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	jmp	.LBB211_3
.LBB211_22:                             # %for.end
                                        #   in Loop: Header=BB211_1 Depth=1
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	Short_term_synthesis_filtering2
	jmp	.LBB211_1
.LBB211_23:                             # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end211:
	.size	Short_term_synthesis_filtering, .Lfunc_end211-Short_term_synthesis_filtering
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_synthesis_filtering0 # -- Begin function Short_term_synthesis_filtering0
	.p2align	4, 0x90
	.type	Short_term_synthesis_filtering0,@function
Short_term_synthesis_filtering0:        # @Short_term_synthesis_filtering0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	leaq	632(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end212:
	.size	Short_term_synthesis_filtering0, .Lfunc_end212-Short_term_synthesis_filtering0
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_synthesis_filtering1 # -- Begin function Short_term_synthesis_filtering1
	.p2align	4, 0x90
	.type	Short_term_synthesis_filtering1,@function
Short_term_synthesis_filtering1:        # @Short_term_synthesis_filtering1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -36(%rsp)
	movq	%rsi, -8(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -38(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movzwl	(%rax), %eax
	movw	%ax, -38(%rsp)
	movl	$8, -36(%rsp)
	movw	%ax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movl	-36(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end213:
	.size	Short_term_synthesis_filtering1, .Lfunc_end213-Short_term_synthesis_filtering1
	.cfi_endproc
                                        # -- End function
	.globl	Short_term_synthesis_filtering2 # -- Begin function Short_term_synthesis_filtering2
	.p2align	4, 0x90
	.type	Short_term_synthesis_filtering2,@function
Short_term_synthesis_filtering2:        # @Short_term_synthesis_filtering2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movq	%rdx, -32(%rsp)
	movzwl	(%rdx), %ecx
	movw	%cx, -42(%rsp)
	movw	%cx, (%rax)
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -40(%rsp)
	movw	%cx, (%rax)
	movq	-32(%rsp), %rax
	movzwl	-42(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end214:
	.size	Short_term_synthesis_filtering2, .Lfunc_end214-Short_term_synthesis_filtering2
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_RPE_Decoding        # -- Begin function Gsm_RPE_Decoding
	.p2align	4, 0x90
	.type	Gsm_RPE_Decoding,@function
Gsm_RPE_Decoding:                       # @Gsm_RPE_Decoding
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-16(%rbp), %rax
	leaq	-2(%rbp), %r9
	leaq	-4(%rbp), %r10
	leaq	-24(%rbp), %r11
	movq	%rdi, -32(%rbp)
	movw	%si, -4(%rbp)
	movw	%dx, -2(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -16(%rbp)
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	movq	%r11, %rcx
	callq	Gsm_RPE_Decoding0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end215:
	.size	Gsm_RPE_Decoding, .Lfunc_end215-Gsm_RPE_Decoding
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Long_Term_Synthesis_Filtering # -- Begin function Gsm_Long_Term_Synthesis_Filtering
	.p2align	4, 0x90
	.type	Gsm_Long_Term_Synthesis_Filtering,@function
Gsm_Long_Term_Synthesis_Filtering:      # @Gsm_Long_Term_Synthesis_Filtering
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movw	%si, -8(%rbp)
	movw	%dx, -14(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -24(%rbp)
	movswl	-8(%rbp), %eax
	cmpl	$40, %eax
	jl	.LBB216_2
# %bb.1:                                # %lor.lhs.false
	movswl	-8(%rbp), %eax
	cmpl	$120, %eax
	jle	.LBB216_3
.LBB216_2:                              # %cond.true
	movq	-40(%rbp), %rax
	movswl	630(%rax), %eax
	jmp	.LBB216_4
.LBB216_3:                              # %cond.false
	movswl	-8(%rbp), %eax
.LBB216_4:                              # %cond.end
	movw	%ax, -6(%rbp)
	movw	-6(%rbp), %ax
	movq	-40(%rbp), %rcx
	movw	%ax, 630(%rcx)
	movswl	-6(%rbp), %eax
	cmpl	$40, %eax
	jl	.LBB216_7
# %bb.5:                                # %land.lhs.true
	movswl	-6(%rbp), %eax
	cmpl	$120, %eax
	jg	.LBB216_7
# %bb.6:                                # %cond.true15
	jmp	.LBB216_8
.LBB216_7:                              # %cond.false16
	movabsq	$.L.str.7.80, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, %rcx
	movl	$581, %edx              # imm = 0x245
	callq	__assert_fail
.LBB216_8:                              # %cond.end17
	movswq	-14(%rbp), %rax
	movw	gsm_QLB(,%rax,2), %ax
	movw	%ax, -10(%rbp)
	movswl	-10(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	je	.LBB216_10
# %bb.9:                                # %cond.true21
	jmp	.LBB216_11
.LBB216_10:                             # %cond.false22
	movabsq	$.L.str.8.81, %rdi
	movabsq	$.L.str.1.10, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, %rcx
	movl	$590, %edx              # imm = 0x24E
	callq	__assert_fail
.LBB216_11:                             # %cond.end23
	movl	$0, -4(%rbp)
.LBB216_12:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$39, -4(%rbp)
	jg	.LBB216_18
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB216_12 Depth=1
	movswq	-10(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movswl	-6(%rbp), %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	movswq	(%rcx,%rdx,2), %rcx
	imulq	%rcx, %rax
	addq	$16384, %rax            # imm = 0x4000
	sarq	$15, %rax
	movw	%ax, -12(%rbp)
	movq	-48(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movswq	(%rax,%rcx,2), %rax
	movswq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	subq	$-32768, %rax           # imm = 0x8000
	cmpq	$65535, %rax            # imm = 0xFFFF
	jbe	.LBB216_15
# %bb.14:                               # %cond.true40
                                        #   in Loop: Header=BB216_12 Depth=1
	movl	$4294934528, %eax       # imm = 0xFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	-32(%rbp), %rdx
	cmpq	$0, %rdx
	cmovgl	%ecx, %eax
	cltq
	jmp	.LBB216_16
.LBB216_15:                             # %cond.false45
                                        #   in Loop: Header=BB216_12 Depth=1
	movq	-32(%rbp), %rax
.LBB216_16:                             # %cond.end46
                                        #   in Loop: Header=BB216_12 Depth=1
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.17:                               # %for.inc
                                        #   in Loop: Header=BB216_12 Depth=1
	leaq	-4(%rbp), %rdi
	callq	Gsm_Long_Term_Synthesis_Filtering0
	jmp	.LBB216_12
.LBB216_18:                             # %for.end
	movl	$0, -4(%rbp)
.LBB216_19:                             # %for.cond51
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$119, -4(%rbp)
	jg	.LBB216_22
# %bb.20:                               # %for.body54
                                        #   in Loop: Header=BB216_19 Depth=1
	leaq	-4(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	Gsm_Long_Term_Synthesis_Filtering1
# %bb.21:                               # %for.inc61
                                        #   in Loop: Header=BB216_19 Depth=1
	leaq	-4(%rbp), %rdi
	callq	Gsm_Long_Term_Synthesis_Filtering2
	jmp	.LBB216_19
.LBB216_22:                             # %for.end63
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end216:
	.size	Gsm_Long_Term_Synthesis_Filtering, .Lfunc_end216-Gsm_Long_Term_Synthesis_Filtering
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Long_Term_Synthesis_Filtering0 # -- Begin function Gsm_Long_Term_Synthesis_Filtering0
	.p2align	4, 0x90
	.type	Gsm_Long_Term_Synthesis_Filtering0,@function
Gsm_Long_Term_Synthesis_Filtering0:     # @Gsm_Long_Term_Synthesis_Filtering0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end217:
	.size	Gsm_Long_Term_Synthesis_Filtering0, .Lfunc_end217-Gsm_Long_Term_Synthesis_Filtering0
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Long_Term_Synthesis_Filtering1 # -- Begin function Gsm_Long_Term_Synthesis_Filtering1
	.p2align	4, 0x90
	.type	Gsm_Long_Term_Synthesis_Filtering1,@function
Gsm_Long_Term_Synthesis_Filtering1:     # @Gsm_Long_Term_Synthesis_Filtering1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -24(%rsp)
	movslq	-28(%rsp), %rcx
	movzwl	-160(%rax,%rcx,2), %edx
	movw	%dx, -240(%rax,%rcx,2)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end218:
	.size	Gsm_Long_Term_Synthesis_Filtering1, .Lfunc_end218-Gsm_Long_Term_Synthesis_Filtering1
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_Long_Term_Synthesis_Filtering2 # -- Begin function Gsm_Long_Term_Synthesis_Filtering2
	.p2align	4, 0x90
	.type	Gsm_Long_Term_Synthesis_Filtering2,@function
Gsm_Long_Term_Synthesis_Filtering2:     # @Gsm_Long_Term_Synthesis_Filtering2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	incl	%eax
	movl	%eax, -12(%rsp)
	movl	%eax, (%rdi)
	retq
.Lfunc_end219:
	.size	Gsm_Long_Term_Synthesis_Filtering2, .Lfunc_end219-Gsm_Long_Term_Synthesis_Filtering2
	.cfi_endproc
                                        # -- End function
	.globl	Gsm_RPE_Decoding0       # -- Begin function Gsm_RPE_Decoding0
	.p2align	4, 0x90
	.type	Gsm_RPE_Decoding0,@function
Gsm_RPE_Decoding0:                      # @Gsm_RPE_Decoding0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	%rdi, 56(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 48(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, 10(%rsp)
	movq	%rdx, 40(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, 8(%rsp)
	movq	%rcx, 32(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movswl	8(%rsp), %edi
	leaq	14(%rsp), %rsi
	leaq	12(%rsp), %rdx
	callq	APCM_quantization_xmaxc_to_exp_mant
	movq	16(%rsp), %rdi
	movswl	14(%rsp), %edx
	movswl	12(%rsp), %esi
	leaq	64(%rsp), %rbx
	movq	%rbx, %rcx
	callq	APCM_inverse_quantization
	movq	24(%rsp), %rdx
	movswl	10(%rsp), %edi
	movq	%rbx, %rsi
	callq	RPE_grid_positioning
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movzwl	8(%rsp), %ecx
	movw	%cx, (%rax)
	movq	48(%rsp), %rax
	movzwl	10(%rsp), %ecx
	movw	%cx, (%rax)
	movq	56(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$96, %rsp
	popq	%rbx
	retq
.Lfunc_end220:
	.size	Gsm_RPE_Decoding0, .Lfunc_end220-Gsm_RPE_Decoding0
	.cfi_endproc
                                        # -- End function
	.globl	open_output0            # -- Begin function open_output0
	.p2align	4, 0x90
	.type	open_output0,@function
open_output0:                           # @open_output0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	stdout(%rip), %rax
	movq	%rax, out(%rip)
	movq	$0, outname(%rip)
	retq
.Lfunc_end221:
	.size	open_output0, .Lfunc_end221-open_output0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function plainname
	.type	plainname,@function
plainname:                              # @plainname
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
	movl	$222222222, -20(%rbp)   # imm = 0xD3ED78E
	movl	$555555555, -16(%rbp)   # imm = 0x211D1AE3
	movl	$444444444, -12(%rbp)   # imm = 0x1A7DAF1C
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	guardMe
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.41, %rdx
	movq	%rbx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	normalname
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end222:
	.size	plainname, .Lfunc_end222-plainname
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function codename
	.type	codename,@function
codename:                               # @codename
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.45, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	normalname
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end223:
	.size	codename, .Lfunc_end223-codename
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function length_okay
	.type	length_okay,@function
length_okay:                            # @length_okay
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB224_2
# %bb.1:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB224_6
.LBB224_2:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	endname
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB224_5
# %bb.3:                                # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	-16(%rbp), %rax
	jbe	.LBB224_5
# %bb.4:                                # %if.then3
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	length_okay0
	jmp	.LBB224_6
.LBB224_5:                              # %if.end6
	movl	$1, -4(%rbp)
.LBB224_6:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end224:
	.size	length_okay, .Lfunc_end224-length_okay
	.cfi_endproc
                                        # -- End function
	.globl	open_output1            # -- Begin function open_output1
	.p2align	4, 0x90
	.type	open_output1,@function
open_output1:                           # @open_output1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	callq	fdopen
	cltq
	movq	%rax, out(%rip)
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end225:
	.size	open_output1, .Lfunc_end225-open_output1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ok_to_replace
	.type	ok_to_replace,@function
ok_to_replace:                          # @ok_to_replace
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpl	$0, f_force
	je	.LBB226_2
# %bb.1:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB226_13
.LBB226_2:                              # %if.end
	movq	stderr, %rdi
	movb	$0, %al
	callq	fileno
	movl	%eax, %edi
	callq	isatty
	cmpl	$0, %eax
	jne	.LBB226_4
# %bb.3:                                # %if.then3
	movl	$0, -4(%rbp)
	jmp	.LBB226_13
.LBB226_4:                              # %if.end4
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	ok_to_replace0
.LBB226_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$10, -8(%rbp)
	je	.LBB226_7
# %bb.6:                                # %land.rhs
                                        #   in Loop: Header=BB226_5 Depth=1
	cmpl	$-1, -8(%rbp)
	setne	%al
.LBB226_7:                              # %land.end
                                        #   in Loop: Header=BB226_5 Depth=1
	testb	$1, %al
	jne	.LBB226_8
	jmp	.LBB226_10
.LBB226_8:                              # %for.body
                                        #   in Loop: Header=BB226_5 Depth=1
	jmp	.LBB226_9
.LBB226_9:                              # %for.inc
                                        #   in Loop: Header=BB226_5 Depth=1
	leaq	-8(%rbp), %rdi
	callq	ok_to_replace1
	jmp	.LBB226_5
.LBB226_10:                             # %for.end
	cmpl	$121, -12(%rbp)
	jne	.LBB226_12
# %bb.11:                               # %if.then11
	movl	$1, -4(%rbp)
	jmp	.LBB226_13
.LBB226_12:                             # %if.end12
	leaq	-4(%rbp), %rdi
	callq	ok_to_replace2
.LBB226_13:                             # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end226:
	.size	ok_to_replace, .Lfunc_end226-ok_to_replace
	.cfi_endproc
                                        # -- End function
	.globl	open_output2            # -- Begin function open_output2
	.p2align	4, 0x90
	.type	open_output2,@function
open_output2:                           # @open_output2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movl	$.L.str.51, %esi
	callq	fopen
	movq	%rax, out(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end227:
	.size	open_output2, .Lfunc_end227-open_output2
	.cfi_endproc
                                        # -- End function
	.globl	open_output3            # -- Begin function open_output3
	.p2align	4, 0x90
	.type	open_output3,@function
open_output3:                           # @open_output3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %edi
	movl	%edi, 12(%rsp)
	callq	close
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end228:
	.size	open_output3, .Lfunc_end228-open_output3
	.cfi_endproc
                                        # -- End function
	.globl	open_output4            # -- Begin function open_output4
	.p2align	4, 0x90
	.type	open_output4,@function
open_output4:                           # @open_output4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, outname(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end229:
	.size	open_output4, .Lfunc_end229-open_output4
	.cfi_endproc
                                        # -- End function
	.globl	ok_to_replace0          # -- Begin function ok_to_replace0
	.p2align	4, 0x90
	.type	ok_to_replace0,@function
ok_to_replace0:                         # @ok_to_replace0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 4(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %eax
	movl	%eax, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.54, %esi
	xorl	%eax, %eax
	movq	%rdx, %rcx
	callq	fprintf
	movq	stderr(%rip), %rdi
	callq	fflush
	callq	getchar
	movl	%eax, (%rsp)
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end230:
	.size	ok_to_replace0, .Lfunc_end230-ok_to_replace0
	.cfi_endproc
                                        # -- End function
	.globl	ok_to_replace1          # -- Begin function ok_to_replace1
	.p2align	4, 0x90
	.type	ok_to_replace1,@function
ok_to_replace1:                         # @ok_to_replace1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	callq	getchar
	movl	%eax, 12(%rsp)
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end231:
	.size	ok_to_replace1, .Lfunc_end231-ok_to_replace1
	.cfi_endproc
                                        # -- End function
	.globl	ok_to_replace2          # -- Begin function ok_to_replace2
	.p2align	4, 0x90
	.type	ok_to_replace2,@function
ok_to_replace2:                         # @ok_to_replace2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$0, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end232:
	.size	ok_to_replace2, .Lfunc_end232-ok_to_replace2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function endname
	.type	endname,@function
endname:                                # @endname
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB233_5
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rdi
	movl	$47, %esi
	callq	strrchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB233_4
# %bb.2:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$0, %eax
	je	.LBB233_4
# %bb.3:                                # %if.then3
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	endname0
.LBB233_4:                              # %if.end
	jmp	.LBB233_5
.LBB233_5:                              # %if.end4
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end233:
	.size	endname, .Lfunc_end233-endname
	.cfi_endproc
                                        # -- End function
	.globl	length_okay0            # -- Begin function length_okay0
	.p2align	4, 0x90
	.type	length_okay0,@function
length_okay0:                           # @length_okay0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 48(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 24(%rsp)
	movq	stderr(%rip), %r14
	movq	progname(%rip), %rbx
	callq	endname
	movq	%rax, %rcx
	movq	16(%rsp), %r8
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	movl	$0, 12(%rsp)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end234:
	.size	length_okay0, .Lfunc_end234-length_okay0
	.cfi_endproc
                                        # -- End function
	.globl	endname0                # -- Begin function endname0
	.p2align	4, 0x90
	.type	endname0,@function
endname0:                               # @endname0
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
.Lfunc_end235:
	.size	endname0, .Lfunc_end235-endname0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function normalname
	.type	normalname,@function
normalname:                             # @normalname
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
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB236_2
# %bb.1:                                # %if.then
	leaq	-48(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	normalname0
	jmp	.LBB236_9
.LBB236_2:                              # %if.end
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	$1, %rbx
	movq	-24(%rbp), %rdi
	callq	strlen
	addq	%rax, %rbx
	movq	-40(%rbp), %rdi
	callq	strlen
	addq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	emalloc
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	suffix
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB236_4
# %bb.3:                                # %if.then9
	leaq	-24(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	normalname1
	jmp	.LBB236_8
.LBB236_4:                              # %if.else
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB236_7
# %bb.5:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	suffix
	cmpq	$0, %rax
	jne	.LBB236_7
# %bb.6:                                # %if.then14
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	normalname2
.LBB236_7:                              # %if.end16
	jmp	.LBB236_8
.LBB236_8:                              # %if.end17
	leaq	-48(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	normalname3
.LBB236_9:                              # %return
	movq	-48(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end236:
	.size	normalname, .Lfunc_end236-normalname
	.cfi_endproc
                                        # -- End function
	.globl	normalname0             # -- Begin function normalname0
	.p2align	4, 0x90
	.type	normalname0,@function
normalname0:                            # @normalname0
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
.Lfunc_end237:
	.size	normalname0, .Lfunc_end237-normalname0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function emalloc
	.type	emalloc,@function
emalloc:                                # @emalloc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB238_2
# %bb.1:                                # %if.then
	leaq	-8(%rbp), %rdi
	callq	emalloc0
	callq	onintr
	movl	$1, %edi
	callq	exit
.LBB238_2:                              # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end238:
	.size	emalloc, .Lfunc_end238-emalloc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function suffix
	.type	suffix,@function
suffix:                                 # @suffix
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB239_2
# %bb.1:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.LBB239_3
.LBB239_2:                              # %if.then
	movq	$0, -40(%rbp)
	jmp	.LBB239_7
.LBB239_3:                              # %if.end
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	addq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB239_5
# %bb.4:                                # %cond.true
	xorl	%eax, %eax
	jmp	.LBB239_6
.LBB239_5:                              # %cond.false
	movq	-8(%rbp), %rax
.LBB239_6:                              # %cond.end
	movq	%rax, -40(%rbp)
.LBB239_7:                              # %return
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end239:
	.size	suffix, .Lfunc_end239-suffix
	.cfi_endproc
                                        # -- End function
	.globl	normalname1             # -- Begin function normalname1
	.p2align	4, 0x90
	.type	normalname1,@function
normalname1:                            # @normalname1
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
	movq	%rax, %rsi
	callq	strcpy
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end240:
	.size	normalname1, .Lfunc_end240-normalname1
	.cfi_endproc
                                        # -- End function
	.globl	normalname2             # -- Begin function normalname2
	.p2align	4, 0x90
	.type	normalname2,@function
normalname2:                            # @normalname2
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
	movq	%rax, %rsi
	callq	strcat
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end241:
	.size	normalname2, .Lfunc_end241-normalname2
	.cfi_endproc
                                        # -- End function
	.globl	normalname3             # -- Begin function normalname3
	.p2align	4, 0x90
	.type	normalname3,@function
normalname3:                            # @normalname3
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
.Lfunc_end242:
	.size	normalname3, .Lfunc_end242-normalname3
	.cfi_endproc
                                        # -- End function
	.globl	emalloc0                # -- Begin function emalloc0
	.p2align	4, 0x90
	.type	emalloc0,@function
emalloc0:                               # @emalloc0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end243:
	.size	emalloc0, .Lfunc_end243-emalloc0
	.cfi_endproc
                                        # -- End function
	.globl	open_input0             # -- Begin function open_input0
	.p2align	4, 0x90
	.type	open_input0,@function
open_input0:                            # @open_input0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, inname(%rip)
	movq	stdin(%rip), %rax
	movq	%rax, in(%rip)
	retq
.Lfunc_end244:
	.size	open_input0, .Lfunc_end244-open_input0
	.cfi_endproc
                                        # -- End function
	.globl	open_input1             # -- Begin function open_input1
	.p2align	4, 0x90
	.type	open_input1,@function
open_input1:                            # @open_input1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	codename
	movq	%rax, inname(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end245:
	.size	open_input1, .Lfunc_end245-open_input1
	.cfi_endproc
                                        # -- End function
	.globl	open_input2             # -- Begin function open_input2
	.p2align	4, 0x90
	.type	open_input2,@function
open_input2:                            # @open_input2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 16(%rsp)
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movl	$.L.str.42, %esi
	movl	$.L.str.41, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, 12(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end246:
	.size	open_input2, .Lfunc_end246-open_input2
	.cfi_endproc
                                        # -- End function
	.globl	open_input3             # -- Begin function open_input3
	.p2align	4, 0x90
	.type	open_input3,@function
open_input3:                            # @open_input3
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	leaq	1(%rax), %rdi
	callq	emalloc
	movq	8(%rsp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, inname(%rip)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end247:
	.size	open_input3, .Lfunc_end247-open_input3
	.cfi_endproc
                                        # -- End function
	.globl	open_input4             # -- Begin function open_input4
	.p2align	4, 0x90
	.type	open_input4,@function
open_input4:                            # @open_input4
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	inname(%rip), %rdi
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	inname(%rip), %rcx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, 12(%rsp)
	movq	16(%rsp), %rax
	movl	$0, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end248:
	.size	open_input4, .Lfunc_end248-open_input4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function okay_as_input
	.type	okay_as_input,@function
okay_as_input:                          # @okay_as_input
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	fileno
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$0, %eax
	jge	.LBB249_2
# %bb.1:                                # %if.then
	leaq	-24(%rbp), %rdi
	callq	okay_as_input0
	movl	$0, -4(%rbp)
	jmp	.LBB249_9
.LBB249_2:                              # %if.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	je	.LBB249_4
# %bb.3:                                # %if.then4
	leaq	-24(%rbp), %rdi
	callq	okay_as_input1
	movl	$0, -4(%rbp)
	jmp	.LBB249_9
.LBB249_4:                              # %if.end6
	movq	-16(%rbp), %rax
	cmpq	$1, 16(%rax)
	jbe	.LBB249_8
# %bb.5:                                # %land.lhs.true
	cmpl	$0, f_cat
	jne	.LBB249_8
# %bb.6:                                # %land.lhs.true8
	cmpl	$0, f_precious
	jne	.LBB249_8
# %bb.7:                                # %if.then10
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	okay_as_input2
	jmp	.LBB249_9
.LBB249_8:                              # %if.end15
	movl	$1, -4(%rbp)
.LBB249_9:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end249:
	.size	okay_as_input, .Lfunc_end249-okay_as_input
	.cfi_endproc
                                        # -- End function
	.globl	open_input5             # -- Begin function open_input5
	.p2align	4, 0x90
	.type	open_input5,@function
open_input5:                            # @open_input5
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	inname(%rip), %rdi
	callq	grok_format
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	$24, %rsp
	retq
.Lfunc_end250:
	.size	open_input5, .Lfunc_end250-open_input5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function prepare_io
	.type	prepare_io,@function
prepare_io:                             # @prepare_io
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	prepare_io0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end251:
	.size	prepare_io, .Lfunc_end251-prepare_io
	.cfi_endproc
                                        # -- End function
	.globl	prepare_io0             # -- Begin function prepare_io0
	.p2align	4, 0x90
	.type	prepare_io0,@function
prepare_io0:                            # @prepare_io0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	48(%rax), %rcx
	movq	%rcx, output(%rip)
	movq	40(%rax), %rcx
	movq	%rcx, input(%rip)
	movq	24(%rax), %rcx
	movq	%rcx, init_input(%rip)
	movq	32(%rax), %rcx
	movq	%rcx, init_output(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end252:
	.size	prepare_io0, .Lfunc_end252-prepare_io0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function grok_format
	.type	grok_format,@function
grok_format:                            # @grok_format
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB253_10
# %bb.1:                                # %if.then
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	grok_format0
.LBB253_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB253_9
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB253_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB253_7
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB253_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB253_7
# %bb.5:                                # %land.lhs.true5
                                        #   in Loop: Header=BB253_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rsi
	callq	suffix
	cmpq	$0, %rax
	je	.LBB253_7
# %bb.6:                                # %if.then9
	leaq	-32(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	grok_format1
	jmp	.LBB253_11
.LBB253_7:                              # %if.end
                                        #   in Loop: Header=BB253_2 Depth=1
	jmp	.LBB253_8
.LBB253_8:                              # %for.inc
                                        #   in Loop: Header=BB253_2 Depth=1
	leaq	-8(%rbp), %rdi
	callq	grok_format2
	jmp	.LBB253_2
.LBB253_9:                              # %for.end
	leaq	-16(%rbp), %rdi
	callq	grok_format3
.LBB253_10:                             # %if.end10
	movq	$0, -32(%rbp)
.LBB253_11:                             # %return
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end253:
	.size	grok_format, .Lfunc_end253-grok_format
	.cfi_endproc
                                        # -- End function
	.globl	grok_format0            # -- Begin function grok_format0
	.p2align	4, 0x90
	.type	grok_format0,@function
grok_format0:                           # @grok_format0
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
	callq	plainname
	movq	%rax, 8(%rsp)
	movq	$alldescs, 16(%rsp)
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
.Lfunc_end254:
	.size	grok_format0, .Lfunc_end254-grok_format0
	.cfi_endproc
                                        # -- End function
	.globl	grok_format1            # -- Begin function grok_format1
	.p2align	4, 0x90
	.type	grok_format1,@function
grok_format1:                           # @grok_format1
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
	callq	free
	movq	8(%rsp), %rax
	movq	(%rax), %rax
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
.Lfunc_end255:
	.size	grok_format1, .Lfunc_end255-grok_format1
	.cfi_endproc
                                        # -- End function
	.globl	grok_format2            # -- Begin function grok_format2
	.p2align	4, 0x90
	.type	grok_format2,@function
grok_format2:                           # @grok_format2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	addq	$8, %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end256:
	.size	grok_format2, .Lfunc_end256-grok_format2
	.cfi_endproc
                                        # -- End function
	.globl	grok_format3            # -- Begin function grok_format3
	.p2align	4, 0x90
	.type	grok_format3,@function
grok_format3:                           # @grok_format3
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
.Lfunc_end257:
	.size	grok_format3, .Lfunc_end257-grok_format3
	.cfi_endproc
                                        # -- End function
	.globl	okay_as_input0          # -- Begin function okay_as_input0
	.p2align	4, 0x90
	.type	okay_as_input0,@function
okay_as_input0:                         # @okay_as_input0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	perror
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	8(%rsp), %rcx
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end258:
	.size	okay_as_input0, .Lfunc_end258-okay_as_input0
	.cfi_endproc
                                        # -- End function
	.globl	okay_as_input1          # -- Begin function okay_as_input1
	.p2align	4, 0x90
	.type	okay_as_input1,@function
okay_as_input1:                         # @okay_as_input1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end259:
	.size	okay_as_input1, .Lfunc_end259-okay_as_input1
	.cfi_endproc
                                        # -- End function
	.globl	okay_as_input2          # -- Begin function okay_as_input2
	.p2align	4, 0x90
	.type	okay_as_input2,@function
okay_as_input2:                         # @okay_as_input2
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 12(%rsp)
	movq	%rsi, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, 16(%rsp)
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movq	16(%rax), %rax
	cmpq	$3, %rax
	leaq	-1(%rax), %r8
	movl	$.L.str.50, %r9d
	adcq	$0, %r9
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, 12(%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end260:
	.size	okay_as_input2, .Lfunc_end260-okay_as_input2
	.cfi_endproc
                                        # -- End function
	.globl	catch_signals0          # -- Begin function catch_signals0
	.p2align	4, 0x90
	.type	catch_signals0,@function
catch_signals0:                         # @catch_signals0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rsi
	movq	%rsi, 8(%rsp)
	movl	$1, %edi
	callq	__sysv_signal
	movq	8(%rsp), %rsi
	movl	$2, %edi
	callq	__sysv_signal
	movq	8(%rsp), %rsi
	movl	$13, %edi
	callq	__sysv_signal
	movq	8(%rsp), %rsi
	movl	$15, %edi
	callq	__sysv_signal
	movq	8(%rsp), %rsi
	movl	$25, %edi
	callq	__sysv_signal
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end261:
	.size	catch_signals0, .Lfunc_end261-catch_signals0
	.cfi_endproc
                                        # -- End function
	.globl	onintr0                 # -- Begin function onintr0
	.p2align	4, 0x90
	.type	onintr0,@function
onintr0:                                # @onintr0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	outname(%rip), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, (%rdi)
	retq
.Lfunc_end262:
	.size	onintr0, .Lfunc_end262-onintr0
	.cfi_endproc
                                        # -- End function
	.globl	onintr1                 # -- Begin function onintr1
	.p2align	4, 0x90
	.type	onintr1,@function
onintr1:                                # @onintr1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	callq	unlink
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$24, %rsp
	retq
.Lfunc_end263:
	.size	onintr1, .Lfunc_end263-onintr1
	.cfi_endproc
                                        # -- End function
	.globl	help0                   # -- Begin function help0
	.p2align	4, 0x90
	.type	help0,@function
help0:                                  # @help0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	progname(%rip), %rsi
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.26, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end264:
	.size	help0, .Lfunc_end264-help0
	.cfi_endproc
                                        # -- End function
	.globl	version0                # -- Begin function version0
	.p2align	4, 0x90
	.type	version0,@function
version0:                               # @version0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	progname(%rip), %rsi
	movl	$.L.str.18, %edi
	movl	$.L.str.19, %edx
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end265:
	.size	version0, .Lfunc_end265-version0
	.cfi_endproc
                                        # -- End function
	.globl	set_format0             # -- Begin function set_format0
	.p2align	4, 0x90
	.type	set_format0,@function
set_format0:                            # @set_format0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	progname(%rip), %rdx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%rdx, %rcx
	callq	fprintf
	movl	$1, %edi
	callq	exit
	popq	%rax
	retq
.Lfunc_end266:
	.size	set_format0, .Lfunc_end266-set_format0
	.cfi_endproc
                                        # -- End function
	.globl	set_format1             # -- Begin function set_format1
	.p2align	4, 0x90
	.type	set_format1,@function
set_format1:                            # @set_format1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, f_format(%rip)
	movq	%rax, (%rdi)
	retq
.Lfunc_end267:
	.size	set_format1, .Lfunc_end267-set_format1
	.cfi_endproc
                                        # -- End function
	.globl	parse_argv00            # -- Begin function parse_argv00
	.p2align	4, 0x90
	.type	parse_argv00,@function
parse_argv00:                           # @parse_argv00
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, f_decode(%rip)
	movl	$1, f_cat(%rip)
	retq
.Lfunc_end268:
	.size	parse_argv00, .Lfunc_end268-parse_argv00
	.cfi_endproc
                                        # -- End function
	.globl	gsm_mult_r              # -- Begin function gsm_mult_r
	.p2align	4, 0x90
	.type	gsm_mult_r,@function
gsm_mult_r:                             # @gsm_mult_r
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -4(%rbp)
	movw	%si, -2(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB269_3
# %bb.1:                                # %land.lhs.true
	movswl	-4(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB269_3
# %bb.2:                                # %if.then
	movw	$32767, -6(%rbp)        # imm = 0x7FFF
	jmp	.LBB269_4
.LBB269_3:                              # %if.else
	leaq	-6(%rbp), %rdi
	leaq	-2(%rbp), %rsi
	leaq	-4(%rbp), %rdx
	callq	gsm_mult_r0
.LBB269_4:                              # %return
	movswl	-6(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end269:
	.size	gsm_mult_r, .Lfunc_end269-gsm_mult_r
	.cfi_endproc
                                        # -- End function
	.globl	gsm_mult_r0             # -- Begin function gsm_mult_r0
	.p2align	4, 0x90
	.type	gsm_mult_r0,@function
gsm_mult_r0:                            # @gsm_mult_r0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, -36(%rsp)
	movq	%rsi, -24(%rsp)
	movzwl	(%rsi), %eax
	movw	%ax, -38(%rsp)
	movq	%rdx, -8(%rsp)
	movzwl	(%rdx), %eax
	movw	%ax, -34(%rsp)
	movswq	-34(%rsp), %rax
	movswq	-38(%rsp), %rcx
	imulq	%rax, %rcx
	addq	$16384, %rcx            # imm = 0x4000
	sarq	$15, %rcx
	movq	%rcx, -32(%rsp)
	movzwl	-32(%rsp), %ecx
	movw	%cx, -36(%rsp)
	movw	%ax, (%rdx)
	movq	-24(%rsp), %rax
	movzwl	-38(%rsp), %ecx
	movw	%cx, (%rax)
	movq	-16(%rsp), %rax
	movzwl	-36(%rsp), %ecx
	movw	%cx, (%rax)
	retq
.Lfunc_end270:
	.size	gsm_mult_r0, .Lfunc_end270-gsm_mult_r0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_abs                 # -- Begin function gsm_abs
	.p2align	4, 0x90
	.type	gsm_abs,@function
gsm_abs:                                # @gsm_abs
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	%di, -2(%rbp)
	movswl	-2(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB271_5
# %bb.1:                                # %cond.true
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB271_3
# %bb.2:                                # %cond.true5
	movl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB271_4
.LBB271_3:                              # %cond.false
	xorl	%eax, %eax
	movswl	-2(%rbp), %ecx
	subl	%ecx, %eax
.LBB271_4:                              # %cond.end
	jmp	.LBB271_6
.LBB271_5:                              # %cond.false7
	movswl	-2(%rbp), %eax
.LBB271_6:                              # %cond.end9
	cwtl
	popq	%rbp
	retq
.Lfunc_end271:
	.size	gsm_abs, .Lfunc_end271-gsm_abs
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_mult              # -- Begin function gsm_L_mult
	.p2align	4, 0x90
	.type	gsm_L_mult,@function
gsm_L_mult:                             # @gsm_L_mult
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -4(%rbp)
	movw	%si, -2(%rbp)
	movswl	-4(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	jne	.LBB272_2
# %bb.1:                                # %lor.lhs.false
	movswl	-2(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0x8000
	je	.LBB272_3
.LBB272_2:                              # %cond.true
	jmp	.LBB272_4
.LBB272_3:                              # %cond.false
	movabsq	$.L.str.66, %rdi
	movabsq	$.L.str.1.67, %rsi
	movabsq	$.L__PRETTY_FUNCTION__.gsm_L_mult, %rcx
	movl	$58, %edx
	callq	__assert_fail
.LBB272_4:                              # %cond.end
	movswq	-4(%rbp), %rax
	movswq	-2(%rbp), %rcx
	imulq	%rcx, %rax
	shlq	$1, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end272:
	.size	gsm_L_mult, .Lfunc_end272-gsm_L_mult
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_add               # -- Begin function gsm_L_add
	.p2align	4, 0x90
	.type	gsm_L_add,@function
gsm_L_add:                              # @gsm_L_add
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jge	.LBB273_7
# %bb.1:                                # %if.then
	cmpq	$0, -8(%rbp)
	jl	.LBB273_3
# %bb.2:                                # %if.then2
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gsm_L_add0
	jmp	.LBB273_13
.LBB273_3:                              # %if.else
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
	subq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	subq	%rcx, %rax
	addq	%rax, %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$2147483647, -40(%rbp)  # imm = 0x7FFFFFFF
	jb	.LBB273_5
# %bb.4:                                # %cond.true
	movq	$-2147483648, %rax      # imm = 0x80000000
	jmp	.LBB273_6
.LBB273_5:                              # %cond.false
	xorl	%eax, %eax
	subq	-40(%rbp), %rax
	subq	$2, %rax
.LBB273_6:                              # %cond.end
	movq	%rax, -24(%rbp)
	jmp	.LBB273_13
.LBB273_7:                              # %if.else10
	cmpq	$0, -8(%rbp)
	jg	.LBB273_9
# %bb.8:                                # %if.then12
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gsm_L_add1
	jmp	.LBB273_13
.LBB273_9:                              # %if.else14
	movq	-16(%rbp), %rax
	addq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$2147483647, -32(%rbp)  # imm = 0x7FFFFFFF
	jbe	.LBB273_11
# %bb.10:                               # %cond.true18
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jmp	.LBB273_12
.LBB273_11:                             # %cond.false19
	movq	-32(%rbp), %rax
.LBB273_12:                             # %cond.end20
	movq	%rax, -24(%rbp)
.LBB273_13:                             # %return
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end273:
	.size	gsm_L_add, .Lfunc_end273-gsm_L_add
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_add0              # -- Begin function gsm_L_add0
	.p2align	4, 0x90
	.type	gsm_L_add0,@function
gsm_L_add0:                             # @gsm_L_add0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -40(%rsp)
	addq	%rax, %rcx
	movq	%rcx, -48(%rsp)
	movq	%rax, (%rsi)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end274:
	.size	gsm_L_add0, .Lfunc_end274-gsm_L_add0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_add1              # -- Begin function gsm_L_add1
	.p2align	4, 0x90
	.type	gsm_L_add1,@function
gsm_L_add1:                             # @gsm_L_add1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rdx, -32(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -40(%rsp)
	addq	%rax, %rcx
	movq	%rcx, -48(%rsp)
	movq	%rax, (%rsi)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end275:
	.size	gsm_L_add1, .Lfunc_end275-gsm_L_add1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_sub               # -- Begin function gsm_L_sub
	.p2align	4, 0x90
	.type	gsm_L_sub,@function
gsm_L_sub:                              # @gsm_L_sub
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jl	.LBB276_7
# %bb.1:                                # %if.then
	cmpq	$0, -8(%rbp)
	jl	.LBB276_3
# %bb.2:                                # %if.then2
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gsm_L_sub0
	jmp	.LBB276_13
.LBB276_3:                              # %if.else
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	subq	%rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$2147483647, -40(%rbp)  # imm = 0x7FFFFFFF
	jb	.LBB276_5
# %bb.4:                                # %cond.true
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jmp	.LBB276_6
.LBB276_5:                              # %cond.false
	movq	-40(%rbp), %rax
	addq	$1, %rax
.LBB276_6:                              # %cond.end
	movq	%rax, -24(%rbp)
	jmp	.LBB276_13
.LBB276_7:                              # %if.else7
	cmpq	$0, -8(%rbp)
	jg	.LBB276_9
# %bb.8:                                # %if.then9
	leaq	-24(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gsm_L_sub1
	jmp	.LBB276_13
.LBB276_9:                              # %if.else11
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	subq	%rcx, %rax
	addq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$2147483647, -32(%rbp)  # imm = 0x7FFFFFFF
	jb	.LBB276_11
# %bb.10:                               # %cond.true17
	movq	$-2147483648, %rax      # imm = 0x80000000
	jmp	.LBB276_12
.LBB276_11:                             # %cond.false18
	xorl	%eax, %eax
	subq	-32(%rbp), %rax
	subq	$1, %rax
.LBB276_12:                             # %cond.end21
	movq	%rax, -24(%rbp)
.LBB276_13:                             # %return
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end276:
	.size	gsm_L_sub, .Lfunc_end276-gsm_L_sub
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_sub0              # -- Begin function gsm_L_sub0
	.p2align	4, 0x90
	.type	gsm_L_sub0,@function
gsm_L_sub0:                             # @gsm_L_sub0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -16(%rsp)
	movq	%rcx, %rsi
	subq	%rax, %rsi
	movq	%rsi, -48(%rsp)
	movq	%rcx, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end277:
	.size	gsm_L_sub0, .Lfunc_end277-gsm_L_sub0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_sub1              # -- Begin function gsm_L_sub1
	.p2align	4, 0x90
	.type	gsm_L_sub1,@function
gsm_L_sub1:                             # @gsm_L_sub1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -48(%rsp)
	movq	%rsi, -32(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, -16(%rsp)
	movq	%rcx, %rsi
	subq	%rax, %rsi
	movq	%rsi, -48(%rsp)
	movq	%rcx, (%rdx)
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end278:
	.size	gsm_L_sub1, .Lfunc_end278-gsm_L_sub1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asl               # -- Begin function gsm_L_asl
	.p2align	4, 0x90
	.type	gsm_L_asl,@function
gsm_L_asl:                              # @gsm_L_asl
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	cmpl	$32, -4(%rbp)
	jl	.LBB279_2
# %bb.1:                                # %if.then
	movq	$0, -16(%rbp)
	jmp	.LBB279_7
.LBB279_2:                              # %if.end
	cmpl	$-32, -4(%rbp)
	jg	.LBB279_4
# %bb.3:                                # %if.then2
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	gsm_L_asl0
	jmp	.LBB279_7
.LBB279_4:                              # %if.end5
	cmpl	$0, -4(%rbp)
	jge	.LBB279_6
# %bb.5:                                # %if.then8
	leaq	-16(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	gsm_L_asl1
	jmp	.LBB279_7
.LBB279_6:                              # %if.end10
	leaq	-16(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	gsm_L_asl2
.LBB279_7:                              # %return
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end279:
	.size	gsm_L_asl, .Lfunc_end279-gsm_L_asl
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asl0              # -- Begin function gsm_L_asl0
	.p2align	4, 0x90
	.type	gsm_L_asl0,@function
gsm_L_asl0:                             # @gsm_L_asl0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, %rcx
	shrq	$63, %rcx
	negl	%ecx
	movslq	%ecx, %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end280:
	.size	gsm_L_asl0, .Lfunc_end280-gsm_L_asl0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asl1              # -- Begin function gsm_L_asl1
	.p2align	4, 0x90
	.type	gsm_L_asl1,@function
gsm_L_asl1:                             # @gsm_L_asl1
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movl	(%rsi), %esi
	movl	%esi, 12(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 24(%rsp)
	negl	%esi
	callq	gsm_L_asr
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
.Lfunc_end281:
	.size	gsm_L_asl1, .Lfunc_end281-gsm_L_asl1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asl2              # -- Begin function gsm_L_asl2
	.p2align	4, 0x90
	.type	gsm_L_asl2,@function
gsm_L_asl2:                             # @gsm_L_asl2
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
	movb	-44(%rsp), %cl
	movq	%rax, %rsi
	shlq	%cl, %rsi
	movq	%rsi, -40(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end282:
	.size	gsm_L_asl2, .Lfunc_end282-gsm_L_asl2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asr               # -- Begin function gsm_L_asr
	.p2align	4, 0x90
	.type	gsm_L_asr,@function
gsm_L_asr:                              # @gsm_L_asr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	cmpl	$32, -4(%rbp)
	jl	.LBB283_2
# %bb.1:                                # %if.then
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	gsm_L_asr0
	jmp	.LBB283_7
.LBB283_2:                              # %if.end
	cmpl	$-32, -4(%rbp)
	jg	.LBB283_4
# %bb.3:                                # %if.then5
	movq	$0, -16(%rbp)
	jmp	.LBB283_7
.LBB283_4:                              # %if.end6
	cmpl	$0, -4(%rbp)
	jge	.LBB283_6
# %bb.5:                                # %if.then9
	leaq	-16(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	gsm_L_asr1
	jmp	.LBB283_7
.LBB283_6:                              # %if.end11
	leaq	-16(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	gsm_L_asr2
.LBB283_7:                              # %return
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end283:
	.size	gsm_L_asr, .Lfunc_end283-gsm_L_asr
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asr0              # -- Begin function gsm_L_asr0
	.p2align	4, 0x90
	.type	gsm_L_asr0,@function
gsm_L_asr0:                             # @gsm_L_asr0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -16(%rsp)
	movq	%rax, %rcx
	shrq	$63, %rcx
	negl	%ecx
	movslq	%ecx, %rcx
	movq	%rcx, -32(%rsp)
	movq	%rax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end284:
	.size	gsm_L_asr0, .Lfunc_end284-gsm_L_asr0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asr1              # -- Begin function gsm_L_asr1
	.p2align	4, 0x90
	.type	gsm_L_asr1,@function
gsm_L_asr1:                             # @gsm_L_asr1
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -44(%rsp)
	movq	%rdx, -8(%rsp)
	movq	(%rdx), %rax
	movq	%rax, -16(%rsp)
	negl	%ecx
	movq	%rax, %rsi
                                        # kill: def %cl killed %cl killed %ecx
	shlq	%cl, %rsi
	movq	%rsi, -40(%rsp)
	movq	%rax, (%rdx)
	movq	-32(%rsp), %rax
	movl	-44(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end285:
	.size	gsm_L_asr1, .Lfunc_end285-gsm_L_asr1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_L_asr2              # -- Begin function gsm_L_asr2
	.p2align	4, 0x90
	.type	gsm_L_asr2,@function
gsm_L_asr2:                             # @gsm_L_asr2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -40(%rsp)
	movq	%rsi, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, -44(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rsp)
	movb	-44(%rsp), %cl
	sarq	%cl, %rdx
	movq	%rdx, -40(%rsp)
	movl	%eax, (%rsi)
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end286:
	.size	gsm_L_asr2, .Lfunc_end286-gsm_L_asr2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_words         # -- Begin function gsm_debug_words
	.p2align	4, 0x90
	.type	gsm_debug_words,@function
gsm_debug_words:                        # @gsm_debug_words
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-12(%rbp), %rax
	leaq	-4(%rbp), %r8
	leaq	-32(%rbp), %r9
	movq	%rdi, -32(%rbp)
	movl	%esi, -4(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	gsm_debug_words0
.LBB287_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB287_7
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB287_1 Depth=1
	movabsq	$.L.str.1.5, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movswl	(%rax,%rcx,2), %edx
	movb	$0, %al
	callq	fprintf
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$7, %eax
	jl	.LBB287_6
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB287_1 Depth=1
	movl	$0, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB287_5
# %bb.4:                                # %if.then7
                                        #   in Loop: Header=BB287_1 Depth=1
	callq	gsm_debug_words1
.LBB287_5:                              # %if.end
                                        #   in Loop: Header=BB287_1 Depth=1
	jmp	.LBB287_6
.LBB287_6:                              # %if.end9
                                        #   in Loop: Header=BB287_1 Depth=1
	jmp	.LBB287_1
.LBB287_7:                              # %while.end
	callq	gsm_debug_words2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end287:
	.size	gsm_debug_words, .Lfunc_end287-gsm_debug_words
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_words0        # -- Begin function gsm_debug_words0
	.p2align	4, 0x90
	.type	gsm_debug_words0,@function
gsm_debug_words0:                       # @gsm_debug_words0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %r8d
	movl	%r8d, 4(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.4.79, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end288:
	.size	gsm_debug_words0, .Lfunc_end288-gsm_debug_words0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_words1        # -- Begin function gsm_debug_words1
	.p2align	4, 0x90
	.type	gsm_debug_words1,@function
gsm_debug_words1:                       # @gsm_debug_words1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end289:
	.size	gsm_debug_words1, .Lfunc_end289-gsm_debug_words1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_words2        # -- Begin function gsm_debug_words2
	.p2align	4, 0x90
	.type	gsm_debug_words2,@function
gsm_debug_words2:                       # @gsm_debug_words2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end290:
	.size	gsm_debug_words2, .Lfunc_end290-gsm_debug_words2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_longwords     # -- Begin function gsm_debug_longwords
	.p2align	4, 0x90
	.type	gsm_debug_longwords,@function
gsm_debug_longwords:                    # @gsm_debug_longwords
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-12(%rbp), %rax
	leaq	-4(%rbp), %r8
	leaq	-32(%rbp), %r9
	movq	%rdi, -32(%rbp)
	movl	%esi, -4(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	gsm_debug_longwords0
.LBB291_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB291_7
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB291_1 Depth=1
	movabsq	$.L.str.1.5, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$7, %eax
	jl	.LBB291_6
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB291_1 Depth=1
	movl	$0, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB291_5
# %bb.4:                                # %if.then5
                                        #   in Loop: Header=BB291_1 Depth=1
	callq	gsm_debug_longwords1
.LBB291_5:                              # %if.end
                                        #   in Loop: Header=BB291_1 Depth=1
	jmp	.LBB291_6
.LBB291_6:                              # %if.end7
                                        #   in Loop: Header=BB291_1 Depth=1
	jmp	.LBB291_1
.LBB291_7:                              # %while.end
	callq	gsm_debug_longwords2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end291:
	.size	gsm_debug_longwords, .Lfunc_end291-gsm_debug_longwords
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_longwords0    # -- Begin function gsm_debug_longwords0
	.p2align	4, 0x90
	.type	gsm_debug_longwords0,@function
gsm_debug_longwords0:                   # @gsm_debug_longwords0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	(%rdi), %r8d
	movl	%r8d, 4(%rsp)
	movq	%rsi, 24(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.4.79, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	32(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end292:
	.size	gsm_debug_longwords0, .Lfunc_end292-gsm_debug_longwords0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_longwords1    # -- Begin function gsm_debug_longwords1
	.p2align	4, 0x90
	.type	gsm_debug_longwords1,@function
gsm_debug_longwords1:                   # @gsm_debug_longwords1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end293:
	.size	gsm_debug_longwords1, .Lfunc_end293-gsm_debug_longwords1
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_longwords2    # -- Begin function gsm_debug_longwords2
	.p2align	4, 0x90
	.type	gsm_debug_longwords2,@function
gsm_debug_longwords2:                   # @gsm_debug_longwords2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	popq	%rax
	retq
.Lfunc_end294:
	.size	gsm_debug_longwords2, .Lfunc_end294-gsm_debug_longwords2
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_longword      # -- Begin function gsm_debug_longword
	.p2align	4, 0x90
	.type	gsm_debug_longword,@function
gsm_debug_longword:                     # @gsm_debug_longword
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$222222240, -28(%rbp)   # imm = 0xD3ED7A0
	movl	$555555573, -24(%rbp)   # imm = 0x211D1AF5
	movl	$444444462, -20(%rbp)   # imm = 0x1A7DAF2E
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	guardMe
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movq	%rbx, -48(%rbp)
	movq	%r14, -40(%rbp)
	callq	gsm_debug_longword0
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end295:
	.size	gsm_debug_longword, .Lfunc_end295-gsm_debug_longword
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_longword0     # -- Begin function gsm_debug_longword0
	.p2align	4, 0x90
	.type	gsm_debug_longword0,@function
gsm_debug_longword0:                    # @gsm_debug_longword0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rcx
	movq	%rcx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rsi), %rdx
	movq	%rdx, 8(%rsp)
	movq	stderr(%rip), %rdi
	movl	$.L.str.2.6, %esi
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
.Lfunc_end296:
	.size	gsm_debug_longword0, .Lfunc_end296-gsm_debug_longword0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_word          # -- Begin function gsm_debug_word
	.p2align	4, 0x90
	.type	gsm_debug_word,@function
gsm_debug_word:                         # @gsm_debug_word
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-2(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movw	%si, -2(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gsm_debug_word0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end297:
	.size	gsm_debug_word, .Lfunc_end297-gsm_debug_word
	.cfi_endproc
                                        # -- End function
	.globl	gsm_debug_word0         # -- Begin function gsm_debug_word0
	.p2align	4, 0x90
	.type	gsm_debug_word0,@function
gsm_debug_word0:                        # @gsm_debug_word0
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movzwl	(%rdi), %eax
	movw	%ax, 14(%rsp)
	movq	%rsi, 24(%rsp)
	movq	(%rsi), %rdx
	movq	%rdx, 16(%rsp)
	movq	stderr(%rip), %rdi
	movswq	14(%rsp), %rcx
	movl	$.L.str.2.6, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movzwl	14(%rsp), %ecx
	movw	%cx, (%rax)
	addq	$40, %rsp
	retq
.Lfunc_end298:
	.size	gsm_debug_word0, .Lfunc_end298-gsm_debug_word0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_explode             # -- Begin function gsm_explode
	.p2align	4, 0x90
	.type	gsm_explode,@function
gsm_explode:                            # @gsm_explode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	sarl	$4, %eax
	andl	$15, %eax
	cmpl	$13, %eax
	je	.LBB299_2
# %bb.1:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB299_3
.LBB299_2:                              # %if.end
	leaq	-4(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gsm_explode0
.LBB299_3:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end299:
	.size	gsm_explode, .Lfunc_end299-gsm_explode
	.cfi_endproc
                                        # -- End function
	.globl	gsm_explode0            # -- Begin function gsm_explode0
	.p2align	4, 0x90
	.type	gsm_explode0,@function
gsm_explode0:                           # @gsm_explode0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, -40(%rsp)
	movq	%rdx, -24(%rsp)
	movq	(%rdx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rsp)
	movzbl	(%rcx), %ecx
	andl	$15, %ecx
	shll	$2, %ecx
	movw	%cx, (%rax)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, (%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$63, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 2(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 4(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 6(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	6(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 6(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$15, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 8(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$3, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 10(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	10(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 10(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 12(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 14(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	movq	-40(%rsp), %rcx
	movw	%ax, 16(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 18(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	18(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 18(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 20(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$31, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 22(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	22(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 22(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 24(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 26(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 28(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	28(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 28(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 30(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 32(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 34(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 36(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$3, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 38(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	38(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 38(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 40(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 42(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 44(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	44(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 46(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 48(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	movq	-40(%rsp), %rcx
	movw	%ax, 50(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 52(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	52(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 52(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 54(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$31, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 56(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	56(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 56(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 58(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 60(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 62(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	62(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 62(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 64(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 66(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 68(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 70(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$3, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 72(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	72(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 72(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 74(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 76(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 78(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	78(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 78(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 80(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 82(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	movq	-40(%rsp), %rcx
	movw	%ax, 84(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 86(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	86(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 86(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 88(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$31, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 90(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	90(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 90(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 92(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 94(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 96(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	96(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 96(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 98(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 100(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 102(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 104(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$3, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 106(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	106(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 106(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 108(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 110(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 112(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	112(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 112(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 114(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 116(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	movq	-40(%rsp), %rcx
	movw	%ax, 118(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 120(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	120(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 120(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 122(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$31, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 124(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	124(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 124(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 126(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 128(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 130(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	130(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 130(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 132(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 134(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$5, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 136(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$2, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 138(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$3, %eax
	addl	%eax, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 140(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$7, %eax
	movq	-40(%rsp), %rcx
	movzwl	140(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 140(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 142(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	%eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 144(%rcx)
	movq	-48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rsp)
	movzbl	(%rax), %eax
	andl	$1, %eax
	shll	$2, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 146(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$6, %eax
	movq	-40(%rsp), %rcx
	movzwl	146(%rcx), %edx
	orl	%eax, %edx
	movw	%dx, 146(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	shrl	$3, %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 148(%rcx)
	movq	-48(%rsp), %rax
	movzbl	(%rax), %eax
	andl	$7, %eax
	movq	-40(%rsp), %rcx
	movw	%ax, 150(%rcx)
	movl	$0, -28(%rsp)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movl	-28(%rsp), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end300:
	.size	gsm_explode0, .Lfunc_end300-gsm_explode0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_implode             # -- Begin function gsm_implode
	.p2align	4, 0x90
	.type	gsm_implode,@function
gsm_implode:                            # @gsm_implode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gsm_implode0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end301:
	.size	gsm_implode, .Lfunc_end301-gsm_implode
	.cfi_endproc
                                        # -- End function
	.globl	gsm_implode0            # -- Begin function gsm_implode0
	.p2align	4, 0x90
	.type	gsm_implode0,@function
gsm_implode0:                           # @gsm_implode0
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -32(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, -24(%rsp)
	movzwl	(%rcx), %ecx
	shrl	$2, %ecx
	andl	$15, %ecx
	orl	$208, %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rsp)
	movb	%cl, (%rax)
	movq	-24(%rsp), %rax
	movzwl	(%rax), %ecx
	shll	$6, %ecx
	movzwl	2(%rax), %eax
	andl	$63, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	4(%rax), %ecx
	movzwl	6(%rax), %eax
	shrl	$2, %eax
	andl	$7, %eax
	leal	(%rax,%rcx,8), %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	6(%rax), %ecx
	shll	$6, %ecx
	movzwl	8(%rax), %edx
	andl	$15, %edx
	leal	(%rcx,%rdx,4), %ecx
	movzwl	10(%rax), %eax
	shrl	$2, %eax
	andl	$3, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	10(%rax), %ecx
	shll	$6, %ecx
	movzwl	12(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	14(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	16(%rax), %ecx
	movzwl	18(%rax), %eax
	shrl	%eax
	andl	$1, %eax
	leal	(%rax,%rcx,2), %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	18(%rax), %ecx
	shll	$7, %ecx
	movzwl	20(%rax), %edx
	andl	$3, %edx
	shll	$5, %edx
	orl	%ecx, %edx
	movzwl	22(%rax), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%edx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	22(%rax), %ecx
	shll	$7, %ecx
	movzwl	24(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	26(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	28(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	28(%rax), %ecx
	shll	$6, %ecx
	movzwl	30(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	32(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	34(%rax), %ecx
	shll	$5, %ecx
	movzwl	36(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,4), %ecx
	movzwl	38(%rax), %eax
	shrl	%eax
	andl	$3, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	38(%rax), %ecx
	shll	$7, %ecx
	movzwl	40(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	42(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	44(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	44(%rax), %ecx
	shll	$6, %ecx
	movzwl	46(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	48(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	50(%rax), %ecx
	movzwl	52(%rax), %eax
	shrl	%eax
	andl	$1, %eax
	leal	(%rax,%rcx,2), %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	52(%rax), %ecx
	shll	$7, %ecx
	movzwl	54(%rax), %edx
	andl	$3, %edx
	shll	$5, %edx
	orl	%ecx, %edx
	movzwl	56(%rax), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%edx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	56(%rax), %ecx
	shll	$7, %ecx
	movzwl	58(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	60(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	62(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	62(%rax), %ecx
	shll	$6, %ecx
	movzwl	64(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	66(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	68(%rax), %ecx
	shll	$5, %ecx
	movzwl	70(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,4), %ecx
	movzwl	72(%rax), %eax
	shrl	%eax
	andl	$3, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	72(%rax), %ecx
	shll	$7, %ecx
	movzwl	74(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	76(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	78(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	78(%rax), %ecx
	shll	$6, %ecx
	movzwl	80(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	82(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	84(%rax), %ecx
	movzwl	86(%rax), %eax
	shrl	%eax
	andl	$1, %eax
	leal	(%rax,%rcx,2), %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	86(%rax), %ecx
	shll	$7, %ecx
	movzwl	88(%rax), %edx
	andl	$3, %edx
	shll	$5, %edx
	orl	%ecx, %edx
	movzwl	90(%rax), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%edx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	90(%rax), %ecx
	shll	$7, %ecx
	movzwl	92(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	94(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	96(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	96(%rax), %ecx
	shll	$6, %ecx
	movzwl	98(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	100(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	102(%rax), %ecx
	shll	$5, %ecx
	movzwl	104(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,4), %ecx
	movzwl	106(%rax), %eax
	shrl	%eax
	andl	$3, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	106(%rax), %ecx
	shll	$7, %ecx
	movzwl	108(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	110(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	112(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	112(%rax), %ecx
	shll	$6, %ecx
	movzwl	114(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	116(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	118(%rax), %ecx
	movzwl	120(%rax), %eax
	shrl	%eax
	andl	$1, %eax
	leal	(%rax,%rcx,2), %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	120(%rax), %ecx
	shll	$7, %ecx
	movzwl	122(%rax), %edx
	andl	$3, %edx
	shll	$5, %edx
	orl	%ecx, %edx
	movzwl	124(%rax), %eax
	shrl	%eax
	andl	$31, %eax
	orl	%edx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	124(%rax), %ecx
	shll	$7, %ecx
	movzwl	126(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	128(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	130(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	130(%rax), %ecx
	shll	$6, %ecx
	movzwl	132(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	134(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	136(%rax), %ecx
	shll	$5, %ecx
	movzwl	138(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,4), %ecx
	movzwl	140(%rax), %eax
	shrl	%eax
	andl	$3, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	140(%rax), %ecx
	shll	$7, %ecx
	movzwl	142(%rax), %edx
	andl	$7, %edx
	shll	$4, %edx
	orl	%ecx, %edx
	movzwl	144(%rax), %ecx
	andl	$7, %ecx
	leal	(%rdx,%rcx,2), %ecx
	movzwl	146(%rax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-24(%rsp), %rax
	movzwl	146(%rax), %ecx
	shll	$6, %ecx
	movzwl	148(%rax), %edx
	andl	$7, %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	150(%rax), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movq	-32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rsp)
	movb	%al, (%rcx)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end302:
	.size	gsm_implode0, .Lfunc_end302-gsm_implode0
	.cfi_endproc
                                        # -- End function
	.globl	gsm_print               # -- Begin function gsm_print
	.p2align	4, 0x90
	.type	gsm_print,@function
gsm_print:                              # @gsm_print
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	sarl	$4, %eax
	andl	$15, %eax
	cmpl	$13, %eax
	je	.LBB303_2
# %bb.1:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB303_3
.LBB303_2:                              # %if.end
	leaq	-4(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gsm_print0
.LBB303_3:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end303:
	.size	gsm_print, .Lfunc_end303-gsm_print
	.cfi_endproc
                                        # -- End function
	.globl	gsm_print0              # -- Begin function gsm_print0
	.p2align	4, 0x90
	.type	gsm_print0,@function
gsm_print0:                             # @gsm_print0
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 224(%rsp)
	movl	(%rdi), %eax
	movl	%eax, 204(%rsp)
	movq	%rsi, 216(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 56(%rsp)
	movq	%rdx, 208(%rsp)
	movq	(%rdx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$2, %ecx
	movw	%cx, 32(%rsp)
	movzbl	1(%rax), %ecx
	shrl	$6, %ecx
	orl	32(%rsp), %ecx
	movw	%cx, 32(%rsp)
	leaq	2(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	movw	%cx, 34(%rsp)
	movzbl	2(%rax), %ecx
	shrl	$3, %ecx
	movw	%cx, 36(%rsp)
	leaq	3(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	2(%rax), %ecx
	andl	$7, %ecx
	shll	$2, %ecx
	movw	%cx, 38(%rsp)
	movzbl	3(%rax), %ecx
	shrl	$6, %ecx
	movzwl	38(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 38(%rsp)
	movzbl	3(%rax), %ecx
	shrl	$2, %ecx
	andl	$15, %ecx
	movw	%cx, 40(%rsp)
	leaq	4(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	3(%rax), %ecx
	andl	$3, %ecx
	shll	$2, %ecx
	movw	%cx, 42(%rsp)
	movzbl	4(%rax), %ecx
	shrl	$6, %ecx
	movzwl	42(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 42(%rsp)
	movzbl	4(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 44(%rsp)
	leaq	5(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	4(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 46(%rsp)
	movzbl	5(%rax), %ecx
	shrl	%ecx
	movw	%cx, 196(%rsp)
	leaq	6(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	5(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 24(%rsp)
	movzbl	6(%rax), %ecx
	shrl	$7, %ecx
	movzwl	24(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 24(%rsp)
	movzbl	6(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 188(%rsp)
	leaq	7(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	6(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 16(%rsp)
	movzbl	7(%rax), %ecx
	shrl	$7, %ecx
	movzwl	16(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 16(%rsp)
	movzbl	7(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 64(%rsp)
	movzbl	7(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 66(%rsp)
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	7(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 68(%rsp)
	movzbl	8(%rax), %ecx
	shrl	$6, %ecx
	orl	68(%rsp), %ecx
	movw	%cx, 68(%rsp)
	movzbl	8(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 70(%rsp)
	leaq	9(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	8(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 72(%rsp)
	movzbl	9(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 74(%rsp)
	movzbl	9(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 76(%rsp)
	leaq	10(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	9(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 78(%rsp)
	movzbl	10(%rax), %ecx
	shrl	$7, %ecx
	movzwl	78(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 78(%rsp)
	movzbl	10(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 80(%rsp)
	movzbl	10(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 82(%rsp)
	leaq	11(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	10(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 84(%rsp)
	movzbl	11(%rax), %ecx
	shrl	$6, %ecx
	orl	84(%rsp), %ecx
	movw	%cx, 84(%rsp)
	movzbl	11(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 86(%rsp)
	leaq	12(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	11(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 88(%rsp)
	movzbl	12(%rax), %ecx
	shrl	%ecx
	movw	%cx, 198(%rsp)
	leaq	13(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	12(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 26(%rsp)
	movzbl	13(%rax), %ecx
	shrl	$7, %ecx
	movzwl	26(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 26(%rsp)
	movzbl	13(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 190(%rsp)
	leaq	14(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	13(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 18(%rsp)
	movzbl	14(%rax), %ecx
	shrl	$7, %ecx
	movzwl	18(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 18(%rsp)
	movzbl	14(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 90(%rsp)
	movzbl	14(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 92(%rsp)
	leaq	15(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	14(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 94(%rsp)
	movzbl	15(%rax), %ecx
	shrl	$6, %ecx
	movzwl	94(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 94(%rsp)
	movzbl	15(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 96(%rsp)
	leaq	16(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	15(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 98(%rsp)
	movzbl	16(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 100(%rsp)
	movzbl	16(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 102(%rsp)
	leaq	17(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	16(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 104(%rsp)
	movzbl	17(%rax), %ecx
	shrl	$7, %ecx
	orl	104(%rsp), %ecx
	movw	%cx, 104(%rsp)
	movzbl	17(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 106(%rsp)
	movzbl	17(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 108(%rsp)
	leaq	18(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	17(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 110(%rsp)
	movzbl	18(%rax), %ecx
	shrl	$6, %ecx
	movzwl	110(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 110(%rsp)
	movzbl	18(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 112(%rsp)
	leaq	19(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	18(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 114(%rsp)
	movzbl	19(%rax), %ecx
	shrl	%ecx
	movw	%cx, 200(%rsp)
	leaq	20(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	19(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 28(%rsp)
	movzbl	20(%rax), %ecx
	shrl	$7, %ecx
	movzwl	28(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 28(%rsp)
	movzbl	20(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 192(%rsp)
	leaq	21(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	20(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 20(%rsp)
	movzbl	21(%rax), %ecx
	shrl	$7, %ecx
	movzwl	20(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 20(%rsp)
	movzbl	21(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 116(%rsp)
	movzbl	21(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 118(%rsp)
	leaq	22(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	21(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 120(%rsp)
	movzbl	22(%rax), %ecx
	shrl	$6, %ecx
	orl	120(%rsp), %ecx
	movw	%cx, 120(%rsp)
	movzbl	22(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 122(%rsp)
	leaq	23(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	22(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 124(%rsp)
	movzbl	23(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 126(%rsp)
	movzbl	23(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 128(%rsp)
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	23(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 130(%rsp)
	movzbl	24(%rax), %ecx
	shrl	$7, %ecx
	movzwl	130(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 130(%rsp)
	movzbl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 132(%rsp)
	movzbl	24(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 134(%rsp)
	leaq	25(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	24(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 136(%rsp)
	movzbl	25(%rax), %ecx
	shrl	$6, %ecx
	orl	136(%rsp), %ecx
	movw	%cx, 136(%rsp)
	movzbl	25(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 138(%rsp)
	leaq	26(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	25(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 140(%rsp)
	movzbl	26(%rax), %ecx
	shrl	%ecx
	movw	%cx, 202(%rsp)
	leaq	27(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	26(%rax), %ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	movw	%cx, 30(%rsp)
	movzbl	27(%rax), %ecx
	shrl	$7, %ecx
	movzwl	30(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 30(%rsp)
	movzbl	27(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movw	%cx, 194(%rsp)
	leaq	28(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	27(%rax), %ecx
	andl	$31, %ecx
	addl	%ecx, %ecx
	movw	%cx, 22(%rsp)
	movzbl	28(%rax), %ecx
	shrl	$7, %ecx
	movzwl	22(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 22(%rsp)
	movzbl	28(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 142(%rsp)
	movzbl	28(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 144(%rsp)
	leaq	29(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	28(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 146(%rsp)
	movzbl	29(%rax), %ecx
	shrl	$6, %ecx
	movzwl	146(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 146(%rsp)
	movzbl	29(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 148(%rsp)
	leaq	30(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	29(%rax), %ecx
	andl	$7, %ecx
	movw	%cx, 150(%rsp)
	movzbl	30(%rax), %ecx
	shrl	$5, %ecx
	movw	%cx, 152(%rsp)
	movzbl	30(%rax), %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	movw	%cx, 154(%rsp)
	leaq	31(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	30(%rax), %ecx
	andl	$3, %ecx
	addl	%ecx, %ecx
	movw	%cx, 156(%rsp)
	movzbl	31(%rax), %ecx
	shrl	$7, %ecx
	orl	156(%rsp), %ecx
	movw	%cx, 156(%rsp)
	movzbl	31(%rax), %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movw	%cx, 158(%rsp)
	movzbl	31(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movw	%cx, 160(%rsp)
	leaq	32(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movzbl	31(%rax), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movw	%cx, 162(%rsp)
	movzbl	32(%rax), %ecx
	shrl	$6, %ecx
	movzwl	162(%rsp), %edx
	orl	%ecx, %edx
	movw	%dx, 162(%rsp)
	movzbl	32(%rax), %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movw	%cx, 164(%rsp)
	movzbl	32(%rax), %eax
	andl	$7, %eax
	movw	%ax, 166(%rsp)
	movq	56(%rsp), %rdi
	movswl	32(%rsp), %edx
	movswl	34(%rsp), %ecx
	movswl	36(%rsp), %r8d
	movswl	38(%rsp), %r9d
	movswl	40(%rsp), %r10d
	movswl	42(%rsp), %r11d
	movswl	44(%rsp), %r14d
	movswl	46(%rsp), %ebx
	movl	$.L.str.50.90, %esi
	movl	$0, %eax
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	fprintf
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	56(%rsp), %rdi
	movswl	196(%rsp), %edx
	movswl	24(%rsp), %ecx
	movswl	188(%rsp), %r8d
	movswl	16(%rsp), %r9d
	movl	$.L.str.1.51, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	56(%rsp), %rdi
	movswl	64(%rsp), %edx
	movswl	66(%rsp), %ecx
	movswl	68(%rsp), %r8d
	movswl	70(%rsp), %r9d
	movswl	72(%rsp), %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movswl	74(%rsp), %r11d
	movswl	76(%rsp), %r14d
	movswl	78(%rsp), %r15d
	movswl	80(%rsp), %r12d
	movswl	82(%rsp), %r13d
	movswl	84(%rsp), %ebx
	movswl	86(%rsp), %ebp
	movswl	88(%rsp), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2.52, %esi
	movl	$0, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)               # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movq	56(%rsp), %rdi
	movswl	198(%rsp), %edx
	movswl	26(%rsp), %ecx
	movswl	190(%rsp), %r8d
	movswl	18(%rsp), %r9d
	movl	$.L.str.3.53, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	56(%rsp), %rdi
	movswl	90(%rsp), %edx
	movswl	92(%rsp), %ecx
	movswl	94(%rsp), %r8d
	movswl	96(%rsp), %r9d
	movswl	98(%rsp), %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movswl	100(%rsp), %r11d
	movswl	102(%rsp), %r14d
	movswl	104(%rsp), %r15d
	movswl	106(%rsp), %r12d
	movswl	108(%rsp), %r13d
	movswl	110(%rsp), %ebx
	movswl	112(%rsp), %ebp
	movswl	114(%rsp), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2.52, %esi
	movl	$0, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)               # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movq	56(%rsp), %rdi
	movswl	200(%rsp), %edx
	movswl	28(%rsp), %ecx
	movswl	192(%rsp), %r8d
	movswl	20(%rsp), %r9d
	movl	$.L.str.4.54, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	56(%rsp), %rdi
	movswl	116(%rsp), %edx
	movswl	118(%rsp), %ecx
	movswl	120(%rsp), %r8d
	movswl	122(%rsp), %r9d
	movswl	124(%rsp), %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movswl	126(%rsp), %r11d
	movswl	128(%rsp), %r14d
	movswl	130(%rsp), %r15d
	movswl	132(%rsp), %r12d
	movswl	134(%rsp), %r13d
	movswl	136(%rsp), %ebx
	movswl	138(%rsp), %ebp
	movswl	140(%rsp), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2.52, %esi
	movl	$0, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)               # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movq	56(%rsp), %rdi
	movswl	202(%rsp), %edx
	movswl	30(%rsp), %ecx
	movswl	194(%rsp), %r8d
	movswl	22(%rsp), %r9d
	movl	$.L.str.5.55, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	56(%rsp), %rdi
	movswl	142(%rsp), %edx
	movswl	144(%rsp), %ecx
	movswl	146(%rsp), %r8d
	movswl	148(%rsp), %r9d
	movswl	150(%rsp), %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movswl	152(%rsp), %r11d
	movswl	154(%rsp), %r14d
	movswl	156(%rsp), %r15d
	movswl	158(%rsp), %r12d
	movswl	160(%rsp), %r13d
	movswl	162(%rsp), %ebx
	movswl	164(%rsp), %ebp
	movswl	166(%rsp), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2.52, %esi
	movl	$0, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)               # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movl	$0, 204(%rsp)
	movq	208(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	216(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	224(%rsp), %rax
	movl	204(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end304:
	.size	gsm_print0, .Lfunc_end304-gsm_print0
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
.LBB305_1:                              # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB305_3
# %bb.2:                                #   in Loop: Header=BB305_1 Depth=1
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
	jmp	.LBB305_1
.LBB305_3:
	movzbl	-1(%rbp), %eax
	movl	-20(%rbp), %ecx
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB305_9
# %bb.4:
	movabsq	$.L.str.62, %rdi
	movabsq	$.L.str.1.63, %rsi
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
.LBB305_5:                              # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB305_8
# %bb.6:                                #   in Loop: Header=BB305_5 Depth=1
	movabsq	$.L.str.2.64, %rdi
	movq	-40(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movb	$0, %al
	callq	printf
# %bb.7:                                #   in Loop: Header=BB305_5 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB305_5
.LBB305_8:
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	free
.LBB305_9:
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbp
	retq
.Lfunc_end305:
	.size	guardMe, .Lfunc_end305-guardMe
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
.Lfunc_end306:
	.size	logHash, .Lfunc_end306-logHash
	.cfi_endproc
                                        # -- End function
	.type	f_decode,@object        # @f_decode
	.bss
	.globl	f_decode
	.p2align	2
f_decode:
	.long	0                       # 0x0
	.size	f_decode, 4

	.type	f_cat,@object           # @f_cat
	.globl	f_cat
	.p2align	2
f_cat:
	.long	0                       # 0x0
	.size	f_cat, 4

	.type	f_force,@object         # @f_force
	.globl	f_force
	.p2align	2
f_force:
	.long	0                       # 0x0
	.size	f_force, 4

	.type	f_precious,@object      # @f_precious
	.globl	f_precious
	.p2align	2
f_precious:
	.long	0                       # 0x0
	.size	f_precious, 4

	.type	f_fast,@object          # @f_fast
	.globl	f_fast
	.p2align	2
f_fast:
	.long	0                       # 0x0
	.size	f_fast, 4

	.type	f_verbose,@object       # @f_verbose
	.globl	f_verbose
	.p2align	2
f_verbose:
	.long	0                       # 0x0
	.size	f_verbose, 4

	.type	f_audio,@object         # @f_audio
	.data
	.globl	f_audio
	.p2align	3
f_audio:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	audio_init_input
	.quad	audio_init_output
	.quad	ulaw_input
	.quad	ulaw_output
	.size	f_audio, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"audio"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"8 kHz, 8 bit u-law encoding with Sun audio header"
	.size	.L.str.1, 50

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	".au"
	.size	.L.str.2, 4

	.type	s2u,@object             # @s2u
	.data
	.p2align	4
s2u:
	.ascii	"\377\376\375\374\373\372\371\370\367\366\365\364\363\362\361\360\357\357\356\356\355\355\354\354\353\353\352\352\351\351\350\350\347\347\346\346\345\345\344\344\343\343\342\342\341\341\340\340\337\337\337\337\336\336\336\336\335\335\335\335\334\334\334\334\333\333\333\333\332\332\332\332\331\331\331\331\330\330\330\330\327\327\327\327\326\326\326\326\325\325\325\325\324\324\324\324\323\323\323\323\322\322\322\322\321\321\321\321\320\320\320\320\317\317\317\317\317\317\317\317\316\316\316\316\316\316\316\316\315\315\315\315\315\315\315\315\314\314\314\314\314\314\314\314\313\313\313\313\313\313\313\313\312\312\312\312\312\312\312\312\311\311\311\311\311\311\311\311\310\310\310\310\310\310\310\310\307\307\307\307\307\307\307\307\306\306\306\306\306\306\306\306\305\305\305\305\305\305\305\305\304\304\304\304\304\304\304\304\303\303\303\303\303\303\303\303\303\302\302\302\302\302\302\302\302\301\301\301\301\301\301\301\301\300\300\300\300\300\300\300\300\277\277\277\277\277\277\277\277\277\277\277\277\277\277\277\277\276\276\276\276\276\276\276\276\276\276\276\276\276\276\276\276\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\273\273\273\273\273\273\273\273\273\273\273\273\273\273\273\273\272\272\272\272\272\272\272\272\272\272\272\272\272\272\272\272\271\271\271\271\271\271\271\271\271\271\271\271\271\271\271\271\270\270\270\270\270\270\270\270\270\270\270\270\270\270\270\270\267\267\267\267\267\267\267\267\267\267\267\267\267\267\267\267\266\266\266\266\266\266\266\266\266\266\266\266\266\266\266\266\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\263\263\263\263\263\263\263\263\263\263\263\263\263\263\263\263\262\262\262\262\262\262\262\262\262\262\262\262\262\262\262\262\262\261\261\261\261\261\261\261\261\261\261\261\261\261\261\261\261\260\260\260\260\260\260\260\260\260\260\260\260\260\260\260\260\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\257\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\256\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\253\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\252\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\251\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\250\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\247\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\246\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\243\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\242\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\240\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\237\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\236\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\233\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\232\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\231\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\230\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\227\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\226\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\223\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\222\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\217\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\216\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\213\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\212\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\211\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\210\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\207\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\206\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\203\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\202\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\023\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\036\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037\037                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~"
	.size	s2u, 8192

	.type	out,@object             # @out
	.comm	out,8,8
	.type	in,@object              # @in
	.comm	in,8,8
	.type	u2s,@object             # @u2s
	.p2align	4
u2s:
	.short	33280                   # 0x8200
	.short	34308                   # 0x8604
	.short	35336                   # 0x8a08
	.short	36364                   # 0x8e0c
	.short	37393                   # 0x9211
	.short	38421                   # 0x9615
	.short	39449                   # 0x9a19
	.short	40477                   # 0x9e1d
	.short	41505                   # 0xa221
	.short	42534                   # 0xa626
	.short	43562                   # 0xaa2a
	.short	44590                   # 0xae2e
	.short	45618                   # 0xb232
	.short	46647                   # 0xb637
	.short	47675                   # 0xba3b
	.short	48703                   # 0xbe3f
	.short	49474                   # 0xc142
	.short	49988                   # 0xc344
	.short	50503                   # 0xc547
	.short	51017                   # 0xc749
	.short	51531                   # 0xc94b
	.short	52045                   # 0xcb4d
	.short	52559                   # 0xcd4f
	.short	53073                   # 0xcf51
	.short	53587                   # 0xd153
	.short	54101                   # 0xd355
	.short	54616                   # 0xd558
	.short	55130                   # 0xd75a
	.short	55644                   # 0xd95c
	.short	56158                   # 0xdb5e
	.short	56672                   # 0xdd60
	.short	57186                   # 0xdf62
	.short	57572                   # 0xe0e4
	.short	57829                   # 0xe1e5
	.short	58086                   # 0xe2e6
	.short	58343                   # 0xe3e7
	.short	58600                   # 0xe4e8
	.short	58857                   # 0xe5e9
	.short	59114                   # 0xe6ea
	.short	59371                   # 0xe7eb
	.short	59628                   # 0xe8ec
	.short	59885                   # 0xe9ed
	.short	60142                   # 0xeaee
	.short	60399                   # 0xebef
	.short	60656                   # 0xecf0
	.short	60913                   # 0xedf1
	.short	61171                   # 0xeef3
	.short	61428                   # 0xeff4
	.short	61620                   # 0xf0b4
	.short	61749                   # 0xf135
	.short	61877                   # 0xf1b5
	.short	62006                   # 0xf236
	.short	62134                   # 0xf2b6
	.short	62263                   # 0xf337
	.short	62392                   # 0xf3b8
	.short	62520                   # 0xf438
	.short	62649                   # 0xf4b9
	.short	62777                   # 0xf539
	.short	62906                   # 0xf5ba
	.short	63034                   # 0xf63a
	.short	63163                   # 0xf6bb
	.short	63291                   # 0xf73b
	.short	63420                   # 0xf7bc
	.short	63548                   # 0xf83c
	.short	63645                   # 0xf89d
	.short	63709                   # 0xf8dd
	.short	63773                   # 0xf91d
	.short	63838                   # 0xf95e
	.short	63902                   # 0xf99e
	.short	63966                   # 0xf9de
	.short	64030                   # 0xfa1e
	.short	64095                   # 0xfa5f
	.short	64159                   # 0xfa9f
	.short	64223                   # 0xfadf
	.short	64287                   # 0xfb1f
	.short	64352                   # 0xfb60
	.short	64416                   # 0xfba0
	.short	64480                   # 0xfbe0
	.short	64544                   # 0xfc20
	.short	64609                   # 0xfc61
	.short	64657                   # 0xfc91
	.short	64689                   # 0xfcb1
	.short	64721                   # 0xfcd1
	.short	64753                   # 0xfcf1
	.short	64785                   # 0xfd11
	.short	64818                   # 0xfd32
	.short	64850                   # 0xfd52
	.short	64882                   # 0xfd72
	.short	64914                   # 0xfd92
	.short	64946                   # 0xfdb2
	.short	64978                   # 0xfdd2
	.short	65010                   # 0xfdf2
	.short	65042                   # 0xfe12
	.short	65075                   # 0xfe33
	.short	65107                   # 0xfe53
	.short	65139                   # 0xfe73
	.short	65163                   # 0xfe8b
	.short	65179                   # 0xfe9b
	.short	65195                   # 0xfeab
	.short	65211                   # 0xfebb
	.short	65227                   # 0xfecb
	.short	65243                   # 0xfedb
	.short	65259                   # 0xfeeb
	.short	65275                   # 0xfefb
	.short	65291                   # 0xff0b
	.short	65308                   # 0xff1c
	.short	65324                   # 0xff2c
	.short	65340                   # 0xff3c
	.short	65356                   # 0xff4c
	.short	65372                   # 0xff5c
	.short	65388                   # 0xff6c
	.short	65404                   # 0xff7c
	.short	65416                   # 0xff88
	.short	65424                   # 0xff90
	.short	65432                   # 0xff98
	.short	65440                   # 0xffa0
	.short	65448                   # 0xffa8
	.short	65456                   # 0xffb0
	.short	65464                   # 0xffb8
	.short	65472                   # 0xffc0
	.short	65480                   # 0xffc8
	.short	65488                   # 0xffd0
	.short	65496                   # 0xffd8
	.short	65504                   # 0xffe0
	.short	65512                   # 0xffe8
	.short	65520                   # 0xfff0
	.short	65528                   # 0xfff8
	.short	0                       # 0x0
	.short	32256                   # 0x7e00
	.short	31228                   # 0x79fc
	.short	30200                   # 0x75f8
	.short	29172                   # 0x71f4
	.short	28143                   # 0x6def
	.short	27115                   # 0x69eb
	.short	26087                   # 0x65e7
	.short	25059                   # 0x61e3
	.short	24031                   # 0x5ddf
	.short	23002                   # 0x59da
	.short	21974                   # 0x55d6
	.short	20946                   # 0x51d2
	.short	19918                   # 0x4dce
	.short	18889                   # 0x49c9
	.short	17861                   # 0x45c5
	.short	16833                   # 0x41c1
	.short	16062                   # 0x3ebe
	.short	15548                   # 0x3cbc
	.short	15033                   # 0x3ab9
	.short	14519                   # 0x38b7
	.short	14005                   # 0x36b5
	.short	13491                   # 0x34b3
	.short	12977                   # 0x32b1
	.short	12463                   # 0x30af
	.short	11949                   # 0x2ead
	.short	11435                   # 0x2cab
	.short	10920                   # 0x2aa8
	.short	10406                   # 0x28a6
	.short	9892                    # 0x26a4
	.short	9378                    # 0x24a2
	.short	8864                    # 0x22a0
	.short	8350                    # 0x209e
	.short	7964                    # 0x1f1c
	.short	7707                    # 0x1e1b
	.short	7450                    # 0x1d1a
	.short	7193                    # 0x1c19
	.short	6936                    # 0x1b18
	.short	6679                    # 0x1a17
	.short	6422                    # 0x1916
	.short	6165                    # 0x1815
	.short	5908                    # 0x1714
	.short	5651                    # 0x1613
	.short	5394                    # 0x1512
	.short	5137                    # 0x1411
	.short	4880                    # 0x1310
	.short	4623                    # 0x120f
	.short	4365                    # 0x110d
	.short	4108                    # 0x100c
	.short	3916                    # 0xf4c
	.short	3787                    # 0xecb
	.short	3659                    # 0xe4b
	.short	3530                    # 0xdca
	.short	3402                    # 0xd4a
	.short	3273                    # 0xcc9
	.short	3144                    # 0xc48
	.short	3016                    # 0xbc8
	.short	2887                    # 0xb47
	.short	2759                    # 0xac7
	.short	2630                    # 0xa46
	.short	2502                    # 0x9c6
	.short	2373                    # 0x945
	.short	2245                    # 0x8c5
	.short	2116                    # 0x844
	.short	1988                    # 0x7c4
	.short	1891                    # 0x763
	.short	1827                    # 0x723
	.short	1763                    # 0x6e3
	.short	1698                    # 0x6a2
	.short	1634                    # 0x662
	.short	1570                    # 0x622
	.short	1506                    # 0x5e2
	.short	1441                    # 0x5a1
	.short	1377                    # 0x561
	.short	1313                    # 0x521
	.short	1249                    # 0x4e1
	.short	1184                    # 0x4a0
	.short	1120                    # 0x460
	.short	1056                    # 0x420
	.short	992                     # 0x3e0
	.short	927                     # 0x39f
	.short	879                     # 0x36f
	.short	847                     # 0x34f
	.short	815                     # 0x32f
	.short	783                     # 0x30f
	.short	751                     # 0x2ef
	.short	718                     # 0x2ce
	.short	686                     # 0x2ae
	.short	654                     # 0x28e
	.short	622                     # 0x26e
	.short	590                     # 0x24e
	.short	558                     # 0x22e
	.short	526                     # 0x20e
	.short	494                     # 0x1ee
	.short	461                     # 0x1cd
	.short	429                     # 0x1ad
	.short	397                     # 0x18d
	.short	373                     # 0x175
	.short	357                     # 0x165
	.short	341                     # 0x155
	.short	325                     # 0x145
	.short	309                     # 0x135
	.short	293                     # 0x125
	.short	277                     # 0x115
	.short	261                     # 0x105
	.short	245                     # 0xf5
	.short	228                     # 0xe4
	.short	212                     # 0xd4
	.short	196                     # 0xc4
	.short	180                     # 0xb4
	.short	164                     # 0xa4
	.short	148                     # 0x94
	.short	132                     # 0x84
	.short	120                     # 0x78
	.short	112                     # 0x70
	.short	104                     # 0x68
	.short	96                      # 0x60
	.short	88                      # 0x58
	.short	80                      # 0x50
	.short	72                      # 0x48
	.short	64                      # 0x40
	.short	56                      # 0x38
	.short	48                      # 0x30
	.short	40                      # 0x28
	.short	32                      # 0x20
	.short	24                      # 0x18
	.short	16                      # 0x10
	.short	8                       # 0x8
	.short	0                       # 0x0
	.size	u2s, 512

	.type	.L.str.3.65,@object     # @.str.3.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3.65:
	.asciz	".snd"
	.size	.L.str.3.65, 5

	.type	progname,@object        # @progname
	.comm	progname,8,8
	.type	inname,@object          # @inname
	.comm	inname,8,8
	.type	.L.str.1.15,@object     # @.str.1.15
.L.str.1.15:
	.asciz	"stdin"
	.size	.L.str.1.15, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%s: bad (missing?) header in Sun audio file \"%s\";\n\tTry one of -u, -a, -l instead (%s -h for help).\n"
	.size	.L.str.61, 100

	.type	input,@object           # @input
	.comm	input,8,8
	.type	.L.str.2.62,@object     # @.str.2.62
.L.str.2.62:
	.asciz	"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\n"
	.size	.L.str.2.62, 76

	.type	a2s,@object             # @a2s
	.data
	.p2align	4
a2s:
	.short	5120                    # 0x1400
	.short	60160                   # 0xeb00
	.short	320                     # 0x140
	.short	65200                   # 0xfeb0
	.short	20480                   # 0x5000
	.short	44032                   # 0xac00
	.short	1280                    # 0x500
	.short	64192                   # 0xfac0
	.short	2560                    # 0xa00
	.short	62848                   # 0xf580
	.short	64                      # 0x40
	.short	65456                   # 0xffb0
	.short	10240                   # 0x2800
	.short	54784                   # 0xd600
	.short	640                     # 0x280
	.short	64864                   # 0xfd60
	.short	7168                    # 0x1c00
	.short	58112                   # 0xe300
	.short	448                     # 0x1c0
	.short	65072                   # 0xfe30
	.short	28672                   # 0x7000
	.short	35840                   # 0x8c00
	.short	1792                    # 0x700
	.short	63680                   # 0xf8c0
	.short	3584                    # 0xe00
	.short	61824                   # 0xf180
	.short	192                     # 0xc0
	.short	65328                   # 0xff30
	.short	14336                   # 0x3800
	.short	50688                   # 0xc600
	.short	896                     # 0x380
	.short	64608                   # 0xfc60
	.short	4096                    # 0x1000
	.short	61184                   # 0xef00
	.short	256                     # 0x100
	.short	65264                   # 0xfef0
	.short	16384                   # 0x4000
	.short	48128                   # 0xbc00
	.short	1024                    # 0x400
	.short	64448                   # 0xfbc0
	.short	2048                    # 0x800
	.short	63360                   # 0xf780
	.short	0                       # 0x0
	.short	65520                   # 0xfff0
	.short	8192                    # 0x2000
	.short	56832                   # 0xde00
	.short	512                     # 0x200
	.short	64992                   # 0xfde0
	.short	6144                    # 0x1800
	.short	59136                   # 0xe700
	.short	384                     # 0x180
	.short	65136                   # 0xfe70
	.short	24576                   # 0x6000
	.short	39936                   # 0x9c00
	.short	1536                    # 0x600
	.short	63936                   # 0xf9c0
	.short	3072                    # 0xc00
	.short	62336                   # 0xf380
	.short	128                     # 0x80
	.short	65392                   # 0xff70
	.short	12288                   # 0x3000
	.short	52736                   # 0xce00
	.short	768                     # 0x300
	.short	64736                   # 0xfce0
	.short	5632                    # 0x1600
	.short	59648                   # 0xe900
	.short	352                     # 0x160
	.short	65168                   # 0xfe90
	.short	22528                   # 0x5800
	.short	41984                   # 0xa400
	.short	1408                    # 0x580
	.short	64064                   # 0xfa40
	.short	2816                    # 0xb00
	.short	62592                   # 0xf480
	.short	96                      # 0x60
	.short	65424                   # 0xff90
	.short	11264                   # 0x2c00
	.short	53760                   # 0xd200
	.short	704                     # 0x2c0
	.short	64800                   # 0xfd20
	.short	7680                    # 0x1e00
	.short	57600                   # 0xe100
	.short	480                     # 0x1e0
	.short	65040                   # 0xfe10
	.short	30720                   # 0x7800
	.short	33792                   # 0x8400
	.short	1920                    # 0x780
	.short	63552                   # 0xf840
	.short	3840                    # 0xf00
	.short	61568                   # 0xf080
	.short	224                     # 0xe0
	.short	65296                   # 0xff10
	.short	15360                   # 0x3c00
	.short	49664                   # 0xc200
	.short	960                     # 0x3c0
	.short	64544                   # 0xfc20
	.short	4608                    # 0x1200
	.short	60672                   # 0xed00
	.short	288                     # 0x120
	.short	65232                   # 0xfed0
	.short	18432                   # 0x4800
	.short	46080                   # 0xb400
	.short	1152                    # 0x480
	.short	64320                   # 0xfb40
	.short	2304                    # 0x900
	.short	63104                   # 0xf680
	.short	32                      # 0x20
	.short	65488                   # 0xffd0
	.short	9216                    # 0x2400
	.short	55808                   # 0xda00
	.short	576                     # 0x240
	.short	64928                   # 0xfda0
	.short	6656                    # 0x1a00
	.short	58624                   # 0xe500
	.short	416                     # 0x1a0
	.short	65104                   # 0xfe50
	.short	26624                   # 0x6800
	.short	37888                   # 0x9400
	.short	1664                    # 0x680
	.short	63808                   # 0xf940
	.short	3328                    # 0xd00
	.short	62080                   # 0xf280
	.short	160                     # 0xa0
	.short	65360                   # 0xff50
	.short	13312                   # 0x3400
	.short	51712                   # 0xca00
	.short	832                     # 0x340
	.short	64672                   # 0xfca0
	.short	5376                    # 0x1500
	.short	59904                   # 0xea00
	.short	336                     # 0x150
	.short	65184                   # 0xfea0
	.short	21504                   # 0x5400
	.short	43008                   # 0xa800
	.short	1344                    # 0x540
	.short	64128                   # 0xfa80
	.short	2688                    # 0xa80
	.short	62720                   # 0xf500
	.short	80                      # 0x50
	.short	65440                   # 0xffa0
	.short	10752                   # 0x2a00
	.short	54272                   # 0xd400
	.short	672                     # 0x2a0
	.short	64832                   # 0xfd40
	.short	7424                    # 0x1d00
	.short	57856                   # 0xe200
	.short	464                     # 0x1d0
	.short	65056                   # 0xfe20
	.short	29696                   # 0x7400
	.short	34816                   # 0x8800
	.short	1856                    # 0x740
	.short	63616                   # 0xf880
	.short	3712                    # 0xe80
	.short	61696                   # 0xf100
	.short	208                     # 0xd0
	.short	65312                   # 0xff20
	.short	14848                   # 0x3a00
	.short	50176                   # 0xc400
	.short	928                     # 0x3a0
	.short	64576                   # 0xfc40
	.short	4352                    # 0x1100
	.short	60928                   # 0xee00
	.short	272                     # 0x110
	.short	65248                   # 0xfee0
	.short	17408                   # 0x4400
	.short	47104                   # 0xb800
	.short	1088                    # 0x440
	.short	64384                   # 0xfb80
	.short	2176                    # 0x880
	.short	63232                   # 0xf700
	.short	16                      # 0x10
	.short	65504                   # 0xffe0
	.short	8704                    # 0x2200
	.short	56320                   # 0xdc00
	.short	544                     # 0x220
	.short	64960                   # 0xfdc0
	.short	6400                    # 0x1900
	.short	58880                   # 0xe600
	.short	400                     # 0x190
	.short	65120                   # 0xfe60
	.short	25600                   # 0x6400
	.short	38912                   # 0x9800
	.short	1600                    # 0x640
	.short	63872                   # 0xf980
	.short	3200                    # 0xc80
	.short	62208                   # 0xf300
	.short	144                     # 0x90
	.short	65376                   # 0xff60
	.short	12800                   # 0x3200
	.short	52224                   # 0xcc00
	.short	800                     # 0x320
	.short	64704                   # 0xfcc0
	.short	5888                    # 0x1700
	.short	59392                   # 0xe800
	.short	368                     # 0x170
	.short	65152                   # 0xfe80
	.short	23552                   # 0x5c00
	.short	40960                   # 0xa000
	.short	1472                    # 0x5c0
	.short	64000                   # 0xfa00
	.short	2944                    # 0xb80
	.short	62464                   # 0xf400
	.short	112                     # 0x70
	.short	65408                   # 0xff80
	.short	11776                   # 0x2e00
	.short	53248                   # 0xd000
	.short	736                     # 0x2e0
	.short	64768                   # 0xfd00
	.short	7936                    # 0x1f00
	.short	57344                   # 0xe000
	.short	496                     # 0x1f0
	.short	65024                   # 0xfe00
	.short	31744                   # 0x7c00
	.short	32768                   # 0x8000
	.short	1984                    # 0x7c0
	.short	63488                   # 0xf800
	.short	3968                    # 0xf80
	.short	61440                   # 0xf000
	.short	240                     # 0xf0
	.short	65280                   # 0xff00
	.short	15872                   # 0x3e00
	.short	49152                   # 0xc000
	.short	992                     # 0x3e0
	.short	64512                   # 0xfc00
	.short	4864                    # 0x1300
	.short	60416                   # 0xec00
	.short	304                     # 0x130
	.short	65216                   # 0xfec0
	.short	19456                   # 0x4c00
	.short	45056                   # 0xb000
	.short	1216                    # 0x4c0
	.short	64256                   # 0xfb00
	.short	2432                    # 0x980
	.short	62976                   # 0xf600
	.short	48                      # 0x30
	.short	65472                   # 0xffc0
	.short	9728                    # 0x2600
	.short	55296                   # 0xd800
	.short	608                     # 0x260
	.short	64896                   # 0xfd80
	.short	6912                    # 0x1b00
	.short	58368                   # 0xe400
	.short	432                     # 0x1b0
	.short	65088                   # 0xfe40
	.short	27648                   # 0x6c00
	.short	36864                   # 0x9000
	.short	1728                    # 0x6c0
	.short	63744                   # 0xf900
	.short	3456                    # 0xd80
	.short	61952                   # 0xf200
	.short	176                     # 0xb0
	.short	65344                   # 0xff40
	.short	13824                   # 0x3600
	.short	51200                   # 0xc800
	.short	864                     # 0x360
	.short	64640                   # 0xfc80
	.size	a2s, 512

	.type	f_ulaw,@object          # @f_ulaw
	.globl	f_ulaw
	.p2align	3
f_ulaw:
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	generic_init
	.quad	generic_init
	.quad	ulaw_input
	.quad	ulaw_output
	.size	f_ulaw, 56

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"u-law"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"plain 8 kHz, 8 bit u-law encoding"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	".u"
	.size	.L.str.5, 3

	.type	f_alaw,@object          # @f_alaw
	.data
	.globl	f_alaw
	.p2align	3
f_alaw:
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	generic_init
	.quad	generic_init
	.quad	alaw_input
	.quad	alaw_output
	.size	f_alaw, 56

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"A-law"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"8 kHz, 8 bit A-law encoding"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	".A"
	.size	.L.str.8, 3

	.type	s2a,@object             # @s2a
	.data
	.p2align	4
s2a:
	.ascii	"\252*\352j\212\n\312J\272:\372z\232\032\332Z\242\"\342b\202\002\302B\2622\362r\222\022\322R\256..\356\356nn\216\216\016\016\316\316NN\276\276>>\376\376~~\236\236\036\036\336\336^^\246\246&&&&\346\346\346\346ffff\206\206\206\206\006\006\006\006\306\306\306\306FFFF\266\266\266\2666666\366\366\366\366vvvv\226\226\226\226\026\026\026\026\326\326\326\326VVVV\250\250\250\250((((((((\350\350\350\350\350\350\350\350hhhhhhhh\210\210\210\210\210\210\210\210\b\b\b\b\b\b\b\b\310\310\310\310\310\310\310\310HHHHHHHH\270\270\270\270\270\270\270\27088888888\370\370\370\370\370\370\370\370xxxxxxxx\230\230\230\230\230\230\230\230\030\030\030\030\030\030\030\030\330\330\330\330\330\330\330\330XXXXXXXX\240\240\240\240\240\240\240\240                \340\340\340\340\340\340\340\340\340\340\340\340\340\340\340\340````````````````\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\300\300\300\300\300\300\300\300\300\300\300\300\300\300\300@@@@@@@@@@@@@@@@\260\260\260\260\260\260\260\260\260\260\260\260\260\260\260\2600000000000000000\360\360\360\360\360\360\360\360\360\360\360\360\360\360\360\360pppppppppppppppp\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020\320\320\320\320\320\320\320\320\320\320\320\320\320\320\320\320PPPPPPPPPPPPPPPP\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254\254,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354\354llllllllllllllllllllllllllllllll\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\214\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314\314LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274\274<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374\374||||||||||||||||||||||||||||||||\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\234\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\034\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\334\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244\244$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344\344dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\204\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304\304DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\264\2644444444444444444444444444444444444444444444444444444444444444444\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364\364tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\224\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324\324TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\325\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225\225uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\365\3655555555555555555555555555555555555555555555555555555555555555555\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265\265EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\305\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205\205eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345\345%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245\245]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\335\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\035\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235\235}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375\375================================\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275\275MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\315\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215\215mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355\355--------------------------------\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ\321\321\321\321\321\321\321\321\321\321\321\321\321\321\321\321\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221\221qqqqqqqqqqqqqqqq\361\361\361\361\361\361\361\361\361\361\361\361\361\361\361\3611111111111111111\261\261\261\261\261\261\261\261\261\261\261\261\261\261\261\261AAAAAAAAAAAAAAAA\301\301\301\301\301\301\301\301\301\301\301\301\301\301\301\301\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201\201aaaaaaaaaaaaaaaa\341\341\341\341\341\341\341\341\341\341\341\341\341\341\341\341!!!!!!!!!!!!!!!!\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241\241YYYYYYYYYYYYYYYY\331\331\331\331\331\331\331\331\031\031\031\031\031\031\031\031\231\231\231\231\231\231\231\231yyyyyyyy\371\371\371\371\371\371\371\37199999999\271\271\271\271\271\271\271\271IIIIIIII\311\311\311\311\311\311\311\311\t\t\t\t\t\t\t\t\211\211\211\211\211\211\211\211iiiiiiii\351\351\351\351\351\351\351\351))))))))\251\251\251\251\251\251\251\251WWWWWWWW\327\327\327\327\027\027\027\027\227\227\227\227wwww\367\367\367\3677777\267\267\267\267GGGG\307\307\307\307\007\007\007\007\207\207\207\207gggg\347\347\347\347''''\247\247\247\247____\337\337\037\037\237\237\177\177\377\377??\277\277OO\317\317\017\017\217\217oo\357\357//\257\257SS\323\023\223s\3633\263C\303\003\203c\343#\243[\333\033\233{\373;\273K\313\013\213k\353+\253"
	.size	s2a, 4096

	.type	f_linear,@object        # @f_linear
	.globl	f_linear
	.p2align	3
f_linear:
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	generic_init
	.quad	generic_init
	.quad	linear_input
	.quad	linear_output
	.size	f_linear, 56

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"linear"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"16 bit (13 significant) signed 8 kHz signal"
	.size	.L.str.10, 44

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".l"
	.size	.L.str.11, 3

	.type	alldescs,@object        # @alldescs
	.data
	.globl	alldescs
	.p2align	4
alldescs:
	.quad	f_audio
	.quad	f_alaw
	.quad	f_ulaw
	.quad	f_linear
	.quad	0
	.size	alldescs, 40

	.type	f_format,@object        # @f_format
	.bss
	.globl	f_format
	.p2align	3
f_format:
	.quad	0
	.size	f_format, 8

	.type	instat,@object          # @instat
	.comm	instat,144,8
	.type	outname,@object         # @outname
	.comm	outname,8,8
	.type	output,@object          # @output
	.comm	output,8,8
	.type	init_input,@object      # @init_input
	.comm	init_input,8,8
	.type	init_output,@object     # @init_output
	.comm	init_output,8,8
	.type	gsm_A,@object           # @gsm_A
	.data
	.globl	gsm_A
	.p2align	4
gsm_A:
	.short	20480                   # 0x5000
	.short	20480                   # 0x5000
	.short	20480                   # 0x5000
	.short	20480                   # 0x5000
	.short	13964                   # 0x368c
	.short	15360                   # 0x3c00
	.short	8534                    # 0x2156
	.short	9036                    # 0x234c
	.size	gsm_A, 16

	.type	gsm_B,@object           # @gsm_B
	.globl	gsm_B
	.p2align	4
gsm_B:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	2048                    # 0x800
	.short	62976                   # 0xf600
	.short	94                      # 0x5e
	.short	63744                   # 0xf900
	.short	65195                   # 0xfeab
	.short	64392                   # 0xfb88
	.size	gsm_B, 16

	.type	gsm_MIC,@object         # @gsm_MIC
	.globl	gsm_MIC
	.p2align	4
gsm_MIC:
	.short	65504                   # 0xffe0
	.short	65504                   # 0xffe0
	.short	65520                   # 0xfff0
	.short	65520                   # 0xfff0
	.short	65528                   # 0xfff8
	.short	65528                   # 0xfff8
	.short	65532                   # 0xfffc
	.short	65532                   # 0xfffc
	.size	gsm_MIC, 16

	.type	gsm_MAC,@object         # @gsm_MAC
	.globl	gsm_MAC
	.p2align	4
gsm_MAC:
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	3                       # 0x3
	.short	3                       # 0x3
	.size	gsm_MAC, 16

	.type	gsm_INVA,@object        # @gsm_INVA
	.globl	gsm_INVA
	.p2align	4
gsm_INVA:
	.short	13107                   # 0x3333
	.short	13107                   # 0x3333
	.short	13107                   # 0x3333
	.short	13107                   # 0x3333
	.short	19223                   # 0x4b17
	.short	17476                   # 0x4444
	.short	31454                   # 0x7ade
	.short	29708                   # 0x740c
	.size	gsm_INVA, 16

	.type	gsm_DLB,@object         # @gsm_DLB
	.globl	gsm_DLB
	.p2align	1
gsm_DLB:
	.short	6554                    # 0x199a
	.short	16384                   # 0x4000
	.short	26214                   # 0x6666
	.short	32767                   # 0x7fff
	.size	gsm_DLB, 8

	.type	gsm_QLB,@object         # @gsm_QLB
	.globl	gsm_QLB
	.p2align	1
gsm_QLB:
	.short	3277                    # 0xccd
	.short	11469                   # 0x2ccd
	.short	21299                   # 0x5333
	.short	32767                   # 0x7fff
	.size	gsm_QLB, 8

	.type	gsm_H,@object           # @gsm_H
	.globl	gsm_H
	.p2align	4
gsm_H:
	.short	65402                   # 0xff7a
	.short	65162                   # 0xfe8a
	.short	0                       # 0x0
	.short	2054                    # 0x806
	.short	5741                    # 0x166d
	.short	8192                    # 0x2000
	.short	5741                    # 0x166d
	.short	2054                    # 0x806
	.short	0                       # 0x0
	.short	65162                   # 0xfe8a
	.short	65402                   # 0xff7a
	.size	gsm_H, 22

	.type	gsm_NRFAC,@object       # @gsm_NRFAC
	.globl	gsm_NRFAC
	.p2align	4
gsm_NRFAC:
	.short	29128                   # 0x71c8
	.short	26215                   # 0x6667
	.short	23832                   # 0x5d18
	.short	21846                   # 0x5556
	.short	20165                   # 0x4ec5
	.short	18725                   # 0x4925
	.short	17476                   # 0x4444
	.short	16384                   # 0x4000
	.size	gsm_NRFAC, 16

	.type	gsm_FAC,@object         # @gsm_FAC
	.globl	gsm_FAC
	.p2align	4
gsm_FAC:
	.short	18431                   # 0x47ff
	.short	20479                   # 0x4fff
	.short	22527                   # 0x57ff
	.short	24575                   # 0x5fff
	.short	26623                   # 0x67ff
	.short	28671                   # 0x6fff
	.short	30719                   # 0x77ff
	.short	32767                   # 0x7fff
	.size	gsm_FAC, 16

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"fcdpvhuaslVF"
	.size	.L.str.12, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"writing header to"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"reading header from"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"stdout"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"stdin"
	.size	.L.str.37, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s: error %s %s\n"
	.size	.L.str.33, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s: error writing \"%s\"\n"
	.size	.L.str.38, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s: could not unlink \"%s\"\n"
	.size	.L.str.40, 27

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s: source \"%s\" not deleted.\n"
	.size	.L.str.39, 30

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%s: could not change file mode of \"%s\"\n"
	.size	.L.str.60, 40

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%s: error writing to %s\n"
	.size	.L.str.58, 25

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%s: error reading from %s\n"
	.size	.L.str.59, 27

	.type	Gsm_Coder.e,@object     # @Gsm_Coder.e
	.local	Gsm_Coder.e
	.comm	Gsm_Coder.e,100,16
	.type	.L.str.9.37,@object     # @.str.9.37
.L.str.9.37:
	.asciz	"0 <= Mc && Mc <= 3"
	.size	.L.str.9.37, 19

	.type	.L.str.1.38,@object     # @.str.1.38
.L.str.1.38:
	.asciz	"src/rpe.c"
	.size	.L.str.1.38, 10

	.type	.L__PRETTY_FUNCTION__.RPE_grid_positioning,@object # @__PRETTY_FUNCTION__.RPE_grid_positioning
.L__PRETTY_FUNCTION__.RPE_grid_positioning:
	.asciz	"void RPE_grid_positioning(word, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.RPE_grid_positioning, 48

	.type	.L.str.5.39,@object     # @.str.5.39
.L.str.5.39:
	.asciz	"mant >= 0 && mant <= 7"
	.size	.L.str.5.39, 23

	.type	.L__PRETTY_FUNCTION__.APCM_inverse_quantization,@object # @__PRETTY_FUNCTION__.APCM_inverse_quantization
.L__PRETTY_FUNCTION__.APCM_inverse_quantization:
	.asciz	"void APCM_inverse_quantization(word *, word, word, word *)"
	.size	.L__PRETTY_FUNCTION__.APCM_inverse_quantization, 59

	.type	.L.str.7.40,@object     # @.str.7.40
.L.str.7.40:
	.asciz	"*xMc <= 7 && *xMc >= 0"
	.size	.L.str.7.40, 23

	.type	.L.str.8.41,@object     # @.str.8.41
.L.str.8.41:
	.asciz	"temp <= 7 && temp >= -7"
	.size	.L.str.8.41, 24

	.type	.L.str.42.70,@object    # @.str.42.70
.L.str.42.70:
	.asciz	"exp <= 5"
	.size	.L.str.42.70, 9

	.type	.L__PRETTY_FUNCTION__.APCM_quantization,@object # @__PRETTY_FUNCTION__.APCM_quantization
.L__PRETTY_FUNCTION__.APCM_quantization:
	.asciz	"void APCM_quantization(word *, word *, word *, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.APCM_quantization, 63

	.type	.L.str.2.43,@object     # @.str.2.43
.L.str.2.43:
	.asciz	"exp <= 6 && exp >= 0"
	.size	.L.str.2.43, 21

	.type	.L.str.3.44,@object     # @.str.3.44
.L.str.3.44:
	.asciz	"temp <= 11 && temp >= 0"
	.size	.L.str.3.44, 24

	.type	.L.str.4.45,@object     # @.str.4.45
.L.str.4.45:
	.asciz	"exp <= 4096 && exp >= -4096"
	.size	.L.str.4.45, 28

	.type	.L.str.6.46,@object     # @.str.6.46
.L.str.6.46:
	.asciz	"temp1 >= 0 && temp1 < 16"
	.size	.L.str.6.46, 25

	.type	.L.str.10.47,@object    # @.str.10.47
.L.str.10.47:
	.asciz	"exp >= -4 && exp <= 6"
	.size	.L.str.10.47, 22

	.type	.L__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant,@object # @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant
.L__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant:
	.asciz	"void APCM_quantization_xmaxc_to_exp_mant(word, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, 63

	.type	.L.str.9.71,@object     # @.str.9.71
.L.str.9.71:
	.asciz	"d"
	.size	.L.str.9.71, 2

	.type	.L.str.1.10,@object     # @.str.1.10
.L.str.1.10:
	.asciz	"src/long_term.c"
	.size	.L.str.1.10, 16

	.type	.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor,@object # @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor
.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor:
	.asciz	"void Gsm_Long_Term_Predictor(struct gsm_state *, word *, word *, word *, word *, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, 97

	.type	.L.str.2.11,@object     # @.str.2.11
.L.str.2.11:
	.asciz	"dp"
	.size	.L.str.2.11, 3

	.type	.L.str.3.12,@object     # @.str.3.12
.L.str.3.12:
	.asciz	"e"
	.size	.L.str.3.12, 2

	.type	.L.str.4.13,@object     # @.str.4.13
.L.str.4.13:
	.asciz	"dpp"
	.size	.L.str.4.13, 4

	.type	.L.str.5.72,@object     # @.str.5.72
.L.str.5.72:
	.asciz	"Nc"
	.size	.L.str.5.72, 3

	.type	.L.str.6.73,@object     # @.str.6.73
.L.str.6.73:
	.asciz	"bc"
	.size	.L.str.6.73, 3

	.type	.L.str.9.14,@object     # @.str.9.14
.L.str.9.14:
	.asciz	"dmax > 0"
	.size	.L.str.9.14, 9

	.type	.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters,@object # @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters
.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters:
	.asciz	"void Calculation_of_the_LTP_parameters(word *, word *, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, 71

	.type	.L.str.10.74,@object    # @.str.10.74
.L.str.10.74:
	.asciz	"scal >= 0"
	.size	.L.str.10.74, 10

	.type	.L.str.11.75,@object    # @.str.11.75
.L.str.11.75:
	.asciz	"scal <= 100 && scal >= -100"
	.size	.L.str.11.75, 28

	.type	.L.str.12.76,@object    # @.str.12.76
.L.str.12.76:
	.asciz	"Nc <= 120 && Nc >= 40"
	.size	.L.str.12.76, 22

	.type	.L.str.2.68,@object     # @.str.2.68
.L.str.2.68:
	.asciz	"a != 0"
	.size	.L.str.2.68, 7

	.type	.L.str.1.67,@object     # @.str.1.67
.L.str.1.67:
	.asciz	"src/add.c"
	.size	.L.str.1.67, 10

	.type	.L__PRETTY_FUNCTION__.gsm_norm,@object # @__PRETTY_FUNCTION__.gsm_norm
.L__PRETTY_FUNCTION__.gsm_norm:
	.asciz	"word gsm_norm(longword)"
	.size	.L__PRETTY_FUNCTION__.gsm_norm, 24

	.type	bitoff,@object          # @bitoff
	.data
	.p2align	4
bitoff:
	.asciz	"\b\007\006\006\005\005\005\005\004\004\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	bitoff, 256

	.type	.L.str.7.19,@object     # @.str.7.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7.19:
	.asciz	"temp >= 0"
	.size	.L.str.7.19, 10

	.type	.L.str.1.20,@object     # @.str.1.20
.L.str.1.20:
	.asciz	"src/lpc.c"
	.size	.L.str.1.20, 10

	.type	.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios,@object # @__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios
.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios:
	.asciz	"void Transformation_to_Log_Area_Ratios(word *)"
	.size	.L__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios, 47

	.type	.L.str.8.21,@object     # @.str.8.21
.L.str.8.21:
	.asciz	"temp >= 11059"
	.size	.L.str.8.21, 14

	.type	.L.str.9.22,@object     # @.str.9.22
.L.str.9.22:
	.asciz	"temp >= 26112"
	.size	.L.str.9.22, 14

	.type	.L.str.6.23,@object     # @.str.6.23
.L.str.6.23:
	.asciz	"*r != MIN_WORD"
	.size	.L.str.6.23, 15

	.type	.L.str.3.24,@object     # @.str.3.24
.L.str.3.24:
	.asciz	"L_ACF[0] != 0"
	.size	.L.str.3.24, 14

	.type	.L__PRETTY_FUNCTION__.Reflection_coefficients,@object # @__PRETTY_FUNCTION__.Reflection_coefficients
.L__PRETTY_FUNCTION__.Reflection_coefficients:
	.asciz	"void Reflection_coefficients(longword *, word *)"
	.size	.L__PRETTY_FUNCTION__.Reflection_coefficients, 49

	.type	.L.str.4.25,@object     # @.str.4.25
.L.str.4.25:
	.asciz	"temp >= 0 && temp < 32"
	.size	.L.str.4.25, 23

	.type	.L.str.5.26,@object     # @.str.5.26
.L.str.5.26:
	.asciz	"*r >= 0"
	.size	.L.str.5.26, 8

	.type	.L.str.3.69,@object     # @.str.3.69
.L.str.3.69:
	.asciz	"num >= 0 && denum >= num"
	.size	.L.str.3.69, 25

	.type	.L__PRETTY_FUNCTION__.gsm_div,@object # @__PRETTY_FUNCTION__.gsm_div
.L__PRETTY_FUNCTION__.gsm_div:
	.asciz	"word gsm_div(word, word)"
	.size	.L__PRETTY_FUNCTION__.gsm_div, 25

	.type	.L.str.27.77,@object    # @.str.27.77
.L.str.27.77:
	.asciz	"smax > 0"
	.size	.L.str.27.77, 9

	.type	.L__PRETTY_FUNCTION__.Autocorrelation,@object # @__PRETTY_FUNCTION__.Autocorrelation
.L__PRETTY_FUNCTION__.Autocorrelation:
	.asciz	"void Autocorrelation(word *, longword *)"
	.size	.L__PRETTY_FUNCTION__.Autocorrelation, 41

	.type	.L.str.2.28,@object     # @.str.2.28
.L.str.2.28:
	.asciz	"scalauto <= 4"
	.size	.L.str.2.28, 14

	.type	.L.str.31.78,@object    # @.str.31.78
.L.str.31.78:
	.asciz	"SO >= -0x4000"
	.size	.L.str.31.78, 14

	.type	.L.str.1.32,@object     # @.str.1.32
.L.str.1.32:
	.asciz	"src/preprocess.c"
	.size	.L.str.1.32, 17

	.type	.L__PRETTY_FUNCTION__.Gsm_Preprocess,@object # @__PRETTY_FUNCTION__.Gsm_Preprocess
.L__PRETTY_FUNCTION__.Gsm_Preprocess:
	.asciz	"void Gsm_Preprocess(struct gsm_state *, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.Gsm_Preprocess, 56

	.type	.L.str.2.33,@object     # @.str.2.33
.L.str.2.33:
	.asciz	"SO <= 0x3FFC"
	.size	.L.str.2.33, 13

	.type	.L.str.3.34,@object     # @.str.3.34
.L.str.3.34:
	.asciz	"s1 != MIN_WORD"
	.size	.L.str.3.34, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"s"
	.size	.L.str.50, 2

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%s: incomplete frame (%d byte%s missing) from %s\n"
	.size	.L.str.56, 50

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%s: bad frame in %s\n"
	.size	.L.str.57, 21

	.type	.L.str.7.80,@object     # @.str.7.80
.L.str.7.80:
	.asciz	"Nr >= 40 && Nr <= 120"
	.size	.L.str.7.80, 22

	.type	.L__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering,@object # @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering
.L__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering:
	.asciz	"void Gsm_Long_Term_Synthesis_Filtering(struct gsm_state *, word, word, word *, word *)"
	.size	.L__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, 87

	.type	.L.str.8.81,@object     # @.str.8.81
.L.str.8.81:
	.asciz	"brp != MIN_WORD"
	.size	.L.str.8.81, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s: can't open \"%s\" for writing\n"
	.size	.L.str.52, 33

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"wb"
	.size	.L.str.51, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\tnot overwritten\n"
	.size	.L.str.55, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s already exists; do you wish to overwrite %s (y or n)? "
	.size	.L.str.54, 58

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s: filename \"%s\" is too long (maximum is %ld)\n"
	.size	.L.str.53, 48

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	".gsm"
	.size	.L.str.41, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.zero	1
	.size	.L.str.45, 1

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%s: failed to malloc %d bytes -- abort\n"
	.size	.L.str.46, 40

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"rb"
	.size	.L.str.43, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s: \"%s\" has %s other link%s -- unchanged.\n"
	.size	.L.str.49, 44

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s: \"%s\" is not a regular file -- unchanged.\n"
	.size	.L.str.48, 46

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s: cannot stat \"%s\"\n"
	.size	.L.str.47, 22

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s: cannot open \"%s\" for reading\n"
	.size	.L.str.44, 34

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%s: %s already has \"%s\" suffix -- unchanged.\n"
	.size	.L.str.42, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\n"
	.size	.L.str.13, 51

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Usage: %s [-fcpdhvaulsF] [files...]\n"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\n"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	" -f  force     Replace existing files without asking\n"
	.size	.L.str.22, 54

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" -c  cat       Write to stdout, do not remove source files\n"
	.size	.L.str.23, 60

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	" -d  decode    Decode data (default is encode)\n"
	.size	.L.str.24, 48

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	" -p  precious  Do not delete the source\n"
	.size	.L.str.25, 41

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" -u  u-law     Force 8 kHz/8 bit u-law in/output format\n"
	.size	.L.str.26, 57

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" -s  sun .au   Force Sun .au u-law in/output format\n"
	.size	.L.str.27, 53

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" -a  A-law     Force 8 kHz/8 bit A-law in/output format\n"
	.size	.L.str.28, 57

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	" -l  linear    Force 16 bit linear in/output format\n"
	.size	.L.str.29, 53

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	" -F  fast      Sacrifice conformance to performance\n"
	.size	.L.str.30, 53

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	" -v  version   Show version information\n"
	.size	.L.str.31, 41

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	" -h  help      Print this text\n"
	.size	.L.str.32, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s 1.0, version %s\n"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"$Id: toast.c,v 1.1.1.1 2000/11/06 19:54:26 mguthaus Exp $"
	.size	.L.str.19, 58

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: only one of -[uals] is possible (%s -h for help)\n"
	.size	.L.str.17, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"toast"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"un"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cat"
	.size	.L.str.16, 4

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"a != MIN_WORD || b != MIN_WORD"
	.size	.L.str.66, 31

	.type	.L__PRETTY_FUNCTION__.gsm_L_mult,@object # @__PRETTY_FUNCTION__.gsm_L_mult
.L__PRETTY_FUNCTION__.gsm_L_mult:
	.asciz	"longword gsm_L_mult(word, word)"
	.size	.L__PRETTY_FUNCTION__.gsm_L_mult, 32

	.type	.L.str.1.5,@object      # @.str.1.5
.L.str.1.5:
	.asciz	"%d "
	.size	.L.str.1.5, 4

	.type	.L.str.4.79,@object     # @.str.4.79
.L.str.4.79:
	.asciz	"%s [%d .. %d]: "
	.size	.L.str.4.79, 16

	.type	.L.str.2.6,@object      # @.str.2.6
.L.str.2.6:
	.asciz	"%s: %d\n"
	.size	.L.str.2.6, 8

	.type	.L.str.50.90,@object    # @.str.50.90
.L.str.50.90:
	.asciz	"LARc:\t%2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d\n"
	.size	.L.str.50.90, 62

	.type	.L.str.1.51,@object     # @.str.1.51
.L.str.1.51:
	.asciz	"#1: \tNc %4.4d    bc %d    Mc %d    xmaxc %d\n"
	.size	.L.str.1.51, 45

	.type	.L.str.2.52,@object     # @.str.2.52
.L.str.2.52:
	.asciz	"\t%.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d\n"
	.size	.L.str.2.52, 67

	.type	.L.str.3.53,@object     # @.str.3.53
.L.str.3.53:
	.asciz	"#2: \tNc %4.4d    bc %d    Mc %d    xmaxc %d\n"
	.size	.L.str.3.53, 45

	.type	.L.str.4.54,@object     # @.str.4.54
.L.str.4.54:
	.asciz	"#3: \tNc %4.4d    bc %d    Mc %d    xmaxc %d\n"
	.size	.L.str.4.54, 45

	.type	.L.str.5.55,@object     # @.str.5.55
.L.str.5.55:
	.asciz	"#4: \tNc %4.4d    bc %d    Mc %d    xmaxc %d\n"
	.size	.L.str.5.55, 45

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%sTampered binary!\n"
	.size	.L.str.62, 20

	.type	.L.str.1.63,@object     # @.str.1.63
.L.str.1.63:
	.asciz	"\033[0m"
	.size	.L.str.1.63, 5

	.type	.L.str.2.64,@object     # @.str.2.64
.L.str.2.64:
	.asciz	"%s\n"
	.size	.L.str.2.64, 4


	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
