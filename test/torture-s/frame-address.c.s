	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/frame-address.c"
	.section	.text.check_fa_work,"ax",@progbits
	.hidden	check_fa_work
	.globl	check_fa_work
	.type	check_fa_work,@function
check_fa_work:                          # @check_fa_work
	.param  	i32, i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push6=, __stack_pointer
	i32.load	$push7=, 0($pop6)
	i32.const	$push8=, 16
	i32.sub 	$2=, $pop7, $pop8
	i32.const	$push0=, 0
	i32.store8	$discard=, 15($2), $pop0
	block
	i32.const	$push9=, 15
	i32.add 	$push10=, $2, $pop9
	i32.le_u	$push1=, $pop10, $0
	br_if   	0, $pop1        # 0: down to label0
# BB#1:                                 # %if.else
	i32.le_u	$push4=, $0, $1
	i32.const	$push11=, 15
	i32.add 	$push12=, $2, $pop11
	i32.ge_u	$push5=, $pop12, $1
	i32.and 	$1=, $pop4, $pop5
	return  	$1
.LBB0_2:                                # %if.then
	end_block                       # label0:
	i32.ge_u	$push2=, $0, $1
	i32.const	$push13=, 15
	i32.add 	$push14=, $2, $pop13
	i32.le_u	$push3=, $pop14, $1
	i32.and 	$1=, $pop2, $pop3
	return  	$1
	.endfunc
.Lfunc_end0:
	.size	check_fa_work, .Lfunc_end0-check_fa_work

	.section	.text.check_fa_mid,"ax",@progbits
	.hidden	check_fa_mid
	.globl	check_fa_mid
	.type	check_fa_mid,@function
check_fa_mid:                           # @check_fa_mid
	.param  	i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$push3=, __stack_pointer
	i32.load	$1=, 0($pop3)
	copy_local	$2=, $1
	i32.call	$push0=, check_fa_work@FUNCTION, $0, $2
	i32.const	$push1=, 0
	i32.ne  	$push2=, $pop0, $pop1
	i32.const	$push4=, __stack_pointer
	i32.store	$discard=, 0($pop4), $2
	return  	$pop2
	.endfunc
.Lfunc_end1:
	.size	check_fa_mid, .Lfunc_end1-check_fa_mid

	.section	.text.check_fa,"ax",@progbits
	.hidden	check_fa
	.globl	check_fa
	.type	check_fa,@function
check_fa:                               # @check_fa
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push3=, __stack_pointer
	i32.load	$push4=, 0($pop3)
	i32.const	$push5=, 16
	i32.sub 	$1=, $pop4, $pop5
	i32.const	$push6=, __stack_pointer
	i32.store	$discard=, 0($pop6), $1
	i32.const	$push10=, 15
	i32.add 	$push11=, $1, $pop10
	i32.call	$push0=, check_fa_mid@FUNCTION, $pop11
	i32.const	$push1=, 0
	i32.ne  	$push2=, $pop0, $pop1
	i32.const	$push9=, __stack_pointer
	i32.const	$push7=, 16
	i32.add 	$push8=, $1, $pop7
	i32.store	$discard=, 0($pop9), $pop8
	return  	$pop2
	.endfunc
.Lfunc_end2:
	.size	check_fa, .Lfunc_end2-check_fa

	.section	.text.how_much,"ax",@progbits
	.hidden	how_much
	.globl	how_much
	.type	how_much,@function
how_much:                               # @how_much
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 8
	return  	$pop0
	.endfunc
.Lfunc_end3:
	.size	how_much, .Lfunc_end3-how_much

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	block
	i32.call	$push0=, check_fa@FUNCTION, $0
	i32.const	$push2=, 0
	i32.eq  	$push3=, $pop0, $pop2
	br_if   	0, $pop3        # 0: down to label1
# BB#1:                                 # %if.end
	i32.const	$push1=, 0
	return  	$pop1
.LBB4_2:                                # %if.then
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end4:
	.size	main, .Lfunc_end4-main


	.ident	"clang version 3.9.0 "