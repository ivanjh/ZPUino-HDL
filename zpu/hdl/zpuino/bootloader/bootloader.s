
bootloader.elf:     file format elf32-zpu

Disassembly of section .fixed_vectors:

00000000 <_start>:
   0:	0b          	nop
   1:	0b          	nop
   2:	0b          	nop
   3:	97          	im 23
   4:	cd          	im -51
   5:	04          	poppc
	...

00000020 <_zpu_interrupt_vector>:
  20:	0b          	nop
  21:	0b          	nop
  22:	0b          	nop
  23:	97          	im 23
  24:	ae          	im 46
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
 288:	ac          	im 44
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
 345:	9d          	im 29
 346:	f4          	im -12
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
 403:	94          	im 20
 404:	fa          	im -6
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
 468:	ad          	im 45
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
 47f:	97          	im 23
 480:	e9          	im -23
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
 496:	ab          	im 43
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
 4a6:	84          	im 4
 4a7:	33          	loadb
 4a8:	51          	storesp 4
 4a9:	70          	loadsp 0
 4aa:	a6          	im 38
 4ab:	38          	neqbranch
 4ac:	9e          	im 30
 4ad:	80          	im 0
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
 4bb:	80          	im 0
 4bc:	0c          	store
 4bd:	70          	loadsp 0
 4be:	2d          	call
 4bf:	9e          	im 30
 4c0:	80          	im 0
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
 4cf:	84          	im 4
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
 4dd:	b0          	im 48
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
 4f8:	b0          	im 48
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
 5be:	98          	im 24
 5bf:	08          	load
 5c0:	52          	storesp 8
 5c1:	71          	loadsp 4
 5c2:	f0          	im -16
 5c3:	38          	neqbranch
 5c4:	9e          	im 30
 5c5:	94          	im 20
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
 5d8:	97          	im 23
 5d9:	db          	im -37
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
 5e6:	cc          	im -52
 5e7:	83          	im 3
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
 606:	81          	im 1
 607:	90          	im 16
 608:	0a          	flip
 609:	70          	loadsp 0
 60a:	08          	load
 60b:	70          	loadsp 0
 60c:	82          	im 2
 60d:	07          	or
 60e:	72          	loadsp 8
 60f:	0c          	store
 610:	52          	storesp 8
 611:	52          	storesp 8
 612:	83          	im 3
 613:	3d          	pushspadd
 614:	0d          	popsp
 615:	04          	poppc

00000616 <_Z10spi_enablev>:
 616:	ff          	im -1
 617:	3d          	pushspadd
 618:	0d          	popsp
 619:	81          	im 1
 61a:	90          	im 16
 61b:	0a          	flip
 61c:	70          	loadsp 0
 61d:	08          	load
 61e:	70          	loadsp 0
 61f:	fd          	im -3
 620:	06          	and
 621:	72          	loadsp 8
 622:	0c          	store
 623:	52          	storesp 8
 624:	52          	storesp 8
 625:	83          	im 3
 626:	3d          	pushspadd
 627:	0d          	popsp
 628:	04          	poppc

00000629 <start>:
 629:	a0          	im 32
 62a:	90          	im 16
 62b:	0b          	nop
 62c:	a0          	im 32
 62d:	80          	im 0
 62e:	0c          	store
 62f:	9e          	im 30
 630:	88          	im 8
 631:	0b          	nop
 632:	a0          	im 32
 633:	84          	im 4
 634:	0c          	store
 635:	97          	im 23
 636:	e2          	im -30
 637:	2d          	call

00000638 <_Z15start_read_sizePVj>:
 638:	fe          	im -2
 639:	3d          	pushspadd
 63a:	0d          	popsp
 63b:	74          	loadsp 16
 63c:	52          	storesp 8
 63d:	8b          	im 11
 63e:	72          	loadsp 8
 63f:	0c          	store
 640:	90          	im 16
 641:	12          	addsp 8
 642:	53          	storesp 12
 643:	80          	im 0
 644:	70          	loadsp 0
 645:	74          	loadsp 16
 646:	0c          	store
 647:	73          	loadsp 12
 648:	0c          	store
 649:	71          	loadsp 4
 64a:	08          	load
 64b:	83          	im 3
 64c:	ff          	im -1
 64d:	ff          	im -1
 64e:	06          	and
 64f:	88          	im 8
 650:	0c          	store
 651:	84          	im 4
 652:	3d          	pushspadd
 653:	0d          	popsp
 654:	04          	poppc

00000655 <copy_sketch>:
 655:	fa          	im -6
 656:	3d          	pushspadd
 657:	0d          	popsp
 658:	78          	loadsp 32
 659:	7a          	loadsp 40
 65a:	7d          	loadsp 52
 65b:	ff          	im -1
 65c:	1e          	addsp 56
 65d:	57          	storesp 28
 65e:	57          	storesp 28
 65f:	58          	storesp 32
 660:	53          	storesp 12
 661:	73          	loadsp 12
 662:	ff          	im -1
 663:	2e          	eq
 664:	a7          	im 39
 665:	38          	neqbranch
 666:	80          	im 0
 667:	56          	storesp 24

00000668 <.L85>:
 668:	84          	im 4
 669:	52          	storesp 8

0000066a <.L82>:
 66a:	75          	loadsp 20
 66b:	73          	loadsp 12
 66c:	0c          	store
 66d:	72          	loadsp 8
 66e:	08          	load
 66f:	88          	im 8
 670:	18          	addsp 32
 671:	0c          	store
 672:	ff          	im -1
 673:	12          	addsp 8
 674:	52          	storesp 8
 675:	71          	loadsp 4
 676:	f3          	im -13
 677:	38          	neqbranch
 678:	74          	loadsp 16
 679:	84          	im 4
 67a:	16          	addsp 24
 67b:	74          	loadsp 16
 67c:	08          	load
 67d:	72          	loadsp 8
 67e:	0c          	store
 67f:	ff          	im -1
 680:	16          	addsp 24
 681:	56          	storesp 24
 682:	56          	storesp 24
 683:	52          	storesp 8
 684:	73          	loadsp 12
 685:	ff          	im -1
 686:	2e          	eq
 687:	09          	not
 688:	81          	im 1
 689:	06          	and
 68a:	dd          	im -35
 68b:	38          	neqbranch

0000068c <.L87>:
 68c:	88          	im 8
 68d:	3d          	pushspadd
 68e:	0d          	popsp
 68f:	04          	poppc

00000690 <spi_copy_impl>:
 690:	f8          	im -8
 691:	3d          	pushspadd
 692:	0d          	popsp
 693:	80          	im 0
 694:	c0          	im -64
 695:	80          	im 0
 696:	80          	im 0
 697:	84          	im 4
 698:	57          	storesp 28
 699:	83          	im 3
 69a:	d0          	im -48
 69b:	0a          	flip
 69c:	59          	storesp 36
 69d:	8c          	im 12
 69e:	96          	im 22
 69f:	2d          	call
 6a0:	76          	loadsp 24
 6a1:	51          	storesp 4
 6a2:	8c          	im 12
 6a3:	b8          	im 56
 6a4:	2d          	call
 6a5:	9e          	im 30
 6a6:	88          	im 8
 6a7:	70          	loadsp 0
 6a8:	88          	im 8
 6a9:	08          	load
 6aa:	10          	addsp 0
 6ab:	10          	addsp 0
 6ac:	84          	im 4
 6ad:	05          	add
 6ae:	71          	loadsp 4
 6af:	70          	loadsp 0
 6b0:	84          	im 4
 6b1:	05          	add
 6b2:	53          	storesp 12
 6b3:	0c          	store
 6b4:	56          	storesp 24
 6b5:	56          	storesp 24
 6b6:	fb          	im -5
 6b7:	80          	im 0
 6b8:	84          	im 4
 6b9:	a1          	im 33
 6ba:	ad          	im 45
 6bb:	75          	loadsp 20
 6bc:	0c          	store
 6bd:	9d          	im 29
 6be:	e4          	im -28
 6bf:	0b          	nop
 6c0:	88          	im 8
 6c1:	17          	addsp 28
 6c2:	0c          	store
 6c3:	80          	im 0
 6c4:	70          	loadsp 0
 6c5:	78          	loadsp 32
 6c6:	0c          	store
 6c7:	77          	loadsp 28
 6c8:	0c          	store
 6c9:	76          	loadsp 24
 6ca:	08          	load
 6cb:	83          	im 3
 6cc:	ff          	im -1
 6cd:	ff          	im -1
 6ce:	06          	and
 6cf:	56          	storesp 24
 6d0:	81          	im 1
 6d1:	df          	im -33
 6d2:	80          	im 0
 6d3:	0b          	nop
 6d4:	88          	im 8
 6d5:	08          	load
 6d6:	27          	ulessthanorequal
 6d7:	83          	im 3
 6d8:	38          	neqbranch

000006d9 <.L99>:
 6d9:	ff          	im -1
 6da:	39          	poppcrel

000006db <.L98>:
 6db:	83          	im 3
 6dc:	ff          	im -1
 6dd:	ff          	im -1
 6de:	79          	loadsp 36
 6df:	0c          	store
 6e0:	a0          	im 32
 6e1:	80          	im 0
 6e2:	54          	storesp 16
 6e3:	88          	im 8
 6e4:	08          	load
 6e5:	53          	storesp 12
 6e6:	78          	loadsp 32
 6e7:	52          	storesp 8
 6e8:	76          	loadsp 24
 6e9:	51          	storesp 4
 6ea:	8c          	im 12
 6eb:	d5          	im -43
 6ec:	2d          	call
 6ed:	76          	loadsp 24
 6ee:	51          	storesp 4
 6ef:	8b          	im 11
 6f0:	fe          	im -2
 6f1:	2d          	call
 6f2:	78          	loadsp 32
 6f3:	08          	load
 6f4:	55          	storesp 20
 6f5:	74          	loadsp 16
 6f6:	76          	loadsp 24
 6f7:	2e          	eq
 6f8:	89          	im 9
 6f9:	38          	neqbranch
 6fa:	80          	im 0
 6fb:	c3          	im -61
 6fc:	51          	storesp 4
 6fd:	8a          	im 10
 6fe:	a0          	im 32
 6ff:	2d          	call

00000700 <.L102>:
 700:	ff          	im -1
 701:	39          	poppcrel

00000702 <.L101>:
 702:	a0          	im 32
 703:	84          	im 4
 704:	08          	load
 705:	55          	storesp 20
 706:	74          	loadsp 16
 707:	f8          	im -8
 708:	a0          	im 32
 709:	84          	im 4
 70a:	9e          	im 30
 70b:	80          	im 0
 70c:	2e          	eq
 70d:	89          	im 9
 70e:	38          	neqbranch
 70f:	80          	im 0
 710:	c2          	im -62
 711:	51          	storesp 4
 712:	8a          	im 10
 713:	a0          	im 32
 714:	2d          	call

00000715 <.L105>:
 715:	ff          	im -1
 716:	39          	poppcrel

00000717 <.L104>:
 717:	90          	im 16
 718:	0a          	flip
 719:	70          	loadsp 0
 71a:	08          	load
 71b:	70          	loadsp 0
 71c:	ff          	im -1
 71d:	bf          	im 63
 71e:	06          	and
 71f:	72          	loadsp 8
 720:	0c          	store
 721:	56          	storesp 24
 722:	56          	storesp 24
 723:	8a          	im 10
 724:	85          	im 5
 725:	2d          	call
 726:	8c          	im 12
 727:	a9          	im 41
 728:	2d          	call

00000729 <.L107>:
 729:	ff          	im -1
 72a:	39          	poppcrel

0000072b <_zpu_interrupt>:
 72b:	ff          	im -1
 72c:	3d          	pushspadd
 72d:	0d          	popsp
 72e:	9e          	im 30
 72f:	94          	im 20
 730:	08          	load
 731:	81          	im 1
 732:	11          	addsp 4
 733:	9e          	im 30
 734:	94          	im 20
 735:	0c          	store
 736:	51          	storesp 4
 737:	83          	im 3
 738:	90          	im 16
 739:	0a          	flip
 73a:	70          	loadsp 0
 73b:	08          	load
 73c:	70          	loadsp 0
 73d:	fe          	im -2
 73e:	ff          	im -1
 73f:	06          	and
 740:	72          	loadsp 8
 741:	0c          	store
 742:	52          	storesp 8
 743:	52          	storesp 8
 744:	83          	im 3
 745:	3d          	pushspadd
 746:	0d          	popsp
 747:	04          	poppc

00000748 <_Z11simpleReplyj>:
 748:	80          	im 0
 749:	3d          	pushspadd
 74a:	0d          	popsp
 74b:	8a          	im 10
 74c:	f4          	im -12
 74d:	2d          	call
 74e:	72          	loadsp 8
 74f:	81          	im 1
 750:	80          	im 0
 751:	07          	or
 752:	51          	storesp 4
 753:	8a          	im 10
 754:	c0          	im -64
 755:	2d          	call
 756:	8b          	im 11
 757:	89          	im 9
 758:	2d          	call
 759:	82          	im 2
 75a:	3d          	pushspadd
 75b:	0d          	popsp
 75c:	04          	poppc

0000075d <_Z15spi_read_statusv>:
 75d:	fe          	im -2
 75e:	3d          	pushspadd
 75f:	0d          	popsp
 760:	80          	im 0
 761:	c0          	im -64
 762:	80          	im 0
 763:	80          	im 0
 764:	84          	im 4
 765:	53          	storesp 12
 766:	8c          	im 12
 767:	96          	im 22
 768:	2d          	call
 769:	85          	im 5
 76a:	73          	loadsp 12
 76b:	0c          	store
 76c:	80          	im 0
 76d:	73          	loadsp 12
 76e:	0c          	store
 76f:	72          	loadsp 8
 770:	08          	load
 771:	70          	loadsp 0
 772:	81          	im 1
 773:	ff          	im -1
 774:	06          	and
 775:	74          	loadsp 16
 776:	53          	storesp 12
 777:	51          	storesp 4
 778:	52          	storesp 8
 779:	8b          	im 11
 77a:	fe          	im -2
 77b:	2d          	call
 77c:	71          	loadsp 4
 77d:	88          	im 8
 77e:	0c          	store
 77f:	84          	im 4
 780:	3d          	pushspadd
 781:	0d          	popsp
 782:	04          	poppc

00000783 <_Z11cmd_progmemPh>:
 783:	fc          	im -4
 784:	3d          	pushspadd
 785:	0d          	popsp
 786:	76          	loadsp 24
 787:	81          	im 1
 788:	11          	addsp 4
 789:	33          	loadb
 78a:	82          	im 2
 78b:	12          	addsp 8
 78c:	33          	loadb
 78d:	71          	loadsp 4
 78e:	81          	im 1
 78f:	80          	im 0
 790:	0a          	flip
 791:	29          	mult
 792:	71          	loadsp 4
 793:	84          	im 4
 794:	80          	im 0
 795:	80          	im 0
 796:	29          	mult
 797:	05          	add
 798:	83          	im 3
 799:	14          	addsp 16
 79a:	33          	loadb
 79b:	70          	loadsp 0
 79c:	82          	im 2
 79d:	80          	im 0
 79e:	29          	mult
 79f:	12          	addsp 8
 7a0:	84          	im 4
 7a1:	16          	addsp 24
 7a2:	33          	loadb
 7a3:	52          	storesp 8
 7a4:	71          	loadsp 4
 7a5:	05          	add
 7a6:	a0          	im 32
 7a7:	80          	im 0
 7a8:	05          	add
 7a9:	86          	im 6
 7aa:	16          	addsp 24
 7ab:	85          	im 5
 7ac:	17          	addsp 28
 7ad:	33          	loadb
 7ae:	ff          	im -1
 7af:	11          	addsp 4
 7b0:	51          	storesp 4
 7b1:	57          	storesp 28
 7b2:	52          	storesp 8
 7b3:	53          	storesp 12
 7b4:	53          	storesp 12
 7b5:	55          	storesp 20
 7b6:	57          	storesp 28
 7b7:	55          	storesp 20
 7b8:	53          	storesp 12
 7b9:	72          	loadsp 8
 7ba:	ff          	im -1
 7bb:	2e          	eq
 7bc:	9a          	im 26
 7bd:	38          	neqbranch

000007be <.L132>:
 7be:	73          	loadsp 12
 7bf:	70          	loadsp 0
 7c0:	81          	im 1
 7c1:	05          	add
 7c2:	55          	storesp 20
 7c3:	33          	loadb
 7c4:	52          	storesp 8
 7c5:	71          	loadsp 4
 7c6:	75          	loadsp 20
 7c7:	70          	loadsp 0
 7c8:	81          	im 1
 7c9:	05          	add
 7ca:	57          	storesp 28
 7cb:	34          	storeb
 7cc:	ff          	im -1
 7cd:	13          	addsp 12
 7ce:	53          	storesp 12
 7cf:	72          	loadsp 8
 7d0:	ff          	im -1
 7d1:	2e          	eq
 7d2:	09          	not
 7d3:	81          	im 1
 7d4:	06          	and
 7d5:	e8          	im -24
 7d6:	38          	neqbranch

000007d7 <.L129>:
 7d7:	89          	im 9
 7d8:	51          	storesp 4
 7d9:	8e          	im 14
 7da:	c8          	im -56
 7db:	2d          	call
 7dc:	86          	im 6
 7dd:	3d          	pushspadd
 7de:	0d          	popsp
 7df:	04          	poppc

000007e0 <_Z20cmd_raw_send_receivePh>:
 7e0:	f9          	im -7
 7e1:	3d          	pushspadd
 7e2:	0d          	popsp
 7e3:	79          	loadsp 36
 7e4:	57          	storesp 28
 7e5:	80          	im 0
 7e6:	c0          	im -64
 7e7:	80          	im 0
 7e8:	80          	im 0
 7e9:	84          	im 4
 7ea:	56          	storesp 24
 7eb:	8c          	im 12
 7ec:	96          	im 22
 7ed:	2d          	call
 7ee:	81          	im 1
 7ef:	17          	addsp 28
 7f0:	33          	loadb
 7f1:	82          	im 2
 7f2:	18          	addsp 32
 7f3:	33          	loadb
 7f4:	71          	loadsp 4
 7f5:	82          	im 2
 7f6:	80          	im 0
 7f7:	29          	mult
 7f8:	05          	add
 7f9:	53          	storesp 12
 7fa:	53          	storesp 12
 7fb:	71          	loadsp 4
 7fc:	80          	im 0
 7fd:	2e          	eq
 7fe:	94          	im 20
 7ff:	38          	neqbranch
 800:	85          	im 5
 801:	17          	addsp 28
 802:	72          	loadsp 8
 803:	55          	storesp 20
 804:	53          	storesp 12

00000805 <.L139>:
 805:	72          	loadsp 8
 806:	70          	loadsp 0
 807:	81          	im 1
 808:	05          	add
 809:	54          	storesp 16
 80a:	33          	loadb
 80b:	76          	loadsp 24
 80c:	0c          	store
 80d:	ff          	im -1
 80e:	14          	addsp 16
 80f:	54          	storesp 16
 810:	73          	loadsp 12
 811:	f3          	im -13
 812:	38          	neqbranch

00000813 <.L153>:
 813:	83          	im 3
 814:	17          	addsp 28
 815:	33          	loadb
 816:	84          	im 4
 817:	18          	addsp 32
 818:	33          	loadb
 819:	71          	loadsp 4
 81a:	82          	im 2
 81b:	80          	im 0
 81c:	29          	mult
 81d:	05          	add
 81e:	56          	storesp 24
 81f:	52          	storesp 8
 820:	80          	im 0
 821:	54          	storesp 16
 822:	73          	loadsp 12
 823:	75          	loadsp 20
 824:	27          	ulessthanorequal
 825:	97          	im 23
 826:	38          	neqbranch
 827:	73          	loadsp 12
 828:	58          	storesp 32

00000829 <.L147>:
 829:	77          	loadsp 28
 82a:	76          	loadsp 24
 82b:	0c          	store
 82c:	73          	loadsp 12
 82d:	17          	addsp 28
 82e:	76          	loadsp 24
 82f:	08          	load
 830:	53          	storesp 12
 831:	53          	storesp 12
 832:	71          	loadsp 4
 833:	73          	loadsp 12
 834:	34          	storeb
 835:	81          	im 1
 836:	14          	addsp 16
 837:	54          	storesp 16
 838:	74          	loadsp 16
 839:	74          	loadsp 16
 83a:	26          	ulessthan
 83b:	ed          	im -19
 83c:	38          	neqbranch

0000083d <.L155>:
 83d:	75          	loadsp 20
 83e:	51          	storesp 4
 83f:	8b          	im 11
 840:	fe          	im -2
 841:	2d          	call
 842:	8a          	im 10
 843:	f4          	im -12
 844:	2d          	call
 845:	81          	im 1
 846:	84          	im 4
 847:	51          	storesp 4
 848:	8a          	im 10
 849:	c0          	im -64
 84a:	2d          	call
 84b:	74          	loadsp 16
 84c:	88          	im 8
 84d:	2a          	lshiftright
 84e:	51          	storesp 4
 84f:	8a          	im 10
 850:	c0          	im -64
 851:	2d          	call
 852:	74          	loadsp 16
 853:	51          	storesp 4
 854:	8a          	im 10
 855:	c0          	im -64
 856:	2d          	call
 857:	80          	im 0
 858:	54          	storesp 16
 859:	73          	loadsp 12
 85a:	75          	loadsp 20
 85b:	27          	ulessthanorequal
 85c:	92          	im 18
 85d:	38          	neqbranch

0000085e <.L160>:
 85e:	73          	loadsp 12
 85f:	17          	addsp 28
 860:	70          	loadsp 0
 861:	33          	loadb
 862:	52          	storesp 8
 863:	52          	storesp 8
 864:	8a          	im 10
 865:	c0          	im -64
 866:	2d          	call
 867:	81          	im 1
 868:	14          	addsp 16
 869:	54          	storesp 16
 86a:	74          	loadsp 16
 86b:	74          	loadsp 16
 86c:	26          	ulessthan
 86d:	f0          	im -16
 86e:	38          	neqbranch

0000086f <.L157>:
 86f:	8b          	im 11
 870:	89          	im 9
 871:	2d          	call
 872:	89          	im 9
 873:	3d          	pushspadd
 874:	0d          	popsp
 875:	04          	poppc

00000876 <_Z19cmd_sst_aai_programPh>:
 876:	04          	poppc

00000877 <_Z16cmd_set_baudratePh>:
 877:	fc          	im -4
 878:	3d          	pushspadd
 879:	0d          	popsp
 87a:	76          	loadsp 24
 87b:	81          	im 1
 87c:	11          	addsp 4
 87d:	33          	loadb
 87e:	82          	im 2
 87f:	12          	addsp 8
 880:	33          	loadb
 881:	71          	loadsp 4
 882:	90          	im 16
 883:	2b          	ashiftleft
 884:	71          	loadsp 4
 885:	88          	im 8
 886:	2b          	ashiftleft
 887:	07          	or
 888:	83          	im 3
 889:	14          	addsp 16
 88a:	33          	loadb
 88b:	70          	loadsp 0
 88c:	72          	loadsp 8
 88d:	07          	or
 88e:	88          	im 8
 88f:	2b          	ashiftleft
 890:	84          	im 4
 891:	16          	addsp 24
 892:	33          	loadb
 893:	71          	loadsp 4
 894:	07          	or
 895:	51          	storesp 4
 896:	52          	storesp 8
 897:	53          	storesp 12
 898:	57          	storesp 28
 899:	57          	storesp 28
 89a:	54          	storesp 16
 89b:	52          	storesp 8
 89c:	88          	im 8
 89d:	51          	storesp 4
 89e:	8e          	im 14
 89f:	c8          	im -56
 8a0:	2d          	call
 8a1:	81          	im 1
 8a2:	ff          	im -1
 8a3:	51          	storesp 4
 8a4:	8a          	im 10
 8a5:	a0          	im 32
 8a6:	2d          	call
 8a7:	80          	im 0
 8a8:	c4          	im -60
 8a9:	80          	im 0
 8aa:	80          	im 0
 8ab:	84          	im 4
 8ac:	53          	storesp 12

000008ad <.L163>:
 8ad:	72          	loadsp 8
 8ae:	08          	load
 8af:	70          	loadsp 0
 8b0:	81          	im 1
 8b1:	2a          	lshiftright
 8b2:	70          	loadsp 0
 8b3:	81          	im 1
 8b4:	06          	and
 8b5:	51          	storesp 4
 8b6:	51          	storesp 4
 8b7:	52          	storesp 8
 8b8:	71          	loadsp 4
 8b9:	f3          	im -13
 8ba:	38          	neqbranch
 8bb:	73          	loadsp 12
 8bc:	84          	im 4
 8bd:	80          	im 0
 8be:	80          	im 0
 8bf:	07          	or
 8c0:	80          	im 0
 8c1:	c4          	im -60
 8c2:	80          	im 0
 8c3:	80          	im 0
 8c4:	84          	im 4
 8c5:	0c          	store
 8c6:	86          	im 6
 8c7:	3d          	pushspadd
 8c8:	0d          	popsp
 8c9:	04          	poppc

000008ca <_Z13cmd_waitreadyPh>:
 8ca:	fe          	im -2
 8cb:	3d          	pushspadd
 8cc:	0d          	popsp

000008cd <.L174>:
 8cd:	8e          	im 14
 8ce:	dd          	im -35
 8cf:	2d          	call
 8d0:	88          	im 8
 8d1:	08          	load
 8d2:	88          	im 8
 8d3:	08          	load
 8d4:	81          	im 1
 8d5:	06          	and
 8d6:	53          	storesp 12
 8d7:	53          	storesp 12
 8d8:	71          	loadsp 4
 8d9:	f3          	im -13
 8da:	38          	neqbranch
 8db:	8a          	im 10
 8dc:	f4          	im -12
 8dd:	2d          	call
 8de:	81          	im 1
 8df:	83          	im 3
 8e0:	51          	storesp 4
 8e1:	8a          	im 10
 8e2:	c0          	im -64
 8e3:	2d          	call
 8e4:	72          	loadsp 8
 8e5:	51          	storesp 4
 8e6:	8a          	im 10
 8e7:	c0          	im -64
 8e8:	2d          	call
 8e9:	8b          	im 11
 8ea:	89          	im 9
 8eb:	2d          	call
 8ec:	84          	im 4
 8ed:	3d          	pushspadd
 8ee:	0d          	popsp
 8ef:	04          	poppc

000008f0 <_Z11cmd_versionPh>:
 8f0:	fe          	im -2
 8f1:	3d          	pushspadd
 8f2:	0d          	popsp
 8f3:	80          	im 0
 8f4:	0b          	nop
 8f5:	9e          	im 30
 8f6:	94          	im 20
 8f7:	0c          	store
 8f8:	8a          	im 10
 8f9:	f4          	im -12
 8fa:	2d          	call
 8fb:	81          	im 1
 8fc:	81          	im 1
 8fd:	51          	storesp 4
 8fe:	8a          	im 10
 8ff:	c0          	im -64
 900:	2d          	call
 901:	9d          	im 29
 902:	e4          	im -28
 903:	53          	storesp 12
 904:	8f          	im 15
 905:	52          	storesp 8

00000906 <.L181>:
 906:	72          	loadsp 8
 907:	70          	loadsp 0
 908:	81          	im 1
 909:	05          	add
 90a:	54          	storesp 16
 90b:	33          	loadb
 90c:	51          	storesp 4
 90d:	8a          	im 10
 90e:	c0          	im -64
 90f:	2d          	call
 910:	ff          	im -1
 911:	12          	addsp 8
 912:	52          	storesp 8
 913:	71          	loadsp 4
 914:	ff          	im -1
 915:	2e          	eq
 916:	09          	not
 917:	81          	im 1
 918:	06          	and
 919:	ec          	im -20
 91a:	38          	neqbranch
 91b:	8b          	im 11
 91c:	89          	im 9
 91d:	2d          	call
 91e:	84          	im 4
 91f:	3d          	pushspadd
 920:	0d          	popsp
 921:	04          	poppc

00000922 <_Z12cmd_identifyPh>:
 922:	fe          	im -2
 923:	3d          	pushspadd
 924:	0d          	popsp
 925:	80          	im 0
 926:	0b          	nop
 927:	9e          	im 30
 928:	94          	im 20
 929:	0c          	store
 92a:	8a          	im 10
 92b:	f4          	im -12
 92c:	2d          	call
 92d:	81          	im 1
 92e:	82          	im 2
 92f:	51          	storesp 4
 930:	8a          	im 10
 931:	c0          	im -64
 932:	2d          	call
 933:	80          	im 0
 934:	c0          	im -64
 935:	80          	im 0
 936:	80          	im 0
 937:	84          	im 4
 938:	52          	storesp 8
 939:	8c          	im 12
 93a:	96          	im 22
 93b:	2d          	call
 93c:	81          	im 1
 93d:	f9          	im -7
 93e:	0a          	flip
 93f:	0b          	nop
 940:	80          	im 0
 941:	c0          	im -64
 942:	80          	im 0
 943:	80          	im 0
 944:	9c          	im 28
 945:	0c          	store
 946:	71          	loadsp 4
 947:	08          	load
 948:	72          	loadsp 8
 949:	52          	storesp 8
 94a:	53          	storesp 12
 94b:	8b          	im 11
 94c:	fe          	im -2
 94d:	2d          	call
 94e:	72          	loadsp 8
 94f:	9e          	im 30
 950:	9c          	im 28
 951:	0c          	store
 952:	72          	loadsp 8
 953:	90          	im 16
 954:	2a          	lshiftright
 955:	51          	storesp 4
 956:	8a          	im 10
 957:	c0          	im -64
 958:	2d          	call
 959:	9e          	im 30
 95a:	9c          	im 28
 95b:	08          	load
 95c:	88          	im 8
 95d:	2a          	lshiftright
 95e:	51          	storesp 4
 95f:	8a          	im 10
 960:	c0          	im -64
 961:	2d          	call
 962:	9e          	im 30
 963:	9c          	im 28
 964:	08          	load
 965:	51          	storesp 4
 966:	8a          	im 10
 967:	c0          	im -64
 968:	2d          	call
 969:	8e          	im 14
 96a:	dd          	im -35
 96b:	2d          	call
 96c:	88          	im 8
 96d:	08          	load
 96e:	51          	storesp 4
 96f:	8a          	im 10
 970:	c0          	im -64
 971:	2d          	call
 972:	8b          	im 11
 973:	89          	im 9
 974:	2d          	call
 975:	84          	im 4
 976:	3d          	pushspadd
 977:	0d          	popsp
 978:	04          	poppc

00000979 <_Z12cmd_enterpgmPh>:
 979:	80          	im 0
 97a:	3d          	pushspadd
 97b:	0d          	popsp
 97c:	81          	im 1
 97d:	0b          	nop
 97e:	9e          	im 30
 97f:	98          	im 24
 980:	0c          	store
 981:	80          	im 0
 982:	0b          	nop
 983:	83          	im 3
 984:	90          	im 16
 985:	0a          	flip
 986:	0c          	store
 987:	85          	im 5
 988:	51          	storesp 4
 989:	8e          	im 14
 98a:	c8          	im -56
 98b:	2d          	call
 98c:	82          	im 2
 98d:	3d          	pushspadd
 98e:	0d          	popsp
 98f:	04          	poppc

00000990 <_Z12cmd_leavepgmPh>:
 990:	80          	im 0
 991:	3d          	pushspadd
 992:	0d          	popsp
 993:	80          	im 0
 994:	0b          	nop
 995:	9e          	im 30
 996:	98          	im 24
 997:	0c          	store
 998:	8b          	im 11
 999:	e5          	im -27
 99a:	2d          	call
 99b:	86          	im 6
 99c:	51          	storesp 4
 99d:	8e          	im 14
 99e:	c8          	im -56
 99f:	2d          	call
 9a0:	82          	im 2
 9a1:	3d          	pushspadd
 9a2:	0d          	popsp
 9a3:	04          	poppc

000009a4 <_Z9cmd_startPh>:
 9a4:	fd          	im -3
 9a5:	3d          	pushspadd
 9a6:	0d          	popsp
 9a7:	80          	im 0
 9a8:	c0          	im -64
 9a9:	80          	im 0
 9aa:	80          	im 0
 9ab:	84          	im 4
 9ac:	54          	storesp 16
 9ad:	8a          	im 10
 9ae:	51          	storesp 4
 9af:	8e          	im 14
 9b0:	c8          	im -56
 9b1:	2d          	call
 9b2:	8c          	im 12
 9b3:	96          	im 22
 9b4:	2d          	call
 9b5:	9e          	im 30
 9b6:	88          	im 8
 9b7:	74          	loadsp 16
 9b8:	52          	storesp 8
 9b9:	53          	storesp 12
 9ba:	8c          	im 12
 9bb:	b8          	im 56
 9bc:	2d          	call
 9bd:	72          	loadsp 8
 9be:	88          	im 8
 9bf:	08          	load
 9c0:	10          	addsp 0
 9c1:	10          	addsp 0
 9c2:	84          	im 4
 9c3:	05          	add
 9c4:	71          	loadsp 4
 9c5:	70          	loadsp 0
 9c6:	84          	im 4
 9c7:	05          	add
 9c8:	53          	storesp 12
 9c9:	0c          	store
 9ca:	52          	storesp 8
 9cb:	fb          	im -5
 9cc:	80          	im 0
 9cd:	84          	im 4
 9ce:	a1          	im 33
 9cf:	ad          	im 45
 9d0:	72          	loadsp 8
 9d1:	0c          	store
 9d2:	9d          	im 29
 9d3:	e4          	im -28
 9d4:	0b          	nop
 9d5:	88          	im 8
 9d6:	14          	addsp 16
 9d7:	0c          	store
 9d8:	73          	loadsp 12
 9d9:	51          	storesp 4
 9da:	8b          	im 11
 9db:	fe          	im -2
 9dc:	2d          	call
 9dd:	8a          	im 10
 9de:	85          	im 5
 9df:	2d          	call
 9e0:	8c          	im 12
 9e1:	a9          	im 41
 9e2:	2d          	call
 9e3:	85          	im 5
 9e4:	3d          	pushspadd
 9e5:	0d          	popsp
 9e6:	04          	poppc

000009e7 <loadsketch>:
 9e7:	fc          	im -4
 9e8:	3d          	pushspadd
 9e9:	0d          	popsp
 9ea:	80          	im 0
 9eb:	c0          	im -64
 9ec:	80          	im 0
 9ed:	80          	im 0
 9ee:	84          	im 4
 9ef:	70          	loadsp 0
 9f0:	52          	storesp 8
 9f1:	55          	storesp 20
 9f2:	8b          	im 11
 9f3:	fe          	im -2
 9f4:	2d          	call
 9f5:	8c          	im 12
 9f6:	96          	im 22
 9f7:	2d          	call
 9f8:	8b          	im 11
 9f9:	75          	loadsp 20
 9fa:	0c          	store
 9fb:	76          	loadsp 24
 9fc:	80          	im 0
 9fd:	c0          	im -64
 9fe:	80          	im 0
 9ff:	80          	im 0
 a00:	94          	im 20
 a01:	0c          	store
 a02:	80          	im 0
 a03:	75          	loadsp 20
 a04:	0c          	store
 a05:	a0          	im 32
 a06:	80          	im 0
 a07:	54          	storesp 16
 a08:	77          	loadsp 28
 a09:	53          	storesp 12
 a0a:	83          	im 3
 a0b:	d0          	im -48
 a0c:	0a          	flip
 a0d:	52          	storesp 8
 a0e:	74          	loadsp 16
 a0f:	51          	storesp 4
 a10:	8c          	im 12
 a11:	d5          	im -43
 a12:	2d          	call
 a13:	74          	loadsp 16
 a14:	51          	storesp 4
 a15:	8b          	im 11
 a16:	fe          	im -2
 a17:	2d          	call
 a18:	8a          	im 10
 a19:	85          	im 5
 a1a:	2d          	call
 a1b:	8c          	im 12
 a1c:	a9          	im 41
 a1d:	2d          	call
 a1e:	74          	loadsp 16
 a1f:	88          	im 8
 a20:	0c          	store
 a21:	86          	im 6
 a22:	3d          	pushspadd
 a23:	0d          	popsp
 a24:	04          	poppc

00000a25 <main>:
 a25:	ff          	im -1
 a26:	ad          	im 45
 a27:	3d          	pushspadd
 a28:	0d          	popsp
 a29:	80          	im 0
 a2a:	0b          	nop
 a2b:	9e          	im 30
 a2c:	98          	im 24
 a2d:	0c          	store
 a2e:	80          	im 0
 a2f:	0b          	nop
 a30:	9e          	im 30
 a31:	94          	im 20
 a32:	0c          	store
 a33:	80          	im 0
 a34:	0b          	nop
 a35:	8e          	im 14
 a36:	ab          	im 43
 a37:	0b          	nop
 a38:	a0          	im 32
 a39:	80          	im 0
 a3a:	0c          	store
 a3b:	57          	storesp 28
 a3c:	84          	im 4
 a3d:	80          	im 0
 a3e:	ad          	im 45
 a3f:	0b          	nop
 a40:	80          	im 0
 a41:	c4          	im -60
 a42:	80          	im 0
 a43:	80          	im 0
 a44:	84          	im 4
 a45:	0c          	store
 a46:	80          	im 0
 a47:	c8          	im -56
 a48:	80          	im 0
 a49:	80          	im 0
 a4a:	a0          	im 32
 a4b:	53          	storesp 12
 a4c:	fd          	im -3
 a4d:	73          	loadsp 12
 a4e:	08          	load
 a4f:	70          	loadsp 0
 a50:	72          	loadsp 8
 a51:	06          	and
 a52:	75          	loadsp 20
 a53:	0c          	store
 a54:	53          	storesp 12
 a55:	54          	storesp 16
 a56:	80          	im 0
 a57:	c8          	im -56
 a58:	80          	im 0
 a59:	80          	im 0
 a5a:	90          	im 16
 a5b:	70          	loadsp 0
 a5c:	08          	load
 a5d:	70          	loadsp 0
 a5e:	76          	loadsp 24
 a5f:	06          	and
 a60:	72          	loadsp 8
 a61:	0c          	store
 a62:	53          	storesp 12
 a63:	53          	storesp 12
 a64:	81          	im 1
 a65:	90          	im 16
 a66:	0a          	flip
 a67:	70          	loadsp 0
 a68:	08          	load
 a69:	70          	loadsp 0
 a6a:	82          	im 2
 a6b:	07          	or
 a6c:	72          	loadsp 8
 a6d:	0c          	store
 a6e:	53          	storesp 12
 a6f:	53          	storesp 12
 a70:	a8          	im 40
 a71:	70          	loadsp 0
 a72:	98          	im 24
 a73:	e5          	im -27
 a74:	71          	loadsp 4
 a75:	70          	loadsp 0
 a76:	84          	im 4
 a77:	05          	add
 a78:	53          	storesp 12
 a79:	0c          	store
 a7a:	99          	im 25
 a7b:	c2          	im -62
 a7c:	71          	loadsp 4
 a7d:	0c          	store
 a7e:	53          	storesp 12
 a7f:	9a          	im 26
 a80:	db          	im -37
 a81:	0b          	nop
 a82:	88          	im 8
 a83:	12          	addsp 8
 a84:	0c          	store
 a85:	9b          	im 27
 a86:	ea          	im -22
 a87:	0b          	nop
 a88:	8c          	im 12
 a89:	12          	addsp 8
 a8a:	0c          	store
 a8b:	93          	im 19
 a8c:	e7          	im -25
 a8d:	0b          	nop
 a8e:	90          	im 16
 a8f:	12          	addsp 8
 a90:	0c          	store
 a91:	53          	storesp 12
 a92:	88          	im 8
 a93:	0b          	nop
 a94:	80          	im 0
 a95:	d0          	im -48
 a96:	80          	im 0
 a97:	80          	im 0
 a98:	84          	im 4
 a99:	0c          	store
 a9a:	81          	im 1
 a9b:	0b          	nop
 a9c:	80          	im 0
 a9d:	d0          	im -48
 a9e:	0a          	flip
 a9f:	0c          	store
 aa0:	8b          	im 11
 aa1:	e5          	im -27
 aa2:	2d          	call
 aa3:	82          	im 2
 aa4:	88          	im 8
 aa5:	88          	im 8
 aa6:	0b          	nop
 aa7:	80          	im 0
 aa8:	dc          	im -36
 aa9:	80          	im 0
 aaa:	80          	im 0
 aab:	84          	im 4
 aac:	0c          	store
 aad:	81          	im 1
 aae:	f4          	im -12
 aaf:	0b          	nop
 ab0:	90          	im 16
 ab1:	0a          	flip
 ab2:	0c          	store
 ab3:	80          	im 0
 ab4:	c0          	im -64
 ab5:	80          	im 0
 ab6:	80          	im 0
 ab7:	84          	im 4
 ab8:	70          	loadsp 0
 ab9:	52          	storesp 8
 aba:	52          	storesp 8
 abb:	8b          	im 11
 abc:	fe          	im -2
 abd:	2d          	call
 abe:	8c          	im 12
 abf:	96          	im 22
 ac0:	2d          	call
 ac1:	71          	loadsp 4
 ac2:	51          	storesp 4
 ac3:	8b          	im 11
 ac4:	fe          	im -2
 ac5:	2d          	call
 ac6:	76          	loadsp 24
 ac7:	77          	loadsp 28
 ac8:	8f          	im 15
 ac9:	3d          	pushspadd
 aca:	5e          	storesp 56
 acb:	5a          	storesp 40
 acc:	5a          	storesp 40
 acd:	83          	im 3
 ace:	d0          	im -48
 acf:	0a          	flip
 ad0:	5b          	storesp 44

00000ad1 <.L253>:
 ad1:	8b          	im 11
 ad2:	aa          	im 42
 ad3:	2d          	call
 ad4:	88          	im 8
 ad5:	08          	load
 ad6:	53          	storesp 12
 ad7:	78          	loadsp 32
 ad8:	80          	im 0
 ad9:	2e          	eq
 ada:	bc          	im 60
 adb:	38          	neqbranch

00000adc <.L257>:
 adc:	88          	im 8
 add:	08          	load
 ade:	80          	im 0
 adf:	fe          	im -2
 ae0:	2e          	eq
 ae1:	80          	im 0
 ae2:	d2          	im -46
 ae3:	38          	neqbranch
 ae4:	88          	im 8
 ae5:	08          	load
 ae6:	80          	im 0
 ae7:	fd          	im -3
 ae8:	2e          	eq
 ae9:	81          	im 1
 aea:	be          	im 62
 aeb:	38          	neqbranch
 aec:	76          	loadsp 24
 aed:	82          	im 2
 aee:	9f          	im 31
 aef:	26          	ulessthan
 af0:	bf          	im 63
 af1:	38          	neqbranch
 af2:	79          	loadsp 36
 af3:	80          	im 0
 af4:	2e          	eq
 af5:	89          	im 9
 af6:	38          	neqbranch
 af7:	80          	im 0
 af8:	0b          	nop
 af9:	88          	im 8
 afa:	08          	load
 afb:	a0          	im 32
 afc:	32          	xor
 afd:	54          	storesp 16
 afe:	5a          	storesp 40

00000aff <.L243>:
 aff:	80          	im 0
 b00:	d5          	im -43
 b01:	3d          	pushspadd
 b02:	77          	loadsp 28
 b03:	05          	add
 b04:	fd          	im -3
 b05:	e0          	im -32
 b06:	05          	add
 b07:	52          	storesp 8
 b08:	72          	loadsp 8
 b09:	72          	loadsp 8
 b0a:	34          	storeb
 b0b:	81          	im 1
 b0c:	17          	addsp 28
 b0d:	57          	storesp 28
 b0e:	8b          	im 11
 b0f:	aa          	im 42
 b10:	2d          	call
 b11:	88          	im 8
 b12:	08          	load
 b13:	53          	storesp 12
 b14:	78          	loadsp 32
 b15:	c6          	im -58
 b16:	38          	neqbranch

00000b17 <.L228>:
 b17:	88          	im 8
 b18:	08          	load
 b19:	80          	im 0
 b1a:	fe          	im -2
 b1b:	2e          	eq
 b1c:	09          	not
 b1d:	81          	im 1
 b1e:	06          	and
 b1f:	ff          	im -1
 b20:	b0          	im 48
 b21:	38          	neqbranch
 b22:	78          	loadsp 32
 b23:	57          	storesp 28
 b24:	83          	im 3
 b25:	ff          	im -1
 b26:	ff          	im -1
 b27:	7b          	loadsp 44
 b28:	0c          	store
 b29:	81          	im 1
 b2a:	77          	loadsp 28
 b2b:	5b          	storesp 44
 b2c:	59          	storesp 36
 b2d:	ff          	im -1
 b2e:	a2          	im 34
 b2f:	39          	poppcrel

00000b30 <.L242>:
 b30:	80          	im 0
 b31:	59          	storesp 36
 b32:	ff          	im -1
 b33:	9d          	im 29
 b34:	39          	poppcrel

00000b35 <.L255>:
 b35:	76          	loadsp 24
 b36:	80          	im 0
 b37:	2e          	eq
 b38:	ff          	im -1
 b39:	97          	im 23
 b3a:	38          	neqbranch
 b3b:	80          	im 0
 b3c:	7c          	loadsp 48
 b3d:	78          	loadsp 32
 b3e:	58          	storesp 32
 b3f:	56          	storesp 24
 b40:	59          	storesp 36
 b41:	82          	im 2
 b42:	77          	loadsp 28
 b43:	27          	ulessthanorequal
 b44:	ff          	im -1
 b45:	8b          	im 11
 b46:	38          	neqbranch
 b47:	83          	im 3
 b48:	ff          	im -1
 b49:	ff          	im -1
 b4a:	7b          	loadsp 44
 b4b:	0c          	store
 b4c:	78          	loadsp 32
 b4d:	fe          	im -2
 b4e:	18          	addsp 32
 b4f:	53          	storesp 12
 b50:	53          	storesp 12
 b51:	78          	loadsp 32
 b52:	72          	loadsp 8
 b53:	27          	ulessthanorequal
 b54:	98          	im 24
 b55:	38          	neqbranch
 b56:	80          	im 0
 b57:	dc          	im -36
 b58:	80          	im 0
 b59:	80          	im 0
 b5a:	88          	im 8
 b5b:	72          	loadsp 8
 b5c:	55          	storesp 20
 b5d:	58          	storesp 32

00000b5e <.L236>:
 b5e:	72          	loadsp 8
 b5f:	15          	addsp 20
 b60:	70          	loadsp 0
 b61:	33          	loadb
 b62:	79          	loadsp 36
 b63:	0c          	store
 b64:	52          	storesp 8
 b65:	81          	im 1
 b66:	13          	addsp 12
 b67:	53          	storesp 12
 b68:	73          	loadsp 12
 b69:	73          	loadsp 12
 b6a:	26          	ulessthan
 b6b:	f2          	im -14
 b6c:	38          	neqbranch

00000b6d <.L249>:
 b6d:	ff          	im -1
 b6e:	16          	addsp 24
 b6f:	75          	loadsp 20
 b70:	11          	addsp 4
 b71:	54          	storesp 16
 b72:	75          	loadsp 20
 b73:	05          	add
 b74:	ff          	im -1
 b75:	05          	add
 b76:	70          	loadsp 0
 b77:	33          	loadb
 b78:	74          	loadsp 16
 b79:	33          	loadb
 b7a:	70          	loadsp 0
 b7b:	72          	loadsp 8
 b7c:	88          	im 8
 b7d:	2b          	ashiftleft
 b7e:	07          	or
 b7f:	7e          	loadsp 56
 b80:	08          	load
 b81:	53          	storesp 12
 b82:	51          	storesp 4
 b83:	55          	storesp 20
 b84:	51          	storesp 4
 b85:	52          	storesp 8
 b86:	71          	loadsp 4
 b87:	73          	loadsp 12
 b88:	2e          	eq
 b89:	09          	not
 b8a:	81          	im 1
 b8b:	06          	and
 b8c:	fe          	im -2
 b8d:	c3          	im -61
 b8e:	38          	neqbranch
 b8f:	74          	loadsp 16
 b90:	33          	loadb
 b91:	53          	storesp 12
 b92:	72          	loadsp 8
 b93:	8a          	im 10
 b94:	26          	ulessthan
 b95:	fe          	im -2
 b96:	ba          	im 58
 b97:	38          	neqbranch
 b98:	72          	loadsp 8
 b99:	10          	addsp 0
 b9a:	10          	addsp 0
 b9b:	9d          	im 29
 b9c:	b8          	im 56
 b9d:	05          	add
 b9e:	75          	loadsp 20
 b9f:	52          	storesp 8
 ba0:	70          	loadsp 0
 ba1:	08          	load
 ba2:	51          	storesp 4
 ba3:	52          	storesp 8
 ba4:	71          	loadsp 4
 ba5:	2d          	call
 ba6:	fe          	im -2
 ba7:	a9          	im 41
 ba8:	39          	poppcrel

00000ba9 <.L256>:
 ba9:	81          	im 1
 baa:	5a          	storesp 40
 bab:	fe          	im -2
 bac:	a4          	im 36
 bad:	39          	poppcrel

00000bae <___zpu_interrupt_vector>:
 bae:	80          	im 0
 baf:	3d          	pushspadd
 bb0:	0d          	popsp
 bb1:	88          	im 8
 bb2:	08          	load
 bb3:	8c          	im 12
 bb4:	08          	load
 bb5:	90          	im 16
 bb6:	08          	load
 bb7:	a0          	im 32
 bb8:	80          	im 0
 bb9:	08          	load
 bba:	51          	storesp 4
 bbb:	70          	loadsp 0
 bbc:	2d          	call
 bbd:	90          	im 16
 bbe:	0c          	store
 bbf:	8c          	im 12
 bc0:	0c          	store
 bc1:	8a          	im 10
 bc2:	0c          	store
 bc3:	81          	im 1
 bc4:	0b          	nop
 bc5:	80          	im 0
 bc6:	d0          	im -48
 bc7:	0a          	flip
 bc8:	0c          	store
 bc9:	82          	im 2
 bca:	3d          	pushspadd
 bcb:	0d          	popsp
 bcc:	04          	poppc

00000bcd <_premain>:
 bcd:	ff          	im -1
 bce:	3d          	pushspadd
 bcf:	0d          	popsp
 bd0:	80          	im 0
 bd1:	52          	storesp 8
 bd2:	80          	im 0
 bd3:	51          	storesp 4
 bd4:	94          	im 20
 bd5:	a5          	im 37
 bd6:	2d          	call
 bd7:	83          	im 3
 bd8:	3d          	pushspadd
 bd9:	0d          	popsp
 bda:	04          	poppc

00000bdb <spi_copy>:
 bdb:	81          	im 1
 bdc:	ff          	im -1
 bdd:	f8          	im -8
 bde:	0d          	popsp
 bdf:	8d          	im 13
 be0:	90          	im 16
 be1:	04          	poppc

00000be2 <start_sketch>:
 be2:	81          	im 1
 be3:	ff          	im -1
 be4:	f8          	im -8
 be5:	0d          	popsp
 be6:	a0          	im 32
 be7:	88          	im 8
 be8:	04          	poppc

00000be9 <__divsi3>:
 be9:	fb          	im -5
 bea:	3d          	pushspadd
 beb:	0d          	popsp
 bec:	77          	loadsp 28
 bed:	79          	loadsp 36
 bee:	55          	storesp 20
 bef:	55          	storesp 20
 bf0:	80          	im 0
 bf1:	56          	storesp 24
 bf2:	75          	loadsp 20
 bf3:	75          	loadsp 20
 bf4:	24          	lessthan
 bf5:	ab          	im 43
 bf6:	38          	neqbranch
 bf7:	80          	im 0
 bf8:	74          	loadsp 16
 bf9:	24          	lessthan
 bfa:	9d          	im 29
 bfb:	38          	neqbranch

00000bfc <.L4>:
 bfc:	80          	im 0
 bfd:	53          	storesp 12
 bfe:	73          	loadsp 12
 bff:	52          	storesp 8
 c00:	74          	loadsp 16
 c01:	51          	storesp 4
 c02:	80          	im 0
 c03:	e1          	im -31
 c04:	3f          	callpcrel
 c05:	88          	im 8
 c06:	08          	load
 c07:	54          	storesp 16
 c08:	75          	loadsp 20
 c09:	80          	im 0
 c0a:	2e          	eq
 c0b:	85          	im 5
 c0c:	38          	neqbranch
 c0d:	88          	im 8
 c0e:	08          	load
 c0f:	30          	neg
 c10:	54          	storesp 16

00000c11 <.L6>:
 c11:	73          	loadsp 12
 c12:	88          	im 8
 c13:	0c          	store
 c14:	87          	im 7
 c15:	3d          	pushspadd
 c16:	0d          	popsp
 c17:	04          	poppc

00000c18 <.L9>:
 c18:	73          	loadsp 12
 c19:	30          	neg
 c1a:	76          	loadsp 24
 c1b:	81          	im 1
 c1c:	32          	xor
 c1d:	57          	storesp 28
 c1e:	54          	storesp 16
 c1f:	dc          	im -36
 c20:	39          	poppcrel

00000c21 <.L8>:
 c21:	74          	loadsp 16
 c22:	30          	neg
 c23:	55          	storesp 20
 c24:	81          	im 1
 c25:	56          	storesp 24
 c26:	73          	loadsp 12
 c27:	80          	im 0
 c28:	25          	lessthanorequal
 c29:	d2          	im -46
 c2a:	38          	neqbranch
 c2b:	ec          	im -20
 c2c:	39          	poppcrel

00000c2d <__modsi3>:
 c2d:	fa          	im -6
 c2e:	3d          	pushspadd
 c2f:	0d          	popsp
 c30:	78          	loadsp 32
 c31:	7a          	loadsp 40
 c32:	57          	storesp 28
 c33:	55          	storesp 20
 c34:	80          	im 0
 c35:	57          	storesp 28
 c36:	76          	loadsp 24
 c37:	75          	loadsp 20
 c38:	24          	lessthan
 c39:	a4          	im 36
 c3a:	38          	neqbranch

00000c3b <.L11>:
 c3b:	75          	loadsp 20
 c3c:	9f          	im 31
 c3d:	2c          	ashiftright
 c3e:	54          	storesp 16
 c3f:	81          	im 1
 c40:	53          	storesp 12
 c41:	75          	loadsp 20
 c42:	74          	loadsp 16
 c43:	32          	xor
 c44:	74          	loadsp 16
 c45:	31          	sub
 c46:	52          	storesp 8
 c47:	74          	loadsp 16
 c48:	51          	storesp 4
 c49:	9b          	im 27
 c4a:	3f          	callpcrel
 c4b:	88          	im 8
 c4c:	08          	load
 c4d:	54          	storesp 16
 c4e:	76          	loadsp 24
 c4f:	80          	im 0
 c50:	2e          	eq
 c51:	85          	im 5
 c52:	38          	neqbranch
 c53:	88          	im 8
 c54:	08          	load
 c55:	30          	neg
 c56:	54          	storesp 16

00000c57 <.L13>:
 c57:	73          	loadsp 12
 c58:	88          	im 8
 c59:	0c          	store
 c5a:	88          	im 8
 c5b:	3d          	pushspadd
 c5c:	0d          	popsp
 c5d:	04          	poppc

00000c5e <.L15>:
 c5e:	74          	loadsp 16
 c5f:	30          	neg
 c60:	55          	storesp 20
 c61:	81          	im 1
 c62:	57          	storesp 28
 c63:	d7          	im -41
 c64:	39          	poppcrel

00000c65 <udivmodsi4>:
 c65:	fc          	im -4
 c66:	3d          	pushspadd
 c67:	0d          	popsp
 c68:	76          	loadsp 24
 c69:	78          	loadsp 32
 c6a:	53          	storesp 12
 c6b:	54          	storesp 16
 c6c:	81          	im 1
 c6d:	53          	storesp 12
 c6e:	80          	im 0
 c6f:	74          	loadsp 16
 c70:	73          	loadsp 12
 c71:	26          	ulessthan
 c72:	52          	storesp 8
 c73:	55          	storesp 20
 c74:	72          	loadsp 8
 c75:	80          	im 0
 c76:	2e          	eq
 c77:	98          	im 24
 c78:	38          	neqbranch

00000c79 <.L16>:
 c79:	70          	loadsp 0
 c7a:	80          	im 0
 c7b:	2e          	eq
 c7c:	a9          	im 41
 c7d:	38          	neqbranch
 c7e:	80          	im 0
 c7f:	72          	loadsp 8
 c80:	24          	lessthan
 c81:	a4          	im 36
 c82:	38          	neqbranch
 c83:	71          	loadsp 4
 c84:	10          	addsp 0
 c85:	73          	loadsp 12
 c86:	10          	addsp 0
 c87:	75          	loadsp 20
 c88:	72          	loadsp 8
 c89:	26          	ulessthan
 c8a:	53          	storesp 12
 c8b:	54          	storesp 16
 c8c:	52          	storesp 8
 c8d:	72          	loadsp 8
 c8e:	ea          	im -22
 c8f:	38          	neqbranch

00000c90 <.L13>:
 c90:	73          	loadsp 12
 c91:	51          	storesp 4
 c92:	78          	loadsp 32
 c93:	83          	im 3
 c94:	38          	neqbranch
 c95:	74          	loadsp 16
 c96:	51          	storesp 4

00000c97 <.L1>:
 c97:	70          	loadsp 0
 c98:	88          	im 8
 c99:	0c          	store
 c9a:	86          	im 6
 c9b:	3d          	pushspadd
 c9c:	0d          	popsp
 c9d:	04          	poppc

00000c9e <.L9>:
 c9e:	72          	loadsp 8
 c9f:	81          	im 1
 ca0:	2a          	lshiftright
 ca1:	72          	loadsp 8
 ca2:	81          	im 1
 ca3:	2a          	lshiftright
 ca4:	53          	storesp 12
 ca5:	53          	storesp 12

00000ca6 <.L3>:
 ca6:	72          	loadsp 8
 ca7:	80          	im 0
 ca8:	2e          	eq
 ca9:	e6          	im -26
 caa:	38          	neqbranch
 cab:	71          	loadsp 4
 cac:	74          	loadsp 16
 cad:	26          	ulessthan
 cae:	ef          	im -17
 caf:	38          	neqbranch
 cb0:	73          	loadsp 12
 cb1:	72          	loadsp 8
 cb2:	31          	sub
 cb3:	75          	loadsp 20
 cb4:	74          	loadsp 16
 cb5:	07          	or
 cb6:	74          	loadsp 16
 cb7:	81          	im 1
 cb8:	2a          	lshiftright
 cb9:	74          	loadsp 16
 cba:	81          	im 1
 cbb:	2a          	lshiftright
 cbc:	55          	storesp 20
 cbd:	55          	storesp 20
 cbe:	56          	storesp 24
 cbf:	54          	storesp 16
 cc0:	e5          	im -27
 cc1:	39          	poppcrel

00000cc2 <memcpy>:
 cc2:	fc          	im -4
 cc3:	3d          	pushspadd
 cc4:	0d          	popsp
 cc5:	76          	loadsp 24

00000cc6 <.LM2>:
 cc6:	70          	loadsp 0

00000cc7 <.LM3>:
 cc7:	79          	loadsp 36

00000cc8 <.LM4>:
 cc8:	7b          	loadsp 44
 cc9:	55          	storesp 20
 cca:	55          	storesp 20
 ccb:	55          	storesp 20
 ccc:	55          	storesp 20

00000ccd <.LM5>:
 ccd:	8f          	im 15
 cce:	72          	loadsp 8
 ccf:	27          	ulessthanorequal
 cd0:	8c          	im 12
 cd1:	38          	neqbranch
 cd2:	72          	loadsp 8
 cd3:	75          	loadsp 20
 cd4:	07          	or
 cd5:	83          	im 3
 cd6:	06          	and
 cd7:	51          	storesp 4
 cd8:	70          	loadsp 0
 cd9:	80          	im 0
 cda:	2e          	eq
 cdb:	a7          	im 39
 cdc:	38          	neqbranch

00000cdd <.L2>:
 cdd:	ff          	im -1
 cde:	12          	addsp 8
 cdf:	52          	storesp 8
 ce0:	71          	loadsp 4
 ce1:	ff          	im -1
 ce2:	2e          	eq
 ce3:	98          	im 24
 ce4:	38          	neqbranch

00000ce5 <.L21>:
 ce5:	72          	loadsp 8
 ce6:	70          	loadsp 0
 ce7:	81          	im 1
 ce8:	05          	add
 ce9:	54          	storesp 16
 cea:	33          	loadb
 ceb:	74          	loadsp 16
 cec:	70          	loadsp 0
 ced:	81          	im 1
 cee:	05          	add
 cef:	56          	storesp 24
 cf0:	34          	storeb
 cf1:	ff          	im -1
 cf2:	12          	addsp 8
 cf3:	52          	storesp 8
 cf4:	71          	loadsp 4
 cf5:	ff          	im -1
 cf6:	2e          	eq
 cf7:	09          	not
 cf8:	81          	im 1
 cf9:	06          	and
 cfa:	ea          	im -22
 cfb:	38          	neqbranch

00000cfc <.L17>:
 cfc:	74          	loadsp 16
 cfd:	88          	im 8
 cfe:	0c          	store
 cff:	86          	im 6
 d00:	3d          	pushspadd
 d01:	0d          	popsp
 d02:	04          	poppc

00000d03 <.L20>:
 d03:	74          	loadsp 16
 d04:	51          	storesp 4

00000d05 <.L5>:
 d05:	72          	loadsp 8
 d06:	70          	loadsp 0
 d07:	84          	im 4
 d08:	05          	add
 d09:	54          	storesp 16
 d0a:	08          	load
 d0b:	71          	loadsp 4
 d0c:	70          	loadsp 0
 d0d:	84          	im 4
 d0e:	05          	add
 d0f:	53          	storesp 12
 d10:	0c          	store

00000d11 <.LM10>:
 d11:	72          	loadsp 8
 d12:	70          	loadsp 0
 d13:	84          	im 4
 d14:	05          	add
 d15:	54          	storesp 16
 d16:	08          	load
 d17:	71          	loadsp 4
 d18:	70          	loadsp 0
 d19:	84          	im 4
 d1a:	05          	add
 d1b:	53          	storesp 12
 d1c:	0c          	store

00000d1d <.LM11>:
 d1d:	72          	loadsp 8
 d1e:	70          	loadsp 0
 d1f:	84          	im 4
 d20:	05          	add
 d21:	54          	storesp 16
 d22:	08          	load
 d23:	71          	loadsp 4
 d24:	70          	loadsp 0
 d25:	84          	im 4
 d26:	05          	add
 d27:	53          	storesp 12
 d28:	0c          	store

00000d29 <.LM12>:
 d29:	72          	loadsp 8
 d2a:	70          	loadsp 0
 d2b:	84          	im 4
 d2c:	05          	add
 d2d:	54          	storesp 16
 d2e:	08          	load
 d2f:	71          	loadsp 4
 d30:	70          	loadsp 0
 d31:	84          	im 4
 d32:	05          	add
 d33:	53          	storesp 12
 d34:	0c          	store

00000d35 <.LM13>:
 d35:	f0          	im -16
 d36:	12          	addsp 8
 d37:	52          	storesp 8
 d38:	71          	loadsp 4
 d39:	8f          	im 15
 d3a:	26          	ulessthan
 d3b:	c9          	im -55
 d3c:	38          	neqbranch

00000d3d <.LM14>:
 d3d:	83          	im 3
 d3e:	72          	loadsp 8
 d3f:	27          	ulessthanorequal
 d40:	95          	im 21
 d41:	38          	neqbranch

00000d42 <.L22>:
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

00000d4e <.LM16>:
 d4e:	fc          	im -4
 d4f:	12          	addsp 8
 d50:	52          	storesp 8
 d51:	71          	loadsp 4
 d52:	83          	im 3
 d53:	26          	ulessthan
 d54:	ed          	im -19
 d55:	38          	neqbranch

00000d56 <.L15>:
 d56:	70          	loadsp 0
 d57:	54          	storesp 16
 d58:	ff          	im -1
 d59:	83          	im 3
 d5a:	39          	poppcrel

00000d5b <memset>:
 d5b:	fc          	im -4
 d5c:	3d          	pushspadd
 d5d:	0d          	popsp
 d5e:	76          	loadsp 24
 d5f:	79          	loadsp 36

00000d60 <.LM2>:
 d60:	71          	loadsp 4

00000d61 <.LM3>:
 d61:	02          	pushsp
 d62:	8c          	im 12
 d63:	05          	add
 d64:	9f          	im 31
 d65:	05          	add
 d66:	33          	loadb
 d67:	57          	storesp 28
 d68:	55          	storesp 20
 d69:	53          	storesp 12
 d6a:	55          	storesp 20

00000d6b <.LM4>:
 d6b:	83          	im 3
 d6c:	72          	loadsp 8
 d6d:	27          	ulessthanorequal
 d6e:	8a          	im 10
 d6f:	38          	neqbranch
 d70:	74          	loadsp 16
 d71:	83          	im 3
 d72:	06          	and
 d73:	51          	storesp 4
 d74:	70          	loadsp 0
 d75:	80          	im 0
 d76:	2e          	eq
 d77:	a2          	im 34
 d78:	38          	neqbranch

00000d79 <.L2>:
 d79:	ff          	im -1
 d7a:	12          	addsp 8
 d7b:	52          	storesp 8
 d7c:	71          	loadsp 4
 d7d:	ff          	im -1
 d7e:	2e          	eq
 d7f:	93          	im 19
 d80:	38          	neqbranch

00000d81 <.L27>:
 d81:	73          	loadsp 12
 d82:	73          	loadsp 12
 d83:	70          	loadsp 0
 d84:	81          	im 1
 d85:	05          	add
 d86:	55          	storesp 20
 d87:	34          	storeb
 d88:	ff          	im -1
 d89:	12          	addsp 8
 d8a:	52          	storesp 8
 d8b:	71          	loadsp 4
 d8c:	ff          	im -1
 d8d:	2e          	eq
 d8e:	09          	not
 d8f:	81          	im 1
 d90:	06          	and
 d91:	ef          	im -17
 d92:	38          	neqbranch

00000d93 <.L23>:
 d93:	74          	loadsp 16
 d94:	88          	im 8
 d95:	0c          	store
 d96:	86          	im 6
 d97:	3d          	pushspadd
 d98:	0d          	popsp
 d99:	04          	poppc

00000d9a <.L26>:
 d9a:	74          	loadsp 16

00000d9b <.LM8>:
 d9b:	74          	loadsp 16
 d9c:	88          	im 8
 d9d:	2b          	ashiftleft
 d9e:	75          	loadsp 20
 d9f:	07          	or

00000da0 <.LM9>:
 da0:	70          	loadsp 0
 da1:	71          	loadsp 4
 da2:	90          	im 16
 da3:	2b          	ashiftleft
 da4:	07          	or
 da5:	51          	storesp 4
 da6:	54          	storesp 16
 da7:	51          	storesp 4

00000da8 <.LM10>:
 da8:	8f          	im 15
 da9:	72          	loadsp 8
 daa:	27          	ulessthanorequal
 dab:	a5          	im 37
 dac:	38          	neqbranch

00000dad <.L28>:
 dad:	72          	loadsp 8
 dae:	71          	loadsp 4
 daf:	70          	loadsp 0
 db0:	84          	im 4
 db1:	05          	add
 db2:	53          	storesp 12
 db3:	0c          	store

00000db4 <.LM12>:
 db4:	72          	loadsp 8
 db5:	71          	loadsp 4
 db6:	70          	loadsp 0
 db7:	84          	im 4
 db8:	05          	add
 db9:	53          	storesp 12
 dba:	0c          	store

00000dbb <.LM13>:
 dbb:	72          	loadsp 8
 dbc:	71          	loadsp 4
 dbd:	70          	loadsp 0
 dbe:	84          	im 4
 dbf:	05          	add
 dc0:	53          	storesp 12
 dc1:	0c          	store

00000dc2 <.LM14>:
 dc2:	72          	loadsp 8
 dc3:	71          	loadsp 4
 dc4:	70          	loadsp 0
 dc5:	84          	im 4
 dc6:	05          	add
 dc7:	53          	storesp 12
 dc8:	0c          	store

00000dc9 <.LM15>:
 dc9:	f0          	im -16
 dca:	12          	addsp 8
 dcb:	52          	storesp 8
 dcc:	71          	loadsp 4
 dcd:	8f          	im 15
 dce:	26          	ulessthan
 dcf:	dd          	im -35
 dd0:	38          	neqbranch

00000dd1 <.L19>:
 dd1:	83          	im 3
 dd2:	72          	loadsp 8
 dd3:	27          	ulessthanorequal
 dd4:	90          	im 16
 dd5:	38          	neqbranch

00000dd6 <.L29>:
 dd6:	72          	loadsp 8
 dd7:	71          	loadsp 4
 dd8:	70          	loadsp 0
 dd9:	84          	im 4
 dda:	05          	add
 ddb:	53          	storesp 12
 ddc:	0c          	store

00000ddd <.LM18>:
 ddd:	fc          	im -4
 dde:	12          	addsp 8
 ddf:	52          	storesp 8
 de0:	71          	loadsp 4
 de1:	83          	im 3
 de2:	26          	ulessthan
 de3:	f2          	im -14
 de4:	38          	neqbranch

00000de5 <.L21>:
 de5:	70          	loadsp 0
 de6:	53          	storesp 12
 de7:	ff          	im -1
 de8:	90          	im 16
 de9:	39          	poppcrel

00000dea <strcmp>:
 dea:	fb          	im -5
 deb:	3d          	pushspadd
 dec:	0d          	popsp
 ded:	77          	loadsp 28
 dee:	79          	loadsp 36

00000def <.LM2>:
 def:	70          	loadsp 0
 df0:	72          	loadsp 8
 df1:	07          	or
 df2:	83          	im 3
 df3:	06          	and
 df4:	53          	storesp 12
 df5:	54          	storesp 16
 df6:	52          	storesp 8
 df7:	70          	loadsp 0
 df8:	93          	im 19
 df9:	38          	neqbranch

00000dfa <.LM3>:
 dfa:	71          	loadsp 4

00000dfb <.LM4>:
 dfb:	73          	loadsp 12

00000dfc <.LM5>:
 dfc:	73          	loadsp 12
 dfd:	08          	load
 dfe:	54          	storesp 16
 dff:	56          	storesp 24
 e00:	54          	storesp 16
 e01:	71          	loadsp 4
 e02:	73          	loadsp 12
 e03:	08          	load
 e04:	2e          	eq
 e05:	80          	im 0
 e06:	c4          	im -60
 e07:	38          	neqbranch

00000e08 <.LM6>:
 e08:	73          	loadsp 12

00000e09 <.LM7>:
 e09:	75          	loadsp 20
 e0a:	54          	storesp 16
 e0b:	52          	storesp 8

00000e0c <.L2>:
 e0c:	71          	loadsp 4
 e0d:	33          	loadb
 e0e:	70          	loadsp 0
 e0f:	81          	im 1
 e10:	ff          	im -1
 e11:	06          	and
 e12:	52          	storesp 8
 e13:	54          	storesp 16
 e14:	70          	loadsp 0
 e15:	80          	im 0
 e16:	2e          	eq
 e17:	9d          	im 29
 e18:	38          	neqbranch

00000e19 <.L18>:
 e19:	72          	loadsp 8
 e1a:	33          	loadb
 e1b:	55          	storesp 20
 e1c:	70          	loadsp 0
 e1d:	75          	loadsp 20
 e1e:	2e          	eq
 e1f:	09          	not
 e20:	81          	im 1
 e21:	06          	and
 e22:	95          	im 21
 e23:	38          	neqbranch

00000e24 <.LM9>:
 e24:	81          	im 1
 e25:	12          	addsp 8

00000e26 <.LM10>:
 e26:	81          	im 1
 e27:	14          	addsp 16
 e28:	71          	loadsp 4
 e29:	33          	loadb
 e2a:	70          	loadsp 0
 e2b:	81          	im 1
 e2c:	ff          	im -1
 e2d:	06          	and
 e2e:	54          	storesp 16
 e2f:	56          	storesp 24
 e30:	54          	storesp 16
 e31:	52          	storesp 8
 e32:	70          	loadsp 0
 e33:	e5          	im -27
 e34:	38          	neqbranch

00000e35 <.L14>:
 e35:	72          	loadsp 8
 e36:	33          	loadb
 e37:	55          	storesp 20

00000e38 <.L8>:
 e38:	73          	loadsp 12
 e39:	81          	im 1
 e3a:	ff          	im -1
 e3b:	06          	and
 e3c:	75          	loadsp 20
 e3d:	81          	im 1
 e3e:	ff          	im -1
 e3f:	06          	and
 e40:	71          	loadsp 4
 e41:	71          	loadsp 4
 e42:	31          	sub

00000e43 <.LM12>:
 e43:	88          	im 8
 e44:	0c          	store
 e45:	52          	storesp 8
 e46:	52          	storesp 8
 e47:	87          	im 7
 e48:	3d          	pushspadd
 e49:	0d          	popsp
 e4a:	04          	poppc

00000e4b <.L6>:
 e4b:	71          	loadsp 4
 e4c:	09          	not
 e4d:	70          	loadsp 0
 e4e:	f7          	im -9
 e4f:	fb          	im -5
 e50:	fd          	im -3
 e51:	ff          	im -1
 e52:	14          	addsp 16
 e53:	06          	and
 e54:	70          	loadsp 0
 e55:	f8          	im -8
 e56:	84          	im 4
 e57:	82          	im 2
 e58:	81          	im 1
 e59:	80          	im 0
 e5a:	06          	and
 e5b:	51          	storesp 4
 e5c:	51          	storesp 4
 e5d:	51          	storesp 4
 e5e:	70          	loadsp 0
 e5f:	97          	im 23
 e60:	38          	neqbranch

00000e61 <.LM14>:
 e61:	84          	im 4
 e62:	14          	addsp 16

00000e63 <.LM15>:
 e63:	84          	im 4
 e64:	16          	addsp 24
 e65:	71          	loadsp 4
 e66:	08          	load
 e67:	54          	storesp 16
 e68:	56          	storesp 24
 e69:	54          	storesp 16
 e6a:	71          	loadsp 4
 e6b:	75          	loadsp 20
 e6c:	08          	load
 e6d:	2e          	eq
 e6e:	dc          	im -36
 e6f:	38          	neqbranch

00000e70 <.LM16>:
 e70:	73          	loadsp 12

00000e71 <.LM17>:
 e71:	75          	loadsp 20
 e72:	54          	storesp 16
 e73:	52          	storesp 8
 e74:	ff          	im -1
 e75:	96          	im 22
 e76:	39          	poppcrel

00000e77 <.L15>:
 e77:	80          	im 0

00000e78 <.LM19>:
 e78:	0b          	nop
 e79:	88          	im 8
 e7a:	0c          	store
 e7b:	87          	im 7
 e7c:	3d          	pushspadd
 e7d:	0d          	popsp
 e7e:	04          	poppc

00000e7f <__do_global_ctors_aux>:
 e7f:	ff          	im -1
 e80:	3d          	pushspadd
 e81:	0d          	popsp
 e82:	9e          	im 30
 e83:	a4          	im 36
 e84:	0b          	nop
 e85:	fc          	im -4
 e86:	05          	add
 e87:	70          	loadsp 0
 e88:	08          	load
 e89:	52          	storesp 8
 e8a:	52          	storesp 8
 e8b:	70          	loadsp 0
 e8c:	ff          	im -1
 e8d:	2e          	eq
 e8e:	91          	im 17
 e8f:	38          	neqbranch

00000e90 <.L10>:
 e90:	70          	loadsp 0
 e91:	2d          	call
 e92:	fc          	im -4
 e93:	12          	addsp 8
 e94:	70          	loadsp 0
 e95:	08          	load
 e96:	52          	storesp 8
 e97:	52          	storesp 8
 e98:	70          	loadsp 0
 e99:	ff          	im -1
 e9a:	2e          	eq
 e9b:	09          	not
 e9c:	81          	im 1
 e9d:	06          	and
 e9e:	f1          	im -15
 e9f:	38          	neqbranch

00000ea0 <.L7>:
 ea0:	83          	im 3
 ea1:	3d          	pushspadd
 ea2:	0d          	popsp
 ea3:	04          	poppc

00000ea4 <call___do_global_ctors_aux>:
 ea4:	04          	poppc
Disassembly of section .fini:

00000ea5 <_fini>:
 ea5:	eb          	im -21
 ea6:	f8          	im -8
 ea7:	3f          	callpcrel
 ea8:	04          	poppc
Disassembly of section .rodata:

00000eac <_mask>:
 eac:	00          	breakpoint
 ead:	ff          	im -1
 eae:	ff          	im -1
 eaf:	ff          	im -1
 eb0:	ff          	im -1
 eb1:	00          	breakpoint
 eb2:	ff          	im -1
 eb3:	ff          	im -1
 eb4:	ff          	im -1
 eb5:	ff          	im -1
 eb6:	00          	breakpoint
 eb7:	ff          	im -1
 eb8:	ff          	im -1
 eb9:	ff          	im -1
 eba:	ff          	im -1
	...

00000ebc <handlers>:
 ebc:	00          	breakpoint
 ebd:	00          	breakpoint
 ebe:	08          	load
 ebf:	f0          	im -16
 ec0:	00          	breakpoint
 ec1:	00          	breakpoint
 ec2:	09          	not
 ec3:	22          	loadh
 ec4:	00          	breakpoint
 ec5:	00          	breakpoint
 ec6:	08          	load
 ec7:	ca          	im -54
 ec8:	00          	breakpoint
 ec9:	00          	breakpoint
 eca:	07          	or
 ecb:	e0          	im -32
 ecc:	00          	breakpoint
 ecd:	00          	breakpoint
 ece:	09          	not
 ecf:	79          	loadsp 36
 ed0:	00          	breakpoint
 ed1:	00          	breakpoint
 ed2:	09          	not
 ed3:	90          	im 16
 ed4:	00          	breakpoint
 ed5:	00          	breakpoint
 ed6:	08          	load
 ed7:	76          	loadsp 24
 ed8:	00          	breakpoint
 ed9:	00          	breakpoint
 eda:	08          	load
 edb:	77          	loadsp 28
 edc:	00          	breakpoint
 edd:	00          	breakpoint
 ede:	07          	or
 edf:	83          	im 3
 ee0:	00          	breakpoint
 ee1:	00          	breakpoint
 ee2:	09          	not
 ee3:	a4          	im 36

00000ee4 <vstring>:
 ee4:	01          	.byte 1
 ee5:	09          	not
 ee6:	00          	breakpoint
 ee7:	00          	breakpoint
 ee8:	00          	breakpoint
 ee9:	00          	breakpoint
 eea:	6f          	loadsp 124
 eeb:	80          	im 0
 eec:	05          	add
 eed:	10          	addsp 0
 eee:	ff          	im -1
 eef:	40          	storesp 64
 ef0:	84          	im 4
 ef1:	01          	.byte 1
 ef2:	0f          	.byte 15
	...
Disassembly of section .data:

00000ef4 <__data_start>:
 ef4:	00          	breakpoint
 ef5:	00          	breakpoint
	...

00000ef8 <_cpu_config>:
 ef8:	00          	breakpoint
 ef9:	00          	breakpoint
	...

00000efc <__dso_handle>:
 efc:	00          	breakpoint
 efd:	00          	breakpoint
	...

00000f00 <p.0>:
 f00:	00          	breakpoint
 f01:	00          	breakpoint
 f02:	0f          	.byte 15
 f03:	2c          	ashiftright
Disassembly of section .bss:

00000f04 <completed.1>:
 f04:	00          	breakpoint
 f05:	00          	breakpoint
	...

00000f08 <bdata>:
	...

00000f14 <milisseconds>:
 f14:	00          	breakpoint
 f15:	00          	breakpoint
	...

00000f18 <inprogrammode>:
 f18:	00          	breakpoint
 f19:	00          	breakpoint
	...

00000f1c <flash_id>:
 f1c:	00          	breakpoint
 f1d:	00          	breakpoint
	...
Disassembly of section .ctors:

00000f20 <___ctors>:
 f20:	ff          	im -1
 f21:	ff          	im -1
 f22:	ff          	im -1
 f23:	ff          	im -1

00000f24 <__CTOR_END__>:
 f24:	00          	breakpoint
 f25:	00          	breakpoint
	...
Disassembly of section .dtors:

00000f28 <___dtors>:
 f28:	ff          	im -1
 f29:	ff          	im -1
 f2a:	ff          	im -1
 f2b:	ff          	im -1

00000f2c <__DTOR_END__>:
 f2c:	00          	breakpoint
 f2d:	00          	breakpoint
	...
Disassembly of section .jcr:

00000f30 <___jcr_begin>:
 f30:	00          	breakpoint
 f31:	00          	breakpoint
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
  53:	c2          	im -62
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
  73:	5b          	storesp 44
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
  92:	0d          	popsp
  93:	ea          	im -22
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
 188:	5b          	storesp 44
 189:	00          	breakpoint
 18a:	00          	breakpoint
 18b:	0c          	store
 18c:	c2          	im -62
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
 1ce:	c2          	im -62
 1cf:	00          	breakpoint
 1d0:	00          	breakpoint
 1d1:	0d          	popsp
 1d2:	5b          	storesp 44
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
 286:	0d          	popsp
 287:	ea          	im -22
 288:	00          	breakpoint
 289:	00          	breakpoint
 28a:	0d          	popsp
 28b:	5b          	storesp 44
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
 30d:	5b          	storesp 44
 30e:	00          	breakpoint
 30f:	00          	breakpoint
 310:	0d          	popsp
 311:	ea          	im -22
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
 38b:	7f          	loadsp 60
 38c:	00          	breakpoint
 38d:	00          	breakpoint
 38e:	0d          	popsp
 38f:	ea          	im -22
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
 408:	0d          	popsp
 409:	ea          	im -22
 40a:	00          	breakpoint
 40b:	00          	breakpoint
 40c:	0e          	.byte 14
 40d:	7f          	loadsp 60
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
 351:	c2          	im -62
 352:	04          	poppc
 353:	02          	pushsp
 354:	4c          	storesp 112
 355:	00          	breakpoint
 356:	05          	add
 357:	02          	pushsp
 358:	00          	breakpoint
 359:	00          	breakpoint
 35a:	0c          	store
 35b:	c6          	im -58
 35c:	22          	loadh
 35d:	00          	breakpoint
 35e:	05          	add
 35f:	02          	pushsp
 360:	00          	breakpoint
 361:	00          	breakpoint
 362:	0c          	store
 363:	c7          	im -57
 364:	15          	addsp 20
 365:	00          	breakpoint
 366:	05          	add
 367:	02          	pushsp
 368:	00          	breakpoint
 369:	00          	breakpoint
 36a:	0c          	store
 36b:	c8          	im -56
 36c:	17          	addsp 28
 36d:	00          	breakpoint
 36e:	05          	add
 36f:	02          	pushsp
 370:	00          	breakpoint
 371:	00          	breakpoint
 372:	0c          	store
 373:	cd          	im -51
 374:	18          	addsp 32
 375:	00          	breakpoint
 376:	05          	add
 377:	02          	pushsp
 378:	00          	breakpoint
 379:	00          	breakpoint
 37a:	0c          	store
 37b:	dd          	im -35
 37c:	30          	neg
 37d:	00          	breakpoint
 37e:	05          	add
 37f:	02          	pushsp
 380:	00          	breakpoint
 381:	00          	breakpoint
 382:	0c          	store
 383:	fc          	im -4
 384:	18          	addsp 32
 385:	00          	breakpoint
 386:	05          	add
 387:	02          	pushsp
 388:	00          	breakpoint
 389:	00          	breakpoint
 38a:	0d          	popsp
 38b:	03          	.byte 3
 38c:	03          	.byte 3
 38d:	62          	loadsp 72
 38e:	01          	.byte 1
 38f:	00          	breakpoint
 390:	05          	add
 391:	02          	pushsp
 392:	00          	breakpoint
 393:	00          	breakpoint
 394:	0d          	popsp
 395:	05          	add
 396:	1a          	addsp 40
 397:	00          	breakpoint
 398:	05          	add
 399:	02          	pushsp
 39a:	00          	breakpoint
 39b:	00          	breakpoint
 39c:	0d          	popsp
 39d:	11          	addsp 4
 39e:	15          	addsp 20
 39f:	00          	breakpoint
 3a0:	05          	add
 3a1:	02          	pushsp
 3a2:	00          	breakpoint
 3a3:	00          	breakpoint
 3a4:	0d          	popsp
 3a5:	1d          	addsp 52
 3a6:	15          	addsp 20
 3a7:	00          	breakpoint
 3a8:	05          	add
 3a9:	02          	pushsp
 3aa:	00          	breakpoint
 3ab:	00          	breakpoint
 3ac:	0d          	popsp
 3ad:	29          	mult
 3ae:	15          	addsp 20
 3af:	00          	breakpoint
 3b0:	05          	add
 3b1:	02          	pushsp
 3b2:	00          	breakpoint
 3b3:	00          	breakpoint
 3b4:	0d          	popsp
 3b5:	35          	div
 3b6:	15          	addsp 20
 3b7:	00          	breakpoint
 3b8:	05          	add
 3b9:	02          	pushsp
 3ba:	00          	breakpoint
 3bb:	00          	breakpoint
 3bc:	0d          	popsp
 3bd:	3d          	pushspadd
 3be:	1b          	addsp 44
 3bf:	00          	breakpoint
 3c0:	05          	add
 3c1:	02          	pushsp
 3c2:	00          	breakpoint
 3c3:	00          	breakpoint
 3c4:	0d          	popsp
 3c5:	42          	storesp 72
 3c6:	13          	addsp 12
 3c7:	00          	breakpoint
 3c8:	05          	add
 3c9:	02          	pushsp
 3ca:	00          	breakpoint
 3cb:	00          	breakpoint
 3cc:	0d          	popsp
 3cd:	4e          	storesp 120
 3ce:	15          	addsp 20
 3cf:	00          	breakpoint
 3d0:	05          	add
 3d1:	02          	pushsp
 3d2:	00          	breakpoint
 3d3:	00          	breakpoint
 3d4:	0d          	popsp
 3d5:	56          	storesp 24
 3d6:	18          	addsp 32
 3d7:	00          	breakpoint
 3d8:	05          	add
 3d9:	02          	pushsp
 3da:	00          	breakpoint
 3db:	00          	breakpoint
 3dc:	0d          	popsp
 3dd:	5b          	storesp 44
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
 506:	5b          	storesp 44
 507:	04          	poppc
 508:	04          	poppc
 509:	42          	storesp 72
 50a:	00          	breakpoint
 50b:	05          	add
 50c:	02          	pushsp
 50d:	00          	breakpoint
 50e:	00          	breakpoint
 50f:	0d          	popsp
 510:	60          	loadsp 64
 511:	1f          	addsp 60
 512:	00          	breakpoint
 513:	05          	add
 514:	02          	pushsp
 515:	00          	breakpoint
 516:	00          	breakpoint
 517:	0d          	popsp
 518:	61          	loadsp 68
 519:	18          	addsp 32
 51a:	00          	breakpoint
 51b:	05          	add
 51c:	02          	pushsp
 51d:	00          	breakpoint
 51e:	00          	breakpoint
 51f:	0d          	popsp
 520:	6b          	loadsp 108
 521:	17          	addsp 28
 522:	00          	breakpoint
 523:	05          	add
 524:	02          	pushsp
 525:	00          	breakpoint
 526:	00          	breakpoint
 527:	0d          	popsp
 528:	79          	loadsp 36
 529:	3b          	pushpc
 52a:	00          	breakpoint
 52b:	05          	add
 52c:	02          	pushsp
 52d:	00          	breakpoint
 52e:	00          	breakpoint
 52f:	0d          	popsp
 530:	93          	im 19
 531:	19          	addsp 36
 532:	00          	breakpoint
 533:	05          	add
 534:	02          	pushsp
 535:	00          	breakpoint
 536:	00          	breakpoint
 537:	0d          	popsp
 538:	9a          	im 26
 539:	03          	.byte 3
 53a:	57          	storesp 28
 53b:	01          	.byte 1
 53c:	00          	breakpoint
 53d:	05          	add
 53e:	02          	pushsp
 53f:	00          	breakpoint
 540:	00          	breakpoint
 541:	0d          	popsp
 542:	9b          	im 27
 543:	1a          	addsp 40
 544:	00          	breakpoint
 545:	05          	add
 546:	02          	pushsp
 547:	00          	breakpoint
 548:	00          	breakpoint
 549:	0d          	popsp
 54a:	a0          	im 32
 54b:	15          	addsp 20
 54c:	00          	breakpoint
 54d:	05          	add
 54e:	02          	pushsp
 54f:	00          	breakpoint
 550:	00          	breakpoint
 551:	0d          	popsp
 552:	a8          	im 40
 553:	23          	storeh
 554:	00          	breakpoint
 555:	05          	add
 556:	02          	pushsp
 557:	00          	breakpoint
 558:	00          	breakpoint
 559:	0d          	popsp
 55a:	ad          	im 45
 55b:	10          	addsp 0
 55c:	00          	breakpoint
 55d:	05          	add
 55e:	02          	pushsp
 55f:	00          	breakpoint
 560:	00          	breakpoint
 561:	0d          	popsp
 562:	b4          	im 52
 563:	15          	addsp 20
 564:	00          	breakpoint
 565:	05          	add
 566:	02          	pushsp
 567:	00          	breakpoint
 568:	00          	breakpoint
 569:	0d          	popsp
 56a:	bb          	im 59
 56b:	15          	addsp 20
 56c:	00          	breakpoint
 56d:	05          	add
 56e:	02          	pushsp
 56f:	00          	breakpoint
 570:	00          	breakpoint
 571:	0d          	popsp
 572:	c2          	im -62
 573:	15          	addsp 20
 574:	00          	breakpoint
 575:	05          	add
 576:	02          	pushsp
 577:	00          	breakpoint
 578:	00          	breakpoint
 579:	0d          	popsp
 57a:	c9          	im -55
 57b:	15          	addsp 20
 57c:	00          	breakpoint
 57d:	05          	add
 57e:	02          	pushsp
 57f:	00          	breakpoint
 580:	00          	breakpoint
 581:	0d          	popsp
 582:	d1          	im -47
 583:	1a          	addsp 40
 584:	00          	breakpoint
 585:	05          	add
 586:	02          	pushsp
 587:	00          	breakpoint
 588:	00          	breakpoint
 589:	0d          	popsp
 58a:	d6          	im -42
 58b:	13          	addsp 12
 58c:	00          	breakpoint
 58d:	05          	add
 58e:	02          	pushsp
 58f:	00          	breakpoint
 590:	00          	breakpoint
 591:	0d          	popsp
 592:	dd          	im -35
 593:	15          	addsp 20
 594:	00          	breakpoint
 595:	05          	add
 596:	02          	pushsp
 597:	00          	breakpoint
 598:	00          	breakpoint
 599:	0d          	popsp
 59a:	e5          	im -27
 59b:	17          	addsp 28
 59c:	00          	breakpoint
 59d:	05          	add
 59e:	02          	pushsp
 59f:	00          	breakpoint
 5a0:	00          	breakpoint
 5a1:	0d          	popsp
 5a2:	ea          	im -22
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
 6ca:	0d          	popsp
 6cb:	ea          	im -22
 6cc:	04          	poppc
 6cd:	04          	poppc
 6ce:	53          	storesp 12
 6cf:	00          	breakpoint
 6d0:	05          	add
 6d1:	02          	pushsp
 6d2:	00          	breakpoint
 6d3:	00          	breakpoint
 6d4:	0d          	popsp
 6d5:	ef          	im -17
 6d6:	22          	loadh
 6d7:	00          	breakpoint
 6d8:	05          	add
 6d9:	02          	pushsp
 6da:	00          	breakpoint
 6db:	00          	breakpoint
 6dc:	0d          	popsp
 6dd:	fa          	im -6
 6de:	17          	addsp 28
 6df:	00          	breakpoint
 6e0:	05          	add
 6e1:	02          	pushsp
 6e2:	00          	breakpoint
 6e3:	00          	breakpoint
 6e4:	0d          	popsp
 6e5:	fb          	im -5
 6e6:	15          	addsp 20
 6e7:	00          	breakpoint
 6e8:	05          	add
 6e9:	02          	pushsp
 6ea:	00          	breakpoint
 6eb:	00          	breakpoint
 6ec:	0d          	popsp
 6ed:	fc          	im -4
 6ee:	1d          	addsp 52
 6ef:	00          	breakpoint
 6f0:	05          	add
 6f1:	02          	pushsp
 6f2:	00          	breakpoint
 6f3:	00          	breakpoint
 6f4:	0e          	.byte 14
 6f5:	08          	load
 6f6:	18          	addsp 32
 6f7:	00          	breakpoint
 6f8:	05          	add
 6f9:	02          	pushsp
 6fa:	00          	breakpoint
 6fb:	00          	breakpoint
 6fc:	0e          	.byte 14
 6fd:	09          	not
 6fe:	15          	addsp 20
 6ff:	00          	breakpoint
 700:	05          	add
 701:	02          	pushsp
 702:	00          	breakpoint
 703:	00          	breakpoint
 704:	0e          	.byte 14
 705:	0c          	store
 706:	1a          	addsp 40
 707:	00          	breakpoint
 708:	05          	add
 709:	02          	pushsp
 70a:	00          	breakpoint
 70b:	00          	breakpoint
 70c:	0e          	.byte 14
 70d:	24          	lessthan
 70e:	13          	addsp 12
 70f:	00          	breakpoint
 710:	05          	add
 711:	02          	pushsp
 712:	00          	breakpoint
 713:	00          	breakpoint
 714:	0e          	.byte 14
 715:	26          	ulessthan
 716:	15          	addsp 20
 717:	00          	breakpoint
 718:	05          	add
 719:	02          	pushsp
 71a:	00          	breakpoint
 71b:	00          	breakpoint
 71c:	0e          	.byte 14
 71d:	38          	neqbranch
 71e:	16          	addsp 24
 71f:	00          	breakpoint
 720:	05          	add
 721:	02          	pushsp
 722:	00          	breakpoint
 723:	00          	breakpoint
 724:	0e          	.byte 14
 725:	43          	storesp 76
 726:	16          	addsp 24
 727:	00          	breakpoint
 728:	05          	add
 729:	02          	pushsp
 72a:	00          	breakpoint
 72b:	00          	breakpoint
 72c:	0e          	.byte 14
 72d:	4b          	storesp 108
 72e:	03          	.byte 3
 72f:	6d          	loadsp 116
 730:	01          	.byte 1
 731:	00          	breakpoint
 732:	05          	add
 733:	02          	pushsp
 734:	00          	breakpoint
 735:	00          	breakpoint
 736:	0e          	.byte 14
 737:	61          	loadsp 68
 738:	17          	addsp 28
 739:	00          	breakpoint
 73a:	05          	add
 73b:	02          	pushsp
 73c:	00          	breakpoint
 73d:	00          	breakpoint
 73e:	0e          	.byte 14
 73f:	63          	loadsp 76
 740:	15          	addsp 20
 741:	00          	breakpoint
 742:	05          	add
 743:	02          	pushsp
 744:	00          	breakpoint
 745:	00          	breakpoint
 746:	0e          	.byte 14
 747:	70          	loadsp 0
 748:	18          	addsp 32
 749:	00          	breakpoint
 74a:	05          	add
 74b:	02          	pushsp
 74c:	00          	breakpoint
 74d:	00          	breakpoint
 74e:	0e          	.byte 14
 74f:	71          	loadsp 4
 750:	15          	addsp 20
 751:	00          	breakpoint
 752:	05          	add
 753:	02          	pushsp
 754:	00          	breakpoint
 755:	00          	breakpoint
 756:	0e          	.byte 14
 757:	77          	loadsp 28
 758:	0c          	store
 759:	00          	breakpoint
 75a:	05          	add
 75b:	02          	pushsp
 75c:	00          	breakpoint
 75d:	00          	breakpoint
 75e:	0e          	.byte 14
 75f:	78          	loadsp 32
 760:	26          	ulessthan
 761:	00          	breakpoint
 762:	05          	add
 763:	02          	pushsp
 764:	00          	breakpoint
 765:	00          	breakpoint
 766:	0e          	.byte 14
 767:	7f          	loadsp 60
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
  a3:	c2          	im -62
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
  d7:	5b          	storesp 44
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
 10a:	0d          	popsp
 10b:	ea          	im -22
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