
prog.exe:     file format pei-i386


Disassembly of section .text:

00401000 <.text>:
  401000:	83 ec 1c             	sub    $0x1c,%esp
  401003:	8b 44 24 20          	mov    0x20(%esp),%eax
  401007:	8b 00                	mov    (%eax),%eax
  401009:	8b 00                	mov    (%eax),%eax
  40100b:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401010:	77 4e                	ja     401060 <.text+0x60>
  401012:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401017:	73 60                	jae    401079 <.text+0x79>
  401019:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  40101e:	0f 85 cc 00 00 00    	jne    4010f0 <.text+0xf0>
  401024:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  40102b:	00 
  40102c:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  401033:	e8 60 2a 00 00       	call   403a98 <_signal>
  401038:	83 f8 01             	cmp    $0x1,%eax
  40103b:	0f 84 48 01 00 00    	je     401189 <.text+0x189>
  401041:	85 c0                	test   %eax,%eax
  401043:	0f 85 e7 00 00 00    	jne    401130 <.text+0x130>
  401049:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401050:	31 c0                	xor    %eax,%eax
  401052:	83 c4 1c             	add    $0x1c,%esp
  401055:	c2 04 00             	ret    $0x4
  401058:	90                   	nop
  401059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401060:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401065:	74 49                	je     4010b0 <.text+0xb0>
  401067:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40106c:	0f 84 89 00 00 00    	je     4010fb <.text+0xfb>
  401072:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401077:	75 d7                	jne    401050 <.text+0x50>
  401079:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  401080:	00 
  401081:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  401088:	e8 0b 2a 00 00       	call   403a98 <_signal>
  40108d:	83 f8 01             	cmp    $0x1,%eax
  401090:	0f 84 ad 00 00 00    	je     401143 <.text+0x143>
  401096:	85 c0                	test   %eax,%eax
  401098:	74 b6                	je     401050 <.text+0x50>
  40109a:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  4010a1:	ff d0                	call   *%eax
  4010a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4010a8:	eb a8                	jmp    401052 <.text+0x52>
  4010aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4010b0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  4010b7:	00 
  4010b8:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  4010bf:	e8 d4 29 00 00       	call   403a98 <_signal>
  4010c4:	83 f8 01             	cmp    $0x1,%eax
  4010c7:	75 cd                	jne    401096 <.text+0x96>
  4010c9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  4010d0:	00 
  4010d1:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  4010d8:	e8 bb 29 00 00       	call   403a98 <_signal>
  4010dd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4010e2:	e9 6b ff ff ff       	jmp    401052 <.text+0x52>
  4010e7:	89 f6                	mov    %esi,%esi
  4010e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  4010f0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4010f5:	0f 85 55 ff ff ff    	jne    401050 <.text+0x50>
  4010fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  401102:	00 
  401103:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  40110a:	e8 89 29 00 00       	call   403a98 <_signal>
  40110f:	83 f8 01             	cmp    $0x1,%eax
  401112:	74 59                	je     40116d <.text+0x16d>
  401114:	85 c0                	test   %eax,%eax
  401116:	0f 84 34 ff ff ff    	je     401050 <.text+0x50>
  40111c:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  401123:	ff d0                	call   *%eax
  401125:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40112a:	e9 23 ff ff ff       	jmp    401052 <.text+0x52>
  40112f:	90                   	nop
  401130:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  401137:	ff d0                	call   *%eax
  401139:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40113e:	e9 0f ff ff ff       	jmp    401052 <.text+0x52>
  401143:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  40114a:	00 
  40114b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  401152:	e8 41 29 00 00       	call   403a98 <_signal>
  401157:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  40115e:	e8 2d 0f 00 00       	call   402090 <_fesetenv>
  401163:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401168:	e9 e5 fe ff ff       	jmp    401052 <.text+0x52>
  40116d:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  401174:	00 
  401175:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  40117c:	e8 17 29 00 00       	call   403a98 <_signal>
  401181:	83 c8 ff             	or     $0xffffffff,%eax
  401184:	e9 c9 fe ff ff       	jmp    401052 <.text+0x52>
  401189:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  401190:	00 
  401191:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  401198:	e8 fb 28 00 00       	call   403a98 <_signal>
  40119d:	83 c8 ff             	or     $0xffffffff,%eax
  4011a0:	e9 ad fe ff ff       	jmp    401052 <.text+0x52>
  4011a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4011a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  4011b0:	55                   	push   %ebp
  4011b1:	89 e5                	mov    %esp,%ebp
  4011b3:	53                   	push   %ebx
  4011b4:	83 ec 14             	sub    $0x14,%esp
  4011b7:	a1 74 50 40 00       	mov    0x405074,%eax
  4011bc:	85 c0                	test   %eax,%eax
  4011be:	74 1c                	je     4011dc <.text+0x1dc>
  4011c0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  4011c7:	00 
  4011c8:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  4011cf:	00 
  4011d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  4011d7:	ff d0                	call   *%eax
  4011d9:	83 ec 0c             	sub    $0xc,%esp
  4011dc:	c7 04 24 00 10 40 00 	movl   $0x401000,(%esp)
  4011e3:	e8 60 29 00 00       	call   403b48 <_SetUnhandledExceptionFilter@4>
  4011e8:	83 ec 04             	sub    $0x4,%esp
  4011eb:	e8 90 06 00 00       	call   401880 <___cpu_features_init>
  4011f0:	a1 08 40 40 00       	mov    0x404008,%eax
  4011f5:	89 04 24             	mov    %eax,(%esp)
  4011f8:	e8 93 0e 00 00       	call   402090 <_fesetenv>
  4011fd:	e8 de 02 00 00       	call   4014e0 <__setargv>
  401202:	a1 20 70 40 00       	mov    0x407020,%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	74 42                	je     40124d <.text+0x24d>
  40120b:	8b 1d a4 81 40 00    	mov    0x4081a4,%ebx
  401211:	a3 0c 40 40 00       	mov    %eax,0x40400c
  401216:	89 44 24 04          	mov    %eax,0x4(%esp)
  40121a:	8b 43 10             	mov    0x10(%ebx),%eax
  40121d:	89 04 24             	mov    %eax,(%esp)
  401220:	e8 cb 28 00 00       	call   403af0 <__setmode>
  401225:	a1 20 70 40 00       	mov    0x407020,%eax
  40122a:	89 44 24 04          	mov    %eax,0x4(%esp)
  40122e:	8b 43 30             	mov    0x30(%ebx),%eax
  401231:	89 04 24             	mov    %eax,(%esp)
  401234:	e8 b7 28 00 00       	call   403af0 <__setmode>
  401239:	a1 20 70 40 00       	mov    0x407020,%eax
  40123e:	89 44 24 04          	mov    %eax,0x4(%esp)
  401242:	8b 43 50             	mov    0x50(%ebx),%eax
  401245:	89 04 24             	mov    %eax,(%esp)
  401248:	e8 a3 28 00 00       	call   403af0 <__setmode>
  40124d:	e8 c6 28 00 00       	call   403b18 <___p__fmode>
  401252:	8b 15 0c 40 40 00    	mov    0x40400c,%edx
  401258:	89 10                	mov    %edx,(%eax)
  40125a:	e8 31 0c 00 00       	call   401e90 <__pei386_runtime_relocator>
  40125f:	83 e4 f0             	and    $0xfffffff0,%esp
  401262:	e8 a9 07 00 00       	call   401a10 <___main>
  401267:	e8 b4 28 00 00       	call   403b20 <___p__environ>
  40126c:	8b 00                	mov    (%eax),%eax
  40126e:	89 44 24 08          	mov    %eax,0x8(%esp)
  401272:	a1 00 70 40 00       	mov    0x407000,%eax
  401277:	89 44 24 04          	mov    %eax,0x4(%esp)
  40127b:	a1 04 70 40 00       	mov    0x407004,%eax
  401280:	89 04 24             	mov    %eax,(%esp)
  401283:	e8 d8 01 00 00       	call   401460 <_main>
  401288:	89 c3                	mov    %eax,%ebx
  40128a:	e8 81 28 00 00       	call   403b10 <__cexit>
  40128f:	89 1c 24             	mov    %ebx,(%esp)
  401292:	e8 11 29 00 00       	call   403ba8 <_ExitProcess@4>
  401297:	89 f6                	mov    %esi,%esi
  401299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

004012a0 <__mingw32_init_mainargs>:
  4012a0:	83 ec 3c             	sub    $0x3c,%esp
  4012a3:	8d 44 24 2c          	lea    0x2c(%esp),%eax
  4012a7:	c7 44 24 04 00 70 40 	movl   $0x407000,0x4(%esp)
  4012ae:	00 
  4012af:	c7 04 24 04 70 40 00 	movl   $0x407004,(%esp)
  4012b6:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
  4012bd:	00 
  4012be:	89 44 24 10          	mov    %eax,0x10(%esp)
  4012c2:	a1 04 40 40 00       	mov    0x404004,%eax
  4012c7:	83 e0 01             	and    $0x1,%eax
  4012ca:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4012ce:	8d 44 24 28          	lea    0x28(%esp),%eax
  4012d2:	89 44 24 08          	mov    %eax,0x8(%esp)
  4012d6:	e8 4d 28 00 00       	call   403b28 <___getmainargs>
  4012db:	83 c4 3c             	add    $0x3c,%esp
  4012de:	c3                   	ret    
  4012df:	90                   	nop

004012e0 <_mainCRTStartup>:
  4012e0:	83 ec 1c             	sub    $0x1c,%esp
  4012e3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  4012ea:	ff 15 90 81 40 00    	call   *0x408190
  4012f0:	e8 bb fe ff ff       	call   4011b0 <.text+0x1b0>
  4012f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4012f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401300 <_WinMainCRTStartup>:
  401300:	83 ec 1c             	sub    $0x1c,%esp
  401303:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  40130a:	ff 15 90 81 40 00    	call   *0x408190
  401310:	e8 9b fe ff ff       	call   4011b0 <.text+0x1b0>
  401315:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401320 <_atexit>:
  401320:	ff 25 bc 81 40 00    	jmp    *0x4081bc
  401326:	8d 76 00             	lea    0x0(%esi),%esi
  401329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401330 <__onexit>:
  401330:	ff 25 ac 81 40 00    	jmp    *0x4081ac
  401336:	90                   	nop
  401337:	90                   	nop
  401338:	90                   	nop
  401339:	90                   	nop
  40133a:	90                   	nop
  40133b:	90                   	nop
  40133c:	90                   	nop
  40133d:	90                   	nop
  40133e:	90                   	nop
  40133f:	90                   	nop

00401340 <___gcc_register_frame>:
  401340:	55                   	push   %ebp
  401341:	89 e5                	mov    %esp,%ebp
  401343:	56                   	push   %esi
  401344:	53                   	push   %ebx
  401345:	83 ec 10             	sub    $0x10,%esp
  401348:	c7 04 24 00 50 40 00 	movl   $0x405000,(%esp)
  40134f:	e8 1c 28 00 00       	call   403b70 <_GetModuleHandleA@4>
  401354:	83 ec 04             	sub    $0x4,%esp
  401357:	85 c0                	test   %eax,%eax
  401359:	0f 84 b1 00 00 00    	je     401410 <___gcc_register_frame+0xd0>
  40135f:	c7 04 24 00 50 40 00 	movl   $0x405000,(%esp)
  401366:	89 c3                	mov    %eax,%ebx
  401368:	e8 e3 27 00 00       	call   403b50 <_LoadLibraryA@4>
  40136d:	83 ec 04             	sub    $0x4,%esp
  401370:	a3 6c 70 40 00       	mov    %eax,0x40706c
  401375:	c7 44 24 04 13 50 40 	movl   $0x405013,0x4(%esp)
  40137c:	00 
  40137d:	89 1c 24             	mov    %ebx,(%esp)
  401380:	e8 e3 27 00 00       	call   403b68 <_GetProcAddress@8>
  401385:	83 ec 08             	sub    $0x8,%esp
  401388:	89 c6                	mov    %eax,%esi
  40138a:	c7 44 24 04 29 50 40 	movl   $0x405029,0x4(%esp)
  401391:	00 
  401392:	89 1c 24             	mov    %ebx,(%esp)
  401395:	e8 ce 27 00 00       	call   403b68 <_GetProcAddress@8>
  40139a:	83 ec 08             	sub    $0x8,%esp
  40139d:	a3 00 40 40 00       	mov    %eax,0x404000
  4013a2:	85 f6                	test   %esi,%esi
  4013a4:	74 11                	je     4013b7 <___gcc_register_frame+0x77>
  4013a6:	c7 44 24 04 08 70 40 	movl   $0x407008,0x4(%esp)
  4013ad:	00 
  4013ae:	c7 04 24 b8 60 40 00 	movl   $0x4060b8,(%esp)
  4013b5:	ff d6                	call   *%esi
  4013b7:	a1 18 40 40 00       	mov    0x404018,%eax
  4013bc:	85 c0                	test   %eax,%eax
  4013be:	74 3a                	je     4013fa <___gcc_register_frame+0xba>
  4013c0:	c7 04 24 41 50 40 00 	movl   $0x405041,(%esp)
  4013c7:	e8 a4 27 00 00       	call   403b70 <_GetModuleHandleA@4>
  4013cc:	83 ec 04             	sub    $0x4,%esp
  4013cf:	85 c0                	test   %eax,%eax
  4013d1:	ba 00 00 00 00       	mov    $0x0,%edx
  4013d6:	74 15                	je     4013ed <___gcc_register_frame+0xad>
  4013d8:	c7 44 24 04 4f 50 40 	movl   $0x40504f,0x4(%esp)
  4013df:	00 
  4013e0:	89 04 24             	mov    %eax,(%esp)
  4013e3:	e8 80 27 00 00       	call   403b68 <_GetProcAddress@8>
  4013e8:	83 ec 08             	sub    $0x8,%esp
  4013eb:	89 c2                	mov    %eax,%edx
  4013ed:	85 d2                	test   %edx,%edx
  4013ef:	74 09                	je     4013fa <___gcc_register_frame+0xba>
  4013f1:	c7 04 24 18 40 40 00 	movl   $0x404018,(%esp)
  4013f8:	ff d2                	call   *%edx
  4013fa:	c7 04 24 30 14 40 00 	movl   $0x401430,(%esp)
  401401:	e8 1a ff ff ff       	call   401320 <_atexit>
  401406:	8d 65 f8             	lea    -0x8(%ebp),%esp
  401409:	5b                   	pop    %ebx
  40140a:	5e                   	pop    %esi
  40140b:	5d                   	pop    %ebp
  40140c:	c3                   	ret    
  40140d:	8d 76 00             	lea    0x0(%esi),%esi
  401410:	c7 05 00 40 40 00 00 	movl   $0x0,0x404000
  401417:	00 00 00 
  40141a:	be 00 00 00 00       	mov    $0x0,%esi
  40141f:	eb 81                	jmp    4013a2 <___gcc_register_frame+0x62>
  401421:	eb 0d                	jmp    401430 <___gcc_deregister_frame>
  401423:	90                   	nop
  401424:	90                   	nop
  401425:	90                   	nop
  401426:	90                   	nop
  401427:	90                   	nop
  401428:	90                   	nop
  401429:	90                   	nop
  40142a:	90                   	nop
  40142b:	90                   	nop
  40142c:	90                   	nop
  40142d:	90                   	nop
  40142e:	90                   	nop
  40142f:	90                   	nop

00401430 <___gcc_deregister_frame>:
  401430:	55                   	push   %ebp
  401431:	89 e5                	mov    %esp,%ebp
  401433:	83 ec 18             	sub    $0x18,%esp
  401436:	a1 00 40 40 00       	mov    0x404000,%eax
  40143b:	85 c0                	test   %eax,%eax
  40143d:	74 09                	je     401448 <___gcc_deregister_frame+0x18>
  40143f:	c7 04 24 b8 60 40 00 	movl   $0x4060b8,(%esp)
  401446:	ff d0                	call   *%eax
  401448:	a1 6c 70 40 00       	mov    0x40706c,%eax
  40144d:	85 c0                	test   %eax,%eax
  40144f:	74 0b                	je     40145c <___gcc_deregister_frame+0x2c>
  401451:	89 04 24             	mov    %eax,(%esp)
  401454:	e8 2f 27 00 00       	call   403b88 <_FreeLibrary@4>
  401459:	83 ec 04             	sub    $0x4,%esp
  40145c:	c9                   	leave  
  40145d:	c3                   	ret    
  40145e:	90                   	nop
  40145f:	90                   	nop

00401460 <_main>:
  401460:	55                   	push   %ebp
  401461:	89 e5                	mov    %esp,%ebp
  401463:	83 e4 f0             	and    $0xfffffff0,%esp
  401466:	83 ec 20             	sub    $0x20,%esp
  401469:	e8 a2 05 00 00       	call   401a10 <___main>
  40146e:	8d 44 24 1c          	lea    0x1c(%esp),%eax
  401472:	89 44 24 08          	mov    %eax,0x8(%esp)
  401476:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
  40147d:	00 
  40147e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  401485:	e8 26 00 00 00       	call   4014b0 <_multstore>
  40148a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  40148e:	89 44 24 04          	mov    %eax,0x4(%esp)
  401492:	c7 04 24 64 50 40 00 	movl   $0x405064,(%esp)
  401499:	e8 12 26 00 00       	call   403ab0 <_printf>
  40149e:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a3:	c9                   	leave  
  4014a4:	c3                   	ret    

004014a5 <_mult2>:
  4014a5:	8b 44 24 08          	mov    0x8(%esp),%eax
  4014a9:	0f af 44 24 04       	imul   0x4(%esp),%eax
  4014ae:	c3                   	ret    
  4014af:	90                   	nop

004014b0 <_multstore>:
  4014b0:	83 ec 1c             	sub    $0x1c,%esp
  4014b3:	8b 44 24 24          	mov    0x24(%esp),%eax
  4014b7:	89 44 24 04          	mov    %eax,0x4(%esp)
  4014bb:	8b 44 24 20          	mov    0x20(%esp),%eax
  4014bf:	89 04 24             	mov    %eax,(%esp)
  4014c2:	e8 de ff ff ff       	call   4014a5 <_mult2>
  4014c7:	8b 54 24 28          	mov    0x28(%esp),%edx
  4014cb:	89 02                	mov    %eax,(%edx)
  4014cd:	83 c4 1c             	add    $0x1c,%esp
  4014d0:	c3                   	ret    
  4014d1:	90                   	nop
  4014d2:	90                   	nop
  4014d3:	90                   	nop
  4014d4:	66 90                	xchg   %ax,%ax
  4014d6:	66 90                	xchg   %ax,%ax
  4014d8:	66 90                	xchg   %ax,%ax
  4014da:	66 90                	xchg   %ax,%ax
  4014dc:	66 90                	xchg   %ax,%ax
  4014de:	66 90                	xchg   %ax,%ax

004014e0 <__setargv>:
  4014e0:	55                   	push   %ebp
  4014e1:	89 e5                	mov    %esp,%ebp
  4014e3:	57                   	push   %edi
  4014e4:	56                   	push   %esi
  4014e5:	53                   	push   %ebx
  4014e6:	83 ec 4c             	sub    $0x4c,%esp
  4014e9:	f6 05 04 40 40 00 02 	testb  $0x2,0x404004
  4014f0:	0f 84 ea 02 00 00    	je     4017e0 <__setargv+0x300>
  4014f6:	e8 85 26 00 00       	call   403b80 <_GetCommandLineA@0>
  4014fb:	89 65 c4             	mov    %esp,-0x3c(%ebp)
  4014fe:	89 04 24             	mov    %eax,(%esp)
  401501:	89 c6                	mov    %eax,%esi
  401503:	e8 80 25 00 00       	call   403a88 <_strlen>
  401508:	8d 44 00 11          	lea    0x11(%eax,%eax,1),%eax
  40150c:	c1 e8 04             	shr    $0x4,%eax
  40150f:	c1 e0 04             	shl    $0x4,%eax
  401512:	e8 49 0b 00 00       	call   402060 <___chkstk_ms>
  401517:	29 c4                	sub    %eax,%esp
  401519:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  401520:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  401527:	8d 44 24 10          	lea    0x10(%esp),%eax
  40152b:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  401532:	89 c2                	mov    %eax,%edx
  401534:	89 45 cc             	mov    %eax,-0x34(%ebp)
  401537:	a1 04 40 40 00       	mov    0x404004,%eax
  40153c:	25 00 44 00 00       	and    $0x4400,%eax
  401541:	83 c8 10             	or     $0x10,%eax
  401544:	89 45 c8             	mov    %eax,-0x38(%ebp)
  401547:	31 c0                	xor    %eax,%eax
  401549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401550:	83 c6 01             	add    $0x1,%esi
  401553:	0f be 4e ff          	movsbl -0x1(%esi),%ecx
  401557:	85 c9                	test   %ecx,%ecx
  401559:	89 cb                	mov    %ecx,%ebx
  40155b:	74 73                	je     4015d0 <__setargv+0xf0>
  40155d:	80 fb 3f             	cmp    $0x3f,%bl
  401560:	0f 84 8d 01 00 00    	je     4016f3 <__setargv+0x213>
  401566:	0f 8f b4 00 00 00    	jg     401620 <__setargv+0x140>
  40156c:	80 fb 27             	cmp    $0x27,%bl
  40156f:	0f 84 b0 01 00 00    	je     401725 <__setargv+0x245>
  401575:	80 fb 2a             	cmp    $0x2a,%bl
  401578:	0f 84 75 01 00 00    	je     4016f3 <__setargv+0x213>
  40157e:	80 fb 22             	cmp    $0x22,%bl
  401581:	0f 85 09 01 00 00    	jne    401690 <__setargv+0x1b0>
  401587:	89 c1                	mov    %eax,%ecx
  401589:	d1 f9                	sar    %ecx
  40158b:	0f 84 d9 02 00 00    	je     40186a <__setargv+0x38a>
  401591:	01 d1                	add    %edx,%ecx
  401593:	83 c2 01             	add    $0x1,%edx
  401596:	c6 42 ff 5c          	movb   $0x5c,-0x1(%edx)
  40159a:	39 ca                	cmp    %ecx,%edx
  40159c:	75 f5                	jne    401593 <__setargv+0xb3>
  40159e:	83 7d d4 27          	cmpl   $0x27,-0x2c(%ebp)
  4015a2:	0f 84 c9 01 00 00    	je     401771 <__setargv+0x291>
  4015a8:	a8 01                	test   $0x1,%al
  4015aa:	0f 85 c1 01 00 00    	jne    401771 <__setargv+0x291>
  4015b0:	83 c6 01             	add    $0x1,%esi
  4015b3:	89 ca                	mov    %ecx,%edx
  4015b5:	83 75 d4 22          	xorl   $0x22,-0x2c(%ebp)
  4015b9:	0f be 4e ff          	movsbl -0x1(%esi),%ecx
  4015bd:	31 c0                	xor    %eax,%eax
  4015bf:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%ebp)
  4015c6:	85 c9                	test   %ecx,%ecx
  4015c8:	89 cb                	mov    %ecx,%ebx
  4015ca:	75 91                	jne    40155d <__setargv+0x7d>
  4015cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4015d0:	85 c0                	test   %eax,%eax
  4015d2:	0f 84 99 02 00 00    	je     401871 <__setargv+0x391>
  4015d8:	01 d0                	add    %edx,%eax
  4015da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4015e0:	83 c2 01             	add    $0x1,%edx
  4015e3:	c6 42 ff 5c          	movb   $0x5c,-0x1(%edx)
  4015e7:	39 c2                	cmp    %eax,%edx
  4015e9:	75 f5                	jne    4015e0 <__setargv+0x100>
  4015eb:	39 45 cc             	cmp    %eax,-0x34(%ebp)
  4015ee:	0f 82 be 01 00 00    	jb     4017b2 <__setargv+0x2d2>
  4015f4:	8b 55 d0             	mov    -0x30(%ebp),%edx
  4015f7:	85 d2                	test   %edx,%edx
  4015f9:	0f 85 b3 01 00 00    	jne    4017b2 <__setargv+0x2d2>
  4015ff:	8b 45 dc             	mov    -0x24(%ebp),%eax
  401602:	a3 04 70 40 00       	mov    %eax,0x407004
  401607:	8b 45 e0             	mov    -0x20(%ebp),%eax
  40160a:	a3 00 70 40 00       	mov    %eax,0x407000
  40160f:	8b 65 c4             	mov    -0x3c(%ebp),%esp
  401612:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401615:	5b                   	pop    %ebx
  401616:	5e                   	pop    %esi
  401617:	5f                   	pop    %edi
  401618:	5d                   	pop    %ebp
  401619:	c3                   	ret    
  40161a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401620:	80 fb 5c             	cmp    $0x5c,%bl
  401623:	0f 84 ea 00 00 00    	je     401713 <__setargv+0x233>
  401629:	80 fb 7f             	cmp    $0x7f,%bl
  40162c:	0f 84 c1 00 00 00    	je     4016f3 <__setargv+0x213>
  401632:	80 fb 5b             	cmp    $0x5b,%bl
  401635:	75 59                	jne    401690 <__setargv+0x1b0>
  401637:	f6 05 04 40 40 00 20 	testb  $0x20,0x404004
  40163e:	0f 85 af 00 00 00    	jne    4016f3 <__setargv+0x213>
  401644:	85 c0                	test   %eax,%eax
  401646:	8d 78 ff             	lea    -0x1(%eax),%edi
  401649:	b9 01 00 00 00       	mov    $0x1,%ecx
  40164e:	74 32                	je     401682 <__setargv+0x1a2>
  401650:	8d 7c 3a 01          	lea    0x1(%edx,%edi,1),%edi
  401654:	89 d0                	mov    %edx,%eax
  401656:	8d 76 00             	lea    0x0(%esi),%esi
  401659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  401660:	83 c0 01             	add    $0x1,%eax
  401663:	c6 40 ff 5c          	movb   $0x5c,-0x1(%eax)
  401667:	39 f8                	cmp    %edi,%eax
  401669:	75 f5                	jne    401660 <__setargv+0x180>
  40166b:	84 c9                	test   %cl,%cl
  40166d:	75 11                	jne    401680 <__setargv+0x1a0>
  40166f:	8d 50 01             	lea    0x1(%eax),%edx
  401672:	88 18                	mov    %bl,(%eax)
  401674:	31 c0                	xor    %eax,%eax
  401676:	e9 d5 fe ff ff       	jmp    401550 <__setargv+0x70>
  40167b:	90                   	nop
  40167c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401680:	89 c2                	mov    %eax,%edx
  401682:	8d 42 01             	lea    0x1(%edx),%eax
  401685:	c6 02 7f             	movb   $0x7f,(%edx)
  401688:	eb e5                	jmp    40166f <__setargv+0x18f>
  40168a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401690:	85 c0                	test   %eax,%eax
  401692:	8d 3c 02             	lea    (%edx,%eax,1),%edi
  401695:	0f 84 c8 01 00 00    	je     401863 <__setargv+0x383>
  40169b:	90                   	nop
  40169c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4016a0:	83 c2 01             	add    $0x1,%edx
  4016a3:	c6 42 ff 5c          	movb   $0x5c,-0x1(%edx)
  4016a7:	39 fa                	cmp    %edi,%edx
  4016a9:	75 f5                	jne    4016a0 <__setargv+0x1c0>
  4016ab:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  4016ae:	85 c0                	test   %eax,%eax
  4016b0:	75 35                	jne    4016e7 <__setargv+0x207>
  4016b2:	a1 84 81 40 00       	mov    0x408184,%eax
  4016b7:	83 38 01             	cmpl   $0x1,(%eax)
  4016ba:	0f 84 c5 00 00 00    	je     401785 <__setargv+0x2a5>
  4016c0:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
  4016c7:	00 
  4016c8:	89 0c 24             	mov    %ecx,(%esp)
  4016cb:	89 4d c0             	mov    %ecx,-0x40(%ebp)
  4016ce:	e8 25 24 00 00       	call   403af8 <__isctype>
  4016d3:	85 c0                	test   %eax,%eax
  4016d5:	0f 85 bb 00 00 00    	jne    401796 <__setargv+0x2b6>
  4016db:	8b 4d c0             	mov    -0x40(%ebp),%ecx
  4016de:	83 f9 09             	cmp    $0x9,%ecx
  4016e1:	0f 84 af 00 00 00    	je     401796 <__setargv+0x2b6>
  4016e7:	8d 57 01             	lea    0x1(%edi),%edx
  4016ea:	88 1f                	mov    %bl,(%edi)
  4016ec:	31 c0                	xor    %eax,%eax
  4016ee:	e9 5d fe ff ff       	jmp    401550 <__setargv+0x70>
  4016f3:	85 c0                	test   %eax,%eax
  4016f5:	8d 78 ff             	lea    -0x1(%eax),%edi
  4016f8:	0f 84 4e 01 00 00    	je     40184c <__setargv+0x36c>
  4016fe:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  401701:	83 f9 7f             	cmp    $0x7f,%ecx
  401704:	0f 94 c1             	sete   %cl
  401707:	85 c0                	test   %eax,%eax
  401709:	0f 95 c0             	setne  %al
  40170c:	09 c1                	or     %eax,%ecx
  40170e:	e9 3d ff ff ff       	jmp    401650 <__setargv+0x170>
  401713:	83 7d d4 27          	cmpl   $0x27,-0x2c(%ebp)
  401717:	0f 84 e4 00 00 00    	je     401801 <__setargv+0x321>
  40171d:	83 c0 01             	add    $0x1,%eax
  401720:	e9 2b fe ff ff       	jmp    401550 <__setargv+0x70>
  401725:	f6 05 04 40 40 00 10 	testb  $0x10,0x404004
  40172c:	0f 84 5e ff ff ff    	je     401690 <__setargv+0x1b0>
  401732:	89 c1                	mov    %eax,%ecx
  401734:	d1 f9                	sar    %ecx
  401736:	0f 84 3c 01 00 00    	je     401878 <__setargv+0x398>
  40173c:	01 d1                	add    %edx,%ecx
  40173e:	66 90                	xchg   %ax,%ax
  401740:	83 c2 01             	add    $0x1,%edx
  401743:	c6 42 ff 5c          	movb   $0x5c,-0x1(%edx)
  401747:	39 ca                	cmp    %ecx,%edx
  401749:	75 f5                	jne    401740 <__setargv+0x260>
  40174b:	83 7d d4 22          	cmpl   $0x22,-0x2c(%ebp)
  40174f:	0f 84 98 00 00 00    	je     4017ed <__setargv+0x30d>
  401755:	a8 01                	test   $0x1,%al
  401757:	0f 85 90 00 00 00    	jne    4017ed <__setargv+0x30d>
  40175d:	83 75 d4 27          	xorl   $0x27,-0x2c(%ebp)
  401761:	89 ca                	mov    %ecx,%edx
  401763:	31 c0                	xor    %eax,%eax
  401765:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%ebp)
  40176c:	e9 df fd ff ff       	jmp    401550 <__setargv+0x70>
  401771:	8d 51 01             	lea    0x1(%ecx),%edx
  401774:	c6 01 22             	movb   $0x22,(%ecx)
  401777:	31 c0                	xor    %eax,%eax
  401779:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%ebp)
  401780:	e9 cb fd ff ff       	jmp    401550 <__setargv+0x70>
  401785:	a1 b0 81 40 00       	mov    0x4081b0,%eax
  40178a:	8b 00                	mov    (%eax),%eax
  40178c:	f6 04 48 40          	testb  $0x40,(%eax,%ecx,2)
  401790:	0f 84 48 ff ff ff    	je     4016de <__setargv+0x1fe>
  401796:	39 7d cc             	cmp    %edi,-0x34(%ebp)
  401799:	72 75                	jb     401810 <__setargv+0x330>
  40179b:	8b 45 d0             	mov    -0x30(%ebp),%eax
  40179e:	85 c0                	test   %eax,%eax
  4017a0:	75 6e                	jne    401810 <__setargv+0x330>
  4017a2:	89 fa                	mov    %edi,%edx
  4017a4:	31 c0                	xor    %eax,%eax
  4017a6:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  4017ad:	e9 9e fd ff ff       	jmp    401550 <__setargv+0x70>
  4017b2:	c6 00 00             	movb   $0x0,(%eax)
  4017b5:	8d 45 d8             	lea    -0x28(%ebp),%eax
  4017b8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  4017bf:	00 
  4017c0:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4017c4:	8b 45 c8             	mov    -0x38(%ebp),%eax
  4017c7:	89 44 24 04          	mov    %eax,0x4(%esp)
  4017cb:	8b 45 cc             	mov    -0x34(%ebp),%eax
  4017ce:	89 04 24             	mov    %eax,(%esp)
  4017d1:	e8 5a 18 00 00       	call   403030 <___mingw_glob>
  4017d6:	e9 24 fe ff ff       	jmp    4015ff <__setargv+0x11f>
  4017db:	90                   	nop
  4017dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4017e0:	e8 bb fa ff ff       	call   4012a0 <__mingw32_init_mainargs>
  4017e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4017e8:	5b                   	pop    %ebx
  4017e9:	5e                   	pop    %esi
  4017ea:	5f                   	pop    %edi
  4017eb:	5d                   	pop    %ebp
  4017ec:	c3                   	ret    
  4017ed:	8d 51 01             	lea    0x1(%ecx),%edx
  4017f0:	c6 01 27             	movb   $0x27,(%ecx)
  4017f3:	31 c0                	xor    %eax,%eax
  4017f5:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%ebp)
  4017fc:	e9 4f fd ff ff       	jmp    401550 <__setargv+0x70>
  401801:	c6 02 5c             	movb   $0x5c,(%edx)
  401804:	83 c2 01             	add    $0x1,%edx
  401807:	e9 44 fd ff ff       	jmp    401550 <__setargv+0x70>
  40180c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401810:	8d 45 d8             	lea    -0x28(%ebp),%eax
  401813:	c6 07 00             	movb   $0x0,(%edi)
  401816:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  40181d:	00 
  40181e:	89 44 24 0c          	mov    %eax,0xc(%esp)
  401822:	8b 5d c8             	mov    -0x38(%ebp),%ebx
  401825:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  401829:	8b 7d cc             	mov    -0x34(%ebp),%edi
  40182c:	89 3c 24             	mov    %edi,(%esp)
  40182f:	e8 fc 17 00 00       	call   403030 <___mingw_glob>
  401834:	89 d8                	mov    %ebx,%eax
  401836:	89 fa                	mov    %edi,%edx
  401838:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  40183f:	83 c8 01             	or     $0x1,%eax
  401842:	89 45 c8             	mov    %eax,-0x38(%ebp)
  401845:	31 c0                	xor    %eax,%eax
  401847:	e9 04 fd ff ff       	jmp    401550 <__setargv+0x70>
  40184c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  40184f:	85 c0                	test   %eax,%eax
  401851:	0f 95 c0             	setne  %al
  401854:	83 f9 7f             	cmp    $0x7f,%ecx
  401857:	0f 94 c1             	sete   %cl
  40185a:	09 c1                	or     %eax,%ecx
  40185c:	89 d0                	mov    %edx,%eax
  40185e:	e9 08 fe ff ff       	jmp    40166b <__setargv+0x18b>
  401863:	89 d7                	mov    %edx,%edi
  401865:	e9 41 fe ff ff       	jmp    4016ab <__setargv+0x1cb>
  40186a:	89 d1                	mov    %edx,%ecx
  40186c:	e9 2d fd ff ff       	jmp    40159e <__setargv+0xbe>
  401871:	89 d0                	mov    %edx,%eax
  401873:	e9 73 fd ff ff       	jmp    4015eb <__setargv+0x10b>
  401878:	89 d1                	mov    %edx,%ecx
  40187a:	e9 cc fe ff ff       	jmp    40174b <__setargv+0x26b>
  40187f:	90                   	nop

00401880 <___cpu_features_init>:
  401880:	9c                   	pushf  
  401881:	9c                   	pushf  
  401882:	58                   	pop    %eax
  401883:	89 c2                	mov    %eax,%edx
  401885:	35 00 00 20 00       	xor    $0x200000,%eax
  40188a:	50                   	push   %eax
  40188b:	9d                   	popf   
  40188c:	9c                   	pushf  
  40188d:	58                   	pop    %eax
  40188e:	9d                   	popf   
  40188f:	31 d0                	xor    %edx,%eax
  401891:	a9 00 00 20 00       	test   $0x200000,%eax
  401896:	0f 84 e9 00 00 00    	je     401985 <___cpu_features_init+0x105>
  40189c:	53                   	push   %ebx
  40189d:	31 c0                	xor    %eax,%eax
  40189f:	0f a2                	cpuid  
  4018a1:	85 c0                	test   %eax,%eax
  4018a3:	0f 84 db 00 00 00    	je     401984 <___cpu_features_init+0x104>
  4018a9:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ae:	0f a2                	cpuid  
  4018b0:	31 c0                	xor    %eax,%eax
  4018b2:	f6 c6 01             	test   $0x1,%dh
  4018b5:	74 03                	je     4018ba <___cpu_features_init+0x3a>
  4018b7:	83 c8 01             	or     $0x1,%eax
  4018ba:	f6 c5 20             	test   $0x20,%ch
  4018bd:	74 05                	je     4018c4 <___cpu_features_init+0x44>
  4018bf:	0d 80 00 00 00       	or     $0x80,%eax
  4018c4:	f6 c6 80             	test   $0x80,%dh
  4018c7:	74 03                	je     4018cc <___cpu_features_init+0x4c>
  4018c9:	83 c8 02             	or     $0x2,%eax
  4018cc:	f7 c2 00 00 80 00    	test   $0x800000,%edx
  4018d2:	74 03                	je     4018d7 <___cpu_features_init+0x57>
  4018d4:	83 c8 04             	or     $0x4,%eax
  4018d7:	f7 c2 00 00 00 01    	test   $0x1000000,%edx
  4018dd:	74 6d                	je     40194c <___cpu_features_init+0xcc>
  4018df:	83 c8 08             	or     $0x8,%eax
  4018e2:	55                   	push   %ebp
  4018e3:	89 e5                	mov    %esp,%ebp
  4018e5:	81 ec 00 02 00 00    	sub    $0x200,%esp
  4018eb:	83 e4 f0             	and    $0xfffffff0,%esp
  4018ee:	0f ae 04 24          	fxsave (%esp)
  4018f2:	8b 9c 24 c8 00 00 00 	mov    0xc8(%esp),%ebx
  4018f9:	81 b4 24 c8 00 00 00 	xorl   $0x13c0de,0xc8(%esp)
  401900:	de c0 13 00 
  401904:	0f ae 0c 24          	fxrstor (%esp)
  401908:	89 9c 24 c8 00 00 00 	mov    %ebx,0xc8(%esp)
  40190f:	0f ae 04 24          	fxsave (%esp)
  401913:	87 9c 24 c8 00 00 00 	xchg   %ebx,0xc8(%esp)
  40191a:	0f ae 0c 24          	fxrstor (%esp)
  40191e:	33 9c 24 c8 00 00 00 	xor    0xc8(%esp),%ebx
  401925:	c9                   	leave  
  401926:	81 fb de c0 13 00    	cmp    $0x13c0de,%ebx
  40192c:	75 1e                	jne    40194c <___cpu_features_init+0xcc>
  40192e:	f7 c2 00 00 00 02    	test   $0x2000000,%edx
  401934:	74 03                	je     401939 <___cpu_features_init+0xb9>
  401936:	83 c8 10             	or     $0x10,%eax
  401939:	f7 c2 00 00 00 04    	test   $0x4000000,%edx
  40193f:	74 03                	je     401944 <___cpu_features_init+0xc4>
  401941:	83 c8 20             	or     $0x20,%eax
  401944:	f6 c1 01             	test   $0x1,%cl
  401947:	74 03                	je     40194c <___cpu_features_init+0xcc>
  401949:	83 c8 40             	or     $0x40,%eax
  40194c:	a3 24 70 40 00       	mov    %eax,0x407024
  401951:	b8 00 00 00 80       	mov    $0x80000000,%eax
  401956:	0f a2                	cpuid  
  401958:	3d 00 00 00 80       	cmp    $0x80000000,%eax
  40195d:	76 25                	jbe    401984 <___cpu_features_init+0x104>
  40195f:	b8 01 00 00 80       	mov    $0x80000001,%eax
  401964:	0f a2                	cpuid  
  401966:	31 c0                	xor    %eax,%eax
  401968:	85 d2                	test   %edx,%edx
  40196a:	79 05                	jns    401971 <___cpu_features_init+0xf1>
  40196c:	b8 00 01 00 00       	mov    $0x100,%eax
  401971:	f7 c2 00 00 00 40    	test   $0x40000000,%edx
  401977:	74 05                	je     40197e <___cpu_features_init+0xfe>
  401979:	0d 00 02 00 00       	or     $0x200,%eax
  40197e:	09 05 24 70 40 00    	or     %eax,0x407024
  401984:	5b                   	pop    %ebx
  401985:	f3 c3                	repz ret 
  401987:	90                   	nop
  401988:	90                   	nop
  401989:	90                   	nop
  40198a:	90                   	nop
  40198b:	90                   	nop
  40198c:	90                   	nop
  40198d:	90                   	nop
  40198e:	90                   	nop
  40198f:	90                   	nop

00401990 <___do_global_dtors>:
  401990:	a1 10 40 40 00       	mov    0x404010,%eax
  401995:	8b 00                	mov    (%eax),%eax
  401997:	85 c0                	test   %eax,%eax
  401999:	74 1f                	je     4019ba <___do_global_dtors+0x2a>
  40199b:	83 ec 0c             	sub    $0xc,%esp
  40199e:	66 90                	xchg   %ax,%ax
  4019a0:	ff d0                	call   *%eax
  4019a2:	a1 10 40 40 00       	mov    0x404010,%eax
  4019a7:	8d 50 04             	lea    0x4(%eax),%edx
  4019aa:	8b 40 04             	mov    0x4(%eax),%eax
  4019ad:	89 15 10 40 40 00    	mov    %edx,0x404010
  4019b3:	85 c0                	test   %eax,%eax
  4019b5:	75 e9                	jne    4019a0 <___do_global_dtors+0x10>
  4019b7:	83 c4 0c             	add    $0xc,%esp
  4019ba:	f3 c3                	repz ret 
  4019bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

004019c0 <___do_global_ctors>:
  4019c0:	53                   	push   %ebx
  4019c1:	83 ec 18             	sub    $0x18,%esp
  4019c4:	8b 1d e0 3b 40 00    	mov    0x403be0,%ebx
  4019ca:	83 fb ff             	cmp    $0xffffffff,%ebx
  4019cd:	74 21                	je     4019f0 <___do_global_ctors+0x30>
  4019cf:	85 db                	test   %ebx,%ebx
  4019d1:	74 0c                	je     4019df <___do_global_ctors+0x1f>
  4019d3:	ff 14 9d e0 3b 40 00 	call   *0x403be0(,%ebx,4)
  4019da:	83 eb 01             	sub    $0x1,%ebx
  4019dd:	75 f4                	jne    4019d3 <___do_global_ctors+0x13>
  4019df:	c7 04 24 90 19 40 00 	movl   $0x401990,(%esp)
  4019e6:	e8 35 f9 ff ff       	call   401320 <_atexit>
  4019eb:	83 c4 18             	add    $0x18,%esp
  4019ee:	5b                   	pop    %ebx
  4019ef:	c3                   	ret    
  4019f0:	31 db                	xor    %ebx,%ebx
  4019f2:	eb 02                	jmp    4019f6 <___do_global_ctors+0x36>
  4019f4:	89 c3                	mov    %eax,%ebx
  4019f6:	8d 43 01             	lea    0x1(%ebx),%eax
  4019f9:	8b 14 85 e0 3b 40 00 	mov    0x403be0(,%eax,4),%edx
  401a00:	85 d2                	test   %edx,%edx
  401a02:	75 f0                	jne    4019f4 <___do_global_ctors+0x34>
  401a04:	eb c9                	jmp    4019cf <___do_global_ctors+0xf>
  401a06:	8d 76 00             	lea    0x0(%esi),%esi
  401a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401a10 <___main>:
  401a10:	a1 28 70 40 00       	mov    0x407028,%eax
  401a15:	85 c0                	test   %eax,%eax
  401a17:	74 07                	je     401a20 <___main+0x10>
  401a19:	f3 c3                	repz ret 
  401a1b:	90                   	nop
  401a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401a20:	c7 05 28 70 40 00 01 	movl   $0x1,0x407028
  401a27:	00 00 00 
  401a2a:	eb 94                	jmp    4019c0 <___do_global_ctors>
  401a2c:	90                   	nop
  401a2d:	90                   	nop
  401a2e:	90                   	nop
  401a2f:	90                   	nop

00401a30 <.text>:
  401a30:	83 ec 1c             	sub    $0x1c,%esp
  401a33:	8b 44 24 24          	mov    0x24(%esp),%eax
  401a37:	83 f8 03             	cmp    $0x3,%eax
  401a3a:	74 14                	je     401a50 <.text+0x20>
  401a3c:	85 c0                	test   %eax,%eax
  401a3e:	74 10                	je     401a50 <.text+0x20>
  401a40:	b8 01 00 00 00       	mov    $0x1,%eax
  401a45:	83 c4 1c             	add    $0x1c,%esp
  401a48:	c2 0c 00             	ret    $0xc
  401a4b:	90                   	nop
  401a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401a50:	8b 54 24 28          	mov    0x28(%esp),%edx
  401a54:	89 44 24 04          	mov    %eax,0x4(%esp)
  401a58:	8b 44 24 20          	mov    0x20(%esp),%eax
  401a5c:	89 54 24 08          	mov    %edx,0x8(%esp)
  401a60:	89 04 24             	mov    %eax,(%esp)
  401a63:	e8 48 02 00 00       	call   401cb0 <___mingw_TLScallback>
  401a68:	b8 01 00 00 00       	mov    $0x1,%eax
  401a6d:	83 c4 1c             	add    $0x1c,%esp
  401a70:	c2 0c 00             	ret    $0xc
  401a73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401a79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401a80 <___dyn_tls_init@12>:
  401a80:	56                   	push   %esi
  401a81:	53                   	push   %ebx
  401a82:	83 ec 14             	sub    $0x14,%esp
  401a85:	83 3d 64 70 40 00 02 	cmpl   $0x2,0x407064
  401a8c:	8b 44 24 24          	mov    0x24(%esp),%eax
  401a90:	74 0a                	je     401a9c <___dyn_tls_init@12+0x1c>
  401a92:	c7 05 64 70 40 00 02 	movl   $0x2,0x407064
  401a99:	00 00 00 
  401a9c:	83 f8 02             	cmp    $0x2,%eax
  401a9f:	74 12                	je     401ab3 <___dyn_tls_init@12+0x33>
  401aa1:	83 f8 01             	cmp    $0x1,%eax
  401aa4:	74 3f                	je     401ae5 <___dyn_tls_init@12+0x65>
  401aa6:	83 c4 14             	add    $0x14,%esp
  401aa9:	b8 01 00 00 00       	mov    $0x1,%eax
  401aae:	5b                   	pop    %ebx
  401aaf:	5e                   	pop    %esi
  401ab0:	c2 0c 00             	ret    $0xc
  401ab3:	be 14 90 40 00       	mov    $0x409014,%esi
  401ab8:	81 ee 14 90 40 00    	sub    $0x409014,%esi
  401abe:	83 fe 03             	cmp    $0x3,%esi
  401ac1:	7e e3                	jle    401aa6 <___dyn_tls_init@12+0x26>
  401ac3:	31 db                	xor    %ebx,%ebx
  401ac5:	8b 83 14 90 40 00    	mov    0x409014(%ebx),%eax
  401acb:	85 c0                	test   %eax,%eax
  401acd:	74 02                	je     401ad1 <___dyn_tls_init@12+0x51>
  401acf:	ff d0                	call   *%eax
  401ad1:	83 c3 04             	add    $0x4,%ebx
  401ad4:	39 de                	cmp    %ebx,%esi
  401ad6:	75 ed                	jne    401ac5 <___dyn_tls_init@12+0x45>
  401ad8:	83 c4 14             	add    $0x14,%esp
  401adb:	b8 01 00 00 00       	mov    $0x1,%eax
  401ae0:	5b                   	pop    %ebx
  401ae1:	5e                   	pop    %esi
  401ae2:	c2 0c 00             	ret    $0xc
  401ae5:	8b 44 24 28          	mov    0x28(%esp),%eax
  401ae9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  401af0:	00 
  401af1:	89 44 24 08          	mov    %eax,0x8(%esp)
  401af5:	8b 44 24 20          	mov    0x20(%esp),%eax
  401af9:	89 04 24             	mov    %eax,(%esp)
  401afc:	e8 af 01 00 00       	call   401cb0 <___mingw_TLScallback>
  401b01:	eb a3                	jmp    401aa6 <___dyn_tls_init@12+0x26>
  401b03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401b09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401b10 <___tlregdtor>:
  401b10:	31 c0                	xor    %eax,%eax
  401b12:	c3                   	ret    
  401b13:	90                   	nop
  401b14:	90                   	nop
  401b15:	90                   	nop
  401b16:	90                   	nop
  401b17:	90                   	nop
  401b18:	90                   	nop
  401b19:	90                   	nop
  401b1a:	90                   	nop
  401b1b:	90                   	nop
  401b1c:	90                   	nop
  401b1d:	90                   	nop
  401b1e:	90                   	nop
  401b1f:	90                   	nop

00401b20 <.text>:
  401b20:	56                   	push   %esi
  401b21:	53                   	push   %ebx
  401b22:	83 ec 14             	sub    $0x14,%esp
  401b25:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401b2c:	e8 7f 20 00 00       	call   403bb0 <_EnterCriticalSection@4>
  401b31:	8b 1d 3c 70 40 00    	mov    0x40703c,%ebx
  401b37:	83 ec 04             	sub    $0x4,%esp
  401b3a:	85 db                	test   %ebx,%ebx
  401b3c:	74 2d                	je     401b6b <.text+0x4b>
  401b3e:	66 90                	xchg   %ax,%ax
  401b40:	8b 03                	mov    (%ebx),%eax
  401b42:	89 04 24             	mov    %eax,(%esp)
  401b45:	e8 f6 1f 00 00       	call   403b40 <_TlsGetValue@4>
  401b4a:	83 ec 04             	sub    $0x4,%esp
  401b4d:	89 c6                	mov    %eax,%esi
  401b4f:	e8 24 20 00 00       	call   403b78 <_GetLastError@0>
  401b54:	85 c0                	test   %eax,%eax
  401b56:	75 0c                	jne    401b64 <.text+0x44>
  401b58:	85 f6                	test   %esi,%esi
  401b5a:	74 08                	je     401b64 <.text+0x44>
  401b5c:	8b 43 04             	mov    0x4(%ebx),%eax
  401b5f:	89 34 24             	mov    %esi,(%esp)
  401b62:	ff d0                	call   *%eax
  401b64:	8b 5b 08             	mov    0x8(%ebx),%ebx
  401b67:	85 db                	test   %ebx,%ebx
  401b69:	75 d5                	jne    401b40 <.text+0x20>
  401b6b:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401b72:	e8 e1 1f 00 00       	call   403b58 <_LeaveCriticalSection@4>
  401b77:	83 ec 04             	sub    $0x4,%esp
  401b7a:	83 c4 14             	add    $0x14,%esp
  401b7d:	5b                   	pop    %ebx
  401b7e:	5e                   	pop    %esi
  401b7f:	c3                   	ret    

00401b80 <____w64_mingwthr_add_key_dtor>:
  401b80:	56                   	push   %esi
  401b81:	53                   	push   %ebx
  401b82:	31 f6                	xor    %esi,%esi
  401b84:	83 ec 14             	sub    $0x14,%esp
  401b87:	a1 40 70 40 00       	mov    0x407040,%eax
  401b8c:	85 c0                	test   %eax,%eax
  401b8e:	75 10                	jne    401ba0 <____w64_mingwthr_add_key_dtor+0x20>
  401b90:	83 c4 14             	add    $0x14,%esp
  401b93:	89 f0                	mov    %esi,%eax
  401b95:	5b                   	pop    %ebx
  401b96:	5e                   	pop    %esi
  401b97:	c3                   	ret    
  401b98:	90                   	nop
  401b99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401ba0:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
  401ba7:	00 
  401ba8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  401baf:	e8 2c 1f 00 00       	call   403ae0 <_calloc>
  401bb4:	85 c0                	test   %eax,%eax
  401bb6:	89 c3                	mov    %eax,%ebx
  401bb8:	74 41                	je     401bfb <____w64_mingwthr_add_key_dtor+0x7b>
  401bba:	8b 44 24 20          	mov    0x20(%esp),%eax
  401bbe:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401bc5:	89 03                	mov    %eax,(%ebx)
  401bc7:	8b 44 24 24          	mov    0x24(%esp),%eax
  401bcb:	89 43 04             	mov    %eax,0x4(%ebx)
  401bce:	e8 dd 1f 00 00       	call   403bb0 <_EnterCriticalSection@4>
  401bd3:	a1 3c 70 40 00       	mov    0x40703c,%eax
  401bd8:	83 ec 04             	sub    $0x4,%esp
  401bdb:	89 1d 3c 70 40 00    	mov    %ebx,0x40703c
  401be1:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401be8:	89 43 08             	mov    %eax,0x8(%ebx)
  401beb:	e8 68 1f 00 00       	call   403b58 <_LeaveCriticalSection@4>
  401bf0:	83 ec 04             	sub    $0x4,%esp
  401bf3:	89 f0                	mov    %esi,%eax
  401bf5:	83 c4 14             	add    $0x14,%esp
  401bf8:	5b                   	pop    %ebx
  401bf9:	5e                   	pop    %esi
  401bfa:	c3                   	ret    
  401bfb:	be ff ff ff ff       	mov    $0xffffffff,%esi
  401c00:	eb 8e                	jmp    401b90 <____w64_mingwthr_add_key_dtor+0x10>
  401c02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00401c10 <____w64_mingwthr_remove_key_dtor>:
  401c10:	53                   	push   %ebx
  401c11:	83 ec 18             	sub    $0x18,%esp
  401c14:	a1 40 70 40 00       	mov    0x407040,%eax
  401c19:	8b 5c 24 20          	mov    0x20(%esp),%ebx
  401c1d:	85 c0                	test   %eax,%eax
  401c1f:	75 0f                	jne    401c30 <____w64_mingwthr_remove_key_dtor+0x20>
  401c21:	83 c4 18             	add    $0x18,%esp
  401c24:	31 c0                	xor    %eax,%eax
  401c26:	5b                   	pop    %ebx
  401c27:	c3                   	ret    
  401c28:	90                   	nop
  401c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401c30:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401c37:	e8 74 1f 00 00       	call   403bb0 <_EnterCriticalSection@4>
  401c3c:	8b 15 3c 70 40 00    	mov    0x40703c,%edx
  401c42:	83 ec 04             	sub    $0x4,%esp
  401c45:	85 d2                	test   %edx,%edx
  401c47:	74 17                	je     401c60 <____w64_mingwthr_remove_key_dtor+0x50>
  401c49:	8b 02                	mov    (%edx),%eax
  401c4b:	39 c3                	cmp    %eax,%ebx
  401c4d:	75 0a                	jne    401c59 <____w64_mingwthr_remove_key_dtor+0x49>
  401c4f:	eb 4e                	jmp    401c9f <____w64_mingwthr_remove_key_dtor+0x8f>
  401c51:	8b 08                	mov    (%eax),%ecx
  401c53:	39 d9                	cmp    %ebx,%ecx
  401c55:	74 29                	je     401c80 <____w64_mingwthr_remove_key_dtor+0x70>
  401c57:	89 c2                	mov    %eax,%edx
  401c59:	8b 42 08             	mov    0x8(%edx),%eax
  401c5c:	85 c0                	test   %eax,%eax
  401c5e:	75 f1                	jne    401c51 <____w64_mingwthr_remove_key_dtor+0x41>
  401c60:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401c67:	e8 ec 1e 00 00       	call   403b58 <_LeaveCriticalSection@4>
  401c6c:	83 ec 04             	sub    $0x4,%esp
  401c6f:	83 c4 18             	add    $0x18,%esp
  401c72:	31 c0                	xor    %eax,%eax
  401c74:	5b                   	pop    %ebx
  401c75:	c3                   	ret    
  401c76:	8d 76 00             	lea    0x0(%esi),%esi
  401c79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  401c80:	8b 48 08             	mov    0x8(%eax),%ecx
  401c83:	89 4a 08             	mov    %ecx,0x8(%edx)
  401c86:	89 04 24             	mov    %eax,(%esp)
  401c89:	e8 4a 1e 00 00       	call   403ad8 <_free>
  401c8e:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401c95:	e8 be 1e 00 00       	call   403b58 <_LeaveCriticalSection@4>
  401c9a:	83 ec 04             	sub    $0x4,%esp
  401c9d:	eb d0                	jmp    401c6f <____w64_mingwthr_remove_key_dtor+0x5f>
  401c9f:	8b 42 08             	mov    0x8(%edx),%eax
  401ca2:	a3 3c 70 40 00       	mov    %eax,0x40703c
  401ca7:	89 d0                	mov    %edx,%eax
  401ca9:	eb db                	jmp    401c86 <____w64_mingwthr_remove_key_dtor+0x76>
  401cab:	90                   	nop
  401cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401cb0 <___mingw_TLScallback>:
  401cb0:	83 ec 1c             	sub    $0x1c,%esp
  401cb3:	8b 44 24 24          	mov    0x24(%esp),%eax
  401cb7:	83 f8 01             	cmp    $0x1,%eax
  401cba:	74 47                	je     401d03 <___mingw_TLScallback+0x53>
  401cbc:	72 17                	jb     401cd5 <___mingw_TLScallback+0x25>
  401cbe:	83 f8 03             	cmp    $0x3,%eax
  401cc1:	75 09                	jne    401ccc <___mingw_TLScallback+0x1c>
  401cc3:	a1 40 70 40 00       	mov    0x407040,%eax
  401cc8:	85 c0                	test   %eax,%eax
  401cca:	75 65                	jne    401d31 <___mingw_TLScallback+0x81>
  401ccc:	b8 01 00 00 00       	mov    $0x1,%eax
  401cd1:	83 c4 1c             	add    $0x1c,%esp
  401cd4:	c3                   	ret    
  401cd5:	a1 40 70 40 00       	mov    0x407040,%eax
  401cda:	85 c0                	test   %eax,%eax
  401cdc:	75 62                	jne    401d40 <___mingw_TLScallback+0x90>
  401cde:	a1 40 70 40 00       	mov    0x407040,%eax
  401ce3:	83 f8 01             	cmp    $0x1,%eax
  401ce6:	75 e4                	jne    401ccc <___mingw_TLScallback+0x1c>
  401ce8:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401cef:	c7 05 40 70 40 00 00 	movl   $0x0,0x407040
  401cf6:	00 00 00 
  401cf9:	e8 ba 1e 00 00       	call   403bb8 <_DeleteCriticalSection@4>
  401cfe:	83 ec 04             	sub    $0x4,%esp
  401d01:	eb c9                	jmp    401ccc <___mingw_TLScallback+0x1c>
  401d03:	a1 40 70 40 00       	mov    0x407040,%eax
  401d08:	85 c0                	test   %eax,%eax
  401d0a:	74 14                	je     401d20 <___mingw_TLScallback+0x70>
  401d0c:	c7 05 40 70 40 00 01 	movl   $0x1,0x407040
  401d13:	00 00 00 
  401d16:	b8 01 00 00 00       	mov    $0x1,%eax
  401d1b:	83 c4 1c             	add    $0x1c,%esp
  401d1e:	c3                   	ret    
  401d1f:	90                   	nop
  401d20:	c7 04 24 44 70 40 00 	movl   $0x407044,(%esp)
  401d27:	e8 34 1e 00 00       	call   403b60 <_InitializeCriticalSection@4>
  401d2c:	83 ec 04             	sub    $0x4,%esp
  401d2f:	eb db                	jmp    401d0c <___mingw_TLScallback+0x5c>
  401d31:	e8 ea fd ff ff       	call   401b20 <.text>
  401d36:	eb 94                	jmp    401ccc <___mingw_TLScallback+0x1c>
  401d38:	90                   	nop
  401d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401d40:	e8 db fd ff ff       	call   401b20 <.text>
  401d45:	eb 97                	jmp    401cde <___mingw_TLScallback+0x2e>
  401d47:	90                   	nop
  401d48:	90                   	nop
  401d49:	90                   	nop
  401d4a:	90                   	nop
  401d4b:	90                   	nop
  401d4c:	90                   	nop
  401d4d:	90                   	nop
  401d4e:	90                   	nop
  401d4f:	90                   	nop

00401d50 <.text>:
  401d50:	56                   	push   %esi
  401d51:	53                   	push   %ebx
  401d52:	83 ec 14             	sub    $0x14,%esp
  401d55:	a1 a4 81 40 00       	mov    0x4081a4,%eax
  401d5a:	c7 44 24 08 17 00 00 	movl   $0x17,0x8(%esp)
  401d61:	00 
  401d62:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  401d69:	00 
  401d6a:	8d 74 24 24          	lea    0x24(%esp),%esi
  401d6e:	c7 04 24 78 50 40 00 	movl   $0x405078,(%esp)
  401d75:	8d 58 40             	lea    0x40(%eax),%ebx
  401d78:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
  401d7c:	e8 4f 1d 00 00       	call   403ad0 <_fwrite>
  401d81:	8b 44 24 20          	mov    0x20(%esp),%eax
  401d85:	89 74 24 08          	mov    %esi,0x8(%esp)
  401d89:	89 1c 24             	mov    %ebx,(%esp)
  401d8c:	89 44 24 04          	mov    %eax,0x4(%esp)
  401d90:	e8 e3 1c 00 00       	call   403a78 <_vfprintf>
  401d95:	e8 4e 1d 00 00       	call   403ae8 <_abort>
  401d9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401da0:	55                   	push   %ebp
  401da1:	57                   	push   %edi
  401da2:	89 cf                	mov    %ecx,%edi
  401da4:	56                   	push   %esi
  401da5:	53                   	push   %ebx
  401da6:	89 c3                	mov    %eax,%ebx
  401da8:	89 d6                	mov    %edx,%esi
  401daa:	83 ec 4c             	sub    $0x4c,%esp
  401dad:	8d 44 24 24          	lea    0x24(%esp),%eax
  401db1:	c7 44 24 08 1c 00 00 	movl   $0x1c,0x8(%esp)
  401db8:	00 
  401db9:	89 1c 24             	mov    %ebx,(%esp)
  401dbc:	89 44 24 04          	mov    %eax,0x4(%esp)
  401dc0:	e8 6b 1d 00 00       	call   403b30 <_VirtualQuery@12>
  401dc5:	83 ec 0c             	sub    $0xc,%esp
  401dc8:	85 c0                	test   %eax,%eax
  401dca:	0f 84 a8 00 00 00    	je     401e78 <.text+0x128>
  401dd0:	8b 44 24 38          	mov    0x38(%esp),%eax
  401dd4:	83 f8 40             	cmp    $0x40,%eax
  401dd7:	74 05                	je     401dde <.text+0x8e>
  401dd9:	83 f8 04             	cmp    $0x4,%eax
  401ddc:	75 22                	jne    401e00 <.text+0xb0>
  401dde:	89 7c 24 08          	mov    %edi,0x8(%esp)
  401de2:	89 74 24 04          	mov    %esi,0x4(%esp)
  401de6:	89 1c 24             	mov    %ebx,(%esp)
  401de9:	e8 ca 1c 00 00       	call   403ab8 <_memcpy>
  401dee:	83 c4 4c             	add    $0x4c,%esp
  401df1:	5b                   	pop    %ebx
  401df2:	5e                   	pop    %esi
  401df3:	5f                   	pop    %edi
  401df4:	5d                   	pop    %ebp
  401df5:	c3                   	ret    
  401df6:	8d 76 00             	lea    0x0(%esi),%esi
  401df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  401e00:	8b 44 24 30          	mov    0x30(%esp),%eax
  401e04:	8d 6c 24 20          	lea    0x20(%esp),%ebp
  401e08:	c7 44 24 08 40 00 00 	movl   $0x40,0x8(%esp)
  401e0f:	00 
  401e10:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
  401e14:	89 44 24 04          	mov    %eax,0x4(%esp)
  401e18:	8b 44 24 24          	mov    0x24(%esp),%eax
  401e1c:	89 04 24             	mov    %eax,(%esp)
  401e1f:	e8 14 1d 00 00       	call   403b38 <_VirtualProtect@16>
  401e24:	83 ec 10             	sub    $0x10,%esp
  401e27:	8b 54 24 38          	mov    0x38(%esp),%edx
  401e2b:	89 7c 24 08          	mov    %edi,0x8(%esp)
  401e2f:	89 74 24 04          	mov    %esi,0x4(%esp)
  401e33:	89 1c 24             	mov    %ebx,(%esp)
  401e36:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  401e3a:	e8 79 1c 00 00       	call   403ab8 <_memcpy>
  401e3f:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  401e43:	83 fa 40             	cmp    $0x40,%edx
  401e46:	74 a6                	je     401dee <.text+0x9e>
  401e48:	83 fa 04             	cmp    $0x4,%edx
  401e4b:	74 a1                	je     401dee <.text+0x9e>
  401e4d:	8b 44 24 20          	mov    0x20(%esp),%eax
  401e51:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
  401e55:	89 44 24 08          	mov    %eax,0x8(%esp)
  401e59:	8b 44 24 30          	mov    0x30(%esp),%eax
  401e5d:	89 44 24 04          	mov    %eax,0x4(%esp)
  401e61:	8b 44 24 24          	mov    0x24(%esp),%eax
  401e65:	89 04 24             	mov    %eax,(%esp)
  401e68:	e8 cb 1c 00 00       	call   403b38 <_VirtualProtect@16>
  401e6d:	83 ec 10             	sub    $0x10,%esp
  401e70:	83 c4 4c             	add    $0x4c,%esp
  401e73:	5b                   	pop    %ebx
  401e74:	5e                   	pop    %esi
  401e75:	5f                   	pop    %edi
  401e76:	5d                   	pop    %ebp
  401e77:	c3                   	ret    
  401e78:	89 5c 24 08          	mov    %ebx,0x8(%esp)
  401e7c:	c7 44 24 04 1c 00 00 	movl   $0x1c,0x4(%esp)
  401e83:	00 
  401e84:	c7 04 24 90 50 40 00 	movl   $0x405090,(%esp)
  401e8b:	e8 c0 fe ff ff       	call   401d50 <.text>

00401e90 <__pei386_runtime_relocator>:
  401e90:	a1 5c 70 40 00       	mov    0x40705c,%eax
  401e95:	85 c0                	test   %eax,%eax
  401e97:	74 07                	je     401ea0 <__pei386_runtime_relocator+0x10>
  401e99:	c3                   	ret    
  401e9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401ea0:	b8 04 53 40 00       	mov    $0x405304,%eax
  401ea5:	c7 05 5c 70 40 00 01 	movl   $0x1,0x40705c
  401eac:	00 00 00 
  401eaf:	2d 04 53 40 00       	sub    $0x405304,%eax
  401eb4:	83 f8 07             	cmp    $0x7,%eax
  401eb7:	7e e0                	jle    401e99 <__pei386_runtime_relocator+0x9>
  401eb9:	57                   	push   %edi
  401eba:	56                   	push   %esi
  401ebb:	53                   	push   %ebx
  401ebc:	83 ec 20             	sub    $0x20,%esp
  401ebf:	83 f8 0b             	cmp    $0xb,%eax
  401ec2:	0f 8e e8 00 00 00    	jle    401fb0 <__pei386_runtime_relocator+0x120>
  401ec8:	8b 35 04 53 40 00    	mov    0x405304,%esi
  401ece:	85 f6                	test   %esi,%esi
  401ed0:	0f 85 8f 00 00 00    	jne    401f65 <__pei386_runtime_relocator+0xd5>
  401ed6:	8b 1d 08 53 40 00    	mov    0x405308,%ebx
  401edc:	85 db                	test   %ebx,%ebx
  401ede:	0f 85 81 00 00 00    	jne    401f65 <__pei386_runtime_relocator+0xd5>
  401ee4:	8b 0d 0c 53 40 00    	mov    0x40530c,%ecx
  401eea:	bb 10 53 40 00       	mov    $0x405310,%ebx
  401eef:	85 c9                	test   %ecx,%ecx
  401ef1:	0f 84 be 00 00 00    	je     401fb5 <__pei386_runtime_relocator+0x125>
  401ef7:	bb 04 53 40 00       	mov    $0x405304,%ebx
  401efc:	8b 43 08             	mov    0x8(%ebx),%eax
  401eff:	83 f8 01             	cmp    $0x1,%eax
  401f02:	0f 85 43 01 00 00    	jne    40204b <__pei386_runtime_relocator+0x1bb>
  401f08:	83 c3 0c             	add    $0xc,%ebx
  401f0b:	81 fb 04 53 40 00    	cmp    $0x405304,%ebx
  401f11:	0f 83 89 00 00 00    	jae    401fa0 <__pei386_runtime_relocator+0x110>
  401f17:	8b 13                	mov    (%ebx),%edx
  401f19:	8b 7b 04             	mov    0x4(%ebx),%edi
  401f1c:	8d b2 00 00 40 00    	lea    0x400000(%edx),%esi
  401f22:	8b 8a 00 00 40 00    	mov    0x400000(%edx),%ecx
  401f28:	0f b6 53 08          	movzbl 0x8(%ebx),%edx
  401f2c:	8d 87 00 00 40 00    	lea    0x400000(%edi),%eax
  401f32:	83 fa 10             	cmp    $0x10,%edx
  401f35:	0f 84 95 00 00 00    	je     401fd0 <__pei386_runtime_relocator+0x140>
  401f3b:	83 fa 20             	cmp    $0x20,%edx
  401f3e:	0f 84 ec 00 00 00    	je     402030 <__pei386_runtime_relocator+0x1a0>
  401f44:	83 fa 08             	cmp    $0x8,%edx
  401f47:	0f 84 b3 00 00 00    	je     402000 <__pei386_runtime_relocator+0x170>
  401f4d:	89 54 24 04          	mov    %edx,0x4(%esp)
  401f51:	c7 04 24 f8 50 40 00 	movl   $0x4050f8,(%esp)
  401f58:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
  401f5f:	00 
  401f60:	e8 eb fd ff ff       	call   401d50 <.text>
  401f65:	bb 04 53 40 00       	mov    $0x405304,%ebx
  401f6a:	81 fb 04 53 40 00    	cmp    $0x405304,%ebx
  401f70:	73 2e                	jae    401fa0 <__pei386_runtime_relocator+0x110>
  401f72:	8b 4b 04             	mov    0x4(%ebx),%ecx
  401f75:	8b 13                	mov    (%ebx),%edx
  401f77:	83 c3 08             	add    $0x8,%ebx
  401f7a:	03 91 00 00 40 00    	add    0x400000(%ecx),%edx
  401f80:	8d 81 00 00 40 00    	lea    0x400000(%ecx),%eax
  401f86:	b9 04 00 00 00       	mov    $0x4,%ecx
  401f8b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  401f8f:	8d 54 24 1c          	lea    0x1c(%esp),%edx
  401f93:	e8 08 fe ff ff       	call   401da0 <.text+0x50>
  401f98:	81 fb 04 53 40 00    	cmp    $0x405304,%ebx
  401f9e:	72 d2                	jb     401f72 <__pei386_runtime_relocator+0xe2>
  401fa0:	83 c4 20             	add    $0x20,%esp
  401fa3:	5b                   	pop    %ebx
  401fa4:	5e                   	pop    %esi
  401fa5:	5f                   	pop    %edi
  401fa6:	c3                   	ret    
  401fa7:	89 f6                	mov    %esi,%esi
  401fa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  401fb0:	bb 04 53 40 00       	mov    $0x405304,%ebx
  401fb5:	8b 13                	mov    (%ebx),%edx
  401fb7:	85 d2                	test   %edx,%edx
  401fb9:	75 af                	jne    401f6a <__pei386_runtime_relocator+0xda>
  401fbb:	8b 43 04             	mov    0x4(%ebx),%eax
  401fbe:	85 c0                	test   %eax,%eax
  401fc0:	0f 84 36 ff ff ff    	je     401efc <__pei386_runtime_relocator+0x6c>
  401fc6:	eb a2                	jmp    401f6a <__pei386_runtime_relocator+0xda>
  401fc8:	90                   	nop
  401fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401fd0:	0f b7 97 00 00 40 00 	movzwl 0x400000(%edi),%edx
  401fd7:	66 85 d2             	test   %dx,%dx
  401fda:	79 06                	jns    401fe2 <__pei386_runtime_relocator+0x152>
  401fdc:	81 ca 00 00 ff ff    	or     $0xffff0000,%edx
  401fe2:	29 f2                	sub    %esi,%edx
  401fe4:	01 d1                	add    %edx,%ecx
  401fe6:	8d 54 24 1c          	lea    0x1c(%esp),%edx
  401fea:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  401fee:	b9 02 00 00 00       	mov    $0x2,%ecx
  401ff3:	e8 a8 fd ff ff       	call   401da0 <.text+0x50>
  401ff8:	e9 0b ff ff ff       	jmp    401f08 <__pei386_runtime_relocator+0x78>
  401ffd:	8d 76 00             	lea    0x0(%esi),%esi
  402000:	0f b6 38             	movzbl (%eax),%edi
  402003:	89 fa                	mov    %edi,%edx
  402005:	84 d2                	test   %dl,%dl
  402007:	79 06                	jns    40200f <__pei386_runtime_relocator+0x17f>
  402009:	81 cf 00 ff ff ff    	or     $0xffffff00,%edi
  40200f:	29 f7                	sub    %esi,%edi
  402011:	8d 54 24 1c          	lea    0x1c(%esp),%edx
  402015:	01 f9                	add    %edi,%ecx
  402017:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  40201b:	b9 01 00 00 00       	mov    $0x1,%ecx
  402020:	e8 7b fd ff ff       	call   401da0 <.text+0x50>
  402025:	e9 de fe ff ff       	jmp    401f08 <__pei386_runtime_relocator+0x78>
  40202a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  402030:	29 f1                	sub    %esi,%ecx
  402032:	03 08                	add    (%eax),%ecx
  402034:	8d 54 24 1c          	lea    0x1c(%esp),%edx
  402038:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  40203c:	b9 04 00 00 00       	mov    $0x4,%ecx
  402041:	e8 5a fd ff ff       	call   401da0 <.text+0x50>
  402046:	e9 bd fe ff ff       	jmp    401f08 <__pei386_runtime_relocator+0x78>
  40204b:	89 44 24 04          	mov    %eax,0x4(%esp)
  40204f:	c7 04 24 c4 50 40 00 	movl   $0x4050c4,(%esp)
  402056:	e8 f5 fc ff ff       	call   401d50 <.text>
  40205b:	90                   	nop
  40205c:	90                   	nop
  40205d:	90                   	nop
  40205e:	90                   	nop
  40205f:	90                   	nop

00402060 <___chkstk_ms>:
  402060:	51                   	push   %ecx
  402061:	50                   	push   %eax
  402062:	3d 00 10 00 00       	cmp    $0x1000,%eax
  402067:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  40206b:	72 15                	jb     402082 <___chkstk_ms+0x22>
  40206d:	81 e9 00 10 00 00    	sub    $0x1000,%ecx
  402073:	83 09 00             	orl    $0x0,(%ecx)
  402076:	2d 00 10 00 00       	sub    $0x1000,%eax
  40207b:	3d 00 10 00 00       	cmp    $0x1000,%eax
  402080:	77 eb                	ja     40206d <___chkstk_ms+0xd>
  402082:	29 c1                	sub    %eax,%ecx
  402084:	83 09 00             	orl    $0x0,(%ecx)
  402087:	58                   	pop    %eax
  402088:	59                   	pop    %ecx
  402089:	c3                   	ret    
  40208a:	90                   	nop
  40208b:	90                   	nop

0040208c <.text>:
  40208c:	66 90                	xchg   %ax,%ax
  40208e:	66 90                	xchg   %ax,%ax

00402090 <_fesetenv>:
  402090:	83 ec 1c             	sub    $0x1c,%esp
  402093:	8b 44 24 20          	mov    0x20(%esp),%eax
  402097:	c7 44 24 0c 80 1f 00 	movl   $0x1f80,0xc(%esp)
  40209e:	00 
  40209f:	83 f8 fd             	cmp    $0xfffffffd,%eax
  4020a2:	74 31                	je     4020d5 <_fesetenv+0x45>
  4020a4:	83 f8 fc             	cmp    $0xfffffffc,%eax
  4020a7:	74 3a                	je     4020e3 <_fesetenv+0x53>
  4020a9:	85 c0                	test   %eax,%eax
  4020ab:	74 48                	je     4020f5 <_fesetenv+0x65>
  4020ad:	83 f8 ff             	cmp    $0xffffffff,%eax
  4020b0:	74 2d                	je     4020df <_fesetenv+0x4f>
  4020b2:	83 f8 fe             	cmp    $0xfffffffe,%eax
  4020b5:	74 36                	je     4020ed <_fesetenv+0x5d>
  4020b7:	d9 20                	fldenv (%eax)
  4020b9:	0f b7 40 1c          	movzwl 0x1c(%eax),%eax
  4020bd:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4020c1:	f6 05 24 70 40 00 10 	testb  $0x10,0x407024
  4020c8:	74 05                	je     4020cf <_fesetenv+0x3f>
  4020ca:	0f ae 54 24 0c       	ldmxcsr 0xc(%esp)
  4020cf:	31 c0                	xor    %eax,%eax
  4020d1:	83 c4 1c             	add    $0x1c,%esp
  4020d4:	c3                   	ret    
  4020d5:	c7 05 14 40 40 00 ff 	movl   $0xffffffff,0x404014
  4020dc:	ff ff ff 
  4020df:	db e3                	fninit 
  4020e1:	eb de                	jmp    4020c1 <_fesetenv+0x31>
  4020e3:	c7 05 14 40 40 00 fe 	movl   $0xfffffffe,0x404014
  4020ea:	ff ff ff 
  4020ed:	ff 15 9c 81 40 00    	call   *0x40819c
  4020f3:	eb cc                	jmp    4020c1 <_fesetenv+0x31>
  4020f5:	a1 14 40 40 00       	mov    0x404014,%eax
  4020fa:	eb b1                	jmp    4020ad <_fesetenv+0x1d>
  4020fc:	90                   	nop
  4020fd:	90                   	nop
  4020fe:	90                   	nop
  4020ff:	90                   	nop

00402100 <.text>:
  402100:	85 c0                	test   %eax,%eax
  402102:	0f 84 82 00 00 00    	je     40218a <.text+0x8a>
  402108:	56                   	push   %esi
  402109:	53                   	push   %ebx
  40210a:	89 d3                	mov    %edx,%ebx
  40210c:	c1 eb 05             	shr    $0x5,%ebx
  40210f:	31 c9                	xor    %ecx,%ecx
  402111:	83 f3 01             	xor    $0x1,%ebx
  402114:	83 e3 01             	and    $0x1,%ebx
  402117:	89 f6                	mov    %esi,%esi
  402119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402120:	0f be 10             	movsbl (%eax),%edx
  402123:	85 d2                	test   %edx,%edx
  402125:	74 29                	je     402150 <.text+0x50>
  402127:	84 db                	test   %bl,%bl
  402129:	74 05                	je     402130 <.text+0x30>
  40212b:	83 fa 7f             	cmp    $0x7f,%edx
  40212e:	74 40                	je     402170 <.text+0x70>
  402130:	83 c0 01             	add    $0x1,%eax
  402133:	85 c9                	test   %ecx,%ecx
  402135:	75 1e                	jne    402155 <.text+0x55>
  402137:	83 fa 2a             	cmp    $0x2a,%edx
  40213a:	74 44                	je     402180 <.text+0x80>
  40213c:	83 fa 3f             	cmp    $0x3f,%edx
  40213f:	74 3f                	je     402180 <.text+0x80>
  402141:	31 c9                	xor    %ecx,%ecx
  402143:	83 fa 5b             	cmp    $0x5b,%edx
  402146:	0f be 10             	movsbl (%eax),%edx
  402149:	0f 94 c1             	sete   %cl
  40214c:	85 d2                	test   %edx,%edx
  40214e:	75 d7                	jne    402127 <.text+0x27>
  402150:	89 d0                	mov    %edx,%eax
  402152:	5b                   	pop    %ebx
  402153:	5e                   	pop    %esi
  402154:	c3                   	ret    
  402155:	83 f9 01             	cmp    $0x1,%ecx
  402158:	7e 05                	jle    40215f <.text+0x5f>
  40215a:	83 fa 5d             	cmp    $0x5d,%edx
  40215d:	74 21                	je     402180 <.text+0x80>
  40215f:	83 fa 21             	cmp    $0x21,%edx
  402162:	0f 95 c2             	setne  %dl
  402165:	0f b6 d2             	movzbl %dl,%edx
  402168:	01 d1                	add    %edx,%ecx
  40216a:	eb b4                	jmp    402120 <.text+0x20>
  40216c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402170:	80 78 01 00          	cmpb   $0x0,0x1(%eax)
  402174:	8d 70 02             	lea    0x2(%eax),%esi
  402177:	74 16                	je     40218f <.text+0x8f>
  402179:	89 f0                	mov    %esi,%eax
  40217b:	eb b6                	jmp    402133 <.text+0x33>
  40217d:	8d 76 00             	lea    0x0(%esi),%esi
  402180:	ba 01 00 00 00       	mov    $0x1,%edx
  402185:	89 d0                	mov    %edx,%eax
  402187:	5b                   	pop    %ebx
  402188:	5e                   	pop    %esi
  402189:	c3                   	ret    
  40218a:	31 d2                	xor    %edx,%edx
  40218c:	89 d0                	mov    %edx,%eax
  40218e:	c3                   	ret    
  40218f:	31 d2                	xor    %edx,%edx
  402191:	eb bd                	jmp    402150 <.text+0x50>
  402193:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  402199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  4021a0:	85 c0                	test   %eax,%eax
  4021a2:	74 5c                	je     402200 <.text+0x100>
  4021a4:	56                   	push   %esi
  4021a5:	53                   	push   %ebx
  4021a6:	89 c6                	mov    %eax,%esi
  4021a8:	83 ec 14             	sub    $0x14,%esp
  4021ab:	8b 40 0c             	mov    0xc(%eax),%eax
  4021ae:	8d 58 01             	lea    0x1(%eax),%ebx
  4021b1:	8d 04 9d 00 00 00 00 	lea    0x0(,%ebx,4),%eax
  4021b8:	89 04 24             	mov    %eax,(%esp)
  4021bb:	e8 08 19 00 00       	call   403ac8 <_malloc>
  4021c0:	89 c1                	mov    %eax,%ecx
  4021c2:	89 46 08             	mov    %eax,0x8(%esi)
  4021c5:	b8 03 00 00 00       	mov    $0x3,%eax
  4021ca:	85 c9                	test   %ecx,%ecx
  4021cc:	74 22                	je     4021f0 <.text+0xf0>
  4021ce:	85 db                	test   %ebx,%ebx
  4021d0:	89 da                	mov    %ebx,%edx
  4021d2:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
  4021d9:	7e 13                	jle    4021ee <.text+0xee>
  4021db:	90                   	nop
  4021dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4021e0:	83 ea 01             	sub    $0x1,%edx
  4021e3:	85 d2                	test   %edx,%edx
  4021e5:	c7 04 91 00 00 00 00 	movl   $0x0,(%ecx,%edx,4)
  4021ec:	75 f2                	jne    4021e0 <.text+0xe0>
  4021ee:	31 c0                	xor    %eax,%eax
  4021f0:	83 c4 14             	add    $0x14,%esp
  4021f3:	5b                   	pop    %ebx
  4021f4:	5e                   	pop    %esi
  4021f5:	c3                   	ret    
  4021f6:	8d 76 00             	lea    0x0(%esi),%esi
  4021f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402200:	31 c0                	xor    %eax,%eax
  402202:	c3                   	ret    
  402203:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  402209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402210:	55                   	push   %ebp
  402211:	57                   	push   %edi
  402212:	89 c7                	mov    %eax,%edi
  402214:	56                   	push   %esi
  402215:	53                   	push   %ebx
  402216:	83 ec 3c             	sub    $0x3c,%esp
  402219:	0f be 18             	movsbl (%eax),%ebx
  40221c:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  402220:	89 4c 24 20          	mov    %ecx,0x20(%esp)
  402224:	83 fb 5d             	cmp    $0x5d,%ebx
  402227:	89 dd                	mov    %ebx,%ebp
  402229:	0f 84 61 01 00 00    	je     402390 <.text+0x290>
  40222f:	83 fb 2d             	cmp    $0x2d,%ebx
  402232:	0f 84 58 01 00 00    	je     402390 <.text+0x290>
  402238:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  40223c:	89 c8                	mov    %ecx,%eax
  40223e:	f7 d0                	not    %eax
  402240:	89 44 24 28          	mov    %eax,0x28(%esp)
  402244:	b8 01 00 00 00       	mov    $0x1,%eax
  402249:	29 c8                	sub    %ecx,%eax
  40224b:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  40224f:	eb 0d                	jmp    40225e <.text+0x15e>
  402251:	89 ee                	mov    %ebp,%esi
  402253:	2b 74 24 1c          	sub    0x1c(%esp),%esi
  402257:	85 f6                	test   %esi,%esi
  402259:	74 68                	je     4022c3 <.text+0x1c3>
  40225b:	0f be da             	movsbl %dl,%ebx
  40225e:	83 fb 5d             	cmp    $0x5d,%ebx
  402261:	8d 77 01             	lea    0x1(%edi),%esi
  402264:	0f 84 1a 01 00 00    	je     402384 <.text+0x284>
  40226a:	83 fb 2d             	cmp    $0x2d,%ebx
  40226d:	0f 84 8d 00 00 00    	je     402300 <.text+0x200>
  402273:	85 db                	test   %ebx,%ebx
  402275:	0f 84 09 01 00 00    	je     402384 <.text+0x284>
  40227b:	83 fb 2f             	cmp    $0x2f,%ebx
  40227e:	0f 84 00 01 00 00    	je     402384 <.text+0x284>
  402284:	83 fb 5c             	cmp    $0x5c,%ebx
  402287:	0f 84 f7 00 00 00    	je     402384 <.text+0x284>
  40228d:	0f b6 16             	movzbl (%esi),%edx
  402290:	89 dd                	mov    %ebx,%ebp
  402292:	89 f7                	mov    %esi,%edi
  402294:	f7 44 24 20 00 40 00 	testl  $0x4000,0x20(%esp)
  40229b:	00 
  40229c:	75 b3                	jne    402251 <.text+0x151>
  40229e:	89 2c 24             	mov    %ebp,(%esp)
  4022a1:	88 54 24 24          	mov    %dl,0x24(%esp)
  4022a5:	e8 d6 17 00 00       	call   403a80 <_tolower>
  4022aa:	89 c6                	mov    %eax,%esi
  4022ac:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  4022b0:	89 04 24             	mov    %eax,(%esp)
  4022b3:	e8 c8 17 00 00       	call   403a80 <_tolower>
  4022b8:	29 c6                	sub    %eax,%esi
  4022ba:	0f b6 54 24 24       	movzbl 0x24(%esp),%edx
  4022bf:	85 f6                	test   %esi,%esi
  4022c1:	75 98                	jne    40225b <.text+0x15b>
  4022c3:	8b 44 24 20          	mov    0x20(%esp),%eax
  4022c7:	83 e0 20             	and    $0x20,%eax
  4022ca:	eb 12                	jmp    4022de <.text+0x1de>
  4022cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4022d0:	83 c7 01             	add    $0x1,%edi
  4022d3:	84 d2                	test   %dl,%dl
  4022d5:	0f 84 a9 00 00 00    	je     402384 <.text+0x284>
  4022db:	0f b6 17             	movzbl (%edi),%edx
  4022de:	80 fa 5d             	cmp    $0x5d,%dl
  4022e1:	0f 84 3e 01 00 00    	je     402425 <.text+0x325>
  4022e7:	80 fa 7f             	cmp    $0x7f,%dl
  4022ea:	75 e4                	jne    4022d0 <.text+0x1d0>
  4022ec:	85 c0                	test   %eax,%eax
  4022ee:	0f 85 3c 01 00 00    	jne    402430 <.text+0x330>
  4022f4:	0f b6 57 01          	movzbl 0x1(%edi),%edx
  4022f8:	83 c7 01             	add    $0x1,%edi
  4022fb:	eb d3                	jmp    4022d0 <.text+0x1d0>
  4022fd:	8d 76 00             	lea    0x0(%esi),%esi
  402300:	0f b6 57 01          	movzbl 0x1(%edi),%edx
  402304:	80 fa 5d             	cmp    $0x5d,%dl
  402307:	0f 84 95 00 00 00    	je     4023a2 <.text+0x2a2>
  40230d:	0f be da             	movsbl %dl,%ebx
  402310:	85 db                	test   %ebx,%ebx
  402312:	74 70                	je     402384 <.text+0x284>
  402314:	8b 4c 24 20          	mov    0x20(%esp),%ecx
  402318:	8d 77 02             	lea    0x2(%edi),%esi
  40231b:	81 e1 00 40 00 00    	and    $0x4000,%ecx
  402321:	39 dd                	cmp    %ebx,%ebp
  402323:	0f 8d 0f 01 00 00    	jge    402438 <.text+0x338>
  402329:	89 74 24 24          	mov    %esi,0x24(%esp)
  40232d:	89 e8                	mov    %ebp,%eax
  40232f:	89 ce                	mov    %ecx,%esi
  402331:	eb 11                	jmp    402344 <.text+0x244>
  402333:	8b 44 24 28          	mov    0x28(%esp),%eax
  402337:	8d 3c 28             	lea    (%eax,%ebp,1),%edi
  40233a:	85 ff                	test   %edi,%edi
  40233c:	74 29                	je     402367 <.text+0x267>
  40233e:	39 eb                	cmp    %ebp,%ebx
  402340:	89 e8                	mov    %ebp,%eax
  402342:	74 6c                	je     4023b0 <.text+0x2b0>
  402344:	85 f6                	test   %esi,%esi
  402346:	8d 68 01             	lea    0x1(%eax),%ebp
  402349:	75 e8                	jne    402333 <.text+0x233>
  40234b:	89 04 24             	mov    %eax,(%esp)
  40234e:	e8 2d 17 00 00       	call   403a80 <_tolower>
  402353:	89 c7                	mov    %eax,%edi
  402355:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  402359:	89 04 24             	mov    %eax,(%esp)
  40235c:	e8 1f 17 00 00       	call   403a80 <_tolower>
  402361:	29 c7                	sub    %eax,%edi
  402363:	85 ff                	test   %edi,%edi
  402365:	75 d7                	jne    40233e <.text+0x23e>
  402367:	8b 54 24 20          	mov    0x20(%esp),%edx
  40236b:	8b 74 24 24          	mov    0x24(%esp),%esi
  40236f:	83 e2 20             	and    $0x20,%edx
  402372:	0f b6 06             	movzbl (%esi),%eax
  402375:	3c 5d                	cmp    $0x5d,%al
  402377:	74 61                	je     4023da <.text+0x2da>
  402379:	3c 7f                	cmp    $0x7f,%al
  40237b:	74 43                	je     4023c0 <.text+0x2c0>
  40237d:	83 c6 01             	add    $0x1,%esi
  402380:	84 c0                	test   %al,%al
  402382:	75 ee                	jne    402372 <.text+0x272>
  402384:	83 c4 3c             	add    $0x3c,%esp
  402387:	31 c0                	xor    %eax,%eax
  402389:	5b                   	pop    %ebx
  40238a:	5e                   	pop    %esi
  40238b:	5f                   	pop    %edi
  40238c:	5d                   	pop    %ebp
  40238d:	c3                   	ret    
  40238e:	66 90                	xchg   %ax,%ax
  402390:	3b 5c 24 1c          	cmp    0x1c(%esp),%ebx
  402394:	74 4f                	je     4023e5 <.text+0x2e5>
  402396:	0f be 5f 01          	movsbl 0x1(%edi),%ebx
  40239a:	83 c7 01             	add    $0x1,%edi
  40239d:	e9 96 fe ff ff       	jmp    402238 <.text+0x138>
  4023a2:	bd 2d 00 00 00       	mov    $0x2d,%ebp
  4023a7:	89 f7                	mov    %esi,%edi
  4023a9:	e9 e6 fe ff ff       	jmp    402294 <.text+0x194>
  4023ae:	66 90                	xchg   %ax,%ax
  4023b0:	8b 74 24 24          	mov    0x24(%esp),%esi
  4023b4:	e9 c2 fe ff ff       	jmp    40227b <.text+0x17b>
  4023b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4023c0:	85 d2                	test   %edx,%edx
  4023c2:	75 0c                	jne    4023d0 <.text+0x2d0>
  4023c4:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  4023c8:	83 c6 01             	add    $0x1,%esi
  4023cb:	eb b0                	jmp    40237d <.text+0x27d>
  4023cd:	8d 76 00             	lea    0x0(%esi),%esi
  4023d0:	83 c6 01             	add    $0x1,%esi
  4023d3:	0f b6 06             	movzbl (%esi),%eax
  4023d6:	3c 5d                	cmp    $0x5d,%al
  4023d8:	75 9f                	jne    402379 <.text+0x279>
  4023da:	83 c4 3c             	add    $0x3c,%esp
  4023dd:	8d 46 01             	lea    0x1(%esi),%eax
  4023e0:	5b                   	pop    %ebx
  4023e1:	5e                   	pop    %esi
  4023e2:	5f                   	pop    %edi
  4023e3:	5d                   	pop    %ebp
  4023e4:	c3                   	ret    
  4023e5:	8b 54 24 20          	mov    0x20(%esp),%edx
  4023e9:	83 c7 01             	add    $0x1,%edi
  4023ec:	83 e2 20             	and    $0x20,%edx
  4023ef:	90                   	nop
  4023f0:	0f b6 07             	movzbl (%edi),%eax
  4023f3:	3c 5d                	cmp    $0x5d,%al
  4023f5:	74 2e                	je     402425 <.text+0x325>
  4023f7:	3c 7f                	cmp    $0x7f,%al
  4023f9:	74 15                	je     402410 <.text+0x310>
  4023fb:	83 c7 01             	add    $0x1,%edi
  4023fe:	84 c0                	test   %al,%al
  402400:	75 ee                	jne    4023f0 <.text+0x2f0>
  402402:	e9 7d ff ff ff       	jmp    402384 <.text+0x284>
  402407:	89 f6                	mov    %esi,%esi
  402409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402410:	85 d2                	test   %edx,%edx
  402412:	75 0c                	jne    402420 <.text+0x320>
  402414:	0f b6 47 01          	movzbl 0x1(%edi),%eax
  402418:	83 c7 01             	add    $0x1,%edi
  40241b:	eb de                	jmp    4023fb <.text+0x2fb>
  40241d:	8d 76 00             	lea    0x0(%esi),%esi
  402420:	83 c7 01             	add    $0x1,%edi
  402423:	eb cb                	jmp    4023f0 <.text+0x2f0>
  402425:	83 c4 3c             	add    $0x3c,%esp
  402428:	8d 47 01             	lea    0x1(%edi),%eax
  40242b:	5b                   	pop    %ebx
  40242c:	5e                   	pop    %esi
  40242d:	5f                   	pop    %edi
  40242e:	5d                   	pop    %ebp
  40242f:	c3                   	ret    
  402430:	83 c7 01             	add    $0x1,%edi
  402433:	e9 a3 fe ff ff       	jmp    4022db <.text+0x1db>
  402438:	0f 8e 3d fe ff ff    	jle    40227b <.text+0x17b>
  40243e:	89 74 24 24          	mov    %esi,0x24(%esp)
  402442:	89 ce                	mov    %ecx,%esi
  402444:	eb 1f                	jmp    402465 <.text+0x365>
  402446:	8d 76 00             	lea    0x0(%esi),%esi
  402449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402450:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  402454:	8d 2c 38             	lea    (%eax,%edi,1),%ebp
  402457:	85 ed                	test   %ebp,%ebp
  402459:	74 2d                	je     402488 <.text+0x388>
  40245b:	39 fb                	cmp    %edi,%ebx
  40245d:	89 fd                	mov    %edi,%ebp
  40245f:	0f 84 4b ff ff ff    	je     4023b0 <.text+0x2b0>
  402465:	85 f6                	test   %esi,%esi
  402467:	8d 7d ff             	lea    -0x1(%ebp),%edi
  40246a:	75 e4                	jne    402450 <.text+0x350>
  40246c:	89 2c 24             	mov    %ebp,(%esp)
  40246f:	e8 0c 16 00 00       	call   403a80 <_tolower>
  402474:	89 c5                	mov    %eax,%ebp
  402476:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  40247a:	89 04 24             	mov    %eax,(%esp)
  40247d:	e8 fe 15 00 00       	call   403a80 <_tolower>
  402482:	29 c5                	sub    %eax,%ebp
  402484:	85 ed                	test   %ebp,%ebp
  402486:	75 d3                	jne    40245b <.text+0x35b>
  402488:	8b 54 24 20          	mov    0x20(%esp),%edx
  40248c:	8b 74 24 24          	mov    0x24(%esp),%esi
  402490:	83 e2 20             	and    $0x20,%edx
  402493:	0f b6 06             	movzbl (%esi),%eax
  402496:	3c 5d                	cmp    $0x5d,%al
  402498:	0f 84 3c ff ff ff    	je     4023da <.text+0x2da>
  40249e:	3c 7f                	cmp    $0x7f,%al
  4024a0:	74 0e                	je     4024b0 <.text+0x3b0>
  4024a2:	83 c6 01             	add    $0x1,%esi
  4024a5:	84 c0                	test   %al,%al
  4024a7:	75 ea                	jne    402493 <.text+0x393>
  4024a9:	e9 d6 fe ff ff       	jmp    402384 <.text+0x284>
  4024ae:	66 90                	xchg   %ax,%ax
  4024b0:	85 d2                	test   %edx,%edx
  4024b2:	75 0c                	jne    4024c0 <.text+0x3c0>
  4024b4:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  4024b8:	83 c6 01             	add    $0x1,%esi
  4024bb:	eb e5                	jmp    4024a2 <.text+0x3a2>
  4024bd:	8d 76 00             	lea    0x0(%esi),%esi
  4024c0:	83 c6 01             	add    $0x1,%esi
  4024c3:	eb ce                	jmp    402493 <.text+0x393>
  4024c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4024c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  4024d0:	55                   	push   %ebp
  4024d1:	57                   	push   %edi
  4024d2:	89 c5                	mov    %eax,%ebp
  4024d4:	56                   	push   %esi
  4024d5:	53                   	push   %ebx
  4024d6:	83 ec 2c             	sub    $0x2c,%esp
  4024d9:	80 3a 2e             	cmpb   $0x2e,(%edx)
  4024dc:	89 4c 24 14          	mov    %ecx,0x14(%esp)
  4024e0:	0f b6 08             	movzbl (%eax),%ecx
  4024e3:	0f 84 37 01 00 00    	je     402620 <.text+0x520>
  4024e9:	8b 44 24 14          	mov    0x14(%esp),%eax
  4024ed:	8d 7a 01             	lea    0x1(%edx),%edi
  4024f0:	c1 e8 05             	shr    $0x5,%eax
  4024f3:	83 f0 01             	xor    $0x1,%eax
  4024f6:	89 44 24 18          	mov    %eax,0x18(%esp)
  4024fa:	0f be d1             	movsbl %cl,%edx
  4024fd:	8d 77 ff             	lea    -0x1(%edi),%esi
  402500:	8d 45 01             	lea    0x1(%ebp),%eax
  402503:	85 d2                	test   %edx,%edx
  402505:	0f 84 69 01 00 00    	je     402674 <.text+0x574>
  40250b:	80 f9 3f             	cmp    $0x3f,%cl
  40250e:	0f 84 ed 00 00 00    	je     402601 <.text+0x501>
  402514:	80 f9 5b             	cmp    $0x5b,%cl
  402517:	0f 84 b3 00 00 00    	je     4025d0 <.text+0x4d0>
  40251d:	80 f9 2a             	cmp    $0x2a,%cl
  402520:	74 5e                	je     402580 <.text+0x480>
  402522:	f6 44 24 18 01       	testb  $0x1,0x18(%esp)
  402527:	74 09                	je     402532 <.text+0x432>
  402529:	83 fa 7f             	cmp    $0x7f,%edx
  40252c:	0f 84 2e 01 00 00    	je     402660 <.text+0x560>
  402532:	89 c5                	mov    %eax,%ebp
  402534:	0f be 5f ff          	movsbl -0x1(%edi),%ebx
  402538:	84 db                	test   %bl,%bl
  40253a:	0f 84 86 01 00 00    	je     4026c6 <.text+0x5c6>
  402540:	f7 44 24 14 00 40 00 	testl  $0x4000,0x14(%esp)
  402547:	00 
  402548:	0f 85 c2 00 00 00    	jne    402610 <.text+0x510>
  40254e:	89 14 24             	mov    %edx,(%esp)
  402551:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  402555:	e8 26 15 00 00       	call   403a80 <_tolower>
  40255a:	89 1c 24             	mov    %ebx,(%esp)
  40255d:	89 c6                	mov    %eax,%esi
  40255f:	e8 1c 15 00 00       	call   403a80 <_tolower>
  402564:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  402568:	29 c6                	sub    %eax,%esi
  40256a:	85 f6                	test   %esi,%esi
  40256c:	0f 84 83 00 00 00    	je     4025f5 <.text+0x4f5>
  402572:	89 d0                	mov    %edx,%eax
  402574:	29 d8                	sub    %ebx,%eax
  402576:	83 c4 2c             	add    $0x2c,%esp
  402579:	5b                   	pop    %ebx
  40257a:	5e                   	pop    %esi
  40257b:	5f                   	pop    %edi
  40257c:	5d                   	pop    %ebp
  40257d:	c3                   	ret    
  40257e:	66 90                	xchg   %ax,%ax
  402580:	0f b6 55 01          	movzbl 0x1(%ebp),%edx
  402584:	89 c3                	mov    %eax,%ebx
  402586:	80 fa 2a             	cmp    $0x2a,%dl
  402589:	75 10                	jne    40259b <.text+0x49b>
  40258b:	90                   	nop
  40258c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402590:	83 c3 01             	add    $0x1,%ebx
  402593:	0f b6 13             	movzbl (%ebx),%edx
  402596:	80 fa 2a             	cmp    $0x2a,%dl
  402599:	74 f5                	je     402590 <.text+0x490>
  40259b:	31 c0                	xor    %eax,%eax
  40259d:	84 d2                	test   %dl,%dl
  40259f:	74 d5                	je     402576 <.text+0x476>
  4025a1:	8b 7c 24 14          	mov    0x14(%esp),%edi
  4025a5:	81 cf 00 00 01 00    	or     $0x10000,%edi
  4025ab:	eb 0c                	jmp    4025b9 <.text+0x4b9>
  4025ad:	8d 76 00             	lea    0x0(%esi),%esi
  4025b0:	83 c6 01             	add    $0x1,%esi
  4025b3:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
  4025b7:	74 bd                	je     402576 <.text+0x476>
  4025b9:	89 f9                	mov    %edi,%ecx
  4025bb:	89 f2                	mov    %esi,%edx
  4025bd:	89 d8                	mov    %ebx,%eax
  4025bf:	e8 0c ff ff ff       	call   4024d0 <.text+0x3d0>
  4025c4:	85 c0                	test   %eax,%eax
  4025c6:	75 e8                	jne    4025b0 <.text+0x4b0>
  4025c8:	83 c4 2c             	add    $0x2c,%esp
  4025cb:	5b                   	pop    %ebx
  4025cc:	5e                   	pop    %esi
  4025cd:	5f                   	pop    %edi
  4025ce:	5d                   	pop    %ebp
  4025cf:	c3                   	ret    
  4025d0:	0f be 57 ff          	movsbl -0x1(%edi),%edx
  4025d4:	85 d2                	test   %edx,%edx
  4025d6:	0f 84 fb 00 00 00    	je     4026d7 <.text+0x5d7>
  4025dc:	80 7d 01 21          	cmpb   $0x21,0x1(%ebp)
  4025e0:	74 60                	je     402642 <.text+0x542>
  4025e2:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  4025e6:	e8 25 fc ff ff       	call   402210 <.text+0x110>
  4025eb:	89 c5                	mov    %eax,%ebp
  4025ed:	85 ed                	test   %ebp,%ebp
  4025ef:	0f 84 c7 00 00 00    	je     4026bc <.text+0x5bc>
  4025f5:	0f b6 4d 00          	movzbl 0x0(%ebp),%ecx
  4025f9:	83 c7 01             	add    $0x1,%edi
  4025fc:	e9 f9 fe ff ff       	jmp    4024fa <.text+0x3fa>
  402601:	80 7f ff 00          	cmpb   $0x0,-0x1(%edi)
  402605:	0f 84 c2 00 00 00    	je     4026cd <.text+0x5cd>
  40260b:	89 c5                	mov    %eax,%ebp
  40260d:	eb e6                	jmp    4025f5 <.text+0x4f5>
  40260f:	90                   	nop
  402610:	89 d6                	mov    %edx,%esi
  402612:	29 de                	sub    %ebx,%esi
  402614:	e9 51 ff ff ff       	jmp    40256a <.text+0x46a>
  402619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  402620:	80 f9 2e             	cmp    $0x2e,%cl
  402623:	0f 84 c0 fe ff ff    	je     4024e9 <.text+0x3e9>
  402629:	0f be c1             	movsbl %cl,%eax
  40262c:	83 e8 2e             	sub    $0x2e,%eax
  40262f:	f7 44 24 14 00 00 01 	testl  $0x10000,0x14(%esp)
  402636:	00 
  402637:	0f 85 ac fe ff ff    	jne    4024e9 <.text+0x3e9>
  40263d:	e9 34 ff ff ff       	jmp    402576 <.text+0x476>
  402642:	8d 5d 02             	lea    0x2(%ebp),%ebx
  402645:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  402649:	89 d8                	mov    %ebx,%eax
  40264b:	e8 c0 fb ff ff       	call   402210 <.text+0x110>
  402650:	85 c0                	test   %eax,%eax
  402652:	74 2a                	je     40267e <.text+0x57e>
  402654:	89 dd                	mov    %ebx,%ebp
  402656:	eb 95                	jmp    4025ed <.text+0x4ed>
  402658:	90                   	nop
  402659:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  402660:	0f be 55 01          	movsbl 0x1(%ebp),%edx
  402664:	83 c5 02             	add    $0x2,%ebp
  402667:	85 d2                	test   %edx,%edx
  402669:	0f 85 c5 fe ff ff    	jne    402534 <.text+0x434>
  40266f:	e9 be fe ff ff       	jmp    402532 <.text+0x432>
  402674:	0f be 06             	movsbl (%esi),%eax
  402677:	f7 d8                	neg    %eax
  402679:	e9 f8 fe ff ff       	jmp    402576 <.text+0x476>
  40267e:	0f b6 45 02          	movzbl 0x2(%ebp),%eax
  402682:	3c 5d                	cmp    $0x5d,%al
  402684:	74 5b                	je     4026e1 <.text+0x5e1>
  402686:	8b 54 24 14          	mov    0x14(%esp),%edx
  40268a:	83 e2 20             	and    $0x20,%edx
  40268d:	eb 0b                	jmp    40269a <.text+0x59a>
  40268f:	90                   	nop
  402690:	83 c3 01             	add    $0x1,%ebx
  402693:	84 c0                	test   %al,%al
  402695:	74 25                	je     4026bc <.text+0x5bc>
  402697:	0f b6 03             	movzbl (%ebx),%eax
  40269a:	3c 5d                	cmp    $0x5d,%al
  40269c:	74 16                	je     4026b4 <.text+0x5b4>
  40269e:	3c 7f                	cmp    $0x7f,%al
  4026a0:	75 ee                	jne    402690 <.text+0x590>
  4026a2:	85 d2                	test   %edx,%edx
  4026a4:	75 09                	jne    4026af <.text+0x5af>
  4026a6:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
  4026aa:	83 c3 01             	add    $0x1,%ebx
  4026ad:	eb e1                	jmp    402690 <.text+0x590>
  4026af:	83 c3 01             	add    $0x1,%ebx
  4026b2:	eb e3                	jmp    402697 <.text+0x597>
  4026b4:	8d 6b 01             	lea    0x1(%ebx),%ebp
  4026b7:	e9 31 ff ff ff       	jmp    4025ed <.text+0x4ed>
  4026bc:	b8 5d 00 00 00       	mov    $0x5d,%eax
  4026c1:	e9 b0 fe ff ff       	jmp    402576 <.text+0x476>
  4026c6:	31 db                	xor    %ebx,%ebx
  4026c8:	e9 a5 fe ff ff       	jmp    402572 <.text+0x472>
  4026cd:	b8 3f 00 00 00       	mov    $0x3f,%eax
  4026d2:	e9 9f fe ff ff       	jmp    402576 <.text+0x476>
  4026d7:	b8 5b 00 00 00       	mov    $0x5b,%eax
  4026dc:	e9 95 fe ff ff       	jmp    402576 <.text+0x476>
  4026e1:	8d 5d 03             	lea    0x3(%ebp),%ebx
  4026e4:	0f b6 45 03          	movzbl 0x3(%ebp),%eax
  4026e8:	eb 9c                	jmp    402686 <.text+0x586>
  4026ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4026f0:	57                   	push   %edi
  4026f1:	56                   	push   %esi
  4026f2:	89 c6                	mov    %eax,%esi
  4026f4:	53                   	push   %ebx
  4026f5:	89 d3                	mov    %edx,%ebx
  4026f7:	83 ec 10             	sub    $0x10,%esp
  4026fa:	8b 42 0c             	mov    0xc(%edx),%eax
  4026fd:	03 42 04             	add    0x4(%edx),%eax
  402700:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
  402707:	89 44 24 04          	mov    %eax,0x4(%esp)
  40270b:	8b 42 08             	mov    0x8(%edx),%eax
  40270e:	89 04 24             	mov    %eax,(%esp)
  402711:	e8 92 13 00 00       	call   403aa8 <_realloc>
  402716:	85 c0                	test   %eax,%eax
  402718:	74 26                	je     402740 <.text+0x640>
  40271a:	8b 4b 04             	mov    0x4(%ebx),%ecx
  40271d:	8b 53 0c             	mov    0xc(%ebx),%edx
  402720:	89 43 08             	mov    %eax,0x8(%ebx)
  402723:	8d 79 01             	lea    0x1(%ecx),%edi
  402726:	01 d1                	add    %edx,%ecx
  402728:	01 fa                	add    %edi,%edx
  40272a:	89 7b 04             	mov    %edi,0x4(%ebx)
  40272d:	89 34 88             	mov    %esi,(%eax,%ecx,4)
  402730:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  402737:	83 c4 10             	add    $0x10,%esp
  40273a:	31 c0                	xor    %eax,%eax
  40273c:	5b                   	pop    %ebx
  40273d:	5e                   	pop    %esi
  40273e:	5f                   	pop    %edi
  40273f:	c3                   	ret    
  402740:	83 c4 10             	add    $0x10,%esp
  402743:	b8 01 00 00 00       	mov    $0x1,%eax
  402748:	5b                   	pop    %ebx
  402749:	5e                   	pop    %esi
  40274a:	5f                   	pop    %edi
  40274b:	c3                   	ret    
  40274c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402750:	56                   	push   %esi
  402751:	53                   	push   %ebx
  402752:	89 c3                	mov    %eax,%ebx
  402754:	89 d6                	mov    %edx,%esi
  402756:	83 ec 14             	sub    $0x14,%esp
  402759:	8b 00                	mov    (%eax),%eax
  40275b:	85 c0                	test   %eax,%eax
  40275d:	74 05                	je     402764 <.text+0x664>
  40275f:	e8 ec ff ff ff       	call   402750 <.text+0x650>
  402764:	8b 43 08             	mov    0x8(%ebx),%eax
  402767:	85 c0                	test   %eax,%eax
  402769:	74 04                	je     40276f <.text+0x66f>
  40276b:	85 f6                	test   %esi,%esi
  40276d:	75 21                	jne    402790 <.text+0x690>
  40276f:	8b 43 04             	mov    0x4(%ebx),%eax
  402772:	85 c0                	test   %eax,%eax
  402774:	74 07                	je     40277d <.text+0x67d>
  402776:	89 f2                	mov    %esi,%edx
  402778:	e8 d3 ff ff ff       	call   402750 <.text+0x650>
  40277d:	89 1c 24             	mov    %ebx,(%esp)
  402780:	e8 53 13 00 00       	call   403ad8 <_free>
  402785:	83 c4 14             	add    $0x14,%esp
  402788:	5b                   	pop    %ebx
  402789:	5e                   	pop    %esi
  40278a:	c3                   	ret    
  40278b:	90                   	nop
  40278c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402790:	89 f2                	mov    %esi,%edx
  402792:	e8 59 ff ff ff       	call   4026f0 <.text+0x5f0>
  402797:	eb d6                	jmp    40276f <.text+0x66f>
  402799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4027a0:	55                   	push   %ebp
  4027a1:	89 e5                	mov    %esp,%ebp
  4027a3:	57                   	push   %edi
  4027a4:	56                   	push   %esi
  4027a5:	53                   	push   %ebx
  4027a6:	89 c3                	mov    %eax,%ebx
  4027a8:	83 ec 6c             	sub    $0x6c,%esp
  4027ab:	89 55 d0             	mov    %edx,-0x30(%ebp)
  4027ae:	80 e6 04             	and    $0x4,%dh
  4027b1:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  4027b4:	0f 85 56 03 00 00    	jne    402b10 <.text+0xa10>
  4027ba:	89 65 a8             	mov    %esp,-0x58(%ebp)
  4027bd:	89 1c 24             	mov    %ebx,(%esp)
  4027c0:	e8 c3 12 00 00       	call   403a88 <_strlen>
  4027c5:	8d 50 01             	lea    0x1(%eax),%edx
  4027c8:	83 c0 10             	add    $0x10,%eax
  4027cb:	c1 e8 04             	shr    $0x4,%eax
  4027ce:	c1 e0 04             	shl    $0x4,%eax
  4027d1:	e8 8a f8 ff ff       	call   402060 <___chkstk_ms>
  4027d6:	29 c4                	sub    %eax,%esp
  4027d8:	8d 44 24 0c          	lea    0xc(%esp),%eax
  4027dc:	89 54 24 08          	mov    %edx,0x8(%esp)
  4027e0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  4027e4:	89 04 24             	mov    %eax,(%esp)
  4027e7:	e8 cc 12 00 00       	call   403ab8 <_memcpy>
  4027ec:	89 04 24             	mov    %eax,(%esp)
  4027ef:	e8 8c 09 00 00       	call   403180 <___mingw_dirname>
  4027f4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  4027f7:	89 c6                	mov    %eax,%esi
  4027f9:	8d 45 d8             	lea    -0x28(%ebp),%eax
  4027fc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  402803:	e8 98 f9 ff ff       	call   4021a0 <.text+0xa0>
  402808:	85 c0                	test   %eax,%eax
  40280a:	89 45 cc             	mov    %eax,-0x34(%ebp)
  40280d:	0f 85 ed 02 00 00    	jne    402b00 <.text+0xa00>
  402813:	8b 7d d0             	mov    -0x30(%ebp),%edi
  402816:	89 f0                	mov    %esi,%eax
  402818:	89 fa                	mov    %edi,%edx
  40281a:	e8 e1 f8 ff ff       	call   402100 <.text>
  40281f:	85 c0                	test   %eax,%eax
  402821:	0f 84 d7 04 00 00    	je     402cfe <.text+0xbfe>
  402827:	8d 45 d8             	lea    -0x28(%ebp),%eax
  40282a:	89 fa                	mov    %edi,%edx
  40282c:	80 ce 80             	or     $0x80,%dh
  40282f:	89 04 24             	mov    %eax,(%esp)
  402832:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
  402835:	89 f0                	mov    %esi,%eax
  402837:	e8 64 ff ff ff       	call   4027a0 <.text+0x6a0>
  40283c:	89 45 cc             	mov    %eax,-0x34(%ebp)
  40283f:	8b 4d cc             	mov    -0x34(%ebp),%ecx
  402842:	85 c9                	test   %ecx,%ecx
  402844:	0f 85 b6 02 00 00    	jne    402b00 <.text+0xa00>
  40284a:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
  40284e:	3c 2f                	cmp    $0x2f,%al
  402850:	74 19                	je     40286b <.text+0x76b>
  402852:	3c 5c                	cmp    $0x5c,%al
  402854:	74 15                	je     40286b <.text+0x76b>
  402856:	8b 75 d4             	mov    -0x2c(%ebp),%esi
  402859:	bf 24 51 40 00       	mov    $0x405124,%edi
  40285e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402863:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
  402865:	0f 84 0b 05 00 00    	je     402d76 <.text+0xc76>
  40286b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  40286e:	89 04 24             	mov    %eax,(%esp)
  402871:	e8 12 12 00 00       	call   403a88 <_strlen>
  402876:	01 d8                	add    %ebx,%eax
  402878:	39 c3                	cmp    %eax,%ebx
  40287a:	0f 83 66 07 00 00    	jae    402fe6 <.text+0xee6>
  402880:	0f b6 08             	movzbl (%eax),%ecx
  402883:	80 f9 2f             	cmp    $0x2f,%cl
  402886:	88 4d a3             	mov    %cl,-0x5d(%ebp)
  402889:	0f 84 4f 07 00 00    	je     402fde <.text+0xede>
  40288f:	80 f9 5c             	cmp    $0x5c,%cl
  402892:	75 24                	jne    4028b8 <.text+0x7b8>
  402894:	e9 45 07 00 00       	jmp    402fde <.text+0xede>
  402899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4028a0:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
  4028a4:	89 d0                	mov    %edx,%eax
  4028a6:	80 f9 2f             	cmp    $0x2f,%cl
  4028a9:	0f 84 6b 06 00 00    	je     402f1a <.text+0xe1a>
  4028af:	80 f9 5c             	cmp    $0x5c,%cl
  4028b2:	0f 84 62 06 00 00    	je     402f1a <.text+0xe1a>
  4028b8:	8d 50 ff             	lea    -0x1(%eax),%edx
  4028bb:	39 d3                	cmp    %edx,%ebx
  4028bd:	75 e1                	jne    4028a0 <.text+0x7a0>
  4028bf:	0f b6 40 ff          	movzbl -0x1(%eax),%eax
  4028c3:	89 55 c8             	mov    %edx,-0x38(%ebp)
  4028c6:	88 45 a3             	mov    %al,-0x5d(%ebp)
  4028c9:	0f b6 45 a3          	movzbl -0x5d(%ebp),%eax
  4028cd:	3c 2f                	cmp    $0x2f,%al
  4028cf:	74 08                	je     4028d9 <.text+0x7d9>
  4028d1:	3c 5c                	cmp    $0x5c,%al
  4028d3:	0f 85 72 06 00 00    	jne    402f4b <.text+0xe4b>
  4028d9:	8b 55 c8             	mov    -0x38(%ebp),%edx
  4028dc:	0f b6 75 a3          	movzbl -0x5d(%ebp),%esi
  4028e0:	eb 02                	jmp    4028e4 <.text+0x7e4>
  4028e2:	89 c6                	mov    %eax,%esi
  4028e4:	83 c2 01             	add    $0x1,%edx
  4028e7:	0f b6 02             	movzbl (%edx),%eax
  4028ea:	3c 2f                	cmp    $0x2f,%al
  4028ec:	0f 94 c3             	sete   %bl
  4028ef:	3c 5c                	cmp    $0x5c,%al
  4028f1:	0f 94 c1             	sete   %cl
  4028f4:	08 cb                	or     %cl,%bl
  4028f6:	75 ea                	jne    4028e2 <.text+0x7e2>
  4028f8:	89 f0                	mov    %esi,%eax
  4028fa:	89 55 c8             	mov    %edx,-0x38(%ebp)
  4028fd:	88 45 a3             	mov    %al,-0x5d(%ebp)
  402900:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  402903:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  402906:	8b 45 e0             	mov    -0x20(%ebp),%eax
  402909:	8b 7d d0             	mov    -0x30(%ebp),%edi
  40290c:	c7 45 cc 02 00 00 00 	movl   $0x2,-0x34(%ebp)
  402913:	89 45 bc             	mov    %eax,-0x44(%ebp)
  402916:	8b 00                	mov    (%eax),%eax
  402918:	81 e7 00 80 00 00    	and    $0x8000,%edi
  40291e:	89 7d d4             	mov    %edi,-0x2c(%ebp)
  402921:	85 c0                	test   %eax,%eax
  402923:	0f 84 11 05 00 00    	je     402e3a <.text+0xd3a>
  402929:	89 04 24             	mov    %eax,(%esp)
  40292c:	e8 cf 0d 00 00       	call   403700 <___mingw_opendir>
  402931:	85 c0                	test   %eax,%eax
  402933:	89 c7                	mov    %eax,%edi
  402935:	0f 84 b8 04 00 00    	je     402df3 <.text+0xcf3>
  40293b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
  40293e:	85 c0                	test   %eax,%eax
  402940:	0f 84 74 05 00 00    	je     402eba <.text+0xdba>
  402946:	8b 45 bc             	mov    -0x44(%ebp),%eax
  402949:	8b 00                	mov    (%eax),%eax
  40294b:	89 04 24             	mov    %eax,(%esp)
  40294e:	e8 35 11 00 00       	call   403a88 <_strlen>
  402953:	89 45 c0             	mov    %eax,-0x40(%ebp)
  402956:	8b 45 c0             	mov    -0x40(%ebp),%eax
  402959:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
  402960:	83 c0 02             	add    $0x2,%eax
  402963:	89 45 ac             	mov    %eax,-0x54(%ebp)
  402966:	8d 76 00             	lea    0x0(%esi),%esi
  402969:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402970:	89 3c 24             	mov    %edi,(%esp)
  402973:	e8 48 0f 00 00       	call   4038c0 <___mingw_readdir>
  402978:	85 c0                	test   %eax,%eax
  40297a:	89 c6                	mov    %eax,%esi
  40297c:	0f 84 11 04 00 00    	je     402d93 <.text+0xc93>
  402982:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  402985:	85 c0                	test   %eax,%eax
  402987:	74 06                	je     40298f <.text+0x88f>
  402989:	83 7e 08 10          	cmpl   $0x10,0x8(%esi)
  40298d:	75 e1                	jne    402970 <.text+0x870>
  40298f:	8d 5e 0c             	lea    0xc(%esi),%ebx
  402992:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  402995:	8b 45 c8             	mov    -0x38(%ebp),%eax
  402998:	89 da                	mov    %ebx,%edx
  40299a:	e8 31 fb ff ff       	call   4024d0 <.text+0x3d0>
  40299f:	85 c0                	test   %eax,%eax
  4029a1:	75 cd                	jne    402970 <.text+0x870>
  4029a3:	0f b7 56 06          	movzwl 0x6(%esi),%edx
  4029a7:	8b 45 ac             	mov    -0x54(%ebp),%eax
  4029aa:	89 65 b0             	mov    %esp,-0x50(%ebp)
  4029ad:	8d 44 02 0f          	lea    0xf(%edx,%eax,1),%eax
  4029b1:	c1 e8 04             	shr    $0x4,%eax
  4029b4:	c1 e0 04             	shl    $0x4,%eax
  4029b7:	e8 a4 f6 ff ff       	call   402060 <___chkstk_ms>
  4029bc:	29 c4                	sub    %eax,%esp
  4029be:	8b 45 c0             	mov    -0x40(%ebp),%eax
  4029c1:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
  4029c8:	8d 74 24 0c          	lea    0xc(%esp),%esi
  4029cc:	85 c0                	test   %eax,%eax
  4029ce:	0f 85 7c 04 00 00    	jne    402e50 <.text+0xd50>
  4029d4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
  4029d7:	83 c2 01             	add    $0x1,%edx
  4029da:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  4029de:	89 54 24 08          	mov    %edx,0x8(%esp)
  4029e2:	89 e3                	mov    %esp,%ebx
  4029e4:	01 f0                	add    %esi,%eax
  4029e6:	89 04 24             	mov    %eax,(%esp)
  4029e9:	e8 ca 10 00 00       	call   403ab8 <_memcpy>
  4029ee:	89 34 24             	mov    %esi,(%esp)
  4029f1:	e8 92 10 00 00       	call   403a88 <_strlen>
  4029f6:	83 c0 10             	add    $0x10,%eax
  4029f9:	c1 e8 04             	shr    $0x4,%eax
  4029fc:	c1 e0 04             	shl    $0x4,%eax
  4029ff:	e8 5c f6 ff ff       	call   402060 <___chkstk_ms>
  402a04:	29 c4                	sub    %eax,%esp
  402a06:	89 f0                	mov    %esi,%eax
  402a08:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  402a0c:	89 ce                	mov    %ecx,%esi
  402a0e:	eb 0d                	jmp    402a1d <.text+0x91d>
  402a10:	83 c6 01             	add    $0x1,%esi
  402a13:	83 c0 01             	add    $0x1,%eax
  402a16:	84 d2                	test   %dl,%dl
  402a18:	88 56 ff             	mov    %dl,-0x1(%esi)
  402a1b:	74 1c                	je     402a39 <.text+0x939>
  402a1d:	0f b6 10             	movzbl (%eax),%edx
  402a20:	80 fa 7f             	cmp    $0x7f,%dl
  402a23:	75 eb                	jne    402a10 <.text+0x910>
  402a25:	0f b6 50 01          	movzbl 0x1(%eax),%edx
  402a29:	83 c0 01             	add    $0x1,%eax
  402a2c:	83 c6 01             	add    $0x1,%esi
  402a2f:	83 c0 01             	add    $0x1,%eax
  402a32:	84 d2                	test   %dl,%dl
  402a34:	88 56 ff             	mov    %dl,-0x1(%esi)
  402a37:	75 e4                	jne    402a1d <.text+0x91d>
  402a39:	89 0c 24             	mov    %ecx,(%esp)
  402a3c:	e8 87 11 00 00       	call   403bc8 <_strdup>
  402a41:	85 c0                	test   %eax,%eax
  402a43:	89 c6                	mov    %eax,%esi
  402a45:	89 dc                	mov    %ebx,%esp
  402a47:	0f 84 47 04 00 00    	je     402e94 <.text+0xd94>
  402a4d:	8b 5d cc             	mov    -0x34(%ebp),%ebx
  402a50:	83 fb 02             	cmp    $0x2,%ebx
  402a53:	0f 94 c0             	sete   %al
  402a56:	0f b6 c0             	movzbl %al,%eax
  402a59:	83 e8 01             	sub    $0x1,%eax
  402a5c:	21 c3                	and    %eax,%ebx
  402a5e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  402a61:	89 5d cc             	mov    %ebx,-0x34(%ebp)
  402a64:	a8 40                	test   $0x40,%al
  402a66:	0f 85 74 03 00 00    	jne    402de0 <.text+0xce0>
  402a6c:	8b 5d b8             	mov    -0x48(%ebp),%ebx
  402a6f:	85 db                	test   %ebx,%ebx
  402a71:	0f 84 ae 04 00 00    	je     402f25 <.text+0xe25>
  402a77:	25 00 40 00 00       	and    $0x4000,%eax
  402a7c:	89 7d b4             	mov    %edi,-0x4c(%ebp)
  402a7f:	89 c7                	mov    %eax,%edi
  402a81:	eb 14                	jmp    402a97 <.text+0x997>
  402a83:	e8 08 10 00 00       	call   403a90 <_strcoll>
  402a88:	85 c0                	test   %eax,%eax
  402a8a:	8b 13                	mov    (%ebx),%edx
  402a8c:	8b 4b 04             	mov    0x4(%ebx),%ecx
  402a8f:	7e 22                	jle    402ab3 <.text+0x9b3>
  402a91:	85 c9                	test   %ecx,%ecx
  402a93:	74 24                	je     402ab9 <.text+0x9b9>
  402a95:	89 cb                	mov    %ecx,%ebx
  402a97:	8b 43 08             	mov    0x8(%ebx),%eax
  402a9a:	85 ff                	test   %edi,%edi
  402a9c:	89 34 24             	mov    %esi,(%esp)
  402a9f:	89 44 24 04          	mov    %eax,0x4(%esp)
  402aa3:	75 de                	jne    402a83 <.text+0x983>
  402aa5:	e8 16 11 00 00       	call   403bc0 <_stricoll>
  402aaa:	85 c0                	test   %eax,%eax
  402aac:	8b 13                	mov    (%ebx),%edx
  402aae:	8b 4b 04             	mov    0x4(%ebx),%ecx
  402ab1:	7f de                	jg     402a91 <.text+0x991>
  402ab3:	89 d1                	mov    %edx,%ecx
  402ab5:	85 c9                	test   %ecx,%ecx
  402ab7:	75 dc                	jne    402a95 <.text+0x995>
  402ab9:	8b 7d b4             	mov    -0x4c(%ebp),%edi
  402abc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
  402abf:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  402ac6:	e8 fd 0f 00 00       	call   403ac8 <_malloc>
  402acb:	85 c0                	test   %eax,%eax
  402acd:	0f 84 18 03 00 00    	je     402deb <.text+0xceb>
  402ad3:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  402ad6:	89 70 08             	mov    %esi,0x8(%eax)
  402ad9:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  402ae0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  402ae6:	85 d2                	test   %edx,%edx
  402ae8:	0f 8e d8 03 00 00    	jle    402ec6 <.text+0xdc6>
  402aee:	89 43 04             	mov    %eax,0x4(%ebx)
  402af1:	e9 f5 02 00 00       	jmp    402deb <.text+0xceb>
  402af6:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  402afd:	8d 76 00             	lea    0x0(%esi),%esi
  402b00:	8b 65 a8             	mov    -0x58(%ebp),%esp
  402b03:	8b 45 cc             	mov    -0x34(%ebp),%eax
  402b06:	8d 65 f4             	lea    -0xc(%ebp),%esp
  402b09:	5b                   	pop    %ebx
  402b0a:	5e                   	pop    %esi
  402b0b:	5f                   	pop    %edi
  402b0c:	5d                   	pop    %ebp
  402b0d:	c3                   	ret    
  402b0e:	66 90                	xchg   %ax,%ax
  402b10:	89 65 c0             	mov    %esp,-0x40(%ebp)
  402b13:	89 04 24             	mov    %eax,(%esp)
  402b16:	e8 6d 0f 00 00       	call   403a88 <_strlen>
  402b1b:	83 c0 10             	add    $0x10,%eax
  402b1e:	c1 e8 04             	shr    $0x4,%eax
  402b21:	c1 e0 04             	shl    $0x4,%eax
  402b24:	e8 37 f5 ff ff       	call   402060 <___chkstk_ms>
  402b29:	29 c4                	sub    %eax,%esp
  402b2b:	89 de                	mov    %ebx,%esi
  402b2d:	8d 44 24 0c          	lea    0xc(%esp),%eax
  402b31:	89 c7                	mov    %eax,%edi
  402b33:	89 45 c8             	mov    %eax,-0x38(%ebp)
  402b36:	0f b6 03             	movzbl (%ebx),%eax
  402b39:	3c 7f                	cmp    $0x7f,%al
  402b3b:	74 28                	je     402b65 <.text+0xa65>
  402b3d:	3c 7b                	cmp    $0x7b,%al
  402b3f:	74 3f                	je     402b80 <.text+0xa80>
  402b41:	84 c0                	test   %al,%al
  402b43:	8d 57 01             	lea    0x1(%edi),%edx
  402b46:	8d 4e 01             	lea    0x1(%esi),%ecx
  402b49:	88 07                	mov    %al,(%edi)
  402b4b:	0f 84 bc 04 00 00    	je     40300d <.text+0xf0d>
  402b51:	3c 7b                	cmp    $0x7b,%al
  402b53:	0f 84 b4 04 00 00    	je     40300d <.text+0xf0d>
  402b59:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  402b5d:	89 d7                	mov    %edx,%edi
  402b5f:	89 ce                	mov    %ecx,%esi
  402b61:	3c 7f                	cmp    $0x7f,%al
  402b63:	75 d8                	jne    402b3d <.text+0xa3d>
  402b65:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  402b69:	c6 07 7f             	movb   $0x7f,(%edi)
  402b6c:	84 c0                	test   %al,%al
  402b6e:	0f 85 ac 00 00 00    	jne    402c20 <.text+0xb20>
  402b74:	83 c7 01             	add    $0x1,%edi
  402b77:	83 c6 01             	add    $0x1,%esi
  402b7a:	eb c5                	jmp    402b41 <.text+0xa41>
  402b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402b80:	89 7d cc             	mov    %edi,-0x34(%ebp)
  402b83:	89 f7                	mov    %esi,%edi
  402b85:	8b 55 cc             	mov    -0x34(%ebp),%edx
  402b88:	b9 01 00 00 00       	mov    $0x1,%ecx
  402b8d:	0f b6 47 01          	movzbl 0x1(%edi),%eax
  402b91:	3c 7f                	cmp    $0x7f,%al
  402b93:	74 26                	je     402bbb <.text+0xabb>
  402b95:	83 c7 01             	add    $0x1,%edi
  402b98:	3c 7d                	cmp    $0x7d,%al
  402b9a:	74 09                	je     402ba5 <.text+0xaa5>
  402b9c:	3c 2c                	cmp    $0x2c,%al
  402b9e:	75 40                	jne    402be0 <.text+0xae0>
  402ba0:	83 f9 01             	cmp    $0x1,%ecx
  402ba3:	75 3b                	jne    402be0 <.text+0xae0>
  402ba5:	83 e9 01             	sub    $0x1,%ecx
  402ba8:	0f 84 83 00 00 00    	je     402c31 <.text+0xb31>
  402bae:	88 02                	mov    %al,(%edx)
  402bb0:	0f b6 47 01          	movzbl 0x1(%edi),%eax
  402bb4:	83 c2 01             	add    $0x1,%edx
  402bb7:	3c 7f                	cmp    $0x7f,%al
  402bb9:	75 da                	jne    402b95 <.text+0xa95>
  402bbb:	0f b6 47 02          	movzbl 0x2(%edi),%eax
  402bbf:	c6 02 7f             	movb   $0x7f,(%edx)
  402bc2:	8d 5a 02             	lea    0x2(%edx),%ebx
  402bc5:	84 c0                	test   %al,%al
  402bc7:	88 42 01             	mov    %al,0x1(%edx)
  402bca:	75 34                	jne    402c00 <.text+0xb00>
  402bcc:	c6 42 02 00          	movb   $0x0,0x2(%edx)
  402bd0:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  402bd7:	e9 0e 01 00 00       	jmp    402cea <.text+0xbea>
  402bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402be0:	3c 7b                	cmp    $0x7b,%al
  402be2:	74 2c                	je     402c10 <.text+0xb10>
  402be4:	84 c0                	test   %al,%al
  402be6:	0f 95 45 d4          	setne  -0x2c(%ebp)
  402bea:	0f b6 5d d4          	movzbl -0x2c(%ebp),%ebx
  402bee:	84 db                	test   %bl,%bl
  402bf0:	8d 72 01             	lea    0x1(%edx),%esi
  402bf3:	88 02                	mov    %al,(%edx)
  402bf5:	0f 84 f9 03 00 00    	je     402ff4 <.text+0xef4>
  402bfb:	89 f2                	mov    %esi,%edx
  402bfd:	eb 8e                	jmp    402b8d <.text+0xa8d>
  402bff:	90                   	nop
  402c00:	0f b6 47 03          	movzbl 0x3(%edi),%eax
  402c04:	89 da                	mov    %ebx,%edx
  402c06:	83 c7 03             	add    $0x3,%edi
  402c09:	eb 8d                	jmp    402b98 <.text+0xa98>
  402c0b:	90                   	nop
  402c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402c10:	83 c1 01             	add    $0x1,%ecx
  402c13:	bb 01 00 00 00       	mov    $0x1,%ebx
  402c18:	c6 45 d4 01          	movb   $0x1,-0x2c(%ebp)
  402c1c:	eb d0                	jmp    402bee <.text+0xaee>
  402c1e:	66 90                	xchg   %ax,%ax
  402c20:	88 47 01             	mov    %al,0x1(%edi)
  402c23:	83 c6 02             	add    $0x2,%esi
  402c26:	0f b6 06             	movzbl (%esi),%eax
  402c29:	83 c7 02             	add    $0x2,%edi
  402c2c:	e9 08 ff ff ff       	jmp    402b39 <.text+0xa39>
  402c31:	3c 2c                	cmp    $0x2c,%al
  402c33:	0f 85 c1 00 00 00    	jne    402cfa <.text+0xbfa>
  402c39:	89 f8                	mov    %edi,%eax
  402c3b:	be 01 00 00 00       	mov    $0x1,%esi
  402c40:	0f b6 58 01          	movzbl 0x1(%eax),%ebx
  402c44:	8d 48 01             	lea    0x1(%eax),%ecx
  402c47:	80 fb 7f             	cmp    $0x7f,%bl
  402c4a:	0f 85 1f 01 00 00    	jne    402d6f <.text+0xc6f>
  402c50:	80 78 02 00          	cmpb   $0x0,0x2(%eax)
  402c54:	75 12                	jne    402c68 <.text+0xb68>
  402c56:	e9 85 00 00 00       	jmp    402ce0 <.text+0xbe0>
  402c5b:	90                   	nop
  402c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402c60:	80 78 01 00          	cmpb   $0x0,0x1(%eax)
  402c64:	74 7a                	je     402ce0 <.text+0xbe0>
  402c66:	89 c1                	mov    %eax,%ecx
  402c68:	0f b6 59 02          	movzbl 0x2(%ecx),%ebx
  402c6c:	8d 41 02             	lea    0x2(%ecx),%eax
  402c6f:	80 fb 7f             	cmp    $0x7f,%bl
  402c72:	74 ec                	je     402c60 <.text+0xb60>
  402c74:	80 fb 7b             	cmp    $0x7b,%bl
  402c77:	74 79                	je     402cf2 <.text+0xbf2>
  402c79:	80 fb 7d             	cmp    $0x7d,%bl
  402c7c:	75 55                	jne    402cd3 <.text+0xbd3>
  402c7e:	83 ee 01             	sub    $0x1,%esi
  402c81:	75 bd                	jne    402c40 <.text+0xb40>
  402c83:	8d 48 01             	lea    0x1(%eax),%ecx
  402c86:	0f b6 40 01          	movzbl 0x1(%eax),%eax
  402c8a:	eb 07                	jmp    402c93 <.text+0xb93>
  402c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402c90:	0f b6 01             	movzbl (%ecx),%eax
  402c93:	83 c2 01             	add    $0x1,%edx
  402c96:	83 c1 01             	add    $0x1,%ecx
  402c99:	84 c0                	test   %al,%al
  402c9b:	88 42 ff             	mov    %al,-0x1(%edx)
  402c9e:	75 f0                	jne    402c90 <.text+0xb90>
  402ca0:	8b 45 08             	mov    0x8(%ebp),%eax
  402ca3:	89 04 24             	mov    %eax,(%esp)
  402ca6:	8b 75 d0             	mov    -0x30(%ebp),%esi
  402ca9:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
  402cac:	8b 45 c8             	mov    -0x38(%ebp),%eax
  402caf:	89 f2                	mov    %esi,%edx
  402cb1:	83 ce 01             	or     $0x1,%esi
  402cb4:	e8 e7 fa ff ff       	call   4027a0 <.text+0x6a0>
  402cb9:	83 f8 01             	cmp    $0x1,%eax
  402cbc:	89 75 d0             	mov    %esi,-0x30(%ebp)
  402cbf:	0f 84 0b ff ff ff    	je     402bd0 <.text+0xad0>
  402cc5:	80 3f 2c             	cmpb   $0x2c,(%edi)
  402cc8:	0f 84 b7 fe ff ff    	je     402b85 <.text+0xa85>
  402cce:	89 45 cc             	mov    %eax,-0x34(%ebp)
  402cd1:	eb 17                	jmp    402cea <.text+0xbea>
  402cd3:	84 db                	test   %bl,%bl
  402cd5:	0f 85 65 ff ff ff    	jne    402c40 <.text+0xb40>
  402cdb:	90                   	nop
  402cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  402ce0:	c6 02 00             	movb   $0x0,(%edx)
  402ce3:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  402cea:	8b 65 c0             	mov    -0x40(%ebp),%esp
  402ced:	e9 11 fe ff ff       	jmp    402b03 <.text+0xa03>
  402cf2:	83 c6 01             	add    $0x1,%esi
  402cf5:	e9 46 ff ff ff       	jmp    402c40 <.text+0xb40>
  402cfa:	89 f8                	mov    %edi,%eax
  402cfc:	eb 85                	jmp    402c83 <.text+0xb83>
  402cfe:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  402d01:	89 e6                	mov    %esp,%esi
  402d03:	89 04 24             	mov    %eax,(%esp)
  402d06:	e8 7d 0d 00 00       	call   403a88 <_strlen>
  402d0b:	83 c0 10             	add    $0x10,%eax
  402d0e:	c1 e8 04             	shr    $0x4,%eax
  402d11:	c1 e0 04             	shl    $0x4,%eax
  402d14:	e8 47 f3 ff ff       	call   402060 <___chkstk_ms>
  402d19:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  402d1c:	29 c4                	sub    %eax,%esp
  402d1e:	8d 7c 24 0c          	lea    0xc(%esp),%edi
  402d22:	89 f9                	mov    %edi,%ecx
  402d24:	eb 17                	jmp    402d3d <.text+0xc3d>
  402d26:	8d 76 00             	lea    0x0(%esi),%esi
  402d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402d30:	83 c1 01             	add    $0x1,%ecx
  402d33:	83 c2 01             	add    $0x1,%edx
  402d36:	84 c0                	test   %al,%al
  402d38:	88 41 ff             	mov    %al,-0x1(%ecx)
  402d3b:	74 10                	je     402d4d <.text+0xc4d>
  402d3d:	0f b6 02             	movzbl (%edx),%eax
  402d40:	3c 7f                	cmp    $0x7f,%al
  402d42:	75 ec                	jne    402d30 <.text+0xc30>
  402d44:	0f b6 42 01          	movzbl 0x1(%edx),%eax
  402d48:	83 c2 01             	add    $0x1,%edx
  402d4b:	eb e3                	jmp    402d30 <.text+0xc30>
  402d4d:	89 3c 24             	mov    %edi,(%esp)
  402d50:	e8 73 0e 00 00       	call   403bc8 <_strdup>
  402d55:	85 c0                	test   %eax,%eax
  402d57:	89 f4                	mov    %esi,%esp
  402d59:	0f 84 97 fd ff ff    	je     402af6 <.text+0x9f6>
  402d5f:	8d 55 d8             	lea    -0x28(%ebp),%edx
  402d62:	e8 89 f9 ff ff       	call   4026f0 <.text+0x5f0>
  402d67:	89 45 cc             	mov    %eax,-0x34(%ebp)
  402d6a:	e9 d0 fa ff ff       	jmp    40283f <.text+0x73f>
  402d6f:	89 c8                	mov    %ecx,%eax
  402d71:	e9 fe fe ff ff       	jmp    402c74 <.text+0xb74>
  402d76:	f6 45 d0 10          	testb  $0x10,-0x30(%ebp)
  402d7a:	0f 85 da 01 00 00    	jne    402f5a <.text+0xe5a>
  402d80:	89 5d c8             	mov    %ebx,-0x38(%ebp)
  402d83:	c6 45 a3 5c          	movb   $0x5c,-0x5d(%ebp)
  402d87:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  402d8e:	e9 73 fb ff ff       	jmp    402906 <.text+0x806>
  402d93:	89 3c 24             	mov    %edi,(%esp)
  402d96:	e8 75 0b 00 00       	call   403910 <___mingw_closedir>
  402d9b:	8b 55 b8             	mov    -0x48(%ebp),%edx
  402d9e:	85 d2                	test   %edx,%edx
  402da0:	74 0b                	je     402dad <.text+0xcad>
  402da2:	8b 55 08             	mov    0x8(%ebp),%edx
  402da5:	8b 45 b8             	mov    -0x48(%ebp),%eax
  402da8:	e8 a3 f9 ff ff       	call   402750 <.text+0x650>
  402dad:	8b 7d bc             	mov    -0x44(%ebp),%edi
  402db0:	8d 5f 04             	lea    0x4(%edi),%ebx
  402db3:	8b 43 fc             	mov    -0x4(%ebx),%eax
  402db6:	89 04 24             	mov    %eax,(%esp)
  402db9:	e8 1a 0d 00 00       	call   403ad8 <_free>
  402dbe:	8b 47 04             	mov    0x4(%edi),%eax
  402dc1:	85 c0                	test   %eax,%eax
  402dc3:	0f 84 12 01 00 00    	je     402edb <.text+0xddb>
  402dc9:	83 7d cc 01          	cmpl   $0x1,-0x34(%ebp)
  402dcd:	74 47                	je     402e16 <.text+0xd16>
  402dcf:	89 5d bc             	mov    %ebx,-0x44(%ebp)
  402dd2:	e9 52 fb ff ff       	jmp    402929 <.text+0x829>
  402dd7:	89 f6                	mov    %esi,%esi
  402dd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  402de0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  402de3:	85 c9                	test   %ecx,%ecx
  402de5:	0f 85 c0 00 00 00    	jne    402eab <.text+0xdab>
  402deb:	8b 65 b0             	mov    -0x50(%ebp),%esp
  402dee:	e9 7d fb ff ff       	jmp    402970 <.text+0x870>
  402df3:	f6 45 d0 04          	testb  $0x4,-0x30(%ebp)
  402df7:	0f 84 e9 00 00 00    	je     402ee6 <.text+0xde6>
  402dfd:	8b 7d bc             	mov    -0x44(%ebp),%edi
  402e00:	8d 5f 04             	lea    0x4(%edi),%ebx
  402e03:	89 f8                	mov    %edi,%eax
  402e05:	8b 00                	mov    (%eax),%eax
  402e07:	89 04 24             	mov    %eax,(%esp)
  402e0a:	e8 c9 0c 00 00       	call   403ad8 <_free>
  402e0f:	8b 47 04             	mov    0x4(%edi),%eax
  402e12:	85 c0                	test   %eax,%eax
  402e14:	74 17                	je     402e2d <.text+0xd2d>
  402e16:	8b 45 bc             	mov    -0x44(%ebp),%eax
  402e19:	8b 40 04             	mov    0x4(%eax),%eax
  402e1c:	83 c3 04             	add    $0x4,%ebx
  402e1f:	89 04 24             	mov    %eax,(%esp)
  402e22:	e8 b1 0c 00 00       	call   403ad8 <_free>
  402e27:	8b 03                	mov    (%ebx),%eax
  402e29:	85 c0                	test   %eax,%eax
  402e2b:	75 ef                	jne    402e1c <.text+0xd1c>
  402e2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  402e30:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  402e37:	89 45 bc             	mov    %eax,-0x44(%ebp)
  402e3a:	8b 45 bc             	mov    -0x44(%ebp),%eax
  402e3d:	89 04 24             	mov    %eax,(%esp)
  402e40:	e8 93 0c 00 00       	call   403ad8 <_free>
  402e45:	8b 65 a8             	mov    -0x58(%ebp),%esp
  402e48:	e9 b6 fc ff ff       	jmp    402b03 <.text+0xa03>
  402e4d:	8d 76 00             	lea    0x0(%esi),%esi
  402e50:	8b 45 bc             	mov    -0x44(%ebp),%eax
  402e53:	89 55 b4             	mov    %edx,-0x4c(%ebp)
  402e56:	8b 55 c0             	mov    -0x40(%ebp),%edx
  402e59:	8b 00                	mov    (%eax),%eax
  402e5b:	89 34 24             	mov    %esi,(%esp)
  402e5e:	89 54 24 08          	mov    %edx,0x8(%esp)
  402e62:	89 44 24 04          	mov    %eax,0x4(%esp)
  402e66:	e8 4d 0c 00 00       	call   403ab8 <_memcpy>
  402e6b:	8b 4d c0             	mov    -0x40(%ebp),%ecx
  402e6e:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  402e71:	0f b6 44 0c 0b       	movzbl 0xb(%esp,%ecx,1),%eax
  402e76:	3c 2f                	cmp    $0x2f,%al
  402e78:	74 26                	je     402ea0 <.text+0xda0>
  402e7a:	3c 5c                	cmp    $0x5c,%al
  402e7c:	74 22                	je     402ea0 <.text+0xda0>
  402e7e:	89 c8                	mov    %ecx,%eax
  402e80:	83 c0 01             	add    $0x1,%eax
  402e83:	89 45 b4             	mov    %eax,-0x4c(%ebp)
  402e86:	89 c8                	mov    %ecx,%eax
  402e88:	0f b6 4d a3          	movzbl -0x5d(%ebp),%ecx
  402e8c:	88 0c 06             	mov    %cl,(%esi,%eax,1)
  402e8f:	e9 40 fb ff ff       	jmp    4029d4 <.text+0x8d4>
  402e94:	c7 45 cc 03 00 00 00 	movl   $0x3,-0x34(%ebp)
  402e9b:	e9 4b ff ff ff       	jmp    402deb <.text+0xceb>
  402ea0:	8b 45 c0             	mov    -0x40(%ebp),%eax
  402ea3:	89 45 b4             	mov    %eax,-0x4c(%ebp)
  402ea6:	e9 29 fb ff ff       	jmp    4029d4 <.text+0x8d4>
  402eab:	8b 55 08             	mov    0x8(%ebp),%edx
  402eae:	89 f0                	mov    %esi,%eax
  402eb0:	e8 3b f8 ff ff       	call   4026f0 <.text+0x5f0>
  402eb5:	e9 31 ff ff ff       	jmp    402deb <.text+0xceb>
  402eba:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  402ec1:	e9 90 fa ff ff       	jmp    402956 <.text+0x856>
  402ec6:	89 03                	mov    %eax,(%ebx)
  402ec8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
  402ecb:	85 db                	test   %ebx,%ebx
  402ecd:	0f 85 18 ff ff ff    	jne    402deb <.text+0xceb>
  402ed3:	89 45 b8             	mov    %eax,-0x48(%ebp)
  402ed6:	e9 10 ff ff ff       	jmp    402deb <.text+0xceb>
  402edb:	8b 45 e0             	mov    -0x20(%ebp),%eax
  402ede:	89 45 bc             	mov    %eax,-0x44(%ebp)
  402ee1:	e9 54 ff ff ff       	jmp    402e3a <.text+0xd3a>
  402ee6:	8b 7d c4             	mov    -0x3c(%ebp),%edi
  402ee9:	85 ff                	test   %edi,%edi
  402eeb:	0f 84 bc fe ff ff    	je     402dad <.text+0xcad>
  402ef1:	e8 12 0c 00 00       	call   403b08 <__errno>
  402ef6:	8b 00                	mov    (%eax),%eax
  402ef8:	89 44 24 04          	mov    %eax,0x4(%esp)
  402efc:	8b 75 bc             	mov    -0x44(%ebp),%esi
  402eff:	8b 06                	mov    (%esi),%eax
  402f01:	89 04 24             	mov    %eax,(%esp)
  402f04:	ff d7                	call   *%edi
  402f06:	85 c0                	test   %eax,%eax
  402f08:	0f 84 9f fe ff ff    	je     402dad <.text+0xcad>
  402f0e:	89 f0                	mov    %esi,%eax
  402f10:	8d 5e 04             	lea    0x4(%esi),%ebx
  402f13:	89 f7                	mov    %esi,%edi
  402f15:	e9 eb fe ff ff       	jmp    402e05 <.text+0xd05>
  402f1a:	89 55 c8             	mov    %edx,-0x38(%ebp)
  402f1d:	88 4d a3             	mov    %cl,-0x5d(%ebp)
  402f20:	e9 a4 f9 ff ff       	jmp    4028c9 <.text+0x7c9>
  402f25:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  402f2c:	e8 97 0b 00 00       	call   403ac8 <_malloc>
  402f31:	85 c0                	test   %eax,%eax
  402f33:	0f 84 b2 fe ff ff    	je     402deb <.text+0xceb>
  402f39:	89 70 08             	mov    %esi,0x8(%eax)
  402f3c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  402f43:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  402f49:	eb 88                	jmp    402ed3 <.text+0xdd3>
  402f4b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  402f4e:	c6 45 a3 5c          	movb   $0x5c,-0x5d(%ebp)
  402f52:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  402f55:	e9 ac f9 ff ff       	jmp    402906 <.text+0x806>
  402f5a:	8b 55 d0             	mov    -0x30(%ebp),%edx
  402f5d:	89 d8                	mov    %ebx,%eax
  402f5f:	e8 9c f1 ff ff       	call   402100 <.text>
  402f64:	85 c0                	test   %eax,%eax
  402f66:	89 45 cc             	mov    %eax,-0x34(%ebp)
  402f69:	0f 85 11 fe ff ff    	jne    402d80 <.text+0xc80>
  402f6f:	89 1c 24             	mov    %ebx,(%esp)
  402f72:	89 e6                	mov    %esp,%esi
  402f74:	e8 0f 0b 00 00       	call   403a88 <_strlen>
  402f79:	83 c0 10             	add    $0x10,%eax
  402f7c:	c1 e8 04             	shr    $0x4,%eax
  402f7f:	c1 e0 04             	shl    $0x4,%eax
  402f82:	e8 d9 f0 ff ff       	call   402060 <___chkstk_ms>
  402f87:	29 c4                	sub    %eax,%esp
  402f89:	8d 4c 24 0c          	lea    0xc(%esp),%ecx
  402f8d:	89 ca                	mov    %ecx,%edx
  402f8f:	eb 0d                	jmp    402f9e <.text+0xe9e>
  402f91:	83 c2 01             	add    $0x1,%edx
  402f94:	83 c3 01             	add    $0x1,%ebx
  402f97:	84 c0                	test   %al,%al
  402f99:	88 42 ff             	mov    %al,-0x1(%edx)
  402f9c:	74 10                	je     402fae <.text+0xeae>
  402f9e:	0f b6 03             	movzbl (%ebx),%eax
  402fa1:	3c 7f                	cmp    $0x7f,%al
  402fa3:	75 ec                	jne    402f91 <.text+0xe91>
  402fa5:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
  402fa9:	83 c3 01             	add    $0x1,%ebx
  402fac:	eb e3                	jmp    402f91 <.text+0xe91>
  402fae:	89 0c 24             	mov    %ecx,(%esp)
  402fb1:	e8 12 0c 00 00       	call   403bc8 <_strdup>
  402fb6:	85 c0                	test   %eax,%eax
  402fb8:	89 f4                	mov    %esi,%esp
  402fba:	0f 84 1b ff ff ff    	je     402edb <.text+0xddb>
  402fc0:	8b 55 08             	mov    0x8(%ebp),%edx
  402fc3:	85 d2                	test   %edx,%edx
  402fc5:	0f 84 10 ff ff ff    	je     402edb <.text+0xddb>
  402fcb:	8b 55 08             	mov    0x8(%ebp),%edx
  402fce:	e8 1d f7 ff ff       	call   4026f0 <.text+0x5f0>
  402fd3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  402fd6:	89 45 bc             	mov    %eax,-0x44(%ebp)
  402fd9:	e9 5c fe ff ff       	jmp    402e3a <.text+0xd3a>
  402fde:	89 45 c8             	mov    %eax,-0x38(%ebp)
  402fe1:	e9 e3 f8 ff ff       	jmp    4028c9 <.text+0x7c9>
  402fe6:	0f b6 18             	movzbl (%eax),%ebx
  402fe9:	89 45 c8             	mov    %eax,-0x38(%ebp)
  402fec:	88 5d a3             	mov    %bl,-0x5d(%ebp)
  402fef:	e9 d5 f8 ff ff       	jmp    4028c9 <.text+0x7c9>
  402ff4:	80 7d d4 00          	cmpb   $0x0,-0x2c(%ebp)
  402ff8:	0f 84 d2 fb ff ff    	je     402bd0 <.text+0xad0>
  402ffe:	3c 2c                	cmp    $0x2c,%al
  403000:	89 f2                	mov    %esi,%edx
  403002:	0f 85 d8 fc ff ff    	jne    402ce0 <.text+0xbe0>
  403008:	e9 2c fc ff ff       	jmp    402c39 <.text+0xb39>
  40300d:	3c 7b                	cmp    $0x7b,%al
  40300f:	74 08                	je     403019 <.text+0xf19>
  403011:	8b 65 c0             	mov    -0x40(%ebp),%esp
  403014:	e9 a1 f7 ff ff       	jmp    4027ba <.text+0x6ba>
  403019:	89 55 cc             	mov    %edx,-0x34(%ebp)
  40301c:	89 cf                	mov    %ecx,%edi
  40301e:	e9 62 fb ff ff       	jmp    402b85 <.text+0xa85>
  403023:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  403029:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00403030 <___mingw_glob>:
  403030:	55                   	push   %ebp
  403031:	89 e5                	mov    %esp,%ebp
  403033:	57                   	push   %edi
  403034:	56                   	push   %esi
  403035:	53                   	push   %ebx
  403036:	83 ec 2c             	sub    $0x2c,%esp
  403039:	8b 75 14             	mov    0x14(%ebp),%esi
  40303c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  40303f:	8b 7d 0c             	mov    0xc(%ebp),%edi
  403042:	85 f6                	test   %esi,%esi
  403044:	74 08                	je     40304e <___mingw_glob+0x1e>
  403046:	f7 c7 02 00 00 00    	test   $0x2,%edi
  40304c:	74 35                	je     403083 <___mingw_glob+0x53>
  40304e:	81 3e 26 51 40 00    	cmpl   $0x405126,(%esi)
  403054:	74 0d                	je     403063 <___mingw_glob+0x33>
  403056:	89 f0                	mov    %esi,%eax
  403058:	e8 43 f1 ff ff       	call   4021a0 <.text+0xa0>
  40305d:	c7 06 26 51 40 00    	movl   $0x405126,(%esi)
  403063:	89 34 24             	mov    %esi,(%esp)
  403066:	8b 4d 10             	mov    0x10(%ebp),%ecx
  403069:	89 fa                	mov    %edi,%edx
  40306b:	89 d8                	mov    %ebx,%eax
  40306d:	e8 2e f7 ff ff       	call   4027a0 <.text+0x6a0>
  403072:	83 f8 02             	cmp    $0x2,%eax
  403075:	89 c1                	mov    %eax,%ecx
  403077:	74 17                	je     403090 <___mingw_glob+0x60>
  403079:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40307c:	89 c8                	mov    %ecx,%eax
  40307e:	5b                   	pop    %ebx
  40307f:	5e                   	pop    %esi
  403080:	5f                   	pop    %edi
  403081:	5d                   	pop    %ebp
  403082:	c3                   	ret    
  403083:	c7 46 0c 00 00 00 00 	movl   $0x0,0xc(%esi)
  40308a:	eb c2                	jmp    40304e <___mingw_glob+0x1e>
  40308c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  403090:	83 e7 10             	and    $0x10,%edi
  403093:	74 e4                	je     403079 <___mingw_glob+0x49>
  403095:	89 45 e0             	mov    %eax,-0x20(%ebp)
  403098:	89 65 e4             	mov    %esp,-0x1c(%ebp)
  40309b:	89 1c 24             	mov    %ebx,(%esp)
  40309e:	e8 e5 09 00 00       	call   403a88 <_strlen>
  4030a3:	83 c0 10             	add    $0x10,%eax
  4030a6:	c1 e8 04             	shr    $0x4,%eax
  4030a9:	c1 e0 04             	shl    $0x4,%eax
  4030ac:	e8 af ef ff ff       	call   402060 <___chkstk_ms>
  4030b1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  4030b4:	29 c4                	sub    %eax,%esp
  4030b6:	8d 7c 24 04          	lea    0x4(%esp),%edi
  4030ba:	89 fa                	mov    %edi,%edx
  4030bc:	eb 0f                	jmp    4030cd <___mingw_glob+0x9d>
  4030be:	66 90                	xchg   %ax,%ax
  4030c0:	83 c2 01             	add    $0x1,%edx
  4030c3:	83 c3 01             	add    $0x1,%ebx
  4030c6:	84 c0                	test   %al,%al
  4030c8:	88 42 ff             	mov    %al,-0x1(%edx)
  4030cb:	74 1b                	je     4030e8 <___mingw_glob+0xb8>
  4030cd:	0f b6 03             	movzbl (%ebx),%eax
  4030d0:	3c 7f                	cmp    $0x7f,%al
  4030d2:	75 ec                	jne    4030c0 <___mingw_glob+0x90>
  4030d4:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
  4030d8:	83 c3 01             	add    $0x1,%ebx
  4030db:	83 c2 01             	add    $0x1,%edx
  4030de:	83 c3 01             	add    $0x1,%ebx
  4030e1:	84 c0                	test   %al,%al
  4030e3:	88 42 ff             	mov    %al,-0x1(%edx)
  4030e6:	75 e5                	jne    4030cd <___mingw_glob+0x9d>
  4030e8:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  4030eb:	89 3c 24             	mov    %edi,(%esp)
  4030ee:	e8 d5 0a 00 00       	call   403bc8 <_strdup>
  4030f3:	85 c0                	test   %eax,%eax
  4030f5:	8b 65 e4             	mov    -0x1c(%ebp),%esp
  4030f8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  4030fb:	0f 84 78 ff ff ff    	je     403079 <___mingw_glob+0x49>
  403101:	89 f2                	mov    %esi,%edx
  403103:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  403106:	e8 e5 f5 ff ff       	call   4026f0 <.text+0x5f0>
  40310b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  40310e:	e9 66 ff ff ff       	jmp    403079 <___mingw_glob+0x49>
  403113:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  403119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00403120 <___mingw_globfree>:
  403120:	57                   	push   %edi
  403121:	56                   	push   %esi
  403122:	53                   	push   %ebx
  403123:	83 ec 10             	sub    $0x10,%esp
  403126:	8b 74 24 20          	mov    0x20(%esp),%esi
  40312a:	81 3e 26 51 40 00    	cmpl   $0x405126,(%esi)
  403130:	74 0e                	je     403140 <___mingw_globfree+0x20>
  403132:	83 c4 10             	add    $0x10,%esp
  403135:	5b                   	pop    %ebx
  403136:	5e                   	pop    %esi
  403137:	5f                   	pop    %edi
  403138:	c3                   	ret    
  403139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  403140:	8b 46 04             	mov    0x4(%esi),%eax
  403143:	8b 56 0c             	mov    0xc(%esi),%edx
  403146:	85 c0                	test   %eax,%eax
  403148:	8d 78 ff             	lea    -0x1(%eax),%edi
  40314b:	8d 1c 95 00 00 00 00 	lea    0x0(,%edx,4),%ebx
  403152:	7e 19                	jle    40316d <___mingw_globfree+0x4d>
  403154:	8b 46 08             	mov    0x8(%esi),%eax
  403157:	83 ef 01             	sub    $0x1,%edi
  40315a:	8b 04 18             	mov    (%eax,%ebx,1),%eax
  40315d:	83 c3 04             	add    $0x4,%ebx
  403160:	89 04 24             	mov    %eax,(%esp)
  403163:	e8 70 09 00 00       	call   403ad8 <_free>
  403168:	83 ff ff             	cmp    $0xffffffff,%edi
  40316b:	75 e7                	jne    403154 <___mingw_globfree+0x34>
  40316d:	8b 46 08             	mov    0x8(%esi),%eax
  403170:	89 44 24 20          	mov    %eax,0x20(%esp)
  403174:	83 c4 10             	add    $0x10,%esp
  403177:	5b                   	pop    %ebx
  403178:	5e                   	pop    %esi
  403179:	5f                   	pop    %edi
  40317a:	e9 59 09 00 00       	jmp    403ad8 <_free>
  40317f:	90                   	nop

00403180 <___mingw_dirname>:
  403180:	55                   	push   %ebp
  403181:	89 e5                	mov    %esp,%ebp
  403183:	57                   	push   %edi
  403184:	56                   	push   %esi
  403185:	53                   	push   %ebx
  403186:	83 ec 2c             	sub    $0x2c,%esp
  403189:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  403190:	00 
  403191:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  403198:	e8 03 09 00 00       	call   403aa0 <_setlocale>
  40319d:	85 c0                	test   %eax,%eax
  40319f:	89 c3                	mov    %eax,%ebx
  4031a1:	74 0a                	je     4031ad <___mingw_dirname+0x2d>
  4031a3:	89 04 24             	mov    %eax,(%esp)
  4031a6:	e8 1d 0a 00 00       	call   403bc8 <_strdup>
  4031ab:	89 c3                	mov    %eax,%ebx
  4031ad:	c7 44 24 04 38 51 40 	movl   $0x405138,0x4(%esp)
  4031b4:	00 
  4031b5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  4031bc:	e8 df 08 00 00       	call   403aa0 <_setlocale>
  4031c1:	8b 75 08             	mov    0x8(%ebp),%esi
  4031c4:	85 f6                	test   %esi,%esi
  4031c6:	74 08                	je     4031d0 <___mingw_dirname+0x50>
  4031c8:	8b 45 08             	mov    0x8(%ebp),%eax
  4031cb:	80 38 00             	cmpb   $0x0,(%eax)
  4031ce:	75 71                	jne    403241 <___mingw_dirname+0xc1>
  4031d0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  4031d7:	00 
  4031d8:	c7 44 24 04 3a 51 40 	movl   $0x40513a,0x4(%esp)
  4031df:	00 
  4031e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  4031e7:	e8 84 08 00 00       	call   403a70 <_wcstombs>
  4031ec:	8d 70 01             	lea    0x1(%eax),%esi
  4031ef:	89 74 24 04          	mov    %esi,0x4(%esp)
  4031f3:	a1 68 70 40 00       	mov    0x407068,%eax
  4031f8:	89 04 24             	mov    %eax,(%esp)
  4031fb:	e8 a8 08 00 00       	call   403aa8 <_realloc>
  403200:	a3 68 70 40 00       	mov    %eax,0x407068
  403205:	89 74 24 08          	mov    %esi,0x8(%esp)
  403209:	c7 44 24 04 3a 51 40 	movl   $0x40513a,0x4(%esp)
  403210:	00 
  403211:	89 04 24             	mov    %eax,(%esp)
  403214:	e8 57 08 00 00       	call   403a70 <_wcstombs>
  403219:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  40321d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  403224:	e8 77 08 00 00       	call   403aa0 <_setlocale>
  403229:	89 1c 24             	mov    %ebx,(%esp)
  40322c:	e8 a7 08 00 00       	call   403ad8 <_free>
  403231:	8b 35 68 70 40 00    	mov    0x407068,%esi
  403237:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40323a:	5b                   	pop    %ebx
  40323b:	89 f0                	mov    %esi,%eax
  40323d:	5e                   	pop    %esi
  40323e:	5f                   	pop    %edi
  40323f:	5d                   	pop    %ebp
  403240:	c3                   	ret    
  403241:	89 65 dc             	mov    %esp,-0x24(%ebp)
  403244:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  40324b:	00 
  40324c:	8b 45 08             	mov    0x8(%ebp),%eax
  40324f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  403256:	89 44 24 04          	mov    %eax,0x4(%esp)
  40325a:	e8 61 08 00 00       	call   403ac0 <_mbstowcs>
  40325f:	89 c2                	mov    %eax,%edx
  403261:	8d 44 00 12          	lea    0x12(%eax,%eax,1),%eax
  403265:	c1 e8 04             	shr    $0x4,%eax
  403268:	c1 e0 04             	shl    $0x4,%eax
  40326b:	e8 f0 ed ff ff       	call   402060 <___chkstk_ms>
  403270:	29 c4                	sub    %eax,%esp
  403272:	89 54 24 08          	mov    %edx,0x8(%esp)
  403276:	8b 45 08             	mov    0x8(%ebp),%eax
  403279:	8d 7c 24 0c          	lea    0xc(%esp),%edi
  40327d:	89 3c 24             	mov    %edi,(%esp)
  403280:	89 44 24 04          	mov    %eax,0x4(%esp)
  403284:	e8 37 08 00 00       	call   403ac0 <_mbstowcs>
  403289:	31 c9                	xor    %ecx,%ecx
  40328b:	89 45 d8             	mov    %eax,-0x28(%ebp)
  40328e:	83 f8 01             	cmp    $0x1,%eax
  403291:	66 89 0c 47          	mov    %cx,(%edi,%eax,2)
  403295:	0f b7 07             	movzwl (%edi),%eax
  403298:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  40329b:	66 89 45 e2          	mov    %ax,-0x1e(%ebp)
  40329f:	76 1f                	jbe    4032c0 <___mingw_dirname+0x140>
  4032a1:	66 83 f8 2f          	cmp    $0x2f,%ax
  4032a5:	0f 84 1c 02 00 00    	je     4034c7 <___mingw_dirname+0x347>
  4032ab:	66 83 f8 5c          	cmp    $0x5c,%ax
  4032af:	0f 84 12 02 00 00    	je     4034c7 <___mingw_dirname+0x347>
  4032b5:	66 83 7f 02 3a       	cmpw   $0x3a,0x2(%edi)
  4032ba:	0f 84 4f 02 00 00    	je     40350f <___mingw_dirname+0x38f>
  4032c0:	0f b7 45 e2          	movzwl -0x1e(%ebp),%eax
  4032c4:	66 85 c0             	test   %ax,%ax
  4032c7:	0f 84 e1 00 00 00    	je     4033ae <___mingw_dirname+0x22e>
  4032cd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  4032d0:	89 c2                	mov    %eax,%edx
  4032d2:	89 ce                	mov    %ecx,%esi
  4032d4:	eb 1e                	jmp    4032f4 <___mingw_dirname+0x174>
  4032d6:	8d 76 00             	lea    0x0(%esi),%esi
  4032d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  4032e0:	66 83 fa 5c          	cmp    $0x5c,%dx
  4032e4:	89 c8                	mov    %ecx,%eax
  4032e6:	74 12                	je     4032fa <___mingw_dirname+0x17a>
  4032e8:	0f b7 50 02          	movzwl 0x2(%eax),%edx
  4032ec:	8d 48 02             	lea    0x2(%eax),%ecx
  4032ef:	66 85 d2             	test   %dx,%dx
  4032f2:	74 36                	je     40332a <___mingw_dirname+0x1aa>
  4032f4:	66 83 fa 2f          	cmp    $0x2f,%dx
  4032f8:	75 e6                	jne    4032e0 <___mingw_dirname+0x160>
  4032fa:	0f b7 11             	movzwl (%ecx),%edx
  4032fd:	89 c8                	mov    %ecx,%eax
  4032ff:	66 83 fa 2f          	cmp    $0x2f,%dx
  403303:	75 0c                	jne    403311 <___mingw_dirname+0x191>
  403305:	83 c0 02             	add    $0x2,%eax
  403308:	0f b7 10             	movzwl (%eax),%edx
  40330b:	66 83 fa 2f          	cmp    $0x2f,%dx
  40330f:	74 f4                	je     403305 <___mingw_dirname+0x185>
  403311:	66 83 fa 5c          	cmp    $0x5c,%dx
  403315:	74 ee                	je     403305 <___mingw_dirname+0x185>
  403317:	66 85 d2             	test   %dx,%dx
  40331a:	74 0e                	je     40332a <___mingw_dirname+0x1aa>
  40331c:	0f b7 50 02          	movzwl 0x2(%eax),%edx
  403320:	89 c6                	mov    %eax,%esi
  403322:	8d 48 02             	lea    0x2(%eax),%ecx
  403325:	66 85 d2             	test   %dx,%dx
  403328:	75 ca                	jne    4032f4 <___mingw_dirname+0x174>
  40332a:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  40332d:	0f 82 8d 00 00 00    	jb     4033c0 <___mingw_dirname+0x240>
  403333:	0f b7 45 e2          	movzwl -0x1e(%ebp),%eax
  403337:	66 83 f8 2f          	cmp    $0x2f,%ax
  40333b:	0f 84 e1 01 00 00    	je     403522 <___mingw_dirname+0x3a2>
  403341:	66 83 f8 5c          	cmp    $0x5c,%ax
  403345:	0f 84 d7 01 00 00    	je     403522 <___mingw_dirname+0x3a2>
  40334b:	8b 75 e4             	mov    -0x1c(%ebp),%esi
  40334e:	b9 2e 00 00 00       	mov    $0x2e,%ecx
  403353:	89 f0                	mov    %esi,%eax
  403355:	66 89 0e             	mov    %cx,(%esi)
  403358:	83 c0 02             	add    $0x2,%eax
  40335b:	31 d2                	xor    %edx,%edx
  40335d:	66 89 10             	mov    %dx,(%eax)
  403360:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  403367:	00 
  403368:	89 7c 24 04          	mov    %edi,0x4(%esp)
  40336c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  403373:	e8 f8 06 00 00       	call   403a70 <_wcstombs>
  403378:	8d 50 01             	lea    0x1(%eax),%edx
  40337b:	89 54 24 04          	mov    %edx,0x4(%esp)
  40337f:	a1 68 70 40 00       	mov    0x407068,%eax
  403384:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  403387:	89 04 24             	mov    %eax,(%esp)
  40338a:	e8 19 07 00 00       	call   403aa8 <_realloc>
  40338f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  403392:	a3 68 70 40 00       	mov    %eax,0x407068
  403397:	89 c6                	mov    %eax,%esi
  403399:	89 7c 24 04          	mov    %edi,0x4(%esp)
  40339d:	89 04 24             	mov    %eax,(%esp)
  4033a0:	89 54 24 08          	mov    %edx,0x8(%esp)
  4033a4:	e8 c7 06 00 00       	call   403a70 <_wcstombs>
  4033a9:	e9 c2 00 00 00       	jmp    403470 <___mingw_dirname+0x2f0>
  4033ae:	8b 65 dc             	mov    -0x24(%ebp),%esp
  4033b1:	e9 1a fe ff ff       	jmp    4031d0 <___mingw_dirname+0x50>
  4033b6:	8d 76 00             	lea    0x0(%esi),%esi
  4033b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  4033c0:	8d 46 fe             	lea    -0x2(%esi),%eax
  4033c3:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
  4033c6:	0f 83 61 01 00 00    	jae    40352d <___mingw_dirname+0x3ad>
  4033cc:	0f b7 56 fe          	movzwl -0x2(%esi),%edx
  4033d0:	89 c6                	mov    %eax,%esi
  4033d2:	66 83 fa 2f          	cmp    $0x2f,%dx
  4033d6:	74 e8                	je     4033c0 <___mingw_dirname+0x240>
  4033d8:	66 83 fa 5c          	cmp    $0x5c,%dx
  4033dc:	74 e2                	je     4033c0 <___mingw_dirname+0x240>
  4033de:	31 d2                	xor    %edx,%edx
  4033e0:	89 f9                	mov    %edi,%ecx
  4033e2:	66 89 50 02          	mov    %dx,0x2(%eax)
  4033e6:	0f b7 17             	movzwl (%edi),%edx
  4033e9:	66 83 fa 2f          	cmp    $0x2f,%dx
  4033ed:	74 11                	je     403400 <___mingw_dirname+0x280>
  4033ef:	66 83 fa 5c          	cmp    $0x5c,%dx
  4033f3:	0f 85 04 01 00 00    	jne    4034fd <___mingw_dirname+0x37d>
  4033f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  403400:	83 c1 02             	add    $0x2,%ecx
  403403:	0f b7 01             	movzwl (%ecx),%eax
  403406:	66 83 f8 2f          	cmp    $0x2f,%ax
  40340a:	74 f4                	je     403400 <___mingw_dirname+0x280>
  40340c:	66 83 f8 5c          	cmp    $0x5c,%ax
  403410:	74 ee                	je     403400 <___mingw_dirname+0x280>
  403412:	89 c8                	mov    %ecx,%eax
  403414:	29 f8                	sub    %edi,%eax
  403416:	83 f8 05             	cmp    $0x5,%eax
  403419:	0f 8e de 00 00 00    	jle    4034fd <___mingw_dirname+0x37d>
  40341f:	89 f9                	mov    %edi,%ecx
  403421:	89 c8                	mov    %ecx,%eax
  403423:	66 85 d2             	test   %dx,%dx
  403426:	74 21                	je     403449 <___mingw_dirname+0x2c9>
  403428:	83 c1 02             	add    $0x2,%ecx
  40342b:	66 83 fa 2f          	cmp    $0x2f,%dx
  40342f:	66 89 51 fe          	mov    %dx,-0x2(%ecx)
  403433:	74 62                	je     403497 <___mingw_dirname+0x317>
  403435:	66 83 38 5c          	cmpw   $0x5c,(%eax)
  403439:	8d 70 02             	lea    0x2(%eax),%esi
  40343c:	74 57                	je     403495 <___mingw_dirname+0x315>
  40343e:	0f b7 50 02          	movzwl 0x2(%eax),%edx
  403442:	89 f0                	mov    %esi,%eax
  403444:	66 85 d2             	test   %dx,%dx
  403447:	75 df                	jne    403428 <___mingw_dirname+0x2a8>
  403449:	8b 45 d8             	mov    -0x28(%ebp),%eax
  40344c:	31 f6                	xor    %esi,%esi
  40344e:	66 89 31             	mov    %si,(%ecx)
  403451:	89 7c 24 04          	mov    %edi,0x4(%esp)
  403455:	89 44 24 08          	mov    %eax,0x8(%esp)
  403459:	8b 45 08             	mov    0x8(%ebp),%eax
  40345c:	89 04 24             	mov    %eax,(%esp)
  40345f:	e8 0c 06 00 00       	call   403a70 <_wcstombs>
  403464:	83 f8 ff             	cmp    $0xffffffff,%eax
  403467:	8b 75 08             	mov    0x8(%ebp),%esi
  40346a:	74 04                	je     403470 <___mingw_dirname+0x2f0>
  40346c:	c6 04 06 00          	movb   $0x0,(%esi,%eax,1)
  403470:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  403474:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  40347b:	e8 20 06 00 00       	call   403aa0 <_setlocale>
  403480:	89 1c 24             	mov    %ebx,(%esp)
  403483:	e8 50 06 00 00       	call   403ad8 <_free>
  403488:	8b 65 dc             	mov    -0x24(%ebp),%esp
  40348b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40348e:	89 f0                	mov    %esi,%eax
  403490:	5b                   	pop    %ebx
  403491:	5e                   	pop    %esi
  403492:	5f                   	pop    %edi
  403493:	5d                   	pop    %ebp
  403494:	c3                   	ret    
  403495:	89 f0                	mov    %esi,%eax
  403497:	0f b7 10             	movzwl (%eax),%edx
  40349a:	66 83 fa 5c          	cmp    $0x5c,%dx
  40349e:	74 10                	je     4034b0 <___mingw_dirname+0x330>
  4034a0:	66 83 fa 2f          	cmp    $0x2f,%dx
  4034a4:	0f 85 79 ff ff ff    	jne    403423 <___mingw_dirname+0x2a3>
  4034aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4034b0:	83 c0 02             	add    $0x2,%eax
  4034b3:	0f b7 10             	movzwl (%eax),%edx
  4034b6:	66 83 fa 2f          	cmp    $0x2f,%dx
  4034ba:	74 f4                	je     4034b0 <___mingw_dirname+0x330>
  4034bc:	66 83 fa 5c          	cmp    $0x5c,%dx
  4034c0:	74 ee                	je     4034b0 <___mingw_dirname+0x330>
  4034c2:	e9 5c ff ff ff       	jmp    403423 <___mingw_dirname+0x2a3>
  4034c7:	0f b7 45 e2          	movzwl -0x1e(%ebp),%eax
  4034cb:	66 3b 47 02          	cmp    0x2(%edi),%ax
  4034cf:	0f 85 eb fd ff ff    	jne    4032c0 <___mingw_dirname+0x140>
  4034d5:	66 83 7f 04 00       	cmpw   $0x0,0x4(%edi)
  4034da:	0f 85 e0 fd ff ff    	jne    4032c0 <___mingw_dirname+0x140>
  4034e0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  4034e4:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  4034eb:	e8 b0 05 00 00       	call   403aa0 <_setlocale>
  4034f0:	89 1c 24             	mov    %ebx,(%esp)
  4034f3:	e8 e0 05 00 00       	call   403ad8 <_free>
  4034f8:	8b 75 08             	mov    0x8(%ebp),%esi
  4034fb:	eb 8b                	jmp    403488 <___mingw_dirname+0x308>
  4034fd:	66 39 57 02          	cmp    %dx,0x2(%edi)
  403501:	0f 85 18 ff ff ff    	jne    40341f <___mingw_dirname+0x29f>
  403507:	0f b7 11             	movzwl (%ecx),%edx
  40350a:	e9 12 ff ff ff       	jmp    403421 <___mingw_dirname+0x2a1>
  40350f:	8d 47 04             	lea    0x4(%edi),%eax
  403512:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  403515:	0f b7 47 04          	movzwl 0x4(%edi),%eax
  403519:	66 89 45 e2          	mov    %ax,-0x1e(%ebp)
  40351d:	e9 9e fd ff ff       	jmp    4032c0 <___mingw_dirname+0x140>
  403522:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  403525:	83 c0 02             	add    $0x2,%eax
  403528:	e9 2e fe ff ff       	jmp    40335b <___mingw_dirname+0x1db>
  40352d:	0f 85 ab fe ff ff    	jne    4033de <___mingw_dirname+0x25e>
  403533:	0f b7 4d e2          	movzwl -0x1e(%ebp),%ecx
  403537:	66 83 f9 2f          	cmp    $0x2f,%cx
  40353b:	74 0a                	je     403547 <___mingw_dirname+0x3c7>
  40353d:	66 83 f9 5c          	cmp    $0x5c,%cx
  403541:	0f 85 97 fe ff ff    	jne    4033de <___mingw_dirname+0x25e>
  403547:	0f b7 4d e2          	movzwl -0x1e(%ebp),%ecx
  40354b:	66 39 48 02          	cmp    %cx,0x2(%eax)
  40354f:	0f 85 89 fe ff ff    	jne    4033de <___mingw_dirname+0x25e>
  403555:	0f b7 50 04          	movzwl 0x4(%eax),%edx
  403559:	66 83 fa 2f          	cmp    $0x2f,%dx
  40355d:	0f 84 7b fe ff ff    	je     4033de <___mingw_dirname+0x25e>
  403563:	66 83 fa 5c          	cmp    $0x5c,%dx
  403567:	0f 84 71 fe ff ff    	je     4033de <___mingw_dirname+0x25e>
  40356d:	89 f0                	mov    %esi,%eax
  40356f:	e9 6a fe ff ff       	jmp    4033de <___mingw_dirname+0x25e>
  403574:	90                   	nop
  403575:	90                   	nop
  403576:	90                   	nop
  403577:	90                   	nop
  403578:	90                   	nop
  403579:	90                   	nop
  40357a:	90                   	nop
  40357b:	90                   	nop
  40357c:	90                   	nop
  40357d:	90                   	nop
  40357e:	90                   	nop
  40357f:	90                   	nop

00403580 <.text>:
  403580:	56                   	push   %esi
  403581:	53                   	push   %ebx
  403582:	89 d3                	mov    %edx,%ebx
  403584:	81 ec 54 01 00 00    	sub    $0x154,%esp
  40358a:	8d 54 24 10          	lea    0x10(%esp),%edx
  40358e:	89 04 24             	mov    %eax,(%esp)
  403591:	89 54 24 04          	mov    %edx,0x4(%esp)
  403595:	e8 fe 05 00 00       	call   403b98 <_FindFirstFileA@8>
  40359a:	83 ec 08             	sub    $0x8,%esp
  40359d:	83 f8 ff             	cmp    $0xffffffff,%eax
  4035a0:	89 c6                	mov    %eax,%esi
  4035a2:	74 5a                	je     4035fe <.text+0x7e>
  4035a4:	31 c0                	xor    %eax,%eax
  4035a6:	8d 4b 0c             	lea    0xc(%ebx),%ecx
  4035a9:	66 89 43 06          	mov    %ax,0x6(%ebx)
  4035ad:	31 c0                	xor    %eax,%eax
  4035af:	eb 12                	jmp    4035c3 <.text+0x43>
  4035b1:	0f b7 43 06          	movzwl 0x6(%ebx),%eax
  4035b5:	83 c0 01             	add    $0x1,%eax
  4035b8:	66 3d 04 01          	cmp    $0x104,%ax
  4035bc:	66 89 43 06          	mov    %ax,0x6(%ebx)
  4035c0:	83 d1 00             	adc    $0x0,%ecx
  4035c3:	0f b7 c0             	movzwl %ax,%eax
  4035c6:	0f b6 44 04 3c       	movzbl 0x3c(%esp,%eax,1),%eax
  4035cb:	84 c0                	test   %al,%al
  4035cd:	88 01                	mov    %al,(%ecx)
  4035cf:	75 e0                	jne    4035b1 <.text+0x31>
  4035d1:	8b 44 24 10          	mov    0x10(%esp),%eax
  4035d5:	24 58                	and    $0x58,%al
  4035d7:	83 f8 10             	cmp    $0x10,%eax
  4035da:	76 14                	jbe    4035f0 <.text+0x70>
  4035dc:	c7 43 08 18 00 00 00 	movl   $0x18,0x8(%ebx)
  4035e3:	81 c4 54 01 00 00    	add    $0x154,%esp
  4035e9:	89 f0                	mov    %esi,%eax
  4035eb:	5b                   	pop    %ebx
  4035ec:	5e                   	pop    %esi
  4035ed:	c3                   	ret    
  4035ee:	66 90                	xchg   %ax,%ax
  4035f0:	89 43 08             	mov    %eax,0x8(%ebx)
  4035f3:	81 c4 54 01 00 00    	add    $0x154,%esp
  4035f9:	89 f0                	mov    %esi,%eax
  4035fb:	5b                   	pop    %ebx
  4035fc:	5e                   	pop    %esi
  4035fd:	c3                   	ret    
  4035fe:	e8 05 05 00 00       	call   403b08 <__errno>
  403603:	89 c3                	mov    %eax,%ebx
  403605:	e8 6e 05 00 00       	call   403b78 <_GetLastError@0>
  40360a:	83 f8 03             	cmp    $0x3,%eax
  40360d:	89 03                	mov    %eax,(%ebx)
  40360f:	74 31                	je     403642 <.text+0xc2>
  403611:	e8 f2 04 00 00       	call   403b08 <__errno>
  403616:	81 38 0b 01 00 00    	cmpl   $0x10b,(%eax)
  40361c:	74 17                	je     403635 <.text+0xb5>
  40361e:	e8 e5 04 00 00       	call   403b08 <__errno>
  403623:	83 38 02             	cmpl   $0x2,(%eax)
  403626:	74 bb                	je     4035e3 <.text+0x63>
  403628:	e8 db 04 00 00       	call   403b08 <__errno>
  40362d:	c7 00 16 00 00 00    	movl   $0x16,(%eax)
  403633:	eb ae                	jmp    4035e3 <.text+0x63>
  403635:	e8 ce 04 00 00       	call   403b08 <__errno>
  40363a:	c7 00 14 00 00 00    	movl   $0x14,(%eax)
  403640:	eb a1                	jmp    4035e3 <.text+0x63>
  403642:	e8 c1 04 00 00       	call   403b08 <__errno>
  403647:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  40364d:	eb 94                	jmp    4035e3 <.text+0x63>
  40364f:	90                   	nop
  403650:	56                   	push   %esi
  403651:	53                   	push   %ebx
  403652:	89 d3                	mov    %edx,%ebx
  403654:	81 ec 54 01 00 00    	sub    $0x154,%esp
  40365a:	8d 54 24 10          	lea    0x10(%esp),%edx
  40365e:	89 04 24             	mov    %eax,(%esp)
  403661:	89 54 24 04          	mov    %edx,0x4(%esp)
  403665:	e8 26 05 00 00       	call   403b90 <_FindNextFileA@8>
  40366a:	83 ec 08             	sub    $0x8,%esp
  40366d:	85 c0                	test   %eax,%eax
  40366f:	89 c6                	mov    %eax,%esi
  403671:	74 5f                	je     4036d2 <.text+0x152>
  403673:	31 c0                	xor    %eax,%eax
  403675:	8d 4b 0c             	lea    0xc(%ebx),%ecx
  403678:	66 89 43 06          	mov    %ax,0x6(%ebx)
  40367c:	31 c0                	xor    %eax,%eax
  40367e:	eb 12                	jmp    403692 <.text+0x112>
  403680:	0f b7 43 06          	movzwl 0x6(%ebx),%eax
  403684:	83 c0 01             	add    $0x1,%eax
  403687:	66 3d 04 01          	cmp    $0x104,%ax
  40368b:	66 89 43 06          	mov    %ax,0x6(%ebx)
  40368f:	83 d1 00             	adc    $0x0,%ecx
  403692:	0f b7 c0             	movzwl %ax,%eax
  403695:	0f b6 44 04 3c       	movzbl 0x3c(%esp,%eax,1),%eax
  40369a:	84 c0                	test   %al,%al
  40369c:	88 01                	mov    %al,(%ecx)
  40369e:	75 e0                	jne    403680 <.text+0x100>
  4036a0:	8b 44 24 10          	mov    0x10(%esp),%eax
  4036a4:	24 58                	and    $0x58,%al
  4036a6:	83 f8 10             	cmp    $0x10,%eax
  4036a9:	77 15                	ja     4036c0 <.text+0x140>
  4036ab:	89 43 08             	mov    %eax,0x8(%ebx)
  4036ae:	81 c4 54 01 00 00    	add    $0x154,%esp
  4036b4:	89 f0                	mov    %esi,%eax
  4036b6:	5b                   	pop    %ebx
  4036b7:	5e                   	pop    %esi
  4036b8:	c3                   	ret    
  4036b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4036c0:	c7 43 08 18 00 00 00 	movl   $0x18,0x8(%ebx)
  4036c7:	81 c4 54 01 00 00    	add    $0x154,%esp
  4036cd:	89 f0                	mov    %esi,%eax
  4036cf:	5b                   	pop    %ebx
  4036d0:	5e                   	pop    %esi
  4036d1:	c3                   	ret    
  4036d2:	e8 a1 04 00 00       	call   403b78 <_GetLastError@0>
  4036d7:	83 f8 12             	cmp    $0x12,%eax
  4036da:	74 d2                	je     4036ae <.text+0x12e>
  4036dc:	e8 27 04 00 00       	call   403b08 <__errno>
  4036e1:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  4036e7:	81 c4 54 01 00 00    	add    $0x154,%esp
  4036ed:	89 f0                	mov    %esi,%eax
  4036ef:	5b                   	pop    %ebx
  4036f0:	5e                   	pop    %esi
  4036f1:	c3                   	ret    
  4036f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4036f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00403700 <___mingw_opendir>:
  403700:	55                   	push   %ebp
  403701:	57                   	push   %edi
  403702:	56                   	push   %esi
  403703:	53                   	push   %ebx
  403704:	81 ec 2c 01 00 00    	sub    $0x12c,%esp
  40370a:	8b 84 24 40 01 00 00 	mov    0x140(%esp),%eax
  403711:	85 c0                	test   %eax,%eax
  403713:	0f 84 83 01 00 00    	je     40389c <___mingw_opendir+0x19c>
  403719:	80 38 00             	cmpb   $0x0,(%eax)
  40371c:	0f 84 5e 01 00 00    	je     403880 <___mingw_opendir+0x180>
  403722:	8d 7c 24 1c          	lea    0x1c(%esp),%edi
  403726:	c7 44 24 08 04 01 00 	movl   $0x104,0x8(%esp)
  40372d:	00 
  40372e:	89 44 24 04          	mov    %eax,0x4(%esp)
  403732:	89 3c 24             	mov    %edi,(%esp)
  403735:	e8 c6 03 00 00       	call   403b00 <__fullpath>
  40373a:	80 7c 24 1c 00       	cmpb   $0x0,0x1c(%esp)
  40373f:	89 f8                	mov    %edi,%eax
  403741:	74 4d                	je     403790 <___mingw_opendir+0x90>
  403743:	8b 08                	mov    (%eax),%ecx
  403745:	83 c0 04             	add    $0x4,%eax
  403748:	8d 91 ff fe fe fe    	lea    -0x1010101(%ecx),%edx
  40374e:	f7 d1                	not    %ecx
  403750:	21 ca                	and    %ecx,%edx
  403752:	81 e2 80 80 80 80    	and    $0x80808080,%edx
  403758:	74 e9                	je     403743 <___mingw_opendir+0x43>
  40375a:	f7 c2 80 80 00 00    	test   $0x8080,%edx
  403760:	0f 84 0a 01 00 00    	je     403870 <___mingw_opendir+0x170>
  403766:	89 d1                	mov    %edx,%ecx
  403768:	00 d1                	add    %dl,%cl
  40376a:	83 d8 03             	sbb    $0x3,%eax
  40376d:	29 f8                	sub    %edi,%eax
  40376f:	0f b6 54 04 1b       	movzbl 0x1b(%esp,%eax,1),%edx
  403774:	80 fa 2f             	cmp    $0x2f,%dl
  403777:	74 43                	je     4037bc <___mingw_opendir+0xbc>
  403779:	80 fa 5c             	cmp    $0x5c,%dl
  40377c:	74 3e                	je     4037bc <___mingw_opendir+0xbc>
  40377e:	b9 5c 00 00 00       	mov    $0x5c,%ecx
  403783:	66 89 0c 07          	mov    %cx,(%edi,%eax,1)
  403787:	83 c0 01             	add    $0x1,%eax
  40378a:	eb 30                	jmp    4037bc <___mingw_opendir+0xbc>
  40378c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  403790:	8b 08                	mov    (%eax),%ecx
  403792:	83 c0 04             	add    $0x4,%eax
  403795:	8d 91 ff fe fe fe    	lea    -0x1010101(%ecx),%edx
  40379b:	f7 d1                	not    %ecx
  40379d:	21 ca                	and    %ecx,%edx
  40379f:	81 e2 80 80 80 80    	and    $0x80808080,%edx
  4037a5:	74 e9                	je     403790 <___mingw_opendir+0x90>
  4037a7:	f7 c2 80 80 00 00    	test   $0x8080,%edx
  4037ad:	0f 84 ad 00 00 00    	je     403860 <___mingw_opendir+0x160>
  4037b3:	89 d1                	mov    %edx,%ecx
  4037b5:	00 d1                	add    %dl,%cl
  4037b7:	83 d8 03             	sbb    $0x3,%eax
  4037ba:	29 f8                	sub    %edi,%eax
  4037bc:	ba 2a 00 00 00       	mov    $0x2a,%edx
  4037c1:	89 fb                	mov    %edi,%ebx
  4037c3:	66 89 14 07          	mov    %dx,(%edi,%eax,1)
  4037c7:	8b 13                	mov    (%ebx),%edx
  4037c9:	83 c3 04             	add    $0x4,%ebx
  4037cc:	8d 82 ff fe fe fe    	lea    -0x1010101(%edx),%eax
  4037d2:	f7 d2                	not    %edx
  4037d4:	21 d0                	and    %edx,%eax
  4037d6:	25 80 80 80 80       	and    $0x80808080,%eax
  4037db:	74 ea                	je     4037c7 <___mingw_opendir+0xc7>
  4037dd:	a9 80 80 00 00       	test   $0x8080,%eax
  4037e2:	75 06                	jne    4037ea <___mingw_opendir+0xea>
  4037e4:	c1 e8 10             	shr    $0x10,%eax
  4037e7:	83 c3 02             	add    $0x2,%ebx
  4037ea:	89 c1                	mov    %eax,%ecx
  4037ec:	00 c1                	add    %al,%cl
  4037ee:	83 db 03             	sbb    $0x3,%ebx
  4037f1:	29 fb                	sub    %edi,%ebx
  4037f3:	8d 83 1c 01 00 00    	lea    0x11c(%ebx),%eax
  4037f9:	89 04 24             	mov    %eax,(%esp)
  4037fc:	e8 c7 02 00 00       	call   403ac8 <_malloc>
  403801:	85 c0                	test   %eax,%eax
  403803:	89 c6                	mov    %eax,%esi
  403805:	0f 84 84 00 00 00    	je     40388f <___mingw_opendir+0x18f>
  40380b:	8d a8 18 01 00 00    	lea    0x118(%eax),%ebp
  403811:	83 c3 01             	add    $0x1,%ebx
  403814:	89 7c 24 04          	mov    %edi,0x4(%esp)
  403818:	89 5c 24 08          	mov    %ebx,0x8(%esp)
  40381c:	89 2c 24             	mov    %ebp,(%esp)
  40381f:	e8 94 02 00 00       	call   403ab8 <_memcpy>
  403824:	89 f2                	mov    %esi,%edx
  403826:	89 e8                	mov    %ebp,%eax
  403828:	e8 53 fd ff ff       	call   403580 <.text>
  40382d:	83 f8 ff             	cmp    $0xffffffff,%eax
  403830:	89 86 10 01 00 00    	mov    %eax,0x110(%esi)
  403836:	74 73                	je     4038ab <___mingw_opendir+0x1ab>
  403838:	b8 10 01 00 00       	mov    $0x110,%eax
  40383d:	c7 86 14 01 00 00 00 	movl   $0x0,0x114(%esi)
  403844:	00 00 00 
  403847:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
  40384d:	66 89 46 04          	mov    %ax,0x4(%esi)
  403851:	81 c4 2c 01 00 00    	add    $0x12c,%esp
  403857:	89 f0                	mov    %esi,%eax
  403859:	5b                   	pop    %ebx
  40385a:	5e                   	pop    %esi
  40385b:	5f                   	pop    %edi
  40385c:	5d                   	pop    %ebp
  40385d:	c3                   	ret    
  40385e:	66 90                	xchg   %ax,%ax
  403860:	c1 ea 10             	shr    $0x10,%edx
  403863:	83 c0 02             	add    $0x2,%eax
  403866:	e9 48 ff ff ff       	jmp    4037b3 <___mingw_opendir+0xb3>
  40386b:	90                   	nop
  40386c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  403870:	c1 ea 10             	shr    $0x10,%edx
  403873:	83 c0 02             	add    $0x2,%eax
  403876:	e9 eb fe ff ff       	jmp    403766 <___mingw_opendir+0x66>
  40387b:	90                   	nop
  40387c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  403880:	e8 83 02 00 00       	call   403b08 <__errno>
  403885:	31 f6                	xor    %esi,%esi
  403887:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  40388d:	eb c2                	jmp    403851 <___mingw_opendir+0x151>
  40388f:	e8 74 02 00 00       	call   403b08 <__errno>
  403894:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
  40389a:	eb b5                	jmp    403851 <___mingw_opendir+0x151>
  40389c:	e8 67 02 00 00       	call   403b08 <__errno>
  4038a1:	31 f6                	xor    %esi,%esi
  4038a3:	c7 00 16 00 00 00    	movl   $0x16,(%eax)
  4038a9:	eb a6                	jmp    403851 <___mingw_opendir+0x151>
  4038ab:	89 34 24             	mov    %esi,(%esp)
  4038ae:	31 f6                	xor    %esi,%esi
  4038b0:	e8 23 02 00 00       	call   403ad8 <_free>
  4038b5:	eb 9a                	jmp    403851 <___mingw_opendir+0x151>
  4038b7:	89 f6                	mov    %esi,%esi
  4038b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

004038c0 <___mingw_readdir>:
  4038c0:	53                   	push   %ebx
  4038c1:	83 ec 08             	sub    $0x8,%esp
  4038c4:	8b 5c 24 10          	mov    0x10(%esp),%ebx
  4038c8:	85 db                	test   %ebx,%ebx
  4038ca:	74 2b                	je     4038f7 <___mingw_readdir+0x37>
  4038cc:	8b 83 14 01 00 00    	mov    0x114(%ebx),%eax
  4038d2:	8d 50 01             	lea    0x1(%eax),%edx
  4038d5:	85 c0                	test   %eax,%eax
  4038d7:	89 93 14 01 00 00    	mov    %edx,0x114(%ebx)
  4038dd:	7e 11                	jle    4038f0 <___mingw_readdir+0x30>
  4038df:	8b 83 10 01 00 00    	mov    0x110(%ebx),%eax
  4038e5:	89 da                	mov    %ebx,%edx
  4038e7:	e8 64 fd ff ff       	call   403650 <.text+0xd0>
  4038ec:	85 c0                	test   %eax,%eax
  4038ee:	74 02                	je     4038f2 <___mingw_readdir+0x32>
  4038f0:	89 d8                	mov    %ebx,%eax
  4038f2:	83 c4 08             	add    $0x8,%esp
  4038f5:	5b                   	pop    %ebx
  4038f6:	c3                   	ret    
  4038f7:	e8 0c 02 00 00       	call   403b08 <__errno>
  4038fc:	c7 00 09 00 00 00    	movl   $0x9,(%eax)
  403902:	31 c0                	xor    %eax,%eax
  403904:	eb ec                	jmp    4038f2 <___mingw_readdir+0x32>
  403906:	8d 76 00             	lea    0x0(%esi),%esi
  403909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00403910 <___mingw_closedir>:
  403910:	53                   	push   %ebx
  403911:	83 ec 18             	sub    $0x18,%esp
  403914:	8b 5c 24 20          	mov    0x20(%esp),%ebx
  403918:	85 db                	test   %ebx,%ebx
  40391a:	74 24                	je     403940 <___mingw_closedir+0x30>
  40391c:	8b 83 10 01 00 00    	mov    0x110(%ebx),%eax
  403922:	89 04 24             	mov    %eax,(%esp)
  403925:	e8 76 02 00 00       	call   403ba0 <_FindClose@4>
  40392a:	83 ec 04             	sub    $0x4,%esp
  40392d:	85 c0                	test   %eax,%eax
  40392f:	74 0f                	je     403940 <___mingw_closedir+0x30>
  403931:	89 1c 24             	mov    %ebx,(%esp)
  403934:	e8 9f 01 00 00       	call   403ad8 <_free>
  403939:	31 c0                	xor    %eax,%eax
  40393b:	83 c4 18             	add    $0x18,%esp
  40393e:	5b                   	pop    %ebx
  40393f:	c3                   	ret    
  403940:	e8 c3 01 00 00       	call   403b08 <__errno>
  403945:	c7 00 09 00 00 00    	movl   $0x9,(%eax)
  40394b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403950:	eb e9                	jmp    40393b <___mingw_closedir+0x2b>
  403952:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  403959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00403960 <___mingw_rewinddir>:
  403960:	53                   	push   %ebx
  403961:	83 ec 18             	sub    $0x18,%esp
  403964:	8b 5c 24 20          	mov    0x20(%esp),%ebx
  403968:	85 db                	test   %ebx,%ebx
  40396a:	74 15                	je     403981 <___mingw_rewinddir+0x21>
  40396c:	8b 83 10 01 00 00    	mov    0x110(%ebx),%eax
  403972:	89 04 24             	mov    %eax,(%esp)
  403975:	e8 26 02 00 00       	call   403ba0 <_FindClose@4>
  40397a:	83 ec 04             	sub    $0x4,%esp
  40397d:	85 c0                	test   %eax,%eax
  40397f:	75 10                	jne    403991 <___mingw_rewinddir+0x31>
  403981:	e8 82 01 00 00       	call   403b08 <__errno>
  403986:	c7 00 09 00 00 00    	movl   $0x9,(%eax)
  40398c:	83 c4 18             	add    $0x18,%esp
  40398f:	5b                   	pop    %ebx
  403990:	c3                   	ret    
  403991:	8d 83 18 01 00 00    	lea    0x118(%ebx),%eax
  403997:	89 da                	mov    %ebx,%edx
  403999:	e8 e2 fb ff ff       	call   403580 <.text>
  40399e:	83 f8 ff             	cmp    $0xffffffff,%eax
  4039a1:	89 83 10 01 00 00    	mov    %eax,0x110(%ebx)
  4039a7:	74 e3                	je     40398c <___mingw_rewinddir+0x2c>
  4039a9:	c7 83 14 01 00 00 00 	movl   $0x0,0x114(%ebx)
  4039b0:	00 00 00 
  4039b3:	83 c4 18             	add    $0x18,%esp
  4039b6:	5b                   	pop    %ebx
  4039b7:	c3                   	ret    
  4039b8:	90                   	nop
  4039b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

004039c0 <___mingw_telldir>:
  4039c0:	83 ec 0c             	sub    $0xc,%esp
  4039c3:	8b 44 24 10          	mov    0x10(%esp),%eax
  4039c7:	85 c0                	test   %eax,%eax
  4039c9:	74 0a                	je     4039d5 <___mingw_telldir+0x15>
  4039cb:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
  4039d1:	83 c4 0c             	add    $0xc,%esp
  4039d4:	c3                   	ret    
  4039d5:	e8 2e 01 00 00       	call   403b08 <__errno>
  4039da:	c7 00 09 00 00 00    	movl   $0x9,(%eax)
  4039e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4039e5:	eb ea                	jmp    4039d1 <___mingw_telldir+0x11>
  4039e7:	89 f6                	mov    %esi,%esi
  4039e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

004039f0 <___mingw_seekdir>:
  4039f0:	56                   	push   %esi
  4039f1:	53                   	push   %ebx
  4039f2:	83 ec 14             	sub    $0x14,%esp
  4039f5:	8b 74 24 24          	mov    0x24(%esp),%esi
  4039f9:	8b 5c 24 20          	mov    0x20(%esp),%ebx
  4039fd:	85 f6                	test   %esi,%esi
  4039ff:	78 4f                	js     403a50 <___mingw_seekdir+0x60>
  403a01:	89 1c 24             	mov    %ebx,(%esp)
  403a04:	e8 57 ff ff ff       	call   403960 <___mingw_rewinddir>
  403a09:	85 f6                	test   %esi,%esi
  403a0b:	74 37                	je     403a44 <___mingw_seekdir+0x54>
  403a0d:	83 bb 10 01 00 00 ff 	cmpl   $0xffffffff,0x110(%ebx)
  403a14:	75 1b                	jne    403a31 <___mingw_seekdir+0x41>
  403a16:	eb 2c                	jmp    403a44 <___mingw_seekdir+0x54>
  403a18:	90                   	nop
  403a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  403a20:	8b 83 10 01 00 00    	mov    0x110(%ebx),%eax
  403a26:	89 da                	mov    %ebx,%edx
  403a28:	e8 23 fc ff ff       	call   403650 <.text+0xd0>
  403a2d:	85 c0                	test   %eax,%eax
  403a2f:	74 13                	je     403a44 <___mingw_seekdir+0x54>
  403a31:	8b 83 14 01 00 00    	mov    0x114(%ebx),%eax
  403a37:	83 c0 01             	add    $0x1,%eax
  403a3a:	39 c6                	cmp    %eax,%esi
  403a3c:	89 83 14 01 00 00    	mov    %eax,0x114(%ebx)
  403a42:	7f dc                	jg     403a20 <___mingw_seekdir+0x30>
  403a44:	83 c4 14             	add    $0x14,%esp
  403a47:	5b                   	pop    %ebx
  403a48:	5e                   	pop    %esi
  403a49:	c3                   	ret    
  403a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  403a50:	e8 b3 00 00 00       	call   403b08 <__errno>
  403a55:	c7 00 16 00 00 00    	movl   $0x16,(%eax)
  403a5b:	83 c4 14             	add    $0x14,%esp
  403a5e:	5b                   	pop    %ebx
  403a5f:	5e                   	pop    %esi
  403a60:	c3                   	ret    
  403a61:	90                   	nop
  403a62:	90                   	nop
  403a63:	90                   	nop
  403a64:	90                   	nop
  403a65:	90                   	nop
  403a66:	90                   	nop
  403a67:	90                   	nop
  403a68:	90                   	nop
  403a69:	90                   	nop
  403a6a:	90                   	nop
  403a6b:	90                   	nop
  403a6c:	90                   	nop
  403a6d:	90                   	nop
  403a6e:	90                   	nop
  403a6f:	90                   	nop

00403a70 <_wcstombs>:
  403a70:	ff 25 f8 81 40 00    	jmp    *0x4081f8
  403a76:	90                   	nop
  403a77:	90                   	nop

00403a78 <_vfprintf>:
  403a78:	ff 25 f4 81 40 00    	jmp    *0x4081f4
  403a7e:	90                   	nop
  403a7f:	90                   	nop

00403a80 <_tolower>:
  403a80:	ff 25 f0 81 40 00    	jmp    *0x4081f0
  403a86:	90                   	nop
  403a87:	90                   	nop

00403a88 <_strlen>:
  403a88:	ff 25 ec 81 40 00    	jmp    *0x4081ec
  403a8e:	90                   	nop
  403a8f:	90                   	nop

00403a90 <_strcoll>:
  403a90:	ff 25 e8 81 40 00    	jmp    *0x4081e8
  403a96:	90                   	nop
  403a97:	90                   	nop

00403a98 <_signal>:
  403a98:	ff 25 e4 81 40 00    	jmp    *0x4081e4
  403a9e:	90                   	nop
  403a9f:	90                   	nop

00403aa0 <_setlocale>:
  403aa0:	ff 25 e0 81 40 00    	jmp    *0x4081e0
  403aa6:	90                   	nop
  403aa7:	90                   	nop

00403aa8 <_realloc>:
  403aa8:	ff 25 dc 81 40 00    	jmp    *0x4081dc
  403aae:	90                   	nop
  403aaf:	90                   	nop

00403ab0 <_printf>:
  403ab0:	ff 25 d8 81 40 00    	jmp    *0x4081d8
  403ab6:	90                   	nop
  403ab7:	90                   	nop

00403ab8 <_memcpy>:
  403ab8:	ff 25 d4 81 40 00    	jmp    *0x4081d4
  403abe:	90                   	nop
  403abf:	90                   	nop

00403ac0 <_mbstowcs>:
  403ac0:	ff 25 d0 81 40 00    	jmp    *0x4081d0
  403ac6:	90                   	nop
  403ac7:	90                   	nop

00403ac8 <_malloc>:
  403ac8:	ff 25 cc 81 40 00    	jmp    *0x4081cc
  403ace:	90                   	nop
  403acf:	90                   	nop

00403ad0 <_fwrite>:
  403ad0:	ff 25 c8 81 40 00    	jmp    *0x4081c8
  403ad6:	90                   	nop
  403ad7:	90                   	nop

00403ad8 <_free>:
  403ad8:	ff 25 c4 81 40 00    	jmp    *0x4081c4
  403ade:	90                   	nop
  403adf:	90                   	nop

00403ae0 <_calloc>:
  403ae0:	ff 25 c0 81 40 00    	jmp    *0x4081c0
  403ae6:	90                   	nop
  403ae7:	90                   	nop

00403ae8 <_abort>:
  403ae8:	ff 25 b8 81 40 00    	jmp    *0x4081b8
  403aee:	90                   	nop
  403aef:	90                   	nop

00403af0 <__setmode>:
  403af0:	ff 25 b4 81 40 00    	jmp    *0x4081b4
  403af6:	90                   	nop
  403af7:	90                   	nop

00403af8 <__isctype>:
  403af8:	ff 25 a8 81 40 00    	jmp    *0x4081a8
  403afe:	90                   	nop
  403aff:	90                   	nop

00403b00 <__fullpath>:
  403b00:	ff 25 a0 81 40 00    	jmp    *0x4081a0
  403b06:	90                   	nop
  403b07:	90                   	nop

00403b08 <__errno>:
  403b08:	ff 25 98 81 40 00    	jmp    *0x408198
  403b0e:	90                   	nop
  403b0f:	90                   	nop

00403b10 <__cexit>:
  403b10:	ff 25 94 81 40 00    	jmp    *0x408194
  403b16:	90                   	nop
  403b17:	90                   	nop

00403b18 <___p__fmode>:
  403b18:	ff 25 8c 81 40 00    	jmp    *0x40818c
  403b1e:	90                   	nop
  403b1f:	90                   	nop

00403b20 <___p__environ>:
  403b20:	ff 25 88 81 40 00    	jmp    *0x408188
  403b26:	90                   	nop
  403b27:	90                   	nop

00403b28 <___getmainargs>:
  403b28:	ff 25 80 81 40 00    	jmp    *0x408180
  403b2e:	90                   	nop
  403b2f:	90                   	nop

00403b30 <_VirtualQuery@12>:
  403b30:	ff 25 6c 81 40 00    	jmp    *0x40816c
  403b36:	90                   	nop
  403b37:	90                   	nop

00403b38 <_VirtualProtect@16>:
  403b38:	ff 25 68 81 40 00    	jmp    *0x408168
  403b3e:	90                   	nop
  403b3f:	90                   	nop

00403b40 <_TlsGetValue@4>:
  403b40:	ff 25 64 81 40 00    	jmp    *0x408164
  403b46:	90                   	nop
  403b47:	90                   	nop

00403b48 <_SetUnhandledExceptionFilter@4>:
  403b48:	ff 25 60 81 40 00    	jmp    *0x408160
  403b4e:	90                   	nop
  403b4f:	90                   	nop

00403b50 <_LoadLibraryA@4>:
  403b50:	ff 25 5c 81 40 00    	jmp    *0x40815c
  403b56:	90                   	nop
  403b57:	90                   	nop

00403b58 <_LeaveCriticalSection@4>:
  403b58:	ff 25 58 81 40 00    	jmp    *0x408158
  403b5e:	90                   	nop
  403b5f:	90                   	nop

00403b60 <_InitializeCriticalSection@4>:
  403b60:	ff 25 54 81 40 00    	jmp    *0x408154
  403b66:	90                   	nop
  403b67:	90                   	nop

00403b68 <_GetProcAddress@8>:
  403b68:	ff 25 50 81 40 00    	jmp    *0x408150
  403b6e:	90                   	nop
  403b6f:	90                   	nop

00403b70 <_GetModuleHandleA@4>:
  403b70:	ff 25 4c 81 40 00    	jmp    *0x40814c
  403b76:	90                   	nop
  403b77:	90                   	nop

00403b78 <_GetLastError@0>:
  403b78:	ff 25 48 81 40 00    	jmp    *0x408148
  403b7e:	90                   	nop
  403b7f:	90                   	nop

00403b80 <_GetCommandLineA@0>:
  403b80:	ff 25 44 81 40 00    	jmp    *0x408144
  403b86:	90                   	nop
  403b87:	90                   	nop

00403b88 <_FreeLibrary@4>:
  403b88:	ff 25 40 81 40 00    	jmp    *0x408140
  403b8e:	90                   	nop
  403b8f:	90                   	nop

00403b90 <_FindNextFileA@8>:
  403b90:	ff 25 3c 81 40 00    	jmp    *0x40813c
  403b96:	90                   	nop
  403b97:	90                   	nop

00403b98 <_FindFirstFileA@8>:
  403b98:	ff 25 38 81 40 00    	jmp    *0x408138
  403b9e:	90                   	nop
  403b9f:	90                   	nop

00403ba0 <_FindClose@4>:
  403ba0:	ff 25 34 81 40 00    	jmp    *0x408134
  403ba6:	90                   	nop
  403ba7:	90                   	nop

00403ba8 <_ExitProcess@4>:
  403ba8:	ff 25 30 81 40 00    	jmp    *0x408130
  403bae:	90                   	nop
  403baf:	90                   	nop

00403bb0 <_EnterCriticalSection@4>:
  403bb0:	ff 25 2c 81 40 00    	jmp    *0x40812c
  403bb6:	90                   	nop
  403bb7:	90                   	nop

00403bb8 <_DeleteCriticalSection@4>:
  403bb8:	ff 25 28 81 40 00    	jmp    *0x408128
  403bbe:	90                   	nop
  403bbf:	90                   	nop

00403bc0 <_stricoll>:
  403bc0:	ff 25 78 81 40 00    	jmp    *0x408178
  403bc6:	90                   	nop
  403bc7:	90                   	nop

00403bc8 <_strdup>:
  403bc8:	ff 25 74 81 40 00    	jmp    *0x408174
  403bce:	90                   	nop
  403bcf:	90                   	nop

00403bd0 <_register_frame_ctor>:
  403bd0:	55                   	push   %ebp
  403bd1:	89 e5                	mov    %esp,%ebp
  403bd3:	5d                   	pop    %ebp
  403bd4:	e9 67 d7 ff ff       	jmp    401340 <___gcc_register_frame>
  403bd9:	90                   	nop
  403bda:	90                   	nop
  403bdb:	90                   	nop
  403bdc:	90                   	nop
  403bdd:	90                   	nop
  403bde:	90                   	nop
  403bdf:	90                   	nop

00403be0 <__CTOR_LIST__>:
  403be0:	ff                   	(bad)  
  403be1:	ff                   	(bad)  
  403be2:	ff                   	(bad)  
  403be3:	ff                   	.byte 0xff

00403be4 <.ctors.65535>:
  403be4:	d0 3b                	sarb   (%ebx)
  403be6:	40                   	inc    %eax
  403be7:	00 00                	add    %al,(%eax)
  403be9:	00 00                	add    %al,(%eax)
	...

00403bec <__DTOR_LIST__>:
  403bec:	ff                   	(bad)  
  403bed:	ff                   	(bad)  
  403bee:	ff                   	(bad)  
  403bef:	ff 00                	incl   (%eax)
  403bf1:	00 00                	add    %al,(%eax)
	...
