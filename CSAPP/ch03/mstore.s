	.file	"mstore.c"
	.intel_syntax noprefix
	.text
	.globl	_multstore
	.def	_multstore;	.scl	2;	.type	32;	.endef
_multstore:
LFB0:
	.cfi_startproc
	sub	esp, 28
	.cfi_def_cfa_offset 32
	mov	eax, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp], eax
	call	_mult2
	mov	edx, DWORD PTR [esp+40]
	mov	DWORD PTR [edx], eax
	add	esp, 28
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_mult2;	.scl	2;	.type	32;	.endef
