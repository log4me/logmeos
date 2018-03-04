
kernel.bin:     file format elf32-i386


Disassembly of section .text:

00030400 <.text>:
   30400:	b8 00 00 00 00       	mov    $0x0,%eax
   30405:	cd 94                	int    $0x94
   30407:	c3                   	ret    
   30408:	66 90                	xchg   %ax,%ax
   3040a:	66 90                	xchg   %ax,%ax
   3040c:	66 90                	xchg   %ax,%ax
   3040e:	66 90                	xchg   %ax,%ax
   30410:	bc 00 39 03 00       	mov    $0x33900,%esp
   30415:	c7 05 88 3d 03 00 00 	movl   $0x0,0x33d88
   3041c:	00 00 00 
   3041f:	0f 01 05 8c 3d 03 00 	sgdtl  0x33d8c
   30426:	e8 91 0d 00 00       	call   0x311bc
   3042b:	0f 01 15 8c 3d 03 00 	lgdtl  0x33d8c
   30432:	0f 01 1d 00 39 03 00 	lidtl  0x33900
   30439:	ea 40 04 03 00 08 00 	ljmp   $0x8,$0x30440
   30440:	31 c0                	xor    %eax,%eax
   30442:	66 b8 20 00          	mov    $0x20,%ax
   30446:	0f 00 d8             	ltr    %ax
   30449:	e9 0e 0b 00 00       	jmp    0x30f5c
   3044e:	90                   	nop
   3044f:	90                   	nop
   30450:	e8 65 02 00 00       	call   0x306ba
   30455:	e4 21                	in     $0x21,%al
   30457:	0c 01                	or     $0x1,%al
   30459:	e6 21                	out    %al,$0x21
   3045b:	b0 20                	mov    $0x20,%al
   3045d:	e6 20                	out    %al,$0x20
   3045f:	fb                   	sti    
   30460:	6a 00                	push   $0x0
   30462:	ff 15 e0 c5 04 00    	call   *0x4c5e0
   30468:	59                   	pop    %ecx
   30469:	fa                   	cli    
   3046a:	e4 21                	in     $0x21,%al
   3046c:	24 fe                	and    $0xfe,%al
   3046e:	e6 21                	out    %al,$0x21
   30470:	c3                   	ret    
   30471:	90                   	nop
   30472:	90                   	nop
   30473:	90                   	nop
   30474:	90                   	nop
   30475:	90                   	nop
   30476:	90                   	nop
   30477:	90                   	nop
   30478:	90                   	nop
   30479:	90                   	nop
   3047a:	90                   	nop
   3047b:	90                   	nop
   3047c:	90                   	nop
   3047d:	90                   	nop
   3047e:	90                   	nop
   3047f:	90                   	nop
   30480:	e8 35 02 00 00       	call   0x306ba
   30485:	e4 21                	in     $0x21,%al
   30487:	0c 02                	or     $0x2,%al
   30489:	e6 21                	out    %al,$0x21
   3048b:	b0 20                	mov    $0x20,%al
   3048d:	e6 20                	out    %al,$0x20
   3048f:	fb                   	sti    
   30490:	6a 01                	push   $0x1
   30492:	ff 15 e4 c5 04 00    	call   *0x4c5e4
   30498:	59                   	pop    %ecx
   30499:	fa                   	cli    
   3049a:	e4 21                	in     $0x21,%al
   3049c:	24 fd                	and    $0xfd,%al
   3049e:	e6 21                	out    %al,$0x21
   304a0:	c3                   	ret    
   304a1:	90                   	nop
   304a2:	90                   	nop
   304a3:	90                   	nop
   304a4:	90                   	nop
   304a5:	90                   	nop
   304a6:	90                   	nop
   304a7:	90                   	nop
   304a8:	90                   	nop
   304a9:	90                   	nop
   304aa:	90                   	nop
   304ab:	90                   	nop
   304ac:	90                   	nop
   304ad:	90                   	nop
   304ae:	90                   	nop
   304af:	90                   	nop
   304b0:	e8 05 02 00 00       	call   0x306ba
   304b5:	e4 21                	in     $0x21,%al
   304b7:	0c 01                	or     $0x1,%al
   304b9:	e6 21                	out    %al,$0x21
   304bb:	b0 20                	mov    $0x20,%al
   304bd:	e6 20                	out    %al,$0x20
   304bf:	fb                   	sti    
   304c0:	6a 00                	push   $0x0
   304c2:	ff 15 e0 c5 04 00    	call   *0x4c5e0
   304c8:	59                   	pop    %ecx
   304c9:	fa                   	cli    
   304ca:	e4 21                	in     $0x21,%al
   304cc:	24 fe                	and    $0xfe,%al
   304ce:	e6 21                	out    %al,$0x21
   304d0:	c3                   	ret    
   304d1:	90                   	nop
   304d2:	90                   	nop
   304d3:	90                   	nop
   304d4:	90                   	nop
   304d5:	90                   	nop
   304d6:	90                   	nop
   304d7:	90                   	nop
   304d8:	90                   	nop
   304d9:	90                   	nop
   304da:	90                   	nop
   304db:	90                   	nop
   304dc:	90                   	nop
   304dd:	90                   	nop
   304de:	90                   	nop
   304df:	90                   	nop
   304e0:	e8 d5 01 00 00       	call   0x306ba
   304e5:	e4 21                	in     $0x21,%al
   304e7:	0c 08                	or     $0x8,%al
   304e9:	e6 21                	out    %al,$0x21
   304eb:	b0 20                	mov    $0x20,%al
   304ed:	e6 20                	out    %al,$0x20
   304ef:	fb                   	sti    
   304f0:	6a 03                	push   $0x3
   304f2:	ff 15 ec c5 04 00    	call   *0x4c5ec
   304f8:	59                   	pop    %ecx
   304f9:	fa                   	cli    
   304fa:	e4 21                	in     $0x21,%al
   304fc:	24 f7                	and    $0xf7,%al
   304fe:	e6 21                	out    %al,$0x21
   30500:	c3                   	ret    
   30501:	90                   	nop
   30502:	90                   	nop
   30503:	90                   	nop
   30504:	90                   	nop
   30505:	90                   	nop
   30506:	90                   	nop
   30507:	90                   	nop
   30508:	90                   	nop
   30509:	90                   	nop
   3050a:	90                   	nop
   3050b:	90                   	nop
   3050c:	90                   	nop
   3050d:	90                   	nop
   3050e:	90                   	nop
   3050f:	90                   	nop
   30510:	e8 a5 01 00 00       	call   0x306ba
   30515:	e4 21                	in     $0x21,%al
   30517:	0c 10                	or     $0x10,%al
   30519:	e6 21                	out    %al,$0x21
   3051b:	b0 20                	mov    $0x20,%al
   3051d:	e6 20                	out    %al,$0x20
   3051f:	fb                   	sti    
   30520:	6a 04                	push   $0x4
   30522:	ff 15 f0 c5 04 00    	call   *0x4c5f0
   30528:	59                   	pop    %ecx
   30529:	fa                   	cli    
   3052a:	e4 21                	in     $0x21,%al
   3052c:	24 ef                	and    $0xef,%al
   3052e:	e6 21                	out    %al,$0x21
   30530:	c3                   	ret    
   30531:	90                   	nop
   30532:	90                   	nop
   30533:	90                   	nop
   30534:	90                   	nop
   30535:	90                   	nop
   30536:	90                   	nop
   30537:	90                   	nop
   30538:	90                   	nop
   30539:	90                   	nop
   3053a:	90                   	nop
   3053b:	90                   	nop
   3053c:	90                   	nop
   3053d:	90                   	nop
   3053e:	90                   	nop
   3053f:	90                   	nop
   30540:	e8 75 01 00 00       	call   0x306ba
   30545:	e4 21                	in     $0x21,%al
   30547:	0c 20                	or     $0x20,%al
   30549:	e6 21                	out    %al,$0x21
   3054b:	b0 20                	mov    $0x20,%al
   3054d:	e6 20                	out    %al,$0x20
   3054f:	fb                   	sti    
   30550:	6a 05                	push   $0x5
   30552:	ff 15 f4 c5 04 00    	call   *0x4c5f4
   30558:	59                   	pop    %ecx
   30559:	fa                   	cli    
   3055a:	e4 21                	in     $0x21,%al
   3055c:	24 df                	and    $0xdf,%al
   3055e:	e6 21                	out    %al,$0x21
   30560:	c3                   	ret    
   30561:	90                   	nop
   30562:	90                   	nop
   30563:	90                   	nop
   30564:	90                   	nop
   30565:	90                   	nop
   30566:	90                   	nop
   30567:	90                   	nop
   30568:	90                   	nop
   30569:	90                   	nop
   3056a:	90                   	nop
   3056b:	90                   	nop
   3056c:	90                   	nop
   3056d:	90                   	nop
   3056e:	90                   	nop
   3056f:	90                   	nop
   30570:	e8 45 01 00 00       	call   0x306ba
   30575:	e4 21                	in     $0x21,%al
   30577:	0c 40                	or     $0x40,%al
   30579:	e6 21                	out    %al,$0x21
   3057b:	b0 20                	mov    $0x20,%al
   3057d:	e6 20                	out    %al,$0x20
   3057f:	fb                   	sti    
   30580:	6a 06                	push   $0x6
   30582:	ff 15 f8 c5 04 00    	call   *0x4c5f8
   30588:	59                   	pop    %ecx
   30589:	fa                   	cli    
   3058a:	e4 21                	in     $0x21,%al
   3058c:	24 bf                	and    $0xbf,%al
   3058e:	e6 21                	out    %al,$0x21
   30590:	c3                   	ret    
   30591:	90                   	nop
   30592:	90                   	nop
   30593:	90                   	nop
   30594:	90                   	nop
   30595:	90                   	nop
   30596:	90                   	nop
   30597:	90                   	nop
   30598:	90                   	nop
   30599:	90                   	nop
   3059a:	90                   	nop
   3059b:	90                   	nop
   3059c:	90                   	nop
   3059d:	90                   	nop
   3059e:	90                   	nop
   3059f:	90                   	nop
   305a0:	e8 15 01 00 00       	call   0x306ba
   305a5:	e4 21                	in     $0x21,%al
   305a7:	0c 80                	or     $0x80,%al
   305a9:	e6 21                	out    %al,$0x21
   305ab:	b0 20                	mov    $0x20,%al
   305ad:	e6 20                	out    %al,$0x20
   305af:	fb                   	sti    
   305b0:	6a 07                	push   $0x7
   305b2:	ff 15 fc c5 04 00    	call   *0x4c5fc
   305b8:	59                   	pop    %ecx
   305b9:	fa                   	cli    
   305ba:	e4 21                	in     $0x21,%al
   305bc:	24 7f                	and    $0x7f,%al
   305be:	e6 21                	out    %al,$0x21
   305c0:	c3                   	ret    
   305c1:	90                   	nop
   305c2:	90                   	nop
   305c3:	90                   	nop
   305c4:	90                   	nop
   305c5:	90                   	nop
   305c6:	90                   	nop
   305c7:	90                   	nop
   305c8:	90                   	nop
   305c9:	90                   	nop
   305ca:	90                   	nop
   305cb:	90                   	nop
   305cc:	90                   	nop
   305cd:	90                   	nop
   305ce:	90                   	nop
   305cf:	90                   	nop
   305d0:	6a 08                	push   $0x8
   305d2:	e8 3c 01 00 00       	call   0x30713
   305d7:	83 c4 04             	add    $0x4,%esp
   305da:	f4                   	hlt    
   305db:	90                   	nop
   305dc:	90                   	nop
   305dd:	90                   	nop
   305de:	90                   	nop
   305df:	90                   	nop
   305e0:	6a 09                	push   $0x9
   305e2:	e8 2c 01 00 00       	call   0x30713
   305e7:	83 c4 04             	add    $0x4,%esp
   305ea:	f4                   	hlt    
   305eb:	90                   	nop
   305ec:	90                   	nop
   305ed:	90                   	nop
   305ee:	90                   	nop
   305ef:	90                   	nop
   305f0:	6a 0a                	push   $0xa
   305f2:	e8 1c 01 00 00       	call   0x30713
   305f7:	83 c4 04             	add    $0x4,%esp
   305fa:	f4                   	hlt    
   305fb:	90                   	nop
   305fc:	90                   	nop
   305fd:	90                   	nop
   305fe:	90                   	nop
   305ff:	90                   	nop
   30600:	6a 0b                	push   $0xb
   30602:	e8 0c 01 00 00       	call   0x30713
   30607:	83 c4 04             	add    $0x4,%esp
   3060a:	f4                   	hlt    
   3060b:	90                   	nop
   3060c:	90                   	nop
   3060d:	90                   	nop
   3060e:	90                   	nop
   3060f:	90                   	nop
   30610:	6a 0c                	push   $0xc
   30612:	e8 fc 00 00 00       	call   0x30713
   30617:	83 c4 04             	add    $0x4,%esp
   3061a:	f4                   	hlt    
   3061b:	90                   	nop
   3061c:	90                   	nop
   3061d:	90                   	nop
   3061e:	90                   	nop
   3061f:	90                   	nop
   30620:	6a 0d                	push   $0xd
   30622:	e8 ec 00 00 00       	call   0x30713
   30627:	83 c4 04             	add    $0x4,%esp
   3062a:	f4                   	hlt    
   3062b:	90                   	nop
   3062c:	90                   	nop
   3062d:	90                   	nop
   3062e:	90                   	nop
   3062f:	90                   	nop
   30630:	6a 0e                	push   $0xe
   30632:	e8 dc 00 00 00       	call   0x30713
   30637:	83 c4 04             	add    $0x4,%esp
   3063a:	f4                   	hlt    
   3063b:	90                   	nop
   3063c:	90                   	nop
   3063d:	90                   	nop
   3063e:	90                   	nop
   3063f:	90                   	nop
   30640:	6a 0f                	push   $0xf
   30642:	e8 cc 00 00 00       	call   0x30713
   30647:	83 c4 04             	add    $0x4,%esp
   3064a:	f4                   	hlt    
   3064b:	e8 6a 00 00 00       	call   0x306ba
   30650:	fb                   	sti    
   30651:	ff 14 85 e8 30 03 00 	call   *0x330e8(,%eax,4)
   30658:	89 46 2c             	mov    %eax,0x2c(%esi)
   3065b:	fa                   	cli    
   3065c:	c3                   	ret    
   3065d:	6a ff                	push   $0xffffffff
   3065f:	6a 00                	push   $0x0
   30661:	eb 4e                	jmp    0x306b1
   30663:	6a ff                	push   $0xffffffff
   30665:	6a 01                	push   $0x1
   30667:	eb 48                	jmp    0x306b1
   30669:	6a ff                	push   $0xffffffff
   3066b:	6a 02                	push   $0x2
   3066d:	eb 42                	jmp    0x306b1
   3066f:	6a ff                	push   $0xffffffff
   30671:	6a 03                	push   $0x3
   30673:	eb 3c                	jmp    0x306b1
   30675:	6a ff                	push   $0xffffffff
   30677:	6a 04                	push   $0x4
   30679:	eb 36                	jmp    0x306b1
   3067b:	6a ff                	push   $0xffffffff
   3067d:	6a 05                	push   $0x5
   3067f:	eb 30                	jmp    0x306b1
   30681:	6a ff                	push   $0xffffffff
   30683:	6a 06                	push   $0x6
   30685:	eb 2a                	jmp    0x306b1
   30687:	6a ff                	push   $0xffffffff
   30689:	6a 07                	push   $0x7
   3068b:	eb 24                	jmp    0x306b1
   3068d:	6a 08                	push   $0x8
   3068f:	eb 20                	jmp    0x306b1
   30691:	6a ff                	push   $0xffffffff
   30693:	6a 09                	push   $0x9
   30695:	eb 1a                	jmp    0x306b1
   30697:	6a 0a                	push   $0xa
   30699:	eb 16                	jmp    0x306b1
   3069b:	6a 0b                	push   $0xb
   3069d:	eb 12                	jmp    0x306b1
   3069f:	6a 0c                	push   $0xc
   306a1:	eb 0e                	jmp    0x306b1
   306a3:	6a 0d                	push   $0xd
   306a5:	eb 0a                	jmp    0x306b1
   306a7:	6a 0e                	push   $0xe
   306a9:	eb 06                	jmp    0x306b1
   306ab:	6a ff                	push   $0xffffffff
   306ad:	6a 10                	push   $0x10
   306af:	eb 00                	jmp    0x306b1
   306b1:	e8 c8 01 00 00       	call   0x3087e
   306b6:	83 c4 08             	add    $0x8,%esp
   306b9:	f4                   	hlt    
   306ba:	60                   	pusha  
   306bb:	1e                   	push   %ds
   306bc:	06                   	push   %es
   306bd:	0f a0                	push   %fs
   306bf:	0f a8                	push   %gs
   306c1:	66 8c d2             	mov    %ss,%dx
   306c4:	8e da                	mov    %edx,%ds
   306c6:	8e c2                	mov    %edx,%es
   306c8:	89 e6                	mov    %esp,%esi
   306ca:	ff 05 c0 c5 04 00    	incl   0x4c5c0
   306d0:	83 3d c0 c5 04 00 00 	cmpl   $0x0,0x4c5c0
   306d7:	75 0d                	jne    0x306e6
   306d9:	bc 00 39 03 00       	mov    $0x33900,%esp
   306de:	68 ee 06 03 00       	push   $0x306ee
   306e3:	ff 66 30             	jmp    *0x30(%esi)
   306e6:	68 02 07 03 00       	push   $0x30702
   306eb:	ff 66 30             	jmp    *0x30(%esi)
   306ee:	8b 25 a0 45 03 00    	mov    0x345a0,%esp
   306f4:	0f 00 54 24 48       	lldt   0x48(%esp)
   306f9:	8d 44 24 48          	lea    0x48(%esp),%eax
   306fd:	a3 24 3d 03 00       	mov    %eax,0x33d24
   30702:	ff 0d c0 c5 04 00    	decl   0x4c5c0
   30708:	0f a9                	pop    %gs
   3070a:	0f a1                	pop    %fs
   3070c:	07                   	pop    %es
   3070d:	1f                   	pop    %ds
   3070e:	61                   	popa   
   3070f:	83 c4 04             	add    $0x4,%esp
   30712:	cf                   	iret   
   30713:	55                   	push   %ebp
   30714:	89 e5                	mov    %esp,%ebp
   30716:	53                   	push   %ebx
   30717:	83 ec 04             	sub    $0x4,%esp
   3071a:	e8 5b 01 00 00       	call   0x3087a
   3071f:	81 c3 e1 28 00 00    	add    $0x28e1,%ebx
   30725:	83 ec 0c             	sub    $0xc,%esp
   30728:	8d 83 84 e5 ff ff    	lea    -0x1a7c(%ebx),%eax
   3072e:	50                   	push   %eax
   3072f:	e8 98 0d 00 00       	call   0x314cc
   30734:	83 c4 10             	add    $0x10,%esp
   30737:	83 ec 0c             	sub    $0xc,%esp
   3073a:	ff 75 08             	pushl  0x8(%ebp)
   3073d:	e8 8a 0c 00 00       	call   0x313cc
   30742:	83 c4 10             	add    $0x10,%esp
   30745:	83 ec 0c             	sub    $0xc,%esp
   30748:	8d 83 92 e5 ff ff    	lea    -0x1a6e(%ebx),%eax
   3074e:	50                   	push   %eax
   3074f:	e8 78 0d 00 00       	call   0x314cc
   30754:	83 c4 10             	add    $0x10,%esp
   30757:	90                   	nop
   30758:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3075b:	c9                   	leave  
   3075c:	c3                   	ret    
   3075d:	55                   	push   %ebp
   3075e:	89 e5                	mov    %esp,%ebp
   30760:	53                   	push   %ebx
   30761:	83 ec 14             	sub    $0x14,%esp
   30764:	e8 11 01 00 00       	call   0x3087a
   30769:	81 c3 97 28 00 00    	add    $0x2897,%ebx
   3076f:	83 ec 08             	sub    $0x8,%esp
   30772:	6a 11                	push   $0x11
   30774:	6a 20                	push   $0x20
   30776:	e8 94 0d 00 00       	call   0x3150f
   3077b:	83 c4 10             	add    $0x10,%esp
   3077e:	83 ec 08             	sub    $0x8,%esp
   30781:	6a 11                	push   $0x11
   30783:	68 a0 00 00 00       	push   $0xa0
   30788:	e8 82 0d 00 00       	call   0x3150f
   3078d:	83 c4 10             	add    $0x10,%esp
   30790:	83 ec 08             	sub    $0x8,%esp
   30793:	6a 20                	push   $0x20
   30795:	6a 21                	push   $0x21
   30797:	e8 73 0d 00 00       	call   0x3150f
   3079c:	83 c4 10             	add    $0x10,%esp
   3079f:	83 ec 08             	sub    $0x8,%esp
   307a2:	6a 28                	push   $0x28
   307a4:	68 a1 00 00 00       	push   $0xa1
   307a9:	e8 61 0d 00 00       	call   0x3150f
   307ae:	83 c4 10             	add    $0x10,%esp
   307b1:	83 ec 08             	sub    $0x8,%esp
   307b4:	6a 04                	push   $0x4
   307b6:	6a 21                	push   $0x21
   307b8:	e8 52 0d 00 00       	call   0x3150f
   307bd:	83 c4 10             	add    $0x10,%esp
   307c0:	83 ec 08             	sub    $0x8,%esp
   307c3:	6a 02                	push   $0x2
   307c5:	68 a1 00 00 00       	push   $0xa1
   307ca:	e8 40 0d 00 00       	call   0x3150f
   307cf:	83 c4 10             	add    $0x10,%esp
   307d2:	83 ec 08             	sub    $0x8,%esp
   307d5:	6a 01                	push   $0x1
   307d7:	6a 21                	push   $0x21
   307d9:	e8 31 0d 00 00       	call   0x3150f
   307de:	83 c4 10             	add    $0x10,%esp
   307e1:	83 ec 08             	sub    $0x8,%esp
   307e4:	6a 01                	push   $0x1
   307e6:	68 a1 00 00 00       	push   $0xa1
   307eb:	e8 1f 0d 00 00       	call   0x3150f
   307f0:	83 c4 10             	add    $0x10,%esp
   307f3:	83 ec 08             	sub    $0x8,%esp
   307f6:	68 ff 00 00 00       	push   $0xff
   307fb:	6a 21                	push   $0x21
   307fd:	e8 0d 0d 00 00       	call   0x3150f
   30802:	83 c4 10             	add    $0x10,%esp
   30805:	83 ec 08             	sub    $0x8,%esp
   30808:	68 ff 00 00 00       	push   $0xff
   3080d:	68 a1 00 00 00       	push   $0xa1
   30812:	e8 f8 0c 00 00       	call   0x3150f
   30817:	83 c4 10             	add    $0x10,%esp
   3081a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30821:	eb 16                	jmp    0x30839
   30823:	c7 c0 e0 c5 04 00    	mov    $0x4c5e0,%eax
   30829:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3082c:	8d 8b 13 d7 ff ff    	lea    -0x28ed(%ebx),%ecx
   30832:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
   30835:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   30839:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
   3083d:	7e e4                	jle    0x30823
   3083f:	90                   	nop
   30840:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30843:	c9                   	leave  
   30844:	c3                   	ret    
   30845:	55                   	push   %ebp
   30846:	89 e5                	mov    %esp,%ebp
   30848:	53                   	push   %ebx
   30849:	83 ec 04             	sub    $0x4,%esp
   3084c:	e8 29 00 00 00       	call   0x3087a
   30851:	81 c3 af 27 00 00    	add    $0x27af,%ebx
   30857:	83 ec 0c             	sub    $0xc,%esp
   3085a:	ff 75 08             	pushl  0x8(%ebp)
   3085d:	e8 cb 0c 00 00       	call   0x3152d
   30862:	83 c4 10             	add    $0x10,%esp
   30865:	c7 c0 e0 c5 04 00    	mov    $0x4c5e0,%eax
   3086b:	8b 55 08             	mov    0x8(%ebp),%edx
   3086e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   30871:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
   30874:	90                   	nop
   30875:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30878:	c9                   	leave  
   30879:	c3                   	ret    
   3087a:	8b 1c 24             	mov    (%esp),%ebx
   3087d:	c3                   	ret    
   3087e:	55                   	push   %ebp
   3087f:	89 e5                	mov    %esp,%ebp
   30881:	57                   	push   %edi
   30882:	56                   	push   %esi
   30883:	53                   	push   %ebx
   30884:	83 ec 6c             	sub    $0x6c,%esp
   30887:	e8 ee ff ff ff       	call   0x3087a
   3088c:	81 c3 74 27 00 00    	add    $0x2774,%ebx
   30892:	c7 45 e0 74 00 00 00 	movl   $0x74,-0x20(%ebp)
   30899:	8d 45 94             	lea    -0x6c(%ebp),%eax
   3089c:	8d 93 40 00 00 00    	lea    0x40(%ebx),%edx
   308a2:	b9 13 00 00 00       	mov    $0x13,%ecx
   308a7:	89 c7                	mov    %eax,%edi
   308a9:	89 d6                	mov    %edx,%esi
   308ab:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   308ad:	c7 c0 88 3d 03 00    	mov    $0x33d88,%eax
   308b3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   308b9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   308c0:	eb 16                	jmp    0x308d8
   308c2:	83 ec 0c             	sub    $0xc,%esp
   308c5:	8d 83 94 e5 ff ff    	lea    -0x1a6c(%ebx),%eax
   308cb:	50                   	push   %eax
   308cc:	e8 fb 0b 00 00       	call   0x314cc
   308d1:	83 c4 10             	add    $0x10,%esp
   308d4:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
   308d8:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
   308df:	7e e1                	jle    0x308c2
   308e1:	c7 c0 88 3d 03 00    	mov    $0x33d88,%eax
   308e7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   308ed:	83 ec 08             	sub    $0x8,%esp
   308f0:	ff 75 e0             	pushl  -0x20(%ebp)
   308f3:	8d 83 96 e5 ff ff    	lea    -0x1a6a(%ebx),%eax
   308f9:	50                   	push   %eax
   308fa:	e8 81 0b 00 00       	call   0x31480
   308ff:	83 c4 10             	add    $0x10,%esp
   30902:	8b 45 08             	mov    0x8(%ebp),%eax
   30905:	8b 44 85 94          	mov    -0x6c(%ebp,%eax,4),%eax
   30909:	83 ec 08             	sub    $0x8,%esp
   3090c:	ff 75 e0             	pushl  -0x20(%ebp)
   3090f:	50                   	push   %eax
   30910:	e8 6b 0b 00 00       	call   0x31480
   30915:	83 c4 10             	add    $0x10,%esp
   30918:	83 ec 08             	sub    $0x8,%esp
   3091b:	ff 75 e0             	pushl  -0x20(%ebp)
   3091e:	8d 83 a7 e5 ff ff    	lea    -0x1a59(%ebx),%eax
   30924:	50                   	push   %eax
   30925:	e8 56 0b 00 00       	call   0x31480
   3092a:	83 c4 10             	add    $0x10,%esp
   3092d:	83 ec 08             	sub    $0x8,%esp
   30930:	ff 75 e0             	pushl  -0x20(%ebp)
   30933:	8d 83 aa e5 ff ff    	lea    -0x1a56(%ebx),%eax
   30939:	50                   	push   %eax
   3093a:	e8 41 0b 00 00       	call   0x31480
   3093f:	83 c4 10             	add    $0x10,%esp
   30942:	83 ec 0c             	sub    $0xc,%esp
   30945:	ff 75 18             	pushl  0x18(%ebp)
   30948:	e8 7f 0a 00 00       	call   0x313cc
   3094d:	83 c4 10             	add    $0x10,%esp
   30950:	83 ec 08             	sub    $0x8,%esp
   30953:	ff 75 e0             	pushl  -0x20(%ebp)
   30956:	8d 83 b2 e5 ff ff    	lea    -0x1a4e(%ebx),%eax
   3095c:	50                   	push   %eax
   3095d:	e8 1e 0b 00 00       	call   0x31480
   30962:	83 c4 10             	add    $0x10,%esp
   30965:	83 ec 0c             	sub    $0xc,%esp
   30968:	ff 75 10             	pushl  0x10(%ebp)
   3096b:	e8 5c 0a 00 00       	call   0x313cc
   30970:	83 c4 10             	add    $0x10,%esp
   30973:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
   30977:	74 23                	je     0x3099c
   30979:	83 ec 08             	sub    $0x8,%esp
   3097c:	ff 75 e0             	pushl  -0x20(%ebp)
   3097f:	8d 83 b7 e5 ff ff    	lea    -0x1a49(%ebx),%eax
   30985:	50                   	push   %eax
   30986:	e8 f5 0a 00 00       	call   0x31480
   3098b:	83 c4 10             	add    $0x10,%esp
   3098e:	83 ec 0c             	sub    $0xc,%esp
   30991:	ff 75 0c             	pushl  0xc(%ebp)
   30994:	e8 33 0a 00 00       	call   0x313cc
   30999:	83 c4 10             	add    $0x10,%esp
   3099c:	90                   	nop
   3099d:	8d 65 f4             	lea    -0xc(%ebp),%esp
   309a0:	5b                   	pop    %ebx
   309a1:	5e                   	pop    %esi
   309a2:	5f                   	pop    %edi
   309a3:	5d                   	pop    %ebp
   309a4:	c3                   	ret    
   309a5:	55                   	push   %ebp
   309a6:	89 e5                	mov    %esp,%ebp
   309a8:	83 ec 04             	sub    $0x4,%esp
   309ab:	e8 5f 05 00 00       	call   0x30f0f
   309b0:	05 50 26 00 00       	add    $0x2650,%eax
   309b5:	8b 45 14             	mov    0x14(%ebp),%eax
   309b8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   309bc:	8b 45 10             	mov    0x10(%ebp),%eax
   309bf:	89 c2                	mov    %eax,%edx
   309c1:	8b 45 08             	mov    0x8(%ebp),%eax
   309c4:	66 89 10             	mov    %dx,(%eax)
   309c7:	8b 45 0c             	mov    0xc(%ebp),%eax
   309ca:	89 c2                	mov    %eax,%edx
   309cc:	8b 45 08             	mov    0x8(%ebp),%eax
   309cf:	66 89 50 02          	mov    %dx,0x2(%eax)
   309d3:	8b 45 0c             	mov    0xc(%ebp),%eax
   309d6:	c1 e8 10             	shr    $0x10,%eax
   309d9:	89 c2                	mov    %eax,%edx
   309db:	8b 45 08             	mov    0x8(%ebp),%eax
   309de:	88 50 04             	mov    %dl,0x4(%eax)
   309e1:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
   309e5:	89 c2                	mov    %eax,%edx
   309e7:	8b 45 08             	mov    0x8(%ebp),%eax
   309ea:	88 50 05             	mov    %dl,0x5(%eax)
   309ed:	8b 45 10             	mov    0x10(%ebp),%eax
   309f0:	c1 e8 10             	shr    $0x10,%eax
   309f3:	83 e0 0f             	and    $0xf,%eax
   309f6:	89 c2                	mov    %eax,%edx
   309f8:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
   309fc:	66 c1 e8 08          	shr    $0x8,%ax
   30a00:	83 e0 f0             	and    $0xfffffff0,%eax
   30a03:	09 c2                	or     %eax,%edx
   30a05:	8b 45 08             	mov    0x8(%ebp),%eax
   30a08:	88 50 06             	mov    %dl,0x6(%eax)
   30a0b:	8b 45 0c             	mov    0xc(%ebp),%eax
   30a0e:	c1 e8 18             	shr    $0x18,%eax
   30a11:	89 c2                	mov    %eax,%edx
   30a13:	8b 45 08             	mov    0x8(%ebp),%eax
   30a16:	88 50 07             	mov    %dl,0x7(%eax)
   30a19:	90                   	nop
   30a1a:	c9                   	leave  
   30a1b:	c3                   	ret    
   30a1c:	55                   	push   %ebp
   30a1d:	89 e5                	mov    %esp,%ebp
   30a1f:	83 ec 14             	sub    $0x14,%esp
   30a22:	e8 e8 04 00 00       	call   0x30f0f
   30a27:	05 d9 25 00 00       	add    $0x25d9,%eax
   30a2c:	8b 55 08             	mov    0x8(%ebp),%edx
   30a2f:	66 89 55 ec          	mov    %dx,-0x14(%ebp)
   30a33:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
   30a37:	66 c1 ea 03          	shr    $0x3,%dx
   30a3b:	0f b7 d2             	movzwl %dx,%edx
   30a3e:	c1 e2 03             	shl    $0x3,%edx
   30a41:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   30a47:	01 d0                	add    %edx,%eax
   30a49:	89 45 fc             	mov    %eax,-0x4(%ebp)
   30a4c:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30a4f:	0f b6 40 07          	movzbl 0x7(%eax),%eax
   30a53:	0f b6 c0             	movzbl %al,%eax
   30a56:	c1 e0 18             	shl    $0x18,%eax
   30a59:	89 c2                	mov    %eax,%edx
   30a5b:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30a5e:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   30a62:	0f b6 c0             	movzbl %al,%eax
   30a65:	c1 e0 10             	shl    $0x10,%eax
   30a68:	09 c2                	or     %eax,%edx
   30a6a:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30a6d:	0f b7 40 02          	movzwl 0x2(%eax),%eax
   30a71:	0f b7 c0             	movzwl %ax,%eax
   30a74:	09 d0                	or     %edx,%eax
   30a76:	c9                   	leave  
   30a77:	c3                   	ret    
   30a78:	55                   	push   %ebp
   30a79:	89 e5                	mov    %esp,%ebp
   30a7b:	53                   	push   %ebx
   30a7c:	83 ec 14             	sub    $0x14,%esp
   30a7f:	e8 f6 fd ff ff       	call   0x3087a
   30a84:	81 c3 7c 25 00 00    	add    $0x257c,%ebx
   30a8a:	e8 ce fc ff ff       	call   0x3075d
   30a8f:	6a 00                	push   $0x0
   30a91:	c7 c0 5d 06 03 00    	mov    $0x3065d,%eax
   30a97:	50                   	push   %eax
   30a98:	68 8e 00 00 00       	push   $0x8e
   30a9d:	6a 00                	push   $0x0
   30a9f:	e8 e8 03 00 00       	call   0x30e8c
   30aa4:	83 c4 10             	add    $0x10,%esp
   30aa7:	6a 00                	push   $0x0
   30aa9:	c7 c0 63 06 03 00    	mov    $0x30663,%eax
   30aaf:	50                   	push   %eax
   30ab0:	68 8e 00 00 00       	push   $0x8e
   30ab5:	6a 01                	push   $0x1
   30ab7:	e8 d0 03 00 00       	call   0x30e8c
   30abc:	83 c4 10             	add    $0x10,%esp
   30abf:	6a 00                	push   $0x0
   30ac1:	c7 c0 69 06 03 00    	mov    $0x30669,%eax
   30ac7:	50                   	push   %eax
   30ac8:	68 8e 00 00 00       	push   $0x8e
   30acd:	6a 02                	push   $0x2
   30acf:	e8 b8 03 00 00       	call   0x30e8c
   30ad4:	83 c4 10             	add    $0x10,%esp
   30ad7:	6a 03                	push   $0x3
   30ad9:	c7 c0 6f 06 03 00    	mov    $0x3066f,%eax
   30adf:	50                   	push   %eax
   30ae0:	68 8e 00 00 00       	push   $0x8e
   30ae5:	6a 03                	push   $0x3
   30ae7:	e8 a0 03 00 00       	call   0x30e8c
   30aec:	83 c4 10             	add    $0x10,%esp
   30aef:	6a 03                	push   $0x3
   30af1:	c7 c0 75 06 03 00    	mov    $0x30675,%eax
   30af7:	50                   	push   %eax
   30af8:	68 8e 00 00 00       	push   $0x8e
   30afd:	6a 04                	push   $0x4
   30aff:	e8 88 03 00 00       	call   0x30e8c
   30b04:	83 c4 10             	add    $0x10,%esp
   30b07:	6a 00                	push   $0x0
   30b09:	c7 c0 7b 06 03 00    	mov    $0x3067b,%eax
   30b0f:	50                   	push   %eax
   30b10:	68 8e 00 00 00       	push   $0x8e
   30b15:	6a 05                	push   $0x5
   30b17:	e8 70 03 00 00       	call   0x30e8c
   30b1c:	83 c4 10             	add    $0x10,%esp
   30b1f:	6a 00                	push   $0x0
   30b21:	c7 c0 81 06 03 00    	mov    $0x30681,%eax
   30b27:	50                   	push   %eax
   30b28:	68 8e 00 00 00       	push   $0x8e
   30b2d:	6a 06                	push   $0x6
   30b2f:	e8 58 03 00 00       	call   0x30e8c
   30b34:	83 c4 10             	add    $0x10,%esp
   30b37:	6a 00                	push   $0x0
   30b39:	c7 c0 87 06 03 00    	mov    $0x30687,%eax
   30b3f:	50                   	push   %eax
   30b40:	68 8e 00 00 00       	push   $0x8e
   30b45:	6a 07                	push   $0x7
   30b47:	e8 40 03 00 00       	call   0x30e8c
   30b4c:	83 c4 10             	add    $0x10,%esp
   30b4f:	6a 00                	push   $0x0
   30b51:	c7 c0 8d 06 03 00    	mov    $0x3068d,%eax
   30b57:	50                   	push   %eax
   30b58:	68 8e 00 00 00       	push   $0x8e
   30b5d:	6a 08                	push   $0x8
   30b5f:	e8 28 03 00 00       	call   0x30e8c
   30b64:	83 c4 10             	add    $0x10,%esp
   30b67:	6a 00                	push   $0x0
   30b69:	c7 c0 91 06 03 00    	mov    $0x30691,%eax
   30b6f:	50                   	push   %eax
   30b70:	68 8e 00 00 00       	push   $0x8e
   30b75:	6a 09                	push   $0x9
   30b77:	e8 10 03 00 00       	call   0x30e8c
   30b7c:	83 c4 10             	add    $0x10,%esp
   30b7f:	6a 00                	push   $0x0
   30b81:	c7 c0 97 06 03 00    	mov    $0x30697,%eax
   30b87:	50                   	push   %eax
   30b88:	68 8e 00 00 00       	push   $0x8e
   30b8d:	6a 0a                	push   $0xa
   30b8f:	e8 f8 02 00 00       	call   0x30e8c
   30b94:	83 c4 10             	add    $0x10,%esp
   30b97:	6a 00                	push   $0x0
   30b99:	c7 c0 9b 06 03 00    	mov    $0x3069b,%eax
   30b9f:	50                   	push   %eax
   30ba0:	68 8e 00 00 00       	push   $0x8e
   30ba5:	6a 0b                	push   $0xb
   30ba7:	e8 e0 02 00 00       	call   0x30e8c
   30bac:	83 c4 10             	add    $0x10,%esp
   30baf:	6a 00                	push   $0x0
   30bb1:	c7 c0 9f 06 03 00    	mov    $0x3069f,%eax
   30bb7:	50                   	push   %eax
   30bb8:	68 8e 00 00 00       	push   $0x8e
   30bbd:	6a 0c                	push   $0xc
   30bbf:	e8 c8 02 00 00       	call   0x30e8c
   30bc4:	83 c4 10             	add    $0x10,%esp
   30bc7:	6a 00                	push   $0x0
   30bc9:	c7 c0 a3 06 03 00    	mov    $0x306a3,%eax
   30bcf:	50                   	push   %eax
   30bd0:	68 8e 00 00 00       	push   $0x8e
   30bd5:	6a 0d                	push   $0xd
   30bd7:	e8 b0 02 00 00       	call   0x30e8c
   30bdc:	83 c4 10             	add    $0x10,%esp
   30bdf:	6a 00                	push   $0x0
   30be1:	c7 c0 a7 06 03 00    	mov    $0x306a7,%eax
   30be7:	50                   	push   %eax
   30be8:	68 8e 00 00 00       	push   $0x8e
   30bed:	6a 0e                	push   $0xe
   30bef:	e8 98 02 00 00       	call   0x30e8c
   30bf4:	83 c4 10             	add    $0x10,%esp
   30bf7:	6a 00                	push   $0x0
   30bf9:	c7 c0 ab 06 03 00    	mov    $0x306ab,%eax
   30bff:	50                   	push   %eax
   30c00:	68 8e 00 00 00       	push   $0x8e
   30c05:	6a 10                	push   $0x10
   30c07:	e8 80 02 00 00       	call   0x30e8c
   30c0c:	83 c4 10             	add    $0x10,%esp
   30c0f:	6a 00                	push   $0x0
   30c11:	c7 c0 50 04 03 00    	mov    $0x30450,%eax
   30c17:	50                   	push   %eax
   30c18:	68 8e 00 00 00       	push   $0x8e
   30c1d:	6a 20                	push   $0x20
   30c1f:	e8 68 02 00 00       	call   0x30e8c
   30c24:	83 c4 10             	add    $0x10,%esp
   30c27:	6a 00                	push   $0x0
   30c29:	c7 c0 80 04 03 00    	mov    $0x30480,%eax
   30c2f:	50                   	push   %eax
   30c30:	68 8e 00 00 00       	push   $0x8e
   30c35:	6a 21                	push   $0x21
   30c37:	e8 50 02 00 00       	call   0x30e8c
   30c3c:	83 c4 10             	add    $0x10,%esp
   30c3f:	6a 00                	push   $0x0
   30c41:	c7 c0 b0 04 03 00    	mov    $0x304b0,%eax
   30c47:	50                   	push   %eax
   30c48:	68 8e 00 00 00       	push   $0x8e
   30c4d:	6a 22                	push   $0x22
   30c4f:	e8 38 02 00 00       	call   0x30e8c
   30c54:	83 c4 10             	add    $0x10,%esp
   30c57:	6a 00                	push   $0x0
   30c59:	c7 c0 e0 04 03 00    	mov    $0x304e0,%eax
   30c5f:	50                   	push   %eax
   30c60:	68 8e 00 00 00       	push   $0x8e
   30c65:	6a 23                	push   $0x23
   30c67:	e8 20 02 00 00       	call   0x30e8c
   30c6c:	83 c4 10             	add    $0x10,%esp
   30c6f:	6a 00                	push   $0x0
   30c71:	c7 c0 10 05 03 00    	mov    $0x30510,%eax
   30c77:	50                   	push   %eax
   30c78:	68 8e 00 00 00       	push   $0x8e
   30c7d:	6a 24                	push   $0x24
   30c7f:	e8 08 02 00 00       	call   0x30e8c
   30c84:	83 c4 10             	add    $0x10,%esp
   30c87:	6a 00                	push   $0x0
   30c89:	c7 c0 40 05 03 00    	mov    $0x30540,%eax
   30c8f:	50                   	push   %eax
   30c90:	68 8e 00 00 00       	push   $0x8e
   30c95:	6a 25                	push   $0x25
   30c97:	e8 f0 01 00 00       	call   0x30e8c
   30c9c:	83 c4 10             	add    $0x10,%esp
   30c9f:	6a 00                	push   $0x0
   30ca1:	c7 c0 70 05 03 00    	mov    $0x30570,%eax
   30ca7:	50                   	push   %eax
   30ca8:	68 8e 00 00 00       	push   $0x8e
   30cad:	6a 26                	push   $0x26
   30caf:	e8 d8 01 00 00       	call   0x30e8c
   30cb4:	83 c4 10             	add    $0x10,%esp
   30cb7:	6a 00                	push   $0x0
   30cb9:	c7 c0 a0 05 03 00    	mov    $0x305a0,%eax
   30cbf:	50                   	push   %eax
   30cc0:	68 8e 00 00 00       	push   $0x8e
   30cc5:	6a 27                	push   $0x27
   30cc7:	e8 c0 01 00 00       	call   0x30e8c
   30ccc:	83 c4 10             	add    $0x10,%esp
   30ccf:	6a 00                	push   $0x0
   30cd1:	c7 c0 d0 05 03 00    	mov    $0x305d0,%eax
   30cd7:	50                   	push   %eax
   30cd8:	68 8e 00 00 00       	push   $0x8e
   30cdd:	6a 28                	push   $0x28
   30cdf:	e8 a8 01 00 00       	call   0x30e8c
   30ce4:	83 c4 10             	add    $0x10,%esp
   30ce7:	6a 00                	push   $0x0
   30ce9:	c7 c0 e0 05 03 00    	mov    $0x305e0,%eax
   30cef:	50                   	push   %eax
   30cf0:	68 8e 00 00 00       	push   $0x8e
   30cf5:	6a 29                	push   $0x29
   30cf7:	e8 90 01 00 00       	call   0x30e8c
   30cfc:	83 c4 10             	add    $0x10,%esp
   30cff:	6a 00                	push   $0x0
   30d01:	c7 c0 f0 05 03 00    	mov    $0x305f0,%eax
   30d07:	50                   	push   %eax
   30d08:	68 8e 00 00 00       	push   $0x8e
   30d0d:	6a 2a                	push   $0x2a
   30d0f:	e8 78 01 00 00       	call   0x30e8c
   30d14:	83 c4 10             	add    $0x10,%esp
   30d17:	6a 00                	push   $0x0
   30d19:	c7 c0 00 06 03 00    	mov    $0x30600,%eax
   30d1f:	50                   	push   %eax
   30d20:	68 8e 00 00 00       	push   $0x8e
   30d25:	6a 2b                	push   $0x2b
   30d27:	e8 60 01 00 00       	call   0x30e8c
   30d2c:	83 c4 10             	add    $0x10,%esp
   30d2f:	6a 00                	push   $0x0
   30d31:	c7 c0 10 06 03 00    	mov    $0x30610,%eax
   30d37:	50                   	push   %eax
   30d38:	68 8e 00 00 00       	push   $0x8e
   30d3d:	6a 2c                	push   $0x2c
   30d3f:	e8 48 01 00 00       	call   0x30e8c
   30d44:	83 c4 10             	add    $0x10,%esp
   30d47:	6a 00                	push   $0x0
   30d49:	c7 c0 20 06 03 00    	mov    $0x30620,%eax
   30d4f:	50                   	push   %eax
   30d50:	68 8e 00 00 00       	push   $0x8e
   30d55:	6a 2d                	push   $0x2d
   30d57:	e8 30 01 00 00       	call   0x30e8c
   30d5c:	83 c4 10             	add    $0x10,%esp
   30d5f:	6a 00                	push   $0x0
   30d61:	c7 c0 30 06 03 00    	mov    $0x30630,%eax
   30d67:	50                   	push   %eax
   30d68:	68 8e 00 00 00       	push   $0x8e
   30d6d:	6a 2e                	push   $0x2e
   30d6f:	e8 18 01 00 00       	call   0x30e8c
   30d74:	83 c4 10             	add    $0x10,%esp
   30d77:	6a 00                	push   $0x0
   30d79:	c7 c0 40 06 03 00    	mov    $0x30640,%eax
   30d7f:	50                   	push   %eax
   30d80:	68 8e 00 00 00       	push   $0x8e
   30d85:	6a 2f                	push   $0x2f
   30d87:	e8 00 01 00 00       	call   0x30e8c
   30d8c:	83 c4 10             	add    $0x10,%esp
   30d8f:	6a 03                	push   $0x3
   30d91:	c7 c0 4b 06 03 00    	mov    $0x3064b,%eax
   30d97:	50                   	push   %eax
   30d98:	68 8e 00 00 00       	push   $0x8e
   30d9d:	68 94 00 00 00       	push   $0x94
   30da2:	e8 e5 00 00 00       	call   0x30e8c
   30da7:	83 c4 10             	add    $0x10,%esp
   30daa:	83 ec 04             	sub    $0x4,%esp
   30dad:	6a 68                	push   $0x68
   30daf:	6a 00                	push   $0x0
   30db1:	c7 c0 20 3d 03 00    	mov    $0x33d20,%eax
   30db7:	50                   	push   %eax
   30db8:	e8 94 06 00 00       	call   0x31451
   30dbd:	83 c4 10             	add    $0x10,%esp
   30dc0:	c7 c0 20 3d 03 00    	mov    $0x33d20,%eax
   30dc6:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
   30dcd:	83 ec 0c             	sub    $0xc,%esp
   30dd0:	6a 10                	push   $0x10
   30dd2:	e8 45 fc ff ff       	call   0x30a1c
   30dd7:	83 c4 10             	add    $0x10,%esp
   30dda:	89 c2                	mov    %eax,%edx
   30ddc:	c7 c0 20 3d 03 00    	mov    $0x33d20,%eax
   30de2:	01 d0                	add    %edx,%eax
   30de4:	68 89 00 00 00       	push   $0x89
   30de9:	6a 67                	push   $0x67
   30deb:	50                   	push   %eax
   30dec:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   30df2:	8d 40 20             	lea    0x20(%eax),%eax
   30df5:	50                   	push   %eax
   30df6:	e8 aa fb ff ff       	call   0x309a5
   30dfb:	83 c4 10             	add    $0x10,%esp
   30dfe:	c7 c0 20 3d 03 00    	mov    $0x33d20,%eax
   30e04:	66 c7 40 66 68 00    	movw   $0x68,0x66(%eax)
   30e0a:	c7 c0 20 c6 04 00    	mov    $0x4c620,%eax
   30e10:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30e13:	66 c7 45 f2 28 00    	movw   $0x28,-0xe(%ebp)
   30e19:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   30e20:	eb 5e                	jmp    0x30e80
   30e22:	83 ec 0c             	sub    $0xc,%esp
   30e25:	6a 10                	push   $0x10
   30e27:	e8 f0 fb ff ff       	call   0x30a1c
   30e2c:	83 c4 10             	add    $0x10,%esp
   30e2f:	89 c1                	mov    %eax,%ecx
   30e31:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30e34:	6b c0 70             	imul   $0x70,%eax,%eax
   30e37:	8d 50 40             	lea    0x40(%eax),%edx
   30e3a:	c7 c0 20 c6 04 00    	mov    $0x4c620,%eax
   30e40:	01 d0                	add    %edx,%eax
   30e42:	83 c0 0a             	add    $0xa,%eax
   30e45:	8d 14 01             	lea    (%ecx,%eax,1),%edx
   30e48:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
   30e4c:	66 c1 e8 03          	shr    $0x3,%ax
   30e50:	0f b7 c0             	movzwl %ax,%eax
   30e53:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
   30e5a:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   30e60:	01 c8                	add    %ecx,%eax
   30e62:	68 82 00 00 00       	push   $0x82
   30e67:	6a 0f                	push   $0xf
   30e69:	52                   	push   %edx
   30e6a:	50                   	push   %eax
   30e6b:	e8 35 fb ff ff       	call   0x309a5
   30e70:	83 c4 10             	add    $0x10,%esp
   30e73:	83 45 f4 70          	addl   $0x70,-0xc(%ebp)
   30e77:	66 83 45 f2 08       	addw   $0x8,-0xe(%ebp)
   30e7c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
   30e80:	83 7d ec 02          	cmpl   $0x2,-0x14(%ebp)
   30e84:	7e 9c                	jle    0x30e22
   30e86:	90                   	nop
   30e87:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30e8a:	c9                   	leave  
   30e8b:	c3                   	ret    
   30e8c:	55                   	push   %ebp
   30e8d:	89 e5                	mov    %esp,%ebp
   30e8f:	53                   	push   %ebx
   30e90:	83 ec 1c             	sub    $0x1c,%esp
   30e93:	e8 77 00 00 00       	call   0x30f0f
   30e98:	05 68 21 00 00       	add    $0x2168,%eax
   30e9d:	8b 5d 08             	mov    0x8(%ebp),%ebx
   30ea0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   30ea3:	8b 55 14             	mov    0x14(%ebp),%edx
   30ea6:	88 5d e8             	mov    %bl,-0x18(%ebp)
   30ea9:	88 4d e4             	mov    %cl,-0x1c(%ebp)
   30eac:	88 55 e0             	mov    %dl,-0x20(%ebp)
   30eaf:	0f b6 55 e8          	movzbl -0x18(%ebp),%edx
   30eb3:	c1 e2 03             	shl    $0x3,%edx
   30eb6:	c7 c0 a0 3d 03 00    	mov    $0x33da0,%eax
   30ebc:	01 d0                	add    %edx,%eax
   30ebe:	89 45 f8             	mov    %eax,-0x8(%ebp)
   30ec1:	8b 45 10             	mov    0x10(%ebp),%eax
   30ec4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30ec7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30eca:	89 c2                	mov    %eax,%edx
   30ecc:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30ecf:	66 89 10             	mov    %dx,(%eax)
   30ed2:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30ed5:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
   30edb:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30ede:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30ee2:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
   30ee6:	c1 e0 05             	shl    $0x5,%eax
   30ee9:	89 c2                	mov    %eax,%edx
   30eeb:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
   30eef:	09 d0                	or     %edx,%eax
   30ef1:	89 c2                	mov    %eax,%edx
   30ef3:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30ef6:	88 50 05             	mov    %dl,0x5(%eax)
   30ef9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30efc:	c1 e8 10             	shr    $0x10,%eax
   30eff:	89 c2                	mov    %eax,%edx
   30f01:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30f04:	66 89 50 06          	mov    %dx,0x6(%eax)
   30f08:	90                   	nop
   30f09:	83 c4 1c             	add    $0x1c,%esp
   30f0c:	5b                   	pop    %ebx
   30f0d:	5d                   	pop    %ebp
   30f0e:	c3                   	ret    
   30f0f:	8b 04 24             	mov    (%esp),%eax
   30f12:	c3                   	ret    
   30f13:	55                   	push   %ebp
   30f14:	89 e5                	mov    %esp,%ebp
   30f16:	e8 f4 ff ff ff       	call   0x30f0f
   30f1b:	05 e5 20 00 00       	add    $0x20e5,%eax
   30f20:	c7 c2 a0 45 03 00    	mov    $0x345a0,%edx
   30f26:	8b 12                	mov    (%edx),%edx
   30f28:	8d 4a 70             	lea    0x70(%edx),%ecx
   30f2b:	c7 c2 a0 45 03 00    	mov    $0x345a0,%edx
   30f31:	89 0a                	mov    %ecx,(%edx)
   30f33:	c7 c2 a0 45 03 00    	mov    $0x345a0,%edx
   30f39:	8b 0a                	mov    (%edx),%ecx
   30f3b:	c7 c2 20 c6 04 00    	mov    $0x4c620,%edx
   30f41:	8d 92 50 01 00 00    	lea    0x150(%edx),%edx
   30f47:	39 d1                	cmp    %edx,%ecx
   30f49:	72 0e                	jb     0x30f59
   30f4b:	c7 c2 a0 45 03 00    	mov    $0x345a0,%edx
   30f51:	c7 c0 20 c6 04 00    	mov    $0x4c620,%eax
   30f57:	89 02                	mov    %eax,(%edx)
   30f59:	90                   	nop
   30f5a:	5d                   	pop    %ebp
   30f5b:	c3                   	ret    
   30f5c:	55                   	push   %ebp
   30f5d:	89 e5                	mov    %esp,%ebp
   30f5f:	53                   	push   %ebx
   30f60:	83 ec 24             	sub    $0x24,%esp
   30f63:	e8 12 f9 ff ff       	call   0x3087a
   30f68:	81 c3 98 20 00 00    	add    $0x2098,%ebx
   30f6e:	83 ec 0c             	sub    $0xc,%esp
   30f71:	8d 83 a0 e7 ff ff    	lea    -0x1860(%ebx),%eax
   30f77:	50                   	push   %eax
   30f78:	e8 4f 05 00 00       	call   0x314cc
   30f7d:	83 c4 10             	add    $0x10,%esp
   30f80:	c7 c0 20 c6 04 00    	mov    $0x4c620,%eax
   30f86:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30f89:	c7 c0 a0 30 03 00    	mov    $0x330a0,%eax
   30f8f:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30f92:	c7 c0 c0 45 03 00    	mov    $0x345c0,%eax
   30f98:	8d 80 00 80 01 00    	lea    0x18000(%eax),%eax
   30f9e:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30fa1:	66 c7 45 ea 28 00    	movw   $0x28,-0x16(%ebp)
   30fa7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   30fae:	e9 ee 00 00 00       	jmp    0x310a1
   30fb3:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30fb6:	8d 50 08             	lea    0x8(%eax),%edx
   30fb9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30fbc:	83 c0 60             	add    $0x60,%eax
   30fbf:	83 ec 08             	sub    $0x8,%esp
   30fc2:	52                   	push   %edx
   30fc3:	50                   	push   %eax
   30fc4:	e8 47 04 00 00       	call   0x31410
   30fc9:	83 c4 10             	add    $0x10,%esp
   30fcc:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   30fcf:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30fd2:	89 50 5c             	mov    %edx,0x5c(%eax)
   30fd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30fd8:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
   30fdc:	66 89 50 48          	mov    %dx,0x48(%eax)
   30fe0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30fe3:	8d 50 4a             	lea    0x4a(%eax),%edx
   30fe6:	83 ec 04             	sub    $0x4,%esp
   30fe9:	6a 08                	push   $0x8
   30feb:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   30ff1:	8d 40 08             	lea    0x8(%eax),%eax
   30ff4:	50                   	push   %eax
   30ff5:	52                   	push   %edx
   30ff6:	e8 2d 04 00 00       	call   0x31428
   30ffb:	83 c4 10             	add    $0x10,%esp
   30ffe:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31001:	c6 40 4f b8          	movb   $0xb8,0x4f(%eax)
   31005:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31008:	8d 50 52             	lea    0x52(%eax),%edx
   3100b:	83 ec 04             	sub    $0x4,%esp
   3100e:	6a 08                	push   $0x8
   31010:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   31016:	8d 40 10             	lea    0x10(%eax),%eax
   31019:	50                   	push   %eax
   3101a:	52                   	push   %edx
   3101b:	e8 08 04 00 00       	call   0x31428
   31020:	83 c4 10             	add    $0x10,%esp
   31023:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31026:	c6 40 57 b2          	movb   $0xb2,0x57(%eax)
   3102a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3102d:	c7 40 38 05 00 00 00 	movl   $0x5,0x38(%eax)
   31034:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31037:	c7 40 0c 0d 00 00 00 	movl   $0xd,0xc(%eax)
   3103e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31041:	c7 40 08 0d 00 00 00 	movl   $0xd,0x8(%eax)
   31048:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3104b:	c7 40 04 0d 00 00 00 	movl   $0xd,0x4(%eax)
   31052:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31055:	c7 40 44 0d 00 00 00 	movl   $0xd,0x44(%eax)
   3105c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3105f:	c7 00 19 00 00 00    	movl   $0x19,(%eax)
   31065:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31068:	8b 00                	mov    (%eax),%eax
   3106a:	89 c2                	mov    %eax,%edx
   3106c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3106f:	89 50 34             	mov    %edx,0x34(%eax)
   31072:	8b 55 ec             	mov    -0x14(%ebp),%edx
   31075:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31078:	89 50 40             	mov    %edx,0x40(%eax)
   3107b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3107e:	c7 40 3c 02 12 00 00 	movl   $0x1202,0x3c(%eax)
   31085:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31088:	8b 40 04             	mov    0x4(%eax),%eax
   3108b:	f7 d8                	neg    %eax
   3108d:	01 45 ec             	add    %eax,-0x14(%ebp)
   31090:	83 45 f4 70          	addl   $0x70,-0xc(%ebp)
   31094:	83 45 f0 18          	addl   $0x18,-0x10(%ebp)
   31098:	66 83 45 ea 08       	addw   $0x8,-0x16(%ebp)
   3109d:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
   310a1:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
   310a5:	0f 8e 08 ff ff ff    	jle    0x30fb3
   310ab:	c7 c0 c0 c5 04 00    	mov    $0x4c5c0,%eax
   310b1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   310b7:	c7 c0 a0 45 03 00    	mov    $0x345a0,%eax
   310bd:	c7 c2 20 c6 04 00    	mov    $0x4c620,%edx
   310c3:	89 10                	mov    %edx,(%eax)
   310c5:	83 ec 08             	sub    $0x8,%esp
   310c8:	c7 c0 13 0f 03 00    	mov    $0x30f13,%eax
   310ce:	50                   	push   %eax
   310cf:	6a 00                	push   $0x0
   310d1:	e8 6f f7 ff ff       	call   0x30845
   310d6:	83 c4 10             	add    $0x10,%esp
   310d9:	83 ec 0c             	sub    $0xc,%esp
   310dc:	6a 00                	push   $0x0
   310de:	e8 7f 04 00 00       	call   0x31562
   310e3:	83 c4 10             	add    $0x10,%esp
   310e6:	e8 03 f6 ff ff       	call   0x306ee
   310eb:	eb fe                	jmp    0x310eb
   310ed:	55                   	push   %ebp
   310ee:	89 e5                	mov    %esp,%ebp
   310f0:	53                   	push   %ebx
   310f1:	83 ec 14             	sub    $0x14,%esp
   310f4:	e8 81 f7 ff ff       	call   0x3087a
   310f9:	81 c3 07 1f 00 00    	add    $0x1f07,%ebx
   310ff:	c7 c0 8c 3d 03 00    	mov    $0x33d8c,%eax
   31105:	8d 40 02             	lea    0x2(%eax),%eax
   31108:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3110b:	c7 c0 8c 3d 03 00    	mov    $0x33d8c,%eax
   31111:	89 45 f0             	mov    %eax,-0x10(%ebp)
   31114:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31117:	0f b7 00             	movzwl (%eax),%eax
   3111a:	0f b7 c0             	movzwl %ax,%eax
   3111d:	8d 50 01             	lea    0x1(%eax),%edx
   31120:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31123:	8b 00                	mov    (%eax),%eax
   31125:	83 ec 04             	sub    $0x4,%esp
   31128:	52                   	push   %edx
   31129:	50                   	push   %eax
   3112a:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   31130:	50                   	push   %eax
   31131:	e8 f2 02 00 00       	call   0x31428
   31136:	83 c4 10             	add    $0x10,%esp
   31139:	c7 c0 20 39 03 00    	mov    $0x33920,%eax
   3113f:	89 c2                	mov    %eax,%edx
   31141:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31144:	89 10                	mov    %edx,(%eax)
   31146:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31149:	66 c7 00 ff 03       	movw   $0x3ff,(%eax)
   3114e:	90                   	nop
   3114f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31152:	c9                   	leave  
   31153:	c3                   	ret    
   31154:	55                   	push   %ebp
   31155:	89 e5                	mov    %esp,%ebp
   31157:	53                   	push   %ebx
   31158:	83 ec 04             	sub    $0x4,%esp
   3115b:	e8 af fd ff ff       	call   0x30f0f
   31160:	05 a0 1e 00 00       	add    $0x1ea0,%eax
   31165:	83 ec 0c             	sub    $0xc,%esp
   31168:	8d 90 c8 e7 ff ff    	lea    -0x1838(%eax),%edx
   3116e:	52                   	push   %edx
   3116f:	89 c3                	mov    %eax,%ebx
   31171:	e8 56 03 00 00       	call   0x314cc
   31176:	83 c4 10             	add    $0x10,%esp
   31179:	90                   	nop
   3117a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3117d:	c9                   	leave  
   3117e:	c3                   	ret    
   3117f:	55                   	push   %ebp
   31180:	89 e5                	mov    %esp,%ebp
   31182:	83 ec 10             	sub    $0x10,%esp
   31185:	e8 85 fd ff ff       	call   0x30f0f
   3118a:	05 76 1e 00 00       	add    $0x1e76,%eax
   3118f:	c7 c2 00 39 03 00    	mov    $0x33900,%edx
   31195:	8d 52 02             	lea    0x2(%edx),%edx
   31198:	89 55 fc             	mov    %edx,-0x4(%ebp)
   3119b:	c7 c2 00 39 03 00    	mov    $0x33900,%edx
   311a1:	89 55 f8             	mov    %edx,-0x8(%ebp)
   311a4:	8b 55 f8             	mov    -0x8(%ebp),%edx
   311a7:	66 c7 02 ff 07       	movw   $0x7ff,(%edx)
   311ac:	c7 c0 a0 3d 03 00    	mov    $0x33da0,%eax
   311b2:	89 c2                	mov    %eax,%edx
   311b4:	8b 45 fc             	mov    -0x4(%ebp),%eax
   311b7:	89 10                	mov    %edx,(%eax)
   311b9:	90                   	nop
   311ba:	c9                   	leave  
   311bb:	c3                   	ret    
   311bc:	55                   	push   %ebp
   311bd:	89 e5                	mov    %esp,%ebp
   311bf:	53                   	push   %ebx
   311c0:	83 ec 04             	sub    $0x4,%esp
   311c3:	e8 b2 f6 ff ff       	call   0x3087a
   311c8:	81 c3 38 1e 00 00    	add    $0x1e38,%ebx
   311ce:	e8 1a ff ff ff       	call   0x310ed
   311d3:	e8 a7 ff ff ff       	call   0x3117f
   311d8:	e8 9b f8 ff ff       	call   0x30a78
   311dd:	90                   	nop
   311de:	83 c4 04             	add    $0x4,%esp
   311e1:	5b                   	pop    %ebx
   311e2:	5d                   	pop    %ebp
   311e3:	c3                   	ret    
   311e4:	55                   	push   %ebp
   311e5:	89 e5                	mov    %esp,%ebp
   311e7:	53                   	push   %ebx
   311e8:	83 ec 04             	sub    $0x4,%esp
   311eb:	e8 1f fd ff ff       	call   0x30f0f
   311f0:	05 10 1e 00 00       	add    $0x1e10,%eax
   311f5:	83 ec 0c             	sub    $0xc,%esp
   311f8:	8d 90 ef e7 ff ff    	lea    -0x1811(%eax),%edx
   311fe:	52                   	push   %edx
   311ff:	89 c3                	mov    %eax,%ebx
   31201:	e8 c6 02 00 00       	call   0x314cc
   31206:	83 c4 10             	add    $0x10,%esp
   31209:	b8 00 00 00 00       	mov    $0x0,%eax
   3120e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31211:	c9                   	leave  
   31212:	c3                   	ret    
   31213:	55                   	push   %ebp
   31214:	89 e5                	mov    %esp,%ebp
   31216:	53                   	push   %ebx
   31217:	83 ec 14             	sub    $0x14,%esp
   3121a:	e8 5b f6 ff ff       	call   0x3087a
   3121f:	81 c3 e1 1d 00 00    	add    $0x1de1,%ebx
   31225:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3122c:	83 ec 0c             	sub    $0xc,%esp
   3122f:	8d 83 f1 e7 ff ff    	lea    -0x180f(%ebx),%eax
   31235:	50                   	push   %eax
   31236:	e8 91 02 00 00       	call   0x314cc
   3123b:	83 c4 10             	add    $0x10,%esp
   3123e:	e8 bd f1 ff ff       	call   0x30400
   31243:	83 ec 0c             	sub    $0xc,%esp
   31246:	6a 0a                	push   $0xa
   31248:	e8 79 00 00 00       	call   0x312c6
   3124d:	83 c4 10             	add    $0x10,%esp
   31250:	eb da                	jmp    0x3122c
   31252:	55                   	push   %ebp
   31253:	89 e5                	mov    %esp,%ebp
   31255:	53                   	push   %ebx
   31256:	83 ec 14             	sub    $0x14,%esp
   31259:	e8 1c f6 ff ff       	call   0x3087a
   3125e:	81 c3 a2 1d 00 00    	add    $0x1da2,%ebx
   31264:	c7 45 f4 10 00 00 00 	movl   $0x10,-0xc(%ebp)
   3126b:	83 ec 0c             	sub    $0xc,%esp
   3126e:	8d 83 f3 e7 ff ff    	lea    -0x180d(%ebx),%eax
   31274:	50                   	push   %eax
   31275:	e8 52 02 00 00       	call   0x314cc
   3127a:	83 c4 10             	add    $0x10,%esp
   3127d:	83 ec 0c             	sub    $0xc,%esp
   31280:	6a 0a                	push   $0xa
   31282:	e8 3f 00 00 00       	call   0x312c6
   31287:	83 c4 10             	add    $0x10,%esp
   3128a:	eb df                	jmp    0x3126b
   3128c:	55                   	push   %ebp
   3128d:	89 e5                	mov    %esp,%ebp
   3128f:	53                   	push   %ebx
   31290:	83 ec 14             	sub    $0x14,%esp
   31293:	e8 e2 f5 ff ff       	call   0x3087a
   31298:	81 c3 68 1d 00 00    	add    $0x1d68,%ebx
   3129e:	c7 45 f4 10 00 00 00 	movl   $0x10,-0xc(%ebp)
   312a5:	83 ec 0c             	sub    $0xc,%esp
   312a8:	8d 83 f5 e7 ff ff    	lea    -0x180b(%ebx),%eax
   312ae:	50                   	push   %eax
   312af:	e8 18 02 00 00       	call   0x314cc
   312b4:	83 c4 10             	add    $0x10,%esp
   312b7:	83 ec 0c             	sub    $0xc,%esp
   312ba:	6a 0a                	push   $0xa
   312bc:	e8 05 00 00 00       	call   0x312c6
   312c1:	83 c4 10             	add    $0x10,%esp
   312c4:	eb df                	jmp    0x312a5
   312c6:	55                   	push   %ebp
   312c7:	89 e5                	mov    %esp,%ebp
   312c9:	83 ec 10             	sub    $0x10,%esp
   312cc:	e8 3e fc ff ff       	call   0x30f0f
   312d1:	05 2f 1d 00 00       	add    $0x1d2f,%eax
   312d6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   312dd:	eb 2d                	jmp    0x3130c
   312df:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   312e6:	eb 1a                	jmp    0x31302
   312e8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   312ef:	eb 04                	jmp    0x312f5
   312f1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   312f5:	81 7d f4 0f 27 00 00 	cmpl   $0x270f,-0xc(%ebp)
   312fc:	7e f3                	jle    0x312f1
   312fe:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   31302:	83 7d f8 09          	cmpl   $0x9,-0x8(%ebp)
   31306:	7e e0                	jle    0x312e8
   31308:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   3130c:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3130f:	3b 45 08             	cmp    0x8(%ebp),%eax
   31312:	7c cb                	jl     0x312df
   31314:	90                   	nop
   31315:	c9                   	leave  
   31316:	c3                   	ret    
   31317:	55                   	push   %ebp
   31318:	89 e5                	mov    %esp,%ebp
   3131a:	83 ec 10             	sub    $0x10,%esp
   3131d:	e8 ed fb ff ff       	call   0x30f0f
   31322:	05 de 1c 00 00       	add    $0x1cde,%eax
   31327:	8b 45 08             	mov    0x8(%ebp),%eax
   3132a:	89 45 fc             	mov    %eax,-0x4(%ebp)
   3132d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   31334:	8b 45 fc             	mov    -0x4(%ebp),%eax
   31337:	8d 50 01             	lea    0x1(%eax),%edx
   3133a:	89 55 fc             	mov    %edx,-0x4(%ebp)
   3133d:	c6 00 30             	movb   $0x30,(%eax)
   31340:	8b 45 fc             	mov    -0x4(%ebp),%eax
   31343:	8d 50 01             	lea    0x1(%eax),%edx
   31346:	89 55 fc             	mov    %edx,-0x4(%ebp)
   31349:	c6 00 78             	movb   $0x78,(%eax)
   3134c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   31350:	75 0e                	jne    0x31360
   31352:	8b 45 fc             	mov    -0x4(%ebp),%eax
   31355:	8d 50 01             	lea    0x1(%eax),%edx
   31358:	89 55 fc             	mov    %edx,-0x4(%ebp)
   3135b:	c6 00 30             	movb   $0x30,(%eax)
   3135e:	eb 61                	jmp    0x313c1
   31360:	c7 45 f4 1c 00 00 00 	movl   $0x1c,-0xc(%ebp)
   31367:	eb 52                	jmp    0x313bb
   31369:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3136c:	8b 55 0c             	mov    0xc(%ebp),%edx
   3136f:	89 c1                	mov    %eax,%ecx
   31371:	d3 fa                	sar    %cl,%edx
   31373:	89 d0                	mov    %edx,%eax
   31375:	83 e0 0f             	and    $0xf,%eax
   31378:	88 45 fb             	mov    %al,-0x5(%ebp)
   3137b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   3137f:	75 06                	jne    0x31387
   31381:	80 7d fb 00          	cmpb   $0x0,-0x5(%ebp)
   31385:	7e 30                	jle    0x313b7
   31387:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
   3138e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
   31392:	83 c0 30             	add    $0x30,%eax
   31395:	88 45 fb             	mov    %al,-0x5(%ebp)
   31398:	80 7d fb 39          	cmpb   $0x39,-0x5(%ebp)
   3139c:	7e 0a                	jle    0x313a8
   3139e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
   313a2:	83 c0 07             	add    $0x7,%eax
   313a5:	88 45 fb             	mov    %al,-0x5(%ebp)
   313a8:	8b 45 fc             	mov    -0x4(%ebp),%eax
   313ab:	8d 50 01             	lea    0x1(%eax),%edx
   313ae:	89 55 fc             	mov    %edx,-0x4(%ebp)
   313b1:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
   313b5:	88 10                	mov    %dl,(%eax)
   313b7:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
   313bb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   313bf:	79 a8                	jns    0x31369
   313c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
   313c4:	c6 00 00             	movb   $0x0,(%eax)
   313c7:	8b 45 08             	mov    0x8(%ebp),%eax
   313ca:	c9                   	leave  
   313cb:	c3                   	ret    
   313cc:	55                   	push   %ebp
   313cd:	89 e5                	mov    %esp,%ebp
   313cf:	53                   	push   %ebx
   313d0:	83 ec 24             	sub    $0x24,%esp
   313d3:	e8 a2 f4 ff ff       	call   0x3087a
   313d8:	81 c3 28 1c 00 00    	add    $0x1c28,%ebx
   313de:	ff 75 08             	pushl  0x8(%ebp)
   313e1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   313e4:	50                   	push   %eax
   313e5:	e8 2d ff ff ff       	call   0x31317
   313ea:	83 c4 08             	add    $0x8,%esp
   313ed:	83 ec 0c             	sub    $0xc,%esp
   313f0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   313f3:	50                   	push   %eax
   313f4:	e8 d3 00 00 00       	call   0x314cc
   313f9:	83 c4 10             	add    $0x10,%esp
   313fc:	90                   	nop
   313fd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31400:	c9                   	leave  
   31401:	c3                   	ret    
   31402:	66 90                	xchg   %ax,%ax
   31404:	66 90                	xchg   %ax,%ax
   31406:	66 90                	xchg   %ax,%ax
   31408:	66 90                	xchg   %ax,%ax
   3140a:	66 90                	xchg   %ax,%ax
   3140c:	66 90                	xchg   %ax,%ax
   3140e:	66 90                	xchg   %ax,%ax
   31410:	55                   	push   %ebp
   31411:	89 e5                	mov    %esp,%ebp
   31413:	8b 75 0c             	mov    0xc(%ebp),%esi
   31416:	8b 7d 08             	mov    0x8(%ebp),%edi
   31419:	8a 06                	mov    (%esi),%al
   3141b:	46                   	inc    %esi
   3141c:	88 07                	mov    %al,(%edi)
   3141e:	47                   	inc    %edi
   3141f:	3c 00                	cmp    $0x0,%al
   31421:	75 f6                	jne    0x31419
   31423:	8b 45 08             	mov    0x8(%ebp),%eax
   31426:	5d                   	pop    %ebp
   31427:	c3                   	ret    
   31428:	55                   	push   %ebp
   31429:	89 e5                	mov    %esp,%ebp
   3142b:	56                   	push   %esi
   3142c:	57                   	push   %edi
   3142d:	51                   	push   %ecx
   3142e:	8b 7d 08             	mov    0x8(%ebp),%edi
   31431:	8b 75 0c             	mov    0xc(%ebp),%esi
   31434:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31437:	83 f9 00             	cmp    $0x0,%ecx
   3143a:	74 0b                	je     0x31447
   3143c:	3e 8a 06             	mov    %ds:(%esi),%al
   3143f:	46                   	inc    %esi
   31440:	26 88 07             	mov    %al,%es:(%edi)
   31443:	47                   	inc    %edi
   31444:	49                   	dec    %ecx
   31445:	eb f0                	jmp    0x31437
   31447:	8b 45 08             	mov    0x8(%ebp),%eax
   3144a:	59                   	pop    %ecx
   3144b:	5f                   	pop    %edi
   3144c:	5e                   	pop    %esi
   3144d:	89 ec                	mov    %ebp,%esp
   3144f:	5d                   	pop    %ebp
   31450:	c3                   	ret    
   31451:	55                   	push   %ebp
   31452:	89 e5                	mov    %esp,%ebp
   31454:	56                   	push   %esi
   31455:	57                   	push   %edi
   31456:	51                   	push   %ecx
   31457:	8b 7d 08             	mov    0x8(%ebp),%edi
   3145a:	8b 55 0c             	mov    0xc(%ebp),%edx
   3145d:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31460:	83 f9 00             	cmp    $0x0,%ecx
   31463:	74 06                	je     0x3146b
   31465:	88 17                	mov    %dl,(%edi)
   31467:	47                   	inc    %edi
   31468:	49                   	dec    %ecx
   31469:	eb f5                	jmp    0x31460
   3146b:	59                   	pop    %ecx
   3146c:	5f                   	pop    %edi
   3146d:	5e                   	pop    %esi
   3146e:	89 ec                	mov    %ebp,%esp
   31470:	5d                   	pop    %ebp
   31471:	c3                   	ret    
   31472:	66 90                	xchg   %ax,%ax
   31474:	66 90                	xchg   %ax,%ax
   31476:	66 90                	xchg   %ax,%ax
   31478:	66 90                	xchg   %ax,%ax
   3147a:	66 90                	xchg   %ax,%ax
   3147c:	66 90                	xchg   %ax,%ax
   3147e:	66 90                	xchg   %ax,%ax
   31480:	55                   	push   %ebp
   31481:	89 e5                	mov    %esp,%ebp
   31483:	56                   	push   %esi
   31484:	57                   	push   %edi
   31485:	52                   	push   %edx
   31486:	53                   	push   %ebx
   31487:	8b 75 08             	mov    0x8(%ebp),%esi
   3148a:	8b 3d 88 3d 03 00    	mov    0x33d88,%edi
   31490:	8a 65 0c             	mov    0xc(%ebp),%ah
   31493:	ac                   	lods   %ds:(%esi),%al
   31494:	84 c0                	test   %al,%al
   31496:	74 28                	je     0x314c0
   31498:	3c 0a                	cmp    $0xa,%al
   3149a:	75 1b                	jne    0x314b7
   3149c:	50                   	push   %eax
   3149d:	89 f8                	mov    %edi,%eax
   3149f:	66 99                	cwtd   
   314a1:	66 bb a0 00          	mov    $0xa0,%bx
   314a5:	66 f7 f3             	div    %bx
   314a8:	25 ff 00 00 00       	and    $0xff,%eax
   314ad:	40                   	inc    %eax
   314ae:	b3 a0                	mov    $0xa0,%bl
   314b0:	f6 e3                	mul    %bl
   314b2:	89 c7                	mov    %eax,%edi
   314b4:	58                   	pop    %eax
   314b5:	eb dc                	jmp    0x31493
   314b7:	65 66 89 07          	mov    %ax,%gs:(%edi)
   314bb:	83 c7 02             	add    $0x2,%edi
   314be:	eb d3                	jmp    0x31493
   314c0:	89 3d 88 3d 03 00    	mov    %edi,0x33d88
   314c6:	5b                   	pop    %ebx
   314c7:	5a                   	pop    %edx
   314c8:	5f                   	pop    %edi
   314c9:	5e                   	pop    %esi
   314ca:	5d                   	pop    %ebp
   314cb:	c3                   	ret    
   314cc:	55                   	push   %ebp
   314cd:	89 e5                	mov    %esp,%ebp
   314cf:	8b 75 08             	mov    0x8(%ebp),%esi
   314d2:	8b 3d 88 3d 03 00    	mov    0x33d88,%edi
   314d8:	b4 0f                	mov    $0xf,%ah
   314da:	ac                   	lods   %ds:(%esi),%al
   314db:	84 c0                	test   %al,%al
   314dd:	74 28                	je     0x31507
   314df:	3c 0a                	cmp    $0xa,%al
   314e1:	75 1b                	jne    0x314fe
   314e3:	50                   	push   %eax
   314e4:	89 f8                	mov    %edi,%eax
   314e6:	66 99                	cwtd   
   314e8:	66 bb a0 00          	mov    $0xa0,%bx
   314ec:	66 f7 f3             	div    %bx
   314ef:	25 ff 00 00 00       	and    $0xff,%eax
   314f4:	40                   	inc    %eax
   314f5:	b3 a0                	mov    $0xa0,%bl
   314f7:	f6 e3                	mul    %bl
   314f9:	89 c7                	mov    %eax,%edi
   314fb:	58                   	pop    %eax
   314fc:	eb dc                	jmp    0x314da
   314fe:	65 66 89 07          	mov    %ax,%gs:(%edi)
   31502:	83 c7 02             	add    $0x2,%edi
   31505:	eb d3                	jmp    0x314da
   31507:	89 3d 88 3d 03 00    	mov    %edi,0x33d88
   3150d:	5d                   	pop    %ebp
   3150e:	c3                   	ret    
   3150f:	55                   	push   %ebp
   31510:	89 e5                	mov    %esp,%ebp
   31512:	8b 55 08             	mov    0x8(%ebp),%edx
   31515:	8a 45 0c             	mov    0xc(%ebp),%al
   31518:	ee                   	out    %al,(%dx)
   31519:	90                   	nop
   3151a:	90                   	nop
   3151b:	89 ec                	mov    %ebp,%esp
   3151d:	5d                   	pop    %ebp
   3151e:	c3                   	ret    
   3151f:	55                   	push   %ebp
   31520:	89 e5                	mov    %esp,%ebp
   31522:	52                   	push   %edx
   31523:	8b 55 08             	mov    0x8(%ebp),%edx
   31526:	ec                   	in     (%dx),%al
   31527:	5a                   	pop    %edx
   31528:	90                   	nop
   31529:	89 ec                	mov    %ebp,%esp
   3152b:	5d                   	pop    %ebp
   3152c:	c3                   	ret    
   3152d:	8b 4c 24 04          	mov    0x4(%esp),%ecx
   31531:	9c                   	pushf  
   31532:	fa                   	cli    
   31533:	b4 01                	mov    $0x1,%ah
   31535:	d2 c4                	rol    %cl,%ah
   31537:	80 f9 08             	cmp    $0x8,%cl
   3153a:	73 11                	jae    0x3154d
   3153c:	e4 21                	in     $0x21,%al
   3153e:	84 e0                	test   %ah,%al
   31540:	75 1c                	jne    0x3155e
   31542:	08 e0                	or     %ah,%al
   31544:	e6 21                	out    %al,$0x21
   31546:	9d                   	popf   
   31547:	b8 01 00 00 00       	mov    $0x1,%eax
   3154c:	c3                   	ret    
   3154d:	e4 a1                	in     $0xa1,%al
   3154f:	84 e0                	test   %ah,%al
   31551:	75 0b                	jne    0x3155e
   31553:	08 e0                	or     %ah,%al
   31555:	e6 a1                	out    %al,$0xa1
   31557:	9d                   	popf   
   31558:	b8 01 00 00 00       	mov    $0x1,%eax
   3155d:	c3                   	ret    
   3155e:	9d                   	popf   
   3155f:	31 c0                	xor    %eax,%eax
   31561:	c3                   	ret    
   31562:	8b 4c 24 04          	mov    0x4(%esp),%ecx
   31566:	9c                   	pushf  
   31567:	fa                   	cli    
   31568:	b4 fe                	mov    $0xfe,%ah
   3156a:	d2 c4                	rol    %cl,%ah
   3156c:	80 f9 08             	cmp    $0x8,%cl
   3156f:	73 08                	jae    0x31579
   31571:	e4 21                	in     $0x21,%al
   31573:	20 e0                	and    %ah,%al
   31575:	e6 21                	out    %al,$0x21
   31577:	9d                   	popf   
   31578:	c3                   	ret    
   31579:	e4 a1                	in     $0xa1,%al
   3157b:	20 e0                	and    %ah,%al
   3157d:	e6 a1                	out    %al,$0xa1
   3157f:	9d                   	popf   
   31580:	c3                   	ret    
