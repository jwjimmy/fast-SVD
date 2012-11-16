
cordic:     file format elf32-avr


Disassembly of section .text:

00000000 <__ctors_end-0x1e>:
       0:	05 a8       	sts	0x85, r16
       2:	4c cd       	rjmp	.-1384   	; 0xfffffa9c <__eeprom_end+0xff7efa9c>
       4:	b2 d4       	rcall	.+2404   	; 0x96a <__pack_f+0x1e>
       6:	4e b9       	out	0x0e, r20	; 14
       8:	38 36       	cpi	r19, 0x68	; 104
       a:	a9 02       	muls	r26, r25
       c:	0c 50       	subi	r16, 0x0C	; 12
       e:	b9 91       	ld	r27, Y+
      10:	86 88       	ldd	r8, Z+22	; 0x16
      12:	08 3c       	cpi	r16, 0xC8	; 200
      14:	a6 aa       	sts	0x96, r26
      16:	aa 2a       	or	r10, r26
      18:	be 00       	.word	0x00be	; ????
      1a:	00 00       	nop
      1c:	80 3f       	cpi	r24, 0xF0	; 240

0000001e <__ctors_end>:
      1e:	11 e0       	ldi	r17, 0x01	; 1
      20:	a0 e6       	ldi	r26, 0x60	; 96
      22:	b0 e0       	ldi	r27, 0x00	; 0
      24:	e6 e4       	ldi	r30, 0x46	; 70
      26:	f5 e1       	ldi	r31, 0x15	; 21
      28:	03 c0       	rjmp	.+6      	; 0x30 <__ctors_end+0x12>
      2a:	c8 95       	lpm
      2c:	31 96       	adiw	r30, 0x01	; 1
      2e:	0d 92       	st	X+, r0
      30:	a2 39       	cpi	r26, 0x92	; 146
      32:	b1 07       	cpc	r27, r17
      34:	d1 f7       	brne	.-12     	; 0x2a <__ctors_end+0xc>

00000036 <__do_clear_bss>:
      36:	11 e0       	ldi	r17, 0x01	; 1
      38:	a2 e9       	ldi	r26, 0x92	; 146
      3a:	b1 e0       	ldi	r27, 0x01	; 1
      3c:	01 c0       	rjmp	.+2      	; 0x40 <.do_clear_bss_start>

0000003e <.do_clear_bss_loop>:
      3e:	1d 92       	st	X+, r1

00000040 <.do_clear_bss_start>:
      40:	a8 39       	cpi	r26, 0x98	; 152
      42:	b1 07       	cpc	r27, r17
      44:	e1 f7       	brne	.-8      	; 0x3e <.do_clear_bss_loop>

00000046 <cordic>:
      46:	cf 93       	push	r28
      48:	df 93       	push	r29
      4a:	cd b7       	in	r28, 0x3d	; 61
      4c:	de b7       	in	r29, 0x3e	; 62
      4e:	68 97       	sbiw	r28, 0x18	; 24
      50:	0f b6       	in	r0, 0x3f	; 63
      52:	f8 94       	cli
      54:	de bf       	out	0x3e, r29	; 62
      56:	0f be       	out	0x3f, r0	; 63
      58:	cd bf       	out	0x3d, r28	; 61
      5a:	9a 8b       	std	Y+18, r25	; 0x12
      5c:	89 8b       	std	Y+17, r24	; 0x11
      5e:	7c 8b       	std	Y+20, r23	; 0x14
      60:	6b 8b       	std	Y+19, r22	; 0x13
      62:	5e 8b       	std	Y+22, r21	; 0x16
      64:	4d 8b       	std	Y+21, r20	; 0x15
      66:	38 8f       	std	Y+24, r19	; 0x18
      68:	2f 8b       	std	Y+23, r18	; 0x17
      6a:	8d ed       	ldi	r24, 0xDD	; 221
      6c:	96 e2       	ldi	r25, 0x26	; 38
      6e:	9c 83       	std	Y+4, r25	; 0x04
      70:	8b 83       	std	Y+3, r24	; 0x03
      72:	1e 82       	std	Y+6, r1	; 0x06
      74:	1d 82       	std	Y+5, r1	; 0x05
      76:	89 89       	ldd	r24, Y+17	; 0x11
      78:	9a 89       	ldd	r25, Y+18	; 0x12
      7a:	98 87       	std	Y+8, r25	; 0x08
      7c:	8f 83       	std	Y+7, r24	; 0x07
      7e:	8f 89       	ldd	r24, Y+23	; 0x17
      80:	98 8d       	ldd	r25, Y+24	; 0x18
      82:	81 31       	cpi	r24, 0x11	; 17
      84:	91 05       	cpc	r25, r1
      86:	14 f0       	brlt	.+4      	; 0x8c <cordic+0x46>
      88:	80 e1       	ldi	r24, 0x10	; 16
      8a:	90 e0       	ldi	r25, 0x00	; 0
      8c:	98 8f       	std	Y+24, r25	; 0x18
      8e:	8f 8b       	std	Y+23, r24	; 0x17
      90:	1a 82       	std	Y+2, r1	; 0x02
      92:	19 82       	std	Y+1, r1	; 0x01
      94:	60 c0       	rjmp	.+192    	; 0x156 <cordic+0x110>
      96:	8f 81       	ldd	r24, Y+7	; 0x07
      98:	98 85       	ldd	r25, Y+8	; 0x08
      9a:	99 0f       	add	r25, r25
      9c:	88 0b       	sbc	r24, r24
      9e:	98 2f       	mov	r25, r24
      a0:	9a 87       	std	Y+10, r25	; 0x0a
      a2:	89 87       	std	Y+9, r24	; 0x09
      a4:	8d 81       	ldd	r24, Y+5	; 0x05
      a6:	9e 81       	ldd	r25, Y+6	; 0x06
      a8:	28 2f       	mov	r18, r24
      aa:	39 2f       	mov	r19, r25
      ac:	09 80       	ldd	r0, Y+1	; 0x01
      ae:	02 c0       	rjmp	.+4      	; 0xb4 <cordic+0x6e>
      b0:	35 95       	asr	r19
      b2:	27 95       	ror	r18
      b4:	0a 94       	dec	r0
      b6:	e2 f7       	brpl	.-8      	; 0xb0 <cordic+0x6a>
      b8:	89 85       	ldd	r24, Y+9	; 0x09
      ba:	9a 85       	ldd	r25, Y+10	; 0x0a
      bc:	82 27       	eor	r24, r18
      be:	93 27       	eor	r25, r19
      c0:	29 85       	ldd	r18, Y+9	; 0x09
      c2:	3a 85       	ldd	r19, Y+10	; 0x0a
      c4:	28 1b       	sub	r18, r24
      c6:	39 0b       	sbc	r19, r25
      c8:	8b 81       	ldd	r24, Y+3	; 0x03
      ca:	9c 81       	ldd	r25, Y+4	; 0x04
      cc:	82 0f       	add	r24, r18
      ce:	93 1f       	adc	r25, r19
      d0:	9c 87       	std	Y+12, r25	; 0x0c
      d2:	8b 87       	std	Y+11, r24	; 0x0b
      d4:	8b 81       	ldd	r24, Y+3	; 0x03
      d6:	9c 81       	ldd	r25, Y+4	; 0x04
      d8:	28 2f       	mov	r18, r24
      da:	39 2f       	mov	r19, r25
      dc:	09 80       	ldd	r0, Y+1	; 0x01
      de:	02 c0       	rjmp	.+4      	; 0xe4 <cordic+0x9e>
      e0:	35 95       	asr	r19
      e2:	27 95       	ror	r18
      e4:	0a 94       	dec	r0
      e6:	e2 f7       	brpl	.-8      	; 0xe0 <cordic+0x9a>
      e8:	89 85       	ldd	r24, Y+9	; 0x09
      ea:	9a 85       	ldd	r25, Y+10	; 0x0a
      ec:	28 27       	eor	r18, r24
      ee:	39 27       	eor	r19, r25
      f0:	89 85       	ldd	r24, Y+9	; 0x09
      f2:	9a 85       	ldd	r25, Y+10	; 0x0a
      f4:	28 1b       	sub	r18, r24
      f6:	39 0b       	sbc	r19, r25
      f8:	8d 81       	ldd	r24, Y+5	; 0x05
      fa:	9e 81       	ldd	r25, Y+6	; 0x06
      fc:	82 0f       	add	r24, r18
      fe:	93 1f       	adc	r25, r19
     100:	9e 87       	std	Y+14, r25	; 0x0e
     102:	8d 87       	std	Y+13, r24	; 0x0d
     104:	89 81       	ldd	r24, Y+1	; 0x01
     106:	9a 81       	ldd	r25, Y+2	; 0x02
     108:	88 0f       	add	r24, r24
     10a:	99 1f       	adc	r25, r25
     10c:	80 5a       	subi	r24, 0xA0	; 160
     10e:	9f 4f       	sbci	r25, 0xFF	; 255
     110:	e8 2f       	mov	r30, r24
     112:	f9 2f       	mov	r31, r25
     114:	20 81       	ld	r18, Z
     116:	31 81       	ldd	r19, Z+1	; 0x01
     118:	89 85       	ldd	r24, Y+9	; 0x09
     11a:	9a 85       	ldd	r25, Y+10	; 0x0a
     11c:	82 27       	eor	r24, r18
     11e:	93 27       	eor	r25, r19
     120:	29 85       	ldd	r18, Y+9	; 0x09
     122:	3a 85       	ldd	r19, Y+10	; 0x0a
     124:	28 1b       	sub	r18, r24
     126:	39 0b       	sbc	r19, r25
     128:	8f 81       	ldd	r24, Y+7	; 0x07
     12a:	98 85       	ldd	r25, Y+8	; 0x08
     12c:	82 0f       	add	r24, r18
     12e:	93 1f       	adc	r25, r19
     130:	98 8b       	std	Y+16, r25	; 0x10
     132:	8f 87       	std	Y+15, r24	; 0x0f
     134:	8b 85       	ldd	r24, Y+11	; 0x0b
     136:	9c 85       	ldd	r25, Y+12	; 0x0c
     138:	9c 83       	std	Y+4, r25	; 0x04
     13a:	8b 83       	std	Y+3, r24	; 0x03
     13c:	8d 85       	ldd	r24, Y+13	; 0x0d
     13e:	9e 85       	ldd	r25, Y+14	; 0x0e
     140:	9e 83       	std	Y+6, r25	; 0x06
     142:	8d 83       	std	Y+5, r24	; 0x05
     144:	8f 85       	ldd	r24, Y+15	; 0x0f
     146:	98 89       	ldd	r25, Y+16	; 0x10
     148:	98 87       	std	Y+8, r25	; 0x08
     14a:	8f 83       	std	Y+7, r24	; 0x07
     14c:	89 81       	ldd	r24, Y+1	; 0x01
     14e:	9a 81       	ldd	r25, Y+2	; 0x02
     150:	01 96       	adiw	r24, 0x01	; 1
     152:	9a 83       	std	Y+2, r25	; 0x02
     154:	89 83       	std	Y+1, r24	; 0x01
     156:	29 81       	ldd	r18, Y+1	; 0x01
     158:	3a 81       	ldd	r19, Y+2	; 0x02
     15a:	8f 89       	ldd	r24, Y+23	; 0x17
     15c:	98 8d       	ldd	r25, Y+24	; 0x18
     15e:	28 17       	cp	r18, r24
     160:	39 07       	cpc	r19, r25
     162:	0c f4       	brge	.+2      	; 0x166 <cordic+0x120>
     164:	98 cf       	rjmp	.-208    	; 0x96 <cordic+0x50>
     166:	8d 89       	ldd	r24, Y+21	; 0x15
     168:	9e 89       	ldd	r25, Y+22	; 0x16
     16a:	2b 81       	ldd	r18, Y+3	; 0x03
     16c:	3c 81       	ldd	r19, Y+4	; 0x04
     16e:	e8 2f       	mov	r30, r24
     170:	f9 2f       	mov	r31, r25
     172:	31 83       	std	Z+1, r19	; 0x01
     174:	20 83       	st	Z, r18
     176:	8b 89       	ldd	r24, Y+19	; 0x13
     178:	9c 89       	ldd	r25, Y+20	; 0x14
     17a:	2d 81       	ldd	r18, Y+5	; 0x05
     17c:	3e 81       	ldd	r19, Y+6	; 0x06
     17e:	e8 2f       	mov	r30, r24
     180:	f9 2f       	mov	r31, r25
     182:	31 83       	std	Z+1, r19	; 0x01
     184:	20 83       	st	Z, r18
     186:	68 96       	adiw	r28, 0x18	; 24
     188:	0f b6       	in	r0, 0x3f	; 63
     18a:	f8 94       	cli
     18c:	de bf       	out	0x3e, r29	; 62
     18e:	0f be       	out	0x3f, r0	; 63
     190:	cd bf       	out	0x3d, r28	; 61
     192:	df 91       	pop	r29
     194:	cf 91       	pop	r28
     196:	08 95       	ret

00000198 <main>:
     198:	ef 92       	push	r14
     19a:	ff 92       	push	r15
     19c:	0f 93       	push	r16
     19e:	1f 93       	push	r17
     1a0:	cf 93       	push	r28
     1a2:	df 93       	push	r29
     1a4:	cd b7       	in	r28, 0x3d	; 61
     1a6:	de b7       	in	r29, 0x3e	; 62
     1a8:	2e 97       	sbiw	r28, 0x0e	; 14
     1aa:	0f b6       	in	r0, 0x3f	; 63
     1ac:	f8 94       	cli
     1ae:	de bf       	out	0x3e, r29	; 62
     1b0:	0f be       	out	0x3f, r0	; 63
     1b2:	cd bf       	out	0x3d, r28	; 61
     1b4:	9c 87       	std	Y+12, r25	; 0x0c
     1b6:	8b 87       	std	Y+11, r24	; 0x0b
     1b8:	7e 87       	std	Y+14, r23	; 0x0e
     1ba:	6d 87       	std	Y+13, r22	; 0x0d
     1bc:	1a 82       	std	Y+2, r1	; 0x02
     1be:	19 82       	std	Y+1, r1	; 0x01
     1c0:	ba c0       	rjmp	.+372    	; 0x336 <main+0x19e>
     1c2:	89 81       	ldd	r24, Y+1	; 0x01
     1c4:	9a 81       	ldd	r25, Y+2	; 0x02
     1c6:	aa 27       	eor	r26, r26
     1c8:	97 fd       	sbrc	r25, 7
     1ca:	a0 95       	com	r26
     1cc:	ba 2f       	mov	r27, r26
     1ce:	68 2f       	mov	r22, r24
     1d0:	79 2f       	mov	r23, r25
     1d2:	8a 2f       	mov	r24, r26
     1d4:	9b 2f       	mov	r25, r27
     1d6:	87 d2       	rcall	.+1294   	; 0x6e6 <__floatsisf>
     1d8:	b9 2f       	mov	r27, r25
     1da:	a8 2f       	mov	r26, r24
     1dc:	97 2f       	mov	r25, r23
     1de:	86 2f       	mov	r24, r22
     1e0:	68 2f       	mov	r22, r24
     1e2:	79 2f       	mov	r23, r25
     1e4:	8a 2f       	mov	r24, r26
     1e6:	9b 2f       	mov	r25, r27
     1e8:	20 e0       	ldi	r18, 0x00	; 0
     1ea:	30 e0       	ldi	r19, 0x00	; 0
     1ec:	48 e4       	ldi	r20, 0x48	; 72
     1ee:	52 e4       	ldi	r21, 0x42	; 66
     1f0:	c7 d1       	rcall	.+910    	; 0x580 <__divsf3>
     1f2:	b9 2f       	mov	r27, r25
     1f4:	a8 2f       	mov	r26, r24
     1f6:	97 2f       	mov	r25, r23
     1f8:	86 2f       	mov	r24, r22
     1fa:	68 2f       	mov	r22, r24
     1fc:	79 2f       	mov	r23, r25
     1fe:	8a 2f       	mov	r24, r26
     200:	9b 2f       	mov	r25, r27
     202:	2b ed       	ldi	r18, 0xDB	; 219
     204:	3f e0       	ldi	r19, 0x0F	; 15
     206:	49 e4       	ldi	r20, 0x49	; 73
     208:	50 e4       	ldi	r21, 0x40	; 64
     20a:	a8 d0       	rcall	.+336    	; 0x35c <__mulsf3>
     20c:	b9 2f       	mov	r27, r25
     20e:	a8 2f       	mov	r26, r24
     210:	97 2f       	mov	r25, r23
     212:	86 2f       	mov	r24, r22
     214:	68 2f       	mov	r22, r24
     216:	79 2f       	mov	r23, r25
     218:	8a 2f       	mov	r24, r26
     21a:	9b 2f       	mov	r25, r27
     21c:	20 e0       	ldi	r18, 0x00	; 0
     21e:	30 e0       	ldi	r19, 0x00	; 0
     220:	40 e0       	ldi	r20, 0x00	; 0
     222:	50 e4       	ldi	r21, 0x40	; 64
     224:	ad d1       	rcall	.+858    	; 0x580 <__divsf3>
     226:	b9 2f       	mov	r27, r25
     228:	a8 2f       	mov	r26, r24
     22a:	97 2f       	mov	r25, r23
     22c:	86 2f       	mov	r24, r22
     22e:	8b 83       	std	Y+3, r24	; 0x03
     230:	9c 83       	std	Y+4, r25	; 0x04
     232:	ad 83       	std	Y+5, r26	; 0x05
     234:	be 83       	std	Y+6, r27	; 0x06
     236:	6b 81       	ldd	r22, Y+3	; 0x03
     238:	7c 81       	ldd	r23, Y+4	; 0x04
     23a:	8d 81       	ldd	r24, Y+5	; 0x05
     23c:	9e 81       	ldd	r25, Y+6	; 0x06
     23e:	20 e0       	ldi	r18, 0x00	; 0
     240:	30 e0       	ldi	r19, 0x00	; 0
     242:	40 e8       	ldi	r20, 0x80	; 128
     244:	56 e4       	ldi	r21, 0x46	; 70
     246:	8a d0       	rcall	.+276    	; 0x35c <__mulsf3>
     248:	b9 2f       	mov	r27, r25
     24a:	a8 2f       	mov	r26, r24
     24c:	97 2f       	mov	r25, r23
     24e:	86 2f       	mov	r24, r22
     250:	68 2f       	mov	r22, r24
     252:	79 2f       	mov	r23, r25
     254:	8a 2f       	mov	r24, r26
     256:	9b 2f       	mov	r25, r27
     258:	c8 d2       	rcall	.+1424   	; 0x7ea <__fixsfsi>
     25a:	b9 2f       	mov	r27, r25
     25c:	a8 2f       	mov	r26, r24
     25e:	97 2f       	mov	r25, r23
     260:	86 2f       	mov	r24, r22
     262:	4c 2f       	mov	r20, r28
     264:	5d 2f       	mov	r21, r29
     266:	49 5f       	subi	r20, 0xF9	; 249
     268:	5f 4f       	sbci	r21, 0xFF	; 255
     26a:	2c 2f       	mov	r18, r28
     26c:	3d 2f       	mov	r19, r29
     26e:	27 5f       	subi	r18, 0xF7	; 247
     270:	3f 4f       	sbci	r19, 0xFF	; 255
     272:	64 2f       	mov	r22, r20
     274:	75 2f       	mov	r23, r21
     276:	42 2f       	mov	r20, r18
     278:	53 2f       	mov	r21, r19
     27a:	20 e2       	ldi	r18, 0x20	; 32
     27c:	30 e0       	ldi	r19, 0x00	; 0
     27e:	e3 de       	rcall	.-570    	; 0x46 <cordic>
     280:	8f 81       	ldd	r24, Y+7	; 0x07
     282:	98 85       	ldd	r25, Y+8	; 0x08
     284:	aa 27       	eor	r26, r26
     286:	97 fd       	sbrc	r25, 7
     288:	a0 95       	com	r26
     28a:	ba 2f       	mov	r27, r26
     28c:	68 2f       	mov	r22, r24
     28e:	79 2f       	mov	r23, r25
     290:	8a 2f       	mov	r24, r26
     292:	9b 2f       	mov	r25, r27
     294:	28 d2       	rcall	.+1104   	; 0x6e6 <__floatsisf>
     296:	b9 2f       	mov	r27, r25
     298:	a8 2f       	mov	r26, r24
     29a:	97 2f       	mov	r25, r23
     29c:	86 2f       	mov	r24, r22
     29e:	68 2f       	mov	r22, r24
     2a0:	79 2f       	mov	r23, r25
     2a2:	8a 2f       	mov	r24, r26
     2a4:	9b 2f       	mov	r25, r27
     2a6:	20 e0       	ldi	r18, 0x00	; 0
     2a8:	30 e0       	ldi	r19, 0x00	; 0
     2aa:	40 e8       	ldi	r20, 0x80	; 128
     2ac:	56 e4       	ldi	r21, 0x46	; 70
     2ae:	68 d1       	rcall	.+720    	; 0x580 <__divsf3>
     2b0:	b9 2f       	mov	r27, r25
     2b2:	a8 2f       	mov	r26, r24
     2b4:	97 2f       	mov	r25, r23
     2b6:	86 2f       	mov	r24, r22
     2b8:	e8 2e       	mov	r14, r24
     2ba:	f9 2e       	mov	r15, r25
     2bc:	0a 2f       	mov	r16, r26
     2be:	1b 2f       	mov	r17, r27
     2c0:	8b 81       	ldd	r24, Y+3	; 0x03
     2c2:	9c 81       	ldd	r25, Y+4	; 0x04
     2c4:	ad 81       	ldd	r26, Y+5	; 0x05
     2c6:	be 81       	ldd	r27, Y+6	; 0x06
     2c8:	68 2f       	mov	r22, r24
     2ca:	79 2f       	mov	r23, r25
     2cc:	8a 2f       	mov	r24, r26
     2ce:	9b 2f       	mov	r25, r27
     2d0:	d7 d4       	rcall	.+2478   	; 0xc80 <sin>
     2d2:	b9 2f       	mov	r27, r25
     2d4:	a8 2f       	mov	r26, r24
     2d6:	97 2f       	mov	r25, r23
     2d8:	86 2f       	mov	r24, r22
     2da:	2d b7       	in	r18, 0x3d	; 61
     2dc:	3e b7       	in	r19, 0x3e	; 62
     2de:	2a 50       	subi	r18, 0x0A	; 10
     2e0:	30 40       	sbci	r19, 0x00	; 0
     2e2:	0f b6       	in	r0, 0x3f	; 63
     2e4:	f8 94       	cli
     2e6:	3e bf       	out	0x3e, r19	; 62
     2e8:	0f be       	out	0x3f, r0	; 63
     2ea:	2d bf       	out	0x3d, r18	; 61
     2ec:	2d b7       	in	r18, 0x3d	; 61
     2ee:	3e b7       	in	r19, 0x3e	; 62
     2f0:	2f 5f       	subi	r18, 0xFF	; 255
     2f2:	3f 4f       	sbci	r19, 0xFF	; 255
     2f4:	40 e8       	ldi	r20, 0x80	; 128
     2f6:	50 e0       	ldi	r21, 0x00	; 0
     2f8:	e2 2f       	mov	r30, r18
     2fa:	f3 2f       	mov	r31, r19
     2fc:	51 83       	std	Z+1, r21	; 0x01
     2fe:	40 83       	st	Z, r20
     300:	e2 2f       	mov	r30, r18
     302:	f3 2f       	mov	r31, r19
     304:	e2 82       	std	Z+2, r14	; 0x02
     306:	f3 82       	std	Z+3, r15	; 0x03
     308:	04 83       	std	Z+4, r16	; 0x04
     30a:	15 83       	std	Z+5, r17	; 0x05
     30c:	e2 2f       	mov	r30, r18
     30e:	f3 2f       	mov	r31, r19
     310:	86 83       	std	Z+6, r24	; 0x06
     312:	97 83       	std	Z+7, r25	; 0x07
     314:	a0 87       	std	Z+8, r26	; 0x08
     316:	b1 87       	std	Z+9, r27	; 0x09
     318:	9f d4       	rcall	.+2366   	; 0xc58 <printf>
     31a:	2d b7       	in	r18, 0x3d	; 61
     31c:	3e b7       	in	r19, 0x3e	; 62
     31e:	26 5f       	subi	r18, 0xF6	; 246
     320:	3f 4f       	sbci	r19, 0xFF	; 255
     322:	0f b6       	in	r0, 0x3f	; 63
     324:	f8 94       	cli
     326:	3e bf       	out	0x3e, r19	; 62
     328:	0f be       	out	0x3f, r0	; 63
     32a:	2d bf       	out	0x3d, r18	; 61
     32c:	89 81       	ldd	r24, Y+1	; 0x01
     32e:	9a 81       	ldd	r25, Y+2	; 0x02
     330:	01 96       	adiw	r24, 0x01	; 1
     332:	9a 83       	std	Y+2, r25	; 0x02
     334:	89 83       	std	Y+1, r24	; 0x01
     336:	89 81       	ldd	r24, Y+1	; 0x01
     338:	9a 81       	ldd	r25, Y+2	; 0x02
     33a:	82 33       	cpi	r24, 0x32	; 50
     33c:	91 05       	cpc	r25, r1
     33e:	0c f4       	brge	.+2      	; 0x342 <main+0x1aa>
     340:	40 cf       	rjmp	.-384    	; 0x1c2 <main+0x2a>
     342:	2e 96       	adiw	r28, 0x0e	; 14
     344:	0f b6       	in	r0, 0x3f	; 63
     346:	f8 94       	cli
     348:	de bf       	out	0x3e, r29	; 62
     34a:	0f be       	out	0x3f, r0	; 63
     34c:	cd bf       	out	0x3d, r28	; 61
     34e:	df 91       	pop	r29
     350:	cf 91       	pop	r28
     352:	1f 91       	pop	r17
     354:	0f 91       	pop	r16
     356:	ff 90       	pop	r15
     358:	ef 90       	pop	r14
     35a:	08 95       	ret

0000035c <__mulsf3>:
     35c:	a0 e2       	ldi	r26, 0x20	; 32
     35e:	b0 e0       	ldi	r27, 0x00	; 0
     360:	e3 eb       	ldi	r30, 0xB3	; 179
     362:	f1 e0       	ldi	r31, 0x01	; 1
     364:	43 c4       	rjmp	.+2182   	; 0xbec <__prologue_saves__+0x4>
     366:	b9 2f       	mov	r27, r25
     368:	a8 2f       	mov	r26, r24
     36a:	97 2f       	mov	r25, r23
     36c:	86 2f       	mov	r24, r22
     36e:	8d 83       	std	Y+5, r24	; 0x05
     370:	9e 83       	std	Y+6, r25	; 0x06
     372:	af 83       	std	Y+7, r26	; 0x07
     374:	b8 87       	std	Y+8, r27	; 0x08
     376:	29 83       	std	Y+1, r18	; 0x01
     378:	3a 83       	std	Y+2, r19	; 0x02
     37a:	4b 83       	std	Y+3, r20	; 0x03
     37c:	5c 83       	std	Y+4, r21	; 0x04
     37e:	8c 2f       	mov	r24, r28
     380:	9d 2f       	mov	r25, r29
     382:	05 96       	adiw	r24, 0x05	; 5
     384:	6c 2f       	mov	r22, r28
     386:	7d 2f       	mov	r23, r29
     388:	67 5e       	subi	r22, 0xE7	; 231
     38a:	7f 4f       	sbci	r23, 0xFF	; 255
     38c:	c2 d3       	rcall	.+1924   	; 0xb12 <__unpack_f>
     38e:	8c 2f       	mov	r24, r28
     390:	9d 2f       	mov	r25, r29
     392:	01 96       	adiw	r24, 0x01	; 1
     394:	6c 2f       	mov	r22, r28
     396:	7d 2f       	mov	r23, r29
     398:	6f 5e       	subi	r22, 0xEF	; 239
     39a:	7f 4f       	sbci	r23, 0xFF	; 255
     39c:	ba d3       	rcall	.+1908   	; 0xb12 <__unpack_f>
     39e:	99 8d       	ldd	r25, Y+25	; 0x19
     3a0:	92 30       	cpi	r25, 0x02	; 2
     3a2:	78 f0       	brcs	.+30     	; 0x3c2 <__mulsf3+0x66>
     3a4:	89 89       	ldd	r24, Y+17	; 0x11
     3a6:	82 30       	cpi	r24, 0x02	; 2
     3a8:	c8 f0       	brcs	.+50     	; 0x3dc <__mulsf3+0x80>
     3aa:	94 30       	cpi	r25, 0x04	; 4
     3ac:	19 f4       	brne	.+6      	; 0x3b4 <__mulsf3+0x58>
     3ae:	82 30       	cpi	r24, 0x02	; 2
     3b0:	41 f4       	brne	.+16     	; 0x3c2 <__mulsf3+0x66>
     3b2:	d8 c0       	rjmp	.+432    	; 0x564 <__mulsf3+0x208>
     3b4:	84 30       	cpi	r24, 0x04	; 4
     3b6:	19 f4       	brne	.+6      	; 0x3be <__mulsf3+0x62>
     3b8:	92 30       	cpi	r25, 0x02	; 2
     3ba:	81 f4       	brne	.+32     	; 0x3dc <__mulsf3+0x80>
     3bc:	d3 c0       	rjmp	.+422    	; 0x564 <__mulsf3+0x208>
     3be:	92 30       	cpi	r25, 0x02	; 2
     3c0:	59 f4       	brne	.+22     	; 0x3d8 <__mulsf3+0x7c>
     3c2:	81 e0       	ldi	r24, 0x01	; 1
     3c4:	2a 8d       	ldd	r18, Y+26	; 0x1a
     3c6:	9a 89       	ldd	r25, Y+18	; 0x12
     3c8:	29 17       	cp	r18, r25
     3ca:	09 f4       	brne	.+2      	; 0x3ce <__mulsf3+0x72>
     3cc:	80 e0       	ldi	r24, 0x00	; 0
     3ce:	8a 8f       	std	Y+26, r24	; 0x1a
     3d0:	8c 2f       	mov	r24, r28
     3d2:	9d 2f       	mov	r25, r29
     3d4:	49 96       	adiw	r24, 0x19	; 25
     3d6:	c8 c0       	rjmp	.+400    	; 0x568 <__mulsf3+0x20c>
     3d8:	82 30       	cpi	r24, 0x02	; 2
     3da:	59 f4       	brne	.+22     	; 0x3f2 <__mulsf3+0x96>
     3dc:	81 e0       	ldi	r24, 0x01	; 1
     3de:	2a 8d       	ldd	r18, Y+26	; 0x1a
     3e0:	9a 89       	ldd	r25, Y+18	; 0x12
     3e2:	29 17       	cp	r18, r25
     3e4:	09 f4       	brne	.+2      	; 0x3e8 <__mulsf3+0x8c>
     3e6:	80 e0       	ldi	r24, 0x00	; 0
     3e8:	8a 8b       	std	Y+18, r24	; 0x12
     3ea:	8c 2f       	mov	r24, r28
     3ec:	9d 2f       	mov	r25, r29
     3ee:	41 96       	adiw	r24, 0x11	; 17
     3f0:	bb c0       	rjmp	.+374    	; 0x568 <__mulsf3+0x20c>
     3f2:	4d 8c       	ldd	r4, Y+29	; 0x1d
     3f4:	5e 8c       	ldd	r5, Y+30	; 0x1e
     3f6:	6f 8c       	ldd	r6, Y+31	; 0x1f
     3f8:	78 a0       	lds	r23, 0x88
     3fa:	0d 89       	ldd	r16, Y+21	; 0x15
     3fc:	1e 89       	ldd	r17, Y+22	; 0x16
     3fe:	2f 89       	ldd	r18, Y+23	; 0x17
     400:	38 8d       	ldd	r19, Y+24	; 0x18
     402:	e0 e2       	ldi	r30, 0x20	; 32
     404:	f0 e0       	ldi	r31, 0x00	; 0
     406:	40 e0       	ldi	r20, 0x00	; 0
     408:	50 e0       	ldi	r21, 0x00	; 0
     40a:	60 e0       	ldi	r22, 0x00	; 0
     40c:	70 e0       	ldi	r23, 0x00	; 0
     40e:	88 24       	eor	r8, r8
     410:	99 24       	eor	r9, r9
     412:	aa 24       	eor	r10, r10
     414:	bb 24       	eor	r11, r11
     416:	cc 24       	eor	r12, r12
     418:	dd 24       	eor	r13, r13
     41a:	ee 24       	eor	r14, r14
     41c:	ff 24       	eor	r15, r15
     41e:	84 2d       	mov	r24, r4
     420:	95 2d       	mov	r25, r5
     422:	81 70       	andi	r24, 0x01	; 1
     424:	90 70       	andi	r25, 0x00	; 0
     426:	00 97       	sbiw	r24, 0x00	; 0
     428:	e9 f0       	breq	.+58     	; 0x464 <__mulsf3+0x108>
     42a:	c0 0e       	add	r12, r16
     42c:	d1 1e       	adc	r13, r17
     42e:	e2 1e       	adc	r14, r18
     430:	f3 1e       	adc	r15, r19
     432:	b7 2f       	mov	r27, r23
     434:	a6 2f       	mov	r26, r22
     436:	95 2f       	mov	r25, r21
     438:	84 2f       	mov	r24, r20
     43a:	88 0d       	add	r24, r8
     43c:	99 1d       	adc	r25, r9
     43e:	aa 1d       	adc	r26, r10
     440:	bb 1d       	adc	r27, r11
     442:	41 e0       	ldi	r20, 0x01	; 1
     444:	50 e0       	ldi	r21, 0x00	; 0
     446:	60 e0       	ldi	r22, 0x00	; 0
     448:	70 e0       	ldi	r23, 0x00	; 0
     44a:	c0 16       	cp	r12, r16
     44c:	d1 06       	cpc	r13, r17
     44e:	e2 06       	cpc	r14, r18
     450:	f3 06       	cpc	r15, r19
     452:	20 f0       	brcs	.+8      	; 0x45c <__mulsf3+0x100>
     454:	40 e0       	ldi	r20, 0x00	; 0
     456:	50 e0       	ldi	r21, 0x00	; 0
     458:	60 e0       	ldi	r22, 0x00	; 0
     45a:	70 e0       	ldi	r23, 0x00	; 0
     45c:	48 0f       	add	r20, r24
     45e:	59 1f       	adc	r21, r25
     460:	6a 1f       	adc	r22, r26
     462:	7b 1f       	adc	r23, r27
     464:	88 0c       	add	r8, r8
     466:	99 1c       	adc	r9, r9
     468:	aa 1c       	adc	r10, r10
     46a:	bb 1c       	adc	r11, r11
     46c:	37 ff       	sbrs	r19, 7
     46e:	08 c0       	rjmp	.+16     	; 0x480 <__mulsf3+0x124>
     470:	81 e0       	ldi	r24, 0x01	; 1
     472:	90 e0       	ldi	r25, 0x00	; 0
     474:	a0 e0       	ldi	r26, 0x00	; 0
     476:	b0 e0       	ldi	r27, 0x00	; 0
     478:	88 2a       	or	r8, r24
     47a:	99 2a       	or	r9, r25
     47c:	aa 2a       	or	r10, r26
     47e:	bb 2a       	or	r11, r27
     480:	00 0f       	add	r16, r16
     482:	11 1f       	adc	r17, r17
     484:	22 1f       	adc	r18, r18
     486:	33 1f       	adc	r19, r19
     488:	76 94       	lsr	r7
     48a:	67 94       	ror	r6
     48c:	57 94       	ror	r5
     48e:	47 94       	ror	r4
     490:	31 97       	sbiw	r30, 0x01	; 1
     492:	29 f6       	brne	.-118    	; 0x41e <__mulsf3+0xc2>
     494:	8b 8d       	ldd	r24, Y+27	; 0x1b
     496:	9c 8d       	ldd	r25, Y+28	; 0x1c
     498:	2b 89       	ldd	r18, Y+19	; 0x13
     49a:	3c 89       	ldd	r19, Y+20	; 0x14
     49c:	82 0f       	add	r24, r18
     49e:	93 1f       	adc	r25, r19
     4a0:	02 96       	adiw	r24, 0x02	; 2
     4a2:	9c 87       	std	Y+12, r25	; 0x0c
     4a4:	8b 87       	std	Y+11, r24	; 0x0b
     4a6:	81 e0       	ldi	r24, 0x01	; 1
     4a8:	2a 8d       	ldd	r18, Y+26	; 0x1a
     4aa:	9a 89       	ldd	r25, Y+18	; 0x12
     4ac:	29 17       	cp	r18, r25
     4ae:	09 f4       	brne	.+2      	; 0x4b2 <__mulsf3+0x156>
     4b0:	80 e0       	ldi	r24, 0x00	; 0
     4b2:	8a 87       	std	Y+10, r24	; 0x0a
     4b4:	2b 85       	ldd	r18, Y+11	; 0x0b
     4b6:	3c 85       	ldd	r19, Y+12	; 0x0c
     4b8:	18 c0       	rjmp	.+48     	; 0x4ea <__mulsf3+0x18e>
     4ba:	84 2f       	mov	r24, r20
     4bc:	95 2f       	mov	r25, r21
     4be:	81 70       	andi	r24, 0x01	; 1
     4c0:	90 70       	andi	r25, 0x00	; 0
     4c2:	00 97       	sbiw	r24, 0x00	; 0
     4c4:	61 f0       	breq	.+24     	; 0x4de <__mulsf3+0x182>
     4c6:	f6 94       	lsr	r15
     4c8:	e7 94       	ror	r14
     4ca:	d7 94       	ror	r13
     4cc:	c7 94       	ror	r12
     4ce:	80 e0       	ldi	r24, 0x00	; 0
     4d0:	90 e0       	ldi	r25, 0x00	; 0
     4d2:	a0 e0       	ldi	r26, 0x00	; 0
     4d4:	b0 e8       	ldi	r27, 0x80	; 128
     4d6:	c8 2a       	or	r12, r24
     4d8:	d9 2a       	or	r13, r25
     4da:	ea 2a       	or	r14, r26
     4dc:	fb 2a       	or	r15, r27
     4de:	76 95       	lsr	r23
     4e0:	67 95       	ror	r22
     4e2:	57 95       	ror	r21
     4e4:	47 95       	ror	r20
     4e6:	2f 5f       	subi	r18, 0xFF	; 255
     4e8:	3f 4f       	sbci	r19, 0xFF	; 255
     4ea:	77 fd       	sbrc	r23, 7
     4ec:	e6 cf       	rjmp	.-52     	; 0x4ba <__mulsf3+0x15e>
     4ee:	82 2f       	mov	r24, r18
     4f0:	93 2f       	mov	r25, r19
     4f2:	0b c0       	rjmp	.+22     	; 0x50a <__mulsf3+0x1ae>
     4f4:	44 0f       	add	r20, r20
     4f6:	55 1f       	adc	r21, r21
     4f8:	66 1f       	adc	r22, r22
     4fa:	77 1f       	adc	r23, r23
     4fc:	f7 fc       	sbrc	r15, 7
     4fe:	41 60       	ori	r20, 0x01	; 1
     500:	cc 0c       	add	r12, r12
     502:	dd 1c       	adc	r13, r13
     504:	ee 1c       	adc	r14, r14
     506:	ff 1c       	adc	r15, r15
     508:	01 97       	sbiw	r24, 0x01	; 1
     50a:	40 30       	cpi	r20, 0x00	; 0
     50c:	a0 e0       	ldi	r26, 0x00	; 0
     50e:	5a 07       	cpc	r21, r26
     510:	a0 e0       	ldi	r26, 0x00	; 0
     512:	6a 07       	cpc	r22, r26
     514:	a0 e4       	ldi	r26, 0x40	; 64
     516:	7a 07       	cpc	r23, r26
     518:	68 f3       	brcs	.-38     	; 0x4f4 <__mulsf3+0x198>
     51a:	8b 87       	std	Y+11, r24	; 0x0b
     51c:	9c 87       	std	Y+12, r25	; 0x0c
     51e:	b7 2f       	mov	r27, r23
     520:	a6 2f       	mov	r26, r22
     522:	95 2f       	mov	r25, r21
     524:	84 2f       	mov	r24, r20
     526:	8f 77       	andi	r24, 0x7F	; 127
     528:	90 70       	andi	r25, 0x00	; 0
     52a:	a0 70       	andi	r26, 0x00	; 0
     52c:	b0 70       	andi	r27, 0x00	; 0
     52e:	80 34       	cpi	r24, 0x40	; 64
     530:	91 05       	cpc	r25, r1
     532:	a1 05       	cpc	r26, r1
     534:	b1 05       	cpc	r27, r1
     536:	61 f4       	brne	.+24     	; 0x550 <__mulsf3+0x1f4>
     538:	47 fd       	sbrc	r20, 7
     53a:	0a c0       	rjmp	.+20     	; 0x550 <__mulsf3+0x1f4>
     53c:	c1 14       	cp	r12, r1
     53e:	d1 04       	cpc	r13, r1
     540:	e1 04       	cpc	r14, r1
     542:	f1 04       	cpc	r15, r1
     544:	29 f0       	breq	.+10     	; 0x550 <__mulsf3+0x1f4>
     546:	40 5c       	subi	r20, 0xC0	; 192
     548:	5f 4f       	sbci	r21, 0xFF	; 255
     54a:	6f 4f       	sbci	r22, 0xFF	; 255
     54c:	7f 4f       	sbci	r23, 0xFF	; 255
     54e:	40 78       	andi	r20, 0x80	; 128
     550:	4d 87       	std	Y+13, r20	; 0x0d
     552:	5e 87       	std	Y+14, r21	; 0x0e
     554:	6f 87       	std	Y+15, r22	; 0x0f
     556:	78 8b       	std	Y+16, r23	; 0x10
     558:	83 e0       	ldi	r24, 0x03	; 3
     55a:	89 87       	std	Y+9, r24	; 0x09
     55c:	8c 2f       	mov	r24, r28
     55e:	9d 2f       	mov	r25, r29
     560:	09 96       	adiw	r24, 0x09	; 9
     562:	02 c0       	rjmp	.+4      	; 0x568 <__mulsf3+0x20c>
     564:	89 e8       	ldi	r24, 0x89	; 137
     566:	90 e0       	ldi	r25, 0x00	; 0
     568:	f1 d1       	rcall	.+994    	; 0x94c <__pack_f>
     56a:	46 2f       	mov	r20, r22
     56c:	57 2f       	mov	r21, r23
     56e:	68 2f       	mov	r22, r24
     570:	79 2f       	mov	r23, r25
     572:	97 2f       	mov	r25, r23
     574:	86 2f       	mov	r24, r22
     576:	75 2f       	mov	r23, r21
     578:	64 2f       	mov	r22, r20
     57a:	a0 96       	adiw	r28, 0x20	; 32
     57c:	e0 e1       	ldi	r30, 0x10	; 16
     57e:	52 c3       	rjmp	.+1700   	; 0xc24 <__epilogue_restores__+0x4>

00000580 <__divsf3>:
     580:	a8 e1       	ldi	r26, 0x18	; 24
     582:	b0 e0       	ldi	r27, 0x00	; 0
     584:	e5 ec       	ldi	r30, 0xC5	; 197
     586:	f2 e0       	ldi	r31, 0x02	; 2
     588:	39 c3       	rjmp	.+1650   	; 0xbfc <__prologue_saves__+0x14>
     58a:	b9 2f       	mov	r27, r25
     58c:	a8 2f       	mov	r26, r24
     58e:	97 2f       	mov	r25, r23
     590:	86 2f       	mov	r24, r22
     592:	8d 83       	std	Y+5, r24	; 0x05
     594:	9e 83       	std	Y+6, r25	; 0x06
     596:	af 83       	std	Y+7, r26	; 0x07
     598:	b8 87       	std	Y+8, r27	; 0x08
     59a:	29 83       	std	Y+1, r18	; 0x01
     59c:	3a 83       	std	Y+2, r19	; 0x02
     59e:	4b 83       	std	Y+3, r20	; 0x03
     5a0:	5c 83       	std	Y+4, r21	; 0x04
     5a2:	8c 2f       	mov	r24, r28
     5a4:	9d 2f       	mov	r25, r29
     5a6:	05 96       	adiw	r24, 0x05	; 5
     5a8:	6c 2f       	mov	r22, r28
     5aa:	7d 2f       	mov	r23, r29
     5ac:	6f 5e       	subi	r22, 0xEF	; 239
     5ae:	7f 4f       	sbci	r23, 0xFF	; 255
     5b0:	b0 d2       	rcall	.+1376   	; 0xb12 <__unpack_f>
     5b2:	8c 2f       	mov	r24, r28
     5b4:	9d 2f       	mov	r25, r29
     5b6:	01 96       	adiw	r24, 0x01	; 1
     5b8:	6c 2f       	mov	r22, r28
     5ba:	7d 2f       	mov	r23, r29
     5bc:	67 5f       	subi	r22, 0xF7	; 247
     5be:	7f 4f       	sbci	r23, 0xFF	; 255
     5c0:	a8 d2       	rcall	.+1360   	; 0xb12 <__unpack_f>
     5c2:	99 89       	ldd	r25, Y+17	; 0x11
     5c4:	92 30       	cpi	r25, 0x02	; 2
     5c6:	08 f4       	brcc	.+2      	; 0x5ca <__divsf3+0x4a>
     5c8:	78 c0       	rjmp	.+240    	; 0x6ba <__divsf3+0x13a>
     5ca:	89 85       	ldd	r24, Y+9	; 0x09
     5cc:	82 30       	cpi	r24, 0x02	; 2
     5ce:	08 f4       	brcc	.+2      	; 0x5d2 <__divsf3+0x52>
     5d0:	78 c0       	rjmp	.+240    	; 0x6c2 <__divsf3+0x142>
     5d2:	2a 89       	ldd	r18, Y+18	; 0x12
     5d4:	3a 85       	ldd	r19, Y+10	; 0x0a
     5d6:	23 27       	eor	r18, r19
     5d8:	2a 8b       	std	Y+18, r18	; 0x12
     5da:	94 30       	cpi	r25, 0x04	; 4
     5dc:	11 f0       	breq	.+4      	; 0x5e2 <__divsf3+0x62>
     5de:	92 30       	cpi	r25, 0x02	; 2
     5e0:	21 f4       	brne	.+8      	; 0x5ea <__divsf3+0x6a>
     5e2:	98 17       	cp	r25, r24
     5e4:	09 f0       	breq	.+2      	; 0x5e8 <__divsf3+0x68>
     5e6:	69 c0       	rjmp	.+210    	; 0x6ba <__divsf3+0x13a>
     5e8:	70 c0       	rjmp	.+224    	; 0x6ca <__divsf3+0x14a>
     5ea:	84 30       	cpi	r24, 0x04	; 4
     5ec:	39 f4       	brne	.+14     	; 0x5fc <__divsf3+0x7c>
     5ee:	1d 8a       	std	Y+21, r1	; 0x15
     5f0:	1e 8a       	std	Y+22, r1	; 0x16
     5f2:	1f 8a       	std	Y+23, r1	; 0x17
     5f4:	18 8e       	std	Y+24, r1	; 0x18
     5f6:	1c 8a       	std	Y+20, r1	; 0x14
     5f8:	1b 8a       	std	Y+19, r1	; 0x13
     5fa:	5f c0       	rjmp	.+190    	; 0x6ba <__divsf3+0x13a>
     5fc:	82 30       	cpi	r24, 0x02	; 2
     5fe:	19 f4       	brne	.+6      	; 0x606 <__divsf3+0x86>
     600:	84 e0       	ldi	r24, 0x04	; 4
     602:	89 8b       	std	Y+17, r24	; 0x11
     604:	5a c0       	rjmp	.+180    	; 0x6ba <__divsf3+0x13a>
     606:	2b 89       	ldd	r18, Y+19	; 0x13
     608:	3c 89       	ldd	r19, Y+20	; 0x14
     60a:	8b 85       	ldd	r24, Y+11	; 0x0b
     60c:	9c 85       	ldd	r25, Y+12	; 0x0c
     60e:	28 1b       	sub	r18, r24
     610:	39 0b       	sbc	r19, r25
     612:	3c 8b       	std	Y+20, r19	; 0x14
     614:	2b 8b       	std	Y+19, r18	; 0x13
     616:	8d 89       	ldd	r24, Y+21	; 0x15
     618:	9e 89       	ldd	r25, Y+22	; 0x16
     61a:	af 89       	ldd	r26, Y+23	; 0x17
     61c:	b8 8d       	ldd	r27, Y+24	; 0x18
     61e:	cd 84       	ldd	r12, Y+13	; 0x0d
     620:	de 84       	ldd	r13, Y+14	; 0x0e
     622:	ef 84       	ldd	r14, Y+15	; 0x0f
     624:	f8 88       	ldd	r15, Y+16	; 0x10
     626:	8c 15       	cp	r24, r12
     628:	9d 05       	cpc	r25, r13
     62a:	ae 05       	cpc	r26, r14
     62c:	bf 05       	cpc	r27, r15
     62e:	40 f4       	brcc	.+16     	; 0x640 <__divsf3+0xc0>
     630:	88 0f       	add	r24, r24
     632:	99 1f       	adc	r25, r25
     634:	aa 1f       	adc	r26, r26
     636:	bb 1f       	adc	r27, r27
     638:	21 50       	subi	r18, 0x01	; 1
     63a:	30 40       	sbci	r19, 0x00	; 0
     63c:	3c 8b       	std	Y+20, r19	; 0x14
     63e:	2b 8b       	std	Y+19, r18	; 0x13
     640:	ef e1       	ldi	r30, 0x1F	; 31
     642:	f0 e0       	ldi	r31, 0x00	; 0
     644:	00 e0       	ldi	r16, 0x00	; 0
     646:	10 e0       	ldi	r17, 0x00	; 0
     648:	20 e0       	ldi	r18, 0x00	; 0
     64a:	30 e4       	ldi	r19, 0x40	; 64
     64c:	40 e0       	ldi	r20, 0x00	; 0
     64e:	50 e0       	ldi	r21, 0x00	; 0
     650:	60 e0       	ldi	r22, 0x00	; 0
     652:	70 e0       	ldi	r23, 0x00	; 0
     654:	8c 15       	cp	r24, r12
     656:	9d 05       	cpc	r25, r13
     658:	ae 05       	cpc	r26, r14
     65a:	bf 05       	cpc	r27, r15
     65c:	40 f0       	brcs	.+16     	; 0x66e <__divsf3+0xee>
     65e:	40 2b       	or	r20, r16
     660:	51 2b       	or	r21, r17
     662:	62 2b       	or	r22, r18
     664:	73 2b       	or	r23, r19
     666:	8c 19       	sub	r24, r12
     668:	9d 09       	sbc	r25, r13
     66a:	ae 09       	sbc	r26, r14
     66c:	bf 09       	sbc	r27, r15
     66e:	36 95       	lsr	r19
     670:	27 95       	ror	r18
     672:	17 95       	ror	r17
     674:	07 95       	ror	r16
     676:	88 0f       	add	r24, r24
     678:	99 1f       	adc	r25, r25
     67a:	aa 1f       	adc	r26, r26
     67c:	bb 1f       	adc	r27, r27
     67e:	31 97       	sbiw	r30, 0x01	; 1
     680:	49 f7       	brne	.-46     	; 0x654 <__divsf3+0xd4>
     682:	04 2f       	mov	r16, r20
     684:	15 2f       	mov	r17, r21
     686:	26 2f       	mov	r18, r22
     688:	37 2f       	mov	r19, r23
     68a:	0f 77       	andi	r16, 0x7F	; 127
     68c:	10 70       	andi	r17, 0x00	; 0
     68e:	20 70       	andi	r18, 0x00	; 0
     690:	30 70       	andi	r19, 0x00	; 0
     692:	00 34       	cpi	r16, 0x40	; 64
     694:	11 05       	cpc	r17, r1
     696:	21 05       	cpc	r18, r1
     698:	31 05       	cpc	r19, r1
     69a:	59 f4       	brne	.+22     	; 0x6b2 <__divsf3+0x132>
     69c:	47 fd       	sbrc	r20, 7
     69e:	09 c0       	rjmp	.+18     	; 0x6b2 <__divsf3+0x132>
     6a0:	00 97       	sbiw	r24, 0x00	; 0
     6a2:	a1 05       	cpc	r26, r1
     6a4:	b1 05       	cpc	r27, r1
     6a6:	29 f0       	breq	.+10     	; 0x6b2 <__divsf3+0x132>
     6a8:	40 5c       	subi	r20, 0xC0	; 192
     6aa:	5f 4f       	sbci	r21, 0xFF	; 255
     6ac:	6f 4f       	sbci	r22, 0xFF	; 255
     6ae:	7f 4f       	sbci	r23, 0xFF	; 255
     6b0:	40 78       	andi	r20, 0x80	; 128
     6b2:	4d 8b       	std	Y+21, r20	; 0x15
     6b4:	5e 8b       	std	Y+22, r21	; 0x16
     6b6:	6f 8b       	std	Y+23, r22	; 0x17
     6b8:	78 8f       	std	Y+24, r23	; 0x18
     6ba:	8c 2f       	mov	r24, r28
     6bc:	9d 2f       	mov	r25, r29
     6be:	41 96       	adiw	r24, 0x11	; 17
     6c0:	06 c0       	rjmp	.+12     	; 0x6ce <__divsf3+0x14e>
     6c2:	8c 2f       	mov	r24, r28
     6c4:	9d 2f       	mov	r25, r29
     6c6:	09 96       	adiw	r24, 0x09	; 9
     6c8:	02 c0       	rjmp	.+4      	; 0x6ce <__divsf3+0x14e>
     6ca:	89 e8       	ldi	r24, 0x89	; 137
     6cc:	90 e0       	ldi	r25, 0x00	; 0
     6ce:	3e d1       	rcall	.+636    	; 0x94c <__pack_f>
     6d0:	46 2f       	mov	r20, r22
     6d2:	57 2f       	mov	r21, r23
     6d4:	68 2f       	mov	r22, r24
     6d6:	79 2f       	mov	r23, r25
     6d8:	97 2f       	mov	r25, r23
     6da:	86 2f       	mov	r24, r22
     6dc:	75 2f       	mov	r23, r21
     6de:	64 2f       	mov	r22, r20
     6e0:	68 96       	adiw	r28, 0x18	; 24
     6e2:	e8 e0       	ldi	r30, 0x08	; 8
     6e4:	a7 c2       	rjmp	.+1358   	; 0xc34 <__epilogue_restores__+0x14>

000006e6 <__floatsisf>:
     6e6:	cf 92       	push	r12
     6e8:	df 92       	push	r13
     6ea:	ef 92       	push	r14
     6ec:	ff 92       	push	r15
     6ee:	cf 93       	push	r28
     6f0:	df 93       	push	r29
     6f2:	cd b7       	in	r28, 0x3d	; 61
     6f4:	de b7       	in	r29, 0x3e	; 62
     6f6:	28 97       	sbiw	r28, 0x08	; 8
     6f8:	0f b6       	in	r0, 0x3f	; 63
     6fa:	f8 94       	cli
     6fc:	de bf       	out	0x3e, r29	; 62
     6fe:	0f be       	out	0x3f, r0	; 63
     700:	cd bf       	out	0x3d, r28	; 61
     702:	c6 2e       	mov	r12, r22
     704:	d7 2e       	mov	r13, r23
     706:	e8 2e       	mov	r14, r24
     708:	f9 2e       	mov	r15, r25
     70a:	83 e0       	ldi	r24, 0x03	; 3
     70c:	89 83       	std	Y+1, r24	; 0x01
     70e:	bf 2d       	mov	r27, r15
     710:	ae 2d       	mov	r26, r14
     712:	9d 2d       	mov	r25, r13
     714:	8c 2d       	mov	r24, r12
     716:	88 27       	eor	r24, r24
     718:	b7 fd       	sbrc	r27, 7
     71a:	83 95       	inc	r24
     71c:	99 27       	eor	r25, r25
     71e:	aa 27       	eor	r26, r26
     720:	bb 27       	eor	r27, r27
     722:	28 2f       	mov	r18, r24
     724:	8a 83       	std	Y+2, r24	; 0x02
     726:	c1 14       	cp	r12, r1
     728:	d1 04       	cpc	r13, r1
     72a:	e1 04       	cpc	r14, r1
     72c:	f1 04       	cpc	r15, r1
     72e:	19 f4       	brne	.+6      	; 0x736 <__floatsisf+0x50>
     730:	82 e0       	ldi	r24, 0x02	; 2
     732:	89 83       	std	Y+1, r24	; 0x01
     734:	3a c0       	rjmp	.+116    	; 0x7aa <__floatsisf+0xc4>
     736:	8e e1       	ldi	r24, 0x1E	; 30
     738:	90 e0       	ldi	r25, 0x00	; 0
     73a:	9c 83       	std	Y+4, r25	; 0x04
     73c:	8b 83       	std	Y+3, r24	; 0x03
     73e:	22 23       	and	r18, r18
     740:	89 f0       	breq	.+34     	; 0x764 <__floatsisf+0x7e>
     742:	80 e0       	ldi	r24, 0x00	; 0
     744:	c8 16       	cp	r12, r24
     746:	80 e0       	ldi	r24, 0x00	; 0
     748:	d8 06       	cpc	r13, r24
     74a:	80 e0       	ldi	r24, 0x00	; 0
     74c:	e8 06       	cpc	r14, r24
     74e:	80 e8       	ldi	r24, 0x80	; 128
     750:	f8 06       	cpc	r15, r24
     752:	81 f1       	breq	.+96     	; 0x7b4 <__floatsisf+0xce>
     754:	f0 94       	com	r15
     756:	e0 94       	com	r14
     758:	d0 94       	com	r13
     75a:	c0 94       	com	r12
     75c:	c1 1c       	adc	r12, r1
     75e:	d1 1c       	adc	r13, r1
     760:	e1 1c       	adc	r14, r1
     762:	f1 1c       	adc	r15, r1
     764:	cd 82       	std	Y+5, r12	; 0x05
     766:	de 82       	std	Y+6, r13	; 0x06
     768:	ef 82       	std	Y+7, r14	; 0x07
     76a:	f8 86       	std	Y+8, r15	; 0x08
     76c:	9f 2d       	mov	r25, r15
     76e:	8e 2d       	mov	r24, r14
     770:	7d 2d       	mov	r23, r13
     772:	6c 2d       	mov	r22, r12
     774:	8f d0       	rcall	.+286    	; 0x894 <__clzsi2>
     776:	28 2f       	mov	r18, r24
     778:	39 2f       	mov	r19, r25
     77a:	82 2f       	mov	r24, r18
     77c:	93 2f       	mov	r25, r19
     77e:	01 97       	sbiw	r24, 0x01	; 1
     780:	18 16       	cp	r1, r24
     782:	19 06       	cpc	r1, r25
     784:	94 f4       	brge	.+36     	; 0x7aa <__floatsisf+0xc4>
     786:	08 2e       	mov	r0, r24
     788:	04 c0       	rjmp	.+8      	; 0x792 <__floatsisf+0xac>
     78a:	cc 0c       	add	r12, r12
     78c:	dd 1c       	adc	r13, r13
     78e:	ee 1c       	adc	r14, r14
     790:	ff 1c       	adc	r15, r15
     792:	0a 94       	dec	r0
     794:	d2 f7       	brpl	.-12     	; 0x78a <__floatsisf+0xa4>
     796:	cd 82       	std	Y+5, r12	; 0x05
     798:	de 82       	std	Y+6, r13	; 0x06
     79a:	ef 82       	std	Y+7, r14	; 0x07
     79c:	f8 86       	std	Y+8, r15	; 0x08
     79e:	2e e1       	ldi	r18, 0x1E	; 30
     7a0:	30 e0       	ldi	r19, 0x00	; 0
     7a2:	28 1b       	sub	r18, r24
     7a4:	39 0b       	sbc	r19, r25
     7a6:	3c 83       	std	Y+4, r19	; 0x04
     7a8:	2b 83       	std	Y+3, r18	; 0x03
     7aa:	8c 2f       	mov	r24, r28
     7ac:	9d 2f       	mov	r25, r29
     7ae:	01 96       	adiw	r24, 0x01	; 1
     7b0:	cd d0       	rcall	.+410    	; 0x94c <__pack_f>
     7b2:	04 c0       	rjmp	.+8      	; 0x7bc <__floatsisf+0xd6>
     7b4:	60 e0       	ldi	r22, 0x00	; 0
     7b6:	70 e0       	ldi	r23, 0x00	; 0
     7b8:	80 e0       	ldi	r24, 0x00	; 0
     7ba:	9f ec       	ldi	r25, 0xCF	; 207
     7bc:	38 2f       	mov	r19, r24
     7be:	29 2f       	mov	r18, r25
     7c0:	86 2f       	mov	r24, r22
     7c2:	97 2f       	mov	r25, r23
     7c4:	a3 2f       	mov	r26, r19
     7c6:	b2 2f       	mov	r27, r18
     7c8:	68 2f       	mov	r22, r24
     7ca:	79 2f       	mov	r23, r25
     7cc:	8a 2f       	mov	r24, r26
     7ce:	9b 2f       	mov	r25, r27
     7d0:	28 96       	adiw	r28, 0x08	; 8
     7d2:	0f b6       	in	r0, 0x3f	; 63
     7d4:	f8 94       	cli
     7d6:	de bf       	out	0x3e, r29	; 62
     7d8:	0f be       	out	0x3f, r0	; 63
     7da:	cd bf       	out	0x3d, r28	; 61
     7dc:	df 91       	pop	r29
     7de:	cf 91       	pop	r28
     7e0:	ff 90       	pop	r15
     7e2:	ef 90       	pop	r14
     7e4:	df 90       	pop	r13
     7e6:	cf 90       	pop	r12
     7e8:	08 95       	ret

000007ea <__fixsfsi>:
     7ea:	ac e0       	ldi	r26, 0x0C	; 12
     7ec:	b0 e0       	ldi	r27, 0x00	; 0
     7ee:	ea ef       	ldi	r30, 0xFA	; 250
     7f0:	f3 e0       	ldi	r31, 0x03	; 3
     7f2:	08 c2       	rjmp	.+1040   	; 0xc04 <__prologue_saves__+0x1c>
     7f4:	b9 2f       	mov	r27, r25
     7f6:	a8 2f       	mov	r26, r24
     7f8:	97 2f       	mov	r25, r23
     7fa:	86 2f       	mov	r24, r22
     7fc:	89 83       	std	Y+1, r24	; 0x01
     7fe:	9a 83       	std	Y+2, r25	; 0x02
     800:	ab 83       	std	Y+3, r26	; 0x03
     802:	bc 83       	std	Y+4, r27	; 0x04
     804:	8c 2f       	mov	r24, r28
     806:	9d 2f       	mov	r25, r29
     808:	01 96       	adiw	r24, 0x01	; 1
     80a:	6c 2f       	mov	r22, r28
     80c:	7d 2f       	mov	r23, r29
     80e:	6b 5f       	subi	r22, 0xFB	; 251
     810:	7f 4f       	sbci	r23, 0xFF	; 255
     812:	7f d1       	rcall	.+766    	; 0xb12 <__unpack_f>
     814:	8d 81       	ldd	r24, Y+5	; 0x05
     816:	82 30       	cpi	r24, 0x02	; 2
     818:	69 f1       	breq	.+90     	; 0x874 <__fixsfsi+0x8a>
     81a:	82 30       	cpi	r24, 0x02	; 2
     81c:	58 f1       	brcs	.+86     	; 0x874 <__fixsfsi+0x8a>
     81e:	84 30       	cpi	r24, 0x04	; 4
     820:	39 f0       	breq	.+14     	; 0x830 <__fixsfsi+0x46>
     822:	2f 81       	ldd	r18, Y+7	; 0x07
     824:	38 85       	ldd	r19, Y+8	; 0x08
     826:	37 fd       	sbrc	r19, 7
     828:	25 c0       	rjmp	.+74     	; 0x874 <__fixsfsi+0x8a>
     82a:	2f 31       	cpi	r18, 0x1F	; 31
     82c:	31 05       	cpc	r19, r1
     82e:	44 f0       	brlt	.+16     	; 0x840 <__fixsfsi+0x56>
     830:	8e 81       	ldd	r24, Y+6	; 0x06
     832:	88 23       	and	r24, r24
     834:	21 f1       	breq	.+72     	; 0x87e <__fixsfsi+0x94>
     836:	00 e0       	ldi	r16, 0x00	; 0
     838:	10 e0       	ldi	r17, 0x00	; 0
     83a:	20 e0       	ldi	r18, 0x00	; 0
     83c:	30 e8       	ldi	r19, 0x80	; 128
     83e:	23 c0       	rjmp	.+70     	; 0x886 <__fixsfsi+0x9c>
     840:	8e e1       	ldi	r24, 0x1E	; 30
     842:	90 e0       	ldi	r25, 0x00	; 0
     844:	82 1b       	sub	r24, r18
     846:	93 0b       	sbc	r25, r19
     848:	09 85       	ldd	r16, Y+9	; 0x09
     84a:	1a 85       	ldd	r17, Y+10	; 0x0a
     84c:	2b 85       	ldd	r18, Y+11	; 0x0b
     84e:	3c 85       	ldd	r19, Y+12	; 0x0c
     850:	04 c0       	rjmp	.+8      	; 0x85a <__fixsfsi+0x70>
     852:	36 95       	lsr	r19
     854:	27 95       	ror	r18
     856:	17 95       	ror	r17
     858:	07 95       	ror	r16
     85a:	8a 95       	dec	r24
     85c:	d2 f7       	brpl	.-12     	; 0x852 <__fixsfsi+0x68>
     85e:	8e 81       	ldd	r24, Y+6	; 0x06
     860:	88 23       	and	r24, r24
     862:	89 f0       	breq	.+34     	; 0x886 <__fixsfsi+0x9c>
     864:	30 95       	com	r19
     866:	20 95       	com	r18
     868:	10 95       	com	r17
     86a:	01 95       	neg	r16
     86c:	1f 4f       	sbci	r17, 0xFF	; 255
     86e:	2f 4f       	sbci	r18, 0xFF	; 255
     870:	3f 4f       	sbci	r19, 0xFF	; 255
     872:	09 c0       	rjmp	.+18     	; 0x886 <__fixsfsi+0x9c>
     874:	00 e0       	ldi	r16, 0x00	; 0
     876:	10 e0       	ldi	r17, 0x00	; 0
     878:	20 e0       	ldi	r18, 0x00	; 0
     87a:	30 e0       	ldi	r19, 0x00	; 0
     87c:	04 c0       	rjmp	.+8      	; 0x886 <__fixsfsi+0x9c>
     87e:	0f ef       	ldi	r16, 0xFF	; 255
     880:	1f ef       	ldi	r17, 0xFF	; 255
     882:	2f ef       	ldi	r18, 0xFF	; 255
     884:	3f e7       	ldi	r19, 0x7F	; 127
     886:	60 2f       	mov	r22, r16
     888:	71 2f       	mov	r23, r17
     88a:	82 2f       	mov	r24, r18
     88c:	93 2f       	mov	r25, r19
     88e:	2c 96       	adiw	r28, 0x0c	; 12
     890:	e4 e0       	ldi	r30, 0x04	; 4
     892:	d4 c1       	rjmp	.+936    	; 0xc3c <__epilogue_restores__+0x1c>

00000894 <__clzsi2>:
     894:	cf 92       	push	r12
     896:	df 92       	push	r13
     898:	ef 92       	push	r14
     89a:	ff 92       	push	r15
     89c:	0f 93       	push	r16
     89e:	1f 93       	push	r17
     8a0:	06 2f       	mov	r16, r22
     8a2:	17 2f       	mov	r17, r23
     8a4:	28 2f       	mov	r18, r24
     8a6:	39 2f       	mov	r19, r25
     8a8:	00 30       	cpi	r16, 0x00	; 0
     8aa:	80 e0       	ldi	r24, 0x00	; 0
     8ac:	18 07       	cpc	r17, r24
     8ae:	81 e0       	ldi	r24, 0x01	; 1
     8b0:	28 07       	cpc	r18, r24
     8b2:	80 e0       	ldi	r24, 0x00	; 0
     8b4:	38 07       	cpc	r19, r24
     8b6:	58 f4       	brcc	.+22     	; 0x8ce <__clzsi2+0x3a>
     8b8:	0f 3f       	cpi	r16, 0xFF	; 255
     8ba:	11 05       	cpc	r17, r1
     8bc:	21 05       	cpc	r18, r1
     8be:	31 05       	cpc	r19, r1
     8c0:	09 f0       	breq	.+2      	; 0x8c4 <__clzsi2+0x30>
     8c2:	90 f4       	brcc	.+36     	; 0x8e8 <__clzsi2+0x54>
     8c4:	80 e0       	ldi	r24, 0x00	; 0
     8c6:	90 e0       	ldi	r25, 0x00	; 0
     8c8:	a0 e0       	ldi	r26, 0x00	; 0
     8ca:	b0 e0       	ldi	r27, 0x00	; 0
     8cc:	16 c0       	rjmp	.+44     	; 0x8fa <__clzsi2+0x66>
     8ce:	00 30       	cpi	r16, 0x00	; 0
     8d0:	e0 e0       	ldi	r30, 0x00	; 0
     8d2:	1e 07       	cpc	r17, r30
     8d4:	e0 e0       	ldi	r30, 0x00	; 0
     8d6:	2e 07       	cpc	r18, r30
     8d8:	e1 e0       	ldi	r30, 0x01	; 1
     8da:	3e 07       	cpc	r19, r30
     8dc:	50 f4       	brcc	.+20     	; 0x8f2 <__clzsi2+0x5e>
     8de:	80 e1       	ldi	r24, 0x10	; 16
     8e0:	90 e0       	ldi	r25, 0x00	; 0
     8e2:	a0 e0       	ldi	r26, 0x00	; 0
     8e4:	b0 e0       	ldi	r27, 0x00	; 0
     8e6:	09 c0       	rjmp	.+18     	; 0x8fa <__clzsi2+0x66>
     8e8:	88 e0       	ldi	r24, 0x08	; 8
     8ea:	90 e0       	ldi	r25, 0x00	; 0
     8ec:	a0 e0       	ldi	r26, 0x00	; 0
     8ee:	b0 e0       	ldi	r27, 0x00	; 0
     8f0:	04 c0       	rjmp	.+8      	; 0x8fa <__clzsi2+0x66>
     8f2:	88 e1       	ldi	r24, 0x18	; 24
     8f4:	90 e0       	ldi	r25, 0x00	; 0
     8f6:	a0 e0       	ldi	r26, 0x00	; 0
     8f8:	b0 e0       	ldi	r27, 0x00	; 0
     8fa:	40 e2       	ldi	r20, 0x20	; 32
     8fc:	50 e0       	ldi	r21, 0x00	; 0
     8fe:	60 e0       	ldi	r22, 0x00	; 0
     900:	70 e0       	ldi	r23, 0x00	; 0
     902:	48 1b       	sub	r20, r24
     904:	59 0b       	sbc	r21, r25
     906:	6a 0b       	sbc	r22, r26
     908:	7b 0b       	sbc	r23, r27
     90a:	c0 2e       	mov	r12, r16
     90c:	d1 2e       	mov	r13, r17
     90e:	e2 2e       	mov	r14, r18
     910:	f3 2e       	mov	r15, r19
     912:	04 c0       	rjmp	.+8      	; 0x91c <__clzsi2+0x88>
     914:	f6 94       	lsr	r15
     916:	e7 94       	ror	r14
     918:	d7 94       	ror	r13
     91a:	c7 94       	ror	r12
     91c:	8a 95       	dec	r24
     91e:	d2 f7       	brpl	.-12     	; 0x914 <__clzsi2+0x80>
     920:	bf 2d       	mov	r27, r15
     922:	ae 2d       	mov	r26, r14
     924:	9d 2d       	mov	r25, r13
     926:	8c 2d       	mov	r24, r12
     928:	8f 56       	subi	r24, 0x6F	; 111
     92a:	9f 4f       	sbci	r25, 0xFF	; 255
     92c:	e8 2f       	mov	r30, r24
     92e:	f9 2f       	mov	r31, r25
     930:	80 81       	ld	r24, Z
     932:	48 1b       	sub	r20, r24
     934:	51 09       	sbc	r21, r1
     936:	61 09       	sbc	r22, r1
     938:	71 09       	sbc	r23, r1
     93a:	84 2f       	mov	r24, r20
     93c:	95 2f       	mov	r25, r21
     93e:	1f 91       	pop	r17
     940:	0f 91       	pop	r16
     942:	ff 90       	pop	r15
     944:	ef 90       	pop	r14
     946:	df 90       	pop	r13
     948:	cf 90       	pop	r12
     94a:	08 95       	ret

0000094c <__pack_f>:
     94c:	cf 92       	push	r12
     94e:	df 92       	push	r13
     950:	ef 92       	push	r14
     952:	ff 92       	push	r15
     954:	0f 93       	push	r16
     956:	1f 93       	push	r17
     958:	a8 2f       	mov	r26, r24
     95a:	b9 2f       	mov	r27, r25
     95c:	14 96       	adiw	r26, 0x04	; 4
     95e:	4d 91       	ld	r20, X+
     960:	5d 91       	ld	r21, X+
     962:	6d 91       	ld	r22, X+
     964:	7c 91       	ld	r23, X
     966:	17 97       	sbiw	r26, 0x07	; 7
     968:	11 96       	adiw	r26, 0x01	; 1
     96a:	ec 91       	ld	r30, X
     96c:	11 97       	sbiw	r26, 0x01	; 1
     96e:	8c 91       	ld	r24, X
     970:	82 30       	cpi	r24, 0x02	; 2
     972:	20 f4       	brcc	.+8      	; 0x97c <__pack_f+0x30>
     974:	60 61       	ori	r22, 0x10	; 16
     976:	8f ef       	ldi	r24, 0xFF	; 255
     978:	90 e0       	ldi	r25, 0x00	; 0
     97a:	ae c0       	rjmp	.+348    	; 0xad8 <__pack_f+0x18c>
     97c:	84 30       	cpi	r24, 0x04	; 4
     97e:	09 f4       	brne	.+2      	; 0x982 <__pack_f+0x36>
     980:	a5 c0       	rjmp	.+330    	; 0xacc <__pack_f+0x180>
     982:	82 30       	cpi	r24, 0x02	; 2
     984:	09 f4       	brne	.+2      	; 0x988 <__pack_f+0x3c>
     986:	9c c0       	rjmp	.+312    	; 0xac0 <__pack_f+0x174>
     988:	41 15       	cp	r20, r1
     98a:	51 05       	cpc	r21, r1
     98c:	61 05       	cpc	r22, r1
     98e:	71 05       	cpc	r23, r1
     990:	09 f4       	brne	.+2      	; 0x994 <__pack_f+0x48>
     992:	99 c0       	rjmp	.+306    	; 0xac6 <__pack_f+0x17a>
     994:	12 96       	adiw	r26, 0x02	; 2
     996:	8d 91       	ld	r24, X+
     998:	9c 91       	ld	r25, X
     99a:	13 97       	sbiw	r26, 0x03	; 3
     99c:	2f ef       	ldi	r18, 0xFF	; 255
     99e:	82 38       	cpi	r24, 0x82	; 130
     9a0:	92 07       	cpc	r25, r18
     9a2:	0c f0       	brlt	.+2      	; 0x9a6 <__pack_f+0x5a>
     9a4:	5f c0       	rjmp	.+190    	; 0xa64 <__pack_f+0x118>
     9a6:	22 e8       	ldi	r18, 0x82	; 130
     9a8:	3f ef       	ldi	r19, 0xFF	; 255
     9aa:	28 1b       	sub	r18, r24
     9ac:	39 0b       	sbc	r19, r25
     9ae:	2a 31       	cpi	r18, 0x1A	; 26
     9b0:	31 05       	cpc	r19, r1
     9b2:	7c f5       	brge	.+94     	; 0xa12 <__pack_f+0xc6>
     9b4:	c4 2e       	mov	r12, r20
     9b6:	d5 2e       	mov	r13, r21
     9b8:	e6 2e       	mov	r14, r22
     9ba:	f7 2e       	mov	r15, r23
     9bc:	02 2e       	mov	r0, r18
     9be:	04 c0       	rjmp	.+8      	; 0x9c8 <__pack_f+0x7c>
     9c0:	f6 94       	lsr	r15
     9c2:	e7 94       	ror	r14
     9c4:	d7 94       	ror	r13
     9c6:	c7 94       	ror	r12
     9c8:	0a 94       	dec	r0
     9ca:	d2 f7       	brpl	.-12     	; 0x9c0 <__pack_f+0x74>
     9cc:	81 e0       	ldi	r24, 0x01	; 1
     9ce:	90 e0       	ldi	r25, 0x00	; 0
     9d0:	a0 e0       	ldi	r26, 0x00	; 0
     9d2:	b0 e0       	ldi	r27, 0x00	; 0
     9d4:	04 c0       	rjmp	.+8      	; 0x9de <__pack_f+0x92>
     9d6:	88 0f       	add	r24, r24
     9d8:	99 1f       	adc	r25, r25
     9da:	aa 1f       	adc	r26, r26
     9dc:	bb 1f       	adc	r27, r27
     9de:	2a 95       	dec	r18
     9e0:	d2 f7       	brpl	.-12     	; 0x9d6 <__pack_f+0x8a>
     9e2:	01 97       	sbiw	r24, 0x01	; 1
     9e4:	a1 09       	sbc	r26, r1
     9e6:	b1 09       	sbc	r27, r1
     9e8:	84 23       	and	r24, r20
     9ea:	95 23       	and	r25, r21
     9ec:	a6 23       	and	r26, r22
     9ee:	b7 23       	and	r27, r23
     9f0:	41 e0       	ldi	r20, 0x01	; 1
     9f2:	50 e0       	ldi	r21, 0x00	; 0
     9f4:	60 e0       	ldi	r22, 0x00	; 0
     9f6:	70 e0       	ldi	r23, 0x00	; 0
     9f8:	00 97       	sbiw	r24, 0x00	; 0
     9fa:	a1 05       	cpc	r26, r1
     9fc:	b1 05       	cpc	r27, r1
     9fe:	21 f4       	brne	.+8      	; 0xa08 <__pack_f+0xbc>
     a00:	40 e0       	ldi	r20, 0x00	; 0
     a02:	50 e0       	ldi	r21, 0x00	; 0
     a04:	60 e0       	ldi	r22, 0x00	; 0
     a06:	70 e0       	ldi	r23, 0x00	; 0
     a08:	4c 29       	or	r20, r12
     a0a:	5d 29       	or	r21, r13
     a0c:	6e 29       	or	r22, r14
     a0e:	7f 29       	or	r23, r15
     a10:	04 c0       	rjmp	.+8      	; 0xa1a <__pack_f+0xce>
     a12:	40 e0       	ldi	r20, 0x00	; 0
     a14:	50 e0       	ldi	r21, 0x00	; 0
     a16:	60 e0       	ldi	r22, 0x00	; 0
     a18:	70 e0       	ldi	r23, 0x00	; 0
     a1a:	b7 2f       	mov	r27, r23
     a1c:	a6 2f       	mov	r26, r22
     a1e:	95 2f       	mov	r25, r21
     a20:	84 2f       	mov	r24, r20
     a22:	8f 77       	andi	r24, 0x7F	; 127
     a24:	90 70       	andi	r25, 0x00	; 0
     a26:	a0 70       	andi	r26, 0x00	; 0
     a28:	b0 70       	andi	r27, 0x00	; 0
     a2a:	80 34       	cpi	r24, 0x40	; 64
     a2c:	91 05       	cpc	r25, r1
     a2e:	a1 05       	cpc	r26, r1
     a30:	b1 05       	cpc	r27, r1
     a32:	39 f4       	brne	.+14     	; 0xa42 <__pack_f+0xf6>
     a34:	47 ff       	sbrs	r20, 7
     a36:	09 c0       	rjmp	.+18     	; 0xa4a <__pack_f+0xfe>
     a38:	40 5c       	subi	r20, 0xC0	; 192
     a3a:	5f 4f       	sbci	r21, 0xFF	; 255
     a3c:	6f 4f       	sbci	r22, 0xFF	; 255
     a3e:	7f 4f       	sbci	r23, 0xFF	; 255
     a40:	04 c0       	rjmp	.+8      	; 0xa4a <__pack_f+0xfe>
     a42:	41 5c       	subi	r20, 0xC1	; 193
     a44:	5f 4f       	sbci	r21, 0xFF	; 255
     a46:	6f 4f       	sbci	r22, 0xFF	; 255
     a48:	7f 4f       	sbci	r23, 0xFF	; 255
     a4a:	81 e0       	ldi	r24, 0x01	; 1
     a4c:	90 e0       	ldi	r25, 0x00	; 0
     a4e:	40 30       	cpi	r20, 0x00	; 0
     a50:	20 e0       	ldi	r18, 0x00	; 0
     a52:	52 07       	cpc	r21, r18
     a54:	20 e0       	ldi	r18, 0x00	; 0
     a56:	62 07       	cpc	r22, r18
     a58:	20 e4       	ldi	r18, 0x40	; 64
     a5a:	72 07       	cpc	r23, r18
     a5c:	48 f5       	brcc	.+82     	; 0xab0 <__pack_f+0x164>
     a5e:	80 e0       	ldi	r24, 0x00	; 0
     a60:	90 e0       	ldi	r25, 0x00	; 0
     a62:	26 c0       	rjmp	.+76     	; 0xab0 <__pack_f+0x164>
     a64:	80 38       	cpi	r24, 0x80	; 128
     a66:	91 05       	cpc	r25, r1
     a68:	8c f5       	brge	.+98     	; 0xacc <__pack_f+0x180>
     a6a:	04 2f       	mov	r16, r20
     a6c:	15 2f       	mov	r17, r21
     a6e:	26 2f       	mov	r18, r22
     a70:	37 2f       	mov	r19, r23
     a72:	0f 77       	andi	r16, 0x7F	; 127
     a74:	10 70       	andi	r17, 0x00	; 0
     a76:	20 70       	andi	r18, 0x00	; 0
     a78:	30 70       	andi	r19, 0x00	; 0
     a7a:	00 34       	cpi	r16, 0x40	; 64
     a7c:	11 05       	cpc	r17, r1
     a7e:	21 05       	cpc	r18, r1
     a80:	31 05       	cpc	r19, r1
     a82:	39 f4       	brne	.+14     	; 0xa92 <__pack_f+0x146>
     a84:	47 ff       	sbrs	r20, 7
     a86:	09 c0       	rjmp	.+18     	; 0xa9a <__pack_f+0x14e>
     a88:	40 5c       	subi	r20, 0xC0	; 192
     a8a:	5f 4f       	sbci	r21, 0xFF	; 255
     a8c:	6f 4f       	sbci	r22, 0xFF	; 255
     a8e:	7f 4f       	sbci	r23, 0xFF	; 255
     a90:	04 c0       	rjmp	.+8      	; 0xa9a <__pack_f+0x14e>
     a92:	41 5c       	subi	r20, 0xC1	; 193
     a94:	5f 4f       	sbci	r21, 0xFF	; 255
     a96:	6f 4f       	sbci	r22, 0xFF	; 255
     a98:	7f 4f       	sbci	r23, 0xFF	; 255
     a9a:	77 fd       	sbrc	r23, 7
     a9c:	03 c0       	rjmp	.+6      	; 0xaa4 <__pack_f+0x158>
     a9e:	81 58       	subi	r24, 0x81	; 129
     aa0:	9f 4f       	sbci	r25, 0xFF	; 255
     aa2:	06 c0       	rjmp	.+12     	; 0xab0 <__pack_f+0x164>
     aa4:	76 95       	lsr	r23
     aa6:	67 95       	ror	r22
     aa8:	57 95       	ror	r21
     aaa:	47 95       	ror	r20
     aac:	80 58       	subi	r24, 0x80	; 128
     aae:	9f 4f       	sbci	r25, 0xFF	; 255
     ab0:	97 e0       	ldi	r25, 0x07	; 7
     ab2:	76 95       	lsr	r23
     ab4:	67 95       	ror	r22
     ab6:	57 95       	ror	r21
     ab8:	47 95       	ror	r20
     aba:	9a 95       	dec	r25
     abc:	d1 f7       	brne	.-12     	; 0xab2 <__pack_f+0x166>
     abe:	0c c0       	rjmp	.+24     	; 0xad8 <__pack_f+0x18c>
     ac0:	80 e0       	ldi	r24, 0x00	; 0
     ac2:	90 e0       	ldi	r25, 0x00	; 0
     ac4:	05 c0       	rjmp	.+10     	; 0xad0 <__pack_f+0x184>
     ac6:	80 e0       	ldi	r24, 0x00	; 0
     ac8:	90 e0       	ldi	r25, 0x00	; 0
     aca:	06 c0       	rjmp	.+12     	; 0xad8 <__pack_f+0x18c>
     acc:	8f ef       	ldi	r24, 0xFF	; 255
     ace:	90 e0       	ldi	r25, 0x00	; 0
     ad0:	40 e0       	ldi	r20, 0x00	; 0
     ad2:	50 e0       	ldi	r21, 0x00	; 0
     ad4:	60 e0       	ldi	r22, 0x00	; 0
     ad6:	70 e0       	ldi	r23, 0x00	; 0
     ad8:	98 2f       	mov	r25, r24
     ada:	97 95       	ror	r25
     adc:	99 27       	eor	r25, r25
     ade:	97 95       	ror	r25
     ae0:	a6 2f       	mov	r26, r22
     ae2:	af 77       	andi	r26, 0x7F	; 127
     ae4:	e7 95       	ror	r30
     ae6:	ee 27       	eor	r30, r30
     ae8:	e7 95       	ror	r30
     aea:	86 95       	lsr	r24
     aec:	3a 2f       	mov	r19, r26
     aee:	39 2b       	or	r19, r25
     af0:	28 2f       	mov	r18, r24
     af2:	2e 2b       	or	r18, r30
     af4:	84 2f       	mov	r24, r20
     af6:	95 2f       	mov	r25, r21
     af8:	a3 2f       	mov	r26, r19
     afa:	b2 2f       	mov	r27, r18
     afc:	68 2f       	mov	r22, r24
     afe:	79 2f       	mov	r23, r25
     b00:	8a 2f       	mov	r24, r26
     b02:	9b 2f       	mov	r25, r27
     b04:	1f 91       	pop	r17
     b06:	0f 91       	pop	r16
     b08:	ff 90       	pop	r15
     b0a:	ef 90       	pop	r14
     b0c:	df 90       	pop	r13
     b0e:	cf 90       	pop	r12
     b10:	08 95       	ret

00000b12 <__unpack_f>:
     b12:	a8 2f       	mov	r26, r24
     b14:	b9 2f       	mov	r27, r25
     b16:	e6 2f       	mov	r30, r22
     b18:	f7 2f       	mov	r31, r23
     b1a:	4c 91       	ld	r20, X
     b1c:	11 96       	adiw	r26, 0x01	; 1
     b1e:	5c 91       	ld	r21, X
     b20:	11 97       	sbiw	r26, 0x01	; 1
     b22:	12 96       	adiw	r26, 0x02	; 2
     b24:	8c 91       	ld	r24, X
     b26:	12 97       	sbiw	r26, 0x02	; 2
     b28:	68 2f       	mov	r22, r24
     b2a:	6f 77       	andi	r22, 0x7F	; 127
     b2c:	70 e0       	ldi	r23, 0x00	; 0
     b2e:	98 2f       	mov	r25, r24
     b30:	99 1f       	adc	r25, r25
     b32:	99 27       	eor	r25, r25
     b34:	99 1f       	adc	r25, r25
     b36:	13 96       	adiw	r26, 0x03	; 3
     b38:	2c 91       	ld	r18, X
     b3a:	13 97       	sbiw	r26, 0x03	; 3
     b3c:	82 2f       	mov	r24, r18
     b3e:	88 0f       	add	r24, r24
     b40:	89 2b       	or	r24, r25
     b42:	90 e0       	ldi	r25, 0x00	; 0
     b44:	22 1f       	adc	r18, r18
     b46:	22 27       	eor	r18, r18
     b48:	22 1f       	adc	r18, r18
     b4a:	21 83       	std	Z+1, r18	; 0x01
     b4c:	00 97       	sbiw	r24, 0x00	; 0
     b4e:	39 f5       	brne	.+78     	; 0xb9e <__unpack_f+0x8c>
     b50:	41 15       	cp	r20, r1
     b52:	51 05       	cpc	r21, r1
     b54:	61 05       	cpc	r22, r1
     b56:	71 05       	cpc	r23, r1
     b58:	11 f4       	brne	.+4      	; 0xb5e <__unpack_f+0x4c>
     b5a:	82 e0       	ldi	r24, 0x02	; 2
     b5c:	29 c0       	rjmp	.+82     	; 0xbb0 <__unpack_f+0x9e>
     b5e:	82 e8       	ldi	r24, 0x82	; 130
     b60:	9f ef       	ldi	r25, 0xFF	; 255
     b62:	93 83       	std	Z+3, r25	; 0x03
     b64:	82 83       	std	Z+2, r24	; 0x02
     b66:	27 e0       	ldi	r18, 0x07	; 7
     b68:	44 0f       	add	r20, r20
     b6a:	55 1f       	adc	r21, r21
     b6c:	66 1f       	adc	r22, r22
     b6e:	77 1f       	adc	r23, r23
     b70:	2a 95       	dec	r18
     b72:	d1 f7       	brne	.-12     	; 0xb68 <__unpack_f+0x56>
     b74:	83 e0       	ldi	r24, 0x03	; 3
     b76:	80 83       	st	Z, r24
     b78:	09 c0       	rjmp	.+18     	; 0xb8c <__unpack_f+0x7a>
     b7a:	44 0f       	add	r20, r20
     b7c:	55 1f       	adc	r21, r21
     b7e:	66 1f       	adc	r22, r22
     b80:	77 1f       	adc	r23, r23
     b82:	82 81       	ldd	r24, Z+2	; 0x02
     b84:	93 81       	ldd	r25, Z+3	; 0x03
     b86:	01 97       	sbiw	r24, 0x01	; 1
     b88:	93 83       	std	Z+3, r25	; 0x03
     b8a:	82 83       	std	Z+2, r24	; 0x02
     b8c:	40 30       	cpi	r20, 0x00	; 0
     b8e:	80 e0       	ldi	r24, 0x00	; 0
     b90:	58 07       	cpc	r21, r24
     b92:	80 e0       	ldi	r24, 0x00	; 0
     b94:	68 07       	cpc	r22, r24
     b96:	80 e4       	ldi	r24, 0x40	; 64
     b98:	78 07       	cpc	r23, r24
     b9a:	78 f3       	brcs	.-34     	; 0xb7a <__unpack_f+0x68>
     b9c:	20 c0       	rjmp	.+64     	; 0xbde <__unpack_f+0xcc>
     b9e:	8f 3f       	cpi	r24, 0xFF	; 255
     ba0:	91 05       	cpc	r25, r1
     ba2:	79 f4       	brne	.+30     	; 0xbc2 <__unpack_f+0xb0>
     ba4:	41 15       	cp	r20, r1
     ba6:	51 05       	cpc	r21, r1
     ba8:	61 05       	cpc	r22, r1
     baa:	71 05       	cpc	r23, r1
     bac:	19 f4       	brne	.+6      	; 0xbb4 <__unpack_f+0xa2>
     bae:	84 e0       	ldi	r24, 0x04	; 4
     bb0:	80 83       	st	Z, r24
     bb2:	08 95       	ret
     bb4:	64 ff       	sbrs	r22, 4
     bb6:	03 c0       	rjmp	.+6      	; 0xbbe <__unpack_f+0xac>
     bb8:	81 e0       	ldi	r24, 0x01	; 1
     bba:	80 83       	st	Z, r24
     bbc:	10 c0       	rjmp	.+32     	; 0xbde <__unpack_f+0xcc>
     bbe:	10 82       	st	Z, r1
     bc0:	0e c0       	rjmp	.+28     	; 0xbde <__unpack_f+0xcc>
     bc2:	8f 57       	subi	r24, 0x7F	; 127
     bc4:	90 40       	sbci	r25, 0x00	; 0
     bc6:	93 83       	std	Z+3, r25	; 0x03
     bc8:	82 83       	std	Z+2, r24	; 0x02
     bca:	83 e0       	ldi	r24, 0x03	; 3
     bcc:	80 83       	st	Z, r24
     bce:	87 e0       	ldi	r24, 0x07	; 7
     bd0:	44 0f       	add	r20, r20
     bd2:	55 1f       	adc	r21, r21
     bd4:	66 1f       	adc	r22, r22
     bd6:	77 1f       	adc	r23, r23
     bd8:	8a 95       	dec	r24
     bda:	d1 f7       	brne	.-12     	; 0xbd0 <__unpack_f+0xbe>
     bdc:	70 64       	ori	r23, 0x40	; 64
     bde:	44 83       	std	Z+4, r20	; 0x04
     be0:	55 83       	std	Z+5, r21	; 0x05
     be2:	66 83       	std	Z+6, r22	; 0x06
     be4:	77 83       	std	Z+7, r23	; 0x07
     be6:	08 95       	ret

00000be8 <__prologue_saves__>:
     be8:	2f 92       	push	r2
     bea:	3f 92       	push	r3
     bec:	4f 92       	push	r4
     bee:	5f 92       	push	r5
     bf0:	6f 92       	push	r6
     bf2:	7f 92       	push	r7
     bf4:	8f 92       	push	r8
     bf6:	9f 92       	push	r9
     bf8:	af 92       	push	r10
     bfa:	bf 92       	push	r11
     bfc:	cf 92       	push	r12
     bfe:	df 92       	push	r13
     c00:	ef 92       	push	r14
     c02:	ff 92       	push	r15
     c04:	0f 93       	push	r16
     c06:	1f 93       	push	r17
     c08:	cf 93       	push	r28
     c0a:	df 93       	push	r29
     c0c:	cd b7       	in	r28, 0x3d	; 61
     c0e:	de b7       	in	r29, 0x3e	; 62
     c10:	ca 1b       	sub	r28, r26
     c12:	db 0b       	sbc	r29, r27
     c14:	0f b6       	in	r0, 0x3f	; 63
     c16:	f8 94       	cli
     c18:	de bf       	out	0x3e, r29	; 62
     c1a:	0f be       	out	0x3f, r0	; 63
     c1c:	cd bf       	out	0x3d, r28	; 61
     c1e:	09 94       	ijmp

00000c20 <__epilogue_restores__>:
     c20:	2a 88       	ldd	r2, Y+18	; 0x12
     c22:	39 88       	ldd	r3, Y+17	; 0x11
     c24:	48 88       	ldd	r4, Y+16	; 0x10
     c26:	5f 84       	ldd	r5, Y+15	; 0x0f
     c28:	6e 84       	ldd	r6, Y+14	; 0x0e
     c2a:	7d 84       	ldd	r7, Y+13	; 0x0d
     c2c:	8c 84       	ldd	r8, Y+12	; 0x0c
     c2e:	9b 84       	ldd	r9, Y+11	; 0x0b
     c30:	aa 84       	ldd	r10, Y+10	; 0x0a
     c32:	b9 84       	ldd	r11, Y+9	; 0x09
     c34:	c8 84       	ldd	r12, Y+8	; 0x08
     c36:	df 80       	ldd	r13, Y+7	; 0x07
     c38:	ee 80       	ldd	r14, Y+6	; 0x06
     c3a:	fd 80       	ldd	r15, Y+5	; 0x05
     c3c:	0c 81       	ldd	r16, Y+4	; 0x04
     c3e:	1b 81       	ldd	r17, Y+3	; 0x03
     c40:	aa 81       	ldd	r26, Y+2	; 0x02
     c42:	b9 81       	ldd	r27, Y+1	; 0x01
     c44:	ce 0f       	add	r28, r30
     c46:	d1 1d       	adc	r29, r1
     c48:	0f b6       	in	r0, 0x3f	; 63
     c4a:	f8 94       	cli
     c4c:	de bf       	out	0x3e, r29	; 62
     c4e:	0f be       	out	0x3f, r0	; 63
     c50:	cd bf       	out	0x3d, r28	; 61
     c52:	ca 2f       	mov	r28, r26
     c54:	db 2f       	mov	r29, r27
     c56:	08 95       	ret

00000c58 <printf>:
     c58:	a0 e0       	ldi	r26, 0x00	; 0
     c5a:	b0 e0       	ldi	r27, 0x00	; 0
     c5c:	e1 e3       	ldi	r30, 0x31	; 49
     c5e:	f6 e0       	ldi	r31, 0x06	; 6
     c60:	d3 cf       	rjmp	.-90     	; 0xc08 <__prologue_saves__+0x20>
     c62:	ec 2f       	mov	r30, r28
     c64:	fd 2f       	mov	r31, r29
     c66:	35 96       	adiw	r30, 0x05	; 5
     c68:	61 91       	ld	r22, Z+
     c6a:	71 91       	ld	r23, Z+
     c6c:	80 91 94 01 	lds	r24, 0x0194
     c70:	90 91 95 01 	lds	r25, 0x0195
     c74:	4e 2f       	mov	r20, r30
     c76:	5f 2f       	mov	r21, r31
     c78:	09 d0       	rcall	.+18     	; 0xc8c <vfprintf>
     c7a:	20 96       	adiw	r28, 0x00	; 0
     c7c:	e2 e0       	ldi	r30, 0x02	; 2
     c7e:	e0 cf       	rjmp	.-64     	; 0xc40 <__epilogue_restores__+0x20>

00000c80 <sin>:
     c80:	9f 93       	push	r25
     c82:	a8 d2       	rcall	.+1360   	; 0x11d4 <__fp_rempio2>
     c84:	0f 90       	pop	r0
     c86:	07 fc       	sbrc	r0, 7
     c88:	ee 5f       	subi	r30, 0xFE	; 254
     c8a:	cb c2       	rjmp	.+1430   	; 0x1222 <__fp_sinus>

00000c8c <vfprintf>:
     c8c:	ad e0       	ldi	r26, 0x0D	; 13
     c8e:	b0 e0       	ldi	r27, 0x00	; 0
     c90:	eb e4       	ldi	r30, 0x4B	; 75
     c92:	f6 e0       	ldi	r31, 0x06	; 6
     c94:	a9 cf       	rjmp	.-174    	; 0xbe8 <__prologue_saves__>
     c96:	68 2e       	mov	r6, r24
     c98:	79 2e       	mov	r7, r25
     c9a:	7d 87       	std	Y+13, r23	; 0x0d
     c9c:	6c 87       	std	Y+12, r22	; 0x0c
     c9e:	a4 2e       	mov	r10, r20
     ca0:	b5 2e       	mov	r11, r21
     ca2:	e8 2f       	mov	r30, r24
     ca4:	f9 2f       	mov	r31, r25
     ca6:	17 82       	std	Z+7, r1	; 0x07
     ca8:	16 82       	std	Z+6, r1	; 0x06
     caa:	83 81       	ldd	r24, Z+3	; 0x03
     cac:	81 ff       	sbrs	r24, 1
     cae:	e0 c1       	rjmp	.+960    	; 0x1070 <vfprintf+0x3e4>
     cb0:	4c 2e       	mov	r4, r28
     cb2:	5d 2e       	mov	r5, r29
     cb4:	08 94       	sec
     cb6:	41 1c       	adc	r4, r1
     cb8:	51 1c       	adc	r5, r1
     cba:	e6 2d       	mov	r30, r6
     cbc:	f7 2d       	mov	r31, r7
     cbe:	93 81       	ldd	r25, Z+3	; 0x03
     cc0:	ec 85       	ldd	r30, Y+12	; 0x0c
     cc2:	fd 85       	ldd	r31, Y+13	; 0x0d
     cc4:	93 fd       	sbrc	r25, 3
     cc6:	c8 95       	lpm
     cc8:	93 ff       	sbrs	r25, 3
     cca:	00 80       	ld	r0, Z
     ccc:	31 96       	adiw	r30, 0x01	; 1
     cce:	80 2d       	mov	r24, r0
     cd0:	fd 87       	std	Y+13, r31	; 0x0d
     cd2:	ec 87       	std	Y+12, r30	; 0x0c
     cd4:	88 23       	and	r24, r24
     cd6:	09 f4       	brne	.+2      	; 0xcda <vfprintf+0x4e>
     cd8:	c6 c1       	rjmp	.+908    	; 0x1066 <vfprintf+0x3da>
     cda:	85 32       	cpi	r24, 0x25	; 37
     cdc:	51 f4       	brne	.+20     	; 0xcf2 <vfprintf+0x66>
     cde:	93 fd       	sbrc	r25, 3
     ce0:	c8 95       	lpm
     ce2:	93 ff       	sbrs	r25, 3
     ce4:	00 80       	ld	r0, Z
     ce6:	31 96       	adiw	r30, 0x01	; 1
     ce8:	80 2d       	mov	r24, r0
     cea:	fd 87       	std	Y+13, r31	; 0x0d
     cec:	ec 87       	std	Y+12, r30	; 0x0c
     cee:	85 32       	cpi	r24, 0x25	; 37
     cf0:	29 f4       	brne	.+10     	; 0xcfc <vfprintf+0x70>
     cf2:	90 e0       	ldi	r25, 0x00	; 0
     cf4:	66 2d       	mov	r22, r6
     cf6:	77 2d       	mov	r23, r7
     cf8:	d9 d1       	rcall	.+946    	; 0x10ac <fputc>
     cfa:	df cf       	rjmp	.-66     	; 0xcba <vfprintf+0x2e>
     cfc:	dd 24       	eor	r13, r13
     cfe:	ee 24       	eor	r14, r14
     d00:	10 e0       	ldi	r17, 0x00	; 0
     d02:	10 32       	cpi	r17, 0x20	; 32
     d04:	b0 f4       	brcc	.+44     	; 0xd32 <vfprintf+0xa6>
     d06:	8b 32       	cpi	r24, 0x2B	; 43
     d08:	69 f0       	breq	.+26     	; 0xd24 <vfprintf+0x98>
     d0a:	8c 32       	cpi	r24, 0x2C	; 44
     d0c:	28 f4       	brcc	.+10     	; 0xd18 <vfprintf+0x8c>
     d0e:	80 32       	cpi	r24, 0x20	; 32
     d10:	51 f0       	breq	.+20     	; 0xd26 <vfprintf+0x9a>
     d12:	83 32       	cpi	r24, 0x23	; 35
     d14:	71 f4       	brne	.+28     	; 0xd32 <vfprintf+0xa6>
     d16:	0b c0       	rjmp	.+22     	; 0xd2e <vfprintf+0xa2>
     d18:	8d 32       	cpi	r24, 0x2D	; 45
     d1a:	39 f0       	breq	.+14     	; 0xd2a <vfprintf+0x9e>
     d1c:	80 33       	cpi	r24, 0x30	; 48
     d1e:	49 f4       	brne	.+18     	; 0xd32 <vfprintf+0xa6>
     d20:	11 60       	ori	r17, 0x01	; 1
     d22:	28 c0       	rjmp	.+80     	; 0xd74 <vfprintf+0xe8>
     d24:	12 60       	ori	r17, 0x02	; 2
     d26:	14 60       	ori	r17, 0x04	; 4
     d28:	25 c0       	rjmp	.+74     	; 0xd74 <vfprintf+0xe8>
     d2a:	18 60       	ori	r17, 0x08	; 8
     d2c:	23 c0       	rjmp	.+70     	; 0xd74 <vfprintf+0xe8>
     d2e:	10 61       	ori	r17, 0x10	; 16
     d30:	21 c0       	rjmp	.+66     	; 0xd74 <vfprintf+0xe8>
     d32:	17 fd       	sbrc	r17, 7
     d34:	2c c0       	rjmp	.+88     	; 0xd8e <vfprintf+0x102>
     d36:	28 2f       	mov	r18, r24
     d38:	20 53       	subi	r18, 0x30	; 48
     d3a:	2a 30       	cpi	r18, 0x0A	; 10
     d3c:	78 f4       	brcc	.+30     	; 0xd5c <vfprintf+0xd0>
     d3e:	16 ff       	sbrs	r17, 6
     d40:	06 c0       	rjmp	.+12     	; 0xd4e <vfprintf+0xc2>
     d42:	8d 2d       	mov	r24, r13
     d44:	6a e0       	ldi	r22, 0x0A	; 10
     d46:	f6 d3       	rcall	.+2028   	; 0x1534 <__mulqi3>
     d48:	d8 2e       	mov	r13, r24
     d4a:	d2 0e       	add	r13, r18
     d4c:	13 c0       	rjmp	.+38     	; 0xd74 <vfprintf+0xe8>
     d4e:	8e 2d       	mov	r24, r14
     d50:	6a e0       	ldi	r22, 0x0A	; 10
     d52:	f0 d3       	rcall	.+2016   	; 0x1534 <__mulqi3>
     d54:	e8 2e       	mov	r14, r24
     d56:	e2 0e       	add	r14, r18
     d58:	10 62       	ori	r17, 0x20	; 32
     d5a:	0c c0       	rjmp	.+24     	; 0xd74 <vfprintf+0xe8>
     d5c:	8e 32       	cpi	r24, 0x2E	; 46
     d5e:	21 f4       	brne	.+8      	; 0xd68 <vfprintf+0xdc>
     d60:	16 fd       	sbrc	r17, 6
     d62:	81 c1       	rjmp	.+770    	; 0x1066 <vfprintf+0x3da>
     d64:	10 64       	ori	r17, 0x40	; 64
     d66:	06 c0       	rjmp	.+12     	; 0xd74 <vfprintf+0xe8>
     d68:	8c 36       	cpi	r24, 0x6C	; 108
     d6a:	11 f4       	brne	.+4      	; 0xd70 <vfprintf+0xe4>
     d6c:	10 68       	ori	r17, 0x80	; 128
     d6e:	02 c0       	rjmp	.+4      	; 0xd74 <vfprintf+0xe8>
     d70:	88 36       	cpi	r24, 0x68	; 104
     d72:	69 f4       	brne	.+26     	; 0xd8e <vfprintf+0x102>
     d74:	ec 85       	ldd	r30, Y+12	; 0x0c
     d76:	fd 85       	ldd	r31, Y+13	; 0x0d
     d78:	93 fd       	sbrc	r25, 3
     d7a:	c8 95       	lpm
     d7c:	93 ff       	sbrs	r25, 3
     d7e:	00 80       	ld	r0, Z
     d80:	31 96       	adiw	r30, 0x01	; 1
     d82:	80 2d       	mov	r24, r0
     d84:	fd 87       	std	Y+13, r31	; 0x0d
     d86:	ec 87       	std	Y+12, r30	; 0x0c
     d88:	88 23       	and	r24, r24
     d8a:	09 f0       	breq	.+2      	; 0xd8e <vfprintf+0x102>
     d8c:	ba cf       	rjmp	.-140    	; 0xd02 <vfprintf+0x76>
     d8e:	98 2f       	mov	r25, r24
     d90:	95 54       	subi	r25, 0x45	; 69
     d92:	93 30       	cpi	r25, 0x03	; 3
     d94:	18 f0       	brcs	.+6      	; 0xd9c <vfprintf+0x110>
     d96:	90 52       	subi	r25, 0x20	; 32
     d98:	93 30       	cpi	r25, 0x03	; 3
     d9a:	38 f4       	brcc	.+14     	; 0xdaa <vfprintf+0x11e>
     d9c:	24 e0       	ldi	r18, 0x04	; 4
     d9e:	30 e0       	ldi	r19, 0x00	; 0
     da0:	a2 0e       	add	r10, r18
     da2:	b3 1e       	adc	r11, r19
     da4:	3f e3       	ldi	r19, 0x3F	; 63
     da6:	39 83       	std	Y+1, r19	; 0x01
     da8:	10 c0       	rjmp	.+32     	; 0xdca <vfprintf+0x13e>
     daa:	83 36       	cpi	r24, 0x63	; 99
     dac:	31 f0       	breq	.+12     	; 0xdba <vfprintf+0x12e>
     dae:	83 37       	cpi	r24, 0x73	; 115
     db0:	91 f0       	breq	.+36     	; 0xdd6 <vfprintf+0x14a>
     db2:	83 35       	cpi	r24, 0x53	; 83
     db4:	09 f0       	breq	.+2      	; 0xdb8 <vfprintf+0x12c>
     db6:	66 c0       	rjmp	.+204    	; 0xe84 <vfprintf+0x1f8>
     db8:	27 c0       	rjmp	.+78     	; 0xe08 <vfprintf+0x17c>
     dba:	ea 2d       	mov	r30, r10
     dbc:	fb 2d       	mov	r31, r11
     dbe:	80 81       	ld	r24, Z
     dc0:	89 83       	std	Y+1, r24	; 0x01
     dc2:	22 e0       	ldi	r18, 0x02	; 2
     dc4:	30 e0       	ldi	r19, 0x00	; 0
     dc6:	a2 0e       	add	r10, r18
     dc8:	b3 1e       	adc	r11, r19
     dca:	21 e0       	ldi	r18, 0x01	; 1
     dcc:	c2 2e       	mov	r12, r18
     dce:	d1 2c       	mov	r13, r1
     dd0:	84 2c       	mov	r8, r4
     dd2:	95 2c       	mov	r9, r5
     dd4:	17 c0       	rjmp	.+46     	; 0xe04 <vfprintf+0x178>
     dd6:	92 e0       	ldi	r25, 0x02	; 2
     dd8:	29 2e       	mov	r2, r25
     dda:	31 2c       	mov	r3, r1
     ddc:	2a 0c       	add	r2, r10
     dde:	3b 1c       	adc	r3, r11
     de0:	ea 2d       	mov	r30, r10
     de2:	fb 2d       	mov	r31, r11
     de4:	80 80       	ld	r8, Z
     de6:	91 80       	ldd	r9, Z+1	; 0x01
     de8:	16 ff       	sbrs	r17, 6
     dea:	03 c0       	rjmp	.+6      	; 0xdf2 <vfprintf+0x166>
     dec:	6d 2d       	mov	r22, r13
     dee:	70 e0       	ldi	r23, 0x00	; 0
     df0:	02 c0       	rjmp	.+4      	; 0xdf6 <vfprintf+0x16a>
     df2:	6f ef       	ldi	r22, 0xFF	; 255
     df4:	7f ef       	ldi	r23, 0xFF	; 255
     df6:	88 2d       	mov	r24, r8
     df8:	99 2d       	mov	r25, r9
     dfa:	4c d1       	rcall	.+664    	; 0x1094 <strnlen>
     dfc:	c8 2e       	mov	r12, r24
     dfe:	d9 2e       	mov	r13, r25
     e00:	a2 2c       	mov	r10, r2
     e02:	b3 2c       	mov	r11, r3
     e04:	1f 77       	andi	r17, 0x7F	; 127
     e06:	18 c0       	rjmp	.+48     	; 0xe38 <vfprintf+0x1ac>
     e08:	82 e0       	ldi	r24, 0x02	; 2
     e0a:	28 2e       	mov	r2, r24
     e0c:	31 2c       	mov	r3, r1
     e0e:	2a 0c       	add	r2, r10
     e10:	3b 1c       	adc	r3, r11
     e12:	ea 2d       	mov	r30, r10
     e14:	fb 2d       	mov	r31, r11
     e16:	80 80       	ld	r8, Z
     e18:	91 80       	ldd	r9, Z+1	; 0x01
     e1a:	16 ff       	sbrs	r17, 6
     e1c:	03 c0       	rjmp	.+6      	; 0xe24 <vfprintf+0x198>
     e1e:	6d 2d       	mov	r22, r13
     e20:	70 e0       	ldi	r23, 0x00	; 0
     e22:	02 c0       	rjmp	.+4      	; 0xe28 <vfprintf+0x19c>
     e24:	6f ef       	ldi	r22, 0xFF	; 255
     e26:	7f ef       	ldi	r23, 0xFF	; 255
     e28:	88 2d       	mov	r24, r8
     e2a:	99 2d       	mov	r25, r9
     e2c:	26 d1       	rcall	.+588    	; 0x107a <strnlen_P>
     e2e:	c8 2e       	mov	r12, r24
     e30:	d9 2e       	mov	r13, r25
     e32:	10 68       	ori	r17, 0x80	; 128
     e34:	a2 2c       	mov	r10, r2
     e36:	b3 2c       	mov	r11, r3
     e38:	13 fd       	sbrc	r17, 3
     e3a:	20 c0       	rjmp	.+64     	; 0xe7c <vfprintf+0x1f0>
     e3c:	06 c0       	rjmp	.+12     	; 0xe4a <vfprintf+0x1be>
     e3e:	80 e2       	ldi	r24, 0x20	; 32
     e40:	90 e0       	ldi	r25, 0x00	; 0
     e42:	66 2d       	mov	r22, r6
     e44:	77 2d       	mov	r23, r7
     e46:	32 d1       	rcall	.+612    	; 0x10ac <fputc>
     e48:	ea 94       	dec	r14
     e4a:	8e 2d       	mov	r24, r14
     e4c:	90 e0       	ldi	r25, 0x00	; 0
     e4e:	c8 16       	cp	r12, r24
     e50:	d9 06       	cpc	r13, r25
     e52:	a8 f3       	brcs	.-22     	; 0xe3e <vfprintf+0x1b2>
     e54:	13 c0       	rjmp	.+38     	; 0xe7c <vfprintf+0x1f0>
     e56:	e8 2d       	mov	r30, r8
     e58:	f9 2d       	mov	r31, r9
     e5a:	17 fd       	sbrc	r17, 7
     e5c:	c8 95       	lpm
     e5e:	17 ff       	sbrs	r17, 7
     e60:	00 80       	ld	r0, Z
     e62:	31 96       	adiw	r30, 0x01	; 1
     e64:	80 2d       	mov	r24, r0
     e66:	8e 2e       	mov	r8, r30
     e68:	9f 2e       	mov	r9, r31
     e6a:	90 e0       	ldi	r25, 0x00	; 0
     e6c:	66 2d       	mov	r22, r6
     e6e:	77 2d       	mov	r23, r7
     e70:	1d d1       	rcall	.+570    	; 0x10ac <fputc>
     e72:	e1 10       	cpse	r14, r1
     e74:	ea 94       	dec	r14
     e76:	08 94       	sec
     e78:	c1 08       	sbc	r12, r1
     e7a:	d1 08       	sbc	r13, r1
     e7c:	c1 14       	cp	r12, r1
     e7e:	d1 04       	cpc	r13, r1
     e80:	51 f7       	brne	.-44     	; 0xe56 <vfprintf+0x1ca>
     e82:	ee c0       	rjmp	.+476    	; 0x1060 <vfprintf+0x3d4>
     e84:	84 36       	cpi	r24, 0x64	; 100
     e86:	11 f0       	breq	.+4      	; 0xe8c <vfprintf+0x200>
     e88:	89 36       	cpi	r24, 0x69	; 105
     e8a:	69 f5       	brne	.+90     	; 0xee6 <vfprintf+0x25a>
     e8c:	ea 2d       	mov	r30, r10
     e8e:	fb 2d       	mov	r31, r11
     e90:	17 ff       	sbrs	r17, 7
     e92:	07 c0       	rjmp	.+14     	; 0xea2 <vfprintf+0x216>
     e94:	80 81       	ld	r24, Z
     e96:	91 81       	ldd	r25, Z+1	; 0x01
     e98:	a2 81       	ldd	r26, Z+2	; 0x02
     e9a:	b3 81       	ldd	r27, Z+3	; 0x03
     e9c:	24 e0       	ldi	r18, 0x04	; 4
     e9e:	30 e0       	ldi	r19, 0x00	; 0
     ea0:	08 c0       	rjmp	.+16     	; 0xeb2 <vfprintf+0x226>
     ea2:	80 81       	ld	r24, Z
     ea4:	91 81       	ldd	r25, Z+1	; 0x01
     ea6:	aa 27       	eor	r26, r26
     ea8:	97 fd       	sbrc	r25, 7
     eaa:	a0 95       	com	r26
     eac:	ba 2f       	mov	r27, r26
     eae:	22 e0       	ldi	r18, 0x02	; 2
     eb0:	30 e0       	ldi	r19, 0x00	; 0
     eb2:	a2 0e       	add	r10, r18
     eb4:	b3 1e       	adc	r11, r19
     eb6:	01 2f       	mov	r16, r17
     eb8:	0f 76       	andi	r16, 0x6F	; 111
     eba:	b7 ff       	sbrs	r27, 7
     ebc:	08 c0       	rjmp	.+16     	; 0xece <vfprintf+0x242>
     ebe:	b0 95       	com	r27
     ec0:	a0 95       	com	r26
     ec2:	90 95       	com	r25
     ec4:	81 95       	neg	r24
     ec6:	9f 4f       	sbci	r25, 0xFF	; 255
     ec8:	af 4f       	sbci	r26, 0xFF	; 255
     eca:	bf 4f       	sbci	r27, 0xFF	; 255
     ecc:	00 68       	ori	r16, 0x80	; 128
     ece:	68 2f       	mov	r22, r24
     ed0:	79 2f       	mov	r23, r25
     ed2:	8a 2f       	mov	r24, r26
     ed4:	9b 2f       	mov	r25, r27
     ed6:	44 2d       	mov	r20, r4
     ed8:	55 2d       	mov	r21, r5
     eda:	2a e0       	ldi	r18, 0x0A	; 10
     edc:	30 e0       	ldi	r19, 0x00	; 0
     ede:	15 d1       	rcall	.+554    	; 0x110a <__ultoa_invert>
     ee0:	f8 2e       	mov	r15, r24
     ee2:	f4 18       	sub	r15, r4
     ee4:	40 c0       	rjmp	.+128    	; 0xf66 <vfprintf+0x2da>
     ee6:	85 37       	cpi	r24, 0x75	; 117
     ee8:	21 f4       	brne	.+8      	; 0xef2 <vfprintf+0x266>
     eea:	1f 7e       	andi	r17, 0xEF	; 239
     eec:	2a e0       	ldi	r18, 0x0A	; 10
     eee:	30 e0       	ldi	r19, 0x00	; 0
     ef0:	20 c0       	rjmp	.+64     	; 0xf32 <vfprintf+0x2a6>
     ef2:	19 7f       	andi	r17, 0xF9	; 249
     ef4:	8f 36       	cpi	r24, 0x6F	; 111
     ef6:	a9 f0       	breq	.+42     	; 0xf22 <vfprintf+0x296>
     ef8:	80 37       	cpi	r24, 0x70	; 112
     efa:	20 f4       	brcc	.+8      	; 0xf04 <vfprintf+0x278>
     efc:	88 35       	cpi	r24, 0x58	; 88
     efe:	09 f0       	breq	.+2      	; 0xf02 <vfprintf+0x276>
     f00:	b2 c0       	rjmp	.+356    	; 0x1066 <vfprintf+0x3da>
     f02:	0b c0       	rjmp	.+22     	; 0xf1a <vfprintf+0x28e>
     f04:	80 37       	cpi	r24, 0x70	; 112
     f06:	21 f0       	breq	.+8      	; 0xf10 <vfprintf+0x284>
     f08:	88 37       	cpi	r24, 0x78	; 120
     f0a:	09 f0       	breq	.+2      	; 0xf0e <vfprintf+0x282>
     f0c:	ac c0       	rjmp	.+344    	; 0x1066 <vfprintf+0x3da>
     f0e:	01 c0       	rjmp	.+2      	; 0xf12 <vfprintf+0x286>
     f10:	10 61       	ori	r17, 0x10	; 16
     f12:	14 ff       	sbrs	r17, 4
     f14:	09 c0       	rjmp	.+18     	; 0xf28 <vfprintf+0x29c>
     f16:	14 60       	ori	r17, 0x04	; 4
     f18:	07 c0       	rjmp	.+14     	; 0xf28 <vfprintf+0x29c>
     f1a:	14 ff       	sbrs	r17, 4
     f1c:	08 c0       	rjmp	.+16     	; 0xf2e <vfprintf+0x2a2>
     f1e:	16 60       	ori	r17, 0x06	; 6
     f20:	06 c0       	rjmp	.+12     	; 0xf2e <vfprintf+0x2a2>
     f22:	28 e0       	ldi	r18, 0x08	; 8
     f24:	30 e0       	ldi	r19, 0x00	; 0
     f26:	05 c0       	rjmp	.+10     	; 0xf32 <vfprintf+0x2a6>
     f28:	20 e1       	ldi	r18, 0x10	; 16
     f2a:	30 e0       	ldi	r19, 0x00	; 0
     f2c:	02 c0       	rjmp	.+4      	; 0xf32 <vfprintf+0x2a6>
     f2e:	20 e1       	ldi	r18, 0x10	; 16
     f30:	32 e0       	ldi	r19, 0x02	; 2
     f32:	ea 2d       	mov	r30, r10
     f34:	fb 2d       	mov	r31, r11
     f36:	17 ff       	sbrs	r17, 7
     f38:	07 c0       	rjmp	.+14     	; 0xf48 <vfprintf+0x2bc>
     f3a:	60 81       	ld	r22, Z
     f3c:	71 81       	ldd	r23, Z+1	; 0x01
     f3e:	82 81       	ldd	r24, Z+2	; 0x02
     f40:	93 81       	ldd	r25, Z+3	; 0x03
     f42:	44 e0       	ldi	r20, 0x04	; 4
     f44:	50 e0       	ldi	r21, 0x00	; 0
     f46:	06 c0       	rjmp	.+12     	; 0xf54 <vfprintf+0x2c8>
     f48:	60 81       	ld	r22, Z
     f4a:	71 81       	ldd	r23, Z+1	; 0x01
     f4c:	80 e0       	ldi	r24, 0x00	; 0
     f4e:	90 e0       	ldi	r25, 0x00	; 0
     f50:	42 e0       	ldi	r20, 0x02	; 2
     f52:	50 e0       	ldi	r21, 0x00	; 0
     f54:	a4 0e       	add	r10, r20
     f56:	b5 1e       	adc	r11, r21
     f58:	44 2d       	mov	r20, r4
     f5a:	55 2d       	mov	r21, r5
     f5c:	d6 d0       	rcall	.+428    	; 0x110a <__ultoa_invert>
     f5e:	f8 2e       	mov	r15, r24
     f60:	f4 18       	sub	r15, r4
     f62:	01 2f       	mov	r16, r17
     f64:	0f 77       	andi	r16, 0x7F	; 127
     f66:	06 ff       	sbrs	r16, 6
     f68:	09 c0       	rjmp	.+18     	; 0xf7c <vfprintf+0x2f0>
     f6a:	0e 7f       	andi	r16, 0xFE	; 254
     f6c:	fd 14       	cp	r15, r13
     f6e:	30 f4       	brcc	.+12     	; 0xf7c <vfprintf+0x2f0>
     f70:	04 ff       	sbrs	r16, 4
     f72:	06 c0       	rjmp	.+12     	; 0xf80 <vfprintf+0x2f4>
     f74:	02 fd       	sbrc	r16, 2
     f76:	04 c0       	rjmp	.+8      	; 0xf80 <vfprintf+0x2f4>
     f78:	0f 7e       	andi	r16, 0xEF	; 239
     f7a:	02 c0       	rjmp	.+4      	; 0xf80 <vfprintf+0x2f4>
     f7c:	1f 2d       	mov	r17, r15
     f7e:	01 c0       	rjmp	.+2      	; 0xf82 <vfprintf+0x2f6>
     f80:	1d 2d       	mov	r17, r13
     f82:	80 2f       	mov	r24, r16
     f84:	90 e0       	ldi	r25, 0x00	; 0
     f86:	04 ff       	sbrs	r16, 4
     f88:	0d c0       	rjmp	.+26     	; 0xfa4 <vfprintf+0x318>
     f8a:	ec 2f       	mov	r30, r28
     f8c:	fd 2f       	mov	r31, r29
     f8e:	ef 0d       	add	r30, r15
     f90:	f1 1d       	adc	r31, r1
     f92:	20 81       	ld	r18, Z
     f94:	20 33       	cpi	r18, 0x30	; 48
     f96:	11 f4       	brne	.+4      	; 0xf9c <vfprintf+0x310>
     f98:	09 7e       	andi	r16, 0xE9	; 233
     f9a:	09 c0       	rjmp	.+18     	; 0xfae <vfprintf+0x322>
     f9c:	02 ff       	sbrs	r16, 2
     f9e:	06 c0       	rjmp	.+12     	; 0xfac <vfprintf+0x320>
     fa0:	1e 5f       	subi	r17, 0xFE	; 254
     fa2:	05 c0       	rjmp	.+10     	; 0xfae <vfprintf+0x322>
     fa4:	86 78       	andi	r24, 0x86	; 134
     fa6:	90 70       	andi	r25, 0x00	; 0
     fa8:	00 97       	sbiw	r24, 0x00	; 0
     faa:	09 f0       	breq	.+2      	; 0xfae <vfprintf+0x322>
     fac:	1f 5f       	subi	r17, 0xFF	; 255
     fae:	80 2e       	mov	r8, r16
     fb0:	99 24       	eor	r9, r9
     fb2:	03 fd       	sbrc	r16, 3
     fb4:	12 c0       	rjmp	.+36     	; 0xfda <vfprintf+0x34e>
     fb6:	00 ff       	sbrs	r16, 0
     fb8:	0d c0       	rjmp	.+26     	; 0xfd4 <vfprintf+0x348>
     fba:	df 2c       	mov	r13, r15
     fbc:	1e 15       	cp	r17, r14
     fbe:	50 f4       	brcc	.+20     	; 0xfd4 <vfprintf+0x348>
     fc0:	de 0c       	add	r13, r14
     fc2:	d1 1a       	sub	r13, r17
     fc4:	1e 2d       	mov	r17, r14
     fc6:	06 c0       	rjmp	.+12     	; 0xfd4 <vfprintf+0x348>
     fc8:	80 e2       	ldi	r24, 0x20	; 32
     fca:	90 e0       	ldi	r25, 0x00	; 0
     fcc:	66 2d       	mov	r22, r6
     fce:	77 2d       	mov	r23, r7
     fd0:	6d d0       	rcall	.+218    	; 0x10ac <fputc>
     fd2:	1f 5f       	subi	r17, 0xFF	; 255
     fd4:	1e 15       	cp	r17, r14
     fd6:	c0 f3       	brcs	.-16     	; 0xfc8 <vfprintf+0x33c>
     fd8:	04 c0       	rjmp	.+8      	; 0xfe2 <vfprintf+0x356>
     fda:	1e 15       	cp	r17, r14
     fdc:	10 f4       	brcc	.+4      	; 0xfe2 <vfprintf+0x356>
     fde:	e1 1a       	sub	r14, r17
     fe0:	01 c0       	rjmp	.+2      	; 0xfe4 <vfprintf+0x358>
     fe2:	ee 24       	eor	r14, r14
     fe4:	84 fe       	sbrs	r8, 4
     fe6:	0f c0       	rjmp	.+30     	; 0x1006 <vfprintf+0x37a>
     fe8:	80 e3       	ldi	r24, 0x30	; 48
     fea:	90 e0       	ldi	r25, 0x00	; 0
     fec:	66 2d       	mov	r22, r6
     fee:	77 2d       	mov	r23, r7
     ff0:	5d d0       	rcall	.+186    	; 0x10ac <fputc>
     ff2:	82 fe       	sbrs	r8, 2
     ff4:	20 c0       	rjmp	.+64     	; 0x1036 <vfprintf+0x3aa>
     ff6:	81 fe       	sbrs	r8, 1
     ff8:	03 c0       	rjmp	.+6      	; 0x1000 <vfprintf+0x374>
     ffa:	88 e5       	ldi	r24, 0x58	; 88
     ffc:	90 e0       	ldi	r25, 0x00	; 0
     ffe:	11 c0       	rjmp	.+34     	; 0x1022 <vfprintf+0x396>
    1000:	88 e7       	ldi	r24, 0x78	; 120
    1002:	90 e0       	ldi	r25, 0x00	; 0
    1004:	0e c0       	rjmp	.+28     	; 0x1022 <vfprintf+0x396>
    1006:	88 2d       	mov	r24, r8
    1008:	99 2d       	mov	r25, r9
    100a:	86 78       	andi	r24, 0x86	; 134
    100c:	90 70       	andi	r25, 0x00	; 0
    100e:	00 97       	sbiw	r24, 0x00	; 0
    1010:	91 f0       	breq	.+36     	; 0x1036 <vfprintf+0x3aa>
    1012:	81 fc       	sbrc	r8, 1
    1014:	02 c0       	rjmp	.+4      	; 0x101a <vfprintf+0x38e>
    1016:	80 e2       	ldi	r24, 0x20	; 32
    1018:	01 c0       	rjmp	.+2      	; 0x101c <vfprintf+0x390>
    101a:	8b e2       	ldi	r24, 0x2B	; 43
    101c:	07 fd       	sbrc	r16, 7
    101e:	8d e2       	ldi	r24, 0x2D	; 45
    1020:	90 e0       	ldi	r25, 0x00	; 0
    1022:	66 2d       	mov	r22, r6
    1024:	77 2d       	mov	r23, r7
    1026:	42 d0       	rcall	.+132    	; 0x10ac <fputc>
    1028:	06 c0       	rjmp	.+12     	; 0x1036 <vfprintf+0x3aa>
    102a:	80 e3       	ldi	r24, 0x30	; 48
    102c:	90 e0       	ldi	r25, 0x00	; 0
    102e:	66 2d       	mov	r22, r6
    1030:	77 2d       	mov	r23, r7
    1032:	3c d0       	rcall	.+120    	; 0x10ac <fputc>
    1034:	da 94       	dec	r13
    1036:	fd 14       	cp	r15, r13
    1038:	c0 f3       	brcs	.-16     	; 0x102a <vfprintf+0x39e>
    103a:	fa 94       	dec	r15
    103c:	e4 2d       	mov	r30, r4
    103e:	f5 2d       	mov	r31, r5
    1040:	ef 0d       	add	r30, r15
    1042:	f1 1d       	adc	r31, r1
    1044:	80 81       	ld	r24, Z
    1046:	90 e0       	ldi	r25, 0x00	; 0
    1048:	66 2d       	mov	r22, r6
    104a:	77 2d       	mov	r23, r7
    104c:	2f d0       	rcall	.+94     	; 0x10ac <fputc>
    104e:	ff 20       	and	r15, r15
    1050:	a1 f7       	brne	.-24     	; 0x103a <vfprintf+0x3ae>
    1052:	06 c0       	rjmp	.+12     	; 0x1060 <vfprintf+0x3d4>
    1054:	80 e2       	ldi	r24, 0x20	; 32
    1056:	90 e0       	ldi	r25, 0x00	; 0
    1058:	66 2d       	mov	r22, r6
    105a:	77 2d       	mov	r23, r7
    105c:	27 d0       	rcall	.+78     	; 0x10ac <fputc>
    105e:	ea 94       	dec	r14
    1060:	ee 20       	and	r14, r14
    1062:	c1 f7       	brne	.-16     	; 0x1054 <vfprintf+0x3c8>
    1064:	2a ce       	rjmp	.-940    	; 0xcba <vfprintf+0x2e>
    1066:	e6 2d       	mov	r30, r6
    1068:	f7 2d       	mov	r31, r7
    106a:	86 81       	ldd	r24, Z+6	; 0x06
    106c:	97 81       	ldd	r25, Z+7	; 0x07
    106e:	02 c0       	rjmp	.+4      	; 0x1074 <vfprintf+0x3e8>
    1070:	8f ef       	ldi	r24, 0xFF	; 255
    1072:	9f ef       	ldi	r25, 0xFF	; 255
    1074:	2d 96       	adiw	r28, 0x0d	; 13
    1076:	e2 e1       	ldi	r30, 0x12	; 18
    1078:	d3 cd       	rjmp	.-1114   	; 0xc20 <__epilogue_restores__>

0000107a <strnlen_P>:
    107a:	e8 2f       	mov	r30, r24
    107c:	f9 2f       	mov	r31, r25
    107e:	c8 95       	lpm
    1080:	31 96       	adiw	r30, 0x01	; 1
    1082:	61 50       	subi	r22, 0x01	; 1
    1084:	70 40       	sbci	r23, 0x00	; 0
    1086:	01 10       	cpse	r0, r1
    1088:	d0 f7       	brcc	.-12     	; 0x107e <strnlen_P+0x4>
    108a:	80 95       	com	r24
    108c:	90 95       	com	r25
    108e:	8e 0f       	add	r24, r30
    1090:	9f 1f       	adc	r25, r31
    1092:	08 95       	ret

00001094 <strnlen>:
    1094:	e8 2f       	mov	r30, r24
    1096:	f9 2f       	mov	r31, r25
    1098:	61 50       	subi	r22, 0x01	; 1
    109a:	70 40       	sbci	r23, 0x00	; 0
    109c:	01 90       	ld	r0, Z+
    109e:	01 10       	cpse	r0, r1
    10a0:	d8 f7       	brcc	.-10     	; 0x1098 <strnlen+0x4>
    10a2:	80 95       	com	r24
    10a4:	90 95       	com	r25
    10a6:	8e 0f       	add	r24, r30
    10a8:	9f 1f       	adc	r25, r31
    10aa:	08 95       	ret

000010ac <fputc>:
    10ac:	0f 93       	push	r16
    10ae:	1f 93       	push	r17
    10b0:	cf 93       	push	r28
    10b2:	df 93       	push	r29
    10b4:	08 2f       	mov	r16, r24
    10b6:	19 2f       	mov	r17, r25
    10b8:	c6 2f       	mov	r28, r22
    10ba:	d7 2f       	mov	r29, r23
    10bc:	8b 81       	ldd	r24, Y+3	; 0x03
    10be:	81 ff       	sbrs	r24, 1
    10c0:	1b c0       	rjmp	.+54     	; 0x10f8 <fputc+0x4c>
    10c2:	82 ff       	sbrs	r24, 2
    10c4:	0d c0       	rjmp	.+26     	; 0x10e0 <fputc+0x34>
    10c6:	2e 81       	ldd	r18, Y+6	; 0x06
    10c8:	3f 81       	ldd	r19, Y+7	; 0x07
    10ca:	8c 81       	ldd	r24, Y+4	; 0x04
    10cc:	9d 81       	ldd	r25, Y+5	; 0x05
    10ce:	28 17       	cp	r18, r24
    10d0:	39 07       	cpc	r19, r25
    10d2:	64 f4       	brge	.+24     	; 0x10ec <fputc+0x40>
    10d4:	e8 81       	ld	r30, Y
    10d6:	f9 81       	ldd	r31, Y+1	; 0x01
    10d8:	01 93       	st	Z+, r16
    10da:	f9 83       	std	Y+1, r31	; 0x01
    10dc:	e8 83       	st	Y, r30
    10de:	06 c0       	rjmp	.+12     	; 0x10ec <fputc+0x40>
    10e0:	e8 85       	ldd	r30, Y+8	; 0x08
    10e2:	f9 85       	ldd	r31, Y+9	; 0x09
    10e4:	80 2f       	mov	r24, r16
    10e6:	09 95       	icall
    10e8:	00 97       	sbiw	r24, 0x00	; 0
    10ea:	31 f4       	brne	.+12     	; 0x10f8 <fputc+0x4c>
    10ec:	8e 81       	ldd	r24, Y+6	; 0x06
    10ee:	9f 81       	ldd	r25, Y+7	; 0x07
    10f0:	01 96       	adiw	r24, 0x01	; 1
    10f2:	9f 83       	std	Y+7, r25	; 0x07
    10f4:	8e 83       	std	Y+6, r24	; 0x06
    10f6:	02 c0       	rjmp	.+4      	; 0x10fc <fputc+0x50>
    10f8:	0f ef       	ldi	r16, 0xFF	; 255
    10fa:	1f ef       	ldi	r17, 0xFF	; 255
    10fc:	80 2f       	mov	r24, r16
    10fe:	91 2f       	mov	r25, r17
    1100:	df 91       	pop	r29
    1102:	cf 91       	pop	r28
    1104:	1f 91       	pop	r17
    1106:	0f 91       	pop	r16
    1108:	08 95       	ret

0000110a <__ultoa_invert>:
    110a:	e4 2f       	mov	r30, r20
    110c:	f5 2f       	mov	r31, r21
    110e:	aa 27       	eor	r26, r26
    1110:	28 30       	cpi	r18, 0x08	; 8
    1112:	69 f1       	breq	.+90     	; 0x116e <__ultoa_invert+0x64>
    1114:	20 31       	cpi	r18, 0x10	; 16
    1116:	99 f1       	breq	.+102    	; 0x117e <__ultoa_invert+0x74>
    1118:	e8 94       	clt
    111a:	6f 93       	push	r22
    111c:	6e 7f       	andi	r22, 0xFE	; 254
    111e:	6e 5f       	subi	r22, 0xFE	; 254
    1120:	7f 4f       	sbci	r23, 0xFF	; 255
    1122:	8f 4f       	sbci	r24, 0xFF	; 255
    1124:	9f 4f       	sbci	r25, 0xFF	; 255
    1126:	af 4f       	sbci	r26, 0xFF	; 255
    1128:	b1 e0       	ldi	r27, 0x01	; 1
    112a:	41 d0       	rcall	.+130    	; 0x11ae <__ultoa_invert+0xa4>
    112c:	b4 e0       	ldi	r27, 0x04	; 4
    112e:	3f d0       	rcall	.+126    	; 0x11ae <__ultoa_invert+0xa4>
    1130:	67 0f       	add	r22, r23
    1132:	78 1f       	adc	r23, r24
    1134:	89 1f       	adc	r24, r25
    1136:	9a 1f       	adc	r25, r26
    1138:	a1 1d       	adc	r26, r1
    113a:	68 0f       	add	r22, r24
    113c:	79 1f       	adc	r23, r25
    113e:	8a 1f       	adc	r24, r26
    1140:	91 1d       	adc	r25, r1
    1142:	a1 1d       	adc	r26, r1
    1144:	6a 0f       	add	r22, r26
    1146:	71 1d       	adc	r23, r1
    1148:	81 1d       	adc	r24, r1
    114a:	91 1d       	adc	r25, r1
    114c:	a1 1d       	adc	r26, r1
    114e:	23 d0       	rcall	.+70     	; 0x1196 <__ultoa_invert+0x8c>
    1150:	09 f4       	brne	.+2      	; 0x1154 <__ultoa_invert+0x4a>
    1152:	68 94       	set
    1154:	3f 91       	pop	r19
    1156:	06 2e       	mov	r0, r22
    1158:	00 0c       	add	r0, r0
    115a:	30 19       	sub	r19, r0
    115c:	00 0c       	add	r0, r0
    115e:	00 0c       	add	r0, r0
    1160:	30 19       	sub	r19, r0
    1162:	30 5d       	subi	r19, 0xD0	; 208
    1164:	31 93       	st	Z+, r19
    1166:	ce f6       	brtc	.-78     	; 0x111a <__ultoa_invert+0x10>
    1168:	8e 2f       	mov	r24, r30
    116a:	9f 2f       	mov	r25, r31
    116c:	08 95       	ret
    116e:	46 2f       	mov	r20, r22
    1170:	47 70       	andi	r20, 0x07	; 7
    1172:	40 5d       	subi	r20, 0xD0	; 208
    1174:	41 93       	st	Z+, r20
    1176:	b3 e0       	ldi	r27, 0x03	; 3
    1178:	0f d0       	rcall	.+30     	; 0x1198 <__ultoa_invert+0x8e>
    117a:	c9 f7       	brne	.-14     	; 0x116e <__ultoa_invert+0x64>
    117c:	f5 cf       	rjmp	.-22     	; 0x1168 <__ultoa_invert+0x5e>
    117e:	46 2f       	mov	r20, r22
    1180:	4f 70       	andi	r20, 0x0F	; 15
    1182:	40 5d       	subi	r20, 0xD0	; 208
    1184:	4a 33       	cpi	r20, 0x3A	; 58
    1186:	18 f0       	brcs	.+6      	; 0x118e <__ultoa_invert+0x84>
    1188:	49 5d       	subi	r20, 0xD9	; 217
    118a:	31 fd       	sbrc	r19, 1
    118c:	40 52       	subi	r20, 0x20	; 32
    118e:	41 93       	st	Z+, r20
    1190:	02 d0       	rcall	.+4      	; 0x1196 <__ultoa_invert+0x8c>
    1192:	a9 f7       	brne	.-22     	; 0x117e <__ultoa_invert+0x74>
    1194:	e9 cf       	rjmp	.-46     	; 0x1168 <__ultoa_invert+0x5e>
    1196:	b4 e0       	ldi	r27, 0x04	; 4
    1198:	a6 95       	lsr	r26
    119a:	97 95       	ror	r25
    119c:	87 95       	ror	r24
    119e:	77 95       	ror	r23
    11a0:	67 95       	ror	r22
    11a2:	ba 95       	dec	r27
    11a4:	c9 f7       	brne	.-14     	; 0x1198 <__ultoa_invert+0x8e>
    11a6:	00 97       	sbiw	r24, 0x00	; 0
    11a8:	61 05       	cpc	r22, r1
    11aa:	71 05       	cpc	r23, r1
    11ac:	08 95       	ret
    11ae:	26 2f       	mov	r18, r22
    11b0:	37 2f       	mov	r19, r23
    11b2:	48 2f       	mov	r20, r24
    11b4:	59 2f       	mov	r21, r25
    11b6:	0a 2e       	mov	r0, r26
    11b8:	06 94       	lsr	r0
    11ba:	57 95       	ror	r21
    11bc:	47 95       	ror	r20
    11be:	37 95       	ror	r19
    11c0:	27 95       	ror	r18
    11c2:	ba 95       	dec	r27
    11c4:	c9 f7       	brne	.-14     	; 0x11b8 <__ultoa_invert+0xae>
    11c6:	62 0f       	add	r22, r18
    11c8:	73 1f       	adc	r23, r19
    11ca:	84 1f       	adc	r24, r20
    11cc:	95 1f       	adc	r25, r21
    11ce:	a0 1d       	adc	r26, r0
    11d0:	08 95       	ret
    11d2:	d3 c0       	rjmp	.+422    	; 0x137a <__fp_nan>

000011d4 <__fp_rempio2>:
    11d4:	3f d0       	rcall	.+126    	; 0x1254 <__fp_splitA>
    11d6:	e8 f3       	brcs	.-6      	; 0x11d2 <__ultoa_invert+0xc8>
    11d8:	e8 94       	clt
    11da:	e0 e0       	ldi	r30, 0x00	; 0
    11dc:	bb 27       	eor	r27, r27
    11de:	9f 57       	subi	r25, 0x7F	; 127
    11e0:	f0 f0       	brcs	.+60     	; 0x121e <__fp_rempio2+0x4a>
    11e2:	2a ed       	ldi	r18, 0xDA	; 218
    11e4:	3f e0       	ldi	r19, 0x0F	; 15
    11e6:	49 ec       	ldi	r20, 0xC9	; 201
    11e8:	06 c0       	rjmp	.+12     	; 0x11f6 <__fp_rempio2+0x22>
    11ea:	ee 0f       	add	r30, r30
    11ec:	bb 0f       	add	r27, r27
    11ee:	66 1f       	adc	r22, r22
    11f0:	77 1f       	adc	r23, r23
    11f2:	88 1f       	adc	r24, r24
    11f4:	28 f0       	brcs	.+10     	; 0x1200 <__fp_rempio2+0x2c>
    11f6:	b2 3a       	cpi	r27, 0xA2	; 162
    11f8:	62 07       	cpc	r22, r18
    11fa:	73 07       	cpc	r23, r19
    11fc:	84 07       	cpc	r24, r20
    11fe:	28 f0       	brcs	.+10     	; 0x120a <__fp_rempio2+0x36>
    1200:	b2 5a       	subi	r27, 0xA2	; 162
    1202:	62 0b       	sbc	r22, r18
    1204:	73 0b       	sbc	r23, r19
    1206:	84 0b       	sbc	r24, r20
    1208:	e3 95       	inc	r30
    120a:	9a 95       	dec	r25
    120c:	72 f7       	brpl	.-36     	; 0x11ea <__fp_rempio2+0x16>
    120e:	80 38       	cpi	r24, 0x80	; 128
    1210:	30 f4       	brcc	.+12     	; 0x121e <__fp_rempio2+0x4a>
    1212:	9a 95       	dec	r25
    1214:	bb 0f       	add	r27, r27
    1216:	66 1f       	adc	r22, r22
    1218:	77 1f       	adc	r23, r23
    121a:	88 1f       	adc	r24, r24
    121c:	d2 f7       	brpl	.-12     	; 0x1212 <__fp_rempio2+0x3e>
    121e:	90 48       	sbci	r25, 0x80	; 128
    1220:	a0 c0       	rjmp	.+320    	; 0x1362 <__fp_mpack_finite>

00001222 <__fp_sinus>:
    1222:	ef 93       	push	r30
    1224:	e0 ff       	sbrs	r30, 0
    1226:	06 c0       	rjmp	.+12     	; 0x1234 <__fp_sinus+0x12>
    1228:	a2 ea       	ldi	r26, 0xA2	; 162
    122a:	2a ed       	ldi	r18, 0xDA	; 218
    122c:	3f e0       	ldi	r19, 0x0F	; 15
    122e:	49 ec       	ldi	r20, 0xC9	; 201
    1230:	5f eb       	ldi	r21, 0xBF	; 191
    1232:	37 d0       	rcall	.+110    	; 0x12a2 <__addsf3x>
    1234:	c6 d0       	rcall	.+396    	; 0x13c2 <__fp_round>
    1236:	0f 90       	pop	r0
    1238:	03 94       	inc	r0
    123a:	01 fc       	sbrc	r0, 1
    123c:	90 58       	subi	r25, 0x80	; 128
    123e:	e0 e0       	ldi	r30, 0x00	; 0
    1240:	f0 e0       	ldi	r31, 0x00	; 0
    1242:	9e c0       	rjmp	.+316    	; 0x1380 <__fp_powsodd>

00001244 <__fp_split3>:
    1244:	57 fd       	sbrc	r21, 7
    1246:	90 58       	subi	r25, 0x80	; 128
    1248:	44 0f       	add	r20, r20
    124a:	55 1f       	adc	r21, r21
    124c:	59 f0       	breq	.+22     	; 0x1264 <__fp_splitA+0x10>
    124e:	5f 3f       	cpi	r21, 0xFF	; 255
    1250:	71 f0       	breq	.+28     	; 0x126e <__fp_splitA+0x1a>
    1252:	47 95       	ror	r20

00001254 <__fp_splitA>:
    1254:	88 0f       	add	r24, r24
    1256:	97 fb       	bst	r25, 7
    1258:	99 1f       	adc	r25, r25
    125a:	61 f0       	breq	.+24     	; 0x1274 <__fp_splitA+0x20>
    125c:	9f 3f       	cpi	r25, 0xFF	; 255
    125e:	79 f0       	breq	.+30     	; 0x127e <__fp_splitA+0x2a>
    1260:	87 95       	ror	r24
    1262:	08 95       	ret
    1264:	12 16       	cp	r1, r18
    1266:	13 06       	cpc	r1, r19
    1268:	14 06       	cpc	r1, r20
    126a:	55 1f       	adc	r21, r21
    126c:	f2 cf       	rjmp	.-28     	; 0x1252 <__fp_split3+0xe>
    126e:	46 95       	lsr	r20
    1270:	f1 df       	rcall	.-30     	; 0x1254 <__fp_splitA>
    1272:	08 c0       	rjmp	.+16     	; 0x1284 <__fp_splitA+0x30>
    1274:	16 16       	cp	r1, r22
    1276:	17 06       	cpc	r1, r23
    1278:	18 06       	cpc	r1, r24
    127a:	99 1f       	adc	r25, r25
    127c:	f1 cf       	rjmp	.-30     	; 0x1260 <__fp_splitA+0xc>
    127e:	86 95       	lsr	r24
    1280:	71 05       	cpc	r23, r1
    1282:	61 05       	cpc	r22, r1
    1284:	08 94       	sec
    1286:	08 95       	ret
    1288:	8e d0       	rcall	.+284    	; 0x13a6 <__fp_pscA>
    128a:	30 f0       	brcs	.+12     	; 0x1298 <__fp_splitA+0x44>
    128c:	93 d0       	rcall	.+294    	; 0x13b4 <__fp_pscB>
    128e:	20 f0       	brcs	.+8      	; 0x1298 <__fp_splitA+0x44>
    1290:	31 f4       	brne	.+12     	; 0x129e <__fp_splitA+0x4a>
    1292:	9f 3f       	cpi	r25, 0xFF	; 255
    1294:	11 f4       	brne	.+4      	; 0x129a <__fp_splitA+0x46>
    1296:	1e f4       	brtc	.+6      	; 0x129e <__fp_splitA+0x4a>
    1298:	70 c0       	rjmp	.+224    	; 0x137a <__fp_nan>
    129a:	0e f4       	brtc	.+2      	; 0x129e <__fp_splitA+0x4a>
    129c:	e0 95       	com	r30
    129e:	e7 fb       	bst	r30, 7
    12a0:	58 c0       	rjmp	.+176    	; 0x1352 <__fp_inf>

000012a2 <__addsf3x>:
    12a2:	e9 2f       	mov	r30, r25
    12a4:	cf df       	rcall	.-98     	; 0x1244 <__fp_split3>
    12a6:	80 f3       	brcs	.-32     	; 0x1288 <__fp_splitA+0x34>
    12a8:	ba 17       	cp	r27, r26
    12aa:	62 07       	cpc	r22, r18
    12ac:	73 07       	cpc	r23, r19
    12ae:	84 07       	cpc	r24, r20
    12b0:	95 07       	cpc	r25, r21
    12b2:	18 f0       	brcs	.+6      	; 0x12ba <__addsf3x+0x18>
    12b4:	99 f4       	brne	.+38     	; 0x12dc <__addsf3x+0x3a>
    12b6:	c6 f5       	brtc	.+112    	; 0x1328 <__addsf3x+0x86>
    12b8:	95 c0       	rjmp	.+298    	; 0x13e4 <__fp_zero>
    12ba:	0e f4       	brtc	.+2      	; 0x12be <__addsf3x+0x1c>
    12bc:	e0 95       	com	r30
    12be:	0b 2e       	mov	r0, r27
    12c0:	ba 2f       	mov	r27, r26
    12c2:	a0 2d       	mov	r26, r0
    12c4:	06 2e       	mov	r0, r22
    12c6:	62 2f       	mov	r22, r18
    12c8:	20 2d       	mov	r18, r0
    12ca:	07 2e       	mov	r0, r23
    12cc:	73 2f       	mov	r23, r19
    12ce:	30 2d       	mov	r19, r0
    12d0:	08 2e       	mov	r0, r24
    12d2:	84 2f       	mov	r24, r20
    12d4:	40 2d       	mov	r20, r0
    12d6:	09 2e       	mov	r0, r25
    12d8:	95 2f       	mov	r25, r21
    12da:	50 2d       	mov	r21, r0
    12dc:	ff 27       	eor	r31, r31
    12de:	59 1b       	sub	r21, r25
    12e0:	99 f0       	breq	.+38     	; 0x1308 <__addsf3x+0x66>
    12e2:	59 3f       	cpi	r21, 0xF9	; 249
    12e4:	50 f4       	brcc	.+20     	; 0x12fa <__addsf3x+0x58>
    12e6:	50 3e       	cpi	r21, 0xE0	; 224
    12e8:	68 f1       	brcs	.+90     	; 0x1344 <__addsf3x+0xa2>
    12ea:	1a 16       	cp	r1, r26
    12ec:	f0 40       	sbci	r31, 0x00	; 0
    12ee:	a2 2f       	mov	r26, r18
    12f0:	23 2f       	mov	r18, r19
    12f2:	34 2f       	mov	r19, r20
    12f4:	44 27       	eor	r20, r20
    12f6:	58 5f       	subi	r21, 0xF8	; 248
    12f8:	f3 cf       	rjmp	.-26     	; 0x12e0 <__addsf3x+0x3e>
    12fa:	46 95       	lsr	r20
    12fc:	37 95       	ror	r19
    12fe:	27 95       	ror	r18
    1300:	a7 95       	ror	r26
    1302:	f0 40       	sbci	r31, 0x00	; 0
    1304:	53 95       	inc	r21
    1306:	c9 f7       	brne	.-14     	; 0x12fa <__addsf3x+0x58>
    1308:	7e f4       	brtc	.+30     	; 0x1328 <__addsf3x+0x86>
    130a:	1f 16       	cp	r1, r31
    130c:	ba 0b       	sbc	r27, r26
    130e:	62 0b       	sbc	r22, r18
    1310:	73 0b       	sbc	r23, r19
    1312:	84 0b       	sbc	r24, r20
    1314:	ba f0       	brmi	.+46     	; 0x1344 <__addsf3x+0xa2>
    1316:	91 50       	subi	r25, 0x01	; 1
    1318:	a1 f0       	breq	.+40     	; 0x1342 <__addsf3x+0xa0>
    131a:	ff 0f       	add	r31, r31
    131c:	bb 1f       	adc	r27, r27
    131e:	66 1f       	adc	r22, r22
    1320:	77 1f       	adc	r23, r23
    1322:	88 1f       	adc	r24, r24
    1324:	c2 f7       	brpl	.-16     	; 0x1316 <__addsf3x+0x74>
    1326:	0e c0       	rjmp	.+28     	; 0x1344 <__addsf3x+0xa2>
    1328:	ba 0f       	add	r27, r26
    132a:	62 1f       	adc	r22, r18
    132c:	73 1f       	adc	r23, r19
    132e:	84 1f       	adc	r24, r20
    1330:	48 f4       	brcc	.+18     	; 0x1344 <__addsf3x+0xa2>
    1332:	87 95       	ror	r24
    1334:	77 95       	ror	r23
    1336:	67 95       	ror	r22
    1338:	b7 95       	ror	r27
    133a:	f7 95       	ror	r31
    133c:	9e 3f       	cpi	r25, 0xFE	; 254
    133e:	08 f0       	brcs	.+2      	; 0x1342 <__addsf3x+0xa0>
    1340:	ae cf       	rjmp	.-164    	; 0x129e <__fp_splitA+0x4a>
    1342:	93 95       	inc	r25
    1344:	88 0f       	add	r24, r24
    1346:	08 f0       	brcs	.+2      	; 0x134a <__addsf3x+0xa8>
    1348:	99 27       	eor	r25, r25
    134a:	ee 0f       	add	r30, r30
    134c:	97 95       	ror	r25
    134e:	87 95       	ror	r24
    1350:	08 95       	ret

00001352 <__fp_inf>:
    1352:	97 f9       	bld	r25, 7
    1354:	9f 67       	ori	r25, 0x7F	; 127
    1356:	80 e8       	ldi	r24, 0x80	; 128
    1358:	70 e0       	ldi	r23, 0x00	; 0
    135a:	60 e0       	ldi	r22, 0x00	; 0
    135c:	08 95       	ret

0000135e <__fp_mpack>:
    135e:	9f 3f       	cpi	r25, 0xFF	; 255
    1360:	31 f0       	breq	.+12     	; 0x136e <__fp_mpack_finite+0xc>

00001362 <__fp_mpack_finite>:
    1362:	91 50       	subi	r25, 0x01	; 1
    1364:	20 f4       	brcc	.+8      	; 0x136e <__fp_mpack_finite+0xc>
    1366:	87 95       	ror	r24
    1368:	77 95       	ror	r23
    136a:	67 95       	ror	r22
    136c:	b7 95       	ror	r27
    136e:	88 0f       	add	r24, r24
    1370:	91 1d       	adc	r25, r1
    1372:	96 95       	lsr	r25
    1374:	87 95       	ror	r24
    1376:	97 f9       	bld	r25, 7
    1378:	08 95       	ret

0000137a <__fp_nan>:
    137a:	9f ef       	ldi	r25, 0xFF	; 255
    137c:	80 ec       	ldi	r24, 0xC0	; 192
    137e:	08 95       	ret

00001380 <__fp_powsodd>:
    1380:	9f 93       	push	r25
    1382:	8f 93       	push	r24
    1384:	7f 93       	push	r23
    1386:	6f 93       	push	r22
    1388:	ff 93       	push	r31
    138a:	ef 93       	push	r30
    138c:	26 2f       	mov	r18, r22
    138e:	37 2f       	mov	r19, r23
    1390:	48 2f       	mov	r20, r24
    1392:	59 2f       	mov	r21, r25
    1394:	e3 d7       	rcall	.+4038   	; 0x235c <__data_load_end+0xce4>
    1396:	ef 91       	pop	r30
    1398:	ff 91       	pop	r31
    139a:	2c d0       	rcall	.+88     	; 0x13f4 <__fp_powser>
    139c:	2f 91       	pop	r18
    139e:	3f 91       	pop	r19
    13a0:	4f 91       	pop	r20
    13a2:	5f 91       	pop	r21
    13a4:	db c7       	rjmp	.+4022   	; 0x235c <__data_load_end+0xce4>

000013a6 <__fp_pscA>:
    13a6:	00 24       	eor	r0, r0
    13a8:	0a 94       	dec	r0
    13aa:	16 16       	cp	r1, r22
    13ac:	17 06       	cpc	r1, r23
    13ae:	18 06       	cpc	r1, r24
    13b0:	09 06       	cpc	r0, r25
    13b2:	08 95       	ret

000013b4 <__fp_pscB>:
    13b4:	00 24       	eor	r0, r0
    13b6:	0a 94       	dec	r0
    13b8:	12 16       	cp	r1, r18
    13ba:	13 06       	cpc	r1, r19
    13bc:	14 06       	cpc	r1, r20
    13be:	05 06       	cpc	r0, r21
    13c0:	08 95       	ret

000013c2 <__fp_round>:
    13c2:	09 2e       	mov	r0, r25
    13c4:	03 94       	inc	r0
    13c6:	00 0c       	add	r0, r0
    13c8:	11 f4       	brne	.+4      	; 0x13ce <__fp_round+0xc>
    13ca:	88 23       	and	r24, r24
    13cc:	52 f0       	brmi	.+20     	; 0x13e2 <__fp_round+0x20>
    13ce:	bb 0f       	add	r27, r27
    13d0:	40 f4       	brcc	.+16     	; 0x13e2 <__fp_round+0x20>
    13d2:	bf 2b       	or	r27, r31
    13d4:	11 f4       	brne	.+4      	; 0x13da <__fp_round+0x18>
    13d6:	60 ff       	sbrs	r22, 0
    13d8:	04 c0       	rjmp	.+8      	; 0x13e2 <__fp_round+0x20>
    13da:	6f 5f       	subi	r22, 0xFF	; 255
    13dc:	7f 4f       	sbci	r23, 0xFF	; 255
    13de:	8f 4f       	sbci	r24, 0xFF	; 255
    13e0:	9f 4f       	sbci	r25, 0xFF	; 255
    13e2:	08 95       	ret

000013e4 <__fp_zero>:
    13e4:	e8 94       	clt

000013e6 <__fp_szero>:
    13e6:	bb 27       	eor	r27, r27
    13e8:	66 27       	eor	r22, r22
    13ea:	77 27       	eor	r23, r23
    13ec:	86 2f       	mov	r24, r22
    13ee:	97 2f       	mov	r25, r23
    13f0:	97 f9       	bld	r25, 7
    13f2:	08 95       	ret

000013f4 <__fp_powser>:
    13f4:	df 93       	push	r29
    13f6:	cf 93       	push	r28
    13f8:	1f 93       	push	r17
    13fa:	0f 93       	push	r16
    13fc:	ff 92       	push	r15
    13fe:	ef 92       	push	r14
    1400:	df 92       	push	r13
    1402:	e6 2e       	mov	r14, r22
    1404:	f7 2e       	mov	r15, r23
    1406:	08 2f       	mov	r16, r24
    1408:	19 2f       	mov	r17, r25
    140a:	68 94       	set
    140c:	07 c0       	rjmp	.+14     	; 0x141c <__fp_powser+0x28>
    140e:	da 2e       	mov	r13, r26
    1410:	ce 2f       	mov	r28, r30
    1412:	df 2f       	mov	r29, r31
    1414:	2f d0       	rcall	.+94     	; 0x1474 <__mulsf3x>
    1416:	ec 2f       	mov	r30, r28
    1418:	fd 2f       	mov	r31, r29
    141a:	e8 94       	clt
    141c:	c8 95       	lpm
    141e:	a0 2d       	mov	r26, r0
    1420:	31 96       	adiw	r30, 0x01	; 1
    1422:	c8 95       	lpm
    1424:	20 2d       	mov	r18, r0
    1426:	31 96       	adiw	r30, 0x01	; 1
    1428:	c8 95       	lpm
    142a:	30 2d       	mov	r19, r0
    142c:	31 96       	adiw	r30, 0x01	; 1
    142e:	c8 95       	lpm
    1430:	40 2d       	mov	r20, r0
    1432:	31 96       	adiw	r30, 0x01	; 1
    1434:	c8 95       	lpm
    1436:	50 2d       	mov	r21, r0
    1438:	31 96       	adiw	r30, 0x01	; 1
    143a:	4e f3       	brts	.-46     	; 0x140e <__fp_powser+0x1a>
    143c:	ce 2f       	mov	r28, r30
    143e:	df 2f       	mov	r29, r31
    1440:	30 df       	rcall	.-416    	; 0x12a2 <__addsf3x>
    1442:	ec 2f       	mov	r30, r28
    1444:	fd 2f       	mov	r31, r29
    1446:	2e 2d       	mov	r18, r14
    1448:	3f 2d       	mov	r19, r15
    144a:	40 2f       	mov	r20, r16
    144c:	51 2f       	mov	r21, r17
    144e:	da 94       	dec	r13
    1450:	f9 f6       	brne	.-66     	; 0x1410 <__fp_powser+0x1c>
    1452:	df 90       	pop	r13
    1454:	ef 90       	pop	r14
    1456:	ff 90       	pop	r15
    1458:	0f 91       	pop	r16
    145a:	1f 91       	pop	r17
    145c:	cf 91       	pop	r28
    145e:	df 91       	pop	r29
    1460:	08 95       	ret
    1462:	a1 df       	rcall	.-190    	; 0x13a6 <__fp_pscA>
    1464:	28 f0       	brcs	.+10     	; 0x1470 <__fp_powser+0x7c>
    1466:	a6 df       	rcall	.-180    	; 0x13b4 <__fp_pscB>
    1468:	18 f0       	brcs	.+6      	; 0x1470 <__fp_powser+0x7c>
    146a:	95 23       	and	r25, r21
    146c:	09 f0       	breq	.+2      	; 0x1470 <__fp_powser+0x7c>
    146e:	71 cf       	rjmp	.-286    	; 0x1352 <__fp_inf>
    1470:	84 cf       	rjmp	.-248    	; 0x137a <__fp_nan>
    1472:	b9 cf       	rjmp	.-142    	; 0x13e6 <__fp_szero>

00001474 <__mulsf3x>:
    1474:	e7 de       	rcall	.-562    	; 0x1244 <__fp_split3>
    1476:	a8 f3       	brcs	.-22     	; 0x1462 <__fp_powser+0x6e>

00001478 <__mulsf3_pse>:
    1478:	99 23       	and	r25, r25
    147a:	d9 f3       	breq	.-10     	; 0x1472 <__fp_powser+0x7e>
    147c:	55 23       	and	r21, r21
    147e:	c9 f3       	breq	.-14     	; 0x1472 <__fp_powser+0x7e>
    1480:	95 0f       	add	r25, r21
    1482:	50 e0       	ldi	r21, 0x00	; 0
    1484:	55 1f       	adc	r21, r21
    1486:	aa 27       	eor	r26, r26
    1488:	ee 27       	eor	r30, r30
    148a:	ff 27       	eor	r31, r31
    148c:	bb 27       	eor	r27, r27
    148e:	00 24       	eor	r0, r0
    1490:	08 94       	sec
    1492:	67 95       	ror	r22
    1494:	20 f4       	brcc	.+8      	; 0x149e <__mulsf3_pse+0x26>
    1496:	e2 0f       	add	r30, r18
    1498:	f3 1f       	adc	r31, r19
    149a:	b4 1f       	adc	r27, r20
    149c:	0a 1e       	adc	r0, r26
    149e:	22 0f       	add	r18, r18
    14a0:	33 1f       	adc	r19, r19
    14a2:	44 1f       	adc	r20, r20
    14a4:	aa 1f       	adc	r26, r26
    14a6:	66 95       	lsr	r22
    14a8:	a9 f7       	brne	.-22     	; 0x1494 <__mulsf3_pse+0x1c>
    14aa:	77 95       	ror	r23
    14ac:	30 f4       	brcc	.+12     	; 0x14ba <__mulsf3_pse+0x42>
    14ae:	f3 0f       	add	r31, r19
    14b0:	b4 1f       	adc	r27, r20
    14b2:	0a 1e       	adc	r0, r26
    14b4:	12 1e       	adc	r1, r18
    14b6:	08 f4       	brcc	.+2      	; 0x14ba <__mulsf3_pse+0x42>
    14b8:	63 95       	inc	r22
    14ba:	33 0f       	add	r19, r19
    14bc:	44 1f       	adc	r20, r20
    14be:	aa 1f       	adc	r26, r26
    14c0:	22 1f       	adc	r18, r18
    14c2:	76 95       	lsr	r23
    14c4:	99 f7       	brne	.-26     	; 0x14ac <__mulsf3_pse+0x34>
    14c6:	87 95       	ror	r24
    14c8:	20 f4       	brcc	.+8      	; 0x14d2 <__mulsf3_pse+0x5a>
    14ca:	b4 0f       	add	r27, r20
    14cc:	0a 1e       	adc	r0, r26
    14ce:	12 1e       	adc	r1, r18
    14d0:	63 1f       	adc	r22, r19
    14d2:	44 0f       	add	r20, r20
    14d4:	aa 1f       	adc	r26, r26
    14d6:	22 1f       	adc	r18, r18
    14d8:	33 1f       	adc	r19, r19
    14da:	86 95       	lsr	r24
    14dc:	a9 f7       	brne	.-22     	; 0x14c8 <__mulsf3_pse+0x50>
    14de:	86 2f       	mov	r24, r22
    14e0:	71 2d       	mov	r23, r1
    14e2:	60 2d       	mov	r22, r0
    14e4:	11 24       	eor	r1, r1
    14e6:	9f 57       	subi	r25, 0x7F	; 127
    14e8:	50 40       	sbci	r21, 0x00	; 0
    14ea:	8a f0       	brmi	.+34     	; 0x150e <__mulsf3_pse+0x96>
    14ec:	e1 f0       	breq	.+56     	; 0x1526 <__mulsf3_pse+0xae>
    14ee:	88 23       	and	r24, r24
    14f0:	4a f0       	brmi	.+18     	; 0x1504 <__mulsf3_pse+0x8c>
    14f2:	ee 0f       	add	r30, r30
    14f4:	ff 1f       	adc	r31, r31
    14f6:	bb 1f       	adc	r27, r27
    14f8:	66 1f       	adc	r22, r22
    14fa:	77 1f       	adc	r23, r23
    14fc:	88 1f       	adc	r24, r24
    14fe:	91 50       	subi	r25, 0x01	; 1
    1500:	50 40       	sbci	r21, 0x00	; 0
    1502:	a9 f7       	brne	.-22     	; 0x14ee <__mulsf3_pse+0x76>
    1504:	9e 3f       	cpi	r25, 0xFE	; 254
    1506:	51 05       	cpc	r21, r1
    1508:	70 f0       	brcs	.+28     	; 0x1526 <__mulsf3_pse+0xae>
    150a:	23 cf       	rjmp	.-442    	; 0x1352 <__fp_inf>
    150c:	6c cf       	rjmp	.-296    	; 0x13e6 <__fp_szero>
    150e:	5f 3f       	cpi	r21, 0xFF	; 255
    1510:	ec f3       	brlt	.-6      	; 0x150c <__mulsf3_pse+0x94>
    1512:	98 3e       	cpi	r25, 0xE8	; 232
    1514:	dc f3       	brlt	.-10     	; 0x150c <__mulsf3_pse+0x94>
    1516:	86 95       	lsr	r24
    1518:	77 95       	ror	r23
    151a:	67 95       	ror	r22
    151c:	b7 95       	ror	r27
    151e:	f7 95       	ror	r31
    1520:	e7 95       	ror	r30
    1522:	9f 5f       	subi	r25, 0xFF	; 255
    1524:	c1 f7       	brne	.-16     	; 0x1516 <__mulsf3_pse+0x9e>
    1526:	fe 2b       	or	r31, r30
    1528:	88 0f       	add	r24, r24
    152a:	91 1d       	adc	r25, r1
    152c:	96 95       	lsr	r25
    152e:	87 95       	ror	r24
    1530:	97 f9       	bld	r25, 7
    1532:	08 95       	ret

00001534 <__mulqi3>:
    1534:	00 24       	eor	r0, r0

00001536 <__mulqi3_loop>:
    1536:	80 fd       	sbrc	r24, 0
    1538:	06 0e       	add	r0, r22
    153a:	66 0f       	add	r22, r22
    153c:	11 f0       	breq	.+4      	; 0x1542 <__mulqi3_exit>
    153e:	86 95       	lsr	r24
    1540:	d1 f7       	brne	.-12     	; 0x1536 <__mulqi3_loop>

00001542 <__mulqi3_exit>:
    1542:	80 2d       	mov	r24, r0
    1544:	08 95       	ret
