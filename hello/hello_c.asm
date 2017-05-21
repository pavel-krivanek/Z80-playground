; z80dasm 1.1.3
; command line: z80dasm -l -a --origin=0x8000 -t hello_c.bin

	org	08000h

	ld iy,05c3ah		;8000	fd 21 3a 5c 	. ! : \ 
	ld (08020h),sp		;8004	ed 73 20 80 	. s   . 
	ld hl,0ffc0h		;8008	21 c0 ff 	! . . 
	add hl,sp			;800b	39 	9 
	ld sp,hl			;800c	f9 	. 
	ld (l8034h),sp		;800d	ed 73 34 80 	. s 4 . 
	ld a,002h		;8011	3e 02 	> . 
	call 01601h		;8013	cd 01 16 	. . . 
	call sub_80aeh		;8016	cd ae 80 	. . . 
	push hl			;8019	e5 	. 
	ld hl,02758h		;801a	21 58 27 	! X ' 
	exx			;801d	d9 	. 
	pop bc			;801e	c1 	. 
	ld sp,00000h		;801f	31 00 00 	1 . . 
	ret			;8022	c9 	. 
	jp (hl)			;8023	e9 	. 
	exx			;8024	d9 	. 
	ex (sp),hl			;8025	e3 	. 
	ld c,(hl)			;8026	4e 	N 
	inc hl			;8027	23 	# 
	ld b,(hl)			;8028	46 	F 
	inc hl			;8029	23 	# 
	ex (sp),hl			;802a	e3 	. 
	push bc			;802b	c5 	. 
	exx			;802c	d9 	. 
	ret			;802d	c9 	. 
	nop			;802e	00 	. 
	nop			;802f	00 	. 
	nop			;8030	00 	. 
	nop			;8031	00 	. 
	nop			;8032	00 	. 
	nop			;8033	00 	. 
l8034h:
	nop			;8034	00 	. 
	nop			;8035	00 	. 
	nop			;8036	00 	. 
	nop			;8037	00 	. 
	nop			;8038	00 	. 
	nop			;8039	00 	. 
	nop			;803a	00 	. 
	ret pe			;803b	e8 	. 
	inc bc			;803c	03 	. 
	push af			;803d	f5 	. 
	rst 38h			;803e	ff 	. 
	call p,0f6ffh		;803f	f4 ff f6 	. . . 
	rst 38h			;8042	ff 	. 
	ld d,e			;8043	53 	S 
	ld l,l			;8044	6d 	m 
	ld h,c			;8045	61 	a 
	ld l,h			;8046	6c 	l 
	ld l,h			;8047	6c 	l 
	jr nz,l808dh		;8048	20 43 	  C 
	dec hl			;804a	2b 	+ 
	jr nz,$+92		;804b	20 5a 	  Z 
	ld e,b			;804d	58 	X 
	nop			;804e	00 	. 
l804fh:
	ld c,b			;804f	48 	H 
	ld h,l			;8050	65 	e 
	ld l,h			;8051	6c 	l 
	ld l,h			;8052	6c 	l 
	ld l,a			;8053	6f 	o 
	jr nz,l80adh		;8054	20 57 	  W 
	ld l,a			;8056	6f 	o 
	ld (hl),d			;8057	72 	r 
	ld l,h			;8058	6c 	l 
	ld h,h			;8059	64 	d 
	ld hl,0000dh		;805a	21 0d 00 	! . . 
sub_805dh:
	call 00d6bh		;805d	cd 6b 0d 	. k . 
	ret			;8060	c9 	. 
sub_8061h:
	ld a,002h		;8061	3e 02 	> . 
	call 01601h		;8063	cd 01 16 	. . . 
	ret			;8066	c9 	. 
sub_8067h:
	ld d,h			;8067	54 	T 
	ld e,l			;8068	5d 	] 
	ld bc,00003h		;8069	01 03 00 	. . . 
	call 0203ch		;806c	cd 3c 20 	. <   
	ret			;806f	c9 	. 
sub_8070h:
	ld hl,00002h		;8070	21 02 00 	! . . 
	add hl,sp			;8073	39 	9 
	ld e,(hl)			;8074	5e 	^ 
	inc hl			;8075	23 	# 
	ld d,(hl)			;8076	56 	V 
	inc hl			;8077	23 	# 
	ld b,000h		;8078	06 00 	. . 
	ld c,(hl)			;807a	4e 	N 
	push bc			;807b	c5 	. 
	call 0203ch		;807c	cd 3c 20 	. <   
	pop bc			;807f	c1 	. 
	ld h,b			;8080	60 	` 
	ld l,c			;8081	69 	i 
	ret			;8082	c9 	. 
sub_8083h:
	ld hl,00002h		;8083	21 02 00 	! . . 
	add hl,sp			;8086	39 	9 
	ld e,(hl)			;8087	5e 	^ 
	inc hl			;8088	23 	# 
	ld d,(hl)			;8089	56 	V 
	inc hl			;808a	23 	# 
	ld b,000h		;808b	06 00 	. . 
l808dh:
	ld c,(hl)			;808d	4e 	N 
	call 0203ch		;808e	cd 3c 20 	. <   
	ret			;8091	c9 	. 
sub_8092h:
	ld hl,00002h		;8092	21 02 00 	! . . 
	add hl,sp			;8095	39 	9 
	ld c,(hl)			;8096	4e 	N 
	inc hl			;8097	23 	# 
	ld b,000h		;8098	06 00 	. . 
	inc hl			;809a	23 	# 
	ld e,(hl)			;809b	5e 	^ 
	inc hl			;809c	23 	# 
	ld d,(hl)			;809d	56 	V 
	call 0203ch		;809e	cd 3c 20 	. <   
	ret			;80a1	c9 	. 
sub_80a2h:
	pop hl			;80a2	e1 	. 
	pop bc			;80a3	c1 	. 
	pop de			;80a4	d1 	. 
	push hl			;80a5	e5 	. 
	call 0203ch		;80a6	cd 3c 20 	. <   
	pop hl			;80a9	e1 	. 
	push de			;80aa	d5 	. 
	push bc			;80ab	c5 	. 
	push hl			;80ac	e5 	. 
l80adh:
	ret			;80ad	c9 	. 
sub_80aeh:
	push bc			;80ae	c5 	. 
	call sub_805dh		;80af	cd 5d 80 	. ] . 
	call sub_8061h		;80b2	cd 61 80 	. a . 
	ld hl,0000dh		;80b5	21 0d 00 	! . . 
	push hl			;80b8	e5 	. 
	ld hl,l804fh		;80b9	21 4f 80 	! O . 
	push hl			;80bc	e5 	. 
	call sub_8070h		;80bd	cd 70 80 	. p . 
	pop bc			;80c0	c1 	. 
	pop bc			;80c1	c1 	. 
	pop bc			;80c2	c1 	. 
	push hl			;80c3	e5 	. 
	ld hl,00000h		;80c4	21 00 00 	! . . 
	call sub_8107h		;80c7	cd 07 81 	. . . 
	ld hl,0000dh		;80ca	21 0d 00 	! . . 
	pop de			;80cd	d1 	. 
	call sub_8110h		;80ce	cd 10 81 	. . . 
	jp nc,l80dah		;80d1	d2 da 80 	. . . 
	ld hl,l8103h		;80d4	21 03 81 	! . . 
	call sub_8067h		;80d7	cd 67 80 	. g . 
l80dah:
	ld hl,0000dh		;80da	21 0d 00 	! . . 
	push hl			;80dd	e5 	. 
	ld hl,l804fh		;80de	21 4f 80 	! O . 
	push hl			;80e1	e5 	. 
	call sub_8083h		;80e2	cd 83 80 	. . . 
	pop bc			;80e5	c1 	. 
	pop bc			;80e6	c1 	. 
	ld hl,l804fh		;80e7	21 4f 80 	! O . 
	push hl			;80ea	e5 	. 
	ld hl,0000dh		;80eb	21 0d 00 	! . . 
	push hl			;80ee	e5 	. 
	call sub_8092h		;80ef	cd 92 80 	. . . 
	pop bc			;80f2	c1 	. 
	pop bc			;80f3	c1 	. 
	ld hl,l804fh		;80f4	21 4f 80 	! O . 
	push hl			;80f7	e5 	. 
	ld hl,0000dh		;80f8	21 0d 00 	! . . 
	push hl			;80fb	e5 	. 
	call sub_80a2h		;80fc	cd a2 80 	. . . 
	pop bc			;80ff	c1 	. 
	pop bc			;8100	c1 	. 
	pop bc			;8101	c1 	. 
	ret			;8102	c9 	. 
l8103h:
	ld c,a			;8103	4f 	O 
	ld c,e			;8104	4b 	K 
	dec c			;8105	0d 	. 
	nop			;8106	00 	. 
sub_8107h:
	add hl,sp			;8107	39 	9 
	inc hl			;8108	23 	# 
	inc hl			;8109	23 	# 
	ld a,(hl)			;810a	7e 	~ 
	inc hl			;810b	23 	# 
	ld h,(hl)			;810c	66 	f 
	ld l,a			;810d	6f 	o 
	ex (sp),hl			;810e	e3 	. 
	jp (hl)			;810f	e9 	. 
sub_8110h:
	and a			;8110	a7 	. 
	sbc hl,de		;8111	ed 52 	. R 
	ccf			;8113	3f 	? 
	ret z			;8114	c8 	. 
	and a			;8115	a7 	. 
	ret			;8116	c9 	. 
