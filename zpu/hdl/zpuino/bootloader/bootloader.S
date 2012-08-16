	.file	"boot.cpp"
	.globl	bdata
	.section	.bss.bdata,"aw",@nobits
	.balign 4;
	.type	bdata, @object
	.size	bdata, 4
bdata:
	.zero	4
	.section	.bss.milisseconds,"aw",@nobits
	.balign 4;
	.type	milisseconds, @object
	.size	milisseconds, 4
milisseconds:
	.zero	4
	.section	.bss.inprogrammode,"aw",@nobits
	.balign 4;
	.type	inprogrammode, @object
	.size	inprogrammode, 4
inprogrammode:
	.zero	4
	.section	.rodata.handlers,"a",@progbits
	.balign 4;
	.type	handlers, @object
	.size	handlers, 40
handlers:
	.long	_Z11cmd_versionPh
	.long	_Z12cmd_identifyPh
	.long	_Z13cmd_waitreadyPh
	.long	_Z20cmd_raw_send_receivePh
	.long	_Z12cmd_enterpgmPh
	.long	_Z12cmd_leavepgmPh
	.long	_Z19cmd_sst_aai_programPh
	.long	_Z16cmd_set_baudratePh
	.long	_Z11cmd_progmemPh
	.long	_Z9cmd_startPh
	.section	.bss.flash_id,"aw",@nobits
	.balign 4;
	.type	flash_id, @object
	.size	flash_id, 4
flash_id:
	.zero	4
	.section	.rodata.vstring,"a",@progbits
	.balign 4;
	.type	vstring, @object
	.size	vstring, 16
vstring:
	.byte	1
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	111
	.byte	-128
	.byte	5
	.byte	16
	.byte	-1
	.byte	64
	.byte	-124
	.byte	1
	.byte	15
	.byte	0
	.section	.text._Z5flushv,"ax",@progbits
	.globl	_Z5flushv
	.type	_Z5flushv, @function
_Z5flushv:
	im -1
	pushspadd
	popsp
	im 142606340
	storesp 8
.L2:
	loadsp 4
	load
	loadsp 0
	im 2
	lshiftright
	loadsp 0
	im 1
	and
	storesp 4
	storesp 4
	storesp 4
	loadsp 0
	impcrel .L2
	neqbranch
	im 3
	pushspadd
	popsp
	poppc
	.size	_Z5flushv, .-_Z5flushv
	.section	.text._Z7outbytei,"ax",@progbits
	.type	_Z7outbytei, @function
_Z7outbytei:
	im -1
	pushspadd
	popsp
	im 142606340
	storesp 8
.L7:
	loadsp 4
	load
	loadsp 0
	im 1
	lshiftright
	loadsp 0
	im 1
	and
	storesp 4
	storesp 4
	storesp 4
	loadsp 0
	impcrel .L7
	neqbranch
	loadsp 12
	im 142606336
	store
	im 3
	pushspadd
	popsp
	poppc
	.size	_Z7outbytei, .-_Z7outbytei
	.section	.text.printnibble,"ax",@progbits
	.globl	printnibble
	.type	printnibble, @function
printnibble:
	im -1
	pushspadd
	popsp
	loadsp 12
	im 15
	and
	storesp 8
	im 9
	loadsp 8
	ulessthanorequal
	impcrel .L12
	neqbranch
	im 87
	addsp 8
	storesp 4
	im _Z7outbytei
	call
	im 3
	pushspadd
	popsp
	poppc
.L12:
	im 48
	addsp 8
	storesp 4
	im _Z7outbytei
	call
	im 3
	pushspadd
	popsp
	poppc
	.size	printnibble, .-printnibble
	.section	.text.printstring,"ax",@progbits
	.globl	printstring
	.type	printstring, @function
printstring:
	im -3
	pushspadd
	popsp
	loadsp 20
	loadsp 0
	loadb
	loadsp 0
	im 0xff
	and
	storesp 16
	storesp 16
	storesp 16
	loadsp 4
	im 0
	eq
	impcrel .L21
	neqbranch
.L24:
	loadsp 8
	im 0xff
	and
	storesp 4
	im _Z7outbytei
	call
	im 1
	addsp 16
	loadsp 0
	loadb
	loadsp 0
	im 0xff
	and
	storesp 16
	storesp 16
	storesp 16
	loadsp 4
	impcrel .L24
	neqbranch
.L21:
	im 5
	pushspadd
	popsp
	poppc
	.size	printstring, .-printstring
	.section	.text.printhexbyte,"ax",@progbits
	.globl	printhexbyte
	.type	printhexbyte, @function
printhexbyte:
	im -1
	pushspadd
	popsp
	loadsp 12
	loadsp 0
	im 4
	lshiftright
	storesp 8
	storesp 8
	im printnibble
	call
	loadsp 4
	storesp 4
	im printnibble
	call
	im 3
	pushspadd
	popsp
	poppc
	.size	printhexbyte, .-printhexbyte
	.section	.text.printhex,"ax",@progbits
	.globl	printhex
	.type	printhex, @function
printhex:
	im -1
	pushspadd
	popsp
	loadsp 12
	loadsp 0
	im 24
	lshiftright
	storesp 8
	storesp 8
	im printhexbyte
	call
	loadsp 4
	im 16
	lshiftright
	storesp 4
	im printhexbyte
	call
	loadsp 4
	im 8
	lshiftright
	storesp 4
	im printhexbyte
	call
	loadsp 4
	storesp 4
	im printhexbyte
	call
	im 3
	pushspadd
	popsp
	poppc
	.size	printhex, .-printhex
	.section	.text._Z8sendBytej,"ax",@progbits
	.globl	_Z8sendBytej
	.type	_Z8sendBytej, @function
_Z8sendBytej:
	im -2
	pushspadd
	popsp
	loadsp 16
	loadsp 0
	im 192937992
	store
	loadsp 0
	im 255
	and
	im -125
	addsp 4
	storesp 16
	storesp 4
	storesp 12
	loadsp 4
	im 1
	ulessthan
	impcrel .L28
	neqbranch
	im 125
	storesp 4
	im _Z7outbytei
	call
	loadsp 8
	im 32
	xor
	storesp 4
	im _Z7outbytei
	call
	im 4
	pushspadd
	popsp
	poppc
.L28:
	loadsp 8
	storesp 4
	im _Z7outbytei
	call
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z8sendBytej, .-_Z8sendBytej
	.section	.text._Z11prepareSendv,"ax",@progbits
	.type	_Z11prepareSendv, @function
_Z11prepareSendv:
	im 0
	pushspadd
	popsp
	im 65535
	nop
	im 192937984
	store
	im 126
	storesp 4
	im _Z7outbytei
	call
	im 2
	pushspadd
	popsp
	poppc
	.size	_Z11prepareSendv, .-_Z11prepareSendv
	.section	.text._Z10finishSendv,"ax",@progbits
	.globl	_Z10finishSendv
	.type	_Z10finishSendv, @function
_Z10finishSendv:
	im -1
	pushspadd
	popsp
	im 192937984
	load
	loadsp 0
	im 8
	lshiftright
	storesp 8
	storesp 8
	im _Z8sendBytej
	call
	loadsp 4
	im 0xff
	and
	storesp 4
	im _Z8sendBytej
	call
	im 126
	storesp 4
	im _Z7outbytei
	call
	im 3
	pushspadd
	popsp
	poppc
	.size	_Z10finishSendv, .-_Z10finishSendv
	.section	.text._Z6inbytev,"ax",@progbits
	.globl	_Z6inbytev
	.type	_Z6inbytev, @function
_Z6inbytev:
	im -2
	pushspadd
	popsp
	im 142606340
	storesp 12
.L43:
	loadsp 8
	load
	loadsp 0
	im 1
	and
	storesp 4
	storesp 4
	loadsp 0
	impcrel .L39
	neqbranch
	im inprogrammode
	load
	storesp 8
	loadsp 4
	impcrel .L43
	neqbranch
	im milisseconds
	load
	storesp 4
	im 1000
	loadsp 4
	ulessthanorequal
	impcrel .L43
	neqbranch
	loadsp 4
	im 167772160
	store
	loadsp 4
	im 159383552
	store
	im spi_copy
	call
.L39:
	im 142606336
	load
	im _memreg+0
	store
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z6inbytev, .-_Z6inbytev
	.section	.text._Z11enableTimerv,"ax",@progbits
	.globl	_Z11enableTimerv
	.type	_Z11enableTimerv, @function
_Z11enableTimerv:
	im 42499
	nop
	im 159383560
	store
	im 0
	nop
	im 159383556
	store
	im 31
	nop
	im 159383552
	store
	poppc
	.size	_Z11enableTimerv, .-_Z11enableTimerv
	.section	.text._Z11spi_disablePVj,"ax",@progbits
	.type	_Z11spi_disablePVj, @function
_Z11spi_disablePVj:
	im -1
	pushspadd
	popsp
	loadsp 12
	loadsp 0
	load
	storesp 4
	storesp 4
	im 150994944
	loadsp 0
	load
	loadsp 0
	im 2
	or
	loadsp 8
	store
	storesp 8
	storesp 8
	im 3
	pushspadd
	popsp
	poppc
	.size	_Z11spi_disablePVj, .-_Z11spi_disablePVj
	.section	.text._Z10spi_enablev,"ax",@progbits
	.type	_Z10spi_enablev, @function
_Z10spi_enablev:
	im -1
	pushspadd
	popsp
	im 150994944
	loadsp 0
	load
	loadsp 0
	im -3
	and
	loadsp 8
	store
	storesp 8
	storesp 8
	im 3
	pushspadd
	popsp
	poppc
	.size	_Z10spi_enablev, .-_Z10spi_enablev
	.section	.text.start,"ax",@progbits
	.globl	start
	.type	start, @function
start:
	im 4112
	nop
	im ivector
	store
	im bdata
	nop
	im bootloaderdata
	store
	im start_sketch
	call
	.size	start, .-start
	.section	.text._Z15start_read_sizePVj,"ax",@progbits
	.globl	_Z15start_read_sizePVj
	.type	_Z15start_read_sizePVj, @function
_Z15start_read_sizePVj:
	im -2
	pushspadd
	popsp
	loadsp 16
	storesp 8
	im 11
	loadsp 8
	store
	im 16
	addsp 8
	storesp 12
	im 0
	loadsp 0
	loadsp 16
	store
	loadsp 12
	store
	loadsp 4
	load
	im 65535
	and
	im _memreg+0
	store
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z15start_read_sizePVj, .-_Z15start_read_sizePVj
	.section	.text.spi_copy_impl,"ax",@progbits
	.globl	spi_copy_impl
	.type	spi_copy_impl, @function
spi_copy_impl:
	im -8
	pushspadd
	popsp
	im 4096
	storesp 24
	im 134217732
	storesp 16
	im 192937984
	storesp 28
	im _Z10spi_enablev
	call
	loadsp 12
	storesp 4
	im _Z15start_read_sizePVj
	call
	im _memreg+0
	load
	addsp 0
	addsp 0
	im 4
	add
	im bdata
	store
	im 0
	loadsp 0
	loadsp 20
	store
	loadsp 16
	store
	loadsp 12
	load
	im 65535
	and
	storesp 36
	im _memreg+0
	load
	im 28544
	ulessthan
	impcrel .L80
	neqbranch
	im 65535
	loadsp 28
	store
	im _memreg+0
	load
	im -1
	add
	storesp 20
	loadsp 16
	im -1
	eq
	impcrel .L104
	neqbranch
	im 0
	storesp 32
.L94:
	im 4
	storesp 12
.L91:
	loadsp 28
	loadsp 16
	store
	loadsp 12
	load
	im 8
	addsp 32
	store
	im -1
	addsp 12
	storesp 12
	loadsp 8
	impcrel .L91
	neqbranch
	loadsp 20
	im 4
	addsp 28
	loadsp 20
	load
	loadsp 8
	store
	im -1
	addsp 28
	storesp 28
	storesp 28
	storesp 12
	loadsp 16
	im -1
	eq
	not
	im 1
	and
	impcrel .L94
	neqbranch
.L104:
	loadsp 12
	storesp 4
	im _Z11spi_disablePVj
	call
	loadsp 24
	load
	storesp 8
	loadsp 4
	loadsp 36
	eq
	not
	im 1
	and
	impcrel .L108
	neqbranch
	im 4100
	load
	storesp 8
	loadsp 4
	im -2080305408
	eq
	impcrel .L98
	neqbranch
	im 66
	storesp 4
	im _Z7outbytei
	call
.L99:
	impcrel .L99
	poppcrel
.L80:
	impcrel .L80
	poppcrel
.L108:
	im 67
	storesp 4
	im _Z7outbytei
	call
.L96:
	impcrel .L96
	poppcrel
.L98:
	im 134217728
	loadsp 0
	load
	loadsp 0
	im -65
	and
	loadsp 8
	store
	storesp 12
	storesp 12
	im _Z5flushv
	call
	im start
	call
.L101:
	impcrel .L101
	poppcrel
	.size	spi_copy_impl, .-spi_copy_impl
	.section	.text._zpu_interrupt,"ax",@progbits
	.globl	_zpu_interrupt
	.type	_zpu_interrupt, @function
_zpu_interrupt:
	im -1
	pushspadd
	popsp
	im milisseconds
	load
	im 1
	addsp 4
	im milisseconds
	store
	storesp 4
	im 159383552
	loadsp 0
	load
	loadsp 0
	im -129
	and
	loadsp 8
	store
	storesp 8
	storesp 8
	im 3
	pushspadd
	popsp
	poppc
	.size	_zpu_interrupt, .-_zpu_interrupt
	.section	.text._Z11simpleReplyj,"ax",@progbits
	.type	_Z11simpleReplyj, @function
_Z11simpleReplyj:
	im 0
	pushspadd
	popsp
	im _Z11prepareSendv
	call
	loadsp 8
	im 128
	or
	storesp 4
	im _Z8sendBytej
	call
	im _Z10finishSendv
	call
	im 2
	pushspadd
	popsp
	poppc
	.size	_Z11simpleReplyj, .-_Z11simpleReplyj
	.section	.text._Z15spi_read_statusv,"ax",@progbits
	.type	_Z15spi_read_statusv, @function
_Z15spi_read_statusv:
	im -2
	pushspadd
	popsp
	im 134217732
	storesp 12
	im _Z10spi_enablev
	call
	im 5
	loadsp 12
	store
	im 0
	loadsp 12
	store
	loadsp 8
	load
	loadsp 0
	im 255
	and
	loadsp 16
	storesp 12
	storesp 4
	storesp 8
	im _Z11spi_disablePVj
	call
	loadsp 4
	im _memreg+0
	store
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z15spi_read_statusv, .-_Z15spi_read_statusv
	.section	.text._Z11cmd_progmemPh,"ax",@progbits
	.type	_Z11cmd_progmemPh, @function
_Z11cmd_progmemPh:
	im -4
	pushspadd
	popsp
	loadsp 24
	im 1
	addsp 4
	loadb
	im 2
	addsp 8
	loadb
	loadsp 4
	im 16777216
	mult
	loadsp 4
	im 65536
	mult
	add
	im 3
	addsp 16
	loadb
	loadsp 0
	im 256
	mult
	addsp 8
	im 4
	addsp 24
	loadb
	storesp 8
	loadsp 4
	add
	im 4096
	add
	im 6
	addsp 24
	im 5
	addsp 28
	loadb
	im -1
	addsp 4
	storesp 4
	storesp 28
	storesp 8
	storesp 12
	storesp 12
	storesp 20
	storesp 28
	storesp 20
	storesp 12
	loadsp 8
	im -1
	eq
	impcrel .L128
	neqbranch
.L131:
	loadsp 12
	loadsp 0
	im 1
	add
	storesp 20
	loadb
	storesp 8
	loadsp 4
	loadsp 20
	loadsp 0
	im 1
	add
	storesp 28
	storeb
	im -1
	addsp 12
	storesp 12
	loadsp 8
	im -1
	eq
	not
	im 1
	and
	impcrel .L131
	neqbranch
.L128:
	im 9
	storesp 4
	im _Z11simpleReplyj
	call
	im 6
	pushspadd
	popsp
	poppc
	.size	_Z11cmd_progmemPh, .-_Z11cmd_progmemPh
	.section	.text._Z20cmd_raw_send_receivePh,"ax",@progbits
	.type	_Z20cmd_raw_send_receivePh, @function
_Z20cmd_raw_send_receivePh:
	im -7
	pushspadd
	popsp
	loadsp 36
	storesp 28
	im 134217732
	storesp 24
	im _Z10spi_enablev
	call
	im 1
	addsp 28
	loadb
	im 2
	addsp 32
	loadb
	loadsp 4
	im 256
	mult
	add
	storesp 12
	storesp 12
	loadsp 4
	im 0
	eq
	impcrel .L152
	neqbranch
	im 5
	addsp 28
	loadsp 8
	storesp 20
	storesp 12
.L138:
	loadsp 8
	loadsp 0
	im 1
	add
	storesp 16
	loadb
	loadsp 24
	store
	im -1
	addsp 16
	storesp 16
	loadsp 12
	impcrel .L138
	neqbranch
.L152:
	im 3
	addsp 28
	loadb
	im 4
	addsp 32
	loadb
	loadsp 4
	im 256
	mult
	add
	storesp 24
	storesp 8
	im 0
	storesp 16
	loadsp 12
	loadsp 20
	ulessthanorequal
	impcrel .L154
	neqbranch
	loadsp 12
	storesp 32
.L146:
	loadsp 28
	loadsp 24
	store
	loadsp 12
	addsp 28
	loadsp 24
	load
	storesp 12
	storesp 12
	loadsp 4
	loadsp 12
	storeb
	im 1
	addsp 16
	storesp 16
	loadsp 16
	loadsp 16
	ulessthan
	impcrel .L146
	neqbranch
.L154:
	loadsp 20
	storesp 4
	im _Z11spi_disablePVj
	call
	im _Z11prepareSendv
	call
	im 132
	storesp 4
	im _Z8sendBytej
	call
	loadsp 16
	im 8
	lshiftright
	storesp 4
	im _Z8sendBytej
	call
	loadsp 16
	storesp 4
	im _Z8sendBytej
	call
	im 0
	storesp 16
	loadsp 12
	loadsp 20
	ulessthanorequal
	impcrel .L156
	neqbranch
.L159:
	loadsp 12
	addsp 28
	loadsp 0
	loadb
	storesp 8
	storesp 8
	im _Z8sendBytej
	call
	im 1
	addsp 16
	storesp 16
	loadsp 16
	loadsp 16
	ulessthan
	impcrel .L159
	neqbranch
.L156:
	im _Z10finishSendv
	call
	im 9
	pushspadd
	popsp
	poppc
	.size	_Z20cmd_raw_send_receivePh, .-_Z20cmd_raw_send_receivePh
	.section	.text._Z19cmd_sst_aai_programPh,"ax",@progbits
	.type	_Z19cmd_sst_aai_programPh, @function
_Z19cmd_sst_aai_programPh:
	poppc
	.size	_Z19cmd_sst_aai_programPh, .-_Z19cmd_sst_aai_programPh
	.section	.text._Z16cmd_set_baudratePh,"ax",@progbits
	.type	_Z16cmd_set_baudratePh, @function
_Z16cmd_set_baudratePh:
	im -4
	pushspadd
	popsp
	loadsp 24
	im 1
	addsp 4
	loadb
	im 2
	addsp 8
	loadb
	loadsp 4
	im 16
	ashiftleft
	loadsp 4
	im 8
	ashiftleft
	or
	im 3
	addsp 16
	loadb
	loadsp 0
	loadsp 8
	or
	im 8
	ashiftleft
	im 4
	addsp 24
	loadb
	loadsp 4
	or
	storesp 4
	storesp 8
	storesp 12
	storesp 28
	storesp 28
	storesp 16
	storesp 8
	im 8
	storesp 4
	im _Z11simpleReplyj
	call
	im 255
	storesp 4
	im _Z7outbytei
	call
	im 142606340
	storesp 12
.L162:
	loadsp 8
	load
	loadsp 0
	im 1
	lshiftright
	loadsp 0
	im 1
	and
	storesp 4
	storesp 4
	storesp 8
	loadsp 4
	impcrel .L162
	neqbranch
	loadsp 12
	im 65536
	or
	im 142606340
	store
	im 6
	pushspadd
	popsp
	poppc
	.size	_Z16cmd_set_baudratePh, .-_Z16cmd_set_baudratePh
	.section	.text._Z13cmd_waitreadyPh,"ax",@progbits
	.type	_Z13cmd_waitreadyPh, @function
_Z13cmd_waitreadyPh:
	im -2
	pushspadd
	popsp
.L173:
	im _Z15spi_read_statusv
	call
	im _memreg+0
	load
	im _memreg+0
	load
	im 1
	and
	storesp 12
	storesp 12
	loadsp 4
	impcrel .L173
	neqbranch
	im _Z11prepareSendv
	call
	im 131
	storesp 4
	im _Z8sendBytej
	call
	loadsp 8
	storesp 4
	im _Z8sendBytej
	call
	im _Z10finishSendv
	call
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z13cmd_waitreadyPh, .-_Z13cmd_waitreadyPh
	.section	.text._Z11cmd_versionPh,"ax",@progbits
	.type	_Z11cmd_versionPh, @function
_Z11cmd_versionPh:
	im -2
	pushspadd
	popsp
	im 0
	nop
	im milisseconds
	store
	im _Z11prepareSendv
	call
	im 129
	storesp 4
	im _Z8sendBytej
	call
	im vstring
	storesp 12
	im 15
	storesp 8
.L180:
	loadsp 8
	loadsp 0
	im 1
	add
	storesp 16
	loadb
	storesp 4
	im _Z8sendBytej
	call
	im -1
	addsp 8
	storesp 8
	loadsp 4
	im -1
	eq
	not
	im 1
	and
	impcrel .L180
	neqbranch
	im _Z10finishSendv
	call
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z11cmd_versionPh, .-_Z11cmd_versionPh
	.section	.text._Z12cmd_identifyPh,"ax",@progbits
	.type	_Z12cmd_identifyPh, @function
_Z12cmd_identifyPh:
	im -2
	pushspadd
	popsp
	im 0
	nop
	im milisseconds
	store
	im _Z11prepareSendv
	call
	im 130
	storesp 4
	im _Z8sendBytej
	call
	im 134217732
	storesp 8
	im _Z10spi_enablev
	call
	im -1627389952
	nop
	im 134217756
	store
	loadsp 4
	load
	loadsp 8
	storesp 8
	storesp 12
	im _Z11spi_disablePVj
	call
	loadsp 8
	im flash_id
	store
	loadsp 8
	im 16
	lshiftright
	storesp 4
	im _Z8sendBytej
	call
	im flash_id
	load
	im 8
	lshiftright
	storesp 4
	im _Z8sendBytej
	call
	im flash_id
	load
	storesp 4
	im _Z8sendBytej
	call
	im _Z15spi_read_statusv
	call
	im _memreg+0
	load
	storesp 4
	im _Z8sendBytej
	call
	im _Z10finishSendv
	call
	im 4
	pushspadd
	popsp
	poppc
	.size	_Z12cmd_identifyPh, .-_Z12cmd_identifyPh
	.section	.text._Z12cmd_enterpgmPh,"ax",@progbits
	.type	_Z12cmd_enterpgmPh, @function
_Z12cmd_enterpgmPh:
	im 0
	pushspadd
	popsp
	im 1
	nop
	im inprogrammode
	store
	im 0
	nop
	im 159383552
	store
	im 5
	storesp 4
	im _Z11simpleReplyj
	call
	im 2
	pushspadd
	popsp
	poppc
	.size	_Z12cmd_enterpgmPh, .-_Z12cmd_enterpgmPh
	.section	.text._Z12cmd_leavepgmPh,"ax",@progbits
	.type	_Z12cmd_leavepgmPh, @function
_Z12cmd_leavepgmPh:
	im 0
	pushspadd
	popsp
	im 0
	nop
	im inprogrammode
	store
	im _Z11enableTimerv
	call
	im 6
	storesp 4
	im _Z11simpleReplyj
	call
	im 2
	pushspadd
	popsp
	poppc
	.size	_Z12cmd_leavepgmPh, .-_Z12cmd_leavepgmPh
	.section	.text._Z9cmd_startPh,"ax",@progbits
	.globl	_Z9cmd_startPh
	.type	_Z9cmd_startPh, @function
_Z9cmd_startPh:
	im -1
	pushspadd
	popsp
	im 134217732
	storesp 8
	im 10
	storesp 4
	im _Z11simpleReplyj
	call
	im _Z10spi_enablev
	call
	loadsp 4
	storesp 4
	im _Z15start_read_sizePVj
	call
	im _memreg+0
	load
	addsp 0
	addsp 0
	im 4
	add
	im bdata
	store
	loadsp 4
	storesp 4
	im _Z11spi_disablePVj
	call
	im _Z5flushv
	call
	im start
	call
	im 3
	pushspadd
	popsp
	poppc
	.size	_Z9cmd_startPh, .-_Z9cmd_startPh
	.section	.text.main,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	im -83
	pushspadd
	popsp
	im 0
	nop
	im inprogrammode
	store
	im 0
	nop
	im milisseconds
	store
	im 0
	nop
	im _zpu_interrupt
	nop
	im ivector
	store
	storesp 28
	im 65581
	nop
	im 142606340
	store
	im 150994976
	storesp 12
	im -3
	loadsp 12
	load
	loadsp 0
	loadsp 8
	and
	loadsp 20
	store
	storesp 12
	storesp 16
	im 150994960
	loadsp 0
	load
	loadsp 0
	loadsp 24
	and
	loadsp 8
	store
	storesp 12
	storesp 12
	im 150994944
	loadsp 0
	load
	loadsp 0
	im 2
	or
	loadsp 8
	store
	storesp 12
	storesp 12
	im _bfunctions
	loadsp 0
	im udivmodsi4
	loadsp 4
	loadsp 0
	im 4
	add
	storesp 12
	store
	im memcpy
	loadsp 4
	store
	storesp 12
	im memset
	nop
	im 8
	addsp 8
	store
	im strcmp
	nop
	im 12
	addsp 8
	store
	storesp 12
	im 8
	nop
	im 167772164
	store
	im 1
	nop
	im 167772160
	store
	im _Z11enableTimerv
	call
	im 33800
	nop
	im 192937988
	store
	im 244
	nop
	im 134217728
	store
	im 134217732
	loadsp 0
	storesp 8
	storesp 8
	im _Z11spi_disablePVj
	call
	im _Z10spi_enablev
	call
	loadsp 4
	storesp 4
	im _Z11spi_disablePVj
	call
	loadsp 24
	loadsp 28
	im 15
	pushspadd
	storesp 56
	storesp 40
	storesp 40
	im 192937984
	storesp 44
.L245:
	im _Z6inbytev
	call
	im _memreg+0
	load
	storesp 12
	loadsp 32
	im 0
	eq
	impcrel .L220
	neqbranch
.L249:
	im _memreg+0
	load
	im 126
	eq
	impcrel .L247
	neqbranch
	im _memreg+0
	load
	im 125
	eq
	impcrel .L248
	neqbranch
	loadsp 24
	im 287
	ulessthan
	impcrel .L234
	neqbranch
	loadsp 36
	im 0
	eq
	impcrel .L235
	neqbranch
	im 0
	nop
	im _memreg+0
	load
	im 32
	xor
	storesp 16
	storesp 40
.L235:
	im 85
	pushspadd
	loadsp 28
	add
	im -288
	add
	storesp 8
	loadsp 8
	loadsp 8
	storeb
	im 1
	addsp 28
	storesp 28
	im _Z6inbytev
	call
	im _memreg+0
	load
	storesp 12
	loadsp 32
	impcrel .L249
	neqbranch
.L220:
	im _memreg+0
	load
	im 126
	eq
	not
	im 1
	and
	impcrel .L245
	neqbranch
	loadsp 32
	storesp 28
	im 65535
	loadsp 44
	store
	im 1
	loadsp 28
	storesp 44
	storesp 36
	impcrel .L245
	poppcrel
.L234:
	im 0
	storesp 36
	impcrel .L245
	poppcrel
.L247:
	loadsp 24
	im 0
	eq
	impcrel .L245
	neqbranch
	im 0
	loadsp 48
	loadsp 32
	storesp 32
	storesp 24
	storesp 36
	im 2
	loadsp 28
	ulessthanorequal
	impcrel .L245
	neqbranch
	im 65535
	loadsp 44
	store
	loadsp 32
	im -2
	addsp 32
	storesp 12
	storesp 12
	loadsp 32
	loadsp 8
	ulessthanorequal
	impcrel .L241
	neqbranch
	im 192937992
	loadsp 8
	storesp 20
	storesp 32
.L228:
	loadsp 8
	addsp 20
	loadsp 0
	loadb
	loadsp 36
	store
	storesp 8
	im 1
	addsp 12
	storesp 12
	loadsp 12
	loadsp 12
	ulessthan
	impcrel .L228
	neqbranch
.L241:
	im -1
	addsp 24
	loadsp 20
	addsp 4
	storesp 16
	loadsp 20
	add
	im -1
	add
	loadsp 0
	loadb
	loadsp 16
	loadb
	loadsp 0
	loadsp 8
	im 8
	ashiftleft
	or
	loadsp 56
	load
	storesp 12
	storesp 4
	storesp 20
	storesp 4
	storesp 8
	loadsp 4
	loadsp 12
	eq
	not
	im 1
	and
	impcrel .L245
	neqbranch
	loadsp 16
	loadb
	storesp 12
	loadsp 8
	im 10
	ulessthan
	impcrel .L245
	neqbranch
	loadsp 8
	addsp 0
	addsp 0
	im handlers-4
	add
	loadsp 20
	storesp 8
	loadsp 0
	load
	storesp 4
	storesp 8
	loadsp 4
	call
	impcrel .L245
	poppcrel
.L248:
	im 1
	storesp 40
	impcrel .L245
	poppcrel
	.size	main, .-main
	.ident	"GCC: (GNU) 3.4.2"
