;@ YM3526 sound chip shell.
#ifdef __arm__

#include "YM3526.i"

	.global YM3526Reset
	.global YM3526Mixer
	.global YM3526IndexW
	.global YM3526DataW
	.global YM3526DataR

	.syntax unified
	.arm

	.section .text
	.align 2

;@----------------------------------------------------------------------------
ym3526Mixer:				;@ r0=len, r1=dest, ymptr=r12=pointer to struct
;@----------------------------------------------------------------------------
	bx lr

;@----------------------------------------------------------------------------
ym3526Reset:				;@ r0 = chiptype, ymptr=r12=pointer to struct
;@----------------------------------------------------------------------------
	mov r0,#0
	strb r0,[ymptr,#ymRegIndex]
	bx lr

;@----------------------------------------------------------------------------
ym3526IndexW:
	strb r0,[ymptr,#ymRegIndex]
	bx lr
;@----------------------------------------------------------------------------
ym3526DataW:
	ldrb r1,[ymptr,#ymRegIndex]
	bx lr
;@----------------------------------------------------------------------------
ym3526DataR:
	ldr r0,status
	add r0,r0,#1
	str r0,status
	bx lr
;@----------------------------------------------------------------------------
status:
	.long 0
;@----------------------------------------------------------------------------
	.end
#endif // #ifdef __arm__
