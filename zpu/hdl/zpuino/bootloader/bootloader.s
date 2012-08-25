
bootloader.elf:     file format elf32-zpu

Disassembly of section .fixed_vectors:

00000000 <_start>:
   0:	0b          	nop
   1:	0b          	nop
   2:	0b          	nop
   3:	97          	im 23
   4:	fe          	im -2
   5:	04          	poppc
	...

00000020 <_zpu_interrupt_vector>:
  20:	0b          	nop
  21:	0b          	nop
  22:	0b          	nop
  23:	97          	im 23
  24:	df          	im -33
  25:	04          	poppc
	...

00000040 <_loadh>:
  40:	71          	loadsp 4
  41:	fd          	im -3
  42:	06          	and
  43:	08          	load
  44:	72          	loadsp 8
  45:	83          	im 3
  46:	06          	and
  47:	09          	not
  48:	81          	im 1
  49:	05          	add
  4a:	82          	im 2
  4b:	05          	add
  4c:	83          	im 3
  4d:	2b          	ashiftleft
  4e:	2a          	lshiftright
  4f:	83          	im 3
  50:	ff          	im -1
  51:	ff          	im -1
  52:	06          	and
  53:	52          	storesp 8
  54:	04          	poppc
	...

00000060 <_storeh>:
  60:	71          	loadsp 4
  61:	fd          	im -3
  62:	06          	and
  63:	08          	load
  64:	83          	im 3
  65:	ff          	im -1
  66:	ff          	im -1
  67:	73          	loadsp 12
  68:	83          	im 3
  69:	06          	and
  6a:	09          	not
  6b:	81          	im 1
  6c:	05          	add
  6d:	82          	im 2
  6e:	05          	add
  6f:	83          	im 3
  70:	2b          	ashiftleft
  71:	2b          	ashiftleft
  72:	09          	not
  73:	06          	and
  74:	73          	loadsp 12
  75:	83          	im 3
  76:	ff          	im -1
  77:	ff          	im -1
  78:	0b          	nop
  79:	0b          	nop
  7a:	0b          	nop
  7b:	0b          	nop
  7c:	83          	im 3
  7d:	a7          	im 39
  7e:	04          	poppc
	...

00000080 <_lessthan>:
  80:	72          	loadsp 8
  81:	09          	not
  82:	81          	im 1
  83:	05          	add
  84:	72          	loadsp 8
  85:	05          	add
  86:	73          	loadsp 12
  87:	73          	loadsp 12
  88:	09          	not
  89:	06          	and
  8a:	09          	not
  8b:	06          	and
  8c:	73          	loadsp 12
  8d:	09          	not
  8e:	73          	loadsp 12
  8f:	06          	and
  90:	07          	or
  91:	0a          	flip
  92:	81          	im 1
  93:	06          	and
  94:	53          	storesp 12
  95:	51          	storesp 4
  96:	04          	poppc
	...

000000a0 <_lessthanorequal>:
  a0:	72          	loadsp 8
  a1:	72          	loadsp 8
  a2:	24          	lessthan
  a3:	73          	loadsp 12
  a4:	73          	loadsp 12
  a5:	2e          	eq
  a6:	07          	or
  a7:	53          	storesp 12
  a8:	51          	storesp 4
  a9:	04          	poppc
	...

000000c0 <_ulessthan>:
  c0:	71          	loadsp 4
  c1:	73          	loadsp 12
  c2:	71          	loadsp 4
  c3:	09          	not
  c4:	71          	loadsp 4
  c5:	06          	and
  c6:	81          	im 1
  c7:	06          	and
  c8:	30          	neg
  c9:	72          	loadsp 8
  ca:	0a          	flip
  cb:	10          	addsp 0
  cc:	0a          	flip
  cd:	72          	loadsp 8
  ce:	0a          	flip
  cf:	10          	addsp 0
  d0:	0a          	flip
  d1:	31          	sub
  d2:	05          	add
  d3:	0a          	flip
  d4:	81          	im 1
  d5:	06          	and
  d6:	51          	storesp 4
  d7:	51          	storesp 4
  d8:	53          	storesp 12
  d9:	51          	storesp 4
  da:	04          	poppc
  db:	00          	breakpoint
  dc:	00          	breakpoint
  dd:	00          	breakpoint
	...

000000e0 <_ulessthanorequal>:
  e0:	72          	loadsp 8
  e1:	72          	loadsp 8
  e2:	26          	ulessthan
  e3:	73          	loadsp 12
  e4:	73          	loadsp 12
  e5:	2e          	eq
  e6:	07          	or
  e7:	53          	storesp 12
  e8:	51          	storesp 4
  e9:	04          	poppc
	...

00000100 <_swap>:
	...

00000120 <_slowmult>:
 120:	0b          	nop
 121:	0b          	nop
 122:	0b          	nop
 123:	88          	im 8
 124:	c3          	im -61
 125:	04          	poppc
	...

00000140 <_lshiftright>:
 140:	72          	loadsp 8
 141:	0a          	flip
 142:	72          	loadsp 8
 143:	2b          	ashiftleft
 144:	0a          	flip
 145:	53          	storesp 12
 146:	51          	storesp 4
 147:	04          	poppc
	...

00000160 <_ashiftleft>:
 160:	72          	loadsp 8
 161:	72          	loadsp 8
 162:	9f          	im 31
 163:	06          	and
 164:	09          	not
 165:	81          	im 1
 166:	05          	add
 167:	0b          	nop
 168:	0b          	nop
 169:	0b          	nop
 16a:	88          	im 8
 16b:	a6          	im 38
 16c:	05          	add
 16d:	04          	poppc
	...

00000180 <_ashiftright>:
 180:	72          	loadsp 8
 181:	72          	loadsp 8
 182:	2a          	lshiftright
 183:	ff          	im -1
 184:	73          	loadsp 12
 185:	9f          	im 31
 186:	06          	and
 187:	2a          	lshiftright
 188:	09          	not
 189:	74          	loadsp 16
 18a:	09          	not
 18b:	0a          	flip
 18c:	81          	im 1
 18d:	06          	and
 18e:	ff          	im -1
 18f:	05          	add
 190:	06          	and
 191:	07          	or
 192:	53          	storesp 12
 193:	51          	storesp 4
 194:	04          	poppc
	...

000001a0 <_call>:
 1a0:	71          	loadsp 4
 1a1:	71          	loadsp 4
 1a2:	53          	storesp 12
 1a3:	51          	storesp 4
 1a4:	02          	pushsp
 1a5:	0d          	popsp
 1a6:	04          	poppc

000001a7 <_storehtail>:
 1a7:	06          	and
 1a8:	73          	loadsp 12
 1a9:	83          	im 3
 1aa:	06          	and
 1ab:	09          	not
 1ac:	81          	im 1
 1ad:	05          	add
 1ae:	82          	im 2
 1af:	05          	add
 1b0:	83          	im 3
 1b1:	2b          	ashiftleft
 1b2:	0b          	nop
 1b3:	2b          	ashiftleft
 1b4:	07          	or
 1b5:	72          	loadsp 8
 1b6:	fc          	im -4
 1b7:	06          	and
 1b8:	0c          	store
 1b9:	51          	storesp 4
 1ba:	51          	storesp 4
 1bb:	04          	poppc
 1bc:	00          	breakpoint
 1bd:	00          	breakpoint
	...

000001c0 <_eq>:
 1c0:	72          	loadsp 8
 1c1:	09          	not
 1c2:	81          	im 1
 1c3:	05          	add
 1c4:	72          	loadsp 8
 1c5:	05          	add
 1c6:	09          	not
 1c7:	70          	loadsp 0
 1c8:	81          	im 1
 1c9:	05          	add
 1ca:	09          	not
 1cb:	06          	and
 1cc:	0a          	flip
 1cd:	81          	im 1
 1ce:	06          	and
 1cf:	53          	storesp 12
 1d0:	51          	storesp 4
 1d1:	04          	poppc
	...

000001e0 <_neq>:
 1e0:	72          	loadsp 8
 1e1:	09          	not
 1e2:	81          	im 1
 1e3:	05          	add
 1e4:	72          	loadsp 8
 1e5:	05          	add
 1e6:	09          	not
 1e7:	70          	loadsp 0
 1e8:	81          	im 1
 1e9:	05          	add
 1ea:	09          	not
 1eb:	06          	and
 1ec:	0a          	flip
 1ed:	09          	not
 1ee:	81          	im 1
 1ef:	06          	and
 1f0:	53          	storesp 12
 1f1:	51          	storesp 4
 1f2:	04          	poppc
	...

00000200 <_neg>:
 200:	71          	loadsp 4
 201:	09          	not
 202:	81          	im 1
 203:	05          	add
 204:	52          	storesp 8
 205:	04          	poppc
	...

00000220 <_sub>:
 220:	72          	loadsp 8
 221:	72          	loadsp 8
 222:	09          	not
 223:	81          	im 1
 224:	05          	add
 225:	05          	add
 226:	53          	storesp 12
 227:	51          	storesp 4
 228:	04          	poppc
	...

00000240 <_xor>:
 240:	72          	loadsp 8
 241:	09          	not
 242:	72          	loadsp 8
 243:	06          	and
 244:	73          	loadsp 12
 245:	73          	loadsp 12
 246:	09          	not
 247:	06          	and
 248:	07          	or
 249:	53          	storesp 12
 24a:	51          	storesp 4
 24b:	04          	poppc
	...

00000260 <_loadb>:
 260:	71          	loadsp 4
 261:	fc          	im -4
 262:	06          	and
 263:	08          	load
 264:	72          	loadsp 8
 265:	83          	im 3
 266:	06          	and
 267:	09          	not
 268:	81          	im 1
 269:	05          	add
 26a:	83          	im 3
 26b:	05          	add
 26c:	10          	addsp 0
 26d:	10          	addsp 0
 26e:	10          	addsp 0
 26f:	2a          	lshiftright
 270:	81          	im 1
 271:	ff          	im -1
 272:	06          	and
 273:	52          	storesp 8
 274:	04          	poppc
	...

00000280 <_storeb>:
 280:	71          	loadsp 4
 281:	fc          	im -4
 282:	06          	and
 283:	08          	load
 284:	0b          	nop
 285:	0b          	nop
 286:	0b          	nop
 287:	9d          	im 29
 288:	dc          	im -36
 289:	73          	loadsp 12
 28a:	83          	im 3
 28b:	06          	and
 28c:	10          	addsp 0
 28d:	10          	addsp 0
 28e:	05          	add
 28f:	08          	load
 290:	06          	and
 291:	0b          	nop
 292:	0b          	nop
 293:	0b          	nop
 294:	88          	im 8
 295:	a9          	im 41
 296:	04          	poppc
	...

000002a0 <_div>:
 2a0:	0b          	nop
 2a1:	0b          	nop
 2a2:	0b          	nop
 2a3:	88          	im 8
 2a4:	f7          	im -9
 2a5:	04          	poppc
	...

000002c0 <_mod>:
 2c0:	0b          	nop
 2c1:	0b          	nop
 2c2:	0b          	nop
 2c3:	88          	im 8
 2c4:	df          	im -33
 2c5:	04          	poppc
	...

000002e0 <_eqbranch>:
 2e0:	72          	loadsp 8
 2e1:	09          	not
 2e2:	70          	loadsp 0
 2e3:	81          	im 1
 2e4:	05          	add
 2e5:	09          	not
 2e6:	06          	and
 2e7:	0a          	flip
 2e8:	81          	im 1
 2e9:	06          	and
 2ea:	ff          	im -1
 2eb:	05          	add
 2ec:	70          	loadsp 0
 2ed:	54          	storesp 16
 2ee:	71          	loadsp 4
 2ef:	06          	and
 2f0:	73          	loadsp 12
 2f1:	09          	not
 2f2:	72          	loadsp 8
 2f3:	74          	loadsp 16
 2f4:	05          	add
 2f5:	ff          	im -1
 2f6:	05          	add
 2f7:	06          	and
 2f8:	07          	or
 2f9:	51          	storesp 4
 2fa:	51          	storesp 4
 2fb:	51          	storesp 4
 2fc:	04          	poppc
 2fd:	00          	breakpoint
	...

00000300 <_neqbranch>:
 300:	72          	loadsp 8
 301:	09          	not
 302:	70          	loadsp 0
 303:	81          	im 1
 304:	05          	add
 305:	09          	not
 306:	06          	and
 307:	0a          	flip
 308:	09          	not
 309:	81          	im 1
 30a:	06          	and
 30b:	ff          	im -1
 30c:	05          	add
 30d:	70          	loadsp 0
 30e:	54          	storesp 16
 30f:	71          	loadsp 4
 310:	06          	and
 311:	73          	loadsp 12
 312:	09          	not
 313:	72          	loadsp 8
 314:	74          	loadsp 16
 315:	05          	add
 316:	ff          	im -1
 317:	05          	add
 318:	06          	and
 319:	07          	or
 31a:	51          	storesp 4
 31b:	51          	storesp 4
 31c:	51          	storesp 4
 31d:	04          	poppc
	...

00000320 <_poppcrel>:
 320:	05          	add
 321:	ff          	im -1
 322:	05          	add
 323:	04          	poppc
	...

00000340 <_config>:
 340:	81          	im 1
 341:	0b          	nop
 342:	0b          	nop
 343:	0b          	nop
 344:	0b          	nop
 345:	9e          	im 30
 346:	a4          	im 36
 347:	0c          	store
 348:	51          	storesp 4
 349:	04          	poppc
	...

00000360 <_pushpc>:
 360:	71          	loadsp 4
 361:	81          	im 1
 362:	05          	add
 363:	52          	storesp 8
 364:	04          	poppc
	...

00000380 <_syscall_emulate>:
	...

000003a0 <_pushspadd>:
 3a0:	02          	pushsp
 3a1:	84          	im 4
 3a2:	05          	add
 3a3:	72          	loadsp 8
 3a4:	10          	addsp 0
 3a5:	10          	addsp 0
 3a6:	05          	add
 3a7:	52          	storesp 8
 3a8:	04          	poppc
	...

000003c0 <_halfmult>:
	...

000003e0 <_callpcrel>:
 3e0:	71          	loadsp 4
 3e1:	71          	loadsp 4
 3e2:	05          	add
 3e3:	ff          	im -1
 3e4:	05          	add
 3e5:	71          	loadsp 4
 3e6:	53          	storesp 12
 3e7:	51          	storesp 4
 3e8:	02          	pushsp
 3e9:	0d          	popsp
 3ea:	04          	poppc
	...
Disassembly of section .init:

00000400 <_init>:
 400:	81          	im 1
 401:	d4          	im -44
 402:	3f          	callpcrel
 403:	95          	im 21
 404:	ab          	im 43
 405:	3f          	callpcrel
 406:	04          	poppc
Disassembly of section .text:

00000407 <_ashiftleftBegin>:
 407:	10          	addsp 0
 408:	10          	addsp 0
 409:	10          	addsp 0
 40a:	10          	addsp 0
 40b:	10          	addsp 0
 40c:	10          	addsp 0
 40d:	10          	addsp 0
 40e:	10          	addsp 0
 40f:	10          	addsp 0
 410:	10          	addsp 0
 411:	10          	addsp 0
 412:	10          	addsp 0
 413:	10          	addsp 0
 414:	10          	addsp 0
 415:	10          	addsp 0
 416:	10          	addsp 0
 417:	10          	addsp 0
 418:	10          	addsp 0
 419:	10          	addsp 0
 41a:	10          	addsp 0
 41b:	10          	addsp 0
 41c:	10          	addsp 0
 41d:	10          	addsp 0
 41e:	10          	addsp 0
 41f:	10          	addsp 0
 420:	10          	addsp 0
 421:	10          	addsp 0
 422:	10          	addsp 0
 423:	10          	addsp 0
 424:	10          	addsp 0
 425:	10          	addsp 0

00000426 <_ashiftleftEnd>:
 426:	53          	storesp 12
 427:	51          	storesp 4
 428:	04          	poppc

00000429 <_storebtail>:
 429:	73          	loadsp 12
 42a:	81          	im 1
 42b:	ff          	im -1
 42c:	06          	and
 42d:	73          	loadsp 12
 42e:	83          	im 3
 42f:	06          	and
 430:	09          	not
 431:	81          	im 1
 432:	05          	add
 433:	83          	im 3
 434:	05          	add
 435:	10          	addsp 0
 436:	10          	addsp 0
 437:	10          	addsp 0
 438:	2b          	ashiftleft
 439:	07          	or
 43a:	72          	loadsp 8
 43b:	fc          	im -4
 43c:	06          	and
 43d:	0c          	store
 43e:	51          	storesp 4
 43f:	51          	storesp 4
 440:	04          	poppc

00000441 <_syscall>:
 441:	3c          	syscall
 442:	04          	poppc

00000443 <_slowmultImpl>:
 443:	72          	loadsp 8
 444:	72          	loadsp 8
 445:	80          	im 0
 446:	72          	loadsp 8
 447:	81          	im 1
 448:	06          	and
 449:	ff          	im -1
 44a:	05          	add
 44b:	09          	not
 44c:	72          	loadsp 8
 44d:	06          	and
 44e:	05          	add
 44f:	71          	loadsp 4
 450:	10          	addsp 0
 451:	52          	storesp 8
 452:	72          	loadsp 8
 453:	0a          	flip
 454:	10          	addsp 0
 455:	0a          	flip
 456:	53          	storesp 12
 457:	72          	loadsp 8
 458:	ed          	im -19
 459:	38          	neqbranch
 45a:	51          	storesp 4
 45b:	51          	storesp 4
 45c:	53          	storesp 12
 45d:	51          	storesp 4
 45e:	04          	poppc

0000045f <___mod>:
 45f:	88          	im 8
 460:	08          	load
 461:	8c          	im 12
 462:	08          	load
 463:	90          	im 16
 464:	08          	load
 465:	75          	loadsp 20
 466:	75          	loadsp 20
 467:	98          	im 24
 468:	de          	im -34
 469:	2d          	call
 46a:	50          	storesp 0
 46b:	50          	storesp 0
 46c:	88          	im 8
 46d:	08          	load
 46e:	56          	storesp 24
 46f:	90          	im 16
 470:	0c          	store
 471:	8c          	im 12
 472:	0c          	store
 473:	88          	im 8
 474:	0c          	store
 475:	51          	storesp 4
 476:	04          	poppc

00000477 <___div>:
 477:	88          	im 8
 478:	08          	load
 479:	8c          	im 12
 47a:	08          	load
 47b:	90          	im 16
 47c:	08          	load
 47d:	75          	loadsp 20
 47e:	75          	loadsp 20
 47f:	98          	im 24
 480:	9a          	im 26
 481:	2d          	call
 482:	50          	storesp 0
 483:	50          	storesp 0
 484:	88          	im 8
 485:	08          	load
 486:	56          	storesp 24
 487:	90          	im 16
 488:	0c          	store
 489:	8c          	im 12
 48a:	0c          	store
 48b:	88          	im 8
 48c:	0c          	store
 48d:	51          	storesp 4
 48e:	04          	poppc
 48f:	88          	im 8
 490:	08          	load
 491:	8c          	im 12
 492:	08          	load
 493:	90          	im 16
 494:	08          	load
 495:	8e          	im 14
 496:	90          	im 16
 497:	2d          	call
 498:	90          	im 16
 499:	0c          	store
 49a:	8c          	im 12
 49b:	0c          	store
 49c:	88          	im 8
 49d:	0c          	store
 49e:	04          	poppc

0000049f <__do_global_dtors_aux>:
 49f:	ff          	im -1
 4a0:	3d          	pushspadd
 4a1:	0d          	popsp
 4a2:	0b          	nop
 4a3:	0b          	nop
 4a4:	0b          	nop
 4a5:	9e          	im 30
 4a6:	b4          	im 52
 4a7:	33          	loadb
 4a8:	51          	storesp 4
 4a9:	70          	loadsp 0
 4aa:	a6          	im 38
 4ab:	38          	neqbranch
 4ac:	9e          	im 30
 4ad:	b0          	im 48
 4ae:	08          	load
 4af:	70          	loadsp 0
 4b0:	08          	load
 4b1:	52          	storesp 8
 4b2:	52          	storesp 8
 4b3:	70          	loadsp 0
 4b4:	80          	im 0
 4b5:	2e          	eq
 4b6:	92          	im 18
 4b7:	38          	neqbranch

000004b8 <.L10>:
 4b8:	84          	im 4
 4b9:	12          	addsp 8
 4ba:	9e          	im 30
 4bb:	b0          	im 48
 4bc:	0c          	store
 4bd:	70          	loadsp 0
 4be:	2d          	call
 4bf:	9e          	im 30
 4c0:	b0          	im 48
 4c1:	08          	load
 4c2:	70          	loadsp 0
 4c3:	08          	load
 4c4:	52          	storesp 8
 4c5:	52          	storesp 8
 4c6:	70          	loadsp 0
 4c7:	f0          	im -16
 4c8:	38          	neqbranch

000004c9 <.L7>:
 4c9:	81          	im 1
 4ca:	0b          	nop
 4cb:	0b          	nop
 4cc:	0b          	nop
 4cd:	0b          	nop
 4ce:	9e          	im 30
 4cf:	b4          	im 52
 4d0:	34          	storeb

000004d1 <.L1>:
 4d1:	83          	im 3
 4d2:	3d          	pushspadd
 4d3:	0d          	popsp
 4d4:	04          	poppc

000004d5 <call___do_global_dtors_aux>:
 4d5:	04          	poppc

000004d6 <frame_dummy>:
 4d6:	80          	im 0
 4d7:	3d          	pushspadd
 4d8:	0d          	popsp
 4d9:	0b          	nop
 4da:	0b          	nop
 4db:	0b          	nop
 4dc:	9e          	im 30
 4dd:	d8          	im -40
 4de:	08          	load
 4df:	80          	im 0
 4e0:	2e          	eq
 4e1:	8e          	im 14
 4e2:	38          	neqbranch
 4e3:	0b          	nop
 4e4:	0b          	nop
 4e5:	0b          	nop
 4e6:	0b          	nop
 4e7:	80          	im 0
 4e8:	0b          	nop
 4e9:	80          	im 0
 4ea:	2e          	eq
 4eb:	09          	not
 4ec:	81          	im 1
 4ed:	06          	and
 4ee:	85          	im 5
 4ef:	38          	neqbranch

000004f0 <.L12>:
 4f0:	82          	im 2
 4f1:	3d          	pushspadd
 4f2:	0d          	popsp
 4f3:	04          	poppc

000004f4 <.L15>:
 4f4:	0b          	nop
 4f5:	0b          	nop
 4f6:	0b          	nop
 4f7:	9e          	im 30
 4f8:	d8          	im -40
 4f9:	51          	storesp 4
 4fa:	0b          	nop
 4fb:	0b          	nop
 4fc:	0b          	nop
 4fd:	f6          	im -10
 4fe:	81          	im 1
 4ff:	3f          	callpcrel
 500:	82          	im 2
 501:	3d          	pushspadd
 502:	0d          	popsp
 503:	04          	poppc

00000504 <call_frame_dummy>:
 504:	04          	poppc

00000505 <_Z5flushv>:
 505:	ff          	im -1
 506:	3d          	pushspadd
 507:	0d          	popsp
 508:	80          	im 0
 509:	c4          	im -60
 50a:	80          	im 0
 50b:	80          	im 0
 50c:	84          	im 4
 50d:	52          	storesp 8

0000050e <.L2>:
 50e:	71          	loadsp 4
 50f:	08          	load
 510:	70          	loadsp 0
 511:	82          	im 2
 512:	2a          	lshiftright
 513:	70          	loadsp 0
 514:	81          	im 1
 515:	06          	and
 516:	51          	storesp 4
 517:	51          	storesp 4
 518:	51          	storesp 4
 519:	70          	loadsp 0
 51a:	f3          	im -13
 51b:	38          	neqbranch
 51c:	83          	im 3
 51d:	3d          	pushspadd
 51e:	0d          	popsp
 51f:	04          	poppc

00000520 <_Z7outbytei>:
 520:	ff          	im -1
 521:	3d          	pushspadd
 522:	0d          	popsp
 523:	80          	im 0
 524:	c4          	im -60
 525:	80          	im 0
 526:	80          	im 0
 527:	84          	im 4
 528:	52          	storesp 8

00000529 <.L7>:
 529:	71          	loadsp 4
 52a:	08          	load
 52b:	70          	loadsp 0
 52c:	81          	im 1
 52d:	2a          	lshiftright
 52e:	70          	loadsp 0
 52f:	81          	im 1
 530:	06          	and
 531:	51          	storesp 4
 532:	51          	storesp 4
 533:	51          	storesp 4
 534:	70          	loadsp 0
 535:	f3          	im -13
 536:	38          	neqbranch
 537:	73          	loadsp 12
 538:	82          	im 2
 539:	90          	im 16
 53a:	0a          	flip
 53b:	0c          	store
 53c:	83          	im 3
 53d:	3d          	pushspadd
 53e:	0d          	popsp
 53f:	04          	poppc

00000540 <_Z8sendBytej>:
 540:	fe          	im -2
 541:	3d          	pushspadd
 542:	0d          	popsp
 543:	74          	loadsp 16
 544:	70          	loadsp 0
 545:	80          	im 0
 546:	dc          	im -36
 547:	80          	im 0
 548:	80          	im 0
 549:	88          	im 8
 54a:	0c          	store
 54b:	70          	loadsp 0
 54c:	81          	im 1
 54d:	ff          	im -1
 54e:	06          	and
 54f:	ff          	im -1
 550:	83          	im 3
 551:	11          	addsp 4
 552:	54          	storesp 16
 553:	51          	storesp 4
 554:	53          	storesp 12
 555:	71          	loadsp 4
 556:	81          	im 1
 557:	26          	ulessthan
 558:	92          	im 18
 559:	38          	neqbranch
 55a:	80          	im 0
 55b:	fd          	im -3
 55c:	51          	storesp 4
 55d:	8a          	im 10
 55e:	a0          	im 32
 55f:	2d          	call
 560:	72          	loadsp 8
 561:	a0          	im 32
 562:	32          	xor
 563:	51          	storesp 4
 564:	8a          	im 10
 565:	a0          	im 32
 566:	2d          	call
 567:	84          	im 4
 568:	3d          	pushspadd
 569:	0d          	popsp
 56a:	04          	poppc

0000056b <.L28>:
 56b:	72          	loadsp 8
 56c:	51          	storesp 4
 56d:	8a          	im 10
 56e:	a0          	im 32
 56f:	2d          	call
 570:	84          	im 4
 571:	3d          	pushspadd
 572:	0d          	popsp
 573:	04          	poppc

00000574 <_Z11prepareSendv>:
 574:	80          	im 0
 575:	3d          	pushspadd
 576:	0d          	popsp
 577:	83          	im 3
 578:	ff          	im -1
 579:	ff          	im -1
 57a:	0b          	nop
 57b:	83          	im 3
 57c:	d0          	im -48
 57d:	0a          	flip
 57e:	0c          	store
 57f:	80          	im 0
 580:	fe          	im -2
 581:	51          	storesp 4
 582:	8a          	im 10
 583:	a0          	im 32
 584:	2d          	call
 585:	82          	im 2
 586:	3d          	pushspadd
 587:	0d          	popsp
 588:	04          	poppc

00000589 <_Z10finishSendv>:
 589:	ff          	im -1
 58a:	3d          	pushspadd
 58b:	0d          	popsp
 58c:	83          	im 3
 58d:	d0          	im -48
 58e:	0a          	flip
 58f:	08          	load
 590:	70          	loadsp 0
 591:	88          	im 8
 592:	2a          	lshiftright
 593:	52          	storesp 8
 594:	52          	storesp 8
 595:	8a          	im 10
 596:	c0          	im -64
 597:	2d          	call
 598:	71          	loadsp 4
 599:	81          	im 1
 59a:	ff          	im -1
 59b:	06          	and
 59c:	51          	storesp 4
 59d:	8a          	im 10
 59e:	c0          	im -64
 59f:	2d          	call
 5a0:	80          	im 0
 5a1:	fe          	im -2
 5a2:	51          	storesp 4
 5a3:	8a          	im 10
 5a4:	a0          	im 32
 5a5:	2d          	call
 5a6:	83          	im 3
 5a7:	3d          	pushspadd
 5a8:	0d          	popsp
 5a9:	04          	poppc

000005aa <_Z6inbytev>:
 5aa:	fe          	im -2
 5ab:	3d          	pushspadd
 5ac:	0d          	popsp
 5ad:	80          	im 0
 5ae:	c4          	im -60
 5af:	80          	im 0
 5b0:	80          	im 0
 5b1:	84          	im 4
 5b2:	53          	storesp 12

000005b3 <.L43>:
 5b3:	72          	loadsp 8
 5b4:	08          	load
 5b5:	70          	loadsp 0
 5b6:	81          	im 1
 5b7:	06          	and
 5b8:	51          	storesp 4
 5b9:	51          	storesp 4
 5ba:	70          	loadsp 0
 5bb:	9f          	im 31
 5bc:	38          	neqbranch
 5bd:	9e          	im 30
 5be:	c0          	im -64
 5bf:	08          	load
 5c0:	52          	storesp 8
 5c1:	71          	loadsp 4
 5c2:	f0          	im -16
 5c3:	38          	neqbranch
 5c4:	9e          	im 30
 5c5:	bc          	im 60
 5c6:	08          	load
 5c7:	51          	storesp 4
 5c8:	87          	im 7
 5c9:	e8          	im -24
 5ca:	71          	loadsp 4
 5cb:	27          	ulessthanorequal
 5cc:	e6          	im -26
 5cd:	38          	neqbranch
 5ce:	71          	loadsp 4
 5cf:	80          	im 0
 5d0:	d0          	im -48
 5d1:	0a          	flip
 5d2:	0c          	store
 5d3:	71          	loadsp 4
 5d4:	83          	im 3
 5d5:	90          	im 16
 5d6:	0a          	flip
 5d7:	0c          	store
 5d8:	98          	im 24
 5d9:	8c          	im 12
 5da:	2d          	call

000005db <.L39>:
 5db:	82          	im 2
 5dc:	90          	im 16
 5dd:	0a          	flip
 5de:	08          	load
 5df:	88          	im 8
 5e0:	0c          	store
 5e1:	84          	im 4
 5e2:	3d          	pushspadd
 5e3:	0d          	popsp
 5e4:	04          	poppc

000005e5 <_Z11enableTimerv>:
 5e5:	82          	im 2
 5e6:	f6          	im -10
 5e7:	ff          	im -1
 5e8:	0b          	nop
 5e9:	80          	im 0
 5ea:	cc          	im -52
 5eb:	80          	im 0
 5ec:	80          	im 0
 5ed:	88          	im 8
 5ee:	0c          	store
 5ef:	80          	im 0
 5f0:	0b          	nop
 5f1:	80          	im 0
 5f2:	cc          	im -52
 5f3:	80          	im 0
 5f4:	80          	im 0
 5f5:	84          	im 4
 5f6:	0c          	store
 5f7:	9f          	im 31
 5f8:	0b          	nop
 5f9:	83          	im 3
 5fa:	90          	im 16
 5fb:	0a          	flip
 5fc:	0c          	store
 5fd:	04          	poppc

000005fe <_Z11spi_disablePVj>:
 5fe:	ff          	im -1
 5ff:	3d          	pushspadd
 600:	0d          	popsp
 601:	73          	loadsp 12
 602:	70          	loadsp 0
 603:	08          	load
 604:	51          	storesp 4
 605:	51          	storesp 4
 606:	80          	im 0
 607:	c8          	im -56
 608:	80          	im 0
 609:	80          	im 0
 60a:	84          	im 4
 60b:	70          	loadsp 0
 60c:	08          	load
 60d:	70          	loadsp 0
 60e:	84          	im 4
 60f:	80          	im 0
 610:	80          	im 0
 611:	07          	or
 612:	72          	loadsp 8
 613:	0c          	store
 614:	52          	storesp 8
 615:	52          	storesp 8
 616:	83          	im 3
 617:	3d          	pushspadd
 618:	0d          	popsp
 619:	04          	poppc

0000061a <_Z10spi_enablev>:
 61a:	ff          	im -1
 61b:	3d          	pushspadd
 61c:	0d          	popsp
 61d:	80          	im 0
 61e:	c8          	im -56
 61f:	80          	im 0
 620:	80          	im 0
 621:	84          	im 4
 622:	70          	loadsp 0
 623:	08          	load
 624:	70          	loadsp 0
 625:	fb          	im -5
 626:	ff          	im -1
 627:	ff          	im -1
 628:	06          	and
 629:	72          	loadsp 8
 62a:	0c          	store
 62b:	52          	storesp 8
 62c:	52          	storesp 8
 62d:	83          	im 3
 62e:	3d          	pushspadd
 62f:	0d          	popsp
 630:	04          	poppc

00000631 <start>:
 631:	a0          	im 32
 632:	90          	im 16
 633:	0b          	nop
 634:	a0          	im 32
 635:	80          	im 0
 636:	0c          	store
 637:	9e          	im 30
 638:	b8          	im 56
 639:	0b          	nop
 63a:	a0          	im 32
 63b:	84          	im 4
 63c:	0c          	store
 63d:	98          	im 24
 63e:	93          	im 19
 63f:	2d          	call

00000640 <_Z15start_read_sizePVj>:
 640:	ff          	im -1
 641:	3d          	pushspadd
 642:	0d          	popsp
 643:	73          	loadsp 12
 644:	51          	storesp 4
 645:	8b          	im 11
 646:	71          	loadsp 4
 647:	0c          	store
 648:	90          	im 16
 649:	11          	addsp 4
 64a:	52          	storesp 8
 64b:	90          	im 16
 64c:	c0          	im -64
 64d:	80          	im 0
 64e:	72          	loadsp 8
 64f:	0c          	store
 650:	80          	im 0
 651:	72          	loadsp 8
 652:	0c          	store
 653:	70          	loadsp 0
 654:	08          	load
 655:	83          	im 3
 656:	ff          	im -1
 657:	ff          	im -1
 658:	06          	and
 659:	88          	im 8
 65a:	0c          	store
 65b:	83          	im 3
 65c:	3d          	pushspadd
 65d:	0d          	popsp
 65e:	04          	poppc

0000065f <spi_copy_impl>:
 65f:	f8          	im -8
 660:	3d          	pushspadd
 661:	0d          	popsp
 662:	a0          	im 32
 663:	80          	im 0
 664:	56          	storesp 24
 665:	80          	im 0
 666:	c0          	im -64
 667:	80          	im 0
 668:	80          	im 0
 669:	84          	im 4
 66a:	54          	storesp 16
 66b:	83          	im 3
 66c:	d0          	im -48
 66d:	0a          	flip
 66e:	57          	storesp 28
 66f:	8c          	im 12
 670:	9a          	im 26
 671:	2d          	call
 672:	73          	loadsp 12
 673:	51          	storesp 4
 674:	8c          	im 12
 675:	c0          	im -64
 676:	2d          	call
 677:	88          	im 8
 678:	08          	load
 679:	10          	addsp 0
 67a:	10          	addsp 0
 67b:	90          	im 16
 67c:	c0          	im -64
 67d:	84          	im 4
 67e:	05          	add
 67f:	9e          	im 30
 680:	b8          	im 56
 681:	0c          	store
 682:	80          	im 0
 683:	70          	loadsp 0
 684:	75          	loadsp 20
 685:	0c          	store
 686:	74          	loadsp 16
 687:	0c          	store
 688:	73          	loadsp 12
 689:	08          	load
 68a:	83          	im 3
 68b:	ff          	im -1
 68c:	ff          	im -1
 68d:	06          	and
 68e:	59          	storesp 36
 68f:	88          	im 8
 690:	08          	load
 691:	80          	im 0
 692:	df          	im -33
 693:	80          	im 0
 694:	26          	ulessthan
 695:	80          	im 0
 696:	db          	im -37
 697:	38          	neqbranch
 698:	83          	im 3
 699:	ff          	im -1
 69a:	ff          	im -1
 69b:	77          	loadsp 28
 69c:	0c          	store
 69d:	88          	im 8
 69e:	08          	load
 69f:	ff          	im -1
 6a0:	05          	add
 6a1:	55          	storesp 20
 6a2:	74          	loadsp 16
 6a3:	ff          	im -1
 6a4:	2e          	eq
 6a5:	a7          	im 39
 6a6:	38          	neqbranch
 6a7:	80          	im 0
 6a8:	58          	storesp 32

000006a9 <.L94>:
 6a9:	84          	im 4
 6aa:	53          	storesp 12

000006ab <.L91>:
 6ab:	77          	loadsp 28
 6ac:	74          	loadsp 16
 6ad:	0c          	store
 6ae:	73          	loadsp 12
 6af:	08          	load
 6b0:	88          	im 8
 6b1:	18          	addsp 32
 6b2:	0c          	store
 6b3:	ff          	im -1
 6b4:	13          	addsp 12
 6b5:	53          	storesp 12
 6b6:	72          	loadsp 8
 6b7:	f3          	im -13
 6b8:	38          	neqbranch
 6b9:	75          	loadsp 20
 6ba:	84          	im 4
 6bb:	17          	addsp 28
 6bc:	75          	loadsp 20
 6bd:	08          	load
 6be:	72          	loadsp 8
 6bf:	0c          	store
 6c0:	ff          	im -1
 6c1:	17          	addsp 28
 6c2:	57          	storesp 28
 6c3:	57          	storesp 28
 6c4:	53          	storesp 12
 6c5:	74          	loadsp 16
 6c6:	ff          	im -1
 6c7:	2e          	eq
 6c8:	09          	not
 6c9:	81          	im 1
 6ca:	06          	and
 6cb:	dd          	im -35
 6cc:	38          	neqbranch

000006cd <.L104>:
 6cd:	73          	loadsp 12
 6ce:	51          	storesp 4
 6cf:	8b          	im 11
 6d0:	fe          	im -2
 6d1:	2d          	call
 6d2:	76          	loadsp 24
 6d3:	08          	load
 6d4:	52          	storesp 8
 6d5:	71          	loadsp 4
 6d6:	79          	loadsp 36
 6d7:	2e          	eq
 6d8:	09          	not
 6d9:	81          	im 1
 6da:	06          	and
 6db:	98          	im 24
 6dc:	38          	neqbranch
 6dd:	a0          	im 32
 6de:	84          	im 4
 6df:	08          	load
 6e0:	52          	storesp 8
 6e1:	71          	loadsp 4
 6e2:	fa          	im -6
 6e3:	a0          	im 32
 6e4:	88          	im 8
 6e5:	9c          	im 28
 6e6:	80          	im 0
 6e7:	2e          	eq
 6e8:	93          	im 19
 6e9:	38          	neqbranch
 6ea:	80          	im 0
 6eb:	c2          	im -62
 6ec:	51          	storesp 4
 6ed:	8a          	im 10
 6ee:	a0          	im 32
 6ef:	2d          	call

000006f0 <.L99>:
 6f0:	ff          	im -1
 6f1:	39          	poppcrel

000006f2 <.L80>:
 6f2:	ff          	im -1
 6f3:	39          	poppcrel

000006f4 <.L108>:
 6f4:	80          	im 0
 6f5:	c3          	im -61
 6f6:	51          	storesp 4
 6f7:	8a          	im 10
 6f8:	a0          	im 32
 6f9:	2d          	call

000006fa <.L96>:
 6fa:	ff          	im -1
 6fb:	39          	poppcrel

000006fc <.L98>:
 6fc:	90          	im 16
 6fd:	0a          	flip
 6fe:	70          	loadsp 0
 6ff:	08          	load
 700:	70          	loadsp 0
 701:	ff          	im -1
 702:	bf          	im 63
 703:	06          	and
 704:	72          	loadsp 8
 705:	0c          	store
 706:	53          	storesp 12
 707:	53          	storesp 12
 708:	8a          	im 10
 709:	85          	im 5
 70a:	2d          	call
 70b:	8c          	im 12
 70c:	b1          	im 49
 70d:	2d          	call

0000070e <.L101>:
 70e:	ff          	im -1
 70f:	39          	poppcrel

00000710 <_zpu_interrupt>:
 710:	ff          	im -1
 711:	3d          	pushspadd
 712:	0d          	popsp
 713:	9e          	im 30
 714:	bc          	im 60
 715:	08          	load
 716:	81          	im 1
 717:	11          	addsp 4
 718:	9e          	im 30
 719:	bc          	im 60
 71a:	0c          	store
 71b:	51          	storesp 4
 71c:	83          	im 3
 71d:	90          	im 16
 71e:	0a          	flip
 71f:	70          	loadsp 0
 720:	08          	load
 721:	70          	loadsp 0
 722:	fe          	im -2
 723:	ff          	im -1
 724:	06          	and
 725:	72          	loadsp 8
 726:	0c          	store
 727:	52          	storesp 8
 728:	52          	storesp 8
 729:	83          	im 3
 72a:	3d          	pushspadd
 72b:	0d          	popsp
 72c:	04          	poppc

0000072d <_Z11simpleReplyj>:
 72d:	80          	im 0
 72e:	3d          	pushspadd
 72f:	0d          	popsp
 730:	8a          	im 10
 731:	f4          	im -12
 732:	2d          	call
 733:	72          	loadsp 8
 734:	81          	im 1
 735:	80          	im 0
 736:	07          	or
 737:	51          	storesp 4
 738:	8a          	im 10
 739:	c0          	im -64
 73a:	2d          	call
 73b:	8b          	im 11
 73c:	89          	im 9
 73d:	2d          	call
 73e:	82          	im 2
 73f:	3d          	pushspadd
 740:	0d          	popsp
 741:	04          	poppc

00000742 <_Z15spi_read_statusv>:
 742:	fe          	im -2
 743:	3d          	pushspadd
 744:	0d          	popsp
 745:	80          	im 0
 746:	c0          	im -64
 747:	80          	im 0
 748:	80          	im 0
 749:	84          	im 4
 74a:	53          	storesp 12
 74b:	8c          	im 12
 74c:	9a          	im 26
 74d:	2d          	call
 74e:	85          	im 5
 74f:	73          	loadsp 12
 750:	0c          	store
 751:	80          	im 0
 752:	73          	loadsp 12
 753:	0c          	store
 754:	72          	loadsp 8
 755:	08          	load
 756:	70          	loadsp 0
 757:	81          	im 1
 758:	ff          	im -1
 759:	06          	and
 75a:	74          	loadsp 16
 75b:	53          	storesp 12
 75c:	51          	storesp 4
 75d:	52          	storesp 8
 75e:	8b          	im 11
 75f:	fe          	im -2
 760:	2d          	call
 761:	71          	loadsp 4
 762:	88          	im 8
 763:	0c          	store
 764:	84          	im 4
 765:	3d          	pushspadd
 766:	0d          	popsp
 767:	04          	poppc

00000768 <_Z11cmd_progmemPh>:
 768:	fc          	im -4
 769:	3d          	pushspadd
 76a:	0d          	popsp
 76b:	76          	loadsp 24
 76c:	81          	im 1
 76d:	11          	addsp 4
 76e:	33          	loadb
 76f:	82          	im 2
 770:	12          	addsp 8
 771:	33          	loadb
 772:	71          	loadsp 4
 773:	81          	im 1
 774:	80          	im 0
 775:	0a          	flip
 776:	29          	mult
 777:	71          	loadsp 4
 778:	84          	im 4
 779:	80          	im 0
 77a:	80          	im 0
 77b:	29          	mult
 77c:	05          	add
 77d:	83          	im 3
 77e:	14          	addsp 16
 77f:	33          	loadb
 780:	70          	loadsp 0
 781:	82          	im 2
 782:	80          	im 0
 783:	29          	mult
 784:	12          	addsp 8
 785:	84          	im 4
 786:	16          	addsp 24
 787:	33          	loadb
 788:	52          	storesp 8
 789:	71          	loadsp 4
 78a:	05          	add
 78b:	a0          	im 32
 78c:	80          	im 0
 78d:	05          	add
 78e:	86          	im 6
 78f:	16          	addsp 24
 790:	85          	im 5
 791:	17          	addsp 28
 792:	33          	loadb
 793:	ff          	im -1
 794:	11          	addsp 4
 795:	51          	storesp 4
 796:	57          	storesp 28
 797:	52          	storesp 8
 798:	53          	storesp 12
 799:	53          	storesp 12
 79a:	55          	storesp 20
 79b:	57          	storesp 28
 79c:	55          	storesp 20
 79d:	53          	storesp 12
 79e:	72          	loadsp 8
 79f:	ff          	im -1
 7a0:	2e          	eq
 7a1:	9a          	im 26
 7a2:	38          	neqbranch

000007a3 <.L131>:
 7a3:	73          	loadsp 12
 7a4:	70          	loadsp 0
 7a5:	81          	im 1
 7a6:	05          	add
 7a7:	55          	storesp 20
 7a8:	33          	loadb
 7a9:	52          	storesp 8
 7aa:	71          	loadsp 4
 7ab:	75          	loadsp 20
 7ac:	70          	loadsp 0
 7ad:	81          	im 1
 7ae:	05          	add
 7af:	57          	storesp 28
 7b0:	34          	storeb
 7b1:	ff          	im -1
 7b2:	13          	addsp 12
 7b3:	53          	storesp 12
 7b4:	72          	loadsp 8
 7b5:	ff          	im -1
 7b6:	2e          	eq
 7b7:	09          	not
 7b8:	81          	im 1
 7b9:	06          	and
 7ba:	e8          	im -24
 7bb:	38          	neqbranch

000007bc <.L128>:
 7bc:	89          	im 9
 7bd:	51          	storesp 4
 7be:	8e          	im 14
 7bf:	ad          	im 45
 7c0:	2d          	call
 7c1:	86          	im 6
 7c2:	3d          	pushspadd
 7c3:	0d          	popsp
 7c4:	04          	poppc

000007c5 <_Z20cmd_raw_send_receivePh>:
 7c5:	f9          	im -7
 7c6:	3d          	pushspadd
 7c7:	0d          	popsp
 7c8:	79          	loadsp 36
 7c9:	57          	storesp 28
 7ca:	80          	im 0
 7cb:	c0          	im -64
 7cc:	80          	im 0
 7cd:	80          	im 0
 7ce:	84          	im 4
 7cf:	56          	storesp 24
 7d0:	8c          	im 12
 7d1:	9a          	im 26
 7d2:	2d          	call
 7d3:	81          	im 1
 7d4:	17          	addsp 28
 7d5:	33          	loadb
 7d6:	82          	im 2
 7d7:	18          	addsp 32
 7d8:	33          	loadb
 7d9:	71          	loadsp 4
 7da:	82          	im 2
 7db:	80          	im 0
 7dc:	29          	mult
 7dd:	05          	add
 7de:	53          	storesp 12
 7df:	53          	storesp 12
 7e0:	71          	loadsp 4
 7e1:	80          	im 0
 7e2:	2e          	eq
 7e3:	94          	im 20
 7e4:	38          	neqbranch
 7e5:	85          	im 5
 7e6:	17          	addsp 28
 7e7:	72          	loadsp 8
 7e8:	55          	storesp 20
 7e9:	53          	storesp 12

000007ea <.L138>:
 7ea:	72          	loadsp 8
 7eb:	70          	loadsp 0
 7ec:	81          	im 1
 7ed:	05          	add
 7ee:	54          	storesp 16
 7ef:	33          	loadb
 7f0:	76          	loadsp 24
 7f1:	0c          	store
 7f2:	ff          	im -1
 7f3:	14          	addsp 16
 7f4:	54          	storesp 16
 7f5:	73          	loadsp 12
 7f6:	f3          	im -13
 7f7:	38          	neqbranch

000007f8 <.L152>:
 7f8:	83          	im 3
 7f9:	17          	addsp 28
 7fa:	33          	loadb
 7fb:	84          	im 4
 7fc:	18          	addsp 32
 7fd:	33          	loadb
 7fe:	71          	loadsp 4
 7ff:	82          	im 2
 800:	80          	im 0
 801:	29          	mult
 802:	05          	add
 803:	56          	storesp 24
 804:	52          	storesp 8
 805:	80          	im 0
 806:	54          	storesp 16
 807:	73          	loadsp 12
 808:	75          	loadsp 20
 809:	27          	ulessthanorequal
 80a:	97          	im 23
 80b:	38          	neqbranch
 80c:	73          	loadsp 12
 80d:	58          	storesp 32

0000080e <.L146>:
 80e:	77          	loadsp 28
 80f:	76          	loadsp 24
 810:	0c          	store
 811:	73          	loadsp 12
 812:	17          	addsp 28
 813:	76          	loadsp 24
 814:	08          	load
 815:	53          	storesp 12
 816:	53          	storesp 12
 817:	71          	loadsp 4
 818:	73          	loadsp 12
 819:	34          	storeb
 81a:	81          	im 1
 81b:	14          	addsp 16
 81c:	54          	storesp 16
 81d:	74          	loadsp 16
 81e:	74          	loadsp 16
 81f:	26          	ulessthan
 820:	ed          	im -19
 821:	38          	neqbranch

00000822 <.L154>:
 822:	75          	loadsp 20
 823:	51          	storesp 4
 824:	8b          	im 11
 825:	fe          	im -2
 826:	2d          	call
 827:	8a          	im 10
 828:	f4          	im -12
 829:	2d          	call
 82a:	81          	im 1
 82b:	84          	im 4
 82c:	51          	storesp 4
 82d:	8a          	im 10
 82e:	c0          	im -64
 82f:	2d          	call
 830:	74          	loadsp 16
 831:	88          	im 8
 832:	2a          	lshiftright
 833:	51          	storesp 4
 834:	8a          	im 10
 835:	c0          	im -64
 836:	2d          	call
 837:	74          	loadsp 16
 838:	51          	storesp 4
 839:	8a          	im 10
 83a:	c0          	im -64
 83b:	2d          	call
 83c:	80          	im 0
 83d:	54          	storesp 16
 83e:	73          	loadsp 12
 83f:	75          	loadsp 20
 840:	27          	ulessthanorequal
 841:	92          	im 18
 842:	38          	neqbranch

00000843 <.L159>:
 843:	73          	loadsp 12
 844:	17          	addsp 28
 845:	70          	loadsp 0
 846:	33          	loadb
 847:	52          	storesp 8
 848:	52          	storesp 8
 849:	8a          	im 10
 84a:	c0          	im -64
 84b:	2d          	call
 84c:	81          	im 1
 84d:	14          	addsp 16
 84e:	54          	storesp 16
 84f:	74          	loadsp 16
 850:	74          	loadsp 16
 851:	26          	ulessthan
 852:	f0          	im -16
 853:	38          	neqbranch

00000854 <.L156>:
 854:	8b          	im 11
 855:	89          	im 9
 856:	2d          	call
 857:	89          	im 9
 858:	3d          	pushspadd
 859:	0d          	popsp
 85a:	04          	poppc

0000085b <_Z19cmd_sst_aai_programPh>:
 85b:	f9          	im -7
 85c:	3d          	pushspadd
 85d:	0d          	popsp
 85e:	79          	loadsp 36
 85f:	56          	storesp 24
 860:	80          	im 0
 861:	c0          	im -64
 862:	80          	im 0
 863:	80          	im 0
 864:	84          	im 4
 865:	55          	storesp 20
 866:	8c          	im 12
 867:	9a          	im 26
 868:	2d          	call
 869:	86          	im 6
 86a:	75          	loadsp 20
 86b:	0c          	store
 86c:	74          	loadsp 16
 86d:	51          	storesp 4
 86e:	8b          	im 11
 86f:	fe          	im -2
 870:	2d          	call
 871:	8c          	im 12
 872:	9a          	im 26
 873:	2d          	call
 874:	81          	im 1
 875:	ad          	im 45
 876:	70          	loadsp 0
 877:	76          	loadsp 24
 878:	0c          	store
 879:	81          	im 1
 87a:	17          	addsp 28
 87b:	33          	loadb
 87c:	82          	im 2
 87d:	18          	addsp 32
 87e:	33          	loadb
 87f:	71          	loadsp 4
 880:	82          	im 2
 881:	80          	im 0
 882:	29          	mult
 883:	05          	add
 884:	83          	im 3
 885:	19          	addsp 36
 886:	33          	loadb
 887:	78          	loadsp 32
 888:	0c          	store
 889:	84          	im 4
 88a:	19          	addsp 36
 88b:	33          	loadb
 88c:	78          	loadsp 32
 88d:	0c          	store
 88e:	85          	im 5
 88f:	19          	addsp 36
 890:	33          	loadb
 891:	78          	loadsp 32
 892:	0c          	store
 893:	59          	storesp 36
 894:	53          	storesp 12
 895:	53          	storesp 12
 896:	80          	im 0
 897:	54          	storesp 16
 898:	73          	loadsp 12
 899:	77          	loadsp 28
 89a:	27          	ulessthanorequal
 89b:	ac          	im 44
 89c:	38          	neqbranch
 89d:	72          	loadsp 8
 89e:	58          	storesp 32

0000089f <.L184>:
 89f:	73          	loadsp 12
 8a0:	80          	im 0
 8a1:	c1          	im -63
 8a2:	38          	neqbranch
 8a3:	73          	loadsp 12
 8a4:	16          	addsp 24
 8a5:	86          	im 6
 8a6:	11          	addsp 4
 8a7:	33          	loadb
 8a8:	76          	loadsp 24
 8a9:	0c          	store
 8aa:	87          	im 7
 8ab:	11          	addsp 4
 8ac:	33          	loadb
 8ad:	76          	loadsp 24
 8ae:	0c          	store
 8af:	52          	storesp 8
 8b0:	74          	loadsp 16
 8b1:	51          	storesp 4
 8b2:	8b          	im 11
 8b3:	fe          	im -2
 8b4:	2d          	call

000008b5 <.L181>:
 8b5:	8e          	im 14
 8b6:	c2          	im -62
 8b7:	2d          	call
 8b8:	88          	im 8
 8b9:	08          	load
 8ba:	81          	im 1
 8bb:	06          	and
 8bc:	52          	storesp 8
 8bd:	71          	loadsp 4
 8be:	f6          	im -10
 8bf:	38          	neqbranch
 8c0:	82          	im 2
 8c1:	14          	addsp 16
 8c2:	54          	storesp 16
 8c3:	76          	loadsp 24
 8c4:	74          	loadsp 16
 8c5:	26          	ulessthan
 8c6:	d8          	im -40
 8c7:	38          	neqbranch

000008c8 <.L188>:
 8c8:	8c          	im 12
 8c9:	9a          	im 26
 8ca:	2d          	call
 8cb:	84          	im 4
 8cc:	75          	loadsp 20
 8cd:	0c          	store
 8ce:	74          	loadsp 16
 8cf:	51          	storesp 4
 8d0:	8b          	im 11
 8d1:	fe          	im -2
 8d2:	2d          	call
 8d3:	8a          	im 10
 8d4:	f4          	im -12
 8d5:	2d          	call
 8d6:	81          	im 1
 8d7:	87          	im 7
 8d8:	51          	storesp 4
 8d9:	8a          	im 10
 8da:	c0          	im -64
 8db:	2d          	call
 8dc:	8b          	im 11
 8dd:	89          	im 9
 8de:	2d          	call
 8df:	89          	im 9
 8e0:	3d          	pushspadd
 8e1:	0d          	popsp
 8e2:	04          	poppc

000008e3 <.L190>:
 8e3:	8c          	im 12
 8e4:	9a          	im 26
 8e5:	2d          	call
 8e6:	77          	loadsp 28
 8e7:	75          	loadsp 20
 8e8:	0c          	store
 8e9:	73          	loadsp 12
 8ea:	16          	addsp 24
 8eb:	86          	im 6
 8ec:	11          	addsp 4
 8ed:	33          	loadb
 8ee:	76          	loadsp 24
 8ef:	0c          	store
 8f0:	87          	im 7
 8f1:	11          	addsp 4
 8f2:	33          	loadb
 8f3:	76          	loadsp 24
 8f4:	0c          	store
 8f5:	52          	storesp 8
 8f6:	74          	loadsp 16
 8f7:	51          	storesp 4
 8f8:	8b          	im 11
 8f9:	fe          	im -2
 8fa:	2d          	call
 8fb:	ff          	im -1
 8fc:	b8          	im 56
 8fd:	39          	poppcrel

000008fe <_Z16cmd_set_baudratePh>:
 8fe:	fc          	im -4
 8ff:	3d          	pushspadd
 900:	0d          	popsp
 901:	76          	loadsp 24
 902:	81          	im 1
 903:	11          	addsp 4
 904:	33          	loadb
 905:	82          	im 2
 906:	12          	addsp 8
 907:	33          	loadb
 908:	71          	loadsp 4
 909:	90          	im 16
 90a:	2b          	ashiftleft
 90b:	71          	loadsp 4
 90c:	88          	im 8
 90d:	2b          	ashiftleft
 90e:	07          	or
 90f:	83          	im 3
 910:	14          	addsp 16
 911:	33          	loadb
 912:	70          	loadsp 0
 913:	72          	loadsp 8
 914:	07          	or
 915:	88          	im 8
 916:	2b          	ashiftleft
 917:	84          	im 4
 918:	16          	addsp 24
 919:	33          	loadb
 91a:	71          	loadsp 4
 91b:	07          	or
 91c:	51          	storesp 4
 91d:	52          	storesp 8
 91e:	53          	storesp 12
 91f:	57          	storesp 28
 920:	57          	storesp 28
 921:	54          	storesp 16
 922:	52          	storesp 8
 923:	88          	im 8
 924:	51          	storesp 4
 925:	8e          	im 14
 926:	ad          	im 45
 927:	2d          	call
 928:	81          	im 1
 929:	ff          	im -1
 92a:	51          	storesp 4
 92b:	8a          	im 10
 92c:	a0          	im 32
 92d:	2d          	call
 92e:	80          	im 0
 92f:	c4          	im -60
 930:	80          	im 0
 931:	80          	im 0
 932:	84          	im 4
 933:	53          	storesp 12

00000934 <.L192>:
 934:	72          	loadsp 8
 935:	08          	load
 936:	70          	loadsp 0
 937:	81          	im 1
 938:	2a          	lshiftright
 939:	70          	loadsp 0
 93a:	81          	im 1
 93b:	06          	and
 93c:	51          	storesp 4
 93d:	51          	storesp 4
 93e:	52          	storesp 8
 93f:	71          	loadsp 4
 940:	f3          	im -13
 941:	38          	neqbranch
 942:	73          	loadsp 12
 943:	84          	im 4
 944:	80          	im 0
 945:	80          	im 0
 946:	07          	or
 947:	80          	im 0
 948:	c4          	im -60
 949:	80          	im 0
 94a:	80          	im 0
 94b:	84          	im 4
 94c:	0c          	store
 94d:	86          	im 6
 94e:	3d          	pushspadd
 94f:	0d          	popsp
 950:	04          	poppc

00000951 <_Z13cmd_waitreadyPh>:
 951:	fe          	im -2
 952:	3d          	pushspadd
 953:	0d          	popsp

00000954 <.L203>:
 954:	8e          	im 14
 955:	c2          	im -62
 956:	2d          	call
 957:	88          	im 8
 958:	08          	load
 959:	88          	im 8
 95a:	08          	load
 95b:	81          	im 1
 95c:	06          	and
 95d:	53          	storesp 12
 95e:	53          	storesp 12
 95f:	71          	loadsp 4
 960:	f3          	im -13
 961:	38          	neqbranch
 962:	8a          	im 10
 963:	f4          	im -12
 964:	2d          	call
 965:	81          	im 1
 966:	83          	im 3
 967:	51          	storesp 4
 968:	8a          	im 10
 969:	c0          	im -64
 96a:	2d          	call
 96b:	72          	loadsp 8
 96c:	51          	storesp 4
 96d:	8a          	im 10
 96e:	c0          	im -64
 96f:	2d          	call
 970:	8b          	im 11
 971:	89          	im 9
 972:	2d          	call
 973:	84          	im 4
 974:	3d          	pushspadd
 975:	0d          	popsp
 976:	04          	poppc

00000977 <_Z11cmd_versionPh>:
 977:	fe          	im -2
 978:	3d          	pushspadd
 979:	0d          	popsp
 97a:	80          	im 0
 97b:	0b          	nop
 97c:	9e          	im 30
 97d:	bc          	im 60
 97e:	0c          	store
 97f:	8a          	im 10
 980:	f4          	im -12
 981:	2d          	call
 982:	81          	im 1
 983:	81          	im 1
 984:	51          	storesp 4
 985:	8a          	im 10
 986:	c0          	im -64
 987:	2d          	call
 988:	9e          	im 30
 989:	94          	im 20
 98a:	53          	storesp 12
 98b:	8f          	im 15
 98c:	52          	storesp 8

0000098d <.L210>:
 98d:	72          	loadsp 8
 98e:	70          	loadsp 0
 98f:	81          	im 1
 990:	05          	add
 991:	54          	storesp 16
 992:	33          	loadb
 993:	51          	storesp 4
 994:	8a          	im 10
 995:	c0          	im -64
 996:	2d          	call
 997:	ff          	im -1
 998:	12          	addsp 8
 999:	52          	storesp 8
 99a:	71          	loadsp 4
 99b:	ff          	im -1
 99c:	2e          	eq
 99d:	09          	not
 99e:	81          	im 1
 99f:	06          	and
 9a0:	ec          	im -20
 9a1:	38          	neqbranch
 9a2:	8b          	im 11
 9a3:	89          	im 9
 9a4:	2d          	call
 9a5:	84          	im 4
 9a6:	3d          	pushspadd
 9a7:	0d          	popsp
 9a8:	04          	poppc

000009a9 <_Z12cmd_identifyPh>:
 9a9:	fe          	im -2
 9aa:	3d          	pushspadd
 9ab:	0d          	popsp
 9ac:	80          	im 0
 9ad:	0b          	nop
 9ae:	9e          	im 30
 9af:	bc          	im 60
 9b0:	0c          	store
 9b1:	8a          	im 10
 9b2:	f4          	im -12
 9b3:	2d          	call
 9b4:	81          	im 1
 9b5:	82          	im 2
 9b6:	51          	storesp 4
 9b7:	8a          	im 10
 9b8:	c0          	im -64
 9b9:	2d          	call
 9ba:	80          	im 0
 9bb:	c0          	im -64
 9bc:	80          	im 0
 9bd:	80          	im 0
 9be:	84          	im 4
 9bf:	52          	storesp 8
 9c0:	8c          	im 12
 9c1:	9a          	im 26
 9c2:	2d          	call
 9c3:	81          	im 1
 9c4:	f9          	im -7
 9c5:	0a          	flip
 9c6:	0b          	nop
 9c7:	80          	im 0
 9c8:	c0          	im -64
 9c9:	80          	im 0
 9ca:	80          	im 0
 9cb:	9c          	im 28
 9cc:	0c          	store
 9cd:	71          	loadsp 4
 9ce:	08          	load
 9cf:	72          	loadsp 8
 9d0:	52          	storesp 8
 9d1:	53          	storesp 12
 9d2:	8b          	im 11
 9d3:	fe          	im -2
 9d4:	2d          	call
 9d5:	72          	loadsp 8
 9d6:	9e          	im 30
 9d7:	c4          	im -60
 9d8:	0c          	store
 9d9:	72          	loadsp 8
 9da:	90          	im 16
 9db:	2a          	lshiftright
 9dc:	51          	storesp 4
 9dd:	8a          	im 10
 9de:	c0          	im -64
 9df:	2d          	call
 9e0:	9e          	im 30
 9e1:	c4          	im -60
 9e2:	08          	load
 9e3:	88          	im 8
 9e4:	2a          	lshiftright
 9e5:	51          	storesp 4
 9e6:	8a          	im 10
 9e7:	c0          	im -64
 9e8:	2d          	call
 9e9:	9e          	im 30
 9ea:	c4          	im -60
 9eb:	08          	load
 9ec:	51          	storesp 4
 9ed:	8a          	im 10
 9ee:	c0          	im -64
 9ef:	2d          	call
 9f0:	8e          	im 14
 9f1:	c2          	im -62
 9f2:	2d          	call
 9f3:	88          	im 8
 9f4:	08          	load
 9f5:	51          	storesp 4
 9f6:	8a          	im 10
 9f7:	c0          	im -64
 9f8:	2d          	call
 9f9:	8b          	im 11
 9fa:	89          	im 9
 9fb:	2d          	call
 9fc:	84          	im 4
 9fd:	3d          	pushspadd
 9fe:	0d          	popsp
 9ff:	04          	poppc

00000a00 <_Z12cmd_enterpgmPh>:
 a00:	80          	im 0
 a01:	3d          	pushspadd
 a02:	0d          	popsp
 a03:	81          	im 1
 a04:	0b          	nop
 a05:	9e          	im 30
 a06:	c0          	im -64
 a07:	0c          	store
 a08:	80          	im 0
 a09:	0b          	nop
 a0a:	83          	im 3
 a0b:	90          	im 16
 a0c:	0a          	flip
 a0d:	0c          	store
 a0e:	85          	im 5
 a0f:	51          	storesp 4
 a10:	8e          	im 14
 a11:	ad          	im 45
 a12:	2d          	call
 a13:	82          	im 2
 a14:	3d          	pushspadd
 a15:	0d          	popsp
 a16:	04          	poppc

00000a17 <_Z12cmd_leavepgmPh>:
 a17:	80          	im 0
 a18:	3d          	pushspadd
 a19:	0d          	popsp
 a1a:	80          	im 0
 a1b:	0b          	nop
 a1c:	9e          	im 30
 a1d:	c0          	im -64
 a1e:	0c          	store
 a1f:	8b          	im 11
 a20:	e5          	im -27
 a21:	2d          	call
 a22:	86          	im 6
 a23:	51          	storesp 4
 a24:	8e          	im 14
 a25:	ad          	im 45
 a26:	2d          	call
 a27:	82          	im 2
 a28:	3d          	pushspadd
 a29:	0d          	popsp
 a2a:	04          	poppc

00000a2b <_Z9cmd_startPh>:
 a2b:	ff          	im -1
 a2c:	3d          	pushspadd
 a2d:	0d          	popsp
 a2e:	80          	im 0
 a2f:	c0          	im -64
 a30:	80          	im 0
 a31:	80          	im 0
 a32:	84          	im 4
 a33:	52          	storesp 8
 a34:	8a          	im 10
 a35:	51          	storesp 4
 a36:	8e          	im 14
 a37:	ad          	im 45
 a38:	2d          	call
 a39:	8c          	im 12
 a3a:	9a          	im 26
 a3b:	2d          	call
 a3c:	71          	loadsp 4
 a3d:	51          	storesp 4
 a3e:	8c          	im 12
 a3f:	c0          	im -64
 a40:	2d          	call
 a41:	88          	im 8
 a42:	08          	load
 a43:	10          	addsp 0
 a44:	10          	addsp 0
 a45:	90          	im 16
 a46:	c0          	im -64
 a47:	84          	im 4
 a48:	05          	add
 a49:	9e          	im 30
 a4a:	b8          	im 56
 a4b:	0c          	store
 a4c:	71          	loadsp 4
 a4d:	51          	storesp 4
 a4e:	8b          	im 11
 a4f:	fe          	im -2
 a50:	2d          	call
 a51:	8a          	im 10
 a52:	85          	im 5
 a53:	2d          	call
 a54:	8c          	im 12
 a55:	b1          	im 49
 a56:	2d          	call
 a57:	83          	im 3
 a58:	3d          	pushspadd
 a59:	0d          	popsp
 a5a:	04          	poppc

00000a5b <main>:
 a5b:	ff          	im -1
 a5c:	ad          	im 45
 a5d:	3d          	pushspadd
 a5e:	0d          	popsp
 a5f:	80          	im 0
 a60:	0b          	nop
 a61:	9e          	im 30
 a62:	c0          	im -64
 a63:	0c          	store
 a64:	80          	im 0
 a65:	0b          	nop
 a66:	9e          	im 30
 a67:	bc          	im 60
 a68:	0c          	store
 a69:	80          	im 0
 a6a:	0b          	nop
 a6b:	8e          	im 14
 a6c:	90          	im 16
 a6d:	0b          	nop
 a6e:	a0          	im 32
 a6f:	80          	im 0
 a70:	0c          	store
 a71:	57          	storesp 28
 a72:	84          	im 4
 a73:	80          	im 0
 a74:	b3          	im 51
 a75:	0b          	nop
 a76:	80          	im 0
 a77:	c4          	im -60
 a78:	80          	im 0
 a79:	80          	im 0
 a7a:	84          	im 4
 a7b:	0c          	store
 a7c:	80          	im 0
 a7d:	c8          	im -56
 a7e:	80          	im 0
 a7f:	80          	im 0
 a80:	a4          	im 36
 a81:	53          	storesp 12
 a82:	fb          	im -5
 a83:	ff          	im -1
 a84:	ff          	im -1
 a85:	73          	loadsp 12
 a86:	08          	load
 a87:	70          	loadsp 0
 a88:	72          	loadsp 8
 a89:	06          	and
 a8a:	75          	loadsp 20
 a8b:	0c          	store
 a8c:	53          	storesp 12
 a8d:	54          	storesp 16
 a8e:	80          	im 0
 a8f:	c8          	im -56
 a90:	80          	im 0
 a91:	80          	im 0
 a92:	94          	im 20
 a93:	70          	loadsp 0
 a94:	08          	load
 a95:	70          	loadsp 0
 a96:	76          	loadsp 24
 a97:	06          	and
 a98:	72          	loadsp 8
 a99:	0c          	store
 a9a:	53          	storesp 12
 a9b:	53          	storesp 12
 a9c:	a8          	im 40
 a9d:	70          	loadsp 0
 a9e:	99          	im 25
 a9f:	96          	im 22
 aa0:	71          	loadsp 4
 aa1:	70          	loadsp 0
 aa2:	84          	im 4
 aa3:	05          	add
 aa4:	53          	storesp 12
 aa5:	0c          	store
 aa6:	99          	im 25
 aa7:	f3          	im -13
 aa8:	71          	loadsp 4
 aa9:	0c          	store
 aaa:	53          	storesp 12
 aab:	9b          	im 27
 aac:	8c          	im 12
 aad:	0b          	nop
 aae:	88          	im 8
 aaf:	12          	addsp 8
 ab0:	0c          	store
 ab1:	9c          	im 28
 ab2:	9b          	im 27
 ab3:	0b          	nop
 ab4:	8c          	im 12
 ab5:	12          	addsp 8
 ab6:	0c          	store
 ab7:	53          	storesp 12
 ab8:	88          	im 8
 ab9:	0b          	nop
 aba:	80          	im 0
 abb:	d0          	im -48
 abc:	80          	im 0
 abd:	80          	im 0
 abe:	84          	im 4
 abf:	0c          	store
 ac0:	81          	im 1
 ac1:	0b          	nop
 ac2:	80          	im 0
 ac3:	d0          	im -48
 ac4:	0a          	flip
 ac5:	0c          	store
 ac6:	8b          	im 11
 ac7:	e5          	im -27
 ac8:	2d          	call
 ac9:	82          	im 2
 aca:	88          	im 8
 acb:	88          	im 8
 acc:	0b          	nop
 acd:	80          	im 0
 ace:	dc          	im -36
 acf:	80          	im 0
 ad0:	80          	im 0
 ad1:	84          	im 4
 ad2:	0c          	store
 ad3:	81          	im 1
 ad4:	f2          	im -14
 ad5:	0b          	nop
 ad6:	90          	im 16
 ad7:	0a          	flip
 ad8:	0c          	store
 ad9:	80          	im 0
 ada:	c0          	im -64
 adb:	80          	im 0
 adc:	80          	im 0
 add:	84          	im 4
 ade:	70          	loadsp 0
 adf:	52          	storesp 8
 ae0:	52          	storesp 8
 ae1:	8b          	im 11
 ae2:	fe          	im -2
 ae3:	2d          	call
 ae4:	8c          	im 12
 ae5:	9a          	im 26
 ae6:	2d          	call
 ae7:	71          	loadsp 4
 ae8:	51          	storesp 4
 ae9:	8b          	im 11
 aea:	fe          	im -2
 aeb:	2d          	call
 aec:	8c          	im 12
 aed:	9a          	im 26
 aee:	2d          	call
 aef:	84          	im 4
 af0:	72          	loadsp 8
 af1:	0c          	store
 af2:	71          	loadsp 4
 af3:	51          	storesp 4
 af4:	8b          	im 11
 af5:	fe          	im -2
 af6:	2d          	call
 af7:	76          	loadsp 24
 af8:	77          	loadsp 28
 af9:	8f          	im 15
 afa:	3d          	pushspadd
 afb:	5e          	storesp 56
 afc:	5a          	storesp 40
 afd:	5a          	storesp 40
 afe:	83          	im 3
 aff:	d0          	im -48
 b00:	0a          	flip
 b01:	5b          	storesp 44

00000b02 <.L270>:
 b02:	8b          	im 11
 b03:	aa          	im 42
 b04:	2d          	call
 b05:	88          	im 8
 b06:	08          	load
 b07:	53          	storesp 12
 b08:	78          	loadsp 32
 b09:	80          	im 0
 b0a:	2e          	eq
 b0b:	bc          	im 60
 b0c:	38          	neqbranch

00000b0d <.L274>:
 b0d:	88          	im 8
 b0e:	08          	load
 b0f:	80          	im 0
 b10:	fe          	im -2
 b11:	2e          	eq
 b12:	80          	im 0
 b13:	d2          	im -46
 b14:	38          	neqbranch
 b15:	88          	im 8
 b16:	08          	load
 b17:	80          	im 0
 b18:	fd          	im -3
 b19:	2e          	eq
 b1a:	81          	im 1
 b1b:	be          	im 62
 b1c:	38          	neqbranch
 b1d:	76          	loadsp 24
 b1e:	82          	im 2
 b1f:	9f          	im 31
 b20:	26          	ulessthan
 b21:	bf          	im 63
 b22:	38          	neqbranch
 b23:	79          	loadsp 36
 b24:	80          	im 0
 b25:	2e          	eq
 b26:	89          	im 9
 b27:	38          	neqbranch
 b28:	80          	im 0
 b29:	0b          	nop
 b2a:	88          	im 8
 b2b:	08          	load
 b2c:	a0          	im 32
 b2d:	32          	xor
 b2e:	54          	storesp 16
 b2f:	5a          	storesp 40

00000b30 <.L260>:
 b30:	80          	im 0
 b31:	d5          	im -43
 b32:	3d          	pushspadd
 b33:	77          	loadsp 28
 b34:	05          	add
 b35:	fd          	im -3
 b36:	e0          	im -32
 b37:	05          	add
 b38:	52          	storesp 8
 b39:	72          	loadsp 8
 b3a:	72          	loadsp 8
 b3b:	34          	storeb
 b3c:	81          	im 1
 b3d:	17          	addsp 28
 b3e:	57          	storesp 28
 b3f:	8b          	im 11
 b40:	aa          	im 42
 b41:	2d          	call
 b42:	88          	im 8
 b43:	08          	load
 b44:	53          	storesp 12
 b45:	78          	loadsp 32
 b46:	c6          	im -58
 b47:	38          	neqbranch

00000b48 <.L245>:
 b48:	88          	im 8
 b49:	08          	load
 b4a:	80          	im 0
 b4b:	fe          	im -2
 b4c:	2e          	eq
 b4d:	09          	not
 b4e:	81          	im 1
 b4f:	06          	and
 b50:	ff          	im -1
 b51:	b0          	im 48
 b52:	38          	neqbranch
 b53:	78          	loadsp 32
 b54:	57          	storesp 28
 b55:	83          	im 3
 b56:	ff          	im -1
 b57:	ff          	im -1
 b58:	7b          	loadsp 44
 b59:	0c          	store
 b5a:	81          	im 1
 b5b:	77          	loadsp 28
 b5c:	5b          	storesp 44
 b5d:	59          	storesp 36
 b5e:	ff          	im -1
 b5f:	a2          	im 34
 b60:	39          	poppcrel

00000b61 <.L259>:
 b61:	80          	im 0
 b62:	59          	storesp 36
 b63:	ff          	im -1
 b64:	9d          	im 29
 b65:	39          	poppcrel

00000b66 <.L272>:
 b66:	76          	loadsp 24
 b67:	80          	im 0
 b68:	2e          	eq
 b69:	ff          	im -1
 b6a:	97          	im 23
 b6b:	38          	neqbranch
 b6c:	80          	im 0
 b6d:	7c          	loadsp 48
 b6e:	78          	loadsp 32
 b6f:	58          	storesp 32
 b70:	56          	storesp 24
 b71:	59          	storesp 36
 b72:	82          	im 2
 b73:	77          	loadsp 28
 b74:	27          	ulessthanorequal
 b75:	ff          	im -1
 b76:	8b          	im 11
 b77:	38          	neqbranch
 b78:	83          	im 3
 b79:	ff          	im -1
 b7a:	ff          	im -1
 b7b:	7b          	loadsp 44
 b7c:	0c          	store
 b7d:	78          	loadsp 32
 b7e:	fe          	im -2
 b7f:	18          	addsp 32
 b80:	53          	storesp 12
 b81:	53          	storesp 12
 b82:	78          	loadsp 32
 b83:	72          	loadsp 8
 b84:	27          	ulessthanorequal
 b85:	98          	im 24
 b86:	38          	neqbranch
 b87:	80          	im 0
 b88:	dc          	im -36
 b89:	80          	im 0
 b8a:	80          	im 0
 b8b:	88          	im 8
 b8c:	72          	loadsp 8
 b8d:	55          	storesp 20
 b8e:	58          	storesp 32

00000b8f <.L253>:
 b8f:	72          	loadsp 8
 b90:	15          	addsp 20
 b91:	70          	loadsp 0
 b92:	33          	loadb
 b93:	79          	loadsp 36
 b94:	0c          	store
 b95:	52          	storesp 8
 b96:	81          	im 1
 b97:	13          	addsp 12
 b98:	53          	storesp 12
 b99:	73          	loadsp 12
 b9a:	73          	loadsp 12
 b9b:	26          	ulessthan
 b9c:	f2          	im -14
 b9d:	38          	neqbranch

00000b9e <.L266>:
 b9e:	ff          	im -1
 b9f:	16          	addsp 24
 ba0:	75          	loadsp 20
 ba1:	11          	addsp 4
 ba2:	54          	storesp 16
 ba3:	75          	loadsp 20
 ba4:	05          	add
 ba5:	ff          	im -1
 ba6:	05          	add
 ba7:	70          	loadsp 0
 ba8:	33          	loadb
 ba9:	74          	loadsp 16
 baa:	33          	loadb
 bab:	70          	loadsp 0
 bac:	72          	loadsp 8
 bad:	88          	im 8
 bae:	2b          	ashiftleft
 baf:	07          	or
 bb0:	7e          	loadsp 56
 bb1:	08          	load
 bb2:	53          	storesp 12
 bb3:	51          	storesp 4
 bb4:	55          	storesp 20
 bb5:	51          	storesp 4
 bb6:	52          	storesp 8
 bb7:	71          	loadsp 4
 bb8:	73          	loadsp 12
 bb9:	2e          	eq
 bba:	09          	not
 bbb:	81          	im 1
 bbc:	06          	and
 bbd:	fe          	im -2
 bbe:	c3          	im -61
 bbf:	38          	neqbranch
 bc0:	74          	loadsp 16
 bc1:	33          	loadb
 bc2:	53          	storesp 12
 bc3:	72          	loadsp 8
 bc4:	8a          	im 10
 bc5:	26          	ulessthan
 bc6:	fe          	im -2
 bc7:	ba          	im 58
 bc8:	38          	neqbranch
 bc9:	72          	loadsp 8
 bca:	10          	addsp 0
 bcb:	10          	addsp 0
 bcc:	9d          	im 29
 bcd:	e8          	im -24
 bce:	05          	add
 bcf:	75          	loadsp 20
 bd0:	52          	storesp 8
 bd1:	70          	loadsp 0
 bd2:	08          	load
 bd3:	51          	storesp 4
 bd4:	52          	storesp 8
 bd5:	71          	loadsp 4
 bd6:	2d          	call
 bd7:	fe          	im -2
 bd8:	a9          	im 41
 bd9:	39          	poppcrel

00000bda <.L273>:
 bda:	81          	im 1
 bdb:	5a          	storesp 40
 bdc:	fe          	im -2
 bdd:	a4          	im 36
 bde:	39          	poppcrel

00000bdf <___zpu_interrupt_vector>:
 bdf:	80          	im 0
 be0:	3d          	pushspadd
 be1:	0d          	popsp
 be2:	88          	im 8
 be3:	08          	load
 be4:	8c          	im 12
 be5:	08          	load
 be6:	90          	im 16
 be7:	08          	load
 be8:	a0          	im 32
 be9:	80          	im 0
 bea:	08          	load
 beb:	51          	storesp 4
 bec:	70          	loadsp 0
 bed:	2d          	call
 bee:	90          	im 16
 bef:	0c          	store
 bf0:	8c          	im 12
 bf1:	0c          	store
 bf2:	8a          	im 10
 bf3:	0c          	store
 bf4:	81          	im 1
 bf5:	0b          	nop
 bf6:	80          	im 0
 bf7:	d0          	im -48
 bf8:	0a          	flip
 bf9:	0c          	store
 bfa:	82          	im 2
 bfb:	3d          	pushspadd
 bfc:	0d          	popsp
 bfd:	04          	poppc

00000bfe <_premain>:
 bfe:	ff          	im -1
 bff:	3d          	pushspadd
 c00:	0d          	popsp
 c01:	80          	im 0
 c02:	52          	storesp 8
 c03:	80          	im 0
 c04:	51          	storesp 4
 c05:	94          	im 20
 c06:	db          	im -37
 c07:	2d          	call
 c08:	83          	im 3
 c09:	3d          	pushspadd
 c0a:	0d          	popsp
 c0b:	04          	poppc

00000c0c <spi_copy>:
 c0c:	80          	im 0
 c0d:	ff          	im -1
 c0e:	f8          	im -8
 c0f:	0d          	popsp
 c10:	8c          	im 12
 c11:	df          	im -33
 c12:	04          	poppc

00000c13 <start_sketch>:
 c13:	80          	im 0
 c14:	ff          	im -1
 c15:	f8          	im -8
 c16:	0d          	popsp
 c17:	a0          	im 32
 c18:	88          	im 8
 c19:	04          	poppc

00000c1a <__divsi3>:
 c1a:	fb          	im -5
 c1b:	3d          	pushspadd
 c1c:	0d          	popsp
 c1d:	77          	loadsp 28
 c1e:	79          	loadsp 36
 c1f:	55          	storesp 20
 c20:	55          	storesp 20
 c21:	80          	im 0
 c22:	56          	storesp 24
 c23:	75          	loadsp 20
 c24:	75          	loadsp 20
 c25:	24          	lessthan
 c26:	ab          	im 43
 c27:	38          	neqbranch
 c28:	80          	im 0
 c29:	74          	loadsp 16
 c2a:	24          	lessthan
 c2b:	9d          	im 29
 c2c:	38          	neqbranch

00000c2d <.L4>:
 c2d:	80          	im 0
 c2e:	53          	storesp 12
 c2f:	73          	loadsp 12
 c30:	52          	storesp 8
 c31:	74          	loadsp 16
 c32:	51          	storesp 4
 c33:	80          	im 0
 c34:	e1          	im -31
 c35:	3f          	callpcrel
 c36:	88          	im 8
 c37:	08          	load
 c38:	54          	storesp 16
 c39:	75          	loadsp 20
 c3a:	80          	im 0
 c3b:	2e          	eq
 c3c:	85          	im 5
 c3d:	38          	neqbranch
 c3e:	88          	im 8
 c3f:	08          	load
 c40:	30          	neg
 c41:	54          	storesp 16

00000c42 <.L6>:
 c42:	73          	loadsp 12
 c43:	88          	im 8
 c44:	0c          	store
 c45:	87          	im 7
 c46:	3d          	pushspadd
 c47:	0d          	popsp
 c48:	04          	poppc

00000c49 <.L9>:
 c49:	73          	loadsp 12
 c4a:	30          	neg
 c4b:	76          	loadsp 24
 c4c:	81          	im 1
 c4d:	32          	xor
 c4e:	57          	storesp 28
 c4f:	54          	storesp 16
 c50:	dc          	im -36
 c51:	39          	poppcrel

00000c52 <.L8>:
 c52:	74          	loadsp 16
 c53:	30          	neg
 c54:	55          	storesp 20
 c55:	81          	im 1
 c56:	56          	storesp 24
 c57:	73          	loadsp 12
 c58:	80          	im 0
 c59:	25          	lessthanorequal
 c5a:	d2          	im -46
 c5b:	38          	neqbranch
 c5c:	ec          	im -20
 c5d:	39          	poppcrel

00000c5e <__modsi3>:
 c5e:	fa          	im -6
 c5f:	3d          	pushspadd
 c60:	0d          	popsp
 c61:	78          	loadsp 32
 c62:	7a          	loadsp 40
 c63:	57          	storesp 28
 c64:	55          	storesp 20
 c65:	80          	im 0
 c66:	57          	storesp 28
 c67:	76          	loadsp 24
 c68:	75          	loadsp 20
 c69:	24          	lessthan
 c6a:	a4          	im 36
 c6b:	38          	neqbranch

00000c6c <.L11>:
 c6c:	75          	loadsp 20
 c6d:	9f          	im 31
 c6e:	2c          	ashiftright
 c6f:	54          	storesp 16
 c70:	81          	im 1
 c71:	53          	storesp 12
 c72:	75          	loadsp 20
 c73:	74          	loadsp 16
 c74:	32          	xor
 c75:	74          	loadsp 16
 c76:	31          	sub
 c77:	52          	storesp 8
 c78:	74          	loadsp 16
 c79:	51          	storesp 4
 c7a:	9b          	im 27
 c7b:	3f          	callpcrel
 c7c:	88          	im 8
 c7d:	08          	load
 c7e:	54          	storesp 16
 c7f:	76          	loadsp 24
 c80:	80          	im 0
 c81:	2e          	eq
 c82:	85          	im 5
 c83:	38          	neqbranch
 c84:	88          	im 8
 c85:	08          	load
 c86:	30          	neg
 c87:	54          	storesp 16

00000c88 <.L13>:
 c88:	73          	loadsp 12
 c89:	88          	im 8
 c8a:	0c          	store
 c8b:	88          	im 8
 c8c:	3d          	pushspadd
 c8d:	0d          	popsp
 c8e:	04          	poppc

00000c8f <.L15>:
 c8f:	74          	loadsp 16
 c90:	30          	neg
 c91:	55          	storesp 20
 c92:	81          	im 1
 c93:	57          	storesp 28
 c94:	d7          	im -41
 c95:	39          	poppcrel

00000c96 <udivmodsi4>:
 c96:	fc          	im -4
 c97:	3d          	pushspadd
 c98:	0d          	popsp
 c99:	76          	loadsp 24
 c9a:	78          	loadsp 32
 c9b:	53          	storesp 12
 c9c:	54          	storesp 16
 c9d:	81          	im 1
 c9e:	53          	storesp 12
 c9f:	80          	im 0
 ca0:	74          	loadsp 16
 ca1:	73          	loadsp 12
 ca2:	26          	ulessthan
 ca3:	52          	storesp 8
 ca4:	55          	storesp 20
 ca5:	72          	loadsp 8
 ca6:	80          	im 0
 ca7:	2e          	eq
 ca8:	98          	im 24
 ca9:	38          	neqbranch

00000caa <.L16>:
 caa:	70          	loadsp 0
 cab:	80          	im 0
 cac:	2e          	eq
 cad:	a9          	im 41
 cae:	38          	neqbranch
 caf:	80          	im 0
 cb0:	72          	loadsp 8
 cb1:	24          	lessthan
 cb2:	a4          	im 36
 cb3:	38          	neqbranch
 cb4:	71          	loadsp 4
 cb5:	10          	addsp 0
 cb6:	73          	loadsp 12
 cb7:	10          	addsp 0
 cb8:	75          	loadsp 20
 cb9:	72          	loadsp 8
 cba:	26          	ulessthan
 cbb:	53          	storesp 12
 cbc:	54          	storesp 16
 cbd:	52          	storesp 8
 cbe:	72          	loadsp 8
 cbf:	ea          	im -22
 cc0:	38          	neqbranch

00000cc1 <.L13>:
 cc1:	73          	loadsp 12
 cc2:	51          	storesp 4
 cc3:	78          	loadsp 32
 cc4:	83          	im 3
 cc5:	38          	neqbranch
 cc6:	74          	loadsp 16
 cc7:	51          	storesp 4

00000cc8 <.L1>:
 cc8:	70          	loadsp 0
 cc9:	88          	im 8
 cca:	0c          	store
 ccb:	86          	im 6
 ccc:	3d          	pushspadd
 ccd:	0d          	popsp
 cce:	04          	poppc

00000ccf <.L9>:
 ccf:	72          	loadsp 8
 cd0:	81          	im 1
 cd1:	2a          	lshiftright
 cd2:	72          	loadsp 8
 cd3:	81          	im 1
 cd4:	2a          	lshiftright
 cd5:	53          	storesp 12
 cd6:	53          	storesp 12

00000cd7 <.L3>:
 cd7:	72          	loadsp 8
 cd8:	80          	im 0
 cd9:	2e          	eq
 cda:	e6          	im -26
 cdb:	38          	neqbranch
 cdc:	71          	loadsp 4
 cdd:	74          	loadsp 16
 cde:	26          	ulessthan
 cdf:	ef          	im -17
 ce0:	38          	neqbranch
 ce1:	73          	loadsp 12
 ce2:	72          	loadsp 8
 ce3:	31          	sub
 ce4:	75          	loadsp 20
 ce5:	74          	loadsp 16
 ce6:	07          	or
 ce7:	74          	loadsp 16
 ce8:	81          	im 1
 ce9:	2a          	lshiftright
 cea:	74          	loadsp 16
 ceb:	81          	im 1
 cec:	2a          	lshiftright
 ced:	55          	storesp 20
 cee:	55          	storesp 20
 cef:	56          	storesp 24
 cf0:	54          	storesp 16
 cf1:	e5          	im -27
 cf2:	39          	poppcrel

00000cf3 <memcpy>:
 cf3:	fc          	im -4
 cf4:	3d          	pushspadd
 cf5:	0d          	popsp
 cf6:	76          	loadsp 24

00000cf7 <.LM2>:
 cf7:	70          	loadsp 0

00000cf8 <.LM3>:
 cf8:	79          	loadsp 36

00000cf9 <.LM4>:
 cf9:	7b          	loadsp 44
 cfa:	55          	storesp 20
 cfb:	55          	storesp 20
 cfc:	55          	storesp 20
 cfd:	55          	storesp 20

00000cfe <.LM5>:
 cfe:	8f          	im 15
 cff:	72          	loadsp 8
 d00:	27          	ulessthanorequal
 d01:	8c          	im 12
 d02:	38          	neqbranch
 d03:	72          	loadsp 8
 d04:	75          	loadsp 20
 d05:	07          	or
 d06:	83          	im 3
 d07:	06          	and
 d08:	51          	storesp 4
 d09:	70          	loadsp 0
 d0a:	80          	im 0
 d0b:	2e          	eq
 d0c:	a7          	im 39
 d0d:	38          	neqbranch

00000d0e <.L2>:
 d0e:	ff          	im -1
 d0f:	12          	addsp 8
 d10:	52          	storesp 8
 d11:	71          	loadsp 4
 d12:	ff          	im -1
 d13:	2e          	eq
 d14:	98          	im 24
 d15:	38          	neqbranch

00000d16 <.L21>:
 d16:	72          	loadsp 8
 d17:	70          	loadsp 0
 d18:	81          	im 1
 d19:	05          	add
 d1a:	54          	storesp 16
 d1b:	33          	loadb
 d1c:	74          	loadsp 16
 d1d:	70          	loadsp 0
 d1e:	81          	im 1
 d1f:	05          	add
 d20:	56          	storesp 24
 d21:	34          	storeb
 d22:	ff          	im -1
 d23:	12          	addsp 8
 d24:	52          	storesp 8
 d25:	71          	loadsp 4
 d26:	ff          	im -1
 d27:	2e          	eq
 d28:	09          	not
 d29:	81          	im 1
 d2a:	06          	and
 d2b:	ea          	im -22
 d2c:	38          	neqbranch

00000d2d <.L17>:
 d2d:	74          	loadsp 16
 d2e:	88          	im 8
 d2f:	0c          	store
 d30:	86          	im 6
 d31:	3d          	pushspadd
 d32:	0d          	popsp
 d33:	04          	poppc

00000d34 <.L20>:
 d34:	74          	loadsp 16
 d35:	51          	storesp 4

00000d36 <.L5>:
 d36:	72          	loadsp 8
 d37:	70          	loadsp 0
 d38:	84          	im 4
 d39:	05          	add
 d3a:	54          	storesp 16
 d3b:	08          	load
 d3c:	71          	loadsp 4
 d3d:	70          	loadsp 0
 d3e:	84          	im 4
 d3f:	05          	add
 d40:	53          	storesp 12
 d41:	0c          	store

00000d42 <.LM10>:
 d42:	72          	loadsp 8
 d43:	70          	loadsp 0
 d44:	84          	im 4
 d45:	05          	add
 d46:	54          	storesp 16
 d47:	08          	load
 d48:	71          	loadsp 4
 d49:	70          	loadsp 0
 d4a:	84          	im 4
 d4b:	05          	add
 d4c:	53          	storesp 12
 d4d:	0c          	store

00000d4e <.LM11>:
 d4e:	72          	loadsp 8
 d4f:	70          	loadsp 0
 d50:	84          	im 4
 d51:	05          	add
 d52:	54          	storesp 16
 d53:	08          	load
 d54:	71          	loadsp 4
 d55:	70          	loadsp 0
 d56:	84          	im 4
 d57:	05          	add
 d58:	53          	storesp 12
 d59:	0c          	store

00000d5a <.LM12>:
 d5a:	72          	loadsp 8
 d5b:	70          	loadsp 0
 d5c:	84          	im 4
 d5d:	05          	add
 d5e:	54          	storesp 16
 d5f:	08          	load
 d60:	71          	loadsp 4
 d61:	70          	loadsp 0
 d62:	84          	im 4
 d63:	05          	add
 d64:	53          	storesp 12
 d65:	0c          	store

00000d66 <.LM13>:
 d66:	f0          	im -16
 d67:	12          	addsp 8
 d68:	52          	storesp 8
 d69:	71          	loadsp 4
 d6a:	8f          	im 15
 d6b:	26          	ulessthan
 d6c:	c9          	im -55
 d6d:	38          	neqbranch

00000d6e <.LM14>:
 d6e:	83          	im 3
 d6f:	72          	loadsp 8
 d70:	27          	ulessthanorequal
 d71:	95          	im 21
 d72:	38          	neqbranch

00000d73 <.L22>:
 d73:	72          	loadsp 8
 d74:	70          	loadsp 0
 d75:	84          	im 4
 d76:	05          	add
 d77:	54          	storesp 16
 d78:	08          	load
 d79:	71          	loadsp 4
 d7a:	70          	loadsp 0
 d7b:	84          	im 4
 d7c:	05          	add
 d7d:	53          	storesp 12
 d7e:	0c          	store

00000d7f <.LM16>:
 d7f:	fc          	im -4
 d80:	12          	addsp 8
 d81:	52          	storesp 8
 d82:	71          	loadsp 4
 d83:	83          	im 3
 d84:	26          	ulessthan
 d85:	ed          	im -19
 d86:	38          	neqbranch

00000d87 <.L15>:
 d87:	70          	loadsp 0
 d88:	54          	storesp 16
 d89:	ff          	im -1
 d8a:	83          	im 3
 d8b:	39          	poppcrel

00000d8c <memset>:
 d8c:	fc          	im -4
 d8d:	3d          	pushspadd
 d8e:	0d          	popsp
 d8f:	76          	loadsp 24
 d90:	79          	loadsp 36

00000d91 <.LM2>:
 d91:	71          	loadsp 4

00000d92 <.LM3>:
 d92:	02          	pushsp
 d93:	8c          	im 12
 d94:	05          	add
 d95:	9f          	im 31
 d96:	05          	add
 d97:	33          	loadb
 d98:	57          	storesp 28
 d99:	55          	storesp 20
 d9a:	53          	storesp 12
 d9b:	55          	storesp 20

00000d9c <.LM4>:
 d9c:	83          	im 3
 d9d:	72          	loadsp 8
 d9e:	27          	ulessthanorequal
 d9f:	8a          	im 10
 da0:	38          	neqbranch
 da1:	74          	loadsp 16
 da2:	83          	im 3
 da3:	06          	and
 da4:	51          	storesp 4
 da5:	70          	loadsp 0
 da6:	80          	im 0
 da7:	2e          	eq
 da8:	a2          	im 34
 da9:	38          	neqbranch

00000daa <.L2>:
 daa:	ff          	im -1
 dab:	12          	addsp 8
 dac:	52          	storesp 8
 dad:	71          	loadsp 4
 dae:	ff          	im -1
 daf:	2e          	eq
 db0:	93          	im 19
 db1:	38          	neqbranch

00000db2 <.L27>:
 db2:	73          	loadsp 12
 db3:	73          	loadsp 12
 db4:	70          	loadsp 0
 db5:	81          	im 1
 db6:	05          	add
 db7:	55          	storesp 20
 db8:	34          	storeb
 db9:	ff          	im -1
 dba:	12          	addsp 8
 dbb:	52          	storesp 8
 dbc:	71          	loadsp 4
 dbd:	ff          	im -1
 dbe:	2e          	eq
 dbf:	09          	not
 dc0:	81          	im 1
 dc1:	06          	and
 dc2:	ef          	im -17
 dc3:	38          	neqbranch

00000dc4 <.L23>:
 dc4:	74          	loadsp 16
 dc5:	88          	im 8
 dc6:	0c          	store
 dc7:	86          	im 6
 dc8:	3d          	pushspadd
 dc9:	0d          	popsp
 dca:	04          	poppc

00000dcb <.L26>:
 dcb:	74          	loadsp 16

00000dcc <.LM8>:
 dcc:	74          	loadsp 16
 dcd:	88          	im 8
 dce:	2b          	ashiftleft
 dcf:	75          	loadsp 20
 dd0:	07          	or

00000dd1 <.LM9>:
 dd1:	70          	loadsp 0
 dd2:	71          	loadsp 4
 dd3:	90          	im 16
 dd4:	2b          	ashiftleft
 dd5:	07          	or
 dd6:	51          	storesp 4
 dd7:	54          	storesp 16
 dd8:	51          	storesp 4

00000dd9 <.LM10>:
 dd9:	8f          	im 15
 dda:	72          	loadsp 8
 ddb:	27          	ulessthanorequal
 ddc:	a5          	im 37
 ddd:	38          	neqbranch

00000dde <.L28>:
 dde:	72          	loadsp 8
 ddf:	71          	loadsp 4
 de0:	70          	loadsp 0
 de1:	84          	im 4
 de2:	05          	add
 de3:	53          	storesp 12
 de4:	0c          	store

00000de5 <.LM12>:
 de5:	72          	loadsp 8
 de6:	71          	loadsp 4
 de7:	70          	loadsp 0
 de8:	84          	im 4
 de9:	05          	add
 dea:	53          	storesp 12
 deb:	0c          	store

00000dec <.LM13>:
 dec:	72          	loadsp 8
 ded:	71          	loadsp 4
 dee:	70          	loadsp 0
 def:	84          	im 4
 df0:	05          	add
 df1:	53          	storesp 12
 df2:	0c          	store

00000df3 <.LM14>:
 df3:	72          	loadsp 8
 df4:	71          	loadsp 4
 df5:	70          	loadsp 0
 df6:	84          	im 4
 df7:	05          	add
 df8:	53          	storesp 12
 df9:	0c          	store

00000dfa <.LM15>:
 dfa:	f0          	im -16
 dfb:	12          	addsp 8
 dfc:	52          	storesp 8
 dfd:	71          	loadsp 4
 dfe:	8f          	im 15
 dff:	26          	ulessthan
 e00:	dd          	im -35
 e01:	38          	neqbranch

00000e02 <.L19>:
 e02:	83          	im 3
 e03:	72          	loadsp 8
 e04:	27          	ulessthanorequal
 e05:	90          	im 16
 e06:	38          	neqbranch

00000e07 <.L29>:
 e07:	72          	loadsp 8
 e08:	71          	loadsp 4
 e09:	70          	loadsp 0
 e0a:	84          	im 4
 e0b:	05          	add
 e0c:	53          	storesp 12
 e0d:	0c          	store

00000e0e <.LM18>:
 e0e:	fc          	im -4
 e0f:	12          	addsp 8
 e10:	52          	storesp 8
 e11:	71          	loadsp 4
 e12:	83          	im 3
 e13:	26          	ulessthan
 e14:	f2          	im -14
 e15:	38          	neqbranch

00000e16 <.L21>:
 e16:	70          	loadsp 0
 e17:	53          	storesp 12
 e18:	ff          	im -1
 e19:	90          	im 16
 e1a:	39          	poppcrel

00000e1b <strcmp>:
 e1b:	fb          	im -5
 e1c:	3d          	pushspadd
 e1d:	0d          	popsp
 e1e:	77          	loadsp 28
 e1f:	79          	loadsp 36

00000e20 <.LM2>:
 e20:	70          	loadsp 0
 e21:	72          	loadsp 8
 e22:	07          	or
 e23:	83          	im 3
 e24:	06          	and
 e25:	53          	storesp 12
 e26:	54          	storesp 16
 e27:	52          	storesp 8
 e28:	70          	loadsp 0
 e29:	93          	im 19
 e2a:	38          	neqbranch

00000e2b <.LM3>:
 e2b:	71          	loadsp 4

00000e2c <.LM4>:
 e2c:	73          	loadsp 12

00000e2d <.LM5>:
 e2d:	73          	loadsp 12
 e2e:	08          	load
 e2f:	54          	storesp 16
 e30:	56          	storesp 24
 e31:	54          	storesp 16
 e32:	71          	loadsp 4
 e33:	73          	loadsp 12
 e34:	08          	load
 e35:	2e          	eq
 e36:	80          	im 0
 e37:	c4          	im -60
 e38:	38          	neqbranch

00000e39 <.LM6>:
 e39:	73          	loadsp 12

00000e3a <.LM7>:
 e3a:	75          	loadsp 20
 e3b:	54          	storesp 16
 e3c:	52          	storesp 8

00000e3d <.L2>:
 e3d:	71          	loadsp 4
 e3e:	33          	loadb
 e3f:	70          	loadsp 0
 e40:	81          	im 1
 e41:	ff          	im -1
 e42:	06          	and
 e43:	52          	storesp 8
 e44:	54          	storesp 16
 e45:	70          	loadsp 0
 e46:	80          	im 0
 e47:	2e          	eq
 e48:	9d          	im 29
 e49:	38          	neqbranch

00000e4a <.L18>:
 e4a:	72          	loadsp 8
 e4b:	33          	loadb
 e4c:	55          	storesp 20
 e4d:	70          	loadsp 0
 e4e:	75          	loadsp 20
 e4f:	2e          	eq
 e50:	09          	not
 e51:	81          	im 1
 e52:	06          	and
 e53:	95          	im 21
 e54:	38          	neqbranch

00000e55 <.LM9>:
 e55:	81          	im 1
 e56:	12          	addsp 8

00000e57 <.LM10>:
 e57:	81          	im 1
 e58:	14          	addsp 16
 e59:	71          	loadsp 4
 e5a:	33          	loadb
 e5b:	70          	loadsp 0
 e5c:	81          	im 1
 e5d:	ff          	im -1
 e5e:	06          	and
 e5f:	54          	storesp 16
 e60:	56          	storesp 24
 e61:	54          	storesp 16
 e62:	52          	storesp 8
 e63:	70          	loadsp 0
 e64:	e5          	im -27
 e65:	38          	neqbranch

00000e66 <.L14>:
 e66:	72          	loadsp 8
 e67:	33          	loadb
 e68:	55          	storesp 20

00000e69 <.L8>:
 e69:	73          	loadsp 12
 e6a:	81          	im 1
 e6b:	ff          	im -1
 e6c:	06          	and
 e6d:	75          	loadsp 20
 e6e:	81          	im 1
 e6f:	ff          	im -1
 e70:	06          	and
 e71:	71          	loadsp 4
 e72:	71          	loadsp 4
 e73:	31          	sub

00000e74 <.LM12>:
 e74:	88          	im 8
 e75:	0c          	store
 e76:	52          	storesp 8
 e77:	52          	storesp 8
 e78:	87          	im 7
 e79:	3d          	pushspadd
 e7a:	0d          	popsp
 e7b:	04          	poppc

00000e7c <.L6>:
 e7c:	71          	loadsp 4
 e7d:	09          	not
 e7e:	70          	loadsp 0
 e7f:	f7          	im -9
 e80:	fb          	im -5
 e81:	fd          	im -3
 e82:	ff          	im -1
 e83:	14          	addsp 16
 e84:	06          	and
 e85:	70          	loadsp 0
 e86:	f8          	im -8
 e87:	84          	im 4
 e88:	82          	im 2
 e89:	81          	im 1
 e8a:	80          	im 0
 e8b:	06          	and
 e8c:	51          	storesp 4
 e8d:	51          	storesp 4
 e8e:	51          	storesp 4
 e8f:	70          	loadsp 0
 e90:	97          	im 23
 e91:	38          	neqbranch

00000e92 <.LM14>:
 e92:	84          	im 4
 e93:	14          	addsp 16

00000e94 <.LM15>:
 e94:	84          	im 4
 e95:	16          	addsp 24
 e96:	71          	loadsp 4
 e97:	08          	load
 e98:	54          	storesp 16
 e99:	56          	storesp 24
 e9a:	54          	storesp 16
 e9b:	71          	loadsp 4
 e9c:	75          	loadsp 20
 e9d:	08          	load
 e9e:	2e          	eq
 e9f:	dc          	im -36
 ea0:	38          	neqbranch

00000ea1 <.LM16>:
 ea1:	73          	loadsp 12

00000ea2 <.LM17>:
 ea2:	75          	loadsp 20
 ea3:	54          	storesp 16
 ea4:	52          	storesp 8
 ea5:	ff          	im -1
 ea6:	96          	im 22
 ea7:	39          	poppcrel

00000ea8 <.L15>:
 ea8:	80          	im 0

00000ea9 <.LM19>:
 ea9:	0b          	nop
 eaa:	88          	im 8
 eab:	0c          	store
 eac:	87          	im 7
 ead:	3d          	pushspadd
 eae:	0d          	popsp
 eaf:	04          	poppc

00000eb0 <__do_global_ctors_aux>:
 eb0:	ff          	im -1
 eb1:	3d          	pushspadd
 eb2:	0d          	popsp
 eb3:	9e          	im 30
 eb4:	cc          	im -52
 eb5:	0b          	nop
 eb6:	fc          	im -4
 eb7:	05          	add
 eb8:	70          	loadsp 0
 eb9:	08          	load
 eba:	52          	storesp 8
 ebb:	52          	storesp 8
 ebc:	70          	loadsp 0
 ebd:	ff          	im -1
 ebe:	2e          	eq
 ebf:	91          	im 17
 ec0:	38          	neqbranch

00000ec1 <.L10>:
 ec1:	70          	loadsp 0
 ec2:	2d          	call
 ec3:	fc          	im -4
 ec4:	12          	addsp 8
 ec5:	70          	loadsp 0
 ec6:	08          	load
 ec7:	52          	storesp 8
 ec8:	52          	storesp 8
 ec9:	70          	loadsp 0
 eca:	ff          	im -1
 ecb:	2e          	eq
 ecc:	09          	not
 ecd:	81          	im 1
 ece:	06          	and
 ecf:	f1          	im -15
 ed0:	38          	neqbranch

00000ed1 <.L7>:
 ed1:	83          	im 3
 ed2:	3d          	pushspadd
 ed3:	0d          	popsp
 ed4:	04          	poppc

00000ed5 <call___do_global_ctors_aux>:
 ed5:	04          	poppc
Disassembly of section .fini:

00000ed6 <_fini>:
 ed6:	eb          	im -21
 ed7:	c7          	im -57
 ed8:	3f          	callpcrel
 ed9:	04          	poppc
Disassembly of section .rodata:

00000edc <_mask>:
 edc:	00          	breakpoint
 edd:	ff          	im -1
 ede:	ff          	im -1
 edf:	ff          	im -1
 ee0:	ff          	im -1
 ee1:	00          	breakpoint
 ee2:	ff          	im -1
 ee3:	ff          	im -1
 ee4:	ff          	im -1
 ee5:	ff          	im -1
 ee6:	00          	breakpoint
 ee7:	ff          	im -1
 ee8:	ff          	im -1
 ee9:	ff          	im -1
 eea:	ff          	im -1
	...

00000eec <handlers>:
 eec:	00          	breakpoint
 eed:	00          	breakpoint
 eee:	09          	not
 eef:	77          	loadsp 28
 ef0:	00          	breakpoint
 ef1:	00          	breakpoint
 ef2:	09          	not
 ef3:	a9          	im 41
 ef4:	00          	breakpoint
 ef5:	00          	breakpoint
 ef6:	09          	not
 ef7:	51          	storesp 4
 ef8:	00          	breakpoint
 ef9:	00          	breakpoint
 efa:	07          	or
 efb:	c5          	im -59
 efc:	00          	breakpoint
 efd:	00          	breakpoint
 efe:	0a          	flip
 eff:	00          	breakpoint
 f00:	00          	breakpoint
 f01:	00          	breakpoint
 f02:	0a          	flip
 f03:	17          	addsp 28
 f04:	00          	breakpoint
 f05:	00          	breakpoint
 f06:	08          	load
 f07:	5b          	storesp 44
 f08:	00          	breakpoint
 f09:	00          	breakpoint
 f0a:	08          	load
 f0b:	fe          	im -2
 f0c:	00          	breakpoint
 f0d:	00          	breakpoint
 f0e:	07          	or
 f0f:	68          	loadsp 96
 f10:	00          	breakpoint
 f11:	00          	breakpoint
 f12:	0a          	flip
 f13:	2b          	ashiftleft

00000f14 <vstring>:
 f14:	01          	.byte 1
 f15:	08          	load
 f16:	04          	poppc
 f17:	20          	.byte 32
 f18:	00          	breakpoint
 f19:	00          	breakpoint
 f1a:	2f          	neq
 f1b:	80          	im 0
 f1c:	05          	add
 f1d:	b8          	im 56
 f1e:	d8          	im -40
 f1f:	00          	breakpoint
 f20:	a4          	im 36
 f21:	02          	pushsp
 f22:	0e          	.byte 14
	...
Disassembly of section .data:

00000f24 <__data_start>:
 f24:	00          	breakpoint
 f25:	00          	breakpoint
	...

00000f28 <_cpu_config>:
 f28:	00          	breakpoint
 f29:	00          	breakpoint
	...

00000f2c <__dso_handle>:
 f2c:	00          	breakpoint
 f2d:	00          	breakpoint
	...

00000f30 <p.0>:
 f30:	00          	breakpoint
 f31:	00          	breakpoint
 f32:	0f          	.byte 15
 f33:	54          	storesp 16
Disassembly of section .bss:

00000f34 <completed.1>:
 f34:	00          	breakpoint
 f35:	00          	breakpoint
	...

00000f38 <bdata>:
 f38:	00          	breakpoint
 f39:	00          	breakpoint
	...

00000f3c <milisseconds>:
 f3c:	00          	breakpoint
 f3d:	00          	breakpoint
	...

00000f40 <inprogrammode>:
 f40:	00          	breakpoint
 f41:	00          	breakpoint
	...

00000f44 <flash_id>:
 f44:	00          	breakpoint
 f45:	00          	breakpoint
	...
Disassembly of section .ctors:

00000f48 <___ctors>:
 f48:	ff          	im -1
 f49:	ff          	im -1
 f4a:	ff          	im -1
 f4b:	ff          	im -1

00000f4c <__CTOR_END__>:
 f4c:	00          	breakpoint
 f4d:	00          	breakpoint
	...
Disassembly of section .dtors:

00000f50 <___dtors>:
 f50:	ff          	im -1
 f51:	ff          	im -1
 f52:	ff          	im -1
 f53:	ff          	im -1

00000f54 <__DTOR_END__>:
 f54:	00          	breakpoint
 f55:	00          	breakpoint
	...
Disassembly of section .jcr:

00000f58 <___jcr_begin>:
 f58:	00          	breakpoint
 f59:	00          	breakpoint
	...
Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	00          	breakpoint
   3:	3c          	syscall
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	00          	breakpoint
   9:	00          	breakpoint
   a:	04          	poppc
	...
  1f:	2d          	call
  20:	00          	breakpoint
  21:	00          	breakpoint
  22:	00          	breakpoint
  23:	00          	breakpoint
  24:	00          	breakpoint
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	25          	lessthanorequal
  28:	00          	breakpoint
  29:	00          	breakpoint
  2a:	00          	breakpoint
  2b:	00          	breakpoint
  2c:	00          	breakpoint
  2d:	00          	breakpoint
  2e:	00          	breakpoint
  2f:	85          	im 5
  30:	00          	breakpoint
  31:	00          	breakpoint
  32:	00          	breakpoint
  33:	00          	breakpoint
  34:	00          	breakpoint
  35:	00          	breakpoint
  36:	00          	breakpoint
  37:	70          	loadsp 0
	...
  40:	00          	breakpoint
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	1c          	addsp 48
  44:	00          	breakpoint
  45:	02          	pushsp
  46:	00          	breakpoint
  47:	00          	breakpoint
  48:	01          	.byte 1
  49:	75          	loadsp 20
  4a:	04          	poppc
  4b:	00          	breakpoint
  4c:	00          	breakpoint
  4d:	00          	breakpoint
  4e:	00          	breakpoint
  4f:	00          	breakpoint
  50:	00          	breakpoint
  51:	00          	breakpoint
  52:	0c          	store
  53:	f3          	im -13
  54:	00          	breakpoint
  55:	00          	breakpoint
  56:	00          	breakpoint
  57:	bc          	im 60
	...
  60:	00          	breakpoint
  61:	00          	breakpoint
  62:	00          	breakpoint
  63:	1c          	addsp 48
  64:	00          	breakpoint
  65:	02          	pushsp
  66:	00          	breakpoint
  67:	00          	breakpoint
  68:	02          	pushsp
  69:	74          	loadsp 16
  6a:	04          	poppc
  6b:	00          	breakpoint
  6c:	00          	breakpoint
  6d:	00          	breakpoint
  6e:	00          	breakpoint
  6f:	00          	breakpoint
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	0d          	popsp
  73:	8c          	im 12
  74:	00          	breakpoint
  75:	00          	breakpoint
  76:	00          	breakpoint
  77:	b6          	im 54
	...
  80:	00          	breakpoint
  81:	00          	breakpoint
  82:	00          	breakpoint
  83:	1c          	addsp 48
  84:	00          	breakpoint
  85:	02          	pushsp
  86:	00          	breakpoint
  87:	00          	breakpoint
  88:	03          	.byte 3
  89:	78          	loadsp 32
  8a:	04          	poppc
  8b:	00          	breakpoint
  8c:	00          	breakpoint
  8d:	00          	breakpoint
  8e:	00          	breakpoint
  8f:	00          	breakpoint
  90:	00          	breakpoint
  91:	00          	breakpoint
  92:	0e          	.byte 14
  93:	1b          	addsp 44
  94:	00          	breakpoint
  95:	00          	breakpoint
  96:	00          	breakpoint
  97:	bb          	im 59
	...
Disassembly of section .debug_pubnames:

00000000 <.debug_pubnames>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	00          	breakpoint
   3:	49          	storesp 100
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	00          	breakpoint
   9:	00          	breakpoint
   a:	00          	breakpoint
   b:	00          	breakpoint
   c:	01          	.byte 1
   d:	75          	loadsp 20
   e:	00          	breakpoint
   f:	00          	breakpoint
  10:	00          	breakpoint
  11:	6a          	loadsp 104
  12:	69          	loadsp 100
  13:	6e          	loadsp 120
  14:	62          	loadsp 72
  15:	79          	loadsp 36
  16:	74          	loadsp 16
  17:	65          	loadsp 84
  18:	00          	breakpoint
  19:	00          	breakpoint
  1a:	00          	breakpoint
  1b:	00          	breakpoint
  1c:	93          	im 19
  1d:	6f          	loadsp 124
  1e:	75          	loadsp 20
  1f:	74          	loadsp 16
  20:	62          	loadsp 72
  21:	79          	loadsp 36
  22:	74          	loadsp 16
  23:	65          	loadsp 84
  24:	00          	breakpoint
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	00          	breakpoint
  28:	b8          	im 56
  29:	5f          	storesp 60
  2a:	69          	loadsp 100
  2b:	6e          	loadsp 120
  2c:	69          	loadsp 100
  2d:	74          	loadsp 16
  2e:	49          	storesp 100
  2f:	4f          	storesp 124
  30:	00          	breakpoint
  31:	00          	breakpoint
  32:	00          	breakpoint
  33:	00          	breakpoint
  34:	cc          	im -52
  35:	5f          	storesp 60
  36:	72          	loadsp 8
  37:	65          	loadsp 84
  38:	61          	loadsp 68
  39:	64          	loadsp 80
  3a:	43          	storesp 76
  3b:	79          	loadsp 36
  3c:	63          	loadsp 76
  3d:	6c          	loadsp 112
  3e:	65          	loadsp 84
  3f:	73          	loadsp 12
  40:	00          	breakpoint
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	01          	.byte 1
  44:	4c          	storesp 112
  45:	4d          	storesp 116
  46:	48          	storesp 96
  47:	5a          	storesp 40
	...
  50:	19          	addsp 36
  51:	00          	breakpoint
  52:	02          	pushsp
  53:	00          	breakpoint
  54:	00          	breakpoint
  55:	01          	.byte 1
  56:	75          	loadsp 20
  57:	00          	breakpoint
  58:	00          	breakpoint
  59:	00          	breakpoint
  5a:	ff          	im -1
  5b:	00          	breakpoint
  5c:	00          	breakpoint
  5d:	00          	breakpoint
  5e:	45          	storesp 84
  5f:	6d          	loadsp 116
  60:	65          	loadsp 84
  61:	6d          	loadsp 116
  62:	63          	loadsp 76
  63:	70          	loadsp 0
  64:	79          	loadsp 36
	...
  6d:	19          	addsp 36
  6e:	00          	breakpoint
  6f:	02          	pushsp
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	02          	pushsp
  73:	74          	loadsp 16
  74:	00          	breakpoint
  75:	00          	breakpoint
  76:	01          	.byte 1
  77:	04          	poppc
  78:	00          	breakpoint
  79:	00          	breakpoint
  7a:	00          	breakpoint
  7b:	85          	im 5
  7c:	6d          	loadsp 116
  7d:	65          	loadsp 84
  7e:	6d          	loadsp 116
  7f:	73          	loadsp 12
  80:	65          	loadsp 84
  81:	74          	loadsp 16
	...
  8a:	19          	addsp 36
  8b:	00          	breakpoint
  8c:	02          	pushsp
  8d:	00          	breakpoint
  8e:	00          	breakpoint
  8f:	03          	.byte 3
  90:	78          	loadsp 32
  91:	00          	breakpoint
  92:	00          	breakpoint
  93:	00          	breakpoint
  94:	d1          	im -47
  95:	00          	breakpoint
  96:	00          	breakpoint
  97:	00          	breakpoint
  98:	7d          	loadsp 52
  99:	73          	loadsp 12
  9a:	74          	loadsp 16
  9b:	72          	loadsp 8
  9c:	63          	loadsp 76
  9d:	6d          	loadsp 116
  9e:	70          	loadsp 0
  9f:	00          	breakpoint
  a0:	00          	breakpoint
  a1:	00          	breakpoint
	...
Disassembly of section .debug_info:

00000000 <.Ldebug_info0>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	01          	.byte 1
   3:	71          	loadsp 4
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	00          	breakpoint
   9:	00          	breakpoint
   a:	04          	poppc
   b:	01          	.byte 1
   c:	00          	breakpoint
   d:	00          	breakpoint
   e:	00          	breakpoint
   f:	00          	breakpoint
  10:	00          	breakpoint
  11:	00          	breakpoint
  12:	00          	breakpoint
  13:	b2          	im 50
  14:	01          	.byte 1
  15:	00          	breakpoint
  16:	00          	breakpoint
  17:	00          	breakpoint
  18:	ec          	im -20
  19:	00          	breakpoint
  1a:	00          	breakpoint
  1b:	00          	breakpoint
  1c:	4b          	storesp 108
  1d:	02          	pushsp
  1e:	00          	breakpoint
  1f:	00          	breakpoint
  20:	00          	breakpoint
  21:	11          	addsp 4
  22:	04          	poppc
  23:	07          	or
  24:	02          	pushsp
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	00          	breakpoint
  28:	28          	swap
  29:	04          	poppc
  2a:	05          	add
  2b:	02          	pushsp
  2c:	00          	breakpoint
  2d:	00          	breakpoint
  2e:	00          	breakpoint
  2f:	23          	storeh
  30:	08          	load
  31:	05          	add
  32:	03          	.byte 3
  33:	69          	loadsp 100
  34:	6e          	loadsp 120
  35:	74          	loadsp 16
  36:	00          	breakpoint
  37:	04          	poppc
  38:	05          	add
  39:	02          	pushsp
  3a:	00          	breakpoint
  3b:	00          	breakpoint
  3c:	00          	breakpoint
  3d:	16          	addsp 24
  3e:	04          	poppc
  3f:	07          	or
  40:	02          	pushsp
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	00          	breakpoint
  44:	11          	addsp 4
  45:	04          	poppc
  46:	07          	or
  47:	02          	pushsp
  48:	00          	breakpoint
  49:	00          	breakpoint
  4a:	00          	breakpoint
  4b:	c8          	im -56
  4c:	01          	.byte 1
  4d:	08          	load
  4e:	02          	pushsp
  4f:	00          	breakpoint
  50:	00          	breakpoint
  51:	00          	breakpoint
  52:	d6          	im -42
  53:	02          	pushsp
  54:	05          	add
  55:	02          	pushsp
  56:	00          	breakpoint
  57:	00          	breakpoint
  58:	00          	breakpoint
  59:	d1          	im -47
  5a:	01          	.byte 1
  5b:	08          	load
  5c:	02          	pushsp
  5d:	00          	breakpoint
  5e:	00          	breakpoint
  5f:	00          	breakpoint
  60:	9f          	im 31
  61:	02          	pushsp
  62:	07          	or
  63:	02          	pushsp
  64:	00          	breakpoint
  65:	00          	breakpoint
  66:	00          	breakpoint
  67:	0c          	store
  68:	08          	load
  69:	07          	or
  6a:	04          	poppc
  6b:	00          	breakpoint
  6c:	00          	breakpoint
  6d:	00          	breakpoint
  6e:	93          	im 19
  6f:	01          	.byte 1
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	00          	breakpoint
  73:	e0          	im -32
  74:	0b          	nop
  75:	18          	addsp 32
  76:	00          	breakpoint
  77:	00          	breakpoint
  78:	00          	breakpoint
  79:	32          	xor
	...
  82:	02          	pushsp
  83:	90          	im 16
  84:	20          	.byte 32
  85:	05          	add
  86:	76          	loadsp 24
  87:	61          	loadsp 68
  88:	6c          	loadsp 112
  89:	00          	breakpoint
  8a:	0b          	nop
  8b:	19          	addsp 36
  8c:	00          	breakpoint
  8d:	00          	breakpoint
  8e:	00          	breakpoint
  8f:	32          	xor
  90:	01          	.byte 1
  91:	59          	storesp 36
  92:	00          	breakpoint
  93:	06          	and
  94:	00          	breakpoint
  95:	00          	breakpoint
  96:	00          	breakpoint
  97:	b8          	im 56
  98:	01          	.byte 1
  99:	00          	breakpoint
  9a:	00          	breakpoint
  9b:	00          	breakpoint
  9c:	37          	eqbranch
  9d:	0b          	nop
  9e:	2c          	ashiftright
  9f:	01          	.byte 1
	...
  a8:	02          	pushsp
  a9:	90          	im 16
  aa:	20          	.byte 32
  ab:	07          	or
  ac:	63          	loadsp 76
  ad:	00          	breakpoint
  ae:	0b          	nop
  af:	2b          	ashiftleft
  b0:	00          	breakpoint
  b1:	00          	breakpoint
  b2:	00          	breakpoint
  b3:	32          	xor
  b4:	02          	pushsp
  b5:	91          	im 17
  b6:	0c          	store
  b7:	00          	breakpoint
  b8:	08          	load
  b9:	01          	.byte 1
  ba:	00          	breakpoint
  bb:	00          	breakpoint
  bc:	01          	.byte 1
  bd:	15          	addsp 20
  be:	0b          	nop
  bf:	35          	div
  c0:	01          	.byte 1
	...
  c9:	02          	pushsp
  ca:	90          	im 16
  cb:	20          	.byte 32
  cc:	04          	poppc
  cd:	00          	breakpoint
  ce:	00          	breakpoint
  cf:	01          	.byte 1
  d0:	05          	add
  d1:	01          	.byte 1
  d2:	00          	breakpoint
  d3:	00          	breakpoint
  d4:	00          	breakpoint
  d5:	3f          	callpcrel
  d6:	0b          	nop
  d7:	50          	storesp 0
  d8:	00          	breakpoint
  d9:	00          	breakpoint
  da:	00          	breakpoint
  db:	2b          	ashiftleft
	...
  e4:	02          	pushsp
  e5:	90          	im 16
  e6:	20          	.byte 32
  e7:	09          	not
  e8:	00          	breakpoint
  e9:	00          	breakpoint
  ea:	01          	.byte 1
  eb:	1d          	addsp 52
  ec:	0b          	nop
  ed:	51          	storesp 4
  ee:	00          	breakpoint
  ef:	00          	breakpoint
  f0:	00          	breakpoint
  f1:	2b          	ashiftleft
  f2:	06          	and
  f3:	5c          	storesp 48
  f4:	93          	im 19
  f5:	04          	poppc
  f6:	5d          	storesp 52
  f7:	93          	im 19
  f8:	04          	poppc
  f9:	05          	add
  fa:	69          	loadsp 100
  fb:	00          	breakpoint
  fc:	0b          	nop
  fd:	52          	storesp 8
  fe:	00          	breakpoint
  ff:	00          	breakpoint
 100:	00          	breakpoint
 101:	39          	poppcrel
 102:	01          	.byte 1
 103:	5e          	storesp 56
 104:	00          	breakpoint
 105:	0a          	flip
 106:	00          	breakpoint
 107:	00          	breakpoint
 108:	00          	breakpoint
 109:	be          	im 62
 10a:	0b          	nop
 10b:	06          	and
 10c:	00          	breakpoint
 10d:	00          	breakpoint
 10e:	00          	breakpoint
 10f:	32          	xor
 110:	01          	.byte 1
 111:	01          	.byte 1
 112:	0a          	flip
 113:	00          	breakpoint
 114:	00          	breakpoint
 115:	00          	breakpoint
 116:	00          	breakpoint
 117:	0b          	nop
 118:	0b          	nop
 119:	00          	breakpoint
 11a:	00          	breakpoint
 11b:	00          	breakpoint
 11c:	32          	xor
 11d:	01          	.byte 1
 11e:	01          	.byte 1
 11f:	09          	not
 120:	00          	breakpoint
 121:	00          	breakpoint
 122:	00          	breakpoint
 123:	e7          	im -25
 124:	0b          	nop
 125:	0c          	store
 126:	00          	breakpoint
 127:	00          	breakpoint
 128:	01          	.byte 1
 129:	30          	neg
 12a:	05          	add
 12b:	03          	.byte 3
 12c:	00          	breakpoint
 12d:	00          	breakpoint
 12e:	00          	breakpoint
 12f:	00          	breakpoint
 130:	0b          	nop
 131:	04          	poppc
 132:	00          	breakpoint
 133:	00          	breakpoint
 134:	01          	.byte 1
 135:	36          	mod
 136:	0c          	store
 137:	00          	breakpoint
 138:	00          	breakpoint
 139:	00          	breakpoint
 13a:	32          	xor
 13b:	09          	not
 13c:	00          	breakpoint
 13d:	00          	breakpoint
 13e:	00          	breakpoint
 13f:	31          	sub
 140:	0b          	nop
 141:	0d          	popsp
 142:	00          	breakpoint
 143:	00          	breakpoint
 144:	01          	.byte 1
 145:	30          	neg
 146:	05          	add
 147:	03          	.byte 3
 148:	00          	breakpoint
 149:	00          	breakpoint
 14a:	00          	breakpoint
 14b:	00          	breakpoint
 14c:	0d          	popsp
 14d:	4d          	storesp 116
 14e:	48          	storesp 96
 14f:	5a          	storesp 40
 150:	00          	breakpoint
 151:	0b          	nop
 152:	0e          	.byte 14
 153:	00          	breakpoint
 154:	00          	breakpoint
 155:	01          	.byte 1
 156:	30          	neg
 157:	01          	.byte 1
 158:	05          	add
 159:	03          	.byte 3
 15a:	00          	breakpoint
 15b:	00          	breakpoint
 15c:	00          	breakpoint
 15d:	00          	breakpoint
 15e:	05          	add
 15f:	6d          	loadsp 116
 160:	68          	loadsp 96
 161:	7a          	loadsp 40
 162:	00          	breakpoint
 163:	0b          	nop
 164:	32          	xor
 165:	00          	breakpoint
 166:	00          	breakpoint
 167:	01          	.byte 1
 168:	6f          	loadsp 124
 169:	05          	add
 16a:	03          	.byte 3
 16b:	00          	breakpoint
 16c:	00          	breakpoint
 16d:	00          	breakpoint
 16e:	00          	breakpoint
 16f:	0e          	.byte 14
 170:	00          	breakpoint
 171:	00          	breakpoint
 172:	00          	breakpoint
 173:	32          	xor
	...

00000175 <.Ldebug_info0>:
 175:	00          	breakpoint
 176:	00          	breakpoint
 177:	00          	breakpoint
 178:	fb          	im -5
 179:	00          	breakpoint
 17a:	02          	pushsp
 17b:	00          	breakpoint
 17c:	00          	breakpoint
 17d:	00          	breakpoint
 17e:	cf          	im -49
 17f:	04          	poppc
 180:	01          	.byte 1
 181:	00          	breakpoint
 182:	00          	breakpoint
 183:	02          	pushsp
 184:	aa          	im 42
 185:	00          	breakpoint
 186:	00          	breakpoint
 187:	0d          	popsp
 188:	8c          	im 12
 189:	00          	breakpoint
 18a:	00          	breakpoint
 18b:	0c          	store
 18c:	f3          	im -13
 18d:	00          	breakpoint
 18e:	00          	breakpoint
 18f:	00          	breakpoint
 190:	b2          	im 50
 191:	01          	.byte 1
 192:	00          	breakpoint
 193:	00          	breakpoint
 194:	01          	.byte 1
 195:	36          	mod
 196:	00          	breakpoint
 197:	00          	breakpoint
 198:	01          	.byte 1
 199:	79          	loadsp 36
 19a:	02          	pushsp
 19b:	00          	breakpoint
 19c:	00          	breakpoint
 19d:	00          	breakpoint
 19e:	28          	swap
 19f:	04          	poppc
 1a0:	05          	add
 1a1:	03          	.byte 3
 1a2:	00          	breakpoint
 1a3:	00          	breakpoint
 1a4:	01          	.byte 1
 1a5:	2f          	neq
 1a6:	01          	.byte 1
 1a7:	d5          	im -43
 1a8:	00          	breakpoint
 1a9:	00          	breakpoint
 1aa:	00          	breakpoint
 1ab:	37          	eqbranch
 1ac:	02          	pushsp
 1ad:	00          	breakpoint
 1ae:	00          	breakpoint
 1af:	00          	breakpoint
 1b0:	11          	addsp 4
 1b1:	04          	poppc
 1b2:	07          	or
 1b3:	04          	poppc
 1b4:	69          	loadsp 100
 1b5:	6e          	loadsp 120
 1b6:	74          	loadsp 16
 1b7:	00          	breakpoint
 1b8:	04          	poppc
 1b9:	05          	add
 1ba:	05          	add
 1bb:	00          	breakpoint
 1bc:	00          	breakpoint
 1bd:	00          	breakpoint
 1be:	cc          	im -52
 1bf:	01          	.byte 1
 1c0:	00          	breakpoint
 1c1:	00          	breakpoint
 1c2:	01          	.byte 1
 1c3:	d8          	im -40
 1c4:	02          	pushsp
 1c5:	39          	poppcrel
 1c6:	01          	.byte 1
 1c7:	00          	breakpoint
 1c8:	00          	breakpoint
 1c9:	00          	breakpoint
 1ca:	cc          	im -52
 1cb:	00          	breakpoint
 1cc:	00          	breakpoint
 1cd:	0c          	store
 1ce:	f3          	im -13
 1cf:	00          	breakpoint
 1d0:	00          	breakpoint
 1d1:	0d          	popsp
 1d2:	8c          	im 12
 1d3:	02          	pushsp
 1d4:	90          	im 16
 1d5:	20          	.byte 32
 1d6:	06          	and
 1d7:	00          	breakpoint
 1d8:	00          	breakpoint
 1d9:	01          	.byte 1
 1da:	d3          	im -45
 1db:	02          	pushsp
 1dc:	35          	div
 1dd:	00          	breakpoint
 1de:	00          	breakpoint
 1df:	00          	breakpoint
 1e0:	cc          	im -52
 1e1:	01          	.byte 1
 1e2:	5c          	storesp 48
 1e3:	06          	and
 1e4:	00          	breakpoint
 1e5:	00          	breakpoint
 1e6:	01          	.byte 1
 1e7:	74          	loadsp 16
 1e8:	02          	pushsp
 1e9:	35          	div
 1ea:	00          	breakpoint
 1eb:	00          	breakpoint
 1ec:	00          	breakpoint
 1ed:	ce          	im -50
 1ee:	02          	pushsp
 1ef:	91          	im 17
 1f0:	1c          	addsp 48
 1f1:	06          	and
 1f2:	00          	breakpoint
 1f3:	00          	breakpoint
 1f4:	01          	.byte 1
 1f5:	df          	im -33
 1f6:	02          	pushsp
 1f7:	35          	div
 1f8:	00          	breakpoint
 1f9:	00          	breakpoint
 1fa:	00          	breakpoint
 1fb:	2c          	ashiftright
 1fc:	02          	pushsp
 1fd:	91          	im 17
 1fe:	20          	.byte 32
 1ff:	07          	or
 200:	64          	loadsp 80
 201:	73          	loadsp 12
 202:	74          	loadsp 16
 203:	00          	breakpoint
 204:	02          	pushsp
 205:	47          	storesp 92
 206:	00          	breakpoint
 207:	00          	breakpoint
 208:	00          	breakpoint
 209:	d5          	im -43
 20a:	01          	.byte 1
 20b:	5b          	storesp 44
 20c:	07          	or
 20d:	73          	loadsp 12
 20e:	72          	loadsp 8
 20f:	63          	loadsp 76
 210:	00          	breakpoint
 211:	02          	pushsp
 212:	48          	storesp 96
 213:	00          	breakpoint
 214:	00          	breakpoint
 215:	00          	breakpoint
 216:	e2          	im -30
 217:	01          	.byte 1
 218:	5a          	storesp 40
 219:	08          	load
 21a:	00          	breakpoint
 21b:	00          	breakpoint
 21c:	01          	.byte 1
 21d:	23          	storeh
 21e:	02          	pushsp
 21f:	49          	storesp 100
 220:	00          	breakpoint
 221:	00          	breakpoint
 222:	00          	breakpoint
 223:	ed          	im -19
 224:	01          	.byte 1
 225:	58          	storesp 32
 226:	08          	load
 227:	00          	breakpoint
 228:	00          	breakpoint
 229:	01          	.byte 1
 22a:	68          	loadsp 96
 22b:	02          	pushsp
 22c:	4a          	storesp 104
 22d:	00          	breakpoint
 22e:	00          	breakpoint
 22f:	00          	breakpoint
 230:	f3          	im -13
 231:	01          	.byte 1
 232:	5a          	storesp 40
 233:	07          	or
 234:	6c          	loadsp 112
 235:	65          	loadsp 84
 236:	6e          	loadsp 120
 237:	00          	breakpoint
 238:	02          	pushsp
 239:	4b          	storesp 108
 23a:	00          	breakpoint
 23b:	00          	breakpoint
 23c:	00          	breakpoint
 23d:	3e          	halfmult
 23e:	01          	.byte 1
 23f:	59          	storesp 36
 240:	00          	breakpoint
 241:	09          	not
 242:	04          	poppc
 243:	0a          	flip
 244:	04          	poppc
 245:	00          	breakpoint
 246:	00          	breakpoint
 247:	00          	breakpoint
 248:	d4          	im -44
 249:	0b          	nop
 24a:	0a          	flip
 24b:	04          	poppc
 24c:	00          	breakpoint
 24d:	00          	breakpoint
 24e:	00          	breakpoint
 24f:	db          	im -37
 250:	02          	pushsp
 251:	00          	breakpoint
 252:	00          	breakpoint
 253:	00          	breakpoint
 254:	d1          	im -47
 255:	01          	.byte 1
 256:	08          	load
 257:	0a          	flip
 258:	04          	poppc
 259:	00          	breakpoint
 25a:	00          	breakpoint
 25b:	00          	breakpoint
 25c:	e8          	im -24
 25d:	0c          	store
 25e:	00          	breakpoint
 25f:	00          	breakpoint
 260:	00          	breakpoint
 261:	db          	im -37
 262:	0a          	flip
 263:	04          	poppc
 264:	00          	breakpoint
 265:	00          	breakpoint
 266:	00          	breakpoint
 267:	25          	lessthanorequal
 268:	0a          	flip
 269:	04          	poppc
 26a:	00          	breakpoint
 26b:	00          	breakpoint
 26c:	00          	breakpoint
 26d:	f9          	im -7
 26e:	0c          	store
 26f:	00          	breakpoint
 270:	00          	breakpoint
 271:	00          	breakpoint
 272:	25          	lessthanorequal
	...

00000274 <.Ldebug_info0>:
 274:	00          	breakpoint
 275:	00          	breakpoint
 276:	01          	.byte 1
 277:	00          	breakpoint
 278:	00          	breakpoint
 279:	02          	pushsp
 27a:	00          	breakpoint
 27b:	00          	breakpoint
 27c:	01          	.byte 1
 27d:	68          	loadsp 96
 27e:	04          	poppc
 27f:	01          	.byte 1
 280:	00          	breakpoint
 281:	00          	breakpoint
 282:	03          	.byte 3
 283:	fb          	im -5
 284:	00          	breakpoint
 285:	00          	breakpoint
 286:	0e          	.byte 14
 287:	1b          	addsp 44
 288:	00          	breakpoint
 289:	00          	breakpoint
 28a:	0d          	popsp
 28b:	8c          	im 12
 28c:	00          	breakpoint
 28d:	00          	breakpoint
 28e:	00          	breakpoint
 28f:	b2          	im 50
 290:	01          	.byte 1
 291:	00          	breakpoint
 292:	00          	breakpoint
 293:	01          	.byte 1
 294:	f8          	im -8
 295:	00          	breakpoint
 296:	00          	breakpoint
 297:	01          	.byte 1
 298:	79          	loadsp 36
 299:	02          	pushsp
 29a:	00          	breakpoint
 29b:	00          	breakpoint
 29c:	00          	breakpoint
 29d:	28          	swap
 29e:	04          	poppc
 29f:	05          	add
 2a0:	02          	pushsp
 2a1:	00          	breakpoint
 2a2:	00          	breakpoint
 2a3:	00          	breakpoint
 2a4:	23          	storeh
 2a5:	08          	load
 2a6:	05          	add
 2a7:	03          	.byte 3
 2a8:	69          	loadsp 100
 2a9:	6e          	loadsp 120
 2aa:	74          	loadsp 16
 2ab:	00          	breakpoint
 2ac:	04          	poppc
 2ad:	05          	add
 2ae:	02          	pushsp
 2af:	00          	breakpoint
 2b0:	00          	breakpoint
 2b1:	00          	breakpoint
 2b2:	16          	addsp 24
 2b3:	04          	poppc
 2b4:	07          	or
 2b5:	02          	pushsp
 2b6:	00          	breakpoint
 2b7:	00          	breakpoint
 2b8:	00          	breakpoint
 2b9:	11          	addsp 4
 2ba:	04          	poppc
 2bb:	07          	or
 2bc:	02          	pushsp
 2bd:	00          	breakpoint
 2be:	00          	breakpoint
 2bf:	00          	breakpoint
 2c0:	c8          	im -56
 2c1:	01          	.byte 1
 2c2:	08          	load
 2c3:	04          	poppc
 2c4:	04          	poppc
 2c5:	02          	pushsp
 2c6:	00          	breakpoint
 2c7:	00          	breakpoint
 2c8:	00          	breakpoint
 2c9:	11          	addsp 4
 2ca:	04          	poppc
 2cb:	07          	or
 2cc:	02          	pushsp
 2cd:	00          	breakpoint
 2ce:	00          	breakpoint
 2cf:	00          	breakpoint
 2d0:	d6          	im -42
 2d1:	02          	pushsp
 2d2:	05          	add
 2d3:	05          	add
 2d4:	04          	poppc
 2d5:	00          	breakpoint
 2d6:	00          	breakpoint
 2d7:	00          	breakpoint
 2d8:	65          	loadsp 84
 2d9:	02          	pushsp
 2da:	00          	breakpoint
 2db:	00          	breakpoint
 2dc:	00          	breakpoint
 2dd:	d1          	im -47
 2de:	01          	.byte 1
 2df:	08          	load
 2e0:	02          	pushsp
 2e1:	00          	breakpoint
 2e2:	00          	breakpoint
 2e3:	00          	breakpoint
 2e4:	9f          	im 31
 2e5:	02          	pushsp
 2e6:	07          	or
 2e7:	02          	pushsp
 2e8:	00          	breakpoint
 2e9:	00          	breakpoint
 2ea:	00          	breakpoint
 2eb:	0c          	store
 2ec:	08          	load
 2ed:	07          	or
 2ee:	06          	and
 2ef:	00          	breakpoint
 2f0:	00          	breakpoint
 2f1:	01          	.byte 1
 2f2:	2f          	neq
 2f3:	02          	pushsp
 2f4:	d5          	im -43
 2f5:	00          	breakpoint
 2f6:	00          	breakpoint
 2f7:	00          	breakpoint
 2f8:	51          	storesp 4
 2f9:	07          	or
 2fa:	00          	breakpoint
 2fb:	00          	breakpoint
 2fc:	00          	breakpoint
 2fd:	fd          	im -3
 2fe:	01          	.byte 1
 2ff:	00          	breakpoint
 300:	00          	breakpoint
 301:	01          	.byte 1
 302:	e4          	im -28
 303:	04          	poppc
 304:	2f          	neq
 305:	01          	.byte 1
 306:	00          	breakpoint
 307:	00          	breakpoint
 308:	00          	breakpoint
 309:	4f          	storesp 124
 30a:	00          	breakpoint
 30b:	00          	breakpoint
 30c:	0d          	popsp
 30d:	8c          	im 12
 30e:	00          	breakpoint
 30f:	00          	breakpoint
 310:	0e          	.byte 14
 311:	1b          	addsp 44
 312:	02          	pushsp
 313:	90          	im 16
 314:	20          	.byte 32
 315:	08          	load
 316:	6d          	loadsp 116
 317:	00          	breakpoint
 318:	04          	poppc
 319:	2b          	ashiftleft
 31a:	00          	breakpoint
 31b:	00          	breakpoint
 31c:	00          	breakpoint
 31d:	4f          	storesp 124
 31e:	01          	.byte 1
 31f:	5c          	storesp 48
 320:	08          	load
 321:	63          	loadsp 76
 322:	00          	breakpoint
 323:	04          	poppc
 324:	2b          	ashiftleft
 325:	00          	breakpoint
 326:	00          	breakpoint
 327:	00          	breakpoint
 328:	33          	loadb
 329:	02          	pushsp
 32a:	91          	im 17
 32b:	1c          	addsp 48
 32c:	08          	load
 32d:	6e          	loadsp 120
 32e:	00          	breakpoint
 32f:	04          	poppc
 330:	2b          	ashiftleft
 331:	00          	breakpoint
 332:	00          	breakpoint
 333:	00          	breakpoint
 334:	7a          	loadsp 40
 335:	01          	.byte 1
 336:	59          	storesp 36
 337:	09          	not
 338:	73          	loadsp 12
 339:	00          	breakpoint
 33a:	04          	poppc
 33b:	3a          	config
 33c:	00          	breakpoint
 33d:	00          	breakpoint
 33e:	00          	breakpoint
 33f:	5f          	storesp 60
 340:	01          	.byte 1
 341:	5a          	storesp 40
 342:	0a          	flip
 343:	69          	loadsp 100
 344:	00          	breakpoint
 345:	04          	poppc
 346:	3b          	pushpc
 347:	00          	breakpoint
 348:	00          	breakpoint
 349:	00          	breakpoint
 34a:	33          	loadb
 34b:	0b          	nop
 34c:	00          	breakpoint
 34d:	00          	breakpoint
 34e:	02          	pushsp
 34f:	2a          	lshiftright
 350:	04          	poppc
 351:	3c          	syscall
 352:	00          	breakpoint
 353:	00          	breakpoint
 354:	00          	breakpoint
 355:	51          	storesp 4
 356:	01          	.byte 1
 357:	5a          	storesp 40
 358:	0b          	nop
 359:	00          	breakpoint
 35a:	00          	breakpoint
 35b:	01          	.byte 1
 35c:	eb          	im -21
 35d:	04          	poppc
 35e:	3d          	pushspadd
 35f:	00          	breakpoint
 360:	00          	breakpoint
 361:	00          	breakpoint
 362:	fd          	im -3
 363:	01          	.byte 1
 364:	58          	storesp 32
 365:	09          	not
 366:	64          	loadsp 80
 367:	00          	breakpoint
 368:	04          	poppc
 369:	3e          	halfmult
 36a:	00          	breakpoint
 36b:	00          	breakpoint
 36c:	00          	breakpoint
 36d:	3a          	config
 36e:	01          	.byte 1
 36f:	5b          	storesp 44
 370:	00          	breakpoint
 371:	05          	add
 372:	04          	poppc
 373:	00          	breakpoint
 374:	00          	breakpoint
 375:	00          	breakpoint
 376:	51          	storesp 4
	...

00000378 <.Ldebug_info0>:
 378:	00          	breakpoint
 379:	00          	breakpoint
 37a:	00          	breakpoint
 37b:	cd          	im -51
 37c:	00          	breakpoint
 37d:	02          	pushsp
 37e:	00          	breakpoint
 37f:	00          	breakpoint
 380:	02          	pushsp
 381:	02          	pushsp
 382:	04          	poppc
 383:	01          	.byte 1
 384:	00          	breakpoint
 385:	00          	breakpoint
 386:	05          	add
 387:	c0          	im -64
 388:	00          	breakpoint
 389:	00          	breakpoint
 38a:	0e          	.byte 14
 38b:	b0          	im 48
 38c:	00          	breakpoint
 38d:	00          	breakpoint
 38e:	0e          	.byte 14
 38f:	1b          	addsp 44
 390:	00          	breakpoint
 391:	00          	breakpoint
 392:	00          	breakpoint
 393:	b2          	im 50
 394:	01          	.byte 1
 395:	00          	breakpoint
 396:	00          	breakpoint
 397:	02          	pushsp
 398:	31          	sub
 399:	00          	breakpoint
 39a:	00          	breakpoint
 39b:	01          	.byte 1
 39c:	79          	loadsp 36
 39d:	02          	pushsp
 39e:	00          	breakpoint
 39f:	00          	breakpoint
 3a0:	00          	breakpoint
 3a1:	28          	swap
 3a2:	04          	poppc
 3a3:	05          	add
 3a4:	02          	pushsp
 3a5:	00          	breakpoint
 3a6:	00          	breakpoint
 3a7:	00          	breakpoint
 3a8:	23          	storeh
 3a9:	08          	load
 3aa:	05          	add
 3ab:	03          	.byte 3
 3ac:	69          	loadsp 100
 3ad:	6e          	loadsp 120
 3ae:	74          	loadsp 16
 3af:	00          	breakpoint
 3b0:	04          	poppc
 3b1:	05          	add
 3b2:	02          	pushsp
 3b3:	00          	breakpoint
 3b4:	00          	breakpoint
 3b5:	00          	breakpoint
 3b6:	16          	addsp 24
 3b7:	04          	poppc
 3b8:	07          	or
 3b9:	02          	pushsp
 3ba:	00          	breakpoint
 3bb:	00          	breakpoint
 3bc:	00          	breakpoint
 3bd:	11          	addsp 4
 3be:	04          	poppc
 3bf:	07          	or
 3c0:	02          	pushsp
 3c1:	00          	breakpoint
 3c2:	00          	breakpoint
 3c3:	00          	breakpoint
 3c4:	c8          	im -56
 3c5:	01          	.byte 1
 3c6:	08          	load
 3c7:	02          	pushsp
 3c8:	00          	breakpoint
 3c9:	00          	breakpoint
 3ca:	00          	breakpoint
 3cb:	11          	addsp 4
 3cc:	04          	poppc
 3cd:	07          	or
 3ce:	02          	pushsp
 3cf:	00          	breakpoint
 3d0:	00          	breakpoint
 3d1:	00          	breakpoint
 3d2:	d6          	im -42
 3d3:	02          	pushsp
 3d4:	05          	add
 3d5:	02          	pushsp
 3d6:	00          	breakpoint
 3d7:	00          	breakpoint
 3d8:	00          	breakpoint
 3d9:	d1          	im -47
 3da:	01          	.byte 1
 3db:	08          	load
 3dc:	04          	poppc
 3dd:	04          	poppc
 3de:	00          	breakpoint
 3df:	00          	breakpoint
 3e0:	00          	breakpoint
 3e1:	6a          	loadsp 104
 3e2:	05          	add
 3e3:	00          	breakpoint
 3e4:	00          	breakpoint
 3e5:	00          	breakpoint
 3e6:	5d          	storesp 52
 3e7:	02          	pushsp
 3e8:	00          	breakpoint
 3e9:	00          	breakpoint
 3ea:	00          	breakpoint
 3eb:	9f          	im 31
 3ec:	02          	pushsp
 3ed:	07          	or
 3ee:	02          	pushsp
 3ef:	00          	breakpoint
 3f0:	00          	breakpoint
 3f1:	00          	breakpoint
 3f2:	0c          	store
 3f3:	08          	load
 3f4:	07          	or
 3f5:	06          	and
 3f6:	00          	breakpoint
 3f7:	00          	breakpoint
 3f8:	00          	breakpoint
 3f9:	ca          	im -54
 3fa:	01          	.byte 1
 3fb:	00          	breakpoint
 3fc:	00          	breakpoint
 3fd:	02          	pushsp
 3fe:	63          	loadsp 76
 3ff:	04          	poppc
 400:	40          	storesp 64
 401:	01          	.byte 1
 402:	00          	breakpoint
 403:	00          	breakpoint
 404:	00          	breakpoint
 405:	33          	loadb
 406:	00          	breakpoint
 407:	00          	breakpoint
 408:	0e          	.byte 14
 409:	1b          	addsp 44
 40a:	00          	breakpoint
 40b:	00          	breakpoint
 40c:	0e          	.byte 14
 40d:	b0          	im 48
 40e:	02          	pushsp
 40f:	90          	im 16
 410:	20          	.byte 32
 411:	07          	or
 412:	73          	loadsp 12
 413:	31          	sub
 414:	00          	breakpoint
 415:	04          	poppc
 416:	3d          	pushspadd
 417:	00          	breakpoint
 418:	00          	breakpoint
 419:	00          	breakpoint
 41a:	64          	loadsp 80
 41b:	01          	.byte 1
 41c:	59          	storesp 36
 41d:	07          	or
 41e:	73          	loadsp 12
 41f:	32          	xor
 420:	00          	breakpoint
 421:	04          	poppc
 422:	3d          	pushspadd
 423:	00          	breakpoint
 424:	00          	breakpoint
 425:	00          	breakpoint
 426:	64          	loadsp 80
 427:	01          	.byte 1
 428:	5a          	storesp 40
 429:	08          	load
 42a:	61          	loadsp 68
 42b:	31          	sub
 42c:	00          	breakpoint
 42d:	04          	poppc
 42e:	4a          	storesp 104
 42f:	00          	breakpoint
 430:	00          	breakpoint
 431:	00          	breakpoint
 432:	ca          	im -54
 433:	01          	.byte 1
 434:	5b          	storesp 44
 435:	08          	load
 436:	61          	loadsp 68
 437:	32          	xor
 438:	00          	breakpoint
 439:	04          	poppc
 43a:	4b          	storesp 108
 43b:	00          	breakpoint
 43c:	00          	breakpoint
 43d:	00          	breakpoint
 43e:	ca          	im -54
 43f:	01          	.byte 1
 440:	5c          	storesp 48
 441:	00          	breakpoint
 442:	04          	poppc
 443:	04          	poppc
 444:	00          	breakpoint
 445:	00          	breakpoint
 446:	00          	breakpoint
 447:	4f          	storesp 124
	...
Disassembly of section .debug_abbrev:

00000000 <.Ldebug_abbrev0>:
   0:	01          	.byte 1
   1:	11          	addsp 4
   2:	01          	.byte 1
   3:	10          	addsp 0
   4:	06          	and
   5:	25          	lessthanorequal
   6:	0e          	.byte 14
   7:	13          	addsp 12
   8:	0b          	nop
   9:	03          	.byte 3
   a:	0e          	.byte 14
   b:	1b          	addsp 44
   c:	0e          	.byte 14
   d:	00          	breakpoint
   e:	00          	breakpoint
   f:	02          	pushsp
  10:	24          	lessthan
  11:	00          	breakpoint
  12:	03          	.byte 3
  13:	0e          	.byte 14
  14:	0b          	nop
  15:	0b          	nop
  16:	3e          	halfmult
  17:	0b          	nop
  18:	00          	breakpoint
  19:	00          	breakpoint
  1a:	03          	.byte 3
  1b:	24          	lessthan
  1c:	00          	breakpoint
  1d:	03          	.byte 3
  1e:	08          	load
  1f:	0b          	nop
  20:	0b          	nop
  21:	3e          	halfmult
  22:	0b          	nop
  23:	00          	breakpoint
  24:	00          	breakpoint
  25:	04          	poppc
  26:	2e          	eq
  27:	01          	.byte 1
  28:	01          	.byte 1
  29:	13          	addsp 12
  2a:	3f          	callpcrel
  2b:	0c          	store
  2c:	03          	.byte 3
  2d:	0e          	.byte 14
  2e:	3a          	config
  2f:	0b          	nop
  30:	3b          	pushpc
  31:	0b          	nop
  32:	49          	storesp 100
  33:	13          	addsp 12
  34:	11          	addsp 4
  35:	01          	.byte 1
  36:	12          	addsp 8
  37:	01          	.byte 1
  38:	40          	storesp 64
  39:	0a          	flip
  3a:	00          	breakpoint
  3b:	00          	breakpoint
  3c:	05          	add
  3d:	34          	storeb
  3e:	00          	breakpoint
  3f:	03          	.byte 3
  40:	08          	load
  41:	3a          	config
  42:	0b          	nop
  43:	3b          	pushpc
  44:	0b          	nop
  45:	49          	storesp 100
  46:	13          	addsp 12
  47:	02          	pushsp
  48:	0a          	flip
  49:	00          	breakpoint
  4a:	00          	breakpoint
  4b:	06          	and
  4c:	2e          	eq
  4d:	01          	.byte 1
  4e:	01          	.byte 1
  4f:	13          	addsp 12
  50:	3f          	callpcrel
  51:	0c          	store
  52:	03          	.byte 3
  53:	0e          	.byte 14
  54:	3a          	config
  55:	0b          	nop
  56:	3b          	pushpc
  57:	0b          	nop
  58:	27          	ulessthanorequal
  59:	0c          	store
  5a:	11          	addsp 4
  5b:	01          	.byte 1
  5c:	12          	addsp 8
  5d:	01          	.byte 1
  5e:	40          	storesp 64
  5f:	0a          	flip
  60:	00          	breakpoint
  61:	00          	breakpoint
  62:	07          	or
  63:	05          	add
  64:	00          	breakpoint
  65:	03          	.byte 3
  66:	08          	load
  67:	3a          	config
  68:	0b          	nop
  69:	3b          	pushpc
  6a:	0b          	nop
  6b:	49          	storesp 100
  6c:	13          	addsp 12
  6d:	02          	pushsp
  6e:	0a          	flip
  6f:	00          	breakpoint
  70:	00          	breakpoint
  71:	08          	load
  72:	2e          	eq
  73:	00          	breakpoint
  74:	3f          	callpcrel
  75:	0c          	store
  76:	03          	.byte 3
  77:	0e          	.byte 14
  78:	3a          	config
  79:	0b          	nop
  7a:	3b          	pushpc
  7b:	0b          	nop
  7c:	27          	ulessthanorequal
  7d:	0c          	store
  7e:	11          	addsp 4
  7f:	01          	.byte 1
  80:	12          	addsp 8
  81:	01          	.byte 1
  82:	40          	storesp 64
  83:	0a          	flip
  84:	00          	breakpoint
  85:	00          	breakpoint
  86:	09          	not
  87:	34          	storeb
  88:	00          	breakpoint
  89:	03          	.byte 3
  8a:	0e          	.byte 14
  8b:	3a          	config
  8c:	0b          	nop
  8d:	3b          	pushpc
  8e:	0b          	nop
  8f:	49          	storesp 100
  90:	13          	addsp 12
  91:	02          	pushsp
  92:	0a          	flip
  93:	00          	breakpoint
  94:	00          	breakpoint
  95:	0a          	flip
  96:	34          	storeb
  97:	00          	breakpoint
  98:	03          	.byte 3
  99:	0e          	.byte 14
  9a:	3a          	config
  9b:	0b          	nop
  9c:	3b          	pushpc
  9d:	0b          	nop
  9e:	49          	storesp 100
  9f:	13          	addsp 12
  a0:	3f          	callpcrel
  a1:	0c          	store
  a2:	3c          	syscall
  a3:	0c          	store
  a4:	00          	breakpoint
  a5:	00          	breakpoint
  a6:	0b          	nop
  a7:	0f          	.byte 15
  a8:	00          	breakpoint
  a9:	0b          	nop
  aa:	0b          	nop
  ab:	49          	storesp 100
  ac:	13          	addsp 12
  ad:	00          	breakpoint
  ae:	00          	breakpoint
  af:	0c          	store
  b0:	35          	div
  b1:	00          	breakpoint
  b2:	49          	storesp 100
  b3:	13          	addsp 12
  b4:	00          	breakpoint
  b5:	00          	breakpoint
  b6:	0d          	popsp
  b7:	34          	storeb
  b8:	00          	breakpoint
  b9:	03          	.byte 3
  ba:	08          	load
  bb:	3a          	config
  bc:	0b          	nop
  bd:	3b          	pushpc
  be:	0b          	nop
  bf:	49          	storesp 100
  c0:	13          	addsp 12
  c1:	3f          	callpcrel
  c2:	0c          	store
  c3:	02          	pushsp
  c4:	0a          	flip
  c5:	00          	breakpoint
  c6:	00          	breakpoint
  c7:	0e          	.byte 14
  c8:	26          	ulessthan
  c9:	00          	breakpoint
  ca:	49          	storesp 100
  cb:	13          	addsp 12
  cc:	00          	breakpoint
	...

000000cf <.Ldebug_abbrev0>:
  cf:	01          	.byte 1
  d0:	11          	addsp 4
  d1:	01          	.byte 1
  d2:	10          	addsp 0
  d3:	06          	and
  d4:	12          	addsp 8
  d5:	01          	.byte 1
  d6:	11          	addsp 4
  d7:	01          	.byte 1
  d8:	25          	lessthanorequal
  d9:	0e          	.byte 14
  da:	13          	addsp 12
  db:	0b          	nop
  dc:	03          	.byte 3
  dd:	0e          	.byte 14
  de:	1b          	addsp 44
  df:	0e          	.byte 14
  e0:	00          	breakpoint
  e1:	00          	breakpoint
  e2:	02          	pushsp
  e3:	24          	lessthan
  e4:	00          	breakpoint
  e5:	03          	.byte 3
  e6:	0e          	.byte 14
  e7:	0b          	nop
  e8:	0b          	nop
  e9:	3e          	halfmult
  ea:	0b          	nop
  eb:	00          	breakpoint
  ec:	00          	breakpoint
  ed:	03          	.byte 3
  ee:	16          	addsp 24
  ef:	00          	breakpoint
  f0:	03          	.byte 3
  f1:	0e          	.byte 14
  f2:	3a          	config
  f3:	0b          	nop
  f4:	3b          	pushpc
  f5:	0b          	nop
  f6:	49          	storesp 100
  f7:	13          	addsp 12
  f8:	00          	breakpoint
  f9:	00          	breakpoint
  fa:	04          	poppc
  fb:	24          	lessthan
  fc:	00          	breakpoint
  fd:	03          	.byte 3
  fe:	08          	load
  ff:	0b          	nop
 100:	0b          	nop
 101:	3e          	halfmult
 102:	0b          	nop
 103:	00          	breakpoint
 104:	00          	breakpoint
 105:	05          	add
 106:	2e          	eq
 107:	01          	.byte 1
 108:	01          	.byte 1
 109:	13          	addsp 12
 10a:	3f          	callpcrel
 10b:	0c          	store
 10c:	03          	.byte 3
 10d:	0e          	.byte 14
 10e:	3a          	config
 10f:	0b          	nop
 110:	3b          	pushpc
 111:	0b          	nop
 112:	27          	ulessthanorequal
 113:	0c          	store
 114:	49          	storesp 100
 115:	13          	addsp 12
 116:	11          	addsp 4
 117:	01          	.byte 1
 118:	12          	addsp 8
 119:	01          	.byte 1
 11a:	40          	storesp 64
 11b:	0a          	flip
 11c:	00          	breakpoint
 11d:	00          	breakpoint
 11e:	06          	and
 11f:	05          	add
 120:	00          	breakpoint
 121:	03          	.byte 3
 122:	0e          	.byte 14
 123:	3a          	config
 124:	0b          	nop
 125:	3b          	pushpc
 126:	0b          	nop
 127:	49          	storesp 100
 128:	13          	addsp 12
 129:	02          	pushsp
 12a:	0a          	flip
 12b:	00          	breakpoint
 12c:	00          	breakpoint
 12d:	07          	or
 12e:	34          	storeb
 12f:	00          	breakpoint
 130:	03          	.byte 3
 131:	08          	load
 132:	3a          	config
 133:	0b          	nop
 134:	3b          	pushpc
 135:	0b          	nop
 136:	49          	storesp 100
 137:	13          	addsp 12
 138:	02          	pushsp
 139:	0a          	flip
 13a:	00          	breakpoint
 13b:	00          	breakpoint
 13c:	08          	load
 13d:	34          	storeb
 13e:	00          	breakpoint
 13f:	03          	.byte 3
 140:	0e          	.byte 14
 141:	3a          	config
 142:	0b          	nop
 143:	3b          	pushpc
 144:	0b          	nop
 145:	49          	storesp 100
 146:	13          	addsp 12
 147:	02          	pushsp
 148:	0a          	flip
 149:	00          	breakpoint
 14a:	00          	breakpoint
 14b:	09          	not
 14c:	0f          	.byte 15
 14d:	00          	breakpoint
 14e:	0b          	nop
 14f:	0b          	nop
 150:	00          	breakpoint
 151:	00          	breakpoint
 152:	0a          	flip
 153:	0f          	.byte 15
 154:	00          	breakpoint
 155:	0b          	nop
 156:	0b          	nop
 157:	49          	storesp 100
 158:	13          	addsp 12
 159:	00          	breakpoint
 15a:	00          	breakpoint
 15b:	0b          	nop
 15c:	26          	ulessthan
 15d:	00          	breakpoint
 15e:	00          	breakpoint
 15f:	00          	breakpoint
 160:	0c          	store
 161:	26          	ulessthan
 162:	00          	breakpoint
 163:	49          	storesp 100
 164:	13          	addsp 12
 165:	00          	breakpoint
	...

00000168 <.Ldebug_abbrev0>:
 168:	01          	.byte 1
 169:	11          	addsp 4
 16a:	01          	.byte 1
 16b:	10          	addsp 0
 16c:	06          	and
 16d:	12          	addsp 8
 16e:	01          	.byte 1
 16f:	11          	addsp 4
 170:	01          	.byte 1
 171:	25          	lessthanorequal
 172:	0e          	.byte 14
 173:	13          	addsp 12
 174:	0b          	nop
 175:	03          	.byte 3
 176:	0e          	.byte 14
 177:	1b          	addsp 44
 178:	0e          	.byte 14
 179:	00          	breakpoint
 17a:	00          	breakpoint
 17b:	02          	pushsp
 17c:	24          	lessthan
 17d:	00          	breakpoint
 17e:	03          	.byte 3
 17f:	0e          	.byte 14
 180:	0b          	nop
 181:	0b          	nop
 182:	3e          	halfmult
 183:	0b          	nop
 184:	00          	breakpoint
 185:	00          	breakpoint
 186:	03          	.byte 3
 187:	24          	lessthan
 188:	00          	breakpoint
 189:	03          	.byte 3
 18a:	08          	load
 18b:	0b          	nop
 18c:	0b          	nop
 18d:	3e          	halfmult
 18e:	0b          	nop
 18f:	00          	breakpoint
 190:	00          	breakpoint
 191:	04          	poppc
 192:	0f          	.byte 15
 193:	00          	breakpoint
 194:	0b          	nop
 195:	0b          	nop
 196:	00          	breakpoint
 197:	00          	breakpoint
 198:	05          	add
 199:	0f          	.byte 15
 19a:	00          	breakpoint
 19b:	0b          	nop
 19c:	0b          	nop
 19d:	49          	storesp 100
 19e:	13          	addsp 12
 19f:	00          	breakpoint
 1a0:	00          	breakpoint
 1a1:	06          	and
 1a2:	16          	addsp 24
 1a3:	00          	breakpoint
 1a4:	03          	.byte 3
 1a5:	0e          	.byte 14
 1a6:	3a          	config
 1a7:	0b          	nop
 1a8:	3b          	pushpc
 1a9:	0b          	nop
 1aa:	49          	storesp 100
 1ab:	13          	addsp 12
 1ac:	00          	breakpoint
 1ad:	00          	breakpoint
 1ae:	07          	or
 1af:	2e          	eq
 1b0:	01          	.byte 1
 1b1:	01          	.byte 1
 1b2:	13          	addsp 12
 1b3:	3f          	callpcrel
 1b4:	0c          	store
 1b5:	03          	.byte 3
 1b6:	0e          	.byte 14
 1b7:	3a          	config
 1b8:	0b          	nop
 1b9:	3b          	pushpc
 1ba:	0b          	nop
 1bb:	27          	ulessthanorequal
 1bc:	0c          	store
 1bd:	49          	storesp 100
 1be:	13          	addsp 12
 1bf:	11          	addsp 4
 1c0:	01          	.byte 1
 1c1:	12          	addsp 8
 1c2:	01          	.byte 1
 1c3:	40          	storesp 64
 1c4:	0a          	flip
 1c5:	00          	breakpoint
 1c6:	00          	breakpoint
 1c7:	08          	load
 1c8:	05          	add
 1c9:	00          	breakpoint
 1ca:	03          	.byte 3
 1cb:	08          	load
 1cc:	3a          	config
 1cd:	0b          	nop
 1ce:	3b          	pushpc
 1cf:	0b          	nop
 1d0:	49          	storesp 100
 1d1:	13          	addsp 12
 1d2:	02          	pushsp
 1d3:	0a          	flip
 1d4:	00          	breakpoint
 1d5:	00          	breakpoint
 1d6:	09          	not
 1d7:	34          	storeb
 1d8:	00          	breakpoint
 1d9:	03          	.byte 3
 1da:	08          	load
 1db:	3a          	config
 1dc:	0b          	nop
 1dd:	3b          	pushpc
 1de:	0b          	nop
 1df:	49          	storesp 100
 1e0:	13          	addsp 12
 1e1:	02          	pushsp
 1e2:	0a          	flip
 1e3:	00          	breakpoint
 1e4:	00          	breakpoint
 1e5:	0a          	flip
 1e6:	34          	storeb
 1e7:	00          	breakpoint
 1e8:	03          	.byte 3
 1e9:	08          	load
 1ea:	3a          	config
 1eb:	0b          	nop
 1ec:	3b          	pushpc
 1ed:	0b          	nop
 1ee:	49          	storesp 100
 1ef:	13          	addsp 12
 1f0:	00          	breakpoint
 1f1:	00          	breakpoint
 1f2:	0b          	nop
 1f3:	34          	storeb
 1f4:	00          	breakpoint
 1f5:	03          	.byte 3
 1f6:	0e          	.byte 14
 1f7:	3a          	config
 1f8:	0b          	nop
 1f9:	3b          	pushpc
 1fa:	0b          	nop
 1fb:	49          	storesp 100
 1fc:	13          	addsp 12
 1fd:	02          	pushsp
 1fe:	0a          	flip
 1ff:	00          	breakpoint
	...

00000202 <.Ldebug_abbrev0>:
 202:	01          	.byte 1
 203:	11          	addsp 4
 204:	01          	.byte 1
 205:	10          	addsp 0
 206:	06          	and
 207:	12          	addsp 8
 208:	01          	.byte 1
 209:	11          	addsp 4
 20a:	01          	.byte 1
 20b:	25          	lessthanorequal
 20c:	0e          	.byte 14
 20d:	13          	addsp 12
 20e:	0b          	nop
 20f:	03          	.byte 3
 210:	0e          	.byte 14
 211:	1b          	addsp 44
 212:	0e          	.byte 14
 213:	00          	breakpoint
 214:	00          	breakpoint
 215:	02          	pushsp
 216:	24          	lessthan
 217:	00          	breakpoint
 218:	03          	.byte 3
 219:	0e          	.byte 14
 21a:	0b          	nop
 21b:	0b          	nop
 21c:	3e          	halfmult
 21d:	0b          	nop
 21e:	00          	breakpoint
 21f:	00          	breakpoint
 220:	03          	.byte 3
 221:	24          	lessthan
 222:	00          	breakpoint
 223:	03          	.byte 3
 224:	08          	load
 225:	0b          	nop
 226:	0b          	nop
 227:	3e          	halfmult
 228:	0b          	nop
 229:	00          	breakpoint
 22a:	00          	breakpoint
 22b:	04          	poppc
 22c:	0f          	.byte 15
 22d:	00          	breakpoint
 22e:	0b          	nop
 22f:	0b          	nop
 230:	49          	storesp 100
 231:	13          	addsp 12
 232:	00          	breakpoint
 233:	00          	breakpoint
 234:	05          	add
 235:	26          	ulessthan
 236:	00          	breakpoint
 237:	49          	storesp 100
 238:	13          	addsp 12
 239:	00          	breakpoint
 23a:	00          	breakpoint
 23b:	06          	and
 23c:	2e          	eq
 23d:	01          	.byte 1
 23e:	01          	.byte 1
 23f:	13          	addsp 12
 240:	3f          	callpcrel
 241:	0c          	store
 242:	03          	.byte 3
 243:	0e          	.byte 14
 244:	3a          	config
 245:	0b          	nop
 246:	3b          	pushpc
 247:	0b          	nop
 248:	27          	ulessthanorequal
 249:	0c          	store
 24a:	49          	storesp 100
 24b:	13          	addsp 12
 24c:	11          	addsp 4
 24d:	01          	.byte 1
 24e:	12          	addsp 8
 24f:	01          	.byte 1
 250:	40          	storesp 64
 251:	0a          	flip
 252:	00          	breakpoint
 253:	00          	breakpoint
 254:	07          	or
 255:	05          	add
 256:	00          	breakpoint
 257:	03          	.byte 3
 258:	08          	load
 259:	3a          	config
 25a:	0b          	nop
 25b:	3b          	pushpc
 25c:	0b          	nop
 25d:	49          	storesp 100
 25e:	13          	addsp 12
 25f:	02          	pushsp
 260:	0a          	flip
 261:	00          	breakpoint
 262:	00          	breakpoint
 263:	08          	load
 264:	34          	storeb
 265:	00          	breakpoint
 266:	03          	.byte 3
 267:	08          	load
 268:	3a          	config
 269:	0b          	nop
 26a:	3b          	pushpc
 26b:	0b          	nop
 26c:	49          	storesp 100
 26d:	13          	addsp 12
 26e:	02          	pushsp
 26f:	0a          	flip
 270:	00          	breakpoint
	...
Disassembly of section .debug_line:

00000000 <.Ldebug_line0>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	02          	pushsp
   3:	8c          	im 12
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	01          	.byte 1
   9:	52          	storesp 8
   a:	01          	.byte 1
   b:	01          	.byte 1
   c:	f6          	im -10
   d:	f5          	im -11
   e:	0a          	flip
   f:	00          	breakpoint
  10:	01          	.byte 1
  11:	01          	.byte 1
  12:	01          	.byte 1
  13:	01          	.byte 1
  14:	00          	breakpoint
  15:	00          	breakpoint
  16:	00          	breakpoint
  17:	01          	.byte 1
  18:	2e          	eq
  19:	2e          	eq
  1a:	2f          	neq
  1b:	2e          	eq
  1c:	2e          	eq
  1d:	2f          	neq
  1e:	2e          	eq
  1f:	2e          	eq
  20:	2f          	neq
  21:	2e          	eq
  22:	2e          	eq
  23:	2f          	neq
  24:	2e          	eq
  25:	2e          	eq
  26:	2f          	neq
  27:	67          	loadsp 92
  28:	63          	loadsp 76
  29:	63          	loadsp 76
  2a:	2f          	neq
  2b:	6c          	loadsp 112
  2c:	69          	loadsp 100
  2d:	62          	loadsp 72
  2e:	67          	loadsp 92
  2f:	6c          	loadsp 112
  30:	6f          	loadsp 124
  31:	73          	loadsp 12
  32:	73          	loadsp 12
  33:	2f          	neq
  34:	7a          	loadsp 40
  35:	70          	loadsp 0
  36:	75          	loadsp 20
  37:	00          	breakpoint
  38:	2f          	neq
  39:	68          	loadsp 96
  3a:	6f          	loadsp 124
  3b:	6d          	loadsp 116
  3c:	65          	loadsp 84
  3d:	2f          	neq
  3e:	61          	loadsp 68
  3f:	6c          	loadsp 112
  40:	76          	loadsp 24
  41:	69          	loadsp 100
  42:	65          	loadsp 84
  43:	62          	loadsp 72
  44:	6f          	loadsp 124
  45:	79          	loadsp 36
  46:	2f          	neq
  47:	7a          	loadsp 40
  48:	70          	loadsp 0
  49:	75          	loadsp 20
  4a:	2f          	neq
  4b:	74          	loadsp 16
  4c:	6f          	loadsp 124
  4d:	6f          	loadsp 124
  4e:	6c          	loadsp 112
  4f:	63          	loadsp 76
  50:	68          	loadsp 96
  51:	61          	loadsp 68
  52:	69          	loadsp 100
  53:	6e          	loadsp 120
  54:	2f          	neq
  55:	74          	loadsp 16
  56:	6f          	loadsp 124
  57:	6f          	loadsp 124
  58:	6c          	loadsp 112
  59:	63          	loadsp 76
  5a:	68          	loadsp 96
  5b:	61          	loadsp 68
  5c:	69          	loadsp 100
  5d:	6e          	loadsp 120
  5e:	2f          	neq
  5f:	74          	loadsp 16
  60:	6f          	loadsp 124
  61:	6f          	loadsp 124
  62:	6c          	loadsp 112
  63:	63          	loadsp 76
  64:	68          	loadsp 96
  65:	61          	loadsp 68
  66:	69          	loadsp 100
  67:	6e          	loadsp 120
  68:	2f          	neq
  69:	67          	loadsp 92
  6a:	63          	loadsp 76
  6b:	63          	loadsp 76
  6c:	2f          	neq
  6d:	6e          	loadsp 120
  6e:	65          	loadsp 84
  6f:	77          	loadsp 28
  70:	6c          	loadsp 112
  71:	69          	loadsp 100
  72:	62          	loadsp 72
  73:	2f          	neq
  74:	6c          	loadsp 112
  75:	69          	loadsp 100
  76:	62          	loadsp 72
  77:	63          	loadsp 76
  78:	2f          	neq
  79:	69          	loadsp 100
  7a:	6e          	loadsp 120
  7b:	63          	loadsp 76
  7c:	6c          	loadsp 112
  7d:	75          	loadsp 20
  7e:	64          	loadsp 80
  7f:	65          	loadsp 84
  80:	00          	breakpoint
  81:	2f          	neq
  82:	68          	loadsp 96
  83:	6f          	loadsp 124
  84:	6d          	loadsp 116
  85:	65          	loadsp 84
  86:	2f          	neq
  87:	61          	loadsp 68
  88:	6c          	loadsp 112
  89:	76          	loadsp 24
  8a:	69          	loadsp 100
  8b:	65          	loadsp 84
  8c:	62          	loadsp 72
  8d:	6f          	loadsp 124
  8e:	79          	loadsp 36
  8f:	2f          	neq
  90:	7a          	loadsp 40
  91:	70          	loadsp 0
  92:	75          	loadsp 20
  93:	2f          	neq
  94:	74          	loadsp 16
  95:	6f          	loadsp 124
  96:	6f          	loadsp 124
  97:	6c          	loadsp 112
  98:	63          	loadsp 76
  99:	68          	loadsp 96
  9a:	61          	loadsp 68
  9b:	69          	loadsp 100
  9c:	6e          	loadsp 120
  9d:	2f          	neq
  9e:	74          	loadsp 16
  9f:	6f          	loadsp 124
  a0:	6f          	loadsp 124
  a1:	6c          	loadsp 112
  a2:	63          	loadsp 76
  a3:	68          	loadsp 96
  a4:	61          	loadsp 68
  a5:	69          	loadsp 100
  a6:	6e          	loadsp 120
  a7:	2f          	neq
  a8:	74          	loadsp 16
  a9:	6f          	loadsp 124
  aa:	6f          	loadsp 124
  ab:	6c          	loadsp 112
  ac:	63          	loadsp 76
  ad:	68          	loadsp 96
  ae:	61          	loadsp 68
  af:	69          	loadsp 100
  b0:	6e          	loadsp 120
  b1:	2f          	neq
  b2:	67          	loadsp 92
  b3:	63          	loadsp 76
  b4:	63          	loadsp 76
  b5:	62          	loadsp 72
  b6:	75          	loadsp 20
  b7:	69          	loadsp 100
  b8:	6c          	loadsp 112
  b9:	64          	loadsp 80
  ba:	2f          	neq
  bb:	67          	loadsp 92
  bc:	63          	loadsp 76
  bd:	63          	loadsp 76
  be:	2f          	neq
  bf:	69          	loadsp 100
  c0:	6e          	loadsp 120
  c1:	63          	loadsp 76
  c2:	6c          	loadsp 112
  c3:	75          	loadsp 20
  c4:	64          	loadsp 80
  c5:	65          	loadsp 84
  c6:	00          	breakpoint
  c7:	00          	breakpoint
  c8:	73          	loadsp 12
  c9:	74          	loadsp 16
  ca:	64          	loadsp 80
  cb:	64          	loadsp 80
  cc:	65          	loadsp 84
  cd:	66          	loadsp 88
  ce:	2e          	eq
  cf:	68          	loadsp 96
  d0:	00          	breakpoint
  d1:	03          	.byte 3
  d2:	00          	breakpoint
  d3:	00          	breakpoint
  d4:	73          	loadsp 12
  d5:	74          	loadsp 16
  d6:	64          	loadsp 80
  d7:	61          	loadsp 68
  d8:	72          	loadsp 8
  d9:	67          	loadsp 92
  da:	2e          	eq
  db:	68          	loadsp 96
  dc:	00          	breakpoint
  dd:	03          	.byte 3
  de:	00          	breakpoint
  df:	00          	breakpoint
  e0:	73          	loadsp 12
  e1:	79          	loadsp 36
  e2:	73          	loadsp 12
  e3:	2f          	neq
  e4:	5f          	storesp 60
  e5:	74          	loadsp 16
  e6:	79          	loadsp 36
  e7:	70          	loadsp 0
  e8:	65          	loadsp 84
  e9:	73          	loadsp 12
  ea:	2e          	eq
  eb:	68          	loadsp 96
  ec:	00          	breakpoint
  ed:	02          	pushsp
  ee:	00          	breakpoint
  ef:	00          	breakpoint
  f0:	73          	loadsp 12
  f1:	79          	loadsp 36
  f2:	73          	loadsp 12
  f3:	2f          	neq
  f4:	72          	loadsp 8
  f5:	65          	loadsp 84
  f6:	65          	loadsp 84
  f7:	6e          	loadsp 120
  f8:	74          	loadsp 16
  f9:	2e          	eq
  fa:	68          	loadsp 96
  fb:	00          	breakpoint
  fc:	02          	pushsp
  fd:	00          	breakpoint
  fe:	00          	breakpoint
  ff:	73          	loadsp 12
 100:	79          	loadsp 36
 101:	73          	loadsp 12
 102:	2f          	neq
 103:	74          	loadsp 16
 104:	79          	loadsp 36
 105:	70          	loadsp 0
 106:	65          	loadsp 84
 107:	73          	loadsp 12
 108:	2e          	eq
 109:	68          	loadsp 96
 10a:	00          	breakpoint
 10b:	02          	pushsp
 10c:	00          	breakpoint
 10d:	00          	breakpoint
 10e:	6d          	loadsp 116
 10f:	61          	loadsp 68
 110:	63          	loadsp 76
 111:	68          	loadsp 96
 112:	69          	loadsp 100
 113:	6e          	loadsp 120
 114:	65          	loadsp 84
 115:	2f          	neq
 116:	74          	loadsp 16
 117:	79          	loadsp 36
 118:	70          	loadsp 0
 119:	65          	loadsp 84
 11a:	73          	loadsp 12
 11b:	2e          	eq
 11c:	68          	loadsp 96
 11d:	00          	breakpoint
 11e:	02          	pushsp
 11f:	00          	breakpoint
 120:	00          	breakpoint
 121:	73          	loadsp 12
 122:	74          	loadsp 16
 123:	64          	loadsp 80
 124:	69          	loadsp 100
 125:	6f          	loadsp 124
 126:	2e          	eq
 127:	68          	loadsp 96
 128:	00          	breakpoint
 129:	02          	pushsp
 12a:	00          	breakpoint
 12b:	00          	breakpoint
 12c:	65          	loadsp 84
 12d:	72          	loadsp 8
 12e:	72          	loadsp 8
 12f:	6e          	loadsp 120
 130:	6f          	loadsp 124
 131:	2e          	eq
 132:	68          	loadsp 96
 133:	00          	breakpoint
 134:	02          	pushsp
 135:	00          	breakpoint
 136:	00          	breakpoint
 137:	74          	loadsp 16
 138:	69          	loadsp 100
 139:	6d          	loadsp 116
 13a:	65          	loadsp 84
 13b:	2e          	eq
 13c:	68          	loadsp 96
 13d:	00          	breakpoint
 13e:	02          	pushsp
 13f:	00          	breakpoint
 140:	00          	breakpoint
 141:	73          	loadsp 12
 142:	79          	loadsp 36
 143:	73          	loadsp 12
 144:	2f          	neq
 145:	73          	loadsp 12
 146:	74          	loadsp 16
 147:	61          	loadsp 68
 148:	74          	loadsp 16
 149:	2e          	eq
 14a:	68          	loadsp 96
 14b:	00          	breakpoint
 14c:	02          	pushsp
 14d:	00          	breakpoint
 14e:	00          	breakpoint
 14f:	63          	loadsp 76
 150:	72          	loadsp 8
 151:	74          	loadsp 16
 152:	5f          	storesp 60
 153:	69          	loadsp 100
 154:	6f          	loadsp 124
 155:	2e          	eq
 156:	63          	loadsp 76
 157:	00          	breakpoint
 158:	01          	.byte 1
 159:	00          	breakpoint
 15a:	00          	breakpoint
 15b:	00          	breakpoint
 15c:	00          	breakpoint
 15d:	05          	add
 15e:	02          	pushsp
 15f:	00          	breakpoint
 160:	00          	breakpoint
 161:	00          	breakpoint
 162:	00          	breakpoint
 163:	00          	breakpoint
 164:	01          	.byte 1
 165:	01          	.byte 1
 166:	00          	breakpoint
 167:	05          	add
 168:	02          	pushsp
 169:	00          	breakpoint
 16a:	00          	breakpoint
 16b:	00          	breakpoint
 16c:	00          	breakpoint
 16d:	04          	poppc
 16e:	0b          	nop
 16f:	2b          	ashiftleft
 170:	00          	breakpoint
 171:	05          	add
 172:	02          	pushsp
 173:	00          	breakpoint
 174:	00          	breakpoint
 175:	00          	breakpoint
 176:	00          	breakpoint
 177:	18          	addsp 32
 178:	00          	breakpoint
 179:	05          	add
 17a:	02          	pushsp
 17b:	00          	breakpoint
 17c:	00          	breakpoint
 17d:	00          	breakpoint
 17e:	00          	breakpoint
 17f:	15          	addsp 20
 180:	00          	breakpoint
 181:	05          	add
 182:	02          	pushsp
 183:	00          	breakpoint
 184:	00          	breakpoint
 185:	00          	breakpoint
 186:	00          	breakpoint
 187:	16          	addsp 24
 188:	00          	breakpoint
 189:	05          	add
 18a:	02          	pushsp
 18b:	00          	breakpoint
 18c:	00          	breakpoint
 18d:	00          	breakpoint
 18e:	00          	breakpoint
 18f:	17          	addsp 28
 190:	00          	breakpoint
 191:	05          	add
 192:	02          	pushsp
 193:	00          	breakpoint
 194:	00          	breakpoint
 195:	00          	breakpoint
 196:	00          	breakpoint
 197:	00          	breakpoint
 198:	01          	.byte 1
 199:	01          	.byte 1
 19a:	00          	breakpoint
 19b:	05          	add
 19c:	02          	pushsp
 19d:	00          	breakpoint
 19e:	00          	breakpoint
 19f:	00          	breakpoint
 1a0:	00          	breakpoint
 1a1:	04          	poppc
 1a2:	0b          	nop
 1a3:	3f          	callpcrel
 1a4:	00          	breakpoint
 1a5:	05          	add
 1a6:	02          	pushsp
 1a7:	00          	breakpoint
 1a8:	00          	breakpoint
 1a9:	00          	breakpoint
 1aa:	00          	breakpoint
 1ab:	16          	addsp 24
 1ac:	00          	breakpoint
 1ad:	05          	add
 1ae:	02          	pushsp
 1af:	00          	breakpoint
 1b0:	00          	breakpoint
 1b1:	00          	breakpoint
 1b2:	00          	breakpoint
 1b3:	15          	addsp 20
 1b4:	00          	breakpoint
 1b5:	05          	add
 1b6:	02          	pushsp
 1b7:	00          	breakpoint
 1b8:	00          	breakpoint
 1b9:	00          	breakpoint
 1ba:	00          	breakpoint
 1bb:	00          	breakpoint
 1bc:	01          	.byte 1
 1bd:	01          	.byte 1
 1be:	00          	breakpoint
 1bf:	05          	add
 1c0:	02          	pushsp
 1c1:	00          	breakpoint
 1c2:	00          	breakpoint
 1c3:	00          	breakpoint
 1c4:	00          	breakpoint
 1c5:	04          	poppc
 1c6:	0b          	nop
 1c7:	48          	storesp 96
 1c8:	00          	breakpoint
 1c9:	05          	add
 1ca:	02          	pushsp
 1cb:	00          	breakpoint
 1cc:	00          	breakpoint
 1cd:	00          	breakpoint
 1ce:	00          	breakpoint
 1cf:	15          	addsp 20
 1d0:	00          	breakpoint
 1d1:	05          	add
 1d2:	02          	pushsp
 1d3:	00          	breakpoint
 1d4:	00          	breakpoint
 1d5:	00          	breakpoint
 1d6:	00          	breakpoint
 1d7:	16          	addsp 24
 1d8:	00          	breakpoint
 1d9:	05          	add
 1da:	02          	pushsp
 1db:	00          	breakpoint
 1dc:	00          	breakpoint
 1dd:	00          	breakpoint
 1de:	00          	breakpoint
 1df:	1d          	addsp 52
 1e0:	00          	breakpoint
 1e1:	05          	add
 1e2:	02          	pushsp
 1e3:	00          	breakpoint
 1e4:	00          	breakpoint
 1e5:	00          	breakpoint
 1e6:	00          	breakpoint
 1e7:	15          	addsp 20
 1e8:	00          	breakpoint
 1e9:	05          	add
 1ea:	02          	pushsp
 1eb:	00          	breakpoint
 1ec:	00          	breakpoint
 1ed:	00          	breakpoint
 1ee:	00          	breakpoint
 1ef:	15          	addsp 20
 1f0:	00          	breakpoint
 1f1:	05          	add
 1f2:	02          	pushsp
 1f3:	00          	breakpoint
 1f4:	00          	breakpoint
 1f5:	00          	breakpoint
 1f6:	00          	breakpoint
 1f7:	1c          	addsp 48
 1f8:	00          	breakpoint
 1f9:	05          	add
 1fa:	02          	pushsp
 1fb:	00          	breakpoint
 1fc:	00          	breakpoint
 1fd:	00          	breakpoint
 1fe:	00          	breakpoint
 1ff:	10          	addsp 0
 200:	00          	breakpoint
 201:	05          	add
 202:	02          	pushsp
 203:	00          	breakpoint
 204:	00          	breakpoint
 205:	00          	breakpoint
 206:	00          	breakpoint
 207:	15          	addsp 20
 208:	00          	breakpoint
 209:	05          	add
 20a:	02          	pushsp
 20b:	00          	breakpoint
 20c:	00          	breakpoint
 20d:	00          	breakpoint
 20e:	00          	breakpoint
 20f:	15          	addsp 20
 210:	00          	breakpoint
 211:	05          	add
 212:	02          	pushsp
 213:	00          	breakpoint
 214:	00          	breakpoint
 215:	00          	breakpoint
 216:	00          	breakpoint
 217:	16          	addsp 24
 218:	00          	breakpoint
 219:	05          	add
 21a:	02          	pushsp
 21b:	00          	breakpoint
 21c:	00          	breakpoint
 21d:	00          	breakpoint
 21e:	00          	breakpoint
 21f:	03          	.byte 3
 220:	70          	loadsp 0
 221:	01          	.byte 1
 222:	00          	breakpoint
 223:	05          	add
 224:	02          	pushsp
 225:	00          	breakpoint
 226:	00          	breakpoint
 227:	00          	breakpoint
 228:	00          	breakpoint
 229:	15          	addsp 20
 22a:	00          	breakpoint
 22b:	05          	add
 22c:	02          	pushsp
 22d:	00          	breakpoint
 22e:	00          	breakpoint
 22f:	00          	breakpoint
 230:	00          	breakpoint
 231:	15          	addsp 20
 232:	00          	breakpoint
 233:	05          	add
 234:	02          	pushsp
 235:	00          	breakpoint
 236:	00          	breakpoint
 237:	00          	breakpoint
 238:	00          	breakpoint
 239:	22          	loadh
 23a:	00          	breakpoint
 23b:	05          	add
 23c:	02          	pushsp
 23d:	00          	breakpoint
 23e:	00          	breakpoint
 23f:	00          	breakpoint
 240:	00          	breakpoint
 241:	00          	breakpoint
 242:	01          	.byte 1
 243:	01          	.byte 1
 244:	00          	breakpoint
 245:	05          	add
 246:	02          	pushsp
 247:	00          	breakpoint
 248:	00          	breakpoint
 249:	00          	breakpoint
 24a:	00          	breakpoint
 24b:	04          	poppc
 24c:	0b          	nop
 24d:	63          	loadsp 76
 24e:	00          	breakpoint
 24f:	05          	add
 250:	02          	pushsp
 251:	00          	breakpoint
 252:	00          	breakpoint
 253:	00          	breakpoint
 254:	00          	breakpoint
 255:	18          	addsp 32
 256:	00          	breakpoint
 257:	05          	add
 258:	02          	pushsp
 259:	00          	breakpoint
 25a:	00          	breakpoint
 25b:	00          	breakpoint
 25c:	00          	breakpoint
 25d:	15          	addsp 20
 25e:	00          	breakpoint
 25f:	05          	add
 260:	02          	pushsp
 261:	00          	breakpoint
 262:	00          	breakpoint
 263:	00          	breakpoint
 264:	00          	breakpoint
 265:	15          	addsp 20
 266:	00          	breakpoint
 267:	05          	add
 268:	02          	pushsp
 269:	00          	breakpoint
 26a:	00          	breakpoint
 26b:	00          	breakpoint
 26c:	00          	breakpoint
 26d:	16          	addsp 24
 26e:	00          	breakpoint
 26f:	05          	add
 270:	02          	pushsp
 271:	00          	breakpoint
 272:	00          	breakpoint
 273:	00          	breakpoint
 274:	00          	breakpoint
 275:	12          	addsp 8
 276:	00          	breakpoint
 277:	05          	add
 278:	02          	pushsp
 279:	00          	breakpoint
 27a:	00          	breakpoint
 27b:	00          	breakpoint
 27c:	00          	breakpoint
 27d:	18          	addsp 32
 27e:	00          	breakpoint
 27f:	05          	add
 280:	02          	pushsp
 281:	00          	breakpoint
 282:	00          	breakpoint
 283:	00          	breakpoint
 284:	00          	breakpoint
 285:	15          	addsp 20
 286:	00          	breakpoint
 287:	05          	add
 288:	02          	pushsp
 289:	00          	breakpoint
 28a:	00          	breakpoint
 28b:	00          	breakpoint
 28c:	00          	breakpoint
 28d:	00          	breakpoint
 28e:	01          	.byte 1
 28f:	01          	.byte 1
 290:	00          	breakpoint
 291:	00          	breakpoint
 292:	00          	breakpoint
 293:	16          	addsp 24
 294:	00          	breakpoint
 295:	02          	pushsp
 296:	00          	breakpoint
 297:	00          	breakpoint
 298:	00          	breakpoint
 299:	10          	addsp 0
 29a:	01          	.byte 1
 29b:	01          	.byte 1
 29c:	fb          	im -5
 29d:	0e          	.byte 14
 29e:	0a          	flip
 29f:	00          	breakpoint
 2a0:	01          	.byte 1
 2a1:	01          	.byte 1
 2a2:	01          	.byte 1
 2a3:	01          	.byte 1
 2a4:	00          	breakpoint
 2a5:	00          	breakpoint
 2a6:	00          	breakpoint
 2a7:	01          	.byte 1
	...

000002aa <.Ldebug_line0>:
 2aa:	00          	breakpoint
 2ab:	00          	breakpoint
 2ac:	01          	.byte 1
 2ad:	33          	loadb
 2ae:	00          	breakpoint
 2af:	02          	pushsp
 2b0:	00          	breakpoint
 2b1:	00          	breakpoint
 2b2:	00          	breakpoint
 2b3:	97          	im 23
 2b4:	01          	.byte 1
 2b5:	01          	.byte 1
 2b6:	f6          	im -10
 2b7:	f5          	im -11
 2b8:	0a          	flip
 2b9:	00          	breakpoint
 2ba:	01          	.byte 1
 2bb:	01          	.byte 1
 2bc:	01          	.byte 1
 2bd:	01          	.byte 1
 2be:	00          	breakpoint
 2bf:	00          	breakpoint
 2c0:	00          	breakpoint
 2c1:	01          	.byte 1
 2c2:	2e          	eq
 2c3:	2e          	eq
 2c4:	2f          	neq
 2c5:	2e          	eq
 2c6:	2e          	eq
 2c7:	2f          	neq
 2c8:	2e          	eq
 2c9:	2e          	eq
 2ca:	2f          	neq
 2cb:	2e          	eq
 2cc:	2e          	eq
 2cd:	2f          	neq
 2ce:	2e          	eq
 2cf:	2e          	eq
 2d0:	2f          	neq
 2d1:	2e          	eq
 2d2:	2e          	eq
 2d3:	2f          	neq
 2d4:	67          	loadsp 92
 2d5:	63          	loadsp 76
 2d6:	63          	loadsp 76
 2d7:	2f          	neq
 2d8:	6e          	loadsp 120
 2d9:	65          	loadsp 84
 2da:	77          	loadsp 28
 2db:	6c          	loadsp 112
 2dc:	69          	loadsp 100
 2dd:	62          	loadsp 72
 2de:	2f          	neq
 2df:	6c          	loadsp 112
 2e0:	69          	loadsp 100
 2e1:	62          	loadsp 72
 2e2:	63          	loadsp 76
 2e3:	2f          	neq
 2e4:	73          	loadsp 12
 2e5:	74          	loadsp 16
 2e6:	72          	loadsp 8
 2e7:	69          	loadsp 100
 2e8:	6e          	loadsp 120
 2e9:	67          	loadsp 92
 2ea:	00          	breakpoint
 2eb:	2f          	neq
 2ec:	68          	loadsp 96
 2ed:	6f          	loadsp 124
 2ee:	6d          	loadsp 116
 2ef:	65          	loadsp 84
 2f0:	2f          	neq
 2f1:	61          	loadsp 68
 2f2:	6c          	loadsp 112
 2f3:	76          	loadsp 24
 2f4:	69          	loadsp 100
 2f5:	65          	loadsp 84
 2f6:	62          	loadsp 72
 2f7:	6f          	loadsp 124
 2f8:	79          	loadsp 36
 2f9:	2f          	neq
 2fa:	7a          	loadsp 40
 2fb:	70          	loadsp 0
 2fc:	75          	loadsp 20
 2fd:	2f          	neq
 2fe:	74          	loadsp 16
 2ff:	6f          	loadsp 124
 300:	6f          	loadsp 124
 301:	6c          	loadsp 112
 302:	63          	loadsp 76
 303:	68          	loadsp 96
 304:	61          	loadsp 68
 305:	69          	loadsp 100
 306:	6e          	loadsp 120
 307:	2f          	neq
 308:	74          	loadsp 16
 309:	6f          	loadsp 124
 30a:	6f          	loadsp 124
 30b:	6c          	loadsp 112
 30c:	63          	loadsp 76
 30d:	68          	loadsp 96
 30e:	61          	loadsp 68
 30f:	69          	loadsp 100
 310:	6e          	loadsp 120
 311:	2f          	neq
 312:	74          	loadsp 16
 313:	6f          	loadsp 124
 314:	6f          	loadsp 124
 315:	6c          	loadsp 112
 316:	63          	loadsp 76
 317:	68          	loadsp 96
 318:	61          	loadsp 68
 319:	69          	loadsp 100
 31a:	6e          	loadsp 120
 31b:	2f          	neq
 31c:	67          	loadsp 92
 31d:	63          	loadsp 76
 31e:	63          	loadsp 76
 31f:	62          	loadsp 72
 320:	75          	loadsp 20
 321:	69          	loadsp 100
 322:	6c          	loadsp 112
 323:	64          	loadsp 80
 324:	2f          	neq
 325:	67          	loadsp 92
 326:	63          	loadsp 76
 327:	63          	loadsp 76
 328:	2f          	neq
 329:	69          	loadsp 100
 32a:	6e          	loadsp 120
 32b:	63          	loadsp 76
 32c:	6c          	loadsp 112
 32d:	75          	loadsp 20
 32e:	64          	loadsp 80
 32f:	65          	loadsp 84
 330:	00          	breakpoint
 331:	00          	breakpoint
 332:	73          	loadsp 12
 333:	74          	loadsp 16
 334:	64          	loadsp 80
 335:	64          	loadsp 80
 336:	65          	loadsp 84
 337:	66          	loadsp 88
 338:	2e          	eq
 339:	68          	loadsp 96
 33a:	00          	breakpoint
 33b:	02          	pushsp
 33c:	00          	breakpoint
 33d:	00          	breakpoint
 33e:	6d          	loadsp 116
 33f:	65          	loadsp 84
 340:	6d          	loadsp 116
 341:	63          	loadsp 76
 342:	70          	loadsp 0
 343:	79          	loadsp 36
 344:	2e          	eq
 345:	63          	loadsp 76
 346:	00          	breakpoint
 347:	01          	.byte 1
 348:	00          	breakpoint
 349:	00          	breakpoint
 34a:	00          	breakpoint
 34b:	00          	breakpoint
 34c:	05          	add
 34d:	02          	pushsp
 34e:	00          	breakpoint
 34f:	00          	breakpoint
 350:	0c          	store
 351:	f3          	im -13
 352:	04          	poppc
 353:	02          	pushsp
 354:	4c          	storesp 112
 355:	00          	breakpoint
 356:	05          	add
 357:	02          	pushsp
 358:	00          	breakpoint
 359:	00          	breakpoint
 35a:	0c          	store
 35b:	f7          	im -9
 35c:	22          	loadh
 35d:	00          	breakpoint
 35e:	05          	add
 35f:	02          	pushsp
 360:	00          	breakpoint
 361:	00          	breakpoint
 362:	0c          	store
 363:	f8          	im -8
 364:	15          	addsp 20
 365:	00          	breakpoint
 366:	05          	add
 367:	02          	pushsp
 368:	00          	breakpoint
 369:	00          	breakpoint
 36a:	0c          	store
 36b:	f9          	im -7
 36c:	17          	addsp 28
 36d:	00          	breakpoint
 36e:	05          	add
 36f:	02          	pushsp
 370:	00          	breakpoint
 371:	00          	breakpoint
 372:	0c          	store
 373:	fe          	im -2
 374:	18          	addsp 32
 375:	00          	breakpoint
 376:	05          	add
 377:	02          	pushsp
 378:	00          	breakpoint
 379:	00          	breakpoint
 37a:	0d          	popsp
 37b:	0e          	.byte 14
 37c:	30          	neg
 37d:	00          	breakpoint
 37e:	05          	add
 37f:	02          	pushsp
 380:	00          	breakpoint
 381:	00          	breakpoint
 382:	0d          	popsp
 383:	2d          	call
 384:	18          	addsp 32
 385:	00          	breakpoint
 386:	05          	add
 387:	02          	pushsp
 388:	00          	breakpoint
 389:	00          	breakpoint
 38a:	0d          	popsp
 38b:	34          	storeb
 38c:	03          	.byte 3
 38d:	62          	loadsp 72
 38e:	01          	.byte 1
 38f:	00          	breakpoint
 390:	05          	add
 391:	02          	pushsp
 392:	00          	breakpoint
 393:	00          	breakpoint
 394:	0d          	popsp
 395:	36          	mod
 396:	1a          	addsp 40
 397:	00          	breakpoint
 398:	05          	add
 399:	02          	pushsp
 39a:	00          	breakpoint
 39b:	00          	breakpoint
 39c:	0d          	popsp
 39d:	42          	storesp 72
 39e:	15          	addsp 20
 39f:	00          	breakpoint
 3a0:	05          	add
 3a1:	02          	pushsp
 3a2:	00          	breakpoint
 3a3:	00          	breakpoint
 3a4:	0d          	popsp
 3a5:	4e          	storesp 120
 3a6:	15          	addsp 20
 3a7:	00          	breakpoint
 3a8:	05          	add
 3a9:	02          	pushsp
 3aa:	00          	breakpoint
 3ab:	00          	breakpoint
 3ac:	0d          	popsp
 3ad:	5a          	storesp 40
 3ae:	15          	addsp 20
 3af:	00          	breakpoint
 3b0:	05          	add
 3b1:	02          	pushsp
 3b2:	00          	breakpoint
 3b3:	00          	breakpoint
 3b4:	0d          	popsp
 3b5:	66          	loadsp 88
 3b6:	15          	addsp 20
 3b7:	00          	breakpoint
 3b8:	05          	add
 3b9:	02          	pushsp
 3ba:	00          	breakpoint
 3bb:	00          	breakpoint
 3bc:	0d          	popsp
 3bd:	6e          	loadsp 120
 3be:	1b          	addsp 44
 3bf:	00          	breakpoint
 3c0:	05          	add
 3c1:	02          	pushsp
 3c2:	00          	breakpoint
 3c3:	00          	breakpoint
 3c4:	0d          	popsp
 3c5:	73          	loadsp 12
 3c6:	13          	addsp 12
 3c7:	00          	breakpoint
 3c8:	05          	add
 3c9:	02          	pushsp
 3ca:	00          	breakpoint
 3cb:	00          	breakpoint
 3cc:	0d          	popsp
 3cd:	7f          	loadsp 60
 3ce:	15          	addsp 20
 3cf:	00          	breakpoint
 3d0:	05          	add
 3d1:	02          	pushsp
 3d2:	00          	breakpoint
 3d3:	00          	breakpoint
 3d4:	0d          	popsp
 3d5:	87          	im 7
 3d6:	18          	addsp 32
 3d7:	00          	breakpoint
 3d8:	05          	add
 3d9:	02          	pushsp
 3da:	00          	breakpoint
 3db:	00          	breakpoint
 3dc:	0d          	popsp
 3dd:	8c          	im 12
 3de:	00          	breakpoint
 3df:	01          	.byte 1
 3e0:	01          	.byte 1
 3e1:	00          	breakpoint
 3e2:	00          	breakpoint
 3e3:	00          	breakpoint
 3e4:	16          	addsp 24
 3e5:	00          	breakpoint
 3e6:	02          	pushsp
 3e7:	00          	breakpoint
 3e8:	00          	breakpoint
 3e9:	00          	breakpoint
 3ea:	10          	addsp 0
 3eb:	01          	.byte 1
 3ec:	01          	.byte 1
 3ed:	fb          	im -5
 3ee:	0e          	.byte 14
 3ef:	0a          	flip
 3f0:	00          	breakpoint
 3f1:	01          	.byte 1
 3f2:	01          	.byte 1
 3f3:	01          	.byte 1
 3f4:	01          	.byte 1
 3f5:	00          	breakpoint
 3f6:	00          	breakpoint
 3f7:	00          	breakpoint
 3f8:	01          	.byte 1
	...

000003fb <.Ldebug_line0>:
 3fb:	00          	breakpoint
 3fc:	00          	breakpoint
 3fd:	01          	.byte 1
 3fe:	a7          	im 39
 3ff:	00          	breakpoint
 400:	02          	pushsp
 401:	00          	breakpoint
 402:	00          	breakpoint
 403:	00          	breakpoint
 404:	fb          	im -5
 405:	01          	.byte 1
 406:	01          	.byte 1
 407:	f6          	im -10
 408:	f5          	im -11
 409:	0a          	flip
 40a:	00          	breakpoint
 40b:	01          	.byte 1
 40c:	01          	.byte 1
 40d:	01          	.byte 1
 40e:	01          	.byte 1
 40f:	00          	breakpoint
 410:	00          	breakpoint
 411:	00          	breakpoint
 412:	01          	.byte 1
 413:	2e          	eq
 414:	2e          	eq
 415:	2f          	neq
 416:	2e          	eq
 417:	2e          	eq
 418:	2f          	neq
 419:	2e          	eq
 41a:	2e          	eq
 41b:	2f          	neq
 41c:	2e          	eq
 41d:	2e          	eq
 41e:	2f          	neq
 41f:	2e          	eq
 420:	2e          	eq
 421:	2f          	neq
 422:	2e          	eq
 423:	2e          	eq
 424:	2f          	neq
 425:	67          	loadsp 92
 426:	63          	loadsp 76
 427:	63          	loadsp 76
 428:	2f          	neq
 429:	6e          	loadsp 120
 42a:	65          	loadsp 84
 42b:	77          	loadsp 28
 42c:	6c          	loadsp 112
 42d:	69          	loadsp 100
 42e:	62          	loadsp 72
 42f:	2f          	neq
 430:	6c          	loadsp 112
 431:	69          	loadsp 100
 432:	62          	loadsp 72
 433:	63          	loadsp 76
 434:	2f          	neq
 435:	73          	loadsp 12
 436:	74          	loadsp 16
 437:	72          	loadsp 8
 438:	69          	loadsp 100
 439:	6e          	loadsp 120
 43a:	67          	loadsp 92
 43b:	00          	breakpoint
 43c:	2f          	neq
 43d:	68          	loadsp 96
 43e:	6f          	loadsp 124
 43f:	6d          	loadsp 116
 440:	65          	loadsp 84
 441:	2f          	neq
 442:	61          	loadsp 68
 443:	6c          	loadsp 112
 444:	76          	loadsp 24
 445:	69          	loadsp 100
 446:	65          	loadsp 84
 447:	62          	loadsp 72
 448:	6f          	loadsp 124
 449:	79          	loadsp 36
 44a:	2f          	neq
 44b:	7a          	loadsp 40
 44c:	70          	loadsp 0
 44d:	75          	loadsp 20
 44e:	2f          	neq
 44f:	74          	loadsp 16
 450:	6f          	loadsp 124
 451:	6f          	loadsp 124
 452:	6c          	loadsp 112
 453:	63          	loadsp 76
 454:	68          	loadsp 96
 455:	61          	loadsp 68
 456:	69          	loadsp 100
 457:	6e          	loadsp 120
 458:	2f          	neq
 459:	74          	loadsp 16
 45a:	6f          	loadsp 124
 45b:	6f          	loadsp 124
 45c:	6c          	loadsp 112
 45d:	63          	loadsp 76
 45e:	68          	loadsp 96
 45f:	61          	loadsp 68
 460:	69          	loadsp 100
 461:	6e          	loadsp 120
 462:	2f          	neq
 463:	74          	loadsp 16
 464:	6f          	loadsp 124
 465:	6f          	loadsp 124
 466:	6c          	loadsp 112
 467:	63          	loadsp 76
 468:	68          	loadsp 96
 469:	61          	loadsp 68
 46a:	69          	loadsp 100
 46b:	6e          	loadsp 120
 46c:	2f          	neq
 46d:	67          	loadsp 92
 46e:	63          	loadsp 76
 46f:	63          	loadsp 76
 470:	2f          	neq
 471:	6e          	loadsp 120
 472:	65          	loadsp 84
 473:	77          	loadsp 28
 474:	6c          	loadsp 112
 475:	69          	loadsp 100
 476:	62          	loadsp 72
 477:	2f          	neq
 478:	6c          	loadsp 112
 479:	69          	loadsp 100
 47a:	62          	loadsp 72
 47b:	63          	loadsp 76
 47c:	2f          	neq
 47d:	69          	loadsp 100
 47e:	6e          	loadsp 120
 47f:	63          	loadsp 76
 480:	6c          	loadsp 112
 481:	75          	loadsp 20
 482:	64          	loadsp 80
 483:	65          	loadsp 84
 484:	2f          	neq
 485:	73          	loadsp 12
 486:	79          	loadsp 36
 487:	73          	loadsp 12
 488:	00          	breakpoint
 489:	2f          	neq
 48a:	68          	loadsp 96
 48b:	6f          	loadsp 124
 48c:	6d          	loadsp 116
 48d:	65          	loadsp 84
 48e:	2f          	neq
 48f:	61          	loadsp 68
 490:	6c          	loadsp 112
 491:	76          	loadsp 24
 492:	69          	loadsp 100
 493:	65          	loadsp 84
 494:	62          	loadsp 72
 495:	6f          	loadsp 124
 496:	79          	loadsp 36
 497:	2f          	neq
 498:	7a          	loadsp 40
 499:	70          	loadsp 0
 49a:	75          	loadsp 20
 49b:	2f          	neq
 49c:	74          	loadsp 16
 49d:	6f          	loadsp 124
 49e:	6f          	loadsp 124
 49f:	6c          	loadsp 112
 4a0:	63          	loadsp 76
 4a1:	68          	loadsp 96
 4a2:	61          	loadsp 68
 4a3:	69          	loadsp 100
 4a4:	6e          	loadsp 120
 4a5:	2f          	neq
 4a6:	74          	loadsp 16
 4a7:	6f          	loadsp 124
 4a8:	6f          	loadsp 124
 4a9:	6c          	loadsp 112
 4aa:	63          	loadsp 76
 4ab:	68          	loadsp 96
 4ac:	61          	loadsp 68
 4ad:	69          	loadsp 100
 4ae:	6e          	loadsp 120
 4af:	2f          	neq
 4b0:	74          	loadsp 16
 4b1:	6f          	loadsp 124
 4b2:	6f          	loadsp 124
 4b3:	6c          	loadsp 112
 4b4:	63          	loadsp 76
 4b5:	68          	loadsp 96
 4b6:	61          	loadsp 68
 4b7:	69          	loadsp 100
 4b8:	6e          	loadsp 120
 4b9:	2f          	neq
 4ba:	67          	loadsp 92
 4bb:	63          	loadsp 76
 4bc:	63          	loadsp 76
 4bd:	62          	loadsp 72
 4be:	75          	loadsp 20
 4bf:	69          	loadsp 100
 4c0:	6c          	loadsp 112
 4c1:	64          	loadsp 80
 4c2:	2f          	neq
 4c3:	67          	loadsp 92
 4c4:	63          	loadsp 76
 4c5:	63          	loadsp 76
 4c6:	2f          	neq
 4c7:	69          	loadsp 100
 4c8:	6e          	loadsp 120
 4c9:	63          	loadsp 76
 4ca:	6c          	loadsp 112
 4cb:	75          	loadsp 20
 4cc:	64          	loadsp 80
 4cd:	65          	loadsp 84
 4ce:	00          	breakpoint
 4cf:	00          	breakpoint
 4d0:	5f          	storesp 60
 4d1:	74          	loadsp 16
 4d2:	79          	loadsp 36
 4d3:	70          	loadsp 0
 4d4:	65          	loadsp 84
 4d5:	73          	loadsp 12
 4d6:	2e          	eq
 4d7:	68          	loadsp 96
 4d8:	00          	breakpoint
 4d9:	02          	pushsp
 4da:	00          	breakpoint
 4db:	00          	breakpoint
 4dc:	73          	loadsp 12
 4dd:	74          	loadsp 16
 4de:	64          	loadsp 80
 4df:	64          	loadsp 80
 4e0:	65          	loadsp 84
 4e1:	66          	loadsp 88
 4e2:	2e          	eq
 4e3:	68          	loadsp 96
 4e4:	00          	breakpoint
 4e5:	03          	.byte 3
 4e6:	00          	breakpoint
 4e7:	00          	breakpoint
 4e8:	72          	loadsp 8
 4e9:	65          	loadsp 84
 4ea:	65          	loadsp 84
 4eb:	6e          	loadsp 120
 4ec:	74          	loadsp 16
 4ed:	2e          	eq
 4ee:	68          	loadsp 96
 4ef:	00          	breakpoint
 4f0:	02          	pushsp
 4f1:	00          	breakpoint
 4f2:	00          	breakpoint
 4f3:	6d          	loadsp 116
 4f4:	65          	loadsp 84
 4f5:	6d          	loadsp 116
 4f6:	73          	loadsp 12
 4f7:	65          	loadsp 84
 4f8:	74          	loadsp 16
 4f9:	2e          	eq
 4fa:	63          	loadsp 76
 4fb:	00          	breakpoint
 4fc:	01          	.byte 1
 4fd:	00          	breakpoint
 4fe:	00          	breakpoint
 4ff:	00          	breakpoint
 500:	00          	breakpoint
 501:	05          	add
 502:	02          	pushsp
 503:	00          	breakpoint
 504:	00          	breakpoint
 505:	0d          	popsp
 506:	8c          	im 12
 507:	04          	poppc
 508:	04          	poppc
 509:	42          	storesp 72
 50a:	00          	breakpoint
 50b:	05          	add
 50c:	02          	pushsp
 50d:	00          	breakpoint
 50e:	00          	breakpoint
 50f:	0d          	popsp
 510:	91          	im 17
 511:	1f          	addsp 60
 512:	00          	breakpoint
 513:	05          	add
 514:	02          	pushsp
 515:	00          	breakpoint
 516:	00          	breakpoint
 517:	0d          	popsp
 518:	92          	im 18
 519:	18          	addsp 32
 51a:	00          	breakpoint
 51b:	05          	add
 51c:	02          	pushsp
 51d:	00          	breakpoint
 51e:	00          	breakpoint
 51f:	0d          	popsp
 520:	9c          	im 28
 521:	17          	addsp 28
 522:	00          	breakpoint
 523:	05          	add
 524:	02          	pushsp
 525:	00          	breakpoint
 526:	00          	breakpoint
 527:	0d          	popsp
 528:	aa          	im 42
 529:	3b          	pushpc
 52a:	00          	breakpoint
 52b:	05          	add
 52c:	02          	pushsp
 52d:	00          	breakpoint
 52e:	00          	breakpoint
 52f:	0d          	popsp
 530:	c4          	im -60
 531:	19          	addsp 36
 532:	00          	breakpoint
 533:	05          	add
 534:	02          	pushsp
 535:	00          	breakpoint
 536:	00          	breakpoint
 537:	0d          	popsp
 538:	cb          	im -53
 539:	03          	.byte 3
 53a:	57          	storesp 28
 53b:	01          	.byte 1
 53c:	00          	breakpoint
 53d:	05          	add
 53e:	02          	pushsp
 53f:	00          	breakpoint
 540:	00          	breakpoint
 541:	0d          	popsp
 542:	cc          	im -52
 543:	1a          	addsp 40
 544:	00          	breakpoint
 545:	05          	add
 546:	02          	pushsp
 547:	00          	breakpoint
 548:	00          	breakpoint
 549:	0d          	popsp
 54a:	d1          	im -47
 54b:	15          	addsp 20
 54c:	00          	breakpoint
 54d:	05          	add
 54e:	02          	pushsp
 54f:	00          	breakpoint
 550:	00          	breakpoint
 551:	0d          	popsp
 552:	d9          	im -39
 553:	23          	storeh
 554:	00          	breakpoint
 555:	05          	add
 556:	02          	pushsp
 557:	00          	breakpoint
 558:	00          	breakpoint
 559:	0d          	popsp
 55a:	de          	im -34
 55b:	10          	addsp 0
 55c:	00          	breakpoint
 55d:	05          	add
 55e:	02          	pushsp
 55f:	00          	breakpoint
 560:	00          	breakpoint
 561:	0d          	popsp
 562:	e5          	im -27
 563:	15          	addsp 20
 564:	00          	breakpoint
 565:	05          	add
 566:	02          	pushsp
 567:	00          	breakpoint
 568:	00          	breakpoint
 569:	0d          	popsp
 56a:	ec          	im -20
 56b:	15          	addsp 20
 56c:	00          	breakpoint
 56d:	05          	add
 56e:	02          	pushsp
 56f:	00          	breakpoint
 570:	00          	breakpoint
 571:	0d          	popsp
 572:	f3          	im -13
 573:	15          	addsp 20
 574:	00          	breakpoint
 575:	05          	add
 576:	02          	pushsp
 577:	00          	breakpoint
 578:	00          	breakpoint
 579:	0d          	popsp
 57a:	fa          	im -6
 57b:	15          	addsp 20
 57c:	00          	breakpoint
 57d:	05          	add
 57e:	02          	pushsp
 57f:	00          	breakpoint
 580:	00          	breakpoint
 581:	0e          	.byte 14
 582:	02          	pushsp
 583:	1a          	addsp 40
 584:	00          	breakpoint
 585:	05          	add
 586:	02          	pushsp
 587:	00          	breakpoint
 588:	00          	breakpoint
 589:	0e          	.byte 14
 58a:	07          	or
 58b:	13          	addsp 12
 58c:	00          	breakpoint
 58d:	05          	add
 58e:	02          	pushsp
 58f:	00          	breakpoint
 590:	00          	breakpoint
 591:	0e          	.byte 14
 592:	0e          	.byte 14
 593:	15          	addsp 20
 594:	00          	breakpoint
 595:	05          	add
 596:	02          	pushsp
 597:	00          	breakpoint
 598:	00          	breakpoint
 599:	0e          	.byte 14
 59a:	16          	addsp 24
 59b:	17          	addsp 28
 59c:	00          	breakpoint
 59d:	05          	add
 59e:	02          	pushsp
 59f:	00          	breakpoint
 5a0:	00          	breakpoint
 5a1:	0e          	.byte 14
 5a2:	1b          	addsp 44
 5a3:	00          	breakpoint
 5a4:	01          	.byte 1
 5a5:	01          	.byte 1
 5a6:	00          	breakpoint
 5a7:	00          	breakpoint
 5a8:	00          	breakpoint
 5a9:	16          	addsp 24
 5aa:	00          	breakpoint
 5ab:	02          	pushsp
 5ac:	00          	breakpoint
 5ad:	00          	breakpoint
 5ae:	00          	breakpoint
 5af:	10          	addsp 0
 5b0:	01          	.byte 1
 5b1:	01          	.byte 1
 5b2:	fb          	im -5
 5b3:	0e          	.byte 14
 5b4:	0a          	flip
 5b5:	00          	breakpoint
 5b6:	01          	.byte 1
 5b7:	01          	.byte 1
 5b8:	01          	.byte 1
 5b9:	01          	.byte 1
 5ba:	00          	breakpoint
 5bb:	00          	breakpoint
 5bc:	00          	breakpoint
 5bd:	01          	.byte 1
	...

000005c0 <.Ldebug_line0>:
 5c0:	00          	breakpoint
 5c1:	00          	breakpoint
 5c2:	01          	.byte 1
 5c3:	a7          	im 39
 5c4:	00          	breakpoint
 5c5:	02          	pushsp
 5c6:	00          	breakpoint
 5c7:	00          	breakpoint
 5c8:	00          	breakpoint
 5c9:	fb          	im -5
 5ca:	01          	.byte 1
 5cb:	01          	.byte 1
 5cc:	f6          	im -10
 5cd:	f5          	im -11
 5ce:	0a          	flip
 5cf:	00          	breakpoint
 5d0:	01          	.byte 1
 5d1:	01          	.byte 1
 5d2:	01          	.byte 1
 5d3:	01          	.byte 1
 5d4:	00          	breakpoint
 5d5:	00          	breakpoint
 5d6:	00          	breakpoint
 5d7:	01          	.byte 1
 5d8:	2e          	eq
 5d9:	2e          	eq
 5da:	2f          	neq
 5db:	2e          	eq
 5dc:	2e          	eq
 5dd:	2f          	neq
 5de:	2e          	eq
 5df:	2e          	eq
 5e0:	2f          	neq
 5e1:	2e          	eq
 5e2:	2e          	eq
 5e3:	2f          	neq
 5e4:	2e          	eq
 5e5:	2e          	eq
 5e6:	2f          	neq
 5e7:	2e          	eq
 5e8:	2e          	eq
 5e9:	2f          	neq
 5ea:	67          	loadsp 92
 5eb:	63          	loadsp 76
 5ec:	63          	loadsp 76
 5ed:	2f          	neq
 5ee:	6e          	loadsp 120
 5ef:	65          	loadsp 84
 5f0:	77          	loadsp 28
 5f1:	6c          	loadsp 112
 5f2:	69          	loadsp 100
 5f3:	62          	loadsp 72
 5f4:	2f          	neq
 5f5:	6c          	loadsp 112
 5f6:	69          	loadsp 100
 5f7:	62          	loadsp 72
 5f8:	63          	loadsp 76
 5f9:	2f          	neq
 5fa:	73          	loadsp 12
 5fb:	74          	loadsp 16
 5fc:	72          	loadsp 8
 5fd:	69          	loadsp 100
 5fe:	6e          	loadsp 120
 5ff:	67          	loadsp 92
 600:	00          	breakpoint
 601:	2f          	neq
 602:	68          	loadsp 96
 603:	6f          	loadsp 124
 604:	6d          	loadsp 116
 605:	65          	loadsp 84
 606:	2f          	neq
 607:	61          	loadsp 68
 608:	6c          	loadsp 112
 609:	76          	loadsp 24
 60a:	69          	loadsp 100
 60b:	65          	loadsp 84
 60c:	62          	loadsp 72
 60d:	6f          	loadsp 124
 60e:	79          	loadsp 36
 60f:	2f          	neq
 610:	7a          	loadsp 40
 611:	70          	loadsp 0
 612:	75          	loadsp 20
 613:	2f          	neq
 614:	74          	loadsp 16
 615:	6f          	loadsp 124
 616:	6f          	loadsp 124
 617:	6c          	loadsp 112
 618:	63          	loadsp 76
 619:	68          	loadsp 96
 61a:	61          	loadsp 68
 61b:	69          	loadsp 100
 61c:	6e          	loadsp 120
 61d:	2f          	neq
 61e:	74          	loadsp 16
 61f:	6f          	loadsp 124
 620:	6f          	loadsp 124
 621:	6c          	loadsp 112
 622:	63          	loadsp 76
 623:	68          	loadsp 96
 624:	61          	loadsp 68
 625:	69          	loadsp 100
 626:	6e          	loadsp 120
 627:	2f          	neq
 628:	74          	loadsp 16
 629:	6f          	loadsp 124
 62a:	6f          	loadsp 124
 62b:	6c          	loadsp 112
 62c:	63          	loadsp 76
 62d:	68          	loadsp 96
 62e:	61          	loadsp 68
 62f:	69          	loadsp 100
 630:	6e          	loadsp 120
 631:	2f          	neq
 632:	67          	loadsp 92
 633:	63          	loadsp 76
 634:	63          	loadsp 76
 635:	2f          	neq
 636:	6e          	loadsp 120
 637:	65          	loadsp 84
 638:	77          	loadsp 28
 639:	6c          	loadsp 112
 63a:	69          	loadsp 100
 63b:	62          	loadsp 72
 63c:	2f          	neq
 63d:	6c          	loadsp 112
 63e:	69          	loadsp 100
 63f:	62          	loadsp 72
 640:	63          	loadsp 76
 641:	2f          	neq
 642:	69          	loadsp 100
 643:	6e          	loadsp 120
 644:	63          	loadsp 76
 645:	6c          	loadsp 112
 646:	75          	loadsp 20
 647:	64          	loadsp 80
 648:	65          	loadsp 84
 649:	2f          	neq
 64a:	73          	loadsp 12
 64b:	79          	loadsp 36
 64c:	73          	loadsp 12
 64d:	00          	breakpoint
 64e:	2f          	neq
 64f:	68          	loadsp 96
 650:	6f          	loadsp 124
 651:	6d          	loadsp 116
 652:	65          	loadsp 84
 653:	2f          	neq
 654:	61          	loadsp 68
 655:	6c          	loadsp 112
 656:	76          	loadsp 24
 657:	69          	loadsp 100
 658:	65          	loadsp 84
 659:	62          	loadsp 72
 65a:	6f          	loadsp 124
 65b:	79          	loadsp 36
 65c:	2f          	neq
 65d:	7a          	loadsp 40
 65e:	70          	loadsp 0
 65f:	75          	loadsp 20
 660:	2f          	neq
 661:	74          	loadsp 16
 662:	6f          	loadsp 124
 663:	6f          	loadsp 124
 664:	6c          	loadsp 112
 665:	63          	loadsp 76
 666:	68          	loadsp 96
 667:	61          	loadsp 68
 668:	69          	loadsp 100
 669:	6e          	loadsp 120
 66a:	2f          	neq
 66b:	74          	loadsp 16
 66c:	6f          	loadsp 124
 66d:	6f          	loadsp 124
 66e:	6c          	loadsp 112
 66f:	63          	loadsp 76
 670:	68          	loadsp 96
 671:	61          	loadsp 68
 672:	69          	loadsp 100
 673:	6e          	loadsp 120
 674:	2f          	neq
 675:	74          	loadsp 16
 676:	6f          	loadsp 124
 677:	6f          	loadsp 124
 678:	6c          	loadsp 112
 679:	63          	loadsp 76
 67a:	68          	loadsp 96
 67b:	61          	loadsp 68
 67c:	69          	loadsp 100
 67d:	6e          	loadsp 120
 67e:	2f          	neq
 67f:	67          	loadsp 92
 680:	63          	loadsp 76
 681:	63          	loadsp 76
 682:	62          	loadsp 72
 683:	75          	loadsp 20
 684:	69          	loadsp 100
 685:	6c          	loadsp 112
 686:	64          	loadsp 80
 687:	2f          	neq
 688:	67          	loadsp 92
 689:	63          	loadsp 76
 68a:	63          	loadsp 76
 68b:	2f          	neq
 68c:	69          	loadsp 100
 68d:	6e          	loadsp 120
 68e:	63          	loadsp 76
 68f:	6c          	loadsp 112
 690:	75          	loadsp 20
 691:	64          	loadsp 80
 692:	65          	loadsp 84
 693:	00          	breakpoint
 694:	00          	breakpoint
 695:	5f          	storesp 60
 696:	74          	loadsp 16
 697:	79          	loadsp 36
 698:	70          	loadsp 0
 699:	65          	loadsp 84
 69a:	73          	loadsp 12
 69b:	2e          	eq
 69c:	68          	loadsp 96
 69d:	00          	breakpoint
 69e:	02          	pushsp
 69f:	00          	breakpoint
 6a0:	00          	breakpoint
 6a1:	73          	loadsp 12
 6a2:	74          	loadsp 16
 6a3:	64          	loadsp 80
 6a4:	64          	loadsp 80
 6a5:	65          	loadsp 84
 6a6:	66          	loadsp 88
 6a7:	2e          	eq
 6a8:	68          	loadsp 96
 6a9:	00          	breakpoint
 6aa:	03          	.byte 3
 6ab:	00          	breakpoint
 6ac:	00          	breakpoint
 6ad:	72          	loadsp 8
 6ae:	65          	loadsp 84
 6af:	65          	loadsp 84
 6b0:	6e          	loadsp 120
 6b1:	74          	loadsp 16
 6b2:	2e          	eq
 6b3:	68          	loadsp 96
 6b4:	00          	breakpoint
 6b5:	02          	pushsp
 6b6:	00          	breakpoint
 6b7:	00          	breakpoint
 6b8:	73          	loadsp 12
 6b9:	74          	loadsp 16
 6ba:	72          	loadsp 8
 6bb:	63          	loadsp 76
 6bc:	6d          	loadsp 116
 6bd:	70          	loadsp 0
 6be:	2e          	eq
 6bf:	63          	loadsp 76
 6c0:	00          	breakpoint
 6c1:	01          	.byte 1
 6c2:	00          	breakpoint
 6c3:	00          	breakpoint
 6c4:	00          	breakpoint
 6c5:	00          	breakpoint
 6c6:	05          	add
 6c7:	02          	pushsp
 6c8:	00          	breakpoint
 6c9:	00          	breakpoint
 6ca:	0e          	.byte 14
 6cb:	1b          	addsp 44
 6cc:	04          	poppc
 6cd:	04          	poppc
 6ce:	53          	storesp 12
 6cf:	00          	breakpoint
 6d0:	05          	add
 6d1:	02          	pushsp
 6d2:	00          	breakpoint
 6d3:	00          	breakpoint
 6d4:	0e          	.byte 14
 6d5:	20          	.byte 32
 6d6:	22          	loadh
 6d7:	00          	breakpoint
 6d8:	05          	add
 6d9:	02          	pushsp
 6da:	00          	breakpoint
 6db:	00          	breakpoint
 6dc:	0e          	.byte 14
 6dd:	2b          	ashiftleft
 6de:	17          	addsp 28
 6df:	00          	breakpoint
 6e0:	05          	add
 6e1:	02          	pushsp
 6e2:	00          	breakpoint
 6e3:	00          	breakpoint
 6e4:	0e          	.byte 14
 6e5:	2c          	ashiftright
 6e6:	15          	addsp 20
 6e7:	00          	breakpoint
 6e8:	05          	add
 6e9:	02          	pushsp
 6ea:	00          	breakpoint
 6eb:	00          	breakpoint
 6ec:	0e          	.byte 14
 6ed:	2d          	call
 6ee:	1d          	addsp 52
 6ef:	00          	breakpoint
 6f0:	05          	add
 6f1:	02          	pushsp
 6f2:	00          	breakpoint
 6f3:	00          	breakpoint
 6f4:	0e          	.byte 14
 6f5:	39          	poppcrel
 6f6:	18          	addsp 32
 6f7:	00          	breakpoint
 6f8:	05          	add
 6f9:	02          	pushsp
 6fa:	00          	breakpoint
 6fb:	00          	breakpoint
 6fc:	0e          	.byte 14
 6fd:	3a          	config
 6fe:	15          	addsp 20
 6ff:	00          	breakpoint
 700:	05          	add
 701:	02          	pushsp
 702:	00          	breakpoint
 703:	00          	breakpoint
 704:	0e          	.byte 14
 705:	3d          	pushspadd
 706:	1a          	addsp 40
 707:	00          	breakpoint
 708:	05          	add
 709:	02          	pushsp
 70a:	00          	breakpoint
 70b:	00          	breakpoint
 70c:	0e          	.byte 14
 70d:	55          	storesp 20
 70e:	13          	addsp 12
 70f:	00          	breakpoint
 710:	05          	add
 711:	02          	pushsp
 712:	00          	breakpoint
 713:	00          	breakpoint
 714:	0e          	.byte 14
 715:	57          	storesp 28
 716:	15          	addsp 20
 717:	00          	breakpoint
 718:	05          	add
 719:	02          	pushsp
 71a:	00          	breakpoint
 71b:	00          	breakpoint
 71c:	0e          	.byte 14
 71d:	69          	loadsp 100
 71e:	16          	addsp 24
 71f:	00          	breakpoint
 720:	05          	add
 721:	02          	pushsp
 722:	00          	breakpoint
 723:	00          	breakpoint
 724:	0e          	.byte 14
 725:	74          	loadsp 16
 726:	16          	addsp 24
 727:	00          	breakpoint
 728:	05          	add
 729:	02          	pushsp
 72a:	00          	breakpoint
 72b:	00          	breakpoint
 72c:	0e          	.byte 14
 72d:	7c          	loadsp 48
 72e:	03          	.byte 3
 72f:	6d          	loadsp 116
 730:	01          	.byte 1
 731:	00          	breakpoint
 732:	05          	add
 733:	02          	pushsp
 734:	00          	breakpoint
 735:	00          	breakpoint
 736:	0e          	.byte 14
 737:	92          	im 18
 738:	17          	addsp 28
 739:	00          	breakpoint
 73a:	05          	add
 73b:	02          	pushsp
 73c:	00          	breakpoint
 73d:	00          	breakpoint
 73e:	0e          	.byte 14
 73f:	94          	im 20
 740:	15          	addsp 20
 741:	00          	breakpoint
 742:	05          	add
 743:	02          	pushsp
 744:	00          	breakpoint
 745:	00          	breakpoint
 746:	0e          	.byte 14
 747:	a1          	im 33
 748:	18          	addsp 32
 749:	00          	breakpoint
 74a:	05          	add
 74b:	02          	pushsp
 74c:	00          	breakpoint
 74d:	00          	breakpoint
 74e:	0e          	.byte 14
 74f:	a2          	im 34
 750:	15          	addsp 20
 751:	00          	breakpoint
 752:	05          	add
 753:	02          	pushsp
 754:	00          	breakpoint
 755:	00          	breakpoint
 756:	0e          	.byte 14
 757:	a8          	im 40
 758:	0c          	store
 759:	00          	breakpoint
 75a:	05          	add
 75b:	02          	pushsp
 75c:	00          	breakpoint
 75d:	00          	breakpoint
 75e:	0e          	.byte 14
 75f:	a9          	im 41
 760:	26          	ulessthan
 761:	00          	breakpoint
 762:	05          	add
 763:	02          	pushsp
 764:	00          	breakpoint
 765:	00          	breakpoint
 766:	0e          	.byte 14
 767:	b0          	im 48
 768:	00          	breakpoint
 769:	01          	.byte 1
 76a:	01          	.byte 1
 76b:	00          	breakpoint
 76c:	00          	breakpoint
 76d:	00          	breakpoint
 76e:	16          	addsp 24
 76f:	00          	breakpoint
 770:	02          	pushsp
 771:	00          	breakpoint
 772:	00          	breakpoint
 773:	00          	breakpoint
 774:	10          	addsp 0
 775:	01          	.byte 1
 776:	01          	.byte 1
 777:	fb          	im -5
 778:	0e          	.byte 14
 779:	0a          	flip
 77a:	00          	breakpoint
 77b:	01          	.byte 1
 77c:	01          	.byte 1
 77d:	01          	.byte 1
 77e:	01          	.byte 1
 77f:	00          	breakpoint
 780:	00          	breakpoint
 781:	00          	breakpoint
 782:	01          	.byte 1
	...
Disassembly of section .debug_frame:

00000000 <.Lframe0>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	00          	breakpoint
   3:	10          	addsp 0
   4:	ff          	im -1
   5:	ff          	im -1
   6:	ff          	im -1
   7:	ff          	im -1
   8:	01          	.byte 1
   9:	00          	breakpoint
   a:	01          	.byte 1
   b:	7c          	loadsp 48
   c:	24          	lessthan
   d:	0c          	store
   e:	20          	.byte 32
   f:	04          	poppc
  10:	a4          	im 36
  11:	01          	.byte 1
  12:	00          	breakpoint
  13:	00          	breakpoint
  14:	00          	breakpoint
  15:	00          	breakpoint
  16:	00          	breakpoint
  17:	1c          	addsp 48
	...
  20:	00          	breakpoint
  21:	00          	breakpoint
  22:	00          	breakpoint
  23:	2d          	call
  24:	04          	poppc
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	00          	breakpoint
  28:	03          	.byte 3
  29:	0e          	.byte 14
  2a:	10          	addsp 0
  2b:	04          	poppc
  2c:	00          	breakpoint
  2d:	00          	breakpoint
  2e:	00          	breakpoint
  2f:	29          	mult
  30:	0e          	.byte 14
  31:	04          	poppc
  32:	00          	breakpoint
  33:	00          	breakpoint
  34:	00          	breakpoint
  35:	00          	breakpoint
  36:	00          	breakpoint
  37:	1c          	addsp 48
	...
  40:	00          	breakpoint
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	25          	lessthanorequal
  44:	04          	poppc
  45:	00          	breakpoint
  46:	00          	breakpoint
  47:	00          	breakpoint
  48:	03          	.byte 3
  49:	0e          	.byte 14
  4a:	0c          	store
  4b:	04          	poppc
  4c:	00          	breakpoint
  4d:	00          	breakpoint
  4e:	00          	breakpoint
  4f:	21          	.byte 33
  50:	0e          	.byte 14
  51:	04          	poppc
  52:	00          	breakpoint
  53:	00          	breakpoint
  54:	00          	breakpoint
  55:	00          	breakpoint
  56:	00          	breakpoint
  57:	0c          	store
	...
  60:	00          	breakpoint
  61:	00          	breakpoint
  62:	00          	breakpoint
  63:	85          	im 5
  64:	00          	breakpoint
  65:	00          	breakpoint
  66:	00          	breakpoint
  67:	1c          	addsp 48
	...
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	00          	breakpoint
  73:	70          	loadsp 0
  74:	04          	poppc
  75:	00          	breakpoint
  76:	00          	breakpoint
  77:	00          	breakpoint
  78:	03          	.byte 3
  79:	0e          	.byte 14
  7a:	40          	storesp 64
  7b:	04          	poppc
  7c:	00          	breakpoint
  7d:	00          	breakpoint
  7e:	00          	breakpoint
  7f:	5f          	storesp 60
  80:	0e          	.byte 14
  81:	04          	poppc
	...

00000084 <.Lframe0>:
  84:	00          	breakpoint
  85:	00          	breakpoint
  86:	00          	breakpoint
  87:	10          	addsp 0
  88:	ff          	im -1
  89:	ff          	im -1
  8a:	ff          	im -1
  8b:	ff          	im -1
  8c:	01          	.byte 1
  8d:	00          	breakpoint
  8e:	01          	.byte 1
  8f:	7c          	loadsp 48
  90:	24          	lessthan
  91:	0c          	store
  92:	20          	.byte 32
  93:	04          	poppc
  94:	a4          	im 36
  95:	01          	.byte 1
  96:	00          	breakpoint
  97:	00          	breakpoint
  98:	00          	breakpoint
  99:	00          	breakpoint
  9a:	00          	breakpoint
  9b:	1c          	addsp 48
  9c:	00          	breakpoint
  9d:	00          	breakpoint
  9e:	00          	breakpoint
  9f:	84          	im 4
  a0:	00          	breakpoint
  a1:	00          	breakpoint
  a2:	0c          	store
  a3:	f3          	im -13
  a4:	00          	breakpoint
  a5:	00          	breakpoint
  a6:	00          	breakpoint
  a7:	bc          	im 60
  a8:	04          	poppc
  a9:	00          	breakpoint
  aa:	00          	breakpoint
  ab:	00          	breakpoint
  ac:	03          	.byte 3
  ad:	0e          	.byte 14
  ae:	18          	addsp 32
  af:	04          	poppc
  b0:	00          	breakpoint
  b1:	00          	breakpoint
  b2:	00          	breakpoint
  b3:	51          	storesp 4
  b4:	0e          	.byte 14
  b5:	04          	poppc
	...

000000b8 <.Lframe0>:
  b8:	00          	breakpoint
  b9:	00          	breakpoint
  ba:	00          	breakpoint
  bb:	10          	addsp 0
  bc:	ff          	im -1
  bd:	ff          	im -1
  be:	ff          	im -1
  bf:	ff          	im -1
  c0:	01          	.byte 1
  c1:	00          	breakpoint
  c2:	01          	.byte 1
  c3:	7c          	loadsp 48
  c4:	24          	lessthan
  c5:	0c          	store
  c6:	20          	.byte 32
  c7:	04          	poppc
  c8:	a4          	im 36
  c9:	01          	.byte 1
  ca:	00          	breakpoint
  cb:	00          	breakpoint
  cc:	00          	breakpoint
  cd:	00          	breakpoint
  ce:	00          	breakpoint
  cf:	1c          	addsp 48
  d0:	00          	breakpoint
  d1:	00          	breakpoint
  d2:	00          	breakpoint
  d3:	b8          	im 56
  d4:	00          	breakpoint
  d5:	00          	breakpoint
  d6:	0d          	popsp
  d7:	8c          	im 12
  d8:	00          	breakpoint
  d9:	00          	breakpoint
  da:	00          	breakpoint
  db:	b6          	im 54
  dc:	04          	poppc
  dd:	00          	breakpoint
  de:	00          	breakpoint
  df:	00          	breakpoint
  e0:	03          	.byte 3
  e1:	0e          	.byte 14
  e2:	18          	addsp 32
  e3:	04          	poppc
  e4:	00          	breakpoint
  e5:	00          	breakpoint
  e6:	00          	breakpoint
  e7:	4f          	storesp 124
  e8:	0e          	.byte 14
  e9:	04          	poppc
	...

000000ec <.Lframe0>:
  ec:	00          	breakpoint
  ed:	00          	breakpoint
  ee:	00          	breakpoint
  ef:	10          	addsp 0
  f0:	ff          	im -1
  f1:	ff          	im -1
  f2:	ff          	im -1
  f3:	ff          	im -1
  f4:	01          	.byte 1
  f5:	00          	breakpoint
  f6:	01          	.byte 1
  f7:	7c          	loadsp 48
  f8:	24          	lessthan
  f9:	0c          	store
  fa:	20          	.byte 32
  fb:	04          	poppc
  fc:	a4          	im 36
  fd:	01          	.byte 1
  fe:	00          	breakpoint
  ff:	00          	breakpoint
 100:	00          	breakpoint
 101:	00          	breakpoint
 102:	00          	breakpoint
 103:	1c          	addsp 48
 104:	00          	breakpoint
 105:	00          	breakpoint
 106:	00          	breakpoint
 107:	ec          	im -20
 108:	00          	breakpoint
 109:	00          	breakpoint
 10a:	0e          	.byte 14
 10b:	1b          	addsp 44
 10c:	00          	breakpoint
 10d:	00          	breakpoint
 10e:	00          	breakpoint
 10f:	bb          	im 59
 110:	04          	poppc
 111:	00          	breakpoint
 112:	00          	breakpoint
 113:	00          	breakpoint
 114:	03          	.byte 3
 115:	0e          	.byte 14
 116:	1c          	addsp 48
 117:	04          	poppc
 118:	00          	breakpoint
 119:	00          	breakpoint
 11a:	00          	breakpoint
 11b:	74          	loadsp 16
 11c:	0e          	.byte 14
 11d:	04          	poppc
	...
Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5f          	storesp 60
   1:	63          	loadsp 76
   2:	70          	loadsp 0
   3:	75          	loadsp 20
   4:	5f          	storesp 60
   5:	63          	loadsp 76
   6:	6f          	loadsp 124
   7:	6e          	loadsp 120
   8:	66          	loadsp 88
   9:	69          	loadsp 100
   a:	67          	loadsp 92
   b:	00          	breakpoint
   c:	6c          	loadsp 112
   d:	6f          	loadsp 124
   e:	6e          	loadsp 120
   f:	67          	loadsp 92
  10:	20          	.byte 32
  11:	6c          	loadsp 112
  12:	6f          	loadsp 124
  13:	6e          	loadsp 120
  14:	67          	loadsp 92
  15:	20          	.byte 32
  16:	75          	loadsp 20
  17:	6e          	loadsp 120
  18:	73          	loadsp 12
  19:	69          	loadsp 100
  1a:	67          	loadsp 92
  1b:	6e          	loadsp 120
  1c:	65          	loadsp 84
  1d:	64          	loadsp 80
  1e:	20          	.byte 32
  1f:	69          	loadsp 100
  20:	6e          	loadsp 120
  21:	74          	loadsp 16
  22:	00          	breakpoint
  23:	6c          	loadsp 112
  24:	6f          	loadsp 124
  25:	6e          	loadsp 120
  26:	67          	loadsp 92
  27:	20          	.byte 32
  28:	6c          	loadsp 112
  29:	6f          	loadsp 124
  2a:	6e          	loadsp 120
  2b:	67          	loadsp 92
  2c:	20          	.byte 32
  2d:	69          	loadsp 100
  2e:	6e          	loadsp 120
  2f:	74          	loadsp 16
  30:	00          	breakpoint
  31:	54          	storesp 16
  32:	49          	storesp 100
  33:	4d          	storesp 116
  34:	45          	storesp 84
  35:	52          	storesp 8
  36:	00          	breakpoint
  37:	6f          	loadsp 124
  38:	75          	loadsp 20
  39:	74          	loadsp 16
  3a:	62          	loadsp 72
  3b:	79          	loadsp 36
  3c:	74          	loadsp 16
  3d:	65          	loadsp 84
  3e:	00          	breakpoint
  3f:	5f          	storesp 60
  40:	72          	loadsp 8
  41:	65          	loadsp 84
  42:	61          	loadsp 68
  43:	64          	loadsp 80
  44:	43          	storesp 76
  45:	79          	loadsp 36
  46:	63          	loadsp 76
  47:	6c          	loadsp 112
  48:	65          	loadsp 84
  49:	73          	loadsp 12
  4a:	00          	breakpoint
  4b:	2f          	neq
  4c:	68          	loadsp 96
  4d:	6f          	loadsp 124
  4e:	6d          	loadsp 116
  4f:	65          	loadsp 84
  50:	2f          	neq
  51:	61          	loadsp 68
  52:	6c          	loadsp 112
  53:	76          	loadsp 24
  54:	69          	loadsp 100
  55:	65          	loadsp 84
  56:	62          	loadsp 72
  57:	6f          	loadsp 124
  58:	79          	loadsp 36
  59:	2f          	neq
  5a:	7a          	loadsp 40
  5b:	70          	loadsp 0
  5c:	75          	loadsp 20
  5d:	2f          	neq
  5e:	74          	loadsp 16
  5f:	6f          	loadsp 124
  60:	6f          	loadsp 124
  61:	6c          	loadsp 112
  62:	63          	loadsp 76
  63:	68          	loadsp 96
  64:	61          	loadsp 68
  65:	69          	loadsp 100
  66:	6e          	loadsp 120
  67:	2f          	neq
  68:	74          	loadsp 16
  69:	6f          	loadsp 124
  6a:	6f          	loadsp 124
  6b:	6c          	loadsp 112
  6c:	63          	loadsp 76
  6d:	68          	loadsp 96
  6e:	61          	loadsp 68
  6f:	69          	loadsp 100
  70:	6e          	loadsp 120
  71:	2f          	neq
  72:	74          	loadsp 16
  73:	6f          	loadsp 124
  74:	6f          	loadsp 124
  75:	6c          	loadsp 112
  76:	63          	loadsp 76
  77:	68          	loadsp 96
  78:	61          	loadsp 68
  79:	69          	loadsp 100
  7a:	6e          	loadsp 120
  7b:	2f          	neq
  7c:	67          	loadsp 92
  7d:	63          	loadsp 76
  7e:	63          	loadsp 76
  7f:	62          	loadsp 72
  80:	75          	loadsp 20
  81:	69          	loadsp 100
  82:	6c          	loadsp 112
  83:	64          	loadsp 80
  84:	2f          	neq
  85:	7a          	loadsp 40
  86:	70          	loadsp 0
  87:	75          	loadsp 20
  88:	2d          	call
  89:	65          	loadsp 84
  8a:	6c          	loadsp 112
  8b:	66          	loadsp 88
  8c:	2f          	neq
  8d:	66          	loadsp 88
  8e:	61          	loadsp 68
  8f:	73          	loadsp 12
  90:	74          	loadsp 16
  91:	2f          	neq
  92:	6c          	loadsp 112
  93:	69          	loadsp 100
  94:	62          	loadsp 72
  95:	67          	loadsp 92
  96:	6c          	loadsp 112
  97:	6f          	loadsp 124
  98:	73          	loadsp 12
  99:	73          	loadsp 12
  9a:	2f          	neq
  9b:	7a          	loadsp 40
  9c:	70          	loadsp 0
  9d:	75          	loadsp 20
  9e:	00          	breakpoint
  9f:	73          	loadsp 12
  a0:	68          	loadsp 96
  a1:	6f          	loadsp 124
  a2:	72          	loadsp 8
  a3:	74          	loadsp 16
  a4:	20          	.byte 32
  a5:	75          	loadsp 20
  a6:	6e          	loadsp 120
  a7:	73          	loadsp 12
  a8:	69          	loadsp 100
  a9:	67          	loadsp 92
  aa:	6e          	loadsp 120
  ab:	65          	loadsp 84
  ac:	64          	loadsp 80
  ad:	20          	.byte 32
  ae:	69          	loadsp 100
  af:	6e          	loadsp 120
  b0:	74          	loadsp 16
  b1:	00          	breakpoint
  b2:	47          	storesp 92
  b3:	4e          	storesp 120
  b4:	55          	storesp 20
  b5:	20          	.byte 32
  b6:	43          	storesp 76
  b7:	20          	.byte 32
  b8:	33          	loadb
  b9:	2e          	eq
  ba:	34          	storeb
  bb:	2e          	eq
  bc:	32          	xor
  bd:	00          	breakpoint
  be:	5f          	storesp 60
  bf:	68          	loadsp 96
  c0:	61          	loadsp 68
  c1:	72          	loadsp 8
  c2:	64          	loadsp 80
  c3:	77          	loadsp 28
  c4:	61          	loadsp 68
  c5:	72          	loadsp 8
  c6:	65          	loadsp 84
  c7:	00          	breakpoint
  c8:	75          	loadsp 20
  c9:	6e          	loadsp 120
  ca:	73          	loadsp 12
  cb:	69          	loadsp 100
  cc:	67          	loadsp 92
  cd:	6e          	loadsp 120
  ce:	65          	loadsp 84
  cf:	64          	loadsp 80
  d0:	20          	.byte 32
  d1:	63          	loadsp 76
  d2:	68          	loadsp 96
  d3:	61          	loadsp 68
  d4:	72          	loadsp 8
  d5:	00          	breakpoint
  d6:	73          	loadsp 12
  d7:	68          	loadsp 96
  d8:	6f          	loadsp 124
  d9:	72          	loadsp 8
  da:	74          	loadsp 16
  db:	20          	.byte 32
  dc:	69          	loadsp 100
  dd:	6e          	loadsp 120
  de:	74          	loadsp 16
  df:	00          	breakpoint
  e0:	69          	loadsp 100
  e1:	6e          	loadsp 120
  e2:	62          	loadsp 72
  e3:	79          	loadsp 36
  e4:	74          	loadsp 16
  e5:	65          	loadsp 84
  e6:	00          	breakpoint
  e7:	55          	storesp 20
  e8:	41          	storesp 68
  e9:	52          	storesp 8
  ea:	54          	storesp 16
  eb:	00          	breakpoint
  ec:	2e          	eq
  ed:	2e          	eq
  ee:	2f          	neq
  ef:	2e          	eq
  f0:	2e          	eq
  f1:	2f          	neq
  f2:	2e          	eq
  f3:	2e          	eq
  f4:	2f          	neq
  f5:	2e          	eq
  f6:	2e          	eq
  f7:	2f          	neq
  f8:	2e          	eq
  f9:	2e          	eq
  fa:	2f          	neq
  fb:	67          	loadsp 92
  fc:	63          	loadsp 76
  fd:	63          	loadsp 76
  fe:	2f          	neq
  ff:	6c          	loadsp 112
 100:	69          	loadsp 100
 101:	62          	loadsp 72
 102:	67          	loadsp 92
 103:	6c          	loadsp 112
 104:	6f          	loadsp 124
 105:	73          	loadsp 12
 106:	73          	loadsp 12
 107:	2f          	neq
 108:	7a          	loadsp 40
 109:	70          	loadsp 0
 10a:	75          	loadsp 20
 10b:	2f          	neq
 10c:	63          	loadsp 76
 10d:	72          	loadsp 8
 10e:	74          	loadsp 16
 10f:	5f          	storesp 60
 110:	69          	loadsp 100
 111:	6f          	loadsp 124
 112:	2e          	eq
 113:	63          	loadsp 76
 114:	00          	breakpoint
 115:	5f          	storesp 60
 116:	69          	loadsp 100
 117:	6e          	loadsp 120
 118:	69          	loadsp 100
 119:	74          	loadsp 16
 11a:	49          	storesp 100
 11b:	4f          	storesp 124
 11c:	00          	breakpoint
 11d:	63          	loadsp 76
 11e:	6c          	loadsp 112
 11f:	6f          	loadsp 124
 120:	63          	loadsp 76
 121:	6b          	loadsp 108
 122:	00          	breakpoint
 123:	61          	loadsp 68
 124:	6c          	loadsp 112
 125:	69          	loadsp 100
 126:	67          	loadsp 92
 127:	6e          	loadsp 120
 128:	65          	loadsp 84
 129:	64          	loadsp 80
 12a:	5f          	storesp 60
 12b:	64          	loadsp 80
 12c:	73          	loadsp 12
 12d:	74          	loadsp 16
 12e:	00          	breakpoint
 12f:	73          	loadsp 12
 130:	69          	loadsp 100
 131:	7a          	loadsp 40
 132:	65          	loadsp 84
 133:	5f          	storesp 60
 134:	74          	loadsp 16
 135:	00          	breakpoint
 136:	2e          	eq
 137:	2e          	eq
 138:	2f          	neq
 139:	2e          	eq
 13a:	2e          	eq
 13b:	2f          	neq
 13c:	2e          	eq
 13d:	2e          	eq
 13e:	2f          	neq
 13f:	2e          	eq
 140:	2e          	eq
 141:	2f          	neq
 142:	2e          	eq
 143:	2e          	eq
 144:	2f          	neq
 145:	2e          	eq
 146:	2e          	eq
 147:	2f          	neq
 148:	67          	loadsp 92
 149:	63          	loadsp 76
 14a:	63          	loadsp 76
 14b:	2f          	neq
 14c:	6e          	loadsp 120
 14d:	65          	loadsp 84
 14e:	77          	loadsp 28
 14f:	6c          	loadsp 112
 150:	69          	loadsp 100
 151:	62          	loadsp 72
 152:	2f          	neq
 153:	6c          	loadsp 112
 154:	69          	loadsp 100
 155:	62          	loadsp 72
 156:	63          	loadsp 76
 157:	2f          	neq
 158:	73          	loadsp 12
 159:	74          	loadsp 16
 15a:	72          	loadsp 8
 15b:	69          	loadsp 100
 15c:	6e          	loadsp 120
 15d:	67          	loadsp 92
 15e:	2f          	neq
 15f:	6d          	loadsp 116
 160:	65          	loadsp 84
 161:	6d          	loadsp 116
 162:	63          	loadsp 76
 163:	70          	loadsp 0
 164:	79          	loadsp 36
 165:	2e          	eq
 166:	63          	loadsp 76
 167:	00          	breakpoint
 168:	61          	loadsp 68
 169:	6c          	loadsp 112
 16a:	69          	loadsp 100
 16b:	67          	loadsp 92
 16c:	6e          	loadsp 120
 16d:	65          	loadsp 84
 16e:	64          	loadsp 80
 16f:	5f          	storesp 60
 170:	73          	loadsp 12
 171:	72          	loadsp 8
 172:	63          	loadsp 76
 173:	00          	breakpoint
 174:	73          	loadsp 12
 175:	72          	loadsp 8
 176:	63          	loadsp 76
 177:	30          	neg
 178:	00          	breakpoint
 179:	2f          	neq
 17a:	68          	loadsp 96
 17b:	6f          	loadsp 124
 17c:	6d          	loadsp 116
 17d:	65          	loadsp 84
 17e:	2f          	neq
 17f:	61          	loadsp 68
 180:	6c          	loadsp 112
 181:	76          	loadsp 24
 182:	69          	loadsp 100
 183:	65          	loadsp 84
 184:	62          	loadsp 72
 185:	6f          	loadsp 124
 186:	79          	loadsp 36
 187:	2f          	neq
 188:	7a          	loadsp 40
 189:	70          	loadsp 0
 18a:	75          	loadsp 20
 18b:	2f          	neq
 18c:	74          	loadsp 16
 18d:	6f          	loadsp 124
 18e:	6f          	loadsp 124
 18f:	6c          	loadsp 112
 190:	63          	loadsp 76
 191:	68          	loadsp 96
 192:	61          	loadsp 68
 193:	69          	loadsp 100
 194:	6e          	loadsp 120
 195:	2f          	neq
 196:	74          	loadsp 16
 197:	6f          	loadsp 124
 198:	6f          	loadsp 124
 199:	6c          	loadsp 112
 19a:	63          	loadsp 76
 19b:	68          	loadsp 96
 19c:	61          	loadsp 68
 19d:	69          	loadsp 100
 19e:	6e          	loadsp 120
 19f:	2f          	neq
 1a0:	74          	loadsp 16
 1a1:	6f          	loadsp 124
 1a2:	6f          	loadsp 124
 1a3:	6c          	loadsp 112
 1a4:	63          	loadsp 76
 1a5:	68          	loadsp 96
 1a6:	61          	loadsp 68
 1a7:	69          	loadsp 100
 1a8:	6e          	loadsp 120
 1a9:	2f          	neq
 1aa:	67          	loadsp 92
 1ab:	63          	loadsp 76
 1ac:	63          	loadsp 76
 1ad:	62          	loadsp 72
 1ae:	75          	loadsp 20
 1af:	69          	loadsp 100
 1b0:	6c          	loadsp 112
 1b1:	64          	loadsp 80
 1b2:	2f          	neq
 1b3:	7a          	loadsp 40
 1b4:	70          	loadsp 0
 1b5:	75          	loadsp 20
 1b6:	2d          	call
 1b7:	65          	loadsp 84
 1b8:	6c          	loadsp 112
 1b9:	66          	loadsp 88
 1ba:	2f          	neq
 1bb:	66          	loadsp 88
 1bc:	61          	loadsp 68
 1bd:	73          	loadsp 12
 1be:	74          	loadsp 16
 1bf:	2f          	neq
 1c0:	6e          	loadsp 120
 1c1:	65          	loadsp 84
 1c2:	77          	loadsp 28
 1c3:	6c          	loadsp 112
 1c4:	69          	loadsp 100
 1c5:	62          	loadsp 72
 1c6:	2f          	neq
 1c7:	6c          	loadsp 112
 1c8:	69          	loadsp 100
 1c9:	62          	loadsp 72
 1ca:	63          	loadsp 76
 1cb:	2f          	neq
 1cc:	73          	loadsp 12
 1cd:	74          	loadsp 16
 1ce:	72          	loadsp 8
 1cf:	69          	loadsp 100
 1d0:	6e          	loadsp 120
 1d1:	67          	loadsp 92
 1d2:	00          	breakpoint
 1d3:	64          	loadsp 80
 1d4:	73          	loadsp 12
 1d5:	74          	loadsp 16
 1d6:	30          	neg
 1d7:	00          	breakpoint
 1d8:	6d          	loadsp 116
 1d9:	65          	loadsp 84
 1da:	6d          	loadsp 116
 1db:	63          	loadsp 76
 1dc:	70          	loadsp 0
 1dd:	79          	loadsp 36
 1de:	00          	breakpoint
 1df:	6c          	loadsp 112
 1e0:	65          	loadsp 84
 1e1:	6e          	loadsp 120
 1e2:	30          	neg
 1e3:	00          	breakpoint
 1e4:	6d          	loadsp 116
 1e5:	65          	loadsp 84
 1e6:	6d          	loadsp 116
 1e7:	73          	loadsp 12
 1e8:	65          	loadsp 84
 1e9:	74          	loadsp 16
 1ea:	00          	breakpoint
 1eb:	61          	loadsp 68
 1ec:	6c          	loadsp 112
 1ed:	69          	loadsp 100
 1ee:	67          	loadsp 92
 1ef:	6e          	loadsp 120
 1f0:	65          	loadsp 84
 1f1:	64          	loadsp 80
 1f2:	5f          	storesp 60
 1f3:	61          	loadsp 68
 1f4:	64          	loadsp 80
 1f5:	64          	loadsp 80
 1f6:	72          	loadsp 8
 1f7:	00          	breakpoint
 1f8:	2e          	eq
 1f9:	2e          	eq
 1fa:	2f          	neq
 1fb:	2e          	eq
 1fc:	2e          	eq
 1fd:	2f          	neq
 1fe:	2e          	eq
 1ff:	2e          	eq
 200:	2f          	neq
 201:	2e          	eq
 202:	2e          	eq
 203:	2f          	neq
 204:	2e          	eq
 205:	2e          	eq
 206:	2f          	neq
 207:	2e          	eq
 208:	2e          	eq
 209:	2f          	neq
 20a:	67          	loadsp 92
 20b:	63          	loadsp 76
 20c:	63          	loadsp 76
 20d:	2f          	neq
 20e:	6e          	loadsp 120
 20f:	65          	loadsp 84
 210:	77          	loadsp 28
 211:	6c          	loadsp 112
 212:	69          	loadsp 100
 213:	62          	loadsp 72
 214:	2f          	neq
 215:	6c          	loadsp 112
 216:	69          	loadsp 100
 217:	62          	loadsp 72
 218:	63          	loadsp 76
 219:	2f          	neq
 21a:	73          	loadsp 12
 21b:	74          	loadsp 16
 21c:	72          	loadsp 8
 21d:	69          	loadsp 100
 21e:	6e          	loadsp 120
 21f:	67          	loadsp 92
 220:	2f          	neq
 221:	6d          	loadsp 116
 222:	65          	loadsp 84
 223:	6d          	loadsp 116
 224:	73          	loadsp 12
 225:	65          	loadsp 84
 226:	74          	loadsp 16
 227:	2e          	eq
 228:	63          	loadsp 76
 229:	00          	breakpoint
 22a:	62          	loadsp 72
 22b:	75          	loadsp 20
 22c:	66          	loadsp 88
 22d:	66          	loadsp 88
 22e:	65          	loadsp 84
 22f:	72          	loadsp 8
 230:	00          	breakpoint
 231:	2e          	eq
 232:	2e          	eq
 233:	2f          	neq
 234:	2e          	eq
 235:	2e          	eq
 236:	2f          	neq
 237:	2e          	eq
 238:	2e          	eq
 239:	2f          	neq
 23a:	2e          	eq
 23b:	2e          	eq
 23c:	2f          	neq
 23d:	2e          	eq
 23e:	2e          	eq
 23f:	2f          	neq
 240:	2e          	eq
 241:	2e          	eq
 242:	2f          	neq
 243:	67          	loadsp 92
 244:	63          	loadsp 76
 245:	63          	loadsp 76
 246:	2f          	neq
 247:	6e          	loadsp 120
 248:	65          	loadsp 84
 249:	77          	loadsp 28
 24a:	6c          	loadsp 112
 24b:	69          	loadsp 100
 24c:	62          	loadsp 72
 24d:	2f          	neq
 24e:	6c          	loadsp 112
 24f:	69          	loadsp 100
 250:	62          	loadsp 72
 251:	63          	loadsp 76
 252:	2f          	neq
 253:	73          	loadsp 12
 254:	74          	loadsp 16
 255:	72          	loadsp 8
 256:	69          	loadsp 100
 257:	6e          	loadsp 120
 258:	67          	loadsp 92
 259:	2f          	neq
 25a:	73          	loadsp 12
 25b:	74          	loadsp 16
 25c:	72          	loadsp 8
 25d:	63          	loadsp 76
 25e:	6d          	loadsp 116
 25f:	70          	loadsp 0
 260:	2e          	eq
 261:	63          	loadsp 76
 262:	00          	breakpoint
 263:	73          	loadsp 12
 264:	74          	loadsp 16
 265:	72          	loadsp 8
 266:	63          	loadsp 76
 267:	6d          	loadsp 116
 268:	70          	loadsp 0
	...
Disassembly of section .boots:

00001000 <ivector>:
    1000:	00          	breakpoint
    1001:	00          	breakpoint
	...

00001004 <bootloaderdata>:
    1004:	00          	breakpoint
    1005:	00          	breakpoint
	...

00001008 <__sketch_start>:
    1008:	0b          	nop
    1009:	00          	breakpoint
	...
Disassembly of section .vectors:

00000000 <_memreg-0x8>:
	...

00000008 <_memreg>:
	...
