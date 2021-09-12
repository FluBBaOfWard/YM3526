;@ ASM header for the YM3526 emulator
;@

	ymptr			.req r12

							;@ YM3526.s
	.struct 0
	ymRegisters:	.space 256
	ymRegIndex:		.byte 0
	ymPadding:		.space 3

	ymSize:

;@----------------------------------------------------------------------------

