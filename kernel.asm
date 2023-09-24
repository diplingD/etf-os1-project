
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	1b813103          	ld	sp,440(sp) # 8000a1b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	175050ef          	jal	ra,80005990 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
# 1 "src/registersUtil.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
    80001000:	f0010113          	addi	sp,sp,-256
# 1 "src/registersUtil.S"
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function

_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)

    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:

    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    ret

    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)

    800010f0:	10010113          	addi	sp,sp,256
.global _ZN5Riscv12popRegistersEv
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv11consoleTrapEv>:
.align 4
.global _ZN5Riscv11consoleTrapEv
.type _ZN5Riscv11consoleTrapEv, @function

_ZN5Riscv11consoleTrapEv:
        addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
        .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)


        call _ZN5Riscv14consoleHandlerEv
    80001184:	695000ef          	jal	ra,80002018 <_ZN5Riscv14consoleHandlerEv>


        .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05813583          	ld	a1,88(sp)
    800011b4:	06013603          	ld	a2,96(sp)
    800011b8:	06813683          	ld	a3,104(sp)
    800011bc:	07013703          	ld	a4,112(sp)
    800011c0:	07813783          	ld	a5,120(sp)
    800011c4:	08013803          	ld	a6,128(sp)
    800011c8:	08813883          	ld	a7,136(sp)
    800011cc:	09013903          	ld	s2,144(sp)
    800011d0:	09813983          	ld	s3,152(sp)
    800011d4:	0a013a03          	ld	s4,160(sp)
    800011d8:	0a813a83          	ld	s5,168(sp)
    800011dc:	0b013b03          	ld	s6,176(sp)
    800011e0:	0b813b83          	ld	s7,184(sp)
    800011e4:	0c013c03          	ld	s8,192(sp)
    800011e8:	0c813c83          	ld	s9,200(sp)
    800011ec:	0d013d03          	ld	s10,208(sp)
    800011f0:	0d813d83          	ld	s11,216(sp)
    800011f4:	0e013e03          	ld	t3,224(sp)
    800011f8:	0e813e83          	ld	t4,232(sp)
    800011fc:	0f013f03          	ld	t5,240(sp)
    80001200:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    80001204:	10010113          	addi	sp,sp,256

    80001208:	10200073          	sret
    8000120c:	0000                	unimp
	...

0000000080001210 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
    j _ZN5Riscv9ecallTrapEv
    80001210:	1500006f          	j	80001360 <_ZN5Riscv9ecallTrapEv>
    j _ZN5Riscv9timerTrapEv
    80001214:	03c0006f          	j	80001250 <_ZN5Riscv9timerTrapEv>
    li x0, 0
    80001218:	00000013          	nop
    li x0, 0
    8000121c:	00000013          	nop
    li x0, 0
    80001220:	00000013          	nop
    li x0, 0
    80001224:	00000013          	nop
    li x0, 0
    80001228:	00000013          	nop
    li x0, 0
    8000122c:	00000013          	nop
    li x0, 0
    80001230:	00000013          	nop
    80001234:	ecdff06f          	j	80001100 <_ZN5Riscv11consoleTrapEv>
	...

0000000080001250 <_ZN5Riscv9timerTrapEv>:
.align 4
.global _ZN5Riscv9timerTrapEv
.type _ZN5Riscv9timerTrapEv, @function

_ZN5Riscv9timerTrapEv:
        addi sp, sp, -256
    80001250:	f0010113          	addi	sp,sp,-256
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
        .endr
    80001254:	00013023          	sd	zero,0(sp)
    80001258:	00113423          	sd	ra,8(sp)
    8000125c:	00213823          	sd	sp,16(sp)
    80001260:	00313c23          	sd	gp,24(sp)
    80001264:	02413023          	sd	tp,32(sp)
    80001268:	02513423          	sd	t0,40(sp)
    8000126c:	02613823          	sd	t1,48(sp)
    80001270:	02713c23          	sd	t2,56(sp)
    80001274:	04813023          	sd	s0,64(sp)
    80001278:	04913423          	sd	s1,72(sp)
    8000127c:	04a13823          	sd	a0,80(sp)
    80001280:	04b13c23          	sd	a1,88(sp)
    80001284:	06c13023          	sd	a2,96(sp)
    80001288:	06d13423          	sd	a3,104(sp)
    8000128c:	06e13823          	sd	a4,112(sp)
    80001290:	06f13c23          	sd	a5,120(sp)
    80001294:	09013023          	sd	a6,128(sp)
    80001298:	09113423          	sd	a7,136(sp)
    8000129c:	09213823          	sd	s2,144(sp)
    800012a0:	09313c23          	sd	s3,152(sp)
    800012a4:	0b413023          	sd	s4,160(sp)
    800012a8:	0b513423          	sd	s5,168(sp)
    800012ac:	0b613823          	sd	s6,176(sp)
    800012b0:	0b713c23          	sd	s7,184(sp)
    800012b4:	0d813023          	sd	s8,192(sp)
    800012b8:	0d913423          	sd	s9,200(sp)
    800012bc:	0da13823          	sd	s10,208(sp)
    800012c0:	0db13c23          	sd	s11,216(sp)
    800012c4:	0fc13023          	sd	t3,224(sp)
    800012c8:	0fd13423          	sd	t4,232(sp)
    800012cc:	0fe13823          	sd	t5,240(sp)
    800012d0:	0ff13c23          	sd	t6,248(sp)


        call _ZN5Riscv12timerHandlerEv
    800012d4:	56d000ef          	jal	ra,80002040 <_ZN5Riscv12timerHandlerEv>


        .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    800012d8:	00013003          	ld	zero,0(sp)
    800012dc:	00813083          	ld	ra,8(sp)
    800012e0:	01013103          	ld	sp,16(sp)
    800012e4:	01813183          	ld	gp,24(sp)
    800012e8:	02013203          	ld	tp,32(sp)
    800012ec:	02813283          	ld	t0,40(sp)
    800012f0:	03013303          	ld	t1,48(sp)
    800012f4:	03813383          	ld	t2,56(sp)
    800012f8:	04013403          	ld	s0,64(sp)
    800012fc:	04813483          	ld	s1,72(sp)
    80001300:	05813583          	ld	a1,88(sp)
    80001304:	06013603          	ld	a2,96(sp)
    80001308:	06813683          	ld	a3,104(sp)
    8000130c:	07013703          	ld	a4,112(sp)
    80001310:	07813783          	ld	a5,120(sp)
    80001314:	08013803          	ld	a6,128(sp)
    80001318:	08813883          	ld	a7,136(sp)
    8000131c:	09013903          	ld	s2,144(sp)
    80001320:	09813983          	ld	s3,152(sp)
    80001324:	0a013a03          	ld	s4,160(sp)
    80001328:	0a813a83          	ld	s5,168(sp)
    8000132c:	0b013b03          	ld	s6,176(sp)
    80001330:	0b813b83          	ld	s7,184(sp)
    80001334:	0c013c03          	ld	s8,192(sp)
    80001338:	0c813c83          	ld	s9,200(sp)
    8000133c:	0d013d03          	ld	s10,208(sp)
    80001340:	0d813d83          	ld	s11,216(sp)
    80001344:	0e013e03          	ld	t3,224(sp)
    80001348:	0e813e83          	ld	t4,232(sp)
    8000134c:	0f013f03          	ld	t5,240(sp)
    80001350:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    80001354:	10010113          	addi	sp,sp,256

    80001358:	10200073          	sret
    8000135c:	0000                	unimp
	...

0000000080001360 <_ZN5Riscv9ecallTrapEv>:
.align 4
.global _ZN5Riscv9ecallTrapEv
.type _ZN5Riscv9ecallTrapEv, @function

_ZN5Riscv9ecallTrapEv:
    addi sp, sp, -256
    80001360:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001364:	00013023          	sd	zero,0(sp)
    80001368:	00113423          	sd	ra,8(sp)
    8000136c:	00213823          	sd	sp,16(sp)
    80001370:	00313c23          	sd	gp,24(sp)
    80001374:	02413023          	sd	tp,32(sp)
    80001378:	02513423          	sd	t0,40(sp)
    8000137c:	02613823          	sd	t1,48(sp)
    80001380:	02713c23          	sd	t2,56(sp)
    80001384:	04813023          	sd	s0,64(sp)
    80001388:	04913423          	sd	s1,72(sp)
    8000138c:	04a13823          	sd	a0,80(sp)
    80001390:	04b13c23          	sd	a1,88(sp)
    80001394:	06c13023          	sd	a2,96(sp)
    80001398:	06d13423          	sd	a3,104(sp)
    8000139c:	06e13823          	sd	a4,112(sp)
    800013a0:	06f13c23          	sd	a5,120(sp)
    800013a4:	09013023          	sd	a6,128(sp)
    800013a8:	09113423          	sd	a7,136(sp)
    800013ac:	09213823          	sd	s2,144(sp)
    800013b0:	09313c23          	sd	s3,152(sp)
    800013b4:	0b413023          	sd	s4,160(sp)
    800013b8:	0b513423          	sd	s5,168(sp)
    800013bc:	0b613823          	sd	s6,176(sp)
    800013c0:	0b713c23          	sd	s7,184(sp)
    800013c4:	0d813023          	sd	s8,192(sp)
    800013c8:	0d913423          	sd	s9,200(sp)
    800013cc:	0da13823          	sd	s10,208(sp)
    800013d0:	0db13c23          	sd	s11,216(sp)
    800013d4:	0fc13023          	sd	t3,224(sp)
    800013d8:	0fd13423          	sd	t4,232(sp)
    800013dc:	0fe13823          	sd	t5,240(sp)
    800013e0:	0ff13c23          	sd	t6,248(sp)


    call _ZN5Riscv12ecallHandlerEv
    800013e4:	5a5000ef          	jal	ra,80002188 <_ZN5Riscv12ecallHandlerEv>

    csrr a1, scause
    800013e8:	142025f3          	csrr	a1,scause
    addi a1, a1, -8
    800013ec:	ff858593          	addi	a1,a1,-8
    beqz a1, syscall
    800013f0:	00058663          	beqz	a1,800013fc <syscall>
    addi a1, a1, -1
    800013f4:	fff58593          	addi	a1,a1,-1
    bnez a1, other
    800013f8:	00059463          	bnez	a1,80001400 <other>

00000000800013fc <syscall>:

syscall:
    sd x10, 80(sp)
    800013fc:	04a13823          	sd	a0,80(sp)

0000000080001400 <other>:
other:
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001400:	00013003          	ld	zero,0(sp)
    80001404:	00813083          	ld	ra,8(sp)
    80001408:	01013103          	ld	sp,16(sp)
    8000140c:	01813183          	ld	gp,24(sp)
    80001410:	02013203          	ld	tp,32(sp)
    80001414:	02813283          	ld	t0,40(sp)
    80001418:	03013303          	ld	t1,48(sp)
    8000141c:	03813383          	ld	t2,56(sp)
    80001420:	04013403          	ld	s0,64(sp)
    80001424:	04813483          	ld	s1,72(sp)
    80001428:	05813583          	ld	a1,88(sp)
    8000142c:	06013603          	ld	a2,96(sp)
    80001430:	06813683          	ld	a3,104(sp)
    80001434:	07013703          	ld	a4,112(sp)
    80001438:	07813783          	ld	a5,120(sp)
    8000143c:	08013803          	ld	a6,128(sp)
    80001440:	08813883          	ld	a7,136(sp)
    80001444:	09013903          	ld	s2,144(sp)
    80001448:	09813983          	ld	s3,152(sp)
    8000144c:	0a013a03          	ld	s4,160(sp)
    80001450:	0a813a83          	ld	s5,168(sp)
    80001454:	0b013b03          	ld	s6,176(sp)
    80001458:	0b813b83          	ld	s7,184(sp)
    8000145c:	0c013c03          	ld	s8,192(sp)
    80001460:	0c813c83          	ld	s9,200(sp)
    80001464:	0d013d03          	ld	s10,208(sp)
    80001468:	0d813d83          	ld	s11,216(sp)
    8000146c:	0e013e03          	ld	t3,224(sp)
    80001470:	0e813e83          	ld	t4,232(sp)
    80001474:	0f013f03          	ld	t5,240(sp)
    80001478:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000147c:	10010113          	addi	sp,sp,256

    80001480:	10200073          	sret
	...

0000000080001490 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)       // store data ( smer -> )
    80001490:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001494:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)       // load data ( smer <- )
    80001498:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000149c:	0085b103          	ld	sp,8(a1)

    800014a0:	00008067          	ret

00000000800014a4 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800014a4:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800014a8:	00b29a63          	bne	t0,a1,800014bc <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800014ac:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800014b0:	fe029ae3          	bnez	t0,800014a4 <copy_and_swap>
    li a0, 0               # Set return to success.
    800014b4:	00000513          	li	a0,0
    jr ra                  # Return.
    800014b8:	00008067          	ret

00000000800014bc <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800014bc:	00100513          	li	a0,1
    800014c0:	00008067          	ret

00000000800014c4 <_Z9mem_allocm>:
    __asm__ volatile("ecall");
}

// ---------------------------- 1. ZADATAK : MEMORIJA ----------------------------
void* mem_alloc(size_t size){
    if(size == 0)       // nevalidno - jer ako se trazi alokacija 0 bajtova, nemamo koji pokazivac na aloc. memoriju da vratimo!
    800014c4:	02050c63          	beqz	a0,800014fc <_Z9mem_allocm+0x38>
void* mem_alloc(size_t size){
    800014c8:	fe010113          	addi	sp,sp,-32
    800014cc:	00813c23          	sd	s0,24(sp)
    800014d0:	02010413          	addi	s0,sp,32
        return nullptr;

    //size_t numOfBlocks = (size % MEM_BLOCK_SIZE == 0) ? (size/MEM_BLOCK_SIZE) : (1 + size/MEM_BLOCK_SIZE);

    __asm__ volatile("mv a1, %0" :: "r" (size));     // a1 <= size
    800014d4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    800014d8:	00100793          	li	a5,1
    800014dc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014e0:	00000073          	ecall
    abi_invoker(0x01);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));     // ecall ce u a0 da vrati adresu alocirane memorije, koju mi upisujemo u 'ret'
    800014e4:	00050793          	mv	a5,a0
    800014e8:	fef43423          	sd	a5,-24(s0)

    return (void*)(ret);
    800014ec:	fe843503          	ld	a0,-24(s0)
}
    800014f0:	01813403          	ld	s0,24(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret
        return nullptr;
    800014fc:	00000513          	li	a0,0
}
    80001500:	00008067          	ret

0000000080001504 <_Z8mem_freePv>:

int mem_free (void* mem){
    if(mem == nullptr)
    80001504:	04050063          	beqz	a0,80001544 <_Z8mem_freePv+0x40>
int mem_free (void* mem){
    80001508:	fe010113          	addi	sp,sp,-32
    8000150c:	00813c23          	sd	s0,24(sp)
    80001510:	02010413          	addi	s0,sp,32
        return 0;

    asm volatile("mv a1, %0" :: "r" (mem));     // a1 <= mem
    80001514:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001518:	00200793          	li	a5,2
    8000151c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001520:	00000073          	ecall
    abi_invoker(0x02);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));     // ecall ce u a0 da vrati adresu alocirane memorije, koju mi upisujemo u 'ret'
    80001524:	00050793          	mv	a5,a0
    80001528:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    8000152c:	fe843783          	ld	a5,-24(s0)
    80001530:	00079e63          	bnez	a5,8000154c <_Z8mem_freePv+0x48>
        return 0;
    80001534:	00000513          	li	a0,0
    else
        return -1;
}
    80001538:	01813403          	ld	s0,24(sp)
    8000153c:	02010113          	addi	sp,sp,32
    80001540:	00008067          	ret
        return 0;
    80001544:	00000513          	li	a0,0
}
    80001548:	00008067          	ret
        return -1;
    8000154c:	fff00513          	li	a0,-1
    80001550:	fe9ff06f          	j	80001538 <_Z8mem_freePv+0x34>

0000000080001554 <_Z13thread_createPP3TCBPFvPvES2_>:

// ---------------------------- 2. ZADATAK : NITI ----------------------------
int thread_create (thread_t *handle, void(*start_routine) (void*), void *arg) {
    80001554:	fd010113          	addi	sp,sp,-48
    80001558:	02813423          	sd	s0,40(sp)
    8000155c:	03010413          	addi	s0,sp,48
    80001560:	fca43c23          	sd	a0,-40(s0)
    //if(!handle) return -1;          // neregulatna situacija
    if(!start_routine) return -1;   // neregularna situacija
    80001564:	04058063          	beqz	a1,800015a4 <_Z13thread_createPP3TCBPFvPvES2_+0x50>

    __asm__ volatile("mv a3, %0" :: "r" ((uint64)arg));             // a3 <- arg
    80001568:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :: "r" ((uint64)start_routine));   // a2 <- start_routine
    8000156c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r" ((uint64)&handle));         // a1 <- handle
    80001570:	fd840793          	addi	a5,s0,-40
    80001574:	00078593          	mv	a1,a5
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001578:	01100793          	li	a5,17
    8000157c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001580:	00000073          	ecall

    abi_invoker(0x11);  // a0 <- 0x11 i poziva "ecall"

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001584:	00050793          	mv	a5,a0
    80001588:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    8000158c:	fe843783          	ld	a5,-24(s0)
    80001590:	00079e63          	bnez	a5,800015ac <_Z13thread_createPP3TCBPFvPvES2_+0x58>
        return 0;
    80001594:	00000513          	li	a0,0
    else
        return -3;
}
    80001598:	02813403          	ld	s0,40(sp)
    8000159c:	03010113          	addi	sp,sp,48
    800015a0:	00008067          	ret
    if(!start_routine) return -1;   // neregularna situacija
    800015a4:	fff00513          	li	a0,-1
    800015a8:	ff1ff06f          	j	80001598 <_Z13thread_createPP3TCBPFvPvES2_+0x44>
        return -3;
    800015ac:	ffd00513          	li	a0,-3
    800015b0:	fe9ff06f          	j	80001598 <_Z13thread_createPP3TCBPFvPvES2_+0x44>

00000000800015b4 <_Z11thread_exitv>:
int thread_exit() {
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00813c23          	sd	s0,24(sp)
    800015bc:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    800015c0:	01200793          	li	a5,18
    800015c4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015c8:	00000073          	ecall
    abi_invoker(0x12);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800015cc:	00050793          	mv	a5,a0
    800015d0:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    800015d4:	fe843783          	ld	a5,-24(s0)
    800015d8:	00079a63          	bnez	a5,800015ec <_Z11thread_exitv+0x38>
        return 0;
    800015dc:	00000513          	li	a0,0
    else
        return -1;
}
    800015e0:	01813403          	ld	s0,24(sp)
    800015e4:	02010113          	addi	sp,sp,32
    800015e8:	00008067          	ret
        return -1;
    800015ec:	fff00513          	li	a0,-1
    800015f0:	ff1ff06f          	j	800015e0 <_Z11thread_exitv+0x2c>

00000000800015f4 <_Z15thread_dispatchv>:
void thread_dispatch() {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001600:	01300793          	li	a5,19
    80001604:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001608:	00000073          	ecall
    abi_invoker(0x13);
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret

0000000080001618 <_Z11thread_joinPP3TCB>:
// ------------------------------- join -------------------------------
void thread_join(thread_t* thr) {
    80001618:	ff010113          	addi	sp,sp,-16
    8000161c:	00813423          	sd	s0,8(sp)
    80001620:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :: "r" (thr));
    80001624:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001628:	01400793          	li	a5,20
    8000162c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001630:	00000073          	ecall
    abi_invoker(0x14);
}
    80001634:	00813403          	ld	s0,8(sp)
    80001638:	01010113          	addi	sp,sp,16
    8000163c:	00008067          	ret

0000000080001640 <_Z8sem_openPP3SEMj>:

// ---------------------------- 3. ZADATAK : SEMAFORI ----------------------------
int sem_open(sem_t *handle, unsigned init)
{
    if (!handle) { return -1; }
    80001640:	04050263          	beqz	a0,80001684 <_Z8sem_openPP3SEMj+0x44>
{
    80001644:	fe010113          	addi	sp,sp,-32
    80001648:	00813c23          	sd	s0,24(sp)
    8000164c:	02010413          	addi	s0,sp,32

    __asm__ volatile("mv a2, %0" :: "r" (init));       // a2 <- start_routine
    80001650:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r" (handle));     // a1 <- handle
    80001654:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001658:	02100793          	li	a5,33
    8000165c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001660:	00000073          	ecall

    abi_invoker(0x21);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001664:	00050793          	mv	a5,a0
    80001668:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    8000166c:	fe843783          	ld	a5,-24(s0)
    80001670:	00079e63          	bnez	a5,8000168c <_Z8sem_openPP3SEMj+0x4c>
        return 0;
    80001674:	00000513          	li	a0,0
    else
        return -2;
}
    80001678:	01813403          	ld	s0,24(sp)
    8000167c:	02010113          	addi	sp,sp,32
    80001680:	00008067          	ret
    if (!handle) { return -1; }
    80001684:	fff00513          	li	a0,-1
}
    80001688:	00008067          	ret
        return -2;
    8000168c:	ffe00513          	li	a0,-2
    80001690:	fe9ff06f          	j	80001678 <_Z8sem_openPP3SEMj+0x38>

0000000080001694 <_Z9sem_closeP3SEM>:

int sem_close(sem_t handle)
{
    if (!handle) { return -1; }
    80001694:	04050063          	beqz	a0,800016d4 <_Z9sem_closeP3SEM+0x40>
{
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00813c23          	sd	s0,24(sp)
    800016a0:	02010413          	addi	s0,sp,32

    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));     // a1 <- handle
    800016a4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    800016a8:	02200793          	li	a5,34
    800016ac:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016b0:	00000073          	ecall

    abi_invoker(0x22);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800016b4:	00050793          	mv	a5,a0
    800016b8:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    800016bc:	fe843783          	ld	a5,-24(s0)
    800016c0:	00079e63          	bnez	a5,800016dc <_Z9sem_closeP3SEM+0x48>
        return 0;
    800016c4:	00000513          	li	a0,0
    else
        return -2;
}
    800016c8:	01813403          	ld	s0,24(sp)
    800016cc:	02010113          	addi	sp,sp,32
    800016d0:	00008067          	ret
    if (!handle) { return -1; }
    800016d4:	fff00513          	li	a0,-1
}
    800016d8:	00008067          	ret
        return -2;
    800016dc:	ffe00513          	li	a0,-2
    800016e0:	fe9ff06f          	j	800016c8 <_Z9sem_closeP3SEM+0x34>

00000000800016e4 <_Z8sem_waitP3SEM>:

int sem_wait(sem_t handle)
{
    if (!handle) { return -1; }
    800016e4:	04050063          	beqz	a0,80001724 <_Z8sem_waitP3SEM+0x40>
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00813c23          	sd	s0,24(sp)
    800016f0:	02010413          	addi	s0,sp,32

    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));     // a1 <- handle
    800016f4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    800016f8:	02300793          	li	a5,35
    800016fc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001700:	00000073          	ecall

    abi_invoker(0x23);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001704:	00050793          	mv	a5,a0
    80001708:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    8000170c:	fe843783          	ld	a5,-24(s0)
    80001710:	00079e63          	bnez	a5,8000172c <_Z8sem_waitP3SEM+0x48>
        return 0;
    80001714:	00000513          	li	a0,0
    else
        return -2;
}
    80001718:	01813403          	ld	s0,24(sp)
    8000171c:	02010113          	addi	sp,sp,32
    80001720:	00008067          	ret
    if (!handle) { return -1; }
    80001724:	fff00513          	li	a0,-1
}
    80001728:	00008067          	ret
        return -2;
    8000172c:	ffe00513          	li	a0,-2
    80001730:	fe9ff06f          	j	80001718 <_Z8sem_waitP3SEM+0x34>

0000000080001734 <_Z10sem_signalP3SEM>:

int sem_signal(sem_t handle)
{
    if (!handle) { return -1; }
    80001734:	04050063          	beqz	a0,80001774 <_Z10sem_signalP3SEM+0x40>
{
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00813c23          	sd	s0,24(sp)
    80001740:	02010413          	addi	s0,sp,32

    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));     // a1 <- handle
    80001744:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001748:	02400793          	li	a5,36
    8000174c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001750:	00000073          	ecall

    abi_invoker(0x24);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001754:	00050793          	mv	a5,a0
    80001758:	fef43423          	sd	a5,-24(s0)
    if(ret == 0)
    8000175c:	fe843783          	ld	a5,-24(s0)
    80001760:	00079e63          	bnez	a5,8000177c <_Z10sem_signalP3SEM+0x48>
        return 0;
    80001764:	00000513          	li	a0,0
    else
        return -2;
}
    80001768:	01813403          	ld	s0,24(sp)
    8000176c:	02010113          	addi	sp,sp,32
    80001770:	00008067          	ret
    if (!handle) { return -1; }
    80001774:	fff00513          	li	a0,-1
}
    80001778:	00008067          	ret
        return -2;
    8000177c:	ffe00513          	li	a0,-2
    80001780:	fe9ff06f          	j	80001768 <_Z10sem_signalP3SEM+0x34>

0000000080001784 <_Z4getcv>:

// ---------------------------- DODATO : getc(), putc() ----------------------------
char getc() {
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00813c23          	sd	s0,24(sp)
    8000178c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    80001790:	04100793          	li	a5,65
    80001794:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001798:	00000073          	ecall
    abi_invoker(0x41);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));     // ecall ce u a0 da vrati adreskoju drzi handle, rucku novokreirane niti
    8000179c:	00050793          	mv	a5,a0
    800017a0:	fef43423          	sd	a5,-24(s0)
    return (char)ret;
    800017a4:	fe843503          	ld	a0,-24(s0)
}
    800017a8:	0ff57513          	andi	a0,a0,255
    800017ac:	01813403          	ld	s0,24(sp)
    800017b0:	02010113          	addi	sp,sp,32
    800017b4:	00008067          	ret

00000000800017b8 <_Z4putcc>:
void putc(char c) {
    800017b8:	ff010113          	addi	sp,sp,-16
    800017bc:	00813423          	sd	s0,8(sp)
    800017c0:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r" (c));     // a1 <= char
    800017c4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    800017c8:	04200793          	li	a5,66
    800017cc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800017d0:	00000073          	ecall
    abi_invoker(0x42);
}
    800017d4:	00813403          	ld	s0,8(sp)
    800017d8:	01010113          	addi	sp,sp,16
    800017dc:	00008067          	ret

00000000800017e0 <_Z10changeUserv>:
// ----------------------------------------------------------------------------
void changeUser(){
    800017e0:	ff010113          	addi	sp,sp,-16
    800017e4:	00813423          	sd	s0,8(sp)
    800017e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x03");
    800017ec:	00300513          	li	a0,3
    __asm__ volatile("ecall");
    800017f0:	00000073          	ecall
}
    800017f4:	00813403          	ld	s0,8(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_Z12thread_getIdv>:

// MODIFIKACIJA
int thread_getId(){
    80001800:	fe010113          	addi	sp,sp,-32
    80001804:	00813c23          	sd	s0,24(sp)
    80001808:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" :: "r" (code));       // a0 <= 0x01 za mem_alloc; a0 <= 0x02 za mem_free itd...
    8000180c:	09000793          	li	a5,144
    80001810:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001814:	00000073          	ecall
    abi_invoker(0x90);

    uint64 volatile ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001818:	00050793          	mv	a5,a0
    8000181c:	fef43423          	sd	a5,-24(s0)
    return (int)ret;
    80001820:	fe843503          	ld	a0,-24(s0)
    80001824:	0005051b          	sext.w	a0,a0
    80001828:	01813403          	ld	s0,24(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret

0000000080001834 <_ZN3SEMC1EPPS_j>:
// Created by os on 8/21/23.
//

#include "../h/semaphore.h"

SEM::SEM(sem_t *handle, unsigned init) {
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00813423          	sd	s0,8(sp)
    8000183c:	01010413          	addi	s0,sp,16
    80001840:	00008797          	auipc	a5,0x8
    80001844:	7d078793          	addi	a5,a5,2000 # 8000a010 <_ZTV3SEM+0x10>
    80001848:	00f53023          	sd	a5,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000184c:	00053823          	sd	zero,16(a0)
    80001850:	00053c23          	sd	zero,24(a0)
    *handle = this;
    80001854:	00a5b023          	sd	a0,0(a1)
    val = (int)init;
    80001858:	00c52423          	sw	a2,8(a0)
    isClosed = false;
    8000185c:	00052623          	sw	zero,12(a0)
}
    80001860:	00813403          	ld	s0,8(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret

000000008000186c <_ZN3SEM4waitEv>:
SEM::~SEM() {
    close();
}

int SEM::wait() {
    if(isClosed) {return -1;}
    8000186c:	00c52783          	lw	a5,12(a0)
    80001870:	0a079263          	bnez	a5,80001914 <_ZN3SEM4waitEv+0xa8>
int SEM::wait() {
    80001874:	fe010113          	addi	sp,sp,-32
    80001878:	00113c23          	sd	ra,24(sp)
    8000187c:	00813823          	sd	s0,16(sp)
    80001880:	00913423          	sd	s1,8(sp)
    80001884:	01213023          	sd	s2,0(sp)
    80001888:	02010413          	addi	s0,sp,32
    8000188c:	00050493          	mv	s1,a0

    if(--val < 0) {
    80001890:	00852783          	lw	a5,8(a0)
    80001894:	fff7879b          	addiw	a5,a5,-1
    80001898:	00f52423          	sw	a5,8(a0)
    8000189c:	02079713          	slli	a4,a5,0x20
    800018a0:	02074263          	bltz	a4,800018c4 <_ZN3SEM4waitEv+0x58>
        TCB::running->setBlocked(true);
        waitingThreads.addLast(TCB::running);
        TCB::dispatch();
    }

    if(isClosed) {return -1;}
    800018a4:	00c4a503          	lw	a0,12(s1)
    800018a8:	06051a63          	bnez	a0,8000191c <_ZN3SEM4waitEv+0xb0>
    return 0;
}
    800018ac:	01813083          	ld	ra,24(sp)
    800018b0:	01013403          	ld	s0,16(sp)
    800018b4:	00813483          	ld	s1,8(sp)
    800018b8:	00013903          	ld	s2,0(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret
        TCB::running->setBlocked(true);
    800018c4:	00009797          	auipc	a5,0x9
    800018c8:	9047b783          	ld	a5,-1788(a5) # 8000a1c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018cc:	0007b903          	ld	s2,0(a5)

    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }

    bool isThreadBlocked() const { return isBlocked; }
    void setBlocked(bool value) { isBlocked = value; }
    800018d0:	00100793          	li	a5,1
    800018d4:	02f908a3          	sb	a5,49(s2)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)       // dodaje element na kraj liste
    {
        Elem *elem = new Elem(data, 0);
    800018d8:	01000513          	li	a0,16
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	67c080e7          	jalr	1660(ra) # 80001f58 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800018e4:	01253023          	sd	s2,0(a0)
    800018e8:	00053423          	sd	zero,8(a0)
        //cnt++;
        if (tail)
    800018ec:	0184b783          	ld	a5,24(s1)
    800018f0:	00078c63          	beqz	a5,80001908 <_ZN3SEM4waitEv+0x9c>
        {
            tail->next = elem;
    800018f4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800018f8:	00a4bc23          	sd	a0,24(s1)
        TCB::dispatch();
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	568080e7          	jalr	1384(ra) # 80001e64 <_ZN3TCB8dispatchEv>
    80001904:	fa1ff06f          	j	800018a4 <_ZN3SEM4waitEv+0x38>
        } else
        {
            head = tail = elem;
    80001908:	00a4bc23          	sd	a0,24(s1)
    8000190c:	00a4b823          	sd	a0,16(s1)
    80001910:	fedff06f          	j	800018fc <_ZN3SEM4waitEv+0x90>
    if(isClosed) {return -1;}
    80001914:	fff00513          	li	a0,-1
}
    80001918:	00008067          	ret
    if(isClosed) {return -1;}
    8000191c:	fff00513          	li	a0,-1
    80001920:	f8dff06f          	j	800018ac <_ZN3SEM4waitEv+0x40>

0000000080001924 <_ZN3SEM6signalEv>:

int SEM::signal() {
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	00913423          	sd	s1,8(sp)
    80001934:	01213023          	sd	s2,0(sp)
    80001938:	02010413          	addi	s0,sp,32
    if(isClosed) {return -1;}
    8000193c:	00c52483          	lw	s1,12(a0)
    80001940:	06049e63          	bnez	s1,800019bc <_ZN3SEM6signalEv+0x98>
    80001944:	00050793          	mv	a5,a0

    if(++val <= 0) {
    80001948:	00852703          	lw	a4,8(a0)
    8000194c:	0017071b          	addiw	a4,a4,1
    80001950:	0007069b          	sext.w	a3,a4
    80001954:	00e52423          	sw	a4,8(a0)
    80001958:	02d05063          	blez	a3,80001978 <_ZN3SEM6signalEv+0x54>
        deblokirana->isBlocked = false;
        Scheduler::put(deblokirana);
    }

    return 0;
}
    8000195c:	00048513          	mv	a0,s1
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	00013903          	ld	s2,0(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret
        }
    }

    T *removeFirst()        // uzima element sa pocetka liste
    {
        if (!head) { return 0; }
    80001978:	01053503          	ld	a0,16(a0)
    8000197c:	02050c63          	beqz	a0,800019b4 <_ZN3SEM6signalEv+0x90>
        //cnt--;
        Elem *elem = head;
        head = head->next;
    80001980:	00853703          	ld	a4,8(a0)
    80001984:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80001988:	02070263          	beqz	a4,800019ac <_ZN3SEM6signalEv+0x88>

        T *ret = elem->data;
    8000198c:	00053903          	ld	s2,0(a0)
        delete elem;
    80001990:	00000097          	auipc	ra,0x0
    80001994:	618080e7          	jalr	1560(ra) # 80001fa8 <_ZdlPv>
        deblokirana->isBlocked = false;
    80001998:	020908a3          	sb	zero,49(s2)
        Scheduler::put(deblokirana);
    8000199c:	00090513          	mv	a0,s2
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	c60080e7          	jalr	-928(ra) # 80002600 <_ZN9Scheduler3putEP3TCB>
    800019a8:	fb5ff06f          	j	8000195c <_ZN3SEM6signalEv+0x38>
        if (!head) { tail = 0; }
    800019ac:	0007bc23          	sd	zero,24(a5)
    800019b0:	fddff06f          	j	8000198c <_ZN3SEM6signalEv+0x68>
        if (!head) { return 0; }
    800019b4:	00050913          	mv	s2,a0
    800019b8:	fe1ff06f          	j	80001998 <_ZN3SEM6signalEv+0x74>
    if(isClosed) {return -1;}
    800019bc:	fff00493          	li	s1,-1
    800019c0:	f9dff06f          	j	8000195c <_ZN3SEM6signalEv+0x38>

00000000800019c4 <_ZN3SEM5closeEv>:

int SEM::close() {
    800019c4:	fd010113          	addi	sp,sp,-48
    800019c8:	02113423          	sd	ra,40(sp)
    800019cc:	02813023          	sd	s0,32(sp)
    800019d0:	00913c23          	sd	s1,24(sp)
    800019d4:	01213823          	sd	s2,16(sp)
    800019d8:	01313423          	sd	s3,8(sp)
    800019dc:	03010413          	addi	s0,sp,48
    if(isClosed) {return -1;}
    800019e0:	00c52983          	lw	s3,12(a0)
    800019e4:	04099c63          	bnez	s3,80001a3c <_ZN3SEM5closeEv+0x78>
    800019e8:	00050493          	mv	s1,a0

    isClosed = true;
    800019ec:	00100793          	li	a5,1
    800019f0:	00f52623          	sw	a5,12(a0)
    val = 0;
    800019f4:	00052423          	sw	zero,8(a0)
    800019f8:	0240006f          	j	80001a1c <_ZN3SEM5closeEv+0x58>
        if (!head) { tail = 0; }
    800019fc:	0004bc23          	sd	zero,24(s1)
        T *ret = elem->data;
    80001a00:	00053903          	ld	s2,0(a0)
        delete elem;
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	5a4080e7          	jalr	1444(ra) # 80001fa8 <_ZdlPv>

    while(this->waitingThreads.peekFirst()) {
        TCB* thread = this->waitingThreads.removeFirst();
        thread->isBlocked = false;
    80001a0c:	020908a3          	sb	zero,49(s2)
        Scheduler::put(thread);
    80001a10:	00090513          	mv	a0,s2
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	bec080e7          	jalr	-1044(ra) # 80002600 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()      // samo pogleda element sa pocetka liste
    {
        if (!head) { return 0; }
    80001a1c:	0104b503          	ld	a0,16(s1)
    80001a20:	02050063          	beqz	a0,80001a40 <_ZN3SEM5closeEv+0x7c>
        return head->data;
    80001a24:	00053783          	ld	a5,0(a0)
    while(this->waitingThreads.peekFirst()) {
    80001a28:	00078c63          	beqz	a5,80001a40 <_ZN3SEM5closeEv+0x7c>
        head = head->next;
    80001a2c:	00853783          	ld	a5,8(a0)
    80001a30:	00f4b823          	sd	a5,16(s1)
        if (!head) { tail = 0; }
    80001a34:	fc0796e3          	bnez	a5,80001a00 <_ZN3SEM5closeEv+0x3c>
    80001a38:	fc5ff06f          	j	800019fc <_ZN3SEM5closeEv+0x38>
    if(isClosed) {return -1;}
    80001a3c:	fff00993          	li	s3,-1
    }

    return 0;
    80001a40:	00098513          	mv	a0,s3
    80001a44:	02813083          	ld	ra,40(sp)
    80001a48:	02013403          	ld	s0,32(sp)
    80001a4c:	01813483          	ld	s1,24(sp)
    80001a50:	01013903          	ld	s2,16(sp)
    80001a54:	00813983          	ld	s3,8(sp)
    80001a58:	03010113          	addi	sp,sp,48
    80001a5c:	00008067          	ret

0000000080001a60 <_ZN3SEMD1Ev>:
SEM::~SEM() {
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00113423          	sd	ra,8(sp)
    80001a68:	00813023          	sd	s0,0(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    80001a70:	00008797          	auipc	a5,0x8
    80001a74:	5a078793          	addi	a5,a5,1440 # 8000a010 <_ZTV3SEM+0x10>
    80001a78:	00f53023          	sd	a5,0(a0)
    close();
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	f48080e7          	jalr	-184(ra) # 800019c4 <_ZN3SEM5closeEv>
}
    80001a84:	00813083          	ld	ra,8(sp)
    80001a88:	00013403          	ld	s0,0(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret

0000000080001a94 <_ZN3SEMD0Ev>:
SEM::~SEM() {
    80001a94:	fe010113          	addi	sp,sp,-32
    80001a98:	00113c23          	sd	ra,24(sp)
    80001a9c:	00813823          	sd	s0,16(sp)
    80001aa0:	00913423          	sd	s1,8(sp)
    80001aa4:	02010413          	addi	s0,sp,32
    80001aa8:	00050493          	mv	s1,a0
}
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	fb4080e7          	jalr	-76(ra) # 80001a60 <_ZN3SEMD1Ev>
    // new i delete preklopljeni operatori
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	d98080e7          	jalr	-616(ra) # 80002850 <_ZN15MemoryAllocator8mem_freeEPv>
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	02010113          	addi	sp,sp,32
    80001ad0:	00008067          	ret

0000000080001ad4 <main>:
#include "../test/printing.hpp"

extern void userMain();
extern void changeUser();

int main() {
    80001ad4:	fe010113          	addi	sp,sp,-32
    80001ad8:	00113c23          	sd	ra,24(sp)
    80001adc:	00813823          	sd	s0,16(sp)
    80001ae0:	00913423          	sd	s1,8(sp)
    80001ae4:	02010413          	addi	s0,sp,32

    MemoryAllocator::mem_init();
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	c30080e7          	jalr	-976(ra) # 80002718 <_ZN15MemoryAllocator8mem_initEv>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap + 1);
    80001af0:	00008797          	auipc	a5,0x8
    80001af4:	6c07b783          	ld	a5,1728(a5) # 8000a1b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001af8:	00178793          	addi	a5,a5,1
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001afc:	10579073          	csrw	stvec,a5
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);    // SIE(sa vezbi) ili SPP

    TCB::main = TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    80001b00:	00000613          	li	a2,0
    80001b04:	00000593          	li	a1,0
    80001b08:	00000513          	li	a0,0
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	0c8080e7          	jalr	200(ra) # 80001bd4 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001b14:	00008797          	auipc	a5,0x8
    80001b18:	6b47b783          	ld	a5,1716(a5) # 8000a1c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b1c:	00a7b023          	sd	a0,0(a5)
    80001b20:	00008497          	auipc	s1,0x8
    80001b24:	6a04b483          	ld	s1,1696(s1) # 8000a1c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b28:	00a4b023          	sd	a0,0(s1)
    //TCB::running->start();

    changeUser();
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	cb4080e7          	jalr	-844(ra) # 800017e0 <_Z10changeUserv>
    userMain();
    80001b34:	00003097          	auipc	ra,0x3
    80001b38:	40c080e7          	jalr	1036(ra) # 80004f40 <_Z8userMainv>

    thread_exit();
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	a78080e7          	jalr	-1416(ra) # 800015b4 <_Z11thread_exitv>
    thread_join(&TCB::main);
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	ad0080e7          	jalr	-1328(ra) # 80001618 <_Z11thread_joinPP3TCB>
    printString("join gotov!\n");
    80001b50:	00006517          	auipc	a0,0x6
    80001b54:	4d050513          	addi	a0,a0,1232 # 80008020 <CONSOLE_STATUS+0x10>
    80001b58:	00003097          	auipc	ra,0x3
    80001b5c:	d20080e7          	jalr	-736(ra) # 80004878 <_Z11printStringPKc>

    return 0;
}
    80001b60:	00000513          	li	a0,0
    80001b64:	01813083          	ld	ra,24(sp)
    80001b68:	01013403          	ld	s0,16(sp)
    80001b6c:	00813483          	ld	s1,8(sp)
    80001b70:	02010113          	addi	sp,sp,32
    80001b74:	00008067          	ret

0000000080001b78 <_ZN3TCB13threadWrapperEv>:
TCB *TCB::createThread(Body startRoutine, void *arg, uint64 *stack) {       // kreiramo nit
    return new TCB(startRoutine, arg, stack);
}

void TCB::threadWrapper()       // sa vezbi
{
    80001b78:	fe010113          	addi	sp,sp,-32
    80001b7c:	00113c23          	sd	ra,24(sp)
    80001b80:	00813823          	sd	s0,16(sp)
    80001b84:	00913423          	sd	s1,8(sp)
    80001b88:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	46c080e7          	jalr	1132(ra) # 80001ff8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b94:	00008497          	auipc	s1,0x8
    80001b98:	68c48493          	addi	s1,s1,1676 # 8000a220 <_ZN3TCB7runningE>
    80001b9c:	0004b783          	ld	a5,0(s1)
    80001ba0:	0007b703          	ld	a4,0(a5)
    80001ba4:	0087b503          	ld	a0,8(a5)
    80001ba8:	000700e7          	jalr	a4
    running->setFinished(true);
    80001bac:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001bb0:	00100713          	li	a4,1
    80001bb4:	02e78823          	sb	a4,48(a5)
    thread_dispatch();    //TCB::dispatch();
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	a3c080e7          	jalr	-1476(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80001bc0:	01813083          	ld	ra,24(sp)
    80001bc4:	01013403          	ld	s0,16(sp)
    80001bc8:	00813483          	ld	s1,8(sp)
    80001bcc:	02010113          	addi	sp,sp,32
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
TCB *TCB::createThread(Body startRoutine, void *arg, uint64 *stack) {       // kreiramo nit
    80001bd4:	fd010113          	addi	sp,sp,-48
    80001bd8:	02113423          	sd	ra,40(sp)
    80001bdc:	02813023          	sd	s0,32(sp)
    80001be0:	00913c23          	sd	s1,24(sp)
    80001be4:	01213823          	sd	s2,16(sp)
    80001be8:	01313423          	sd	s3,8(sp)
    80001bec:	01413023          	sd	s4,0(sp)
    80001bf0:	03010413          	addi	s0,sp,48
    80001bf4:	00050993          	mv	s3,a0
    80001bf8:	00058a13          	mv	s4,a1
    80001bfc:	00060913          	mv	s2,a2
    static void ping(TCB* handle);
    void setPinged() { pinged = true; }

    // new i delete preklopljeni operatori u TCB-u
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    80001c00:	04000513          	li	a0,64
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	b70080e7          	jalr	-1168(ra) # 80002774 <_ZN15MemoryAllocator9mem_allocEm>
    80001c0c:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0     // sp ukazuje na poslednju lokaciju steka pa se smanjuje
                    }),

            finished(false),
            isBlocked(false)
    80001c10:	01353023          	sd	s3,0(a0)
    80001c14:	01453423          	sd	s4,8(a0)
            stack(body != nullptr ? stk : nullptr),
    80001c18:	04098063          	beqz	s3,80001c58 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x84>
            isBlocked(false)
    80001c1c:	0124b823          	sd	s2,16(s1)
    80001c20:	00000797          	auipc	a5,0x0
    80001c24:	f5878793          	addi	a5,a5,-168 # 80001b78 <_ZN3TCB13threadWrapperEv>
    80001c28:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0     // sp ukazuje na poslednju lokaciju steka pa se smanjuje
    80001c2c:	02090a63          	beqz	s2,80001c60 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x8c>
    80001c30:	00008637          	lui	a2,0x8
    80001c34:	00c90933          	add	s2,s2,a2
            isBlocked(false)
    80001c38:	0324b023          	sd	s2,32(s1)
    80001c3c:	02048823          	sb	zero,48(s1)
    80001c40:	020488a3          	sb	zero,49(s1)
    {

        if (body != nullptr) { Scheduler::put(this); }
    80001c44:	04098063          	beqz	s3,80001c84 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb0>
    80001c48:	00048513          	mv	a0,s1
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	9b4080e7          	jalr	-1612(ra) # 80002600 <_ZN9Scheduler3putEP3TCB>
    80001c54:	0300006f          	j	80001c84 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb0>
            stack(body != nullptr ? stk : nullptr),
    80001c58:	00000913          	li	s2,0
    80001c5c:	fc1ff06f          	j	80001c1c <_ZN3TCB12createThreadEPFvPvES0_Pm+0x48>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0     // sp ukazuje na poslednju lokaciju steka pa se smanjuje
    80001c60:	00000913          	li	s2,0
    80001c64:	fd5ff06f          	j	80001c38 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x64>
    80001c68:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	be0080e7          	jalr	-1056(ra) # 80002850 <_ZN15MemoryAllocator8mem_freeEPv>
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	00009097          	auipc	ra,0x9
    80001c80:	6dc080e7          	jalr	1756(ra) # 8000b358 <_Unwind_Resume>
        pid = ID++;     // MODIFIKACIJA - getPID
    80001c84:	00008717          	auipc	a4,0x8
    80001c88:	59c70713          	addi	a4,a4,1436 # 8000a220 <_ZN3TCB7runningE>
    80001c8c:	00872783          	lw	a5,8(a4)
    80001c90:	0017869b          	addiw	a3,a5,1
    80001c94:	00d72423          	sw	a3,8(a4)
    80001c98:	02f4aa23          	sw	a5,52(s1)
        pinged = false;
    80001c9c:	02048c23          	sb	zero,56(s1)
}
    80001ca0:	00048513          	mv	a0,s1
    80001ca4:	02813083          	ld	ra,40(sp)
    80001ca8:	02013403          	ld	s0,32(sp)
    80001cac:	01813483          	ld	s1,24(sp)
    80001cb0:	01013903          	ld	s2,16(sp)
    80001cb4:	00813983          	ld	s3,8(sp)
    80001cb8:	00013a03          	ld	s4,0(sp)
    80001cbc:	03010113          	addi	sp,sp,48
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN3TCB5startEv>:

// START - pokrece nit
int TCB::start() {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	92c080e7          	jalr	-1748(ra) # 80002600 <_ZN9Scheduler3putEP3TCB>
    return 0;   // uspeh;
}
    80001cdc:	00000513          	li	a0,0
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm>:
int TCB::createRunThread(thread_t* handle, Body startRoutine, void* arg, uint64* stack) {   // kreiramo nit i pozivamo start
    80001cf0:	fc010113          	addi	sp,sp,-64
    80001cf4:	02113c23          	sd	ra,56(sp)
    80001cf8:	02813823          	sd	s0,48(sp)
    80001cfc:	02913423          	sd	s1,40(sp)
    80001d00:	03213023          	sd	s2,32(sp)
    80001d04:	01313c23          	sd	s3,24(sp)
    80001d08:	01413823          	sd	s4,16(sp)
    80001d0c:	01513423          	sd	s5,8(sp)
    80001d10:	04010413          	addi	s0,sp,64
    80001d14:	00050a13          	mv	s4,a0
    80001d18:	00058993          	mv	s3,a1
    80001d1c:	00060a93          	mv	s5,a2
    80001d20:	00068913          	mv	s2,a3
        return MemoryAllocator::mem_alloc(size);
    80001d24:	04000513          	li	a0,64
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	a4c080e7          	jalr	-1460(ra) # 80002774 <_ZN15MemoryAllocator9mem_allocEm>
    80001d30:	00050493          	mv	s1,a0
            isBlocked(false)
    80001d34:	01353023          	sd	s3,0(a0)
    80001d38:	01553423          	sd	s5,8(a0)
            stack(body != nullptr ? stk : nullptr),
    80001d3c:	04098063          	beqz	s3,80001d7c <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm+0x8c>
            isBlocked(false)
    80001d40:	0124b823          	sd	s2,16(s1)
    80001d44:	00000797          	auipc	a5,0x0
    80001d48:	e3478793          	addi	a5,a5,-460 # 80001b78 <_ZN3TCB13threadWrapperEv>
    80001d4c:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0     // sp ukazuje na poslednju lokaciju steka pa se smanjuje
    80001d50:	02090a63          	beqz	s2,80001d84 <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm+0x94>
    80001d54:	000086b7          	lui	a3,0x8
    80001d58:	00d90933          	add	s2,s2,a3
            isBlocked(false)
    80001d5c:	0324b023          	sd	s2,32(s1)
    80001d60:	02048823          	sb	zero,48(s1)
    80001d64:	020488a3          	sb	zero,49(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80001d68:	02098263          	beqz	s3,80001d8c <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm+0x9c>
    80001d6c:	00048513          	mv	a0,s1
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	890080e7          	jalr	-1904(ra) # 80002600 <_ZN9Scheduler3putEP3TCB>
    80001d78:	0140006f          	j	80001d8c <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm+0x9c>
            stack(body != nullptr ? stk : nullptr),
    80001d7c:	00000913          	li	s2,0
    80001d80:	fc1ff06f          	j	80001d40 <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0     // sp ukazuje na poslednju lokaciju steka pa se smanjuje
    80001d84:	00000913          	li	s2,0
    80001d88:	fd5ff06f          	j	80001d5c <_ZN3TCB15createRunThreadEPPS_PFvPvES2_Pm+0x6c>
        pid = ID++;     // MODIFIKACIJA - getPID
    80001d8c:	00008717          	auipc	a4,0x8
    80001d90:	49470713          	addi	a4,a4,1172 # 8000a220 <_ZN3TCB7runningE>
    80001d94:	00872783          	lw	a5,8(a4)
    80001d98:	0017869b          	addiw	a3,a5,1
    80001d9c:	00d72423          	sw	a3,8(a4)
    80001da0:	02f4aa23          	sw	a5,52(s1)
        pinged = false;
    80001da4:	02048c23          	sb	zero,56(s1)
    *handle = new TCB(startRoutine, arg, stack);
    80001da8:	009a3023          	sd	s1,0(s4)
    return (*handle)->start();
    80001dac:	00048513          	mv	a0,s1
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	f14080e7          	jalr	-236(ra) # 80001cc4 <_ZN3TCB5startEv>
}
    80001db8:	03813083          	ld	ra,56(sp)
    80001dbc:	03013403          	ld	s0,48(sp)
    80001dc0:	02813483          	ld	s1,40(sp)
    80001dc4:	02013903          	ld	s2,32(sp)
    80001dc8:	01813983          	ld	s3,24(sp)
    80001dcc:	01013a03          	ld	s4,16(sp)
    80001dd0:	00813a83          	ld	s5,8(sp)
    80001dd4:	04010113          	addi	sp,sp,64
    80001dd8:	00008067          	ret
    80001ddc:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80001de0:	00048513          	mv	a0,s1
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	a6c080e7          	jalr	-1428(ra) # 80002850 <_ZN15MemoryAllocator8mem_freeEPv>
    80001dec:	00090513          	mv	a0,s2
    80001df0:	00009097          	auipc	ra,0x9
    80001df4:	568080e7          	jalr	1384(ra) # 8000b358 <_Unwind_Resume>

0000000080001df8 <_ZN3TCB4exitEv>:

int TCB::exit() {   // ???
    80001df8:	fe010113          	addi	sp,sp,-32
    80001dfc:	00113c23          	sd	ra,24(sp)
    80001e00:	00813823          	sd	s0,16(sp)
    80001e04:	00913423          	sd	s1,8(sp)
    80001e08:	02010413          	addi	s0,sp,32
    if(!running->isFinished()) {
    80001e0c:	00008497          	auipc	s1,0x8
    80001e10:	4144b483          	ld	s1,1044(s1) # 8000a220 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001e14:	0304c783          	lbu	a5,48(s1)
    80001e18:	04079263          	bnez	a5,80001e5c <_ZN3TCB4exitEv+0x64>
    void setFinished(bool value) { finished = value; }
    80001e1c:	00100793          	li	a5,1
    80001e20:	02f48823          	sb	a5,48(s1)
        running->setFinished(true);
        //dispatch();
        delete TCB::running;
    80001e24:	02048063          	beqz	s1,80001e44 <_ZN3TCB4exitEv+0x4c>
        delete[] stack;
    80001e28:	0104b503          	ld	a0,16(s1)
    80001e2c:	00050663          	beqz	a0,80001e38 <_ZN3TCB4exitEv+0x40>
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	1a0080e7          	jalr	416(ra) # 80001fd0 <_ZdaPv>
        MemoryAllocator::mem_free(ptr);
    80001e38:	00048513          	mv	a0,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	a14080e7          	jalr	-1516(ra) # 80002850 <_ZN15MemoryAllocator8mem_freeEPv>
        return 0;
    80001e44:	00000513          	li	a0,0
    }
    else {
        return -1;
    }
}
    80001e48:	01813083          	ld	ra,24(sp)
    80001e4c:	01013403          	ld	s0,16(sp)
    80001e50:	00813483          	ld	s1,8(sp)
    80001e54:	02010113          	addi	sp,sp,32
    80001e58:	00008067          	ret
        return -1;
    80001e5c:	fff00513          	li	a0,-1
    80001e60:	fe9ff06f          	j	80001e48 <_ZN3TCB4exitEv+0x50>

0000000080001e64 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()	//trenutno izvrsavanu nit zamenjujemo nekom drugom - SA VEZBI
{
    80001e64:	fe010113          	addi	sp,sp,-32
    80001e68:	00113c23          	sd	ra,24(sp)
    80001e6c:	00813823          	sd	s0,16(sp)
    80001e70:	00913423          	sd	s1,8(sp)
    80001e74:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001e78:	00008497          	auipc	s1,0x8
    80001e7c:	3a84b483          	ld	s1,936(s1) # 8000a220 <_ZN3TCB7runningE>
    if (old!= nullptr && !old->isFinished() && !old->isBlocked) {       // ako nit nije gotova ostavljamo je u scheduler-u
    80001e80:	00048a63          	beqz	s1,80001e94 <_ZN3TCB8dispatchEv+0x30>
    bool isFinished() const { return finished; }
    80001e84:	0304c783          	lbu	a5,48(s1)
    80001e88:	00079663          	bnez	a5,80001e94 <_ZN3TCB8dispatchEv+0x30>
    80001e8c:	0314c783          	lbu	a5,49(s1)
    80001e90:	02078c63          	beqz	a5,80001ec8 <_ZN3TCB8dispatchEv+0x64>
        Scheduler::put(old);
    }
    //if(old->pinged) printAddress((uint64)old);        /// MODIFIKACIJA
    TCB *new_thread = running = Scheduler::get();
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	704080e7          	jalr	1796(ra) # 80002598 <_ZN9Scheduler3getEv>
    80001e9c:	00008797          	auipc	a5,0x8
    80001ea0:	38a7b223          	sd	a0,900(a5) # 8000a220 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &new_thread->context);
    80001ea4:	01850593          	addi	a1,a0,24
    80001ea8:	01848513          	addi	a0,s1,24
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	5e4080e7          	jalr	1508(ra) # 80001490 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001eb4:	01813083          	ld	ra,24(sp)
    80001eb8:	01013403          	ld	s0,16(sp)
    80001ebc:	00813483          	ld	s1,8(sp)
    80001ec0:	02010113          	addi	sp,sp,32
    80001ec4:	00008067          	ret
        Scheduler::put(old);
    80001ec8:	00048513          	mv	a0,s1
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	734080e7          	jalr	1844(ra) # 80002600 <_ZN9Scheduler3putEP3TCB>
    80001ed4:	fc1ff06f          	j	80001e94 <_ZN3TCB8dispatchEv+0x30>

0000000080001ed8 <_ZN3TCB4joinEPPS_>:

void TCB::join(thread_t* handle) {
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	00050493          	mv	s1,a0
    while(!(*handle)->isFinished()) {
    80001ef0:	0004b783          	ld	a5,0(s1)
    80001ef4:	0307c783          	lbu	a5,48(a5)
    80001ef8:	00079863          	bnez	a5,80001f08 <_ZN3TCB4joinEPPS_+0x30>
        TCB::dispatch();
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	f68080e7          	jalr	-152(ra) # 80001e64 <_ZN3TCB8dispatchEv>
    while(!(*handle)->isFinished()) {
    80001f04:	fedff06f          	j	80001ef0 <_ZN3TCB4joinEPPS_+0x18>
    }
}
    80001f08:	01813083          	ld	ra,24(sp)
    80001f0c:	01013403          	ld	s0,16(sp)
    80001f10:	00813483          	ld	s1,8(sp)
    80001f14:	02010113          	addi	sp,sp,32
    80001f18:	00008067          	ret

0000000080001f1c <_ZN3TCB11getThreadIdEv>:

// MODIFIKACIJA
int TCB::getThreadId() {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    return pid;
}
    80001f28:	03452503          	lw	a0,52(a0)
    80001f2c:	00813403          	ld	s0,8(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <_ZN3TCB4pingEPS_>:

void TCB::ping(TCB *handle) {
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813423          	sd	s0,8(sp)
    80001f40:	01010413          	addi	s0,sp,16
    void setPinged() { pinged = true; }
    80001f44:	00100793          	li	a5,1
    80001f48:	02f50c23          	sb	a5,56(a0)
    handle->setPinged();
    80001f4c:	00813403          	ld	s0,8(sp)
    80001f50:	01010113          	addi	sp,sp,16
    80001f54:	00008067          	ret

0000000080001f58 <_Znwm>:
#include "../h/MemoryAllocator.h"

using size_t = decltype(sizeof(0));


void *operator new(size_t n) {
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00113423          	sd	ra,8(sp)
    80001f60:	00813023          	sd	s0,0(sp)
    80001f64:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001f68:	fffff097          	auipc	ra,0xfffff
    80001f6c:	55c080e7          	jalr	1372(ra) # 800014c4 <_Z9mem_allocm>
}
    80001f70:	00813083          	ld	ra,8(sp)
    80001f74:	00013403          	ld	s0,0(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <_Znam>:

void *operator new[](size_t n) {
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00113423          	sd	ra,8(sp)
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	534080e7          	jalr	1332(ra) # 800014c4 <_Z9mem_allocm>
}
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZdlPv>:

void operator delete(void *p) {
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	54c080e7          	jalr	1356(ra) # 80001504 <_Z8mem_freePv>
}
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZdaPv>:

void operator delete[](void *p) {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	524080e7          	jalr	1316(ra) # 80001504 <_Z8mem_freePv>
}
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.h"
#include "../test/printing.hpp"
#include "../h/semaphore.h"

void Riscv::popSppSpie()
{
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002004:	14109073          	csrw	sepc,ra
    //ms_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    80002008:	10200073          	sret
}
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN5Riscv14consoleHandlerEv>:
    }
    else
    { trapHandler(); }
}

void Riscv::consoleHandler() { console_handler(); }
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00006097          	auipc	ra,0x6
    8000202c:	a98080e7          	jalr	-1384(ra) # 80007ac0 <console_handler>
    80002030:	00813083          	ld	ra,8(sp)
    80002034:	00013403          	ld	s0,0(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN5Riscv12timerHandlerEv>:

void Riscv::timerHandler() { mc_sip(SIP_SSIP); }
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00813423          	sd	s0,8(sp)
    80002048:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000204c:	00200793          	li	a5,2
    80002050:	1447b073          	csrc	sip,a5
    80002054:	00813403          	ld	s0,8(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80002060:	f5010113          	addi	sp,sp,-176
    80002064:	0a113423          	sd	ra,168(sp)
    80002068:	0a813023          	sd	s0,160(sp)
    8000206c:	08913c23          	sd	s1,152(sp)
    80002070:	09213823          	sd	s2,144(sp)
    80002074:	09313423          	sd	s3,136(sp)
    80002078:	0b010413          	addi	s0,sp,176
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000207c:	142027f3          	csrr	a5,scause
    80002080:	f6f43023          	sd	a5,-160(s0)
    return scause;
    80002084:	f6043983          	ld	s3,-160(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002088:	143027f3          	csrr	a5,stval
    8000208c:	f4f43c23          	sd	a5,-168(s0)
    return stval;
    80002090:	f5843903          	ld	s2,-168(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002094:	141027f3          	csrr	a5,sepc
    80002098:	f4f43823          	sd	a5,-176(s0)
    return sepc;
    8000209c:	f5043483          	ld	s1,-176(s0)
    uint64 scause = r_scause();
    uint64 stval = r_stval();
    uint64 pc = r_sepc();
    printString("scause: ");
    800020a0:	00006517          	auipc	a0,0x6
    800020a4:	f9050513          	addi	a0,a0,-112 # 80008030 <CONSOLE_STATUS+0x20>
    800020a8:	00002097          	auipc	ra,0x2
    800020ac:	7d0080e7          	jalr	2000(ra) # 80004878 <_Z11printStringPKc>
    printInt(scause);
    800020b0:	00000613          	li	a2,0
    800020b4:	00a00593          	li	a1,10
    800020b8:	0009851b          	sext.w	a0,s3
    800020bc:	00003097          	auipc	ra,0x3
    800020c0:	96c080e7          	jalr	-1684(ra) # 80004a28 <_Z8printIntiii>
    putc('\n');
    800020c4:	00a00513          	li	a0,10
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	6f0080e7          	jalr	1776(ra) # 800017b8 <_Z4putcc>
    printString("stval: ");
    800020d0:	00006517          	auipc	a0,0x6
    800020d4:	f7050513          	addi	a0,a0,-144 # 80008040 <CONSOLE_STATUS+0x30>
    800020d8:	00002097          	auipc	ra,0x2
    800020dc:	7a0080e7          	jalr	1952(ra) # 80004878 <_Z11printStringPKc>
    printInt(stval);
    800020e0:	00000613          	li	a2,0
    800020e4:	00a00593          	li	a1,10
    800020e8:	0009051b          	sext.w	a0,s2
    800020ec:	00003097          	auipc	ra,0x3
    800020f0:	93c080e7          	jalr	-1732(ra) # 80004a28 <_Z8printIntiii>
    putc('\n');
    800020f4:	00a00513          	li	a0,10
    800020f8:	fffff097          	auipc	ra,0xfffff
    800020fc:	6c0080e7          	jalr	1728(ra) # 800017b8 <_Z4putcc>
    int i = 1, j, temp;
    80002100:	00100913          	li	s2,1
    80002104:	01c0006f          	j	80002120 <_ZN5Riscv11trapHandlerEv+0xc0>
        int r = ch * 16;
        temp = pc - r;
        if (temp < 10)
            temp = temp + 48;
        else
            temp = temp + 55;
    80002108:	0374849b          	addiw	s1,s1,55
        hexa_Number[i++] = temp;
    8000210c:	fd040713          	addi	a4,s0,-48
    80002110:	01270733          	add	a4,a4,s2
    80002114:	f8970c23          	sb	s1,-104(a4)
    80002118:	0019091b          	addiw	s2,s2,1
        pc = pc / 16;
    8000211c:	00078493          	mv	s1,a5
    while (pc != 0) {
    80002120:	02048263          	beqz	s1,80002144 <_ZN5Riscv11trapHandlerEv+0xe4>
        int ch = pc / 16;
    80002124:	0044d793          	srli	a5,s1,0x4
        int r = ch * 16;
    80002128:	0047971b          	slliw	a4,a5,0x4
        temp = pc - r;
    8000212c:	40e484bb          	subw	s1,s1,a4
    80002130:	0004869b          	sext.w	a3,s1
        if (temp < 10)
    80002134:	00900713          	li	a4,9
    80002138:	fcd748e3          	blt	a4,a3,80002108 <_ZN5Riscv11trapHandlerEv+0xa8>
            temp = temp + 48;
    8000213c:	0304849b          	addiw	s1,s1,48
    80002140:	fcdff06f          	j	8000210c <_ZN5Riscv11trapHandlerEv+0xac>
    }
    printString("sepc: 0x");
    80002144:	00006517          	auipc	a0,0x6
    80002148:	f0450513          	addi	a0,a0,-252 # 80008048 <CONSOLE_STATUS+0x38>
    8000214c:	00002097          	auipc	ra,0x2
    80002150:	72c080e7          	jalr	1836(ra) # 80004878 <_Z11printStringPKc>
    for (j = i - 1; j > 0; j--) putc(hexa_Number[j]);
    80002154:	fff9091b          	addiw	s2,s2,-1
    80002158:	03205063          	blez	s2,80002178 <_ZN5Riscv11trapHandlerEv+0x118>
    8000215c:	fd040793          	addi	a5,s0,-48
    80002160:	012787b3          	add	a5,a5,s2
    80002164:	f987c503          	lbu	a0,-104(a5)
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	650080e7          	jalr	1616(ra) # 800017b8 <_Z4putcc>
    80002170:	fff9091b          	addiw	s2,s2,-1
    80002174:	fe5ff06f          	j	80002158 <_ZN5Riscv11trapHandlerEv+0xf8>
    putc('\n');
    80002178:	00a00513          	li	a0,10
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	63c080e7          	jalr	1596(ra) # 800017b8 <_Z4putcc>
    while(1);
    80002184:	0000006f          	j	80002184 <_ZN5Riscv11trapHandlerEv+0x124>

0000000080002188 <_ZN5Riscv12ecallHandlerEv>:
{
    80002188:	f8010113          	addi	sp,sp,-128
    8000218c:	06113c23          	sd	ra,120(sp)
    80002190:	06813823          	sd	s0,112(sp)
    80002194:	06913423          	sd	s1,104(sp)
    80002198:	07213023          	sd	s2,96(sp)
    8000219c:	05313c23          	sd	s3,88(sp)
    800021a0:	05413823          	sd	s4,80(sp)
    800021a4:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a0" : "=r" (args[0]));
    800021a8:	00050793          	mv	a5,a0
    800021ac:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %0, a1" : "=r" (args[1]));
    800021b0:	00058793          	mv	a5,a1
    800021b4:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %0, a2" : "=r" (args[2]));
    800021b8:	00060793          	mv	a5,a2
    800021bc:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %0, a3" : "=r" (args[3]));
    800021c0:	00068793          	mv	a5,a3
    800021c4:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %0, a4" : "=r" (args[4]));
    800021c8:	00070793          	mv	a5,a4
    800021cc:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021d0:	141027f3          	csrr	a5,sepc
    800021d4:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800021d8:	f9043783          	ld	a5,-112(s0)
    uint64 volatile sepc = r_sepc() + 4;
    800021dc:	00478793          	addi	a5,a5,4
    800021e0:	faf43023          	sd	a5,-96(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021e4:	100027f3          	csrr	a5,sstatus
    800021e8:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    800021ec:	f8843783          	ld	a5,-120(s0)
    uint64 volatile sstatus = r_sstatus();
    800021f0:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800021f4:	142027f3          	csrr	a5,scause
    800021f8:	f8f43023          	sd	a5,-128(s0)
    return scause;
    800021fc:	f8043783          	ld	a5,-128(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002200:	ff878793          	addi	a5,a5,-8
    80002204:	00100713          	li	a4,1
    80002208:	26f76063          	bltu	a4,a5,80002468 <_ZN5Riscv12ecallHandlerEv+0x2e0>
        if(args[0] == 0x01) {       // mem_alloc
    8000220c:	fa843783          	ld	a5,-88(s0)
    80002210:	06e78e63          	beq	a5,a4,8000228c <_ZN5Riscv12ecallHandlerEv+0x104>
        else if(args[0] == 0x02) {       // mem_free
    80002214:	00200713          	li	a4,2
    80002218:	08e78463          	beq	a5,a4,800022a0 <_ZN5Riscv12ecallHandlerEv+0x118>
        else if(args[0] == 0x03) {
    8000221c:	00300713          	li	a4,3
    80002220:	08e78a63          	beq	a5,a4,800022b4 <_ZN5Riscv12ecallHandlerEv+0x12c>
        else if(args[0] == 0x11) {      // thread_create
    80002224:	01100713          	li	a4,17
    80002228:	0ce78863          	beq	a5,a4,800022f8 <_ZN5Riscv12ecallHandlerEv+0x170>
        else if(args[0] == 0x12) {      // thread_exit
    8000222c:	01200713          	li	a4,18
    80002230:	10e78663          	beq	a5,a4,8000233c <_ZN5Riscv12ecallHandlerEv+0x1b4>
        else if(args[0] == 0x13) {      // thread_dispatch
    80002234:	01300713          	li	a4,19
    80002238:	10e78a63          	beq	a5,a4,8000234c <_ZN5Riscv12ecallHandlerEv+0x1c4>
        else if(args[0] == 0x14) {
    8000223c:	01400713          	li	a4,20
    80002240:	10e78e63          	beq	a5,a4,8000235c <_ZN5Riscv12ecallHandlerEv+0x1d4>
        else if(args[0] == 0x15) {      // thread_create_no_run
    80002244:	01500713          	li	a4,21
    80002248:	12e78463          	beq	a5,a4,80002370 <_ZN5Riscv12ecallHandlerEv+0x1e8>
        else if(args[0] == 0x21) {      // sem_open
    8000224c:	02100713          	li	a4,33
    80002250:	14e78263          	beq	a5,a4,80002394 <_ZN5Riscv12ecallHandlerEv+0x20c>
        else if(args[0] == 0x22) {      // sem_close
    80002254:	02200713          	li	a4,34
    80002258:	16e78463          	beq	a5,a4,800023c0 <_ZN5Riscv12ecallHandlerEv+0x238>
        else if(args[0] == 0x23) {      // sem_wait
    8000225c:	02300713          	li	a4,35
    80002260:	18e78063          	beq	a5,a4,800023e0 <_ZN5Riscv12ecallHandlerEv+0x258>
        else if(args[0] == 0x24) {      // sem_signal
    80002264:	02400713          	li	a4,36
    80002268:	18e78c63          	beq	a5,a4,80002400 <_ZN5Riscv12ecallHandlerEv+0x278>
        else if(args[0] == 0x41) {  // getc
    8000226c:	04100713          	li	a4,65
    80002270:	1ae78863          	beq	a5,a4,80002420 <_ZN5Riscv12ecallHandlerEv+0x298>
        else if(args[0] == 0x42) {   // putc
    80002274:	04200713          	li	a4,66
    80002278:	1ae78c63          	beq	a5,a4,80002430 <_ZN5Riscv12ecallHandlerEv+0x2a8>
        else if(args[0] == 0x90) {      // thread_getId()
    8000227c:	09000713          	li	a4,144
    80002280:	1ce78263          	beq	a5,a4,80002444 <_ZN5Riscv12ecallHandlerEv+0x2bc>
        uint64 ret = 0;
    80002284:	00000493          	li	s1,0
    80002288:	03c0006f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            ret = (uint64)MemoryAllocator::mem_alloc(size);
    8000228c:	fb043503          	ld	a0,-80(s0)
    80002290:	00000097          	auipc	ra,0x0
    80002294:	4e4080e7          	jalr	1252(ra) # 80002774 <_ZN15MemoryAllocator9mem_allocEm>
    80002298:	00050493          	mv	s1,a0
    8000229c:	0280006f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            ret = (uint64)MemoryAllocator::mem_free(chunk);
    800022a0:	fb043503          	ld	a0,-80(s0)
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	5ac080e7          	jalr	1452(ra) # 80002850 <_ZN15MemoryAllocator8mem_freeEPv>
    800022ac:	00050493          	mv	s1,a0
    800022b0:	0140006f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            sstatus = sstatus & (0xFFFFFFFFFFFFFFFFUL - 256);
    800022b4:	f9843783          	ld	a5,-104(s0)
    800022b8:	eff7f793          	andi	a5,a5,-257
    800022bc:	f8f43c23          	sd	a5,-104(s0)
        uint64 ret = 0;
    800022c0:	00000493          	li	s1,0
        __asm__ volatile("sd %0, 10*8(fp)" : : "r" ((uint64)ret));      // u a0 vracam povratnu vrednost
    800022c4:	04943823          	sd	s1,80(s0)
        w_sstatus(sstatus);
    800022c8:	f9843783          	ld	a5,-104(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022cc:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800022d0:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022d4:	14179073          	csrw	sepc,a5
}
    800022d8:	07813083          	ld	ra,120(sp)
    800022dc:	07013403          	ld	s0,112(sp)
    800022e0:	06813483          	ld	s1,104(sp)
    800022e4:	06013903          	ld	s2,96(sp)
    800022e8:	05813983          	ld	s3,88(sp)
    800022ec:	05013a03          	ld	s4,80(sp)
    800022f0:	08010113          	addi	sp,sp,128
    800022f4:	00008067          	ret
            thread_t* handle = (thread_t*)args[1];
    800022f8:	fb043903          	ld	s2,-80(s0)
            void(*startRoutine) (void*) = (void(*)(void*))args[2];
    800022fc:	fb843983          	ld	s3,-72(s0)
            void* arg = (void*)args[3];
    80002300:	fc043a03          	ld	s4,-64(s0)
            void *stack_space = MemoryAllocator::mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE); // sizeof(uint64)
    80002304:	00008537          	lui	a0,0x8
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	46c080e7          	jalr	1132(ra) # 80002774 <_ZN15MemoryAllocator9mem_allocEm>
    80002310:	00050613          	mv	a2,a0
            if(!stack_space) ret = -1;
    80002314:	02050063          	beqz	a0,80002334 <_ZN5Riscv12ecallHandlerEv+0x1ac>
        uint64 ret = 0;
    80002318:	00000493          	li	s1,0
            *handle = TCB::createThread(startRoutine, arg, (uint64*)stack_space);     // pravimo nit
    8000231c:	000a0593          	mv	a1,s4
    80002320:	00098513          	mv	a0,s3
    80002324:	00000097          	auipc	ra,0x0
    80002328:	8b0080e7          	jalr	-1872(ra) # 80001bd4 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    8000232c:	00a93023          	sd	a0,0(s2)
    80002330:	f95ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            if(!stack_space) ret = -1;
    80002334:	fff00493          	li	s1,-1
    80002338:	fe5ff06f          	j	8000231c <_ZN5Riscv12ecallHandlerEv+0x194>
            ret = TCB::exit();
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	abc080e7          	jalr	-1348(ra) # 80001df8 <_ZN3TCB4exitEv>
    80002344:	00050493          	mv	s1,a0
    80002348:	f7dff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            TCB::dispatch();
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	b18080e7          	jalr	-1256(ra) # 80001e64 <_ZN3TCB8dispatchEv>
        uint64 ret = 0;
    80002354:	00000493          	li	s1,0
    80002358:	f6dff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    8000235c:	00058513          	mv	a0,a1
            TCB::join(handle);
    80002360:	00000097          	auipc	ra,0x0
    80002364:	b78080e7          	jalr	-1160(ra) # 80001ed8 <_ZN3TCB4joinEPPS_>
        uint64 ret = 0;
    80002368:	00000493          	li	s1,0
    8000236c:	f59ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            thread_t* handle = (thread_t*)args[1];
    80002370:	fb043483          	ld	s1,-80(s0)
            *handle = TCB::createThread(startRoutine, arg, stack_space);     // pravimo nit, ali je ne pokrecemo, ona ceka da bude pokrenuta sa .start()
    80002374:	fc843603          	ld	a2,-56(s0)
    80002378:	fc043583          	ld	a1,-64(s0)
    8000237c:	fb843503          	ld	a0,-72(s0)
    80002380:	00000097          	auipc	ra,0x0
    80002384:	854080e7          	jalr	-1964(ra) # 80001bd4 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002388:	00a4b023          	sd	a0,0(s1)
        uint64 ret = 0;
    8000238c:	00000493          	li	s1,0
    80002390:	f35ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            sem_t* handle = (sem_t*)args[1];
    80002394:	fb043903          	ld	s2,-80(s0)
            unsigned init = (unsigned)args[2];
    80002398:	fb842983          	lw	s3,-72(s0)
        return MemoryAllocator::mem_alloc(size);
    8000239c:	02000513          	li	a0,32
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	3d4080e7          	jalr	980(ra) # 80002774 <_ZN15MemoryAllocator9mem_allocEm>
    800023a8:	00050493          	mv	s1,a0
            new SEM(handle, init);
    800023ac:	00098613          	mv	a2,s3
    800023b0:	00090593          	mv	a1,s2
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	480080e7          	jalr	1152(ra) # 80001834 <_ZN3SEMC1EPPS_j>
    800023bc:	0a40006f          	j	80002460 <_ZN5Riscv12ecallHandlerEv+0x2d8>
            sem_t handle = (sem_t)args[1];
    800023c0:	fb043503          	ld	a0,-80(s0)
            if(!handle) ret = -1;
    800023c4:	00051663          	bnez	a0,800023d0 <_ZN5Riscv12ecallHandlerEv+0x248>
    800023c8:	fff00493          	li	s1,-1
    800023cc:	ef9ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
                ret = handle->close();
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	5f4080e7          	jalr	1524(ra) # 800019c4 <_ZN3SEM5closeEv>
    800023d8:	00050493          	mv	s1,a0
    800023dc:	ee9ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            sem_t handle = (sem_t)args[1];
    800023e0:	fb043503          	ld	a0,-80(s0)
            if(!handle) ret = -1;
    800023e4:	00051663          	bnez	a0,800023f0 <_ZN5Riscv12ecallHandlerEv+0x268>
    800023e8:	fff00493          	li	s1,-1
    800023ec:	ed9ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
                ret = handle->wait();
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	47c080e7          	jalr	1148(ra) # 8000186c <_ZN3SEM4waitEv>
    800023f8:	00050493          	mv	s1,a0
    800023fc:	ec9ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            sem_t handle = (sem_t)args[1];
    80002400:	fb043503          	ld	a0,-80(s0)
            if(!handle) ret = -1;
    80002404:	00051663          	bnez	a0,80002410 <_ZN5Riscv12ecallHandlerEv+0x288>
    80002408:	fff00493          	li	s1,-1
    8000240c:	eb9ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
                ret = handle->signal();
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	514080e7          	jalr	1300(ra) # 80001924 <_ZN3SEM6signalEv>
    80002418:	00050493          	mv	s1,a0
    8000241c:	ea9ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            ret = __getc();
    80002420:	00005097          	auipc	ra,0x5
    80002424:	668080e7          	jalr	1640(ra) # 80007a88 <__getc>
    80002428:	00050493          	mv	s1,a0
    8000242c:	e99ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            __putc((char)args[1]);
    80002430:	fb044503          	lbu	a0,-80(s0)
    80002434:	00005097          	auipc	ra,0x5
    80002438:	618080e7          	jalr	1560(ra) # 80007a4c <__putc>
        uint64 ret = 0;
    8000243c:	00000493          	li	s1,0
    80002440:	e85ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
            TCB::running->getThreadId();
    80002444:	00008797          	auipc	a5,0x8
    80002448:	d847b783          	ld	a5,-636(a5) # 8000a1c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000244c:	0007b503          	ld	a0,0(a5)
    80002450:	00000097          	auipc	ra,0x0
    80002454:	acc080e7          	jalr	-1332(ra) # 80001f1c <_ZN3TCB11getThreadIdEv>
        uint64 ret = 0;
    80002458:	00000493          	li	s1,0
    8000245c:	e69ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
    80002460:	00000493          	li	s1,0
    80002464:	e61ff06f          	j	800022c4 <_ZN5Riscv12ecallHandlerEv+0x13c>
    { trapHandler(); }
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	bf8080e7          	jalr	-1032(ra) # 80002060 <_ZN5Riscv11trapHandlerEv>
    80002470:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80002474:	00048513          	mv	a0,s1
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	3d8080e7          	jalr	984(ra) # 80002850 <_ZN15MemoryAllocator8mem_freeEPv>
    80002480:	00090513          	mv	a0,s2
    80002484:	00009097          	auipc	ra,0x9
    80002488:	ed4080e7          	jalr	-300(ra) # 8000b358 <_Unwind_Resume>

000000008000248c <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    8000249c:	00008797          	auipc	a5,0x8
    800024a0:	b9c78793          	addi	a5,a5,-1124 # 8000a038 <_ZTV9Semaphore+0x10>
    800024a4:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    sem_close(myHandle);
    800024a8:	00853503          	ld	a0,8(a0)
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	1e8080e7          	jalr	488(ra) # 80001694 <_Z9sem_closeP3SEM>
}
    800024b4:	00813083          	ld	ra,8(sp)
    800024b8:	00013403          	ld	s0,0(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800024c4:	fe010113          	addi	sp,sp,-32
    800024c8:	00113c23          	sd	ra,24(sp)
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00913423          	sd	s1,8(sp)
    800024d4:	02010413          	addi	s0,sp,32
    800024d8:	00050493          	mv	s1,a0
}
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	fb0080e7          	jalr	-80(ra) # 8000248c <_ZN9SemaphoreD1Ev>
    800024e4:	00048513          	mv	a0,s1
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	ac0080e7          	jalr	-1344(ra) # 80001fa8 <_ZdlPv>
    800024f0:	01813083          	ld	ra,24(sp)
    800024f4:	01013403          	ld	s0,16(sp)
    800024f8:	00813483          	ld	s1,8(sp)
    800024fc:	02010113          	addi	sp,sp,32
    80002500:	00008067          	ret

0000000080002504 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00113423          	sd	ra,8(sp)
    8000250c:	00813023          	sd	s0,0(sp)
    80002510:	01010413          	addi	s0,sp,16
    80002514:	00008797          	auipc	a5,0x8
    80002518:	b2478793          	addi	a5,a5,-1244 # 8000a038 <_ZTV9Semaphore+0x10>
    8000251c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002520:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002524:	00850513          	addi	a0,a0,8
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	118080e7          	jalr	280(ra) # 80001640 <_Z8sem_openPP3SEMj>
}
    80002530:	00813083          	ld	ra,8(sp)
    80002534:	00013403          	ld	s0,0(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret

0000000080002540 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002540:	ff010113          	addi	sp,sp,-16
    80002544:	00113423          	sd	ra,8(sp)
    80002548:	00813023          	sd	s0,0(sp)
    8000254c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002550:	00853503          	ld	a0,8(a0)
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	190080e7          	jalr	400(ra) # 800016e4 <_Z8sem_waitP3SEM>
}
    8000255c:	00813083          	ld	ra,8(sp)
    80002560:	00013403          	ld	s0,0(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret

000000008000256c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00113423          	sd	ra,8(sp)
    80002574:	00813023          	sd	s0,0(sp)
    80002578:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000257c:	00853503          	ld	a0,8(a0)
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	1b4080e7          	jalr	436(ra) # 80001734 <_Z10sem_signalP3SEM>
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN9Scheduler3getEv>:

Elem* Scheduler::head = nullptr;
Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get()
{
    80002598:	fe010113          	addi	sp,sp,-32
    8000259c:	00113c23          	sd	ra,24(sp)
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	02010413          	addi	s0,sp,32
    if (!head) { return nullptr; }
    800025ac:	00008517          	auipc	a0,0x8
    800025b0:	c8c53503          	ld	a0,-884(a0) # 8000a238 <_ZN9Scheduler4headE>
    800025b4:	04050263          	beqz	a0,800025f8 <_ZN9Scheduler3getEv+0x60>
    Elem *elem = head;
    head = head->next;
    800025b8:	00853783          	ld	a5,8(a0)
    800025bc:	00008717          	auipc	a4,0x8
    800025c0:	c6f73e23          	sd	a5,-900(a4) # 8000a238 <_ZN9Scheduler4headE>
    if (!head) { tail = nullptr; }
    800025c4:	02078463          	beqz	a5,800025ec <_ZN9Scheduler3getEv+0x54>
    TCB *ret = elem->data;
    800025c8:	00053483          	ld	s1,0(a0)
    mem_free(elem);
    800025cc:	fffff097          	auipc	ra,0xfffff
    800025d0:	f38080e7          	jalr	-200(ra) # 80001504 <_Z8mem_freePv>
    return ret;
}
    800025d4:	00048513          	mv	a0,s1
    800025d8:	01813083          	ld	ra,24(sp)
    800025dc:	01013403          	ld	s0,16(sp)
    800025e0:	00813483          	ld	s1,8(sp)
    800025e4:	02010113          	addi	sp,sp,32
    800025e8:	00008067          	ret
    if (!head) { tail = nullptr; }
    800025ec:	00008797          	auipc	a5,0x8
    800025f0:	c407ba23          	sd	zero,-940(a5) # 8000a240 <_ZN9Scheduler4tailE>
    800025f4:	fd5ff06f          	j	800025c8 <_ZN9Scheduler3getEv+0x30>
    if (!head) { return nullptr; }
    800025f8:	00050493          	mv	s1,a0
    800025fc:	fd9ff06f          	j	800025d4 <_ZN9Scheduler3getEv+0x3c>

0000000080002600 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *tcb)
{
    if (!tcb) return;
    80002600:	06050863          	beqz	a0,80002670 <_ZN9Scheduler3putEP3TCB+0x70>
{
    80002604:	fe010113          	addi	sp,sp,-32
    80002608:	00113c23          	sd	ra,24(sp)
    8000260c:	00813823          	sd	s0,16(sp)
    80002610:	00913423          	sd	s1,8(sp)
    80002614:	02010413          	addi	s0,sp,32
    80002618:	00050493          	mv	s1,a0
    Elem * elem = head;
    elem = (Elem*)mem_alloc((sizeof(Elem)));
    8000261c:	01000513          	li	a0,16
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	ea4080e7          	jalr	-348(ra) # 800014c4 <_Z9mem_allocm>
    elem->data = tcb;
    80002628:	00953023          	sd	s1,0(a0)
    elem->next = nullptr;
    8000262c:	00053423          	sd	zero,8(a0)
    if (tail != nullptr)
    80002630:	00008797          	auipc	a5,0x8
    80002634:	c107b783          	ld	a5,-1008(a5) # 8000a240 <_ZN9Scheduler4tailE>
    80002638:	02078263          	beqz	a5,8000265c <_ZN9Scheduler3putEP3TCB+0x5c>
    {
        tail->next = elem;
    8000263c:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80002640:	00008797          	auipc	a5,0x8
    80002644:	c0a7b023          	sd	a0,-1024(a5) # 8000a240 <_ZN9Scheduler4tailE>
    } else
    {
        head = tail = elem;
    }
    80002648:	01813083          	ld	ra,24(sp)
    8000264c:	01013403          	ld	s0,16(sp)
    80002650:	00813483          	ld	s1,8(sp)
    80002654:	02010113          	addi	sp,sp,32
    80002658:	00008067          	ret
        head = tail = elem;
    8000265c:	00008797          	auipc	a5,0x8
    80002660:	bdc78793          	addi	a5,a5,-1060 # 8000a238 <_ZN9Scheduler4headE>
    80002664:	00a7b423          	sd	a0,8(a5)
    80002668:	00a7b023          	sd	a0,0(a5)
    8000266c:	fddff06f          	j	80002648 <_ZN9Scheduler3putEP3TCB+0x48>
    80002670:	00008067          	ret

0000000080002674 <_ZN7Console4getcEv>:
// Created by os on 8/22/23.
//

#include "../h/syscall_cpp.h"

char Console::getc() {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    return ::getc();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	100080e7          	jalr	256(ra) # 80001784 <_Z4getcv>
}
    8000268c:	00813083          	ld	ra,8(sp)
    80002690:	00013403          	ld	s0,0(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	10c080e7          	jalr	268(ra) # 800017b8 <_Z4putcc>
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_Z9tryToJoinP4Node>:
#include "../lib/console.h"

Node* MemoryAllocator::freeListHead = nullptr;

// pokusava da spoji cur sa cur->next
void tryToJoin(Node* cur) {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
    if(cur && cur->next && (((char*)cur + cur->size + MEM_BLOCK_SIZE) >= ((char*)(cur->next)) ) ) {
    800026d0:	02050e63          	beqz	a0,8000270c <_Z9tryToJoinP4Node+0x48>
    800026d4:	00053783          	ld	a5,0(a0)
    800026d8:	02078a63          	beqz	a5,8000270c <_Z9tryToJoinP4Node+0x48>
    800026dc:	01053703          	ld	a4,16(a0)
    800026e0:	04070693          	addi	a3,a4,64
    800026e4:	00d506b3          	add	a3,a0,a3
    800026e8:	02f6e263          	bltu	a3,a5,8000270c <_Z9tryToJoinP4Node+0x48>
        cur->size += cur->next->size + MEM_BLOCK_SIZE;
    800026ec:	0107b683          	ld	a3,16(a5)
    800026f0:	00d70733          	add	a4,a4,a3
    800026f4:	04070713          	addi	a4,a4,64
    800026f8:	00e53823          	sd	a4,16(a0)
        cur->next = cur->next->next;
    800026fc:	0007b783          	ld	a5,0(a5)
    80002700:	00f53023          	sd	a5,0(a0)
        if(cur->next)
    80002704:	00078463          	beqz	a5,8000270c <_Z9tryToJoinP4Node+0x48>
            cur->next->prev = cur;
    80002708:	00a7b423          	sd	a0,8(a5)
    }
}
    8000270c:	00813403          	ld	s0,8(sp)
    80002710:	01010113          	addi	sp,sp,16
    80002714:	00008067          	ret

0000000080002718 <_ZN15MemoryAllocator8mem_initEv>:

void MemoryAllocator::mem_init() {
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00813423          	sd	s0,8(sp)
    80002720:	01010413          	addi	s0,sp,16
    freeListHead = (Node*)HEAP_START_ADDR;
    80002724:	00008697          	auipc	a3,0x8
    80002728:	a846b683          	ld	a3,-1404(a3) # 8000a1a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000272c:	0006b783          	ld	a5,0(a3)
    80002730:	00008717          	auipc	a4,0x8
    80002734:	b1870713          	addi	a4,a4,-1256 # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
    80002738:	00f73023          	sd	a5,0(a4)
    freeListHead->next = freeListHead->prev = nullptr;
    8000273c:	0007b423          	sd	zero,8(a5)
    80002740:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - MEM_BLOCK_SIZE); // jedan blok za zaglavlje
    80002744:	00008797          	auipc	a5,0x8
    80002748:	a8c7b783          	ld	a5,-1396(a5) # 8000a1d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000274c:	0007b783          	ld	a5,0(a5)
    80002750:	0006b683          	ld	a3,0(a3)
    80002754:	40d787b3          	sub	a5,a5,a3
    80002758:	00073703          	ld	a4,0(a4)
    8000275c:	fc078793          	addi	a5,a5,-64
    80002760:	00f73823          	sd	a5,16(a4)
    freeListHead->status = 0;   //nije alociran
    80002764:	00070c23          	sb	zero,24(a4)
}
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00813423          	sd	s0,8(sp)
    8000277c:	01010413          	addi	s0,sp,16
    80002780:	00050793          	mv	a5,a0
    // zaokruzujemo na blokove
    if(size % MEM_BLOCK_SIZE != 0)
    80002784:	03f57713          	andi	a4,a0,63
    80002788:	00070863          	beqz	a4,80002798 <_ZN15MemoryAllocator9mem_allocEm+0x24>
        size = (size/MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;
    8000278c:	00655793          	srli	a5,a0,0x6
    80002790:	00178793          	addi	a5,a5,1
    80002794:	00679793          	slli	a5,a5,0x6

    // Pokusavamo da nadjemo free node koji ima dovoljno mesta - u pocetku imamo samo jedan ogroman segment velicine ukupnog prostora koji posle delimo
    Node* node = freeListHead;
    80002798:	00008517          	auipc	a0,0x8
    8000279c:	ab053503          	ld	a0,-1360(a0) # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
    Node* prev = nullptr;
    800027a0:	00000693          	li	a3,0
    for(; node != nullptr; prev = node, node = node->next) {
    800027a4:	00050c63          	beqz	a0,800027bc <_ZN15MemoryAllocator9mem_allocEm+0x48>
        if(node->size >= size) break;
    800027a8:	01053703          	ld	a4,16(a0)
    800027ac:	00f77863          	bgeu	a4,a5,800027bc <_ZN15MemoryAllocator9mem_allocEm+0x48>
    for(; node != nullptr; prev = node, node = node->next) {
    800027b0:	00050693          	mv	a3,a0
    800027b4:	00053503          	ld	a0,0(a0)
    800027b8:	fedff06f          	j	800027a4 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if(node == nullptr) return nullptr;  //nismo nasli slobodan fragment
    800027bc:	04050863          	beqz	a0,8000280c <_ZN15MemoryAllocator9mem_allocEm+0x98>


    // Alociramo (zauzimamo) blok:
    size_t remainingSize = node->size - size;   // visak koji ce nam ostati nakon alociranja
    800027c0:	01053703          	ld	a4,16(a0)
    800027c4:	40f70633          	sub	a2,a4,a5
    if(remainingSize > 0) {
    800027c8:	06f70063          	beq	a4,a5,80002828 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        node->size = size;      // postavljamo trenutni node na velicinu size a ostatak ostavljamo za novi node
    800027cc:	00f53823          	sd	a5,16(a0)
        Node* newNode = (Node*)((char*)node + node->size + MEM_BLOCK_SIZE);
    800027d0:	04078793          	addi	a5,a5,64
    800027d4:	00f507b3          	add	a5,a0,a5
        if(prev) {
    800027d8:	04068063          	beqz	a3,80002818 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
            prev->next = newNode;
    800027dc:	00f6b023          	sd	a5,0(a3)
            newNode->prev = prev;
    800027e0:	00d7b423          	sd	a3,8(a5)
        } else {    // alociramo glavu liste (prvi element)
            freeListHead = newNode;
            newNode->prev = nullptr;
        }
        newNode->next = node->next;
    800027e4:	00053703          	ld	a4,0(a0)
    800027e8:	00e7b023          	sd	a4,0(a5)
        newNode->size = remainingSize - MEM_BLOCK_SIZE;
    800027ec:	fc060613          	addi	a2,a2,-64 # 7fc0 <_entry-0x7fff8040>
    800027f0:	00c7b823          	sd	a2,16(a5)
        newNode->status = 0;
    800027f4:	00078c23          	sb	zero,24(a5)
        } else {    // alociramo prvi blok u nizu
            freeListHead = node->next;
        }
    }

    node->next = node->prev = nullptr;
    800027f8:	00053423          	sd	zero,8(a0)
    800027fc:	00053023          	sd	zero,0(a0)
    node->status = 1;   // ALLOCATED
    80002800:	00100793          	li	a5,1
    80002804:	00f50c23          	sb	a5,24(a0)
    return (void*)((char*)(node) + MEM_BLOCK_SIZE);
    80002808:	04050513          	addi	a0,a0,64
}
    8000280c:	00813403          	ld	s0,8(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret
            freeListHead = newNode;
    80002818:	00008717          	auipc	a4,0x8
    8000281c:	a2f73823          	sd	a5,-1488(a4) # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
            newNode->prev = nullptr;
    80002820:	0007b423          	sd	zero,8(a5)
    80002824:	fc1ff06f          	j	800027e4 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if(prev) {
    80002828:	00068c63          	beqz	a3,80002840 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            prev->next = node->next;
    8000282c:	00053783          	ld	a5,0(a0)
    80002830:	00f6b023          	sd	a5,0(a3)
            node->next->prev = prev;
    80002834:	00053783          	ld	a5,0(a0)
    80002838:	00d7b423          	sd	a3,8(a5)
    8000283c:	fbdff06f          	j	800027f8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
            freeListHead = node->next;
    80002840:	00053783          	ld	a5,0(a0)
    80002844:	00008717          	auipc	a4,0x8
    80002848:	a0f73223          	sd	a5,-1532(a4) # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
    8000284c:	fadff06f          	j	800027f8 <_ZN15MemoryAllocator9mem_allocEm+0x84>

0000000080002850 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* ptr) {
    if(ptr == nullptr) return -1;  // neuspeh
    80002850:	0c050a63          	beqz	a0,80002924 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
int MemoryAllocator::mem_free(void* ptr) {
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00113c23          	sd	ra,24(sp)
    8000285c:	00813823          	sd	s0,16(sp)
    80002860:	00913423          	sd	s1,8(sp)
    80002864:	01213023          	sd	s2,0(sp)
    80002868:	02010413          	addi	s0,sp,32

    Node* node = (Node*)((char*)ptr - MEM_BLOCK_SIZE);   //argument ptr pokazuje na alociran prostor nakon zaglavlja (ne na zaglavlje)
    8000286c:	fc050493          	addi	s1,a0,-64
    if(node->status != 1) return -1;    // ako segment nije vec prethodno alociran (1 == allocated)
    80002870:	fd854783          	lbu	a5,-40(a0)
    80002874:	0a078c63          	beqz	a5,8000292c <_ZN15MemoryAllocator8mem_freeEPv+0xdc>

    // ako je freeListHead == NULL znaci da uopste i nemamo slobodnih segmenata, pa nemamo ni sta da oslobodimo
    if(freeListHead == nullptr) return -1;
    80002878:	00008797          	auipc	a5,0x8
    8000287c:	9d07b783          	ld	a5,-1584(a5) # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
    80002880:	0a078a63          	beqz	a5,80002934 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>

    node->status = 0;    // oslobadjamo segment da bude free (0 == free)
    80002884:	fc050c23          	sb	zero,-40(a0)

    // trazimo gde se nalazi cvor koji hocemo da oslobodimo
    Node* pomNode = freeListHead;
    80002888:	00008717          	auipc	a4,0x8
    8000288c:	9c073703          	ld	a4,-1600(a4) # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
    80002890:	00070793          	mv	a5,a4
    Node* prevNode = nullptr;
    80002894:	00000913          	li	s2,0
    for(; pomNode != nullptr; prevNode = pomNode, pomNode = pomNode->next) {
    80002898:	00078a63          	beqz	a5,800028ac <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        if(node < pomNode) {
    8000289c:	00f4e863          	bltu	s1,a5,800028ac <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
    for(; pomNode != nullptr; prevNode = pomNode, pomNode = pomNode->next) {
    800028a0:	00078913          	mv	s2,a5
    800028a4:	0007b783          	ld	a5,0(a5)
    800028a8:	ff1ff06f          	j	80002898 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            break;
        }
    }

    if(node < freeListHead) {   // ubacuje se pre glave
    800028ac:	06e4f063          	bgeu	s1,a4,8000290c <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
        node->next = freeListHead;
    800028b0:	fce53023          	sd	a4,-64(a0)
        node->prev = nullptr;
    800028b4:	fc053423          	sd	zero,-56(a0)

        freeListHead->prev = node;
    800028b8:	00008797          	auipc	a5,0x8
    800028bc:	99078793          	addi	a5,a5,-1648 # 8000a248 <_ZN15MemoryAllocator12freeListHeadE>
    800028c0:	0007b703          	ld	a4,0(a5)
    800028c4:	00973423          	sd	s1,8(a4)

        freeListHead = node;
    800028c8:	0097b023          	sd	s1,0(a5)
        prevNode->next = node;
        if(pomNode) pomNode->prev = node;
    }

    // ako treba - spojiti slobodne segmente u jedan veci
    tryToJoin(node->next);
    800028cc:	fc053503          	ld	a0,-64(a0)
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	df4080e7          	jalr	-524(ra) # 800026c4 <_Z9tryToJoinP4Node>
    tryToJoin(node);
    800028d8:	00048513          	mv	a0,s1
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	de8080e7          	jalr	-536(ra) # 800026c4 <_Z9tryToJoinP4Node>
    tryToJoin(prevNode);
    800028e4:	00090513          	mv	a0,s2
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	ddc080e7          	jalr	-548(ra) # 800026c4 <_Z9tryToJoinP4Node>

    return 0;   // uspeh
    800028f0:	00000513          	li	a0,0
}
    800028f4:	01813083          	ld	ra,24(sp)
    800028f8:	01013403          	ld	s0,16(sp)
    800028fc:	00813483          	ld	s1,8(sp)
    80002900:	00013903          	ld	s2,0(sp)
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00008067          	ret
        node->next = pomNode;
    8000290c:	fcf53023          	sd	a5,-64(a0)
        node->prev = prevNode;
    80002910:	fd253423          	sd	s2,-56(a0)
        prevNode->next = node;
    80002914:	00993023          	sd	s1,0(s2)
        if(pomNode) pomNode->prev = node;
    80002918:	fa078ae3          	beqz	a5,800028cc <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    8000291c:	0097b423          	sd	s1,8(a5)
    80002920:	fadff06f          	j	800028cc <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    if(ptr == nullptr) return -1;  // neuspeh
    80002924:	fff00513          	li	a0,-1
}
    80002928:	00008067          	ret
    if(node->status != 1) return -1;    // ako segment nije vec prethodno alociran (1 == allocated)
    8000292c:	fff00513          	li	a0,-1
    80002930:	fc5ff06f          	j	800028f4 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    if(freeListHead == nullptr) return -1;
    80002934:	fff00513          	li	a0,-1
    80002938:	fbdff06f          	j	800028f4 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>

000000008000293c <_ZN6Thread10wrapperRunEPv>:
}

Thread::Thread()  { myHandle = nullptr; }

// WRAPPER
void Thread::wrapperRun(void* nit) {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
    ((Thread*)nit)->run();
    8000294c:	00053783          	ld	a5,0(a0)
    80002950:	0107b783          	ld	a5,16(a5)
    80002954:	000780e7          	jalr	a5
    //TCB::running.myHandle->run();   // ovo valjda isto moze ali je myHandle private
}
    80002958:	00813083          	ld	ra,8(sp)
    8000295c:	00013403          	ld	s0,0(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <_ZN6ThreadD1Ev>:

Thread::~Thread() noexcept {    // DESTRUKTOR
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	02010413          	addi	s0,sp,32
    8000297c:	00050493          	mv	s1,a0
    80002980:	00007797          	auipc	a5,0x7
    80002984:	6d878793          	addi	a5,a5,1752 # 8000a058 <_ZTV6Thread+0x10>
    80002988:	00f53023          	sd	a5,0(a0)
    //thread_exit   // ???
    sem_signal(semafor);      // MODIFIKACIJA
    8000298c:	00008517          	auipc	a0,0x8
    80002990:	8c453503          	ld	a0,-1852(a0) # 8000a250 <_ZN6Thread7semaforE>
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	da0080e7          	jalr	-608(ra) # 80001734 <_Z10sem_signalP3SEM>
    mem_free(this);
    8000299c:	00048513          	mv	a0,s1
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	b64080e7          	jalr	-1180(ra) # 80001504 <_Z8mem_freePv>
}
    800029a8:	01813083          	ld	ra,24(sp)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	00813483          	ld	s1,8(sp)
    800029b4:	02010113          	addi	sp,sp,32
    800029b8:	00008067          	ret

00000000800029bc <_ZN6ThreadD0Ev>:
Thread::~Thread() noexcept {    // DESTRUKTOR
    800029bc:	fe010113          	addi	sp,sp,-32
    800029c0:	00113c23          	sd	ra,24(sp)
    800029c4:	00813823          	sd	s0,16(sp)
    800029c8:	00913423          	sd	s1,8(sp)
    800029cc:	02010413          	addi	s0,sp,32
    800029d0:	00050493          	mv	s1,a0
}
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	f94080e7          	jalr	-108(ra) # 80002968 <_ZN6ThreadD1Ev>
    800029dc:	00048513          	mv	a0,s1
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	5c8080e7          	jalr	1480(ra) # 80001fa8 <_ZdlPv>
    800029e8:	01813083          	ld	ra,24(sp)
    800029ec:	01013403          	ld	s0,16(sp)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	02010113          	addi	sp,sp,32
    800029f8:	00008067          	ret

00000000800029fc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {   // KONSTRUKTOR
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00813423          	sd	s0,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    80002a08:	00007797          	auipc	a5,0x7
    80002a0c:	65078793          	addi	a5,a5,1616 # 8000a058 <_ZTV6Thread+0x10>
    80002a10:	00f53023          	sd	a5,0(a0)
}
    80002a14:	00813403          	ld	s0,8(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN6ThreadC1Ev>:
Thread::Thread()  { myHandle = nullptr; }
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00813423          	sd	s0,8(sp)
    80002a28:	01010413          	addi	s0,sp,16
    80002a2c:	00007797          	auipc	a5,0x7
    80002a30:	62c78793          	addi	a5,a5,1580 # 8000a058 <_ZTV6Thread+0x10>
    80002a34:	00f53023          	sd	a5,0(a0)
    80002a38:	00053423          	sd	zero,8(a0)
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <_ZN6Thread5startEv>:

int Thread::start() {
    80002a48:	fe010113          	addi	sp,sp,-32
    80002a4c:	00113c23          	sd	ra,24(sp)
    80002a50:	00813823          	sd	s0,16(sp)
    80002a54:	00913423          	sd	s1,8(sp)
    80002a58:	02010413          	addi	s0,sp,32
    80002a5c:	00050493          	mv	s1,a0
    if(semafor)                   // MODIFIKACIJA
    80002a60:	00007517          	auipc	a0,0x7
    80002a64:	7f053503          	ld	a0,2032(a0) # 8000a250 <_ZN6Thread7semaforE>
    80002a68:	00050663          	beqz	a0,80002a74 <_ZN6Thread5startEv+0x2c>
        sem_wait(semafor);
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	c78080e7          	jalr	-904(ra) # 800016e4 <_Z8sem_waitP3SEM>
    if(!myHandle) {
    80002a74:	0084b783          	ld	a5,8(s1)
    80002a78:	00078e63          	beqz	a5,80002a94 <_ZN6Thread5startEv+0x4c>
        thread_create(&myHandle, Thread::wrapperRun, this);
    }
    return 0;
}
    80002a7c:	00000513          	li	a0,0
    80002a80:	01813083          	ld	ra,24(sp)
    80002a84:	01013403          	ld	s0,16(sp)
    80002a88:	00813483          	ld	s1,8(sp)
    80002a8c:	02010113          	addi	sp,sp,32
    80002a90:	00008067          	ret
        thread_create(&myHandle, Thread::wrapperRun, this);
    80002a94:	00048613          	mv	a2,s1
    80002a98:	00000597          	auipc	a1,0x0
    80002a9c:	ea458593          	addi	a1,a1,-348 # 8000293c <_ZN6Thread10wrapperRunEPv>
    80002aa0:	00848513          	addi	a0,s1,8
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	ab0080e7          	jalr	-1360(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    80002aac:	fd1ff06f          	j	80002a7c <_ZN6Thread5startEv+0x34>

0000000080002ab0 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002ab0:	ff010113          	addi	sp,sp,-16
    80002ab4:	00113423          	sd	ra,8(sp)
    80002ab8:	00813023          	sd	s0,0(sp)
    80002abc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	b34080e7          	jalr	-1228(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80002ac8:	00813083          	ld	ra,8(sp)
    80002acc:	00013403          	ld	s0,0(sp)
    80002ad0:	01010113          	addi	sp,sp,16
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZN6Thread4joinEv>:

void Thread::join() {
    if(myHandle) thread_join(&myHandle);
    80002ad8:	00853783          	ld	a5,8(a0)
    80002adc:	02078863          	beqz	a5,80002b0c <_ZN6Thread4joinEv+0x34>
void Thread::join() {
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00113423          	sd	ra,8(sp)
    80002ae8:	00813023          	sd	s0,0(sp)
    80002aec:	01010413          	addi	s0,sp,16
    if(myHandle) thread_join(&myHandle);
    80002af0:	00850513          	addi	a0,a0,8
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	b24080e7          	jalr	-1244(ra) # 80001618 <_Z11thread_joinPP3TCB>
}
    80002afc:	00813083          	ld	ra,8(sp)
    80002b00:	00013403          	ld	s0,0(sp)
    80002b04:	01010113          	addi	sp,sp,16
    80002b08:	00008067          	ret
    80002b0c:	00008067          	ret

0000000080002b10 <_ZN6Thread11getThreadIdEv>:

// MODIFIKACIJA
int Thread::getThreadId() {
    80002b10:	ff010113          	addi	sp,sp,-16
    80002b14:	00113423          	sd	ra,8(sp)
    80002b18:	00813023          	sd	s0,0(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    return thread_getId();
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	ce0080e7          	jalr	-800(ra) # 80001800 <_Z12thread_getIdv>
}
    80002b28:	00813083          	ld	ra,8(sp)
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_ZN6Thread17setMaximumThreadsEi>:

sem_t Thread::semafor = nullptr;

void Thread::setMaximumThreads(int num_of_threads) {
    80002b38:	ff010113          	addi	sp,sp,-16
    80002b3c:	00113423          	sd	ra,8(sp)
    80002b40:	00813023          	sd	s0,0(sp)
    80002b44:	01010413          	addi	s0,sp,16
    80002b48:	00050593          	mv	a1,a0
    sem_open(&semafor, num_of_threads);
    80002b4c:	00007517          	auipc	a0,0x7
    80002b50:	70450513          	addi	a0,a0,1796 # 8000a250 <_ZN6Thread7semaforE>
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	aec080e7          	jalr	-1300(ra) # 80001640 <_Z8sem_openPP3SEMj>
    80002b5c:	00813083          	ld	ra,8(sp)
    80002b60:	00013403          	ld	s0,0(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <_ZN6Thread3runEv>:

    //static int sleep (time_t);
    static void wrapperRun(void*);     // dodao - mozda moze i na drugi nacin
protected:
    Thread ();
    virtual void run () {}
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00813423          	sd	s0,8(sp)
    80002b74:	01010413          	addi	s0,sp,16
    80002b78:	00813403          	ld	s0,8(sp)
    80002b7c:	01010113          	addi	sp,sp,16
    80002b80:	00008067          	ret

0000000080002b84 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	00813823          	sd	s0,16(sp)
    80002b90:	00913423          	sd	s1,8(sp)
    80002b94:	01213023          	sd	s2,0(sp)
    80002b98:	02010413          	addi	s0,sp,32
    80002b9c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ba0:	00000913          	li	s2,0
    80002ba4:	00c0006f          	j	80002bb0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	a4c080e7          	jalr	-1460(ra) # 800015f4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	bd4080e7          	jalr	-1068(ra) # 80001784 <_Z4getcv>
    80002bb8:	0005059b          	sext.w	a1,a0
    80002bbc:	01b00793          	li	a5,27
    80002bc0:	02f58a63          	beq	a1,a5,80002bf4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002bc4:	0084b503          	ld	a0,8(s1)
    80002bc8:	00003097          	auipc	ra,0x3
    80002bcc:	b44080e7          	jalr	-1212(ra) # 8000570c <_ZN6Buffer3putEi>
        i++;
    80002bd0:	0019071b          	addiw	a4,s2,1
    80002bd4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002bd8:	0004a683          	lw	a3,0(s1)
    80002bdc:	0026979b          	slliw	a5,a3,0x2
    80002be0:	00d787bb          	addw	a5,a5,a3
    80002be4:	0017979b          	slliw	a5,a5,0x1
    80002be8:	02f767bb          	remw	a5,a4,a5
    80002bec:	fc0792e3          	bnez	a5,80002bb0 <_ZL16producerKeyboardPv+0x2c>
    80002bf0:	fb9ff06f          	j	80002ba8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002bf4:	00100793          	li	a5,1
    80002bf8:	00007717          	auipc	a4,0x7
    80002bfc:	66f72023          	sw	a5,1632(a4) # 8000a258 <_ZL9threadEnd>
    data->buffer->put('!');
    80002c00:	02100593          	li	a1,33
    80002c04:	0084b503          	ld	a0,8(s1)
    80002c08:	00003097          	auipc	ra,0x3
    80002c0c:	b04080e7          	jalr	-1276(ra) # 8000570c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002c10:	0104b503          	ld	a0,16(s1)
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	b20080e7          	jalr	-1248(ra) # 80001734 <_Z10sem_signalP3SEM>
}
    80002c1c:	01813083          	ld	ra,24(sp)
    80002c20:	01013403          	ld	s0,16(sp)
    80002c24:	00813483          	ld	s1,8(sp)
    80002c28:	00013903          	ld	s2,0(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret

0000000080002c34 <_ZL8producerPv>:

static void producer(void *arg) {
    80002c34:	fe010113          	addi	sp,sp,-32
    80002c38:	00113c23          	sd	ra,24(sp)
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00913423          	sd	s1,8(sp)
    80002c44:	01213023          	sd	s2,0(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002c50:	00000913          	li	s2,0
    80002c54:	00c0006f          	j	80002c60 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	99c080e7          	jalr	-1636(ra) # 800015f4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002c60:	00007797          	auipc	a5,0x7
    80002c64:	5f87a783          	lw	a5,1528(a5) # 8000a258 <_ZL9threadEnd>
    80002c68:	02079e63          	bnez	a5,80002ca4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002c6c:	0004a583          	lw	a1,0(s1)
    80002c70:	0305859b          	addiw	a1,a1,48
    80002c74:	0084b503          	ld	a0,8(s1)
    80002c78:	00003097          	auipc	ra,0x3
    80002c7c:	a94080e7          	jalr	-1388(ra) # 8000570c <_ZN6Buffer3putEi>
        i++;
    80002c80:	0019071b          	addiw	a4,s2,1
    80002c84:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002c88:	0004a683          	lw	a3,0(s1)
    80002c8c:	0026979b          	slliw	a5,a3,0x2
    80002c90:	00d787bb          	addw	a5,a5,a3
    80002c94:	0017979b          	slliw	a5,a5,0x1
    80002c98:	02f767bb          	remw	a5,a4,a5
    80002c9c:	fc0792e3          	bnez	a5,80002c60 <_ZL8producerPv+0x2c>
    80002ca0:	fb9ff06f          	j	80002c58 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ca4:	0104b503          	ld	a0,16(s1)
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	a8c080e7          	jalr	-1396(ra) # 80001734 <_Z10sem_signalP3SEM>
}
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	00013903          	ld	s2,0(sp)
    80002cc0:	02010113          	addi	sp,sp,32
    80002cc4:	00008067          	ret

0000000080002cc8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002cc8:	fd010113          	addi	sp,sp,-48
    80002ccc:	02113423          	sd	ra,40(sp)
    80002cd0:	02813023          	sd	s0,32(sp)
    80002cd4:	00913c23          	sd	s1,24(sp)
    80002cd8:	01213823          	sd	s2,16(sp)
    80002cdc:	01313423          	sd	s3,8(sp)
    80002ce0:	03010413          	addi	s0,sp,48
    80002ce4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ce8:	00000993          	li	s3,0
    80002cec:	01c0006f          	j	80002d08 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	904080e7          	jalr	-1788(ra) # 800015f4 <_Z15thread_dispatchv>
    80002cf8:	0500006f          	j	80002d48 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002cfc:	00a00513          	li	a0,10
    80002d00:	fffff097          	auipc	ra,0xfffff
    80002d04:	ab8080e7          	jalr	-1352(ra) # 800017b8 <_Z4putcc>
    while (!threadEnd) {
    80002d08:	00007797          	auipc	a5,0x7
    80002d0c:	5507a783          	lw	a5,1360(a5) # 8000a258 <_ZL9threadEnd>
    80002d10:	06079063          	bnez	a5,80002d70 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002d14:	00893503          	ld	a0,8(s2)
    80002d18:	00003097          	auipc	ra,0x3
    80002d1c:	a84080e7          	jalr	-1404(ra) # 8000579c <_ZN6Buffer3getEv>
        i++;
    80002d20:	0019849b          	addiw	s1,s3,1
    80002d24:	0004899b          	sext.w	s3,s1
        putc(key);
    80002d28:	0ff57513          	andi	a0,a0,255
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	a8c080e7          	jalr	-1396(ra) # 800017b8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002d34:	00092703          	lw	a4,0(s2)
    80002d38:	0027179b          	slliw	a5,a4,0x2
    80002d3c:	00e787bb          	addw	a5,a5,a4
    80002d40:	02f4e7bb          	remw	a5,s1,a5
    80002d44:	fa0786e3          	beqz	a5,80002cf0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002d48:	05000793          	li	a5,80
    80002d4c:	02f4e4bb          	remw	s1,s1,a5
    80002d50:	fa049ce3          	bnez	s1,80002d08 <_ZL8consumerPv+0x40>
    80002d54:	fa9ff06f          	j	80002cfc <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002d58:	00893503          	ld	a0,8(s2)
    80002d5c:	00003097          	auipc	ra,0x3
    80002d60:	a40080e7          	jalr	-1472(ra) # 8000579c <_ZN6Buffer3getEv>
        putc(key);
    80002d64:	0ff57513          	andi	a0,a0,255
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	a50080e7          	jalr	-1456(ra) # 800017b8 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002d70:	00893503          	ld	a0,8(s2)
    80002d74:	00003097          	auipc	ra,0x3
    80002d78:	ab4080e7          	jalr	-1356(ra) # 80005828 <_ZN6Buffer6getCntEv>
    80002d7c:	fca04ee3          	bgtz	a0,80002d58 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002d80:	01093503          	ld	a0,16(s2)
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	9b0080e7          	jalr	-1616(ra) # 80001734 <_Z10sem_signalP3SEM>
}
    80002d8c:	02813083          	ld	ra,40(sp)
    80002d90:	02013403          	ld	s0,32(sp)
    80002d94:	01813483          	ld	s1,24(sp)
    80002d98:	01013903          	ld	s2,16(sp)
    80002d9c:	00813983          	ld	s3,8(sp)
    80002da0:	03010113          	addi	sp,sp,48
    80002da4:	00008067          	ret

0000000080002da8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002da8:	f9010113          	addi	sp,sp,-112
    80002dac:	06113423          	sd	ra,104(sp)
    80002db0:	06813023          	sd	s0,96(sp)
    80002db4:	04913c23          	sd	s1,88(sp)
    80002db8:	05213823          	sd	s2,80(sp)
    80002dbc:	05313423          	sd	s3,72(sp)
    80002dc0:	05413023          	sd	s4,64(sp)
    80002dc4:	03513c23          	sd	s5,56(sp)
    80002dc8:	03613823          	sd	s6,48(sp)
    80002dcc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002dd0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002dd4:	00005517          	auipc	a0,0x5
    80002dd8:	28450513          	addi	a0,a0,644 # 80008058 <CONSOLE_STATUS+0x48>
    80002ddc:	00002097          	auipc	ra,0x2
    80002de0:	a9c080e7          	jalr	-1380(ra) # 80004878 <_Z11printStringPKc>
    getString(input, 30);
    80002de4:	01e00593          	li	a1,30
    80002de8:	fa040493          	addi	s1,s0,-96
    80002dec:	00048513          	mv	a0,s1
    80002df0:	00002097          	auipc	ra,0x2
    80002df4:	b10080e7          	jalr	-1264(ra) # 80004900 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002df8:	00048513          	mv	a0,s1
    80002dfc:	00002097          	auipc	ra,0x2
    80002e00:	bdc080e7          	jalr	-1060(ra) # 800049d8 <_Z11stringToIntPKc>
    80002e04:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002e08:	00005517          	auipc	a0,0x5
    80002e0c:	27050513          	addi	a0,a0,624 # 80008078 <CONSOLE_STATUS+0x68>
    80002e10:	00002097          	auipc	ra,0x2
    80002e14:	a68080e7          	jalr	-1432(ra) # 80004878 <_Z11printStringPKc>
    getString(input, 30);
    80002e18:	01e00593          	li	a1,30
    80002e1c:	00048513          	mv	a0,s1
    80002e20:	00002097          	auipc	ra,0x2
    80002e24:	ae0080e7          	jalr	-1312(ra) # 80004900 <_Z9getStringPci>
    n = stringToInt(input);
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00002097          	auipc	ra,0x2
    80002e30:	bac080e7          	jalr	-1108(ra) # 800049d8 <_Z11stringToIntPKc>
    80002e34:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002e38:	00005517          	auipc	a0,0x5
    80002e3c:	26050513          	addi	a0,a0,608 # 80008098 <CONSOLE_STATUS+0x88>
    80002e40:	00002097          	auipc	ra,0x2
    80002e44:	a38080e7          	jalr	-1480(ra) # 80004878 <_Z11printStringPKc>
    80002e48:	00000613          	li	a2,0
    80002e4c:	00a00593          	li	a1,10
    80002e50:	00090513          	mv	a0,s2
    80002e54:	00002097          	auipc	ra,0x2
    80002e58:	bd4080e7          	jalr	-1068(ra) # 80004a28 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002e5c:	00005517          	auipc	a0,0x5
    80002e60:	25450513          	addi	a0,a0,596 # 800080b0 <CONSOLE_STATUS+0xa0>
    80002e64:	00002097          	auipc	ra,0x2
    80002e68:	a14080e7          	jalr	-1516(ra) # 80004878 <_Z11printStringPKc>
    80002e6c:	00000613          	li	a2,0
    80002e70:	00a00593          	li	a1,10
    80002e74:	00048513          	mv	a0,s1
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	bb0080e7          	jalr	-1104(ra) # 80004a28 <_Z8printIntiii>
    printString(".\n");
    80002e80:	00005517          	auipc	a0,0x5
    80002e84:	24850513          	addi	a0,a0,584 # 800080c8 <CONSOLE_STATUS+0xb8>
    80002e88:	00002097          	auipc	ra,0x2
    80002e8c:	9f0080e7          	jalr	-1552(ra) # 80004878 <_Z11printStringPKc>
    if(threadNum > n) {
    80002e90:	0324c463          	blt	s1,s2,80002eb8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002e94:	03205c63          	blez	s2,80002ecc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002e98:	03800513          	li	a0,56
    80002e9c:	fffff097          	auipc	ra,0xfffff
    80002ea0:	0bc080e7          	jalr	188(ra) # 80001f58 <_Znwm>
    80002ea4:	00050a13          	mv	s4,a0
    80002ea8:	00048593          	mv	a1,s1
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	7c4080e7          	jalr	1988(ra) # 80005670 <_ZN6BufferC1Ei>
    80002eb4:	0300006f          	j	80002ee4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002eb8:	00005517          	auipc	a0,0x5
    80002ebc:	21850513          	addi	a0,a0,536 # 800080d0 <CONSOLE_STATUS+0xc0>
    80002ec0:	00002097          	auipc	ra,0x2
    80002ec4:	9b8080e7          	jalr	-1608(ra) # 80004878 <_Z11printStringPKc>
        return;
    80002ec8:	0140006f          	j	80002edc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002ecc:	00005517          	auipc	a0,0x5
    80002ed0:	24450513          	addi	a0,a0,580 # 80008110 <CONSOLE_STATUS+0x100>
    80002ed4:	00002097          	auipc	ra,0x2
    80002ed8:	9a4080e7          	jalr	-1628(ra) # 80004878 <_Z11printStringPKc>
        return;
    80002edc:	000b0113          	mv	sp,s6
    80002ee0:	1500006f          	j	80003030 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002ee4:	00000593          	li	a1,0
    80002ee8:	00007517          	auipc	a0,0x7
    80002eec:	37850513          	addi	a0,a0,888 # 8000a260 <_ZL10waitForAll>
    80002ef0:	ffffe097          	auipc	ra,0xffffe
    80002ef4:	750080e7          	jalr	1872(ra) # 80001640 <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    80002ef8:	00391793          	slli	a5,s2,0x3
    80002efc:	00f78793          	addi	a5,a5,15
    80002f00:	ff07f793          	andi	a5,a5,-16
    80002f04:	40f10133          	sub	sp,sp,a5
    80002f08:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002f0c:	0019071b          	addiw	a4,s2,1
    80002f10:	00171793          	slli	a5,a4,0x1
    80002f14:	00e787b3          	add	a5,a5,a4
    80002f18:	00379793          	slli	a5,a5,0x3
    80002f1c:	00f78793          	addi	a5,a5,15
    80002f20:	ff07f793          	andi	a5,a5,-16
    80002f24:	40f10133          	sub	sp,sp,a5
    80002f28:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002f2c:	00191613          	slli	a2,s2,0x1
    80002f30:	012607b3          	add	a5,a2,s2
    80002f34:	00379793          	slli	a5,a5,0x3
    80002f38:	00f987b3          	add	a5,s3,a5
    80002f3c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002f40:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002f44:	00007717          	auipc	a4,0x7
    80002f48:	31c73703          	ld	a4,796(a4) # 8000a260 <_ZL10waitForAll>
    80002f4c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002f50:	00078613          	mv	a2,a5
    80002f54:	00000597          	auipc	a1,0x0
    80002f58:	d7458593          	addi	a1,a1,-652 # 80002cc8 <_ZL8consumerPv>
    80002f5c:	f9840513          	addi	a0,s0,-104
    80002f60:	ffffe097          	auipc	ra,0xffffe
    80002f64:	5f4080e7          	jalr	1524(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f68:	00000493          	li	s1,0
    80002f6c:	0280006f          	j	80002f94 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002f70:	00000597          	auipc	a1,0x0
    80002f74:	c1458593          	addi	a1,a1,-1004 # 80002b84 <_ZL16producerKeyboardPv>
                      data + i);
    80002f78:	00179613          	slli	a2,a5,0x1
    80002f7c:	00f60633          	add	a2,a2,a5
    80002f80:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002f84:	00c98633          	add	a2,s3,a2
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	5cc080e7          	jalr	1484(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f90:	0014849b          	addiw	s1,s1,1
    80002f94:	0524d263          	bge	s1,s2,80002fd8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002f98:	00149793          	slli	a5,s1,0x1
    80002f9c:	009787b3          	add	a5,a5,s1
    80002fa0:	00379793          	slli	a5,a5,0x3
    80002fa4:	00f987b3          	add	a5,s3,a5
    80002fa8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002fac:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002fb0:	00007717          	auipc	a4,0x7
    80002fb4:	2b073703          	ld	a4,688(a4) # 8000a260 <_ZL10waitForAll>
    80002fb8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002fbc:	00048793          	mv	a5,s1
    80002fc0:	00349513          	slli	a0,s1,0x3
    80002fc4:	00aa8533          	add	a0,s5,a0
    80002fc8:	fa9054e3          	blez	s1,80002f70 <_Z22producerConsumer_C_APIv+0x1c8>
    80002fcc:	00000597          	auipc	a1,0x0
    80002fd0:	c6858593          	addi	a1,a1,-920 # 80002c34 <_ZL8producerPv>
    80002fd4:	fa5ff06f          	j	80002f78 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	61c080e7          	jalr	1564(ra) # 800015f4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002fe0:	00000493          	li	s1,0
    80002fe4:	00994e63          	blt	s2,s1,80003000 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002fe8:	00007517          	auipc	a0,0x7
    80002fec:	27853503          	ld	a0,632(a0) # 8000a260 <_ZL10waitForAll>
    80002ff0:	ffffe097          	auipc	ra,0xffffe
    80002ff4:	6f4080e7          	jalr	1780(ra) # 800016e4 <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    80002ff8:	0014849b          	addiw	s1,s1,1
    80002ffc:	fe9ff06f          	j	80002fe4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003000:	00007517          	auipc	a0,0x7
    80003004:	26053503          	ld	a0,608(a0) # 8000a260 <_ZL10waitForAll>
    80003008:	ffffe097          	auipc	ra,0xffffe
    8000300c:	68c080e7          	jalr	1676(ra) # 80001694 <_Z9sem_closeP3SEM>
    delete buffer;
    80003010:	000a0e63          	beqz	s4,8000302c <_Z22producerConsumer_C_APIv+0x284>
    80003014:	000a0513          	mv	a0,s4
    80003018:	00003097          	auipc	ra,0x3
    8000301c:	898080e7          	jalr	-1896(ra) # 800058b0 <_ZN6BufferD1Ev>
    80003020:	000a0513          	mv	a0,s4
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	f84080e7          	jalr	-124(ra) # 80001fa8 <_ZdlPv>
    8000302c:	000b0113          	mv	sp,s6

}
    80003030:	f9040113          	addi	sp,s0,-112
    80003034:	06813083          	ld	ra,104(sp)
    80003038:	06013403          	ld	s0,96(sp)
    8000303c:	05813483          	ld	s1,88(sp)
    80003040:	05013903          	ld	s2,80(sp)
    80003044:	04813983          	ld	s3,72(sp)
    80003048:	04013a03          	ld	s4,64(sp)
    8000304c:	03813a83          	ld	s5,56(sp)
    80003050:	03013b03          	ld	s6,48(sp)
    80003054:	07010113          	addi	sp,sp,112
    80003058:	00008067          	ret
    8000305c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003060:	000a0513          	mv	a0,s4
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	f44080e7          	jalr	-188(ra) # 80001fa8 <_ZdlPv>
    8000306c:	00048513          	mv	a0,s1
    80003070:	00008097          	auipc	ra,0x8
    80003074:	2e8080e7          	jalr	744(ra) # 8000b358 <_Unwind_Resume>

0000000080003078 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003078:	fe010113          	addi	sp,sp,-32
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	01213023          	sd	s2,0(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003094:	00100793          	li	a5,1
    80003098:	02a7f863          	bgeu	a5,a0,800030c8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000309c:	00a00793          	li	a5,10
    800030a0:	02f577b3          	remu	a5,a0,a5
    800030a4:	02078e63          	beqz	a5,800030e0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800030a8:	fff48513          	addi	a0,s1,-1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	fcc080e7          	jalr	-52(ra) # 80003078 <_ZL9fibonaccim>
    800030b4:	00050913          	mv	s2,a0
    800030b8:	ffe48513          	addi	a0,s1,-2
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	fbc080e7          	jalr	-68(ra) # 80003078 <_ZL9fibonaccim>
    800030c4:	00a90533          	add	a0,s2,a0
}
    800030c8:	01813083          	ld	ra,24(sp)
    800030cc:	01013403          	ld	s0,16(sp)
    800030d0:	00813483          	ld	s1,8(sp)
    800030d4:	00013903          	ld	s2,0(sp)
    800030d8:	02010113          	addi	sp,sp,32
    800030dc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	514080e7          	jalr	1300(ra) # 800015f4 <_Z15thread_dispatchv>
    800030e8:	fc1ff06f          	j	800030a8 <_ZL9fibonaccim+0x30>

00000000800030ec <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00113c23          	sd	ra,24(sp)
    800030f4:	00813823          	sd	s0,16(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	01213023          	sd	s2,0(sp)
    80003100:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003104:	00000913          	li	s2,0
    80003108:	0380006f          	j	80003140 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	4e8080e7          	jalr	1256(ra) # 800015f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003114:	00148493          	addi	s1,s1,1
    80003118:	000027b7          	lui	a5,0x2
    8000311c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003120:	0097ee63          	bltu	a5,s1,8000313c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003124:	00000713          	li	a4,0
    80003128:	000077b7          	lui	a5,0x7
    8000312c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003130:	fce7eee3          	bltu	a5,a4,8000310c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003134:	00170713          	addi	a4,a4,1
    80003138:	ff1ff06f          	j	80003128 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000313c:	00190913          	addi	s2,s2,1
    80003140:	00900793          	li	a5,9
    80003144:	0527e063          	bltu	a5,s2,80003184 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003148:	00005517          	auipc	a0,0x5
    8000314c:	ff850513          	addi	a0,a0,-8 # 80008140 <CONSOLE_STATUS+0x130>
    80003150:	00001097          	auipc	ra,0x1
    80003154:	728080e7          	jalr	1832(ra) # 80004878 <_Z11printStringPKc>
    80003158:	00000613          	li	a2,0
    8000315c:	00a00593          	li	a1,10
    80003160:	0009051b          	sext.w	a0,s2
    80003164:	00002097          	auipc	ra,0x2
    80003168:	8c4080e7          	jalr	-1852(ra) # 80004a28 <_Z8printIntiii>
    8000316c:	00005517          	auipc	a0,0x5
    80003170:	25450513          	addi	a0,a0,596 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003174:	00001097          	auipc	ra,0x1
    80003178:	704080e7          	jalr	1796(ra) # 80004878 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000317c:	00000493          	li	s1,0
    80003180:	f99ff06f          	j	80003118 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003184:	00005517          	auipc	a0,0x5
    80003188:	fc450513          	addi	a0,a0,-60 # 80008148 <CONSOLE_STATUS+0x138>
    8000318c:	00001097          	auipc	ra,0x1
    80003190:	6ec080e7          	jalr	1772(ra) # 80004878 <_Z11printStringPKc>
    finishedA = true;
    80003194:	00100793          	li	a5,1
    80003198:	00007717          	auipc	a4,0x7
    8000319c:	0cf70823          	sb	a5,208(a4) # 8000a268 <_ZL9finishedA>
}
    800031a0:	01813083          	ld	ra,24(sp)
    800031a4:	01013403          	ld	s0,16(sp)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	00013903          	ld	s2,0(sp)
    800031b0:	02010113          	addi	sp,sp,32
    800031b4:	00008067          	ret

00000000800031b8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800031b8:	fe010113          	addi	sp,sp,-32
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	01213023          	sd	s2,0(sp)
    800031cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800031d0:	00000913          	li	s2,0
    800031d4:	0380006f          	j	8000320c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	41c080e7          	jalr	1052(ra) # 800015f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800031e0:	00148493          	addi	s1,s1,1
    800031e4:	000027b7          	lui	a5,0x2
    800031e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800031ec:	0097ee63          	bltu	a5,s1,80003208 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800031f0:	00000713          	li	a4,0
    800031f4:	000077b7          	lui	a5,0x7
    800031f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800031fc:	fce7eee3          	bltu	a5,a4,800031d8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003200:	00170713          	addi	a4,a4,1
    80003204:	ff1ff06f          	j	800031f4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003208:	00190913          	addi	s2,s2,1
    8000320c:	00f00793          	li	a5,15
    80003210:	0527e063          	bltu	a5,s2,80003250 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003214:	00005517          	auipc	a0,0x5
    80003218:	f4450513          	addi	a0,a0,-188 # 80008158 <CONSOLE_STATUS+0x148>
    8000321c:	00001097          	auipc	ra,0x1
    80003220:	65c080e7          	jalr	1628(ra) # 80004878 <_Z11printStringPKc>
    80003224:	00000613          	li	a2,0
    80003228:	00a00593          	li	a1,10
    8000322c:	0009051b          	sext.w	a0,s2
    80003230:	00001097          	auipc	ra,0x1
    80003234:	7f8080e7          	jalr	2040(ra) # 80004a28 <_Z8printIntiii>
    80003238:	00005517          	auipc	a0,0x5
    8000323c:	18850513          	addi	a0,a0,392 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003240:	00001097          	auipc	ra,0x1
    80003244:	638080e7          	jalr	1592(ra) # 80004878 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003248:	00000493          	li	s1,0
    8000324c:	f99ff06f          	j	800031e4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003250:	00005517          	auipc	a0,0x5
    80003254:	f1050513          	addi	a0,a0,-240 # 80008160 <CONSOLE_STATUS+0x150>
    80003258:	00001097          	auipc	ra,0x1
    8000325c:	620080e7          	jalr	1568(ra) # 80004878 <_Z11printStringPKc>
    finishedB = true;
    80003260:	00100793          	li	a5,1
    80003264:	00007717          	auipc	a4,0x7
    80003268:	00f702a3          	sb	a5,5(a4) # 8000a269 <_ZL9finishedB>
    thread_dispatch();
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	388080e7          	jalr	904(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80003274:	01813083          	ld	ra,24(sp)
    80003278:	01013403          	ld	s0,16(sp)
    8000327c:	00813483          	ld	s1,8(sp)
    80003280:	00013903          	ld	s2,0(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800032a4:	00000493          	li	s1,0
    800032a8:	0400006f          	j	800032e8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800032ac:	00005517          	auipc	a0,0x5
    800032b0:	ec450513          	addi	a0,a0,-316 # 80008170 <CONSOLE_STATUS+0x160>
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	5c4080e7          	jalr	1476(ra) # 80004878 <_Z11printStringPKc>
    800032bc:	00000613          	li	a2,0
    800032c0:	00a00593          	li	a1,10
    800032c4:	00048513          	mv	a0,s1
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	760080e7          	jalr	1888(ra) # 80004a28 <_Z8printIntiii>
    800032d0:	00005517          	auipc	a0,0x5
    800032d4:	0f050513          	addi	a0,a0,240 # 800083c0 <CONSOLE_STATUS+0x3b0>
    800032d8:	00001097          	auipc	ra,0x1
    800032dc:	5a0080e7          	jalr	1440(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800032e0:	0014849b          	addiw	s1,s1,1
    800032e4:	0ff4f493          	andi	s1,s1,255
    800032e8:	00200793          	li	a5,2
    800032ec:	fc97f0e3          	bgeu	a5,s1,800032ac <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800032f0:	00005517          	auipc	a0,0x5
    800032f4:	e8850513          	addi	a0,a0,-376 # 80008178 <CONSOLE_STATUS+0x168>
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	580080e7          	jalr	1408(ra) # 80004878 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003300:	00700313          	li	t1,7
    thread_dispatch();
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	2f0080e7          	jalr	752(ra) # 800015f4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000330c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003310:	00005517          	auipc	a0,0x5
    80003314:	e7850513          	addi	a0,a0,-392 # 80008188 <CONSOLE_STATUS+0x178>
    80003318:	00001097          	auipc	ra,0x1
    8000331c:	560080e7          	jalr	1376(ra) # 80004878 <_Z11printStringPKc>
    80003320:	00000613          	li	a2,0
    80003324:	00a00593          	li	a1,10
    80003328:	0009051b          	sext.w	a0,s2
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	6fc080e7          	jalr	1788(ra) # 80004a28 <_Z8printIntiii>
    80003334:	00005517          	auipc	a0,0x5
    80003338:	08c50513          	addi	a0,a0,140 # 800083c0 <CONSOLE_STATUS+0x3b0>
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	53c080e7          	jalr	1340(ra) # 80004878 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003344:	00c00513          	li	a0,12
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	d30080e7          	jalr	-720(ra) # 80003078 <_ZL9fibonaccim>
    80003350:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003354:	00005517          	auipc	a0,0x5
    80003358:	e3c50513          	addi	a0,a0,-452 # 80008190 <CONSOLE_STATUS+0x180>
    8000335c:	00001097          	auipc	ra,0x1
    80003360:	51c080e7          	jalr	1308(ra) # 80004878 <_Z11printStringPKc>
    80003364:	00000613          	li	a2,0
    80003368:	00a00593          	li	a1,10
    8000336c:	0009051b          	sext.w	a0,s2
    80003370:	00001097          	auipc	ra,0x1
    80003374:	6b8080e7          	jalr	1720(ra) # 80004a28 <_Z8printIntiii>
    80003378:	00005517          	auipc	a0,0x5
    8000337c:	04850513          	addi	a0,a0,72 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003380:	00001097          	auipc	ra,0x1
    80003384:	4f8080e7          	jalr	1272(ra) # 80004878 <_Z11printStringPKc>
    80003388:	0400006f          	j	800033c8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000338c:	00005517          	auipc	a0,0x5
    80003390:	de450513          	addi	a0,a0,-540 # 80008170 <CONSOLE_STATUS+0x160>
    80003394:	00001097          	auipc	ra,0x1
    80003398:	4e4080e7          	jalr	1252(ra) # 80004878 <_Z11printStringPKc>
    8000339c:	00000613          	li	a2,0
    800033a0:	00a00593          	li	a1,10
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	680080e7          	jalr	1664(ra) # 80004a28 <_Z8printIntiii>
    800033b0:	00005517          	auipc	a0,0x5
    800033b4:	01050513          	addi	a0,a0,16 # 800083c0 <CONSOLE_STATUS+0x3b0>
    800033b8:	00001097          	auipc	ra,0x1
    800033bc:	4c0080e7          	jalr	1216(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800033c0:	0014849b          	addiw	s1,s1,1
    800033c4:	0ff4f493          	andi	s1,s1,255
    800033c8:	00500793          	li	a5,5
    800033cc:	fc97f0e3          	bgeu	a5,s1,8000338c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800033d0:	00005517          	auipc	a0,0x5
    800033d4:	d7850513          	addi	a0,a0,-648 # 80008148 <CONSOLE_STATUS+0x138>
    800033d8:	00001097          	auipc	ra,0x1
    800033dc:	4a0080e7          	jalr	1184(ra) # 80004878 <_Z11printStringPKc>
    finishedC = true;
    800033e0:	00100793          	li	a5,1
    800033e4:	00007717          	auipc	a4,0x7
    800033e8:	e8f70323          	sb	a5,-378(a4) # 8000a26a <_ZL9finishedC>
    thread_dispatch();
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	208080e7          	jalr	520(ra) # 800015f4 <_Z15thread_dispatchv>
}
    800033f4:	01813083          	ld	ra,24(sp)
    800033f8:	01013403          	ld	s0,16(sp)
    800033fc:	00813483          	ld	s1,8(sp)
    80003400:	00013903          	ld	s2,0(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret

000000008000340c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000340c:	fe010113          	addi	sp,sp,-32
    80003410:	00113c23          	sd	ra,24(sp)
    80003414:	00813823          	sd	s0,16(sp)
    80003418:	00913423          	sd	s1,8(sp)
    8000341c:	01213023          	sd	s2,0(sp)
    80003420:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003424:	00a00493          	li	s1,10
    80003428:	0400006f          	j	80003468 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000342c:	00005517          	auipc	a0,0x5
    80003430:	d7450513          	addi	a0,a0,-652 # 800081a0 <CONSOLE_STATUS+0x190>
    80003434:	00001097          	auipc	ra,0x1
    80003438:	444080e7          	jalr	1092(ra) # 80004878 <_Z11printStringPKc>
    8000343c:	00000613          	li	a2,0
    80003440:	00a00593          	li	a1,10
    80003444:	00048513          	mv	a0,s1
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	5e0080e7          	jalr	1504(ra) # 80004a28 <_Z8printIntiii>
    80003450:	00005517          	auipc	a0,0x5
    80003454:	f7050513          	addi	a0,a0,-144 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003458:	00001097          	auipc	ra,0x1
    8000345c:	420080e7          	jalr	1056(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003460:	0014849b          	addiw	s1,s1,1
    80003464:	0ff4f493          	andi	s1,s1,255
    80003468:	00c00793          	li	a5,12
    8000346c:	fc97f0e3          	bgeu	a5,s1,8000342c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003470:	00005517          	auipc	a0,0x5
    80003474:	d3850513          	addi	a0,a0,-712 # 800081a8 <CONSOLE_STATUS+0x198>
    80003478:	00001097          	auipc	ra,0x1
    8000347c:	400080e7          	jalr	1024(ra) # 80004878 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003480:	00500313          	li	t1,5
    thread_dispatch();
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	170080e7          	jalr	368(ra) # 800015f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000348c:	01000513          	li	a0,16
    80003490:	00000097          	auipc	ra,0x0
    80003494:	be8080e7          	jalr	-1048(ra) # 80003078 <_ZL9fibonaccim>
    80003498:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000349c:	00005517          	auipc	a0,0x5
    800034a0:	d1c50513          	addi	a0,a0,-740 # 800081b8 <CONSOLE_STATUS+0x1a8>
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	3d4080e7          	jalr	980(ra) # 80004878 <_Z11printStringPKc>
    800034ac:	00000613          	li	a2,0
    800034b0:	00a00593          	li	a1,10
    800034b4:	0009051b          	sext.w	a0,s2
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	570080e7          	jalr	1392(ra) # 80004a28 <_Z8printIntiii>
    800034c0:	00005517          	auipc	a0,0x5
    800034c4:	f0050513          	addi	a0,a0,-256 # 800083c0 <CONSOLE_STATUS+0x3b0>
    800034c8:	00001097          	auipc	ra,0x1
    800034cc:	3b0080e7          	jalr	944(ra) # 80004878 <_Z11printStringPKc>
    800034d0:	0400006f          	j	80003510 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800034d4:	00005517          	auipc	a0,0x5
    800034d8:	ccc50513          	addi	a0,a0,-820 # 800081a0 <CONSOLE_STATUS+0x190>
    800034dc:	00001097          	auipc	ra,0x1
    800034e0:	39c080e7          	jalr	924(ra) # 80004878 <_Z11printStringPKc>
    800034e4:	00000613          	li	a2,0
    800034e8:	00a00593          	li	a1,10
    800034ec:	00048513          	mv	a0,s1
    800034f0:	00001097          	auipc	ra,0x1
    800034f4:	538080e7          	jalr	1336(ra) # 80004a28 <_Z8printIntiii>
    800034f8:	00005517          	auipc	a0,0x5
    800034fc:	ec850513          	addi	a0,a0,-312 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003500:	00001097          	auipc	ra,0x1
    80003504:	378080e7          	jalr	888(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003508:	0014849b          	addiw	s1,s1,1
    8000350c:	0ff4f493          	andi	s1,s1,255
    80003510:	00f00793          	li	a5,15
    80003514:	fc97f0e3          	bgeu	a5,s1,800034d4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003518:	00005517          	auipc	a0,0x5
    8000351c:	cb050513          	addi	a0,a0,-848 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80003520:	00001097          	auipc	ra,0x1
    80003524:	358080e7          	jalr	856(ra) # 80004878 <_Z11printStringPKc>
    finishedD = true;
    80003528:	00100793          	li	a5,1
    8000352c:	00007717          	auipc	a4,0x7
    80003530:	d2f70fa3          	sb	a5,-705(a4) # 8000a26b <_ZL9finishedD>
    thread_dispatch();
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	0c0080e7          	jalr	192(ra) # 800015f4 <_Z15thread_dispatchv>
}
    8000353c:	01813083          	ld	ra,24(sp)
    80003540:	01013403          	ld	s0,16(sp)
    80003544:	00813483          	ld	s1,8(sp)
    80003548:	00013903          	ld	s2,0(sp)
    8000354c:	02010113          	addi	sp,sp,32
    80003550:	00008067          	ret

0000000080003554 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003554:	fc010113          	addi	sp,sp,-64
    80003558:	02113c23          	sd	ra,56(sp)
    8000355c:	02813823          	sd	s0,48(sp)
    80003560:	02913423          	sd	s1,40(sp)
    80003564:	03213023          	sd	s2,32(sp)
    80003568:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000356c:	02000513          	li	a0,32
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	9e8080e7          	jalr	-1560(ra) # 80001f58 <_Znwm>
    80003578:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000357c:	fffff097          	auipc	ra,0xfffff
    80003580:	4a4080e7          	jalr	1188(ra) # 80002a20 <_ZN6ThreadC1Ev>
    80003584:	00007797          	auipc	a5,0x7
    80003588:	afc78793          	addi	a5,a5,-1284 # 8000a080 <_ZTV7WorkerA+0x10>
    8000358c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003590:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003594:	00005517          	auipc	a0,0x5
    80003598:	c4450513          	addi	a0,a0,-956 # 800081d8 <CONSOLE_STATUS+0x1c8>
    8000359c:	00001097          	auipc	ra,0x1
    800035a0:	2dc080e7          	jalr	732(ra) # 80004878 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800035a4:	02000513          	li	a0,32
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	9b0080e7          	jalr	-1616(ra) # 80001f58 <_Znwm>
    800035b0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	46c080e7          	jalr	1132(ra) # 80002a20 <_ZN6ThreadC1Ev>
    800035bc:	00007797          	auipc	a5,0x7
    800035c0:	aec78793          	addi	a5,a5,-1300 # 8000a0a8 <_ZTV7WorkerB+0x10>
    800035c4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800035c8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800035cc:	00005517          	auipc	a0,0x5
    800035d0:	c2450513          	addi	a0,a0,-988 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	2a4080e7          	jalr	676(ra) # 80004878 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800035dc:	02000513          	li	a0,32
    800035e0:	fffff097          	auipc	ra,0xfffff
    800035e4:	978080e7          	jalr	-1672(ra) # 80001f58 <_Znwm>
    800035e8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800035ec:	fffff097          	auipc	ra,0xfffff
    800035f0:	434080e7          	jalr	1076(ra) # 80002a20 <_ZN6ThreadC1Ev>
    800035f4:	00007797          	auipc	a5,0x7
    800035f8:	adc78793          	addi	a5,a5,-1316 # 8000a0d0 <_ZTV7WorkerC+0x10>
    800035fc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003600:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003604:	00005517          	auipc	a0,0x5
    80003608:	c0450513          	addi	a0,a0,-1020 # 80008208 <CONSOLE_STATUS+0x1f8>
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	26c080e7          	jalr	620(ra) # 80004878 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003614:	02000513          	li	a0,32
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	940080e7          	jalr	-1728(ra) # 80001f58 <_Znwm>
    80003620:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003624:	fffff097          	auipc	ra,0xfffff
    80003628:	3fc080e7          	jalr	1020(ra) # 80002a20 <_ZN6ThreadC1Ev>
    8000362c:	00007797          	auipc	a5,0x7
    80003630:	acc78793          	addi	a5,a5,-1332 # 8000a0f8 <_ZTV7WorkerD+0x10>
    80003634:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003638:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000363c:	00005517          	auipc	a0,0x5
    80003640:	be450513          	addi	a0,a0,-1052 # 80008220 <CONSOLE_STATUS+0x210>
    80003644:	00001097          	auipc	ra,0x1
    80003648:	234080e7          	jalr	564(ra) # 80004878 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000364c:	00000493          	li	s1,0
    80003650:	00300793          	li	a5,3
    80003654:	0297c663          	blt	a5,s1,80003680 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003658:	00349793          	slli	a5,s1,0x3
    8000365c:	fe040713          	addi	a4,s0,-32
    80003660:	00f707b3          	add	a5,a4,a5
    80003664:	fe07b503          	ld	a0,-32(a5)
    80003668:	fffff097          	auipc	ra,0xfffff
    8000366c:	3e0080e7          	jalr	992(ra) # 80002a48 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003670:	0014849b          	addiw	s1,s1,1
    80003674:	fddff06f          	j	80003650 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	438080e7          	jalr	1080(ra) # 80002ab0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003680:	00007797          	auipc	a5,0x7
    80003684:	be87c783          	lbu	a5,-1048(a5) # 8000a268 <_ZL9finishedA>
    80003688:	fe0788e3          	beqz	a5,80003678 <_Z20Threads_CPP_API_testv+0x124>
    8000368c:	00007797          	auipc	a5,0x7
    80003690:	bdd7c783          	lbu	a5,-1059(a5) # 8000a269 <_ZL9finishedB>
    80003694:	fe0782e3          	beqz	a5,80003678 <_Z20Threads_CPP_API_testv+0x124>
    80003698:	00007797          	auipc	a5,0x7
    8000369c:	bd27c783          	lbu	a5,-1070(a5) # 8000a26a <_ZL9finishedC>
    800036a0:	fc078ce3          	beqz	a5,80003678 <_Z20Threads_CPP_API_testv+0x124>
    800036a4:	00007797          	auipc	a5,0x7
    800036a8:	bc77c783          	lbu	a5,-1081(a5) # 8000a26b <_ZL9finishedD>
    800036ac:	fc0786e3          	beqz	a5,80003678 <_Z20Threads_CPP_API_testv+0x124>
    800036b0:	fc040493          	addi	s1,s0,-64
    800036b4:	0080006f          	j	800036bc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800036b8:	00848493          	addi	s1,s1,8
    800036bc:	fe040793          	addi	a5,s0,-32
    800036c0:	08f48663          	beq	s1,a5,8000374c <_Z20Threads_CPP_API_testv+0x1f8>
    800036c4:	0004b503          	ld	a0,0(s1)
    800036c8:	fe0508e3          	beqz	a0,800036b8 <_Z20Threads_CPP_API_testv+0x164>
    800036cc:	00053783          	ld	a5,0(a0)
    800036d0:	0087b783          	ld	a5,8(a5)
    800036d4:	000780e7          	jalr	a5
    800036d8:	fe1ff06f          	j	800036b8 <_Z20Threads_CPP_API_testv+0x164>
    800036dc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800036e0:	00048513          	mv	a0,s1
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	8c4080e7          	jalr	-1852(ra) # 80001fa8 <_ZdlPv>
    800036ec:	00090513          	mv	a0,s2
    800036f0:	00008097          	auipc	ra,0x8
    800036f4:	c68080e7          	jalr	-920(ra) # 8000b358 <_Unwind_Resume>
    800036f8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800036fc:	00048513          	mv	a0,s1
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	8a8080e7          	jalr	-1880(ra) # 80001fa8 <_ZdlPv>
    80003708:	00090513          	mv	a0,s2
    8000370c:	00008097          	auipc	ra,0x8
    80003710:	c4c080e7          	jalr	-948(ra) # 8000b358 <_Unwind_Resume>
    80003714:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003718:	00048513          	mv	a0,s1
    8000371c:	fffff097          	auipc	ra,0xfffff
    80003720:	88c080e7          	jalr	-1908(ra) # 80001fa8 <_ZdlPv>
    80003724:	00090513          	mv	a0,s2
    80003728:	00008097          	auipc	ra,0x8
    8000372c:	c30080e7          	jalr	-976(ra) # 8000b358 <_Unwind_Resume>
    80003730:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003734:	00048513          	mv	a0,s1
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	870080e7          	jalr	-1936(ra) # 80001fa8 <_ZdlPv>
    80003740:	00090513          	mv	a0,s2
    80003744:	00008097          	auipc	ra,0x8
    80003748:	c14080e7          	jalr	-1004(ra) # 8000b358 <_Unwind_Resume>
}
    8000374c:	03813083          	ld	ra,56(sp)
    80003750:	03013403          	ld	s0,48(sp)
    80003754:	02813483          	ld	s1,40(sp)
    80003758:	02013903          	ld	s2,32(sp)
    8000375c:	04010113          	addi	sp,sp,64
    80003760:	00008067          	ret

0000000080003764 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003764:	ff010113          	addi	sp,sp,-16
    80003768:	00113423          	sd	ra,8(sp)
    8000376c:	00813023          	sd	s0,0(sp)
    80003770:	01010413          	addi	s0,sp,16
    80003774:	00007797          	auipc	a5,0x7
    80003778:	90c78793          	addi	a5,a5,-1780 # 8000a080 <_ZTV7WorkerA+0x10>
    8000377c:	00f53023          	sd	a5,0(a0)
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	1e8080e7          	jalr	488(ra) # 80002968 <_ZN6ThreadD1Ev>
    80003788:	00813083          	ld	ra,8(sp)
    8000378c:	00013403          	ld	s0,0(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <_ZN7WorkerAD0Ev>:
    80003798:	fe010113          	addi	sp,sp,-32
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	02010413          	addi	s0,sp,32
    800037ac:	00050493          	mv	s1,a0
    800037b0:	00007797          	auipc	a5,0x7
    800037b4:	8d078793          	addi	a5,a5,-1840 # 8000a080 <_ZTV7WorkerA+0x10>
    800037b8:	00f53023          	sd	a5,0(a0)
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	1ac080e7          	jalr	428(ra) # 80002968 <_ZN6ThreadD1Ev>
    800037c4:	00048513          	mv	a0,s1
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	7e0080e7          	jalr	2016(ra) # 80001fa8 <_ZdlPv>
    800037d0:	01813083          	ld	ra,24(sp)
    800037d4:	01013403          	ld	s0,16(sp)
    800037d8:	00813483          	ld	s1,8(sp)
    800037dc:	02010113          	addi	sp,sp,32
    800037e0:	00008067          	ret

00000000800037e4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800037e4:	ff010113          	addi	sp,sp,-16
    800037e8:	00113423          	sd	ra,8(sp)
    800037ec:	00813023          	sd	s0,0(sp)
    800037f0:	01010413          	addi	s0,sp,16
    800037f4:	00007797          	auipc	a5,0x7
    800037f8:	8b478793          	addi	a5,a5,-1868 # 8000a0a8 <_ZTV7WorkerB+0x10>
    800037fc:	00f53023          	sd	a5,0(a0)
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	168080e7          	jalr	360(ra) # 80002968 <_ZN6ThreadD1Ev>
    80003808:	00813083          	ld	ra,8(sp)
    8000380c:	00013403          	ld	s0,0(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <_ZN7WorkerBD0Ev>:
    80003818:	fe010113          	addi	sp,sp,-32
    8000381c:	00113c23          	sd	ra,24(sp)
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00913423          	sd	s1,8(sp)
    80003828:	02010413          	addi	s0,sp,32
    8000382c:	00050493          	mv	s1,a0
    80003830:	00007797          	auipc	a5,0x7
    80003834:	87878793          	addi	a5,a5,-1928 # 8000a0a8 <_ZTV7WorkerB+0x10>
    80003838:	00f53023          	sd	a5,0(a0)
    8000383c:	fffff097          	auipc	ra,0xfffff
    80003840:	12c080e7          	jalr	300(ra) # 80002968 <_ZN6ThreadD1Ev>
    80003844:	00048513          	mv	a0,s1
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	760080e7          	jalr	1888(ra) # 80001fa8 <_ZdlPv>
    80003850:	01813083          	ld	ra,24(sp)
    80003854:	01013403          	ld	s0,16(sp)
    80003858:	00813483          	ld	s1,8(sp)
    8000385c:	02010113          	addi	sp,sp,32
    80003860:	00008067          	ret

0000000080003864 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00113423          	sd	ra,8(sp)
    8000386c:	00813023          	sd	s0,0(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	00007797          	auipc	a5,0x7
    80003878:	85c78793          	addi	a5,a5,-1956 # 8000a0d0 <_ZTV7WorkerC+0x10>
    8000387c:	00f53023          	sd	a5,0(a0)
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	0e8080e7          	jalr	232(ra) # 80002968 <_ZN6ThreadD1Ev>
    80003888:	00813083          	ld	ra,8(sp)
    8000388c:	00013403          	ld	s0,0(sp)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret

0000000080003898 <_ZN7WorkerCD0Ev>:
    80003898:	fe010113          	addi	sp,sp,-32
    8000389c:	00113c23          	sd	ra,24(sp)
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00913423          	sd	s1,8(sp)
    800038a8:	02010413          	addi	s0,sp,32
    800038ac:	00050493          	mv	s1,a0
    800038b0:	00007797          	auipc	a5,0x7
    800038b4:	82078793          	addi	a5,a5,-2016 # 8000a0d0 <_ZTV7WorkerC+0x10>
    800038b8:	00f53023          	sd	a5,0(a0)
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	0ac080e7          	jalr	172(ra) # 80002968 <_ZN6ThreadD1Ev>
    800038c4:	00048513          	mv	a0,s1
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	6e0080e7          	jalr	1760(ra) # 80001fa8 <_ZdlPv>
    800038d0:	01813083          	ld	ra,24(sp)
    800038d4:	01013403          	ld	s0,16(sp)
    800038d8:	00813483          	ld	s1,8(sp)
    800038dc:	02010113          	addi	sp,sp,32
    800038e0:	00008067          	ret

00000000800038e4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800038e4:	ff010113          	addi	sp,sp,-16
    800038e8:	00113423          	sd	ra,8(sp)
    800038ec:	00813023          	sd	s0,0(sp)
    800038f0:	01010413          	addi	s0,sp,16
    800038f4:	00007797          	auipc	a5,0x7
    800038f8:	80478793          	addi	a5,a5,-2044 # 8000a0f8 <_ZTV7WorkerD+0x10>
    800038fc:	00f53023          	sd	a5,0(a0)
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	068080e7          	jalr	104(ra) # 80002968 <_ZN6ThreadD1Ev>
    80003908:	00813083          	ld	ra,8(sp)
    8000390c:	00013403          	ld	s0,0(sp)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret

0000000080003918 <_ZN7WorkerDD0Ev>:
    80003918:	fe010113          	addi	sp,sp,-32
    8000391c:	00113c23          	sd	ra,24(sp)
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00913423          	sd	s1,8(sp)
    80003928:	02010413          	addi	s0,sp,32
    8000392c:	00050493          	mv	s1,a0
    80003930:	00006797          	auipc	a5,0x6
    80003934:	7c878793          	addi	a5,a5,1992 # 8000a0f8 <_ZTV7WorkerD+0x10>
    80003938:	00f53023          	sd	a5,0(a0)
    8000393c:	fffff097          	auipc	ra,0xfffff
    80003940:	02c080e7          	jalr	44(ra) # 80002968 <_ZN6ThreadD1Ev>
    80003944:	00048513          	mv	a0,s1
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	660080e7          	jalr	1632(ra) # 80001fa8 <_ZdlPv>
    80003950:	01813083          	ld	ra,24(sp)
    80003954:	01013403          	ld	s0,16(sp)
    80003958:	00813483          	ld	s1,8(sp)
    8000395c:	02010113          	addi	sp,sp,32
    80003960:	00008067          	ret

0000000080003964 <_ZN7WorkerA3runEv>:
    void run() override {
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00113423          	sd	ra,8(sp)
    8000396c:	00813023          	sd	s0,0(sp)
    80003970:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003974:	00000593          	li	a1,0
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	774080e7          	jalr	1908(ra) # 800030ec <_ZN7WorkerA11workerBodyAEPv>
    }
    80003980:	00813083          	ld	ra,8(sp)
    80003984:	00013403          	ld	s0,0(sp)
    80003988:	01010113          	addi	sp,sp,16
    8000398c:	00008067          	ret

0000000080003990 <_ZN7WorkerB3runEv>:
    void run() override {
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00113423          	sd	ra,8(sp)
    80003998:	00813023          	sd	s0,0(sp)
    8000399c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800039a0:	00000593          	li	a1,0
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	814080e7          	jalr	-2028(ra) # 800031b8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800039ac:	00813083          	ld	ra,8(sp)
    800039b0:	00013403          	ld	s0,0(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <_ZN7WorkerC3runEv>:
    void run() override {
    800039bc:	ff010113          	addi	sp,sp,-16
    800039c0:	00113423          	sd	ra,8(sp)
    800039c4:	00813023          	sd	s0,0(sp)
    800039c8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800039cc:	00000593          	li	a1,0
    800039d0:	00000097          	auipc	ra,0x0
    800039d4:	8bc080e7          	jalr	-1860(ra) # 8000328c <_ZN7WorkerC11workerBodyCEPv>
    }
    800039d8:	00813083          	ld	ra,8(sp)
    800039dc:	00013403          	ld	s0,0(sp)
    800039e0:	01010113          	addi	sp,sp,16
    800039e4:	00008067          	ret

00000000800039e8 <_ZN7WorkerD3runEv>:
    void run() override {
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00113423          	sd	ra,8(sp)
    800039f0:	00813023          	sd	s0,0(sp)
    800039f4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800039f8:	00000593          	li	a1,0
    800039fc:	00000097          	auipc	ra,0x0
    80003a00:	a10080e7          	jalr	-1520(ra) # 8000340c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003a04:	00813083          	ld	ra,8(sp)
    80003a08:	00013403          	ld	s0,0(sp)
    80003a0c:	01010113          	addi	sp,sp,16
    80003a10:	00008067          	ret

0000000080003a14 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a14:	fe010113          	addi	sp,sp,-32
    80003a18:	00113c23          	sd	ra,24(sp)
    80003a1c:	00813823          	sd	s0,16(sp)
    80003a20:	00913423          	sd	s1,8(sp)
    80003a24:	01213023          	sd	s2,0(sp)
    80003a28:	02010413          	addi	s0,sp,32
    80003a2c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a30:	00100793          	li	a5,1
    80003a34:	02a7f863          	bgeu	a5,a0,80003a64 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a38:	00a00793          	li	a5,10
    80003a3c:	02f577b3          	remu	a5,a0,a5
    80003a40:	02078e63          	beqz	a5,80003a7c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a44:	fff48513          	addi	a0,s1,-1
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	fcc080e7          	jalr	-52(ra) # 80003a14 <_ZL9fibonaccim>
    80003a50:	00050913          	mv	s2,a0
    80003a54:	ffe48513          	addi	a0,s1,-2
    80003a58:	00000097          	auipc	ra,0x0
    80003a5c:	fbc080e7          	jalr	-68(ra) # 80003a14 <_ZL9fibonaccim>
    80003a60:	00a90533          	add	a0,s2,a0
}
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00813483          	ld	s1,8(sp)
    80003a70:	00013903          	ld	s2,0(sp)
    80003a74:	02010113          	addi	sp,sp,32
    80003a78:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	b78080e7          	jalr	-1160(ra) # 800015f4 <_Z15thread_dispatchv>
    80003a84:	fc1ff06f          	j	80003a44 <_ZL9fibonaccim+0x30>

0000000080003a88 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	01213023          	sd	s2,0(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003aa0:	00a00493          	li	s1,10
    80003aa4:	0400006f          	j	80003ae4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003aa8:	00004517          	auipc	a0,0x4
    80003aac:	6f850513          	addi	a0,a0,1784 # 800081a0 <CONSOLE_STATUS+0x190>
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	dc8080e7          	jalr	-568(ra) # 80004878 <_Z11printStringPKc>
    80003ab8:	00000613          	li	a2,0
    80003abc:	00a00593          	li	a1,10
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	f64080e7          	jalr	-156(ra) # 80004a28 <_Z8printIntiii>
    80003acc:	00005517          	auipc	a0,0x5
    80003ad0:	8f450513          	addi	a0,a0,-1804 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	da4080e7          	jalr	-604(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003adc:	0014849b          	addiw	s1,s1,1
    80003ae0:	0ff4f493          	andi	s1,s1,255
    80003ae4:	00c00793          	li	a5,12
    80003ae8:	fc97f0e3          	bgeu	a5,s1,80003aa8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003aec:	00004517          	auipc	a0,0x4
    80003af0:	6bc50513          	addi	a0,a0,1724 # 800081a8 <CONSOLE_STATUS+0x198>
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	d84080e7          	jalr	-636(ra) # 80004878 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003afc:	00500313          	li	t1,5
    thread_dispatch();
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	af4080e7          	jalr	-1292(ra) # 800015f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b08:	01000513          	li	a0,16
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	f08080e7          	jalr	-248(ra) # 80003a14 <_ZL9fibonaccim>
    80003b14:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b18:	00004517          	auipc	a0,0x4
    80003b1c:	6a050513          	addi	a0,a0,1696 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80003b20:	00001097          	auipc	ra,0x1
    80003b24:	d58080e7          	jalr	-680(ra) # 80004878 <_Z11printStringPKc>
    80003b28:	00000613          	li	a2,0
    80003b2c:	00a00593          	li	a1,10
    80003b30:	0009051b          	sext.w	a0,s2
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	ef4080e7          	jalr	-268(ra) # 80004a28 <_Z8printIntiii>
    80003b3c:	00005517          	auipc	a0,0x5
    80003b40:	88450513          	addi	a0,a0,-1916 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	d34080e7          	jalr	-716(ra) # 80004878 <_Z11printStringPKc>
    80003b4c:	0400006f          	j	80003b8c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b50:	00004517          	auipc	a0,0x4
    80003b54:	65050513          	addi	a0,a0,1616 # 800081a0 <CONSOLE_STATUS+0x190>
    80003b58:	00001097          	auipc	ra,0x1
    80003b5c:	d20080e7          	jalr	-736(ra) # 80004878 <_Z11printStringPKc>
    80003b60:	00000613          	li	a2,0
    80003b64:	00a00593          	li	a1,10
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	ebc080e7          	jalr	-324(ra) # 80004a28 <_Z8printIntiii>
    80003b74:	00005517          	auipc	a0,0x5
    80003b78:	84c50513          	addi	a0,a0,-1972 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003b7c:	00001097          	auipc	ra,0x1
    80003b80:	cfc080e7          	jalr	-772(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b84:	0014849b          	addiw	s1,s1,1
    80003b88:	0ff4f493          	andi	s1,s1,255
    80003b8c:	00f00793          	li	a5,15
    80003b90:	fc97f0e3          	bgeu	a5,s1,80003b50 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b94:	00004517          	auipc	a0,0x4
    80003b98:	63450513          	addi	a0,a0,1588 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	cdc080e7          	jalr	-804(ra) # 80004878 <_Z11printStringPKc>
    finishedD = true;
    80003ba4:	00100793          	li	a5,1
    80003ba8:	00006717          	auipc	a4,0x6
    80003bac:	6cf70223          	sb	a5,1732(a4) # 8000a26c <_ZL9finishedD>
    thread_dispatch();
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	a44080e7          	jalr	-1468(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80003bb8:	01813083          	ld	ra,24(sp)
    80003bbc:	01013403          	ld	s0,16(sp)
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	00013903          	ld	s2,0(sp)
    80003bc8:	02010113          	addi	sp,sp,32
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00813823          	sd	s0,16(sp)
    80003bdc:	00913423          	sd	s1,8(sp)
    80003be0:	01213023          	sd	s2,0(sp)
    80003be4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003be8:	00000493          	li	s1,0
    80003bec:	0400006f          	j	80003c2c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003bf0:	00004517          	auipc	a0,0x4
    80003bf4:	58050513          	addi	a0,a0,1408 # 80008170 <CONSOLE_STATUS+0x160>
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	c80080e7          	jalr	-896(ra) # 80004878 <_Z11printStringPKc>
    80003c00:	00000613          	li	a2,0
    80003c04:	00a00593          	li	a1,10
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	e1c080e7          	jalr	-484(ra) # 80004a28 <_Z8printIntiii>
    80003c14:	00004517          	auipc	a0,0x4
    80003c18:	7ac50513          	addi	a0,a0,1964 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	c5c080e7          	jalr	-932(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c24:	0014849b          	addiw	s1,s1,1
    80003c28:	0ff4f493          	andi	s1,s1,255
    80003c2c:	00200793          	li	a5,2
    80003c30:	fc97f0e3          	bgeu	a5,s1,80003bf0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003c34:	00004517          	auipc	a0,0x4
    80003c38:	54450513          	addi	a0,a0,1348 # 80008178 <CONSOLE_STATUS+0x168>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	c3c080e7          	jalr	-964(ra) # 80004878 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c44:	00700313          	li	t1,7
    thread_dispatch();
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	9ac080e7          	jalr	-1620(ra) # 800015f4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c50:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003c54:	00004517          	auipc	a0,0x4
    80003c58:	53450513          	addi	a0,a0,1332 # 80008188 <CONSOLE_STATUS+0x178>
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	c1c080e7          	jalr	-996(ra) # 80004878 <_Z11printStringPKc>
    80003c64:	00000613          	li	a2,0
    80003c68:	00a00593          	li	a1,10
    80003c6c:	0009051b          	sext.w	a0,s2
    80003c70:	00001097          	auipc	ra,0x1
    80003c74:	db8080e7          	jalr	-584(ra) # 80004a28 <_Z8printIntiii>
    80003c78:	00004517          	auipc	a0,0x4
    80003c7c:	74850513          	addi	a0,a0,1864 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003c80:	00001097          	auipc	ra,0x1
    80003c84:	bf8080e7          	jalr	-1032(ra) # 80004878 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003c88:	00c00513          	li	a0,12
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	d88080e7          	jalr	-632(ra) # 80003a14 <_ZL9fibonaccim>
    80003c94:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c98:	00004517          	auipc	a0,0x4
    80003c9c:	4f850513          	addi	a0,a0,1272 # 80008190 <CONSOLE_STATUS+0x180>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	bd8080e7          	jalr	-1064(ra) # 80004878 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	d74080e7          	jalr	-652(ra) # 80004a28 <_Z8printIntiii>
    80003cbc:	00004517          	auipc	a0,0x4
    80003cc0:	70450513          	addi	a0,a0,1796 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	bb4080e7          	jalr	-1100(ra) # 80004878 <_Z11printStringPKc>
    80003ccc:	0400006f          	j	80003d0c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003cd0:	00004517          	auipc	a0,0x4
    80003cd4:	4a050513          	addi	a0,a0,1184 # 80008170 <CONSOLE_STATUS+0x160>
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	ba0080e7          	jalr	-1120(ra) # 80004878 <_Z11printStringPKc>
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	d3c080e7          	jalr	-708(ra) # 80004a28 <_Z8printIntiii>
    80003cf4:	00004517          	auipc	a0,0x4
    80003cf8:	6cc50513          	addi	a0,a0,1740 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	b7c080e7          	jalr	-1156(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	0ff4f493          	andi	s1,s1,255
    80003d0c:	00500793          	li	a5,5
    80003d10:	fc97f0e3          	bgeu	a5,s1,80003cd0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003d14:	00004517          	auipc	a0,0x4
    80003d18:	43450513          	addi	a0,a0,1076 # 80008148 <CONSOLE_STATUS+0x138>
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	b5c080e7          	jalr	-1188(ra) # 80004878 <_Z11printStringPKc>
    finishedC = true;
    80003d24:	00100793          	li	a5,1
    80003d28:	00006717          	auipc	a4,0x6
    80003d2c:	54f702a3          	sb	a5,1349(a4) # 8000a26d <_ZL9finishedC>
    thread_dispatch();
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	8c4080e7          	jalr	-1852(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d68:	00000913          	li	s2,0
    80003d6c:	0380006f          	j	80003da4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	884080e7          	jalr	-1916(ra) # 800015f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d78:	00148493          	addi	s1,s1,1
    80003d7c:	000027b7          	lui	a5,0x2
    80003d80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d84:	0097ee63          	bltu	a5,s1,80003da0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d88:	00000713          	li	a4,0
    80003d8c:	000077b7          	lui	a5,0x7
    80003d90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d94:	fce7eee3          	bltu	a5,a4,80003d70 <_ZL11workerBodyBPv+0x20>
    80003d98:	00170713          	addi	a4,a4,1
    80003d9c:	ff1ff06f          	j	80003d8c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003da0:	00190913          	addi	s2,s2,1
    80003da4:	00f00793          	li	a5,15
    80003da8:	0527e063          	bltu	a5,s2,80003de8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003dac:	00004517          	auipc	a0,0x4
    80003db0:	3ac50513          	addi	a0,a0,940 # 80008158 <CONSOLE_STATUS+0x148>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	ac4080e7          	jalr	-1340(ra) # 80004878 <_Z11printStringPKc>
    80003dbc:	00000613          	li	a2,0
    80003dc0:	00a00593          	li	a1,10
    80003dc4:	0009051b          	sext.w	a0,s2
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	c60080e7          	jalr	-928(ra) # 80004a28 <_Z8printIntiii>
    80003dd0:	00004517          	auipc	a0,0x4
    80003dd4:	5f050513          	addi	a0,a0,1520 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	aa0080e7          	jalr	-1376(ra) # 80004878 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003de0:	00000493          	li	s1,0
    80003de4:	f99ff06f          	j	80003d7c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003de8:	00004517          	auipc	a0,0x4
    80003dec:	37850513          	addi	a0,a0,888 # 80008160 <CONSOLE_STATUS+0x150>
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	a88080e7          	jalr	-1400(ra) # 80004878 <_Z11printStringPKc>
    finishedB = true;
    80003df8:	00100793          	li	a5,1
    80003dfc:	00006717          	auipc	a4,0x6
    80003e00:	46f70923          	sb	a5,1138(a4) # 8000a26e <_ZL9finishedB>
    thread_dispatch();
    80003e04:	ffffd097          	auipc	ra,0xffffd
    80003e08:	7f0080e7          	jalr	2032(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80003e0c:	01813083          	ld	ra,24(sp)
    80003e10:	01013403          	ld	s0,16(sp)
    80003e14:	00813483          	ld	s1,8(sp)
    80003e18:	00013903          	ld	s2,0(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret

0000000080003e24 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003e24:	fe010113          	addi	sp,sp,-32
    80003e28:	00113c23          	sd	ra,24(sp)
    80003e2c:	00813823          	sd	s0,16(sp)
    80003e30:	00913423          	sd	s1,8(sp)
    80003e34:	01213023          	sd	s2,0(sp)
    80003e38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e3c:	00000913          	li	s2,0
    80003e40:	0380006f          	j	80003e78 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003e44:	ffffd097          	auipc	ra,0xffffd
    80003e48:	7b0080e7          	jalr	1968(ra) # 800015f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e4c:	00148493          	addi	s1,s1,1
    80003e50:	000027b7          	lui	a5,0x2
    80003e54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e58:	0097ee63          	bltu	a5,s1,80003e74 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e5c:	00000713          	li	a4,0
    80003e60:	000077b7          	lui	a5,0x7
    80003e64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e68:	fce7eee3          	bltu	a5,a4,80003e44 <_ZL11workerBodyAPv+0x20>
    80003e6c:	00170713          	addi	a4,a4,1
    80003e70:	ff1ff06f          	j	80003e60 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e74:	00190913          	addi	s2,s2,1
    80003e78:	00900793          	li	a5,9
    80003e7c:	0527e063          	bltu	a5,s2,80003ebc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e80:	00004517          	auipc	a0,0x4
    80003e84:	2c050513          	addi	a0,a0,704 # 80008140 <CONSOLE_STATUS+0x130>
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	9f0080e7          	jalr	-1552(ra) # 80004878 <_Z11printStringPKc>
    80003e90:	00000613          	li	a2,0
    80003e94:	00a00593          	li	a1,10
    80003e98:	0009051b          	sext.w	a0,s2
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	b8c080e7          	jalr	-1140(ra) # 80004a28 <_Z8printIntiii>
    80003ea4:	00004517          	auipc	a0,0x4
    80003ea8:	51c50513          	addi	a0,a0,1308 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	9cc080e7          	jalr	-1588(ra) # 80004878 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003eb4:	00000493          	li	s1,0
    80003eb8:	f99ff06f          	j	80003e50 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003ebc:	00004517          	auipc	a0,0x4
    80003ec0:	28c50513          	addi	a0,a0,652 # 80008148 <CONSOLE_STATUS+0x138>
    80003ec4:	00001097          	auipc	ra,0x1
    80003ec8:	9b4080e7          	jalr	-1612(ra) # 80004878 <_Z11printStringPKc>
    finishedA = true;
    80003ecc:	00100793          	li	a5,1
    80003ed0:	00006717          	auipc	a4,0x6
    80003ed4:	38f70fa3          	sb	a5,927(a4) # 8000a26f <_ZL9finishedA>
}
    80003ed8:	01813083          	ld	ra,24(sp)
    80003edc:	01013403          	ld	s0,16(sp)
    80003ee0:	00813483          	ld	s1,8(sp)
    80003ee4:	00013903          	ld	s2,0(sp)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00008067          	ret

0000000080003ef0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003ef0:	fd010113          	addi	sp,sp,-48
    80003ef4:	02113423          	sd	ra,40(sp)
    80003ef8:	02813023          	sd	s0,32(sp)
    80003efc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003f00:	00000613          	li	a2,0
    80003f04:	00000597          	auipc	a1,0x0
    80003f08:	f2058593          	addi	a1,a1,-224 # 80003e24 <_ZL11workerBodyAPv>
    80003f0c:	fd040513          	addi	a0,s0,-48
    80003f10:	ffffd097          	auipc	ra,0xffffd
    80003f14:	644080e7          	jalr	1604(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003f18:	00004517          	auipc	a0,0x4
    80003f1c:	2c050513          	addi	a0,a0,704 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	958080e7          	jalr	-1704(ra) # 80004878 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003f28:	00000613          	li	a2,0
    80003f2c:	00000597          	auipc	a1,0x0
    80003f30:	e2458593          	addi	a1,a1,-476 # 80003d50 <_ZL11workerBodyBPv>
    80003f34:	fd840513          	addi	a0,s0,-40
    80003f38:	ffffd097          	auipc	ra,0xffffd
    80003f3c:	61c080e7          	jalr	1564(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003f40:	00004517          	auipc	a0,0x4
    80003f44:	2b050513          	addi	a0,a0,688 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	930080e7          	jalr	-1744(ra) # 80004878 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003f50:	00000613          	li	a2,0
    80003f54:	00000597          	auipc	a1,0x0
    80003f58:	c7c58593          	addi	a1,a1,-900 # 80003bd0 <_ZL11workerBodyCPv>
    80003f5c:	fe040513          	addi	a0,s0,-32
    80003f60:	ffffd097          	auipc	ra,0xffffd
    80003f64:	5f4080e7          	jalr	1524(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003f68:	00004517          	auipc	a0,0x4
    80003f6c:	2a050513          	addi	a0,a0,672 # 80008208 <CONSOLE_STATUS+0x1f8>
    80003f70:	00001097          	auipc	ra,0x1
    80003f74:	908080e7          	jalr	-1784(ra) # 80004878 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003f78:	00000613          	li	a2,0
    80003f7c:	00000597          	auipc	a1,0x0
    80003f80:	b0c58593          	addi	a1,a1,-1268 # 80003a88 <_ZL11workerBodyDPv>
    80003f84:	fe840513          	addi	a0,s0,-24
    80003f88:	ffffd097          	auipc	ra,0xffffd
    80003f8c:	5cc080e7          	jalr	1484(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003f90:	00004517          	auipc	a0,0x4
    80003f94:	29050513          	addi	a0,a0,656 # 80008220 <CONSOLE_STATUS+0x210>
    80003f98:	00001097          	auipc	ra,0x1
    80003f9c:	8e0080e7          	jalr	-1824(ra) # 80004878 <_Z11printStringPKc>
    80003fa0:	00c0006f          	j	80003fac <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003fa4:	ffffd097          	auipc	ra,0xffffd
    80003fa8:	650080e7          	jalr	1616(ra) # 800015f4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fac:	00006797          	auipc	a5,0x6
    80003fb0:	2c37c783          	lbu	a5,707(a5) # 8000a26f <_ZL9finishedA>
    80003fb4:	fe0788e3          	beqz	a5,80003fa4 <_Z18Threads_C_API_testv+0xb4>
    80003fb8:	00006797          	auipc	a5,0x6
    80003fbc:	2b67c783          	lbu	a5,694(a5) # 8000a26e <_ZL9finishedB>
    80003fc0:	fe0782e3          	beqz	a5,80003fa4 <_Z18Threads_C_API_testv+0xb4>
    80003fc4:	00006797          	auipc	a5,0x6
    80003fc8:	2a97c783          	lbu	a5,681(a5) # 8000a26d <_ZL9finishedC>
    80003fcc:	fc078ce3          	beqz	a5,80003fa4 <_Z18Threads_C_API_testv+0xb4>
    80003fd0:	00006797          	auipc	a5,0x6
    80003fd4:	29c7c783          	lbu	a5,668(a5) # 8000a26c <_ZL9finishedD>
    80003fd8:	fc0786e3          	beqz	a5,80003fa4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003fdc:	02813083          	ld	ra,40(sp)
    80003fe0:	02013403          	ld	s0,32(sp)
    80003fe4:	03010113          	addi	sp,sp,48
    80003fe8:	00008067          	ret

0000000080003fec <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003fec:	fd010113          	addi	sp,sp,-48
    80003ff0:	02113423          	sd	ra,40(sp)
    80003ff4:	02813023          	sd	s0,32(sp)
    80003ff8:	00913c23          	sd	s1,24(sp)
    80003ffc:	01213823          	sd	s2,16(sp)
    80004000:	01313423          	sd	s3,8(sp)
    80004004:	03010413          	addi	s0,sp,48
    80004008:	00050993          	mv	s3,a0
    8000400c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004010:	00000913          	li	s2,0
    80004014:	00c0006f          	j	80004020 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004018:	fffff097          	auipc	ra,0xfffff
    8000401c:	a98080e7          	jalr	-1384(ra) # 80002ab0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004020:	ffffd097          	auipc	ra,0xffffd
    80004024:	764080e7          	jalr	1892(ra) # 80001784 <_Z4getcv>
    80004028:	0005059b          	sext.w	a1,a0
    8000402c:	01b00793          	li	a5,27
    80004030:	02f58a63          	beq	a1,a5,80004064 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004034:	0084b503          	ld	a0,8(s1)
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	c64080e7          	jalr	-924(ra) # 80004c9c <_ZN9BufferCPP3putEi>
        i++;
    80004040:	0019071b          	addiw	a4,s2,1
    80004044:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004048:	0004a683          	lw	a3,0(s1)
    8000404c:	0026979b          	slliw	a5,a3,0x2
    80004050:	00d787bb          	addw	a5,a5,a3
    80004054:	0017979b          	slliw	a5,a5,0x1
    80004058:	02f767bb          	remw	a5,a4,a5
    8000405c:	fc0792e3          	bnez	a5,80004020 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004060:	fb9ff06f          	j	80004018 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004064:	00100793          	li	a5,1
    80004068:	00006717          	auipc	a4,0x6
    8000406c:	20f72423          	sw	a5,520(a4) # 8000a270 <_ZL9threadEnd>
    td->buffer->put('!');
    80004070:	0209b783          	ld	a5,32(s3)
    80004074:	02100593          	li	a1,33
    80004078:	0087b503          	ld	a0,8(a5)
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	c20080e7          	jalr	-992(ra) # 80004c9c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004084:	0104b503          	ld	a0,16(s1)
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	4e4080e7          	jalr	1252(ra) # 8000256c <_ZN9Semaphore6signalEv>
}
    80004090:	02813083          	ld	ra,40(sp)
    80004094:	02013403          	ld	s0,32(sp)
    80004098:	01813483          	ld	s1,24(sp)
    8000409c:	01013903          	ld	s2,16(sp)
    800040a0:	00813983          	ld	s3,8(sp)
    800040a4:	03010113          	addi	sp,sp,48
    800040a8:	00008067          	ret

00000000800040ac <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800040ac:	fe010113          	addi	sp,sp,-32
    800040b0:	00113c23          	sd	ra,24(sp)
    800040b4:	00813823          	sd	s0,16(sp)
    800040b8:	00913423          	sd	s1,8(sp)
    800040bc:	01213023          	sd	s2,0(sp)
    800040c0:	02010413          	addi	s0,sp,32
    800040c4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800040c8:	00000913          	li	s2,0
    800040cc:	00c0006f          	j	800040d8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800040d0:	fffff097          	auipc	ra,0xfffff
    800040d4:	9e0080e7          	jalr	-1568(ra) # 80002ab0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800040d8:	00006797          	auipc	a5,0x6
    800040dc:	1987a783          	lw	a5,408(a5) # 8000a270 <_ZL9threadEnd>
    800040e0:	02079e63          	bnez	a5,8000411c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800040e4:	0004a583          	lw	a1,0(s1)
    800040e8:	0305859b          	addiw	a1,a1,48
    800040ec:	0084b503          	ld	a0,8(s1)
    800040f0:	00001097          	auipc	ra,0x1
    800040f4:	bac080e7          	jalr	-1108(ra) # 80004c9c <_ZN9BufferCPP3putEi>
        i++;
    800040f8:	0019071b          	addiw	a4,s2,1
    800040fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004100:	0004a683          	lw	a3,0(s1)
    80004104:	0026979b          	slliw	a5,a3,0x2
    80004108:	00d787bb          	addw	a5,a5,a3
    8000410c:	0017979b          	slliw	a5,a5,0x1
    80004110:	02f767bb          	remw	a5,a4,a5
    80004114:	fc0792e3          	bnez	a5,800040d8 <_ZN12ProducerSync8producerEPv+0x2c>
    80004118:	fb9ff06f          	j	800040d0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000411c:	0104b503          	ld	a0,16(s1)
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	44c080e7          	jalr	1100(ra) # 8000256c <_ZN9Semaphore6signalEv>
}
    80004128:	01813083          	ld	ra,24(sp)
    8000412c:	01013403          	ld	s0,16(sp)
    80004130:	00813483          	ld	s1,8(sp)
    80004134:	00013903          	ld	s2,0(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret

0000000080004140 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004140:	fd010113          	addi	sp,sp,-48
    80004144:	02113423          	sd	ra,40(sp)
    80004148:	02813023          	sd	s0,32(sp)
    8000414c:	00913c23          	sd	s1,24(sp)
    80004150:	01213823          	sd	s2,16(sp)
    80004154:	01313423          	sd	s3,8(sp)
    80004158:	01413023          	sd	s4,0(sp)
    8000415c:	03010413          	addi	s0,sp,48
    80004160:	00050993          	mv	s3,a0
    80004164:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004168:	00000a13          	li	s4,0
    8000416c:	01c0006f          	j	80004188 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004170:	fffff097          	auipc	ra,0xfffff
    80004174:	940080e7          	jalr	-1728(ra) # 80002ab0 <_ZN6Thread8dispatchEv>
    80004178:	0500006f          	j	800041c8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000417c:	00a00513          	li	a0,10
    80004180:	ffffd097          	auipc	ra,0xffffd
    80004184:	638080e7          	jalr	1592(ra) # 800017b8 <_Z4putcc>
    while (!threadEnd) {
    80004188:	00006797          	auipc	a5,0x6
    8000418c:	0e87a783          	lw	a5,232(a5) # 8000a270 <_ZL9threadEnd>
    80004190:	06079263          	bnez	a5,800041f4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004194:	00893503          	ld	a0,8(s2)
    80004198:	00001097          	auipc	ra,0x1
    8000419c:	b94080e7          	jalr	-1132(ra) # 80004d2c <_ZN9BufferCPP3getEv>
        i++;
    800041a0:	001a049b          	addiw	s1,s4,1
    800041a4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800041a8:	0ff57513          	andi	a0,a0,255
    800041ac:	ffffd097          	auipc	ra,0xffffd
    800041b0:	60c080e7          	jalr	1548(ra) # 800017b8 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800041b4:	00092703          	lw	a4,0(s2)
    800041b8:	0027179b          	slliw	a5,a4,0x2
    800041bc:	00e787bb          	addw	a5,a5,a4
    800041c0:	02f4e7bb          	remw	a5,s1,a5
    800041c4:	fa0786e3          	beqz	a5,80004170 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800041c8:	05000793          	li	a5,80
    800041cc:	02f4e4bb          	remw	s1,s1,a5
    800041d0:	fa049ce3          	bnez	s1,80004188 <_ZN12ConsumerSync8consumerEPv+0x48>
    800041d4:	fa9ff06f          	j	8000417c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800041d8:	0209b783          	ld	a5,32(s3)
    800041dc:	0087b503          	ld	a0,8(a5)
    800041e0:	00001097          	auipc	ra,0x1
    800041e4:	b4c080e7          	jalr	-1204(ra) # 80004d2c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800041e8:	0ff57513          	andi	a0,a0,255
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	4b0080e7          	jalr	1200(ra) # 8000269c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800041f4:	0209b783          	ld	a5,32(s3)
    800041f8:	0087b503          	ld	a0,8(a5)
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	bbc080e7          	jalr	-1092(ra) # 80004db8 <_ZN9BufferCPP6getCntEv>
    80004204:	fca04ae3          	bgtz	a0,800041d8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004208:	01093503          	ld	a0,16(s2)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	360080e7          	jalr	864(ra) # 8000256c <_ZN9Semaphore6signalEv>
}
    80004214:	02813083          	ld	ra,40(sp)
    80004218:	02013403          	ld	s0,32(sp)
    8000421c:	01813483          	ld	s1,24(sp)
    80004220:	01013903          	ld	s2,16(sp)
    80004224:	00813983          	ld	s3,8(sp)
    80004228:	00013a03          	ld	s4,0(sp)
    8000422c:	03010113          	addi	sp,sp,48
    80004230:	00008067          	ret

0000000080004234 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004234:	f8010113          	addi	sp,sp,-128
    80004238:	06113c23          	sd	ra,120(sp)
    8000423c:	06813823          	sd	s0,112(sp)
    80004240:	06913423          	sd	s1,104(sp)
    80004244:	07213023          	sd	s2,96(sp)
    80004248:	05313c23          	sd	s3,88(sp)
    8000424c:	05413823          	sd	s4,80(sp)
    80004250:	05513423          	sd	s5,72(sp)
    80004254:	05613023          	sd	s6,64(sp)
    80004258:	03713c23          	sd	s7,56(sp)
    8000425c:	03813823          	sd	s8,48(sp)
    80004260:	03913423          	sd	s9,40(sp)
    80004264:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004268:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000426c:	00004517          	auipc	a0,0x4
    80004270:	dec50513          	addi	a0,a0,-532 # 80008058 <CONSOLE_STATUS+0x48>
    80004274:	00000097          	auipc	ra,0x0
    80004278:	604080e7          	jalr	1540(ra) # 80004878 <_Z11printStringPKc>
    getString(input, 30);
    8000427c:	01e00593          	li	a1,30
    80004280:	f8040493          	addi	s1,s0,-128
    80004284:	00048513          	mv	a0,s1
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	678080e7          	jalr	1656(ra) # 80004900 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004290:	00048513          	mv	a0,s1
    80004294:	00000097          	auipc	ra,0x0
    80004298:	744080e7          	jalr	1860(ra) # 800049d8 <_Z11stringToIntPKc>
    8000429c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800042a0:	00004517          	auipc	a0,0x4
    800042a4:	dd850513          	addi	a0,a0,-552 # 80008078 <CONSOLE_STATUS+0x68>
    800042a8:	00000097          	auipc	ra,0x0
    800042ac:	5d0080e7          	jalr	1488(ra) # 80004878 <_Z11printStringPKc>
    getString(input, 30);
    800042b0:	01e00593          	li	a1,30
    800042b4:	00048513          	mv	a0,s1
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	648080e7          	jalr	1608(ra) # 80004900 <_Z9getStringPci>
    n = stringToInt(input);
    800042c0:	00048513          	mv	a0,s1
    800042c4:	00000097          	auipc	ra,0x0
    800042c8:	714080e7          	jalr	1812(ra) # 800049d8 <_Z11stringToIntPKc>
    800042cc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800042d0:	00004517          	auipc	a0,0x4
    800042d4:	dc850513          	addi	a0,a0,-568 # 80008098 <CONSOLE_STATUS+0x88>
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	5a0080e7          	jalr	1440(ra) # 80004878 <_Z11printStringPKc>
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	00090513          	mv	a0,s2
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	73c080e7          	jalr	1852(ra) # 80004a28 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800042f4:	00004517          	auipc	a0,0x4
    800042f8:	dbc50513          	addi	a0,a0,-580 # 800080b0 <CONSOLE_STATUS+0xa0>
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	57c080e7          	jalr	1404(ra) # 80004878 <_Z11printStringPKc>
    80004304:	00000613          	li	a2,0
    80004308:	00a00593          	li	a1,10
    8000430c:	00048513          	mv	a0,s1
    80004310:	00000097          	auipc	ra,0x0
    80004314:	718080e7          	jalr	1816(ra) # 80004a28 <_Z8printIntiii>
    printString(".\n");
    80004318:	00004517          	auipc	a0,0x4
    8000431c:	db050513          	addi	a0,a0,-592 # 800080c8 <CONSOLE_STATUS+0xb8>
    80004320:	00000097          	auipc	ra,0x0
    80004324:	558080e7          	jalr	1368(ra) # 80004878 <_Z11printStringPKc>
    if(threadNum > n) {
    80004328:	0324c463          	blt	s1,s2,80004350 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000432c:	03205c63          	blez	s2,80004364 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004330:	03800513          	li	a0,56
    80004334:	ffffe097          	auipc	ra,0xffffe
    80004338:	c24080e7          	jalr	-988(ra) # 80001f58 <_Znwm>
    8000433c:	00050a93          	mv	s5,a0
    80004340:	00048593          	mv	a1,s1
    80004344:	00001097          	auipc	ra,0x1
    80004348:	804080e7          	jalr	-2044(ra) # 80004b48 <_ZN9BufferCPPC1Ei>
    8000434c:	0300006f          	j	8000437c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004350:	00004517          	auipc	a0,0x4
    80004354:	d8050513          	addi	a0,a0,-640 # 800080d0 <CONSOLE_STATUS+0xc0>
    80004358:	00000097          	auipc	ra,0x0
    8000435c:	520080e7          	jalr	1312(ra) # 80004878 <_Z11printStringPKc>
        return;
    80004360:	0140006f          	j	80004374 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004364:	00004517          	auipc	a0,0x4
    80004368:	dac50513          	addi	a0,a0,-596 # 80008110 <CONSOLE_STATUS+0x100>
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	50c080e7          	jalr	1292(ra) # 80004878 <_Z11printStringPKc>
        return;
    80004374:	000b8113          	mv	sp,s7
    80004378:	2380006f          	j	800045b0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000437c:	01000513          	li	a0,16
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	bd8080e7          	jalr	-1064(ra) # 80001f58 <_Znwm>
    80004388:	00050493          	mv	s1,a0
    8000438c:	00000593          	li	a1,0
    80004390:	ffffe097          	auipc	ra,0xffffe
    80004394:	174080e7          	jalr	372(ra) # 80002504 <_ZN9SemaphoreC1Ej>
    80004398:	00006797          	auipc	a5,0x6
    8000439c:	ee97b023          	sd	s1,-288(a5) # 8000a278 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800043a0:	00391793          	slli	a5,s2,0x3
    800043a4:	00f78793          	addi	a5,a5,15
    800043a8:	ff07f793          	andi	a5,a5,-16
    800043ac:	40f10133          	sub	sp,sp,a5
    800043b0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800043b4:	0019071b          	addiw	a4,s2,1
    800043b8:	00171793          	slli	a5,a4,0x1
    800043bc:	00e787b3          	add	a5,a5,a4
    800043c0:	00379793          	slli	a5,a5,0x3
    800043c4:	00f78793          	addi	a5,a5,15
    800043c8:	ff07f793          	andi	a5,a5,-16
    800043cc:	40f10133          	sub	sp,sp,a5
    800043d0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800043d4:	00191c13          	slli	s8,s2,0x1
    800043d8:	012c07b3          	add	a5,s8,s2
    800043dc:	00379793          	slli	a5,a5,0x3
    800043e0:	00fa07b3          	add	a5,s4,a5
    800043e4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800043e8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800043ec:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800043f0:	02800513          	li	a0,40
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	b64080e7          	jalr	-1180(ra) # 80001f58 <_Znwm>
    800043fc:	00050b13          	mv	s6,a0
    80004400:	012c0c33          	add	s8,s8,s2
    80004404:	003c1c13          	slli	s8,s8,0x3
    80004408:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	614080e7          	jalr	1556(ra) # 80002a20 <_ZN6ThreadC1Ev>
    80004414:	00006797          	auipc	a5,0x6
    80004418:	d5c78793          	addi	a5,a5,-676 # 8000a170 <_ZTV12ConsumerSync+0x10>
    8000441c:	00fb3023          	sd	a5,0(s6)
    80004420:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004424:	000b0513          	mv	a0,s6
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	620080e7          	jalr	1568(ra) # 80002a48 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004430:	00000493          	li	s1,0
    80004434:	0380006f          	j	8000446c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004438:	00006797          	auipc	a5,0x6
    8000443c:	d1078793          	addi	a5,a5,-752 # 8000a148 <_ZTV12ProducerSync+0x10>
    80004440:	00fcb023          	sd	a5,0(s9)
    80004444:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004448:	00349793          	slli	a5,s1,0x3
    8000444c:	00f987b3          	add	a5,s3,a5
    80004450:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004454:	00349793          	slli	a5,s1,0x3
    80004458:	00f987b3          	add	a5,s3,a5
    8000445c:	0007b503          	ld	a0,0(a5)
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	5e8080e7          	jalr	1512(ra) # 80002a48 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004468:	0014849b          	addiw	s1,s1,1
    8000446c:	0b24d063          	bge	s1,s2,8000450c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004470:	00149793          	slli	a5,s1,0x1
    80004474:	009787b3          	add	a5,a5,s1
    80004478:	00379793          	slli	a5,a5,0x3
    8000447c:	00fa07b3          	add	a5,s4,a5
    80004480:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004484:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004488:	00006717          	auipc	a4,0x6
    8000448c:	df073703          	ld	a4,-528(a4) # 8000a278 <_ZL10waitForAll>
    80004490:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004494:	02905863          	blez	s1,800044c4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004498:	02800513          	li	a0,40
    8000449c:	ffffe097          	auipc	ra,0xffffe
    800044a0:	abc080e7          	jalr	-1348(ra) # 80001f58 <_Znwm>
    800044a4:	00050c93          	mv	s9,a0
    800044a8:	00149c13          	slli	s8,s1,0x1
    800044ac:	009c0c33          	add	s8,s8,s1
    800044b0:	003c1c13          	slli	s8,s8,0x3
    800044b4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800044b8:	ffffe097          	auipc	ra,0xffffe
    800044bc:	568080e7          	jalr	1384(ra) # 80002a20 <_ZN6ThreadC1Ev>
    800044c0:	f79ff06f          	j	80004438 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800044c4:	02800513          	li	a0,40
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	a90080e7          	jalr	-1392(ra) # 80001f58 <_Znwm>
    800044d0:	00050c93          	mv	s9,a0
    800044d4:	00149c13          	slli	s8,s1,0x1
    800044d8:	009c0c33          	add	s8,s8,s1
    800044dc:	003c1c13          	slli	s8,s8,0x3
    800044e0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	53c080e7          	jalr	1340(ra) # 80002a20 <_ZN6ThreadC1Ev>
    800044ec:	00006797          	auipc	a5,0x6
    800044f0:	c3478793          	addi	a5,a5,-972 # 8000a120 <_ZTV16ProducerKeyboard+0x10>
    800044f4:	00fcb023          	sd	a5,0(s9)
    800044f8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800044fc:	00349793          	slli	a5,s1,0x3
    80004500:	00f987b3          	add	a5,s3,a5
    80004504:	0197b023          	sd	s9,0(a5)
    80004508:	f4dff06f          	j	80004454 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	5a4080e7          	jalr	1444(ra) # 80002ab0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004514:	00000493          	li	s1,0
    80004518:	00994e63          	blt	s2,s1,80004534 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000451c:	00006517          	auipc	a0,0x6
    80004520:	d5c53503          	ld	a0,-676(a0) # 8000a278 <_ZL10waitForAll>
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	01c080e7          	jalr	28(ra) # 80002540 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000452c:	0014849b          	addiw	s1,s1,1
    80004530:	fe9ff06f          	j	80004518 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004534:	00000493          	li	s1,0
    80004538:	0080006f          	j	80004540 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000453c:	0014849b          	addiw	s1,s1,1
    80004540:	0324d263          	bge	s1,s2,80004564 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004544:	00349793          	slli	a5,s1,0x3
    80004548:	00f987b3          	add	a5,s3,a5
    8000454c:	0007b503          	ld	a0,0(a5)
    80004550:	fe0506e3          	beqz	a0,8000453c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004554:	00053783          	ld	a5,0(a0)
    80004558:	0087b783          	ld	a5,8(a5)
    8000455c:	000780e7          	jalr	a5
    80004560:	fddff06f          	j	8000453c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004564:	000b0a63          	beqz	s6,80004578 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004568:	000b3783          	ld	a5,0(s6)
    8000456c:	0087b783          	ld	a5,8(a5)
    80004570:	000b0513          	mv	a0,s6
    80004574:	000780e7          	jalr	a5
    delete waitForAll;
    80004578:	00006517          	auipc	a0,0x6
    8000457c:	d0053503          	ld	a0,-768(a0) # 8000a278 <_ZL10waitForAll>
    80004580:	00050863          	beqz	a0,80004590 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004584:	00053783          	ld	a5,0(a0)
    80004588:	0087b783          	ld	a5,8(a5)
    8000458c:	000780e7          	jalr	a5
    delete buffer;
    80004590:	000a8e63          	beqz	s5,800045ac <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004594:	000a8513          	mv	a0,s5
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	8a8080e7          	jalr	-1880(ra) # 80004e40 <_ZN9BufferCPPD1Ev>
    800045a0:	000a8513          	mv	a0,s5
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	a04080e7          	jalr	-1532(ra) # 80001fa8 <_ZdlPv>
    800045ac:	000b8113          	mv	sp,s7

}
    800045b0:	f8040113          	addi	sp,s0,-128
    800045b4:	07813083          	ld	ra,120(sp)
    800045b8:	07013403          	ld	s0,112(sp)
    800045bc:	06813483          	ld	s1,104(sp)
    800045c0:	06013903          	ld	s2,96(sp)
    800045c4:	05813983          	ld	s3,88(sp)
    800045c8:	05013a03          	ld	s4,80(sp)
    800045cc:	04813a83          	ld	s5,72(sp)
    800045d0:	04013b03          	ld	s6,64(sp)
    800045d4:	03813b83          	ld	s7,56(sp)
    800045d8:	03013c03          	ld	s8,48(sp)
    800045dc:	02813c83          	ld	s9,40(sp)
    800045e0:	08010113          	addi	sp,sp,128
    800045e4:	00008067          	ret
    800045e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800045ec:	000a8513          	mv	a0,s5
    800045f0:	ffffe097          	auipc	ra,0xffffe
    800045f4:	9b8080e7          	jalr	-1608(ra) # 80001fa8 <_ZdlPv>
    800045f8:	00048513          	mv	a0,s1
    800045fc:	00007097          	auipc	ra,0x7
    80004600:	d5c080e7          	jalr	-676(ra) # 8000b358 <_Unwind_Resume>
    80004604:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004608:	00048513          	mv	a0,s1
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	99c080e7          	jalr	-1636(ra) # 80001fa8 <_ZdlPv>
    80004614:	00090513          	mv	a0,s2
    80004618:	00007097          	auipc	ra,0x7
    8000461c:	d40080e7          	jalr	-704(ra) # 8000b358 <_Unwind_Resume>
    80004620:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004624:	000b0513          	mv	a0,s6
    80004628:	ffffe097          	auipc	ra,0xffffe
    8000462c:	980080e7          	jalr	-1664(ra) # 80001fa8 <_ZdlPv>
    80004630:	00048513          	mv	a0,s1
    80004634:	00007097          	auipc	ra,0x7
    80004638:	d24080e7          	jalr	-732(ra) # 8000b358 <_Unwind_Resume>
    8000463c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004640:	000c8513          	mv	a0,s9
    80004644:	ffffe097          	auipc	ra,0xffffe
    80004648:	964080e7          	jalr	-1692(ra) # 80001fa8 <_ZdlPv>
    8000464c:	00048513          	mv	a0,s1
    80004650:	00007097          	auipc	ra,0x7
    80004654:	d08080e7          	jalr	-760(ra) # 8000b358 <_Unwind_Resume>
    80004658:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000465c:	000c8513          	mv	a0,s9
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	948080e7          	jalr	-1720(ra) # 80001fa8 <_ZdlPv>
    80004668:	00048513          	mv	a0,s1
    8000466c:	00007097          	auipc	ra,0x7
    80004670:	cec080e7          	jalr	-788(ra) # 8000b358 <_Unwind_Resume>

0000000080004674 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004674:	ff010113          	addi	sp,sp,-16
    80004678:	00113423          	sd	ra,8(sp)
    8000467c:	00813023          	sd	s0,0(sp)
    80004680:	01010413          	addi	s0,sp,16
    80004684:	00006797          	auipc	a5,0x6
    80004688:	aec78793          	addi	a5,a5,-1300 # 8000a170 <_ZTV12ConsumerSync+0x10>
    8000468c:	00f53023          	sd	a5,0(a0)
    80004690:	ffffe097          	auipc	ra,0xffffe
    80004694:	2d8080e7          	jalr	728(ra) # 80002968 <_ZN6ThreadD1Ev>
    80004698:	00813083          	ld	ra,8(sp)
    8000469c:	00013403          	ld	s0,0(sp)
    800046a0:	01010113          	addi	sp,sp,16
    800046a4:	00008067          	ret

00000000800046a8 <_ZN12ConsumerSyncD0Ev>:
    800046a8:	fe010113          	addi	sp,sp,-32
    800046ac:	00113c23          	sd	ra,24(sp)
    800046b0:	00813823          	sd	s0,16(sp)
    800046b4:	00913423          	sd	s1,8(sp)
    800046b8:	02010413          	addi	s0,sp,32
    800046bc:	00050493          	mv	s1,a0
    800046c0:	00006797          	auipc	a5,0x6
    800046c4:	ab078793          	addi	a5,a5,-1360 # 8000a170 <_ZTV12ConsumerSync+0x10>
    800046c8:	00f53023          	sd	a5,0(a0)
    800046cc:	ffffe097          	auipc	ra,0xffffe
    800046d0:	29c080e7          	jalr	668(ra) # 80002968 <_ZN6ThreadD1Ev>
    800046d4:	00048513          	mv	a0,s1
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	8d0080e7          	jalr	-1840(ra) # 80001fa8 <_ZdlPv>
    800046e0:	01813083          	ld	ra,24(sp)
    800046e4:	01013403          	ld	s0,16(sp)
    800046e8:	00813483          	ld	s1,8(sp)
    800046ec:	02010113          	addi	sp,sp,32
    800046f0:	00008067          	ret

00000000800046f4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00113423          	sd	ra,8(sp)
    800046fc:	00813023          	sd	s0,0(sp)
    80004700:	01010413          	addi	s0,sp,16
    80004704:	00006797          	auipc	a5,0x6
    80004708:	a4478793          	addi	a5,a5,-1468 # 8000a148 <_ZTV12ProducerSync+0x10>
    8000470c:	00f53023          	sd	a5,0(a0)
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	258080e7          	jalr	600(ra) # 80002968 <_ZN6ThreadD1Ev>
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN12ProducerSyncD0Ev>:
    80004728:	fe010113          	addi	sp,sp,-32
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00913423          	sd	s1,8(sp)
    80004738:	02010413          	addi	s0,sp,32
    8000473c:	00050493          	mv	s1,a0
    80004740:	00006797          	auipc	a5,0x6
    80004744:	a0878793          	addi	a5,a5,-1528 # 8000a148 <_ZTV12ProducerSync+0x10>
    80004748:	00f53023          	sd	a5,0(a0)
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	21c080e7          	jalr	540(ra) # 80002968 <_ZN6ThreadD1Ev>
    80004754:	00048513          	mv	a0,s1
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	850080e7          	jalr	-1968(ra) # 80001fa8 <_ZdlPv>
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	02010113          	addi	sp,sp,32
    80004770:	00008067          	ret

0000000080004774 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004774:	ff010113          	addi	sp,sp,-16
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	00813023          	sd	s0,0(sp)
    80004780:	01010413          	addi	s0,sp,16
    80004784:	00006797          	auipc	a5,0x6
    80004788:	99c78793          	addi	a5,a5,-1636 # 8000a120 <_ZTV16ProducerKeyboard+0x10>
    8000478c:	00f53023          	sd	a5,0(a0)
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	1d8080e7          	jalr	472(ra) # 80002968 <_ZN6ThreadD1Ev>
    80004798:	00813083          	ld	ra,8(sp)
    8000479c:	00013403          	ld	s0,0(sp)
    800047a0:	01010113          	addi	sp,sp,16
    800047a4:	00008067          	ret

00000000800047a8 <_ZN16ProducerKeyboardD0Ev>:
    800047a8:	fe010113          	addi	sp,sp,-32
    800047ac:	00113c23          	sd	ra,24(sp)
    800047b0:	00813823          	sd	s0,16(sp)
    800047b4:	00913423          	sd	s1,8(sp)
    800047b8:	02010413          	addi	s0,sp,32
    800047bc:	00050493          	mv	s1,a0
    800047c0:	00006797          	auipc	a5,0x6
    800047c4:	96078793          	addi	a5,a5,-1696 # 8000a120 <_ZTV16ProducerKeyboard+0x10>
    800047c8:	00f53023          	sd	a5,0(a0)
    800047cc:	ffffe097          	auipc	ra,0xffffe
    800047d0:	19c080e7          	jalr	412(ra) # 80002968 <_ZN6ThreadD1Ev>
    800047d4:	00048513          	mv	a0,s1
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	7d0080e7          	jalr	2000(ra) # 80001fa8 <_ZdlPv>
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret

00000000800047f4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800047f4:	ff010113          	addi	sp,sp,-16
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	00813023          	sd	s0,0(sp)
    80004800:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004804:	02053583          	ld	a1,32(a0)
    80004808:	fffff097          	auipc	ra,0xfffff
    8000480c:	7e4080e7          	jalr	2020(ra) # 80003fec <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004810:	00813083          	ld	ra,8(sp)
    80004814:	00013403          	ld	s0,0(sp)
    80004818:	01010113          	addi	sp,sp,16
    8000481c:	00008067          	ret

0000000080004820 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004820:	ff010113          	addi	sp,sp,-16
    80004824:	00113423          	sd	ra,8(sp)
    80004828:	00813023          	sd	s0,0(sp)
    8000482c:	01010413          	addi	s0,sp,16
        producer(td);
    80004830:	02053583          	ld	a1,32(a0)
    80004834:	00000097          	auipc	ra,0x0
    80004838:	878080e7          	jalr	-1928(ra) # 800040ac <_ZN12ProducerSync8producerEPv>
    }
    8000483c:	00813083          	ld	ra,8(sp)
    80004840:	00013403          	ld	s0,0(sp)
    80004844:	01010113          	addi	sp,sp,16
    80004848:	00008067          	ret

000000008000484c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000484c:	ff010113          	addi	sp,sp,-16
    80004850:	00113423          	sd	ra,8(sp)
    80004854:	00813023          	sd	s0,0(sp)
    80004858:	01010413          	addi	s0,sp,16
        consumer(td);
    8000485c:	02053583          	ld	a1,32(a0)
    80004860:	00000097          	auipc	ra,0x0
    80004864:	8e0080e7          	jalr	-1824(ra) # 80004140 <_ZN12ConsumerSync8consumerEPv>
    }
    80004868:	00813083          	ld	ra,8(sp)
    8000486c:	00013403          	ld	s0,0(sp)
    80004870:	01010113          	addi	sp,sp,16
    80004874:	00008067          	ret

0000000080004878 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004878:	fe010113          	addi	sp,sp,-32
    8000487c:	00113c23          	sd	ra,24(sp)
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00913423          	sd	s1,8(sp)
    80004888:	02010413          	addi	s0,sp,32
    8000488c:	00050493          	mv	s1,a0
    LOCK();
    80004890:	00100613          	li	a2,1
    80004894:	00000593          	li	a1,0
    80004898:	00006517          	auipc	a0,0x6
    8000489c:	9e850513          	addi	a0,a0,-1560 # 8000a280 <lockPrint>
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	c04080e7          	jalr	-1020(ra) # 800014a4 <copy_and_swap>
    800048a8:	00050863          	beqz	a0,800048b8 <_Z11printStringPKc+0x40>
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	d48080e7          	jalr	-696(ra) # 800015f4 <_Z15thread_dispatchv>
    800048b4:	fddff06f          	j	80004890 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800048b8:	0004c503          	lbu	a0,0(s1)
    800048bc:	00050a63          	beqz	a0,800048d0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	ef8080e7          	jalr	-264(ra) # 800017b8 <_Z4putcc>
        string++;
    800048c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800048cc:	fedff06f          	j	800048b8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800048d0:	00000613          	li	a2,0
    800048d4:	00100593          	li	a1,1
    800048d8:	00006517          	auipc	a0,0x6
    800048dc:	9a850513          	addi	a0,a0,-1624 # 8000a280 <lockPrint>
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	bc4080e7          	jalr	-1084(ra) # 800014a4 <copy_and_swap>
    800048e8:	fe0514e3          	bnez	a0,800048d0 <_Z11printStringPKc+0x58>
}
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00813483          	ld	s1,8(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004900:	fd010113          	addi	sp,sp,-48
    80004904:	02113423          	sd	ra,40(sp)
    80004908:	02813023          	sd	s0,32(sp)
    8000490c:	00913c23          	sd	s1,24(sp)
    80004910:	01213823          	sd	s2,16(sp)
    80004914:	01313423          	sd	s3,8(sp)
    80004918:	01413023          	sd	s4,0(sp)
    8000491c:	03010413          	addi	s0,sp,48
    80004920:	00050993          	mv	s3,a0
    80004924:	00058a13          	mv	s4,a1
    LOCK();
    80004928:	00100613          	li	a2,1
    8000492c:	00000593          	li	a1,0
    80004930:	00006517          	auipc	a0,0x6
    80004934:	95050513          	addi	a0,a0,-1712 # 8000a280 <lockPrint>
    80004938:	ffffd097          	auipc	ra,0xffffd
    8000493c:	b6c080e7          	jalr	-1172(ra) # 800014a4 <copy_and_swap>
    80004940:	00050863          	beqz	a0,80004950 <_Z9getStringPci+0x50>
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	cb0080e7          	jalr	-848(ra) # 800015f4 <_Z15thread_dispatchv>
    8000494c:	fddff06f          	j	80004928 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004950:	00000913          	li	s2,0
    80004954:	00090493          	mv	s1,s2
    80004958:	0019091b          	addiw	s2,s2,1
    8000495c:	03495a63          	bge	s2,s4,80004990 <_Z9getStringPci+0x90>
        cc = getc();
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	e24080e7          	jalr	-476(ra) # 80001784 <_Z4getcv>
        if(cc < 1)
    80004968:	02050463          	beqz	a0,80004990 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000496c:	009984b3          	add	s1,s3,s1
    80004970:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004974:	00a00793          	li	a5,10
    80004978:	00f50a63          	beq	a0,a5,8000498c <_Z9getStringPci+0x8c>
    8000497c:	00d00793          	li	a5,13
    80004980:	fcf51ae3          	bne	a0,a5,80004954 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004984:	00090493          	mv	s1,s2
    80004988:	0080006f          	j	80004990 <_Z9getStringPci+0x90>
    8000498c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004990:	009984b3          	add	s1,s3,s1
    80004994:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004998:	00000613          	li	a2,0
    8000499c:	00100593          	li	a1,1
    800049a0:	00006517          	auipc	a0,0x6
    800049a4:	8e050513          	addi	a0,a0,-1824 # 8000a280 <lockPrint>
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	afc080e7          	jalr	-1284(ra) # 800014a4 <copy_and_swap>
    800049b0:	fe0514e3          	bnez	a0,80004998 <_Z9getStringPci+0x98>
    return buf;
}
    800049b4:	00098513          	mv	a0,s3
    800049b8:	02813083          	ld	ra,40(sp)
    800049bc:	02013403          	ld	s0,32(sp)
    800049c0:	01813483          	ld	s1,24(sp)
    800049c4:	01013903          	ld	s2,16(sp)
    800049c8:	00813983          	ld	s3,8(sp)
    800049cc:	00013a03          	ld	s4,0(sp)
    800049d0:	03010113          	addi	sp,sp,48
    800049d4:	00008067          	ret

00000000800049d8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800049d8:	ff010113          	addi	sp,sp,-16
    800049dc:	00813423          	sd	s0,8(sp)
    800049e0:	01010413          	addi	s0,sp,16
    800049e4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800049e8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800049ec:	0006c603          	lbu	a2,0(a3)
    800049f0:	fd06071b          	addiw	a4,a2,-48
    800049f4:	0ff77713          	andi	a4,a4,255
    800049f8:	00900793          	li	a5,9
    800049fc:	02e7e063          	bltu	a5,a4,80004a1c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004a00:	0025179b          	slliw	a5,a0,0x2
    80004a04:	00a787bb          	addw	a5,a5,a0
    80004a08:	0017979b          	slliw	a5,a5,0x1
    80004a0c:	00168693          	addi	a3,a3,1
    80004a10:	00c787bb          	addw	a5,a5,a2
    80004a14:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004a18:	fd5ff06f          	j	800049ec <_Z11stringToIntPKc+0x14>
    return n;
}
    80004a1c:	00813403          	ld	s0,8(sp)
    80004a20:	01010113          	addi	sp,sp,16
    80004a24:	00008067          	ret

0000000080004a28 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004a28:	fc010113          	addi	sp,sp,-64
    80004a2c:	02113c23          	sd	ra,56(sp)
    80004a30:	02813823          	sd	s0,48(sp)
    80004a34:	02913423          	sd	s1,40(sp)
    80004a38:	03213023          	sd	s2,32(sp)
    80004a3c:	01313c23          	sd	s3,24(sp)
    80004a40:	04010413          	addi	s0,sp,64
    80004a44:	00050493          	mv	s1,a0
    80004a48:	00058913          	mv	s2,a1
    80004a4c:	00060993          	mv	s3,a2
    LOCK();
    80004a50:	00100613          	li	a2,1
    80004a54:	00000593          	li	a1,0
    80004a58:	00006517          	auipc	a0,0x6
    80004a5c:	82850513          	addi	a0,a0,-2008 # 8000a280 <lockPrint>
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	a44080e7          	jalr	-1468(ra) # 800014a4 <copy_and_swap>
    80004a68:	00050863          	beqz	a0,80004a78 <_Z8printIntiii+0x50>
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	b88080e7          	jalr	-1144(ra) # 800015f4 <_Z15thread_dispatchv>
    80004a74:	fddff06f          	j	80004a50 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004a78:	00098463          	beqz	s3,80004a80 <_Z8printIntiii+0x58>
    80004a7c:	0804c463          	bltz	s1,80004b04 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004a80:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004a84:	00000593          	li	a1,0
    }

    i = 0;
    80004a88:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004a8c:	0009079b          	sext.w	a5,s2
    80004a90:	0325773b          	remuw	a4,a0,s2
    80004a94:	00048613          	mv	a2,s1
    80004a98:	0014849b          	addiw	s1,s1,1
    80004a9c:	02071693          	slli	a3,a4,0x20
    80004aa0:	0206d693          	srli	a3,a3,0x20
    80004aa4:	00005717          	auipc	a4,0x5
    80004aa8:	6e470713          	addi	a4,a4,1764 # 8000a188 <digits>
    80004aac:	00d70733          	add	a4,a4,a3
    80004ab0:	00074683          	lbu	a3,0(a4)
    80004ab4:	fd040713          	addi	a4,s0,-48
    80004ab8:	00c70733          	add	a4,a4,a2
    80004abc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004ac0:	0005071b          	sext.w	a4,a0
    80004ac4:	0325553b          	divuw	a0,a0,s2
    80004ac8:	fcf772e3          	bgeu	a4,a5,80004a8c <_Z8printIntiii+0x64>
    if(neg)
    80004acc:	00058c63          	beqz	a1,80004ae4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004ad0:	fd040793          	addi	a5,s0,-48
    80004ad4:	009784b3          	add	s1,a5,s1
    80004ad8:	02d00793          	li	a5,45
    80004adc:	fef48823          	sb	a5,-16(s1)
    80004ae0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ae4:	fff4849b          	addiw	s1,s1,-1
    80004ae8:	0204c463          	bltz	s1,80004b10 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004aec:	fd040793          	addi	a5,s0,-48
    80004af0:	009787b3          	add	a5,a5,s1
    80004af4:	ff07c503          	lbu	a0,-16(a5)
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	cc0080e7          	jalr	-832(ra) # 800017b8 <_Z4putcc>
    80004b00:	fe5ff06f          	j	80004ae4 <_Z8printIntiii+0xbc>
        x = -xx;
    80004b04:	4090053b          	negw	a0,s1
        neg = 1;
    80004b08:	00100593          	li	a1,1
        x = -xx;
    80004b0c:	f7dff06f          	j	80004a88 <_Z8printIntiii+0x60>

    UNLOCK();
    80004b10:	00000613          	li	a2,0
    80004b14:	00100593          	li	a1,1
    80004b18:	00005517          	auipc	a0,0x5
    80004b1c:	76850513          	addi	a0,a0,1896 # 8000a280 <lockPrint>
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	984080e7          	jalr	-1660(ra) # 800014a4 <copy_and_swap>
    80004b28:	fe0514e3          	bnez	a0,80004b10 <_Z8printIntiii+0xe8>
    80004b2c:	03813083          	ld	ra,56(sp)
    80004b30:	03013403          	ld	s0,48(sp)
    80004b34:	02813483          	ld	s1,40(sp)
    80004b38:	02013903          	ld	s2,32(sp)
    80004b3c:	01813983          	ld	s3,24(sp)
    80004b40:	04010113          	addi	sp,sp,64
    80004b44:	00008067          	ret

0000000080004b48 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004b48:	fd010113          	addi	sp,sp,-48
    80004b4c:	02113423          	sd	ra,40(sp)
    80004b50:	02813023          	sd	s0,32(sp)
    80004b54:	00913c23          	sd	s1,24(sp)
    80004b58:	01213823          	sd	s2,16(sp)
    80004b5c:	01313423          	sd	s3,8(sp)
    80004b60:	03010413          	addi	s0,sp,48
    80004b64:	00050493          	mv	s1,a0
    80004b68:	00058913          	mv	s2,a1
    80004b6c:	0015879b          	addiw	a5,a1,1
    80004b70:	0007851b          	sext.w	a0,a5
    80004b74:	00f4a023          	sw	a5,0(s1)
    80004b78:	0004a823          	sw	zero,16(s1)
    80004b7c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004b80:	00251513          	slli	a0,a0,0x2
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	940080e7          	jalr	-1728(ra) # 800014c4 <_Z9mem_allocm>
    80004b8c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004b90:	01000513          	li	a0,16
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	3c4080e7          	jalr	964(ra) # 80001f58 <_Znwm>
    80004b9c:	00050993          	mv	s3,a0
    80004ba0:	00000593          	li	a1,0
    80004ba4:	ffffe097          	auipc	ra,0xffffe
    80004ba8:	960080e7          	jalr	-1696(ra) # 80002504 <_ZN9SemaphoreC1Ej>
    80004bac:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004bb0:	01000513          	li	a0,16
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	3a4080e7          	jalr	932(ra) # 80001f58 <_Znwm>
    80004bbc:	00050993          	mv	s3,a0
    80004bc0:	00090593          	mv	a1,s2
    80004bc4:	ffffe097          	auipc	ra,0xffffe
    80004bc8:	940080e7          	jalr	-1728(ra) # 80002504 <_ZN9SemaphoreC1Ej>
    80004bcc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004bd0:	01000513          	li	a0,16
    80004bd4:	ffffd097          	auipc	ra,0xffffd
    80004bd8:	384080e7          	jalr	900(ra) # 80001f58 <_Znwm>
    80004bdc:	00050913          	mv	s2,a0
    80004be0:	00100593          	li	a1,1
    80004be4:	ffffe097          	auipc	ra,0xffffe
    80004be8:	920080e7          	jalr	-1760(ra) # 80002504 <_ZN9SemaphoreC1Ej>
    80004bec:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004bf0:	01000513          	li	a0,16
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	364080e7          	jalr	868(ra) # 80001f58 <_Znwm>
    80004bfc:	00050913          	mv	s2,a0
    80004c00:	00100593          	li	a1,1
    80004c04:	ffffe097          	auipc	ra,0xffffe
    80004c08:	900080e7          	jalr	-1792(ra) # 80002504 <_ZN9SemaphoreC1Ej>
    80004c0c:	0324b823          	sd	s2,48(s1)
}
    80004c10:	02813083          	ld	ra,40(sp)
    80004c14:	02013403          	ld	s0,32(sp)
    80004c18:	01813483          	ld	s1,24(sp)
    80004c1c:	01013903          	ld	s2,16(sp)
    80004c20:	00813983          	ld	s3,8(sp)
    80004c24:	03010113          	addi	sp,sp,48
    80004c28:	00008067          	ret
    80004c2c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004c30:	00098513          	mv	a0,s3
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	374080e7          	jalr	884(ra) # 80001fa8 <_ZdlPv>
    80004c3c:	00048513          	mv	a0,s1
    80004c40:	00006097          	auipc	ra,0x6
    80004c44:	718080e7          	jalr	1816(ra) # 8000b358 <_Unwind_Resume>
    80004c48:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004c4c:	00098513          	mv	a0,s3
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	358080e7          	jalr	856(ra) # 80001fa8 <_ZdlPv>
    80004c58:	00048513          	mv	a0,s1
    80004c5c:	00006097          	auipc	ra,0x6
    80004c60:	6fc080e7          	jalr	1788(ra) # 8000b358 <_Unwind_Resume>
    80004c64:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004c68:	00090513          	mv	a0,s2
    80004c6c:	ffffd097          	auipc	ra,0xffffd
    80004c70:	33c080e7          	jalr	828(ra) # 80001fa8 <_ZdlPv>
    80004c74:	00048513          	mv	a0,s1
    80004c78:	00006097          	auipc	ra,0x6
    80004c7c:	6e0080e7          	jalr	1760(ra) # 8000b358 <_Unwind_Resume>
    80004c80:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004c84:	00090513          	mv	a0,s2
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	320080e7          	jalr	800(ra) # 80001fa8 <_ZdlPv>
    80004c90:	00048513          	mv	a0,s1
    80004c94:	00006097          	auipc	ra,0x6
    80004c98:	6c4080e7          	jalr	1732(ra) # 8000b358 <_Unwind_Resume>

0000000080004c9c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00113c23          	sd	ra,24(sp)
    80004ca4:	00813823          	sd	s0,16(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	01213023          	sd	s2,0(sp)
    80004cb0:	02010413          	addi	s0,sp,32
    80004cb4:	00050493          	mv	s1,a0
    80004cb8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004cbc:	01853503          	ld	a0,24(a0)
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	880080e7          	jalr	-1920(ra) # 80002540 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004cc8:	0304b503          	ld	a0,48(s1)
    80004ccc:	ffffe097          	auipc	ra,0xffffe
    80004cd0:	874080e7          	jalr	-1932(ra) # 80002540 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004cd4:	0084b783          	ld	a5,8(s1)
    80004cd8:	0144a703          	lw	a4,20(s1)
    80004cdc:	00271713          	slli	a4,a4,0x2
    80004ce0:	00e787b3          	add	a5,a5,a4
    80004ce4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004ce8:	0144a783          	lw	a5,20(s1)
    80004cec:	0017879b          	addiw	a5,a5,1
    80004cf0:	0004a703          	lw	a4,0(s1)
    80004cf4:	02e7e7bb          	remw	a5,a5,a4
    80004cf8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004cfc:	0304b503          	ld	a0,48(s1)
    80004d00:	ffffe097          	auipc	ra,0xffffe
    80004d04:	86c080e7          	jalr	-1940(ra) # 8000256c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004d08:	0204b503          	ld	a0,32(s1)
    80004d0c:	ffffe097          	auipc	ra,0xffffe
    80004d10:	860080e7          	jalr	-1952(ra) # 8000256c <_ZN9Semaphore6signalEv>

}
    80004d14:	01813083          	ld	ra,24(sp)
    80004d18:	01013403          	ld	s0,16(sp)
    80004d1c:	00813483          	ld	s1,8(sp)
    80004d20:	00013903          	ld	s2,0(sp)
    80004d24:	02010113          	addi	sp,sp,32
    80004d28:	00008067          	ret

0000000080004d2c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00113c23          	sd	ra,24(sp)
    80004d34:	00813823          	sd	s0,16(sp)
    80004d38:	00913423          	sd	s1,8(sp)
    80004d3c:	01213023          	sd	s2,0(sp)
    80004d40:	02010413          	addi	s0,sp,32
    80004d44:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004d48:	02053503          	ld	a0,32(a0)
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	7f4080e7          	jalr	2036(ra) # 80002540 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004d54:	0284b503          	ld	a0,40(s1)
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	7e8080e7          	jalr	2024(ra) # 80002540 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004d60:	0084b703          	ld	a4,8(s1)
    80004d64:	0104a783          	lw	a5,16(s1)
    80004d68:	00279693          	slli	a3,a5,0x2
    80004d6c:	00d70733          	add	a4,a4,a3
    80004d70:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d74:	0017879b          	addiw	a5,a5,1
    80004d78:	0004a703          	lw	a4,0(s1)
    80004d7c:	02e7e7bb          	remw	a5,a5,a4
    80004d80:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004d84:	0284b503          	ld	a0,40(s1)
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	7e4080e7          	jalr	2020(ra) # 8000256c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004d90:	0184b503          	ld	a0,24(s1)
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	7d8080e7          	jalr	2008(ra) # 8000256c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004d9c:	00090513          	mv	a0,s2
    80004da0:	01813083          	ld	ra,24(sp)
    80004da4:	01013403          	ld	s0,16(sp)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	00013903          	ld	s2,0(sp)
    80004db0:	02010113          	addi	sp,sp,32
    80004db4:	00008067          	ret

0000000080004db8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004db8:	fe010113          	addi	sp,sp,-32
    80004dbc:	00113c23          	sd	ra,24(sp)
    80004dc0:	00813823          	sd	s0,16(sp)
    80004dc4:	00913423          	sd	s1,8(sp)
    80004dc8:	01213023          	sd	s2,0(sp)
    80004dcc:	02010413          	addi	s0,sp,32
    80004dd0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004dd4:	02853503          	ld	a0,40(a0)
    80004dd8:	ffffd097          	auipc	ra,0xffffd
    80004ddc:	768080e7          	jalr	1896(ra) # 80002540 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004de0:	0304b503          	ld	a0,48(s1)
    80004de4:	ffffd097          	auipc	ra,0xffffd
    80004de8:	75c080e7          	jalr	1884(ra) # 80002540 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004dec:	0144a783          	lw	a5,20(s1)
    80004df0:	0104a903          	lw	s2,16(s1)
    80004df4:	0327ce63          	blt	a5,s2,80004e30 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004df8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004dfc:	0304b503          	ld	a0,48(s1)
    80004e00:	ffffd097          	auipc	ra,0xffffd
    80004e04:	76c080e7          	jalr	1900(ra) # 8000256c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004e08:	0284b503          	ld	a0,40(s1)
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	760080e7          	jalr	1888(ra) # 8000256c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004e14:	00090513          	mv	a0,s2
    80004e18:	01813083          	ld	ra,24(sp)
    80004e1c:	01013403          	ld	s0,16(sp)
    80004e20:	00813483          	ld	s1,8(sp)
    80004e24:	00013903          	ld	s2,0(sp)
    80004e28:	02010113          	addi	sp,sp,32
    80004e2c:	00008067          	ret
        ret = cap - head + tail;
    80004e30:	0004a703          	lw	a4,0(s1)
    80004e34:	4127093b          	subw	s2,a4,s2
    80004e38:	00f9093b          	addw	s2,s2,a5
    80004e3c:	fc1ff06f          	j	80004dfc <_ZN9BufferCPP6getCntEv+0x44>

0000000080004e40 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004e40:	fe010113          	addi	sp,sp,-32
    80004e44:	00113c23          	sd	ra,24(sp)
    80004e48:	00813823          	sd	s0,16(sp)
    80004e4c:	00913423          	sd	s1,8(sp)
    80004e50:	02010413          	addi	s0,sp,32
    80004e54:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004e58:	00a00513          	li	a0,10
    80004e5c:	ffffe097          	auipc	ra,0xffffe
    80004e60:	840080e7          	jalr	-1984(ra) # 8000269c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004e64:	00003517          	auipc	a0,0x3
    80004e68:	3d450513          	addi	a0,a0,980 # 80008238 <CONSOLE_STATUS+0x228>
    80004e6c:	00000097          	auipc	ra,0x0
    80004e70:	a0c080e7          	jalr	-1524(ra) # 80004878 <_Z11printStringPKc>
    while (getCnt()) {
    80004e74:	00048513          	mv	a0,s1
    80004e78:	00000097          	auipc	ra,0x0
    80004e7c:	f40080e7          	jalr	-192(ra) # 80004db8 <_ZN9BufferCPP6getCntEv>
    80004e80:	02050c63          	beqz	a0,80004eb8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004e84:	0084b783          	ld	a5,8(s1)
    80004e88:	0104a703          	lw	a4,16(s1)
    80004e8c:	00271713          	slli	a4,a4,0x2
    80004e90:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004e94:	0007c503          	lbu	a0,0(a5)
    80004e98:	ffffe097          	auipc	ra,0xffffe
    80004e9c:	804080e7          	jalr	-2044(ra) # 8000269c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004ea0:	0104a783          	lw	a5,16(s1)
    80004ea4:	0017879b          	addiw	a5,a5,1
    80004ea8:	0004a703          	lw	a4,0(s1)
    80004eac:	02e7e7bb          	remw	a5,a5,a4
    80004eb0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004eb4:	fc1ff06f          	j	80004e74 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004eb8:	02100513          	li	a0,33
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	7e0080e7          	jalr	2016(ra) # 8000269c <_ZN7Console4putcEc>
    Console::putc('\n');
    80004ec4:	00a00513          	li	a0,10
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	7d4080e7          	jalr	2004(ra) # 8000269c <_ZN7Console4putcEc>
    mem_free(buffer);
    80004ed0:	0084b503          	ld	a0,8(s1)
    80004ed4:	ffffc097          	auipc	ra,0xffffc
    80004ed8:	630080e7          	jalr	1584(ra) # 80001504 <_Z8mem_freePv>
    delete itemAvailable;
    80004edc:	0204b503          	ld	a0,32(s1)
    80004ee0:	00050863          	beqz	a0,80004ef0 <_ZN9BufferCPPD1Ev+0xb0>
    80004ee4:	00053783          	ld	a5,0(a0)
    80004ee8:	0087b783          	ld	a5,8(a5)
    80004eec:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004ef0:	0184b503          	ld	a0,24(s1)
    80004ef4:	00050863          	beqz	a0,80004f04 <_ZN9BufferCPPD1Ev+0xc4>
    80004ef8:	00053783          	ld	a5,0(a0)
    80004efc:	0087b783          	ld	a5,8(a5)
    80004f00:	000780e7          	jalr	a5
    delete mutexTail;
    80004f04:	0304b503          	ld	a0,48(s1)
    80004f08:	00050863          	beqz	a0,80004f18 <_ZN9BufferCPPD1Ev+0xd8>
    80004f0c:	00053783          	ld	a5,0(a0)
    80004f10:	0087b783          	ld	a5,8(a5)
    80004f14:	000780e7          	jalr	a5
    delete mutexHead;
    80004f18:	0284b503          	ld	a0,40(s1)
    80004f1c:	00050863          	beqz	a0,80004f2c <_ZN9BufferCPPD1Ev+0xec>
    80004f20:	00053783          	ld	a5,0(a0)
    80004f24:	0087b783          	ld	a5,8(a5)
    80004f28:	000780e7          	jalr	a5
}
    80004f2c:	01813083          	ld	ra,24(sp)
    80004f30:	01013403          	ld	s0,16(sp)
    80004f34:	00813483          	ld	s1,8(sp)
    80004f38:	02010113          	addi	sp,sp,32
    80004f3c:	00008067          	ret

0000000080004f40 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004f40:	fe010113          	addi	sp,sp,-32
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	00813823          	sd	s0,16(sp)
    80004f4c:	00913423          	sd	s1,8(sp)
    80004f50:	01213023          	sd	s2,0(sp)
    80004f54:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004f58:	00003517          	auipc	a0,0x3
    80004f5c:	2f850513          	addi	a0,a0,760 # 80008250 <CONSOLE_STATUS+0x240>
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	918080e7          	jalr	-1768(ra) # 80004878 <_Z11printStringPKc>
    int test = getc() - '0';
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	81c080e7          	jalr	-2020(ra) # 80001784 <_Z4getcv>
    80004f70:	00050913          	mv	s2,a0
    80004f74:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	80c080e7          	jalr	-2036(ra) # 80001784 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80004f80:	fcb9091b          	addiw	s2,s2,-53
    80004f84:	00100793          	li	a5,1
    80004f88:	0327f463          	bgeu	a5,s2,80004fb0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004f8c:	00700793          	li	a5,7
    80004f90:	0e97e263          	bltu	a5,s1,80005074 <_Z8userMainv+0x134>
    80004f94:	00249493          	slli	s1,s1,0x2
    80004f98:	00003717          	auipc	a4,0x3
    80004f9c:	4d070713          	addi	a4,a4,1232 # 80008468 <CONSOLE_STATUS+0x458>
    80004fa0:	00e484b3          	add	s1,s1,a4
    80004fa4:	0004a783          	lw	a5,0(s1)
    80004fa8:	00e787b3          	add	a5,a5,a4
    80004fac:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80004fb0:	00003517          	auipc	a0,0x3
    80004fb4:	2c050513          	addi	a0,a0,704 # 80008270 <CONSOLE_STATUS+0x260>
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	8c0080e7          	jalr	-1856(ra) # 80004878 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004fc0:	01813083          	ld	ra,24(sp)
    80004fc4:	01013403          	ld	s0,16(sp)
    80004fc8:	00813483          	ld	s1,8(sp)
    80004fcc:	00013903          	ld	s2,0(sp)
    80004fd0:	02010113          	addi	sp,sp,32
    80004fd4:	00008067          	ret
            Threads_C_API_test();
    80004fd8:	fffff097          	auipc	ra,0xfffff
    80004fdc:	f18080e7          	jalr	-232(ra) # 80003ef0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004fe0:	00003517          	auipc	a0,0x3
    80004fe4:	2c050513          	addi	a0,a0,704 # 800082a0 <CONSOLE_STATUS+0x290>
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	890080e7          	jalr	-1904(ra) # 80004878 <_Z11printStringPKc>
            break;
    80004ff0:	fd1ff06f          	j	80004fc0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80004ff4:	ffffe097          	auipc	ra,0xffffe
    80004ff8:	560080e7          	jalr	1376(ra) # 80003554 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004ffc:	00003517          	auipc	a0,0x3
    80005000:	2e450513          	addi	a0,a0,740 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80005004:	00000097          	auipc	ra,0x0
    80005008:	874080e7          	jalr	-1932(ra) # 80004878 <_Z11printStringPKc>
            break;
    8000500c:	fb5ff06f          	j	80004fc0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005010:	ffffe097          	auipc	ra,0xffffe
    80005014:	d98080e7          	jalr	-616(ra) # 80002da8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005018:	00003517          	auipc	a0,0x3
    8000501c:	30850513          	addi	a0,a0,776 # 80008320 <CONSOLE_STATUS+0x310>
    80005020:	00000097          	auipc	ra,0x0
    80005024:	858080e7          	jalr	-1960(ra) # 80004878 <_Z11printStringPKc>
            break;
    80005028:	f99ff06f          	j	80004fc0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000502c:	fffff097          	auipc	ra,0xfffff
    80005030:	208080e7          	jalr	520(ra) # 80004234 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005034:	00003517          	auipc	a0,0x3
    80005038:	33c50513          	addi	a0,a0,828 # 80008370 <CONSOLE_STATUS+0x360>
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	83c080e7          	jalr	-1988(ra) # 80004878 <_Z11printStringPKc>
            break;
    80005044:	f7dff06f          	j	80004fc0 <_Z8userMainv+0x80>
            System_Mode_test();
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	52c080e7          	jalr	1324(ra) # 80005574 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005050:	00003517          	auipc	a0,0x3
    80005054:	37850513          	addi	a0,a0,888 # 800083c8 <CONSOLE_STATUS+0x3b8>
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	820080e7          	jalr	-2016(ra) # 80004878 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005060:	00003517          	auipc	a0,0x3
    80005064:	38850513          	addi	a0,a0,904 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005068:	00000097          	auipc	ra,0x0
    8000506c:	810080e7          	jalr	-2032(ra) # 80004878 <_Z11printStringPKc>
            break;
    80005070:	f51ff06f          	j	80004fc0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005074:	00003517          	auipc	a0,0x3
    80005078:	3cc50513          	addi	a0,a0,972 # 80008440 <CONSOLE_STATUS+0x430>
    8000507c:	fffff097          	auipc	ra,0xfffff
    80005080:	7fc080e7          	jalr	2044(ra) # 80004878 <_Z11printStringPKc>
    80005084:	f3dff06f          	j	80004fc0 <_Z8userMainv+0x80>

0000000080005088 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005088:	fe010113          	addi	sp,sp,-32
    8000508c:	00113c23          	sd	ra,24(sp)
    80005090:	00813823          	sd	s0,16(sp)
    80005094:	00913423          	sd	s1,8(sp)
    80005098:	01213023          	sd	s2,0(sp)
    8000509c:	02010413          	addi	s0,sp,32
    800050a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800050a4:	00100793          	li	a5,1
    800050a8:	02a7f863          	bgeu	a5,a0,800050d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800050ac:	00a00793          	li	a5,10
    800050b0:	02f577b3          	remu	a5,a0,a5
    800050b4:	02078e63          	beqz	a5,800050f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800050b8:	fff48513          	addi	a0,s1,-1
    800050bc:	00000097          	auipc	ra,0x0
    800050c0:	fcc080e7          	jalr	-52(ra) # 80005088 <_ZL9fibonaccim>
    800050c4:	00050913          	mv	s2,a0
    800050c8:	ffe48513          	addi	a0,s1,-2
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	fbc080e7          	jalr	-68(ra) # 80005088 <_ZL9fibonaccim>
    800050d4:	00a90533          	add	a0,s2,a0
}
    800050d8:	01813083          	ld	ra,24(sp)
    800050dc:	01013403          	ld	s0,16(sp)
    800050e0:	00813483          	ld	s1,8(sp)
    800050e4:	00013903          	ld	s2,0(sp)
    800050e8:	02010113          	addi	sp,sp,32
    800050ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800050f0:	ffffc097          	auipc	ra,0xffffc
    800050f4:	504080e7          	jalr	1284(ra) # 800015f4 <_Z15thread_dispatchv>
    800050f8:	fc1ff06f          	j	800050b8 <_ZL9fibonaccim+0x30>

00000000800050fc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800050fc:	fe010113          	addi	sp,sp,-32
    80005100:	00113c23          	sd	ra,24(sp)
    80005104:	00813823          	sd	s0,16(sp)
    80005108:	00913423          	sd	s1,8(sp)
    8000510c:	01213023          	sd	s2,0(sp)
    80005110:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005114:	00a00493          	li	s1,10
    80005118:	0400006f          	j	80005158 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000511c:	00003517          	auipc	a0,0x3
    80005120:	08450513          	addi	a0,a0,132 # 800081a0 <CONSOLE_STATUS+0x190>
    80005124:	fffff097          	auipc	ra,0xfffff
    80005128:	754080e7          	jalr	1876(ra) # 80004878 <_Z11printStringPKc>
    8000512c:	00000613          	li	a2,0
    80005130:	00a00593          	li	a1,10
    80005134:	00048513          	mv	a0,s1
    80005138:	00000097          	auipc	ra,0x0
    8000513c:	8f0080e7          	jalr	-1808(ra) # 80004a28 <_Z8printIntiii>
    80005140:	00003517          	auipc	a0,0x3
    80005144:	28050513          	addi	a0,a0,640 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005148:	fffff097          	auipc	ra,0xfffff
    8000514c:	730080e7          	jalr	1840(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005150:	0014849b          	addiw	s1,s1,1
    80005154:	0ff4f493          	andi	s1,s1,255
    80005158:	00c00793          	li	a5,12
    8000515c:	fc97f0e3          	bgeu	a5,s1,8000511c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005160:	00003517          	auipc	a0,0x3
    80005164:	04850513          	addi	a0,a0,72 # 800081a8 <CONSOLE_STATUS+0x198>
    80005168:	fffff097          	auipc	ra,0xfffff
    8000516c:	710080e7          	jalr	1808(ra) # 80004878 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005170:	00500313          	li	t1,5
    thread_dispatch();
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	480080e7          	jalr	1152(ra) # 800015f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000517c:	01000513          	li	a0,16
    80005180:	00000097          	auipc	ra,0x0
    80005184:	f08080e7          	jalr	-248(ra) # 80005088 <_ZL9fibonaccim>
    80005188:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000518c:	00003517          	auipc	a0,0x3
    80005190:	02c50513          	addi	a0,a0,44 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005194:	fffff097          	auipc	ra,0xfffff
    80005198:	6e4080e7          	jalr	1764(ra) # 80004878 <_Z11printStringPKc>
    8000519c:	00000613          	li	a2,0
    800051a0:	00a00593          	li	a1,10
    800051a4:	0009051b          	sext.w	a0,s2
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	880080e7          	jalr	-1920(ra) # 80004a28 <_Z8printIntiii>
    800051b0:	00003517          	auipc	a0,0x3
    800051b4:	21050513          	addi	a0,a0,528 # 800083c0 <CONSOLE_STATUS+0x3b0>
    800051b8:	fffff097          	auipc	ra,0xfffff
    800051bc:	6c0080e7          	jalr	1728(ra) # 80004878 <_Z11printStringPKc>
    800051c0:	0400006f          	j	80005200 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800051c4:	00003517          	auipc	a0,0x3
    800051c8:	fdc50513          	addi	a0,a0,-36 # 800081a0 <CONSOLE_STATUS+0x190>
    800051cc:	fffff097          	auipc	ra,0xfffff
    800051d0:	6ac080e7          	jalr	1708(ra) # 80004878 <_Z11printStringPKc>
    800051d4:	00000613          	li	a2,0
    800051d8:	00a00593          	li	a1,10
    800051dc:	00048513          	mv	a0,s1
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	848080e7          	jalr	-1976(ra) # 80004a28 <_Z8printIntiii>
    800051e8:	00003517          	auipc	a0,0x3
    800051ec:	1d850513          	addi	a0,a0,472 # 800083c0 <CONSOLE_STATUS+0x3b0>
    800051f0:	fffff097          	auipc	ra,0xfffff
    800051f4:	688080e7          	jalr	1672(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800051f8:	0014849b          	addiw	s1,s1,1
    800051fc:	0ff4f493          	andi	s1,s1,255
    80005200:	00f00793          	li	a5,15
    80005204:	fc97f0e3          	bgeu	a5,s1,800051c4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005208:	00003517          	auipc	a0,0x3
    8000520c:	fc050513          	addi	a0,a0,-64 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80005210:	fffff097          	auipc	ra,0xfffff
    80005214:	668080e7          	jalr	1640(ra) # 80004878 <_Z11printStringPKc>
    finishedD = true;
    80005218:	00100793          	li	a5,1
    8000521c:	00005717          	auipc	a4,0x5
    80005220:	06f70623          	sb	a5,108(a4) # 8000a288 <_ZL9finishedD>
    thread_dispatch();
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	3d0080e7          	jalr	976(ra) # 800015f4 <_Z15thread_dispatchv>
}
    8000522c:	01813083          	ld	ra,24(sp)
    80005230:	01013403          	ld	s0,16(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	00013903          	ld	s2,0(sp)
    8000523c:	02010113          	addi	sp,sp,32
    80005240:	00008067          	ret

0000000080005244 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005244:	fe010113          	addi	sp,sp,-32
    80005248:	00113c23          	sd	ra,24(sp)
    8000524c:	00813823          	sd	s0,16(sp)
    80005250:	00913423          	sd	s1,8(sp)
    80005254:	01213023          	sd	s2,0(sp)
    80005258:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000525c:	00000493          	li	s1,0
    80005260:	0400006f          	j	800052a0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005264:	00003517          	auipc	a0,0x3
    80005268:	f0c50513          	addi	a0,a0,-244 # 80008170 <CONSOLE_STATUS+0x160>
    8000526c:	fffff097          	auipc	ra,0xfffff
    80005270:	60c080e7          	jalr	1548(ra) # 80004878 <_Z11printStringPKc>
    80005274:	00000613          	li	a2,0
    80005278:	00a00593          	li	a1,10
    8000527c:	00048513          	mv	a0,s1
    80005280:	fffff097          	auipc	ra,0xfffff
    80005284:	7a8080e7          	jalr	1960(ra) # 80004a28 <_Z8printIntiii>
    80005288:	00003517          	auipc	a0,0x3
    8000528c:	13850513          	addi	a0,a0,312 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005290:	fffff097          	auipc	ra,0xfffff
    80005294:	5e8080e7          	jalr	1512(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005298:	0014849b          	addiw	s1,s1,1
    8000529c:	0ff4f493          	andi	s1,s1,255
    800052a0:	00200793          	li	a5,2
    800052a4:	fc97f0e3          	bgeu	a5,s1,80005264 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800052a8:	00003517          	auipc	a0,0x3
    800052ac:	ed050513          	addi	a0,a0,-304 # 80008178 <CONSOLE_STATUS+0x168>
    800052b0:	fffff097          	auipc	ra,0xfffff
    800052b4:	5c8080e7          	jalr	1480(ra) # 80004878 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800052b8:	00700313          	li	t1,7
    thread_dispatch();
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	338080e7          	jalr	824(ra) # 800015f4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800052c4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800052c8:	00003517          	auipc	a0,0x3
    800052cc:	ec050513          	addi	a0,a0,-320 # 80008188 <CONSOLE_STATUS+0x178>
    800052d0:	fffff097          	auipc	ra,0xfffff
    800052d4:	5a8080e7          	jalr	1448(ra) # 80004878 <_Z11printStringPKc>
    800052d8:	00000613          	li	a2,0
    800052dc:	00a00593          	li	a1,10
    800052e0:	0009051b          	sext.w	a0,s2
    800052e4:	fffff097          	auipc	ra,0xfffff
    800052e8:	744080e7          	jalr	1860(ra) # 80004a28 <_Z8printIntiii>
    800052ec:	00003517          	auipc	a0,0x3
    800052f0:	0d450513          	addi	a0,a0,212 # 800083c0 <CONSOLE_STATUS+0x3b0>
    800052f4:	fffff097          	auipc	ra,0xfffff
    800052f8:	584080e7          	jalr	1412(ra) # 80004878 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800052fc:	00c00513          	li	a0,12
    80005300:	00000097          	auipc	ra,0x0
    80005304:	d88080e7          	jalr	-632(ra) # 80005088 <_ZL9fibonaccim>
    80005308:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000530c:	00003517          	auipc	a0,0x3
    80005310:	e8450513          	addi	a0,a0,-380 # 80008190 <CONSOLE_STATUS+0x180>
    80005314:	fffff097          	auipc	ra,0xfffff
    80005318:	564080e7          	jalr	1380(ra) # 80004878 <_Z11printStringPKc>
    8000531c:	00000613          	li	a2,0
    80005320:	00a00593          	li	a1,10
    80005324:	0009051b          	sext.w	a0,s2
    80005328:	fffff097          	auipc	ra,0xfffff
    8000532c:	700080e7          	jalr	1792(ra) # 80004a28 <_Z8printIntiii>
    80005330:	00003517          	auipc	a0,0x3
    80005334:	09050513          	addi	a0,a0,144 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	540080e7          	jalr	1344(ra) # 80004878 <_Z11printStringPKc>
    80005340:	0400006f          	j	80005380 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005344:	00003517          	auipc	a0,0x3
    80005348:	e2c50513          	addi	a0,a0,-468 # 80008170 <CONSOLE_STATUS+0x160>
    8000534c:	fffff097          	auipc	ra,0xfffff
    80005350:	52c080e7          	jalr	1324(ra) # 80004878 <_Z11printStringPKc>
    80005354:	00000613          	li	a2,0
    80005358:	00a00593          	li	a1,10
    8000535c:	00048513          	mv	a0,s1
    80005360:	fffff097          	auipc	ra,0xfffff
    80005364:	6c8080e7          	jalr	1736(ra) # 80004a28 <_Z8printIntiii>
    80005368:	00003517          	auipc	a0,0x3
    8000536c:	05850513          	addi	a0,a0,88 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005370:	fffff097          	auipc	ra,0xfffff
    80005374:	508080e7          	jalr	1288(ra) # 80004878 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005378:	0014849b          	addiw	s1,s1,1
    8000537c:	0ff4f493          	andi	s1,s1,255
    80005380:	00500793          	li	a5,5
    80005384:	fc97f0e3          	bgeu	a5,s1,80005344 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005388:	00003517          	auipc	a0,0x3
    8000538c:	dc050513          	addi	a0,a0,-576 # 80008148 <CONSOLE_STATUS+0x138>
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	4e8080e7          	jalr	1256(ra) # 80004878 <_Z11printStringPKc>
    finishedC = true;
    80005398:	00100793          	li	a5,1
    8000539c:	00005717          	auipc	a4,0x5
    800053a0:	eef706a3          	sb	a5,-275(a4) # 8000a289 <_ZL9finishedC>
    thread_dispatch();
    800053a4:	ffffc097          	auipc	ra,0xffffc
    800053a8:	250080e7          	jalr	592(ra) # 800015f4 <_Z15thread_dispatchv>
}
    800053ac:	01813083          	ld	ra,24(sp)
    800053b0:	01013403          	ld	s0,16(sp)
    800053b4:	00813483          	ld	s1,8(sp)
    800053b8:	00013903          	ld	s2,0(sp)
    800053bc:	02010113          	addi	sp,sp,32
    800053c0:	00008067          	ret

00000000800053c4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800053c4:	fe010113          	addi	sp,sp,-32
    800053c8:	00113c23          	sd	ra,24(sp)
    800053cc:	00813823          	sd	s0,16(sp)
    800053d0:	00913423          	sd	s1,8(sp)
    800053d4:	01213023          	sd	s2,0(sp)
    800053d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800053dc:	00000913          	li	s2,0
    800053e0:	0400006f          	j	80005420 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800053e4:	ffffc097          	auipc	ra,0xffffc
    800053e8:	210080e7          	jalr	528(ra) # 800015f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800053ec:	00148493          	addi	s1,s1,1
    800053f0:	000027b7          	lui	a5,0x2
    800053f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053f8:	0097ee63          	bltu	a5,s1,80005414 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053fc:	00000713          	li	a4,0
    80005400:	000077b7          	lui	a5,0x7
    80005404:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005408:	fce7eee3          	bltu	a5,a4,800053e4 <_ZL11workerBodyBPv+0x20>
    8000540c:	00170713          	addi	a4,a4,1
    80005410:	ff1ff06f          	j	80005400 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005414:	00a00793          	li	a5,10
    80005418:	04f90663          	beq	s2,a5,80005464 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000541c:	00190913          	addi	s2,s2,1
    80005420:	00f00793          	li	a5,15
    80005424:	0527e463          	bltu	a5,s2,8000546c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005428:	00003517          	auipc	a0,0x3
    8000542c:	d3050513          	addi	a0,a0,-720 # 80008158 <CONSOLE_STATUS+0x148>
    80005430:	fffff097          	auipc	ra,0xfffff
    80005434:	448080e7          	jalr	1096(ra) # 80004878 <_Z11printStringPKc>
    80005438:	00000613          	li	a2,0
    8000543c:	00a00593          	li	a1,10
    80005440:	0009051b          	sext.w	a0,s2
    80005444:	fffff097          	auipc	ra,0xfffff
    80005448:	5e4080e7          	jalr	1508(ra) # 80004a28 <_Z8printIntiii>
    8000544c:	00003517          	auipc	a0,0x3
    80005450:	f7450513          	addi	a0,a0,-140 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	424080e7          	jalr	1060(ra) # 80004878 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000545c:	00000493          	li	s1,0
    80005460:	f91ff06f          	j	800053f0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005464:	14102ff3          	csrr	t6,sepc
    80005468:	fb5ff06f          	j	8000541c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000546c:	00003517          	auipc	a0,0x3
    80005470:	cf450513          	addi	a0,a0,-780 # 80008160 <CONSOLE_STATUS+0x150>
    80005474:	fffff097          	auipc	ra,0xfffff
    80005478:	404080e7          	jalr	1028(ra) # 80004878 <_Z11printStringPKc>
    finishedB = true;
    8000547c:	00100793          	li	a5,1
    80005480:	00005717          	auipc	a4,0x5
    80005484:	e0f70523          	sb	a5,-502(a4) # 8000a28a <_ZL9finishedB>
    thread_dispatch();
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	16c080e7          	jalr	364(ra) # 800015f4 <_Z15thread_dispatchv>
}
    80005490:	01813083          	ld	ra,24(sp)
    80005494:	01013403          	ld	s0,16(sp)
    80005498:	00813483          	ld	s1,8(sp)
    8000549c:	00013903          	ld	s2,0(sp)
    800054a0:	02010113          	addi	sp,sp,32
    800054a4:	00008067          	ret

00000000800054a8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800054a8:	fe010113          	addi	sp,sp,-32
    800054ac:	00113c23          	sd	ra,24(sp)
    800054b0:	00813823          	sd	s0,16(sp)
    800054b4:	00913423          	sd	s1,8(sp)
    800054b8:	01213023          	sd	s2,0(sp)
    800054bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800054c0:	00000913          	li	s2,0
    800054c4:	0380006f          	j	800054fc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	12c080e7          	jalr	300(ra) # 800015f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800054d0:	00148493          	addi	s1,s1,1
    800054d4:	000027b7          	lui	a5,0x2
    800054d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800054dc:	0097ee63          	bltu	a5,s1,800054f8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800054e0:	00000713          	li	a4,0
    800054e4:	000077b7          	lui	a5,0x7
    800054e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800054ec:	fce7eee3          	bltu	a5,a4,800054c8 <_ZL11workerBodyAPv+0x20>
    800054f0:	00170713          	addi	a4,a4,1
    800054f4:	ff1ff06f          	j	800054e4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800054f8:	00190913          	addi	s2,s2,1
    800054fc:	00900793          	li	a5,9
    80005500:	0527e063          	bltu	a5,s2,80005540 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005504:	00003517          	auipc	a0,0x3
    80005508:	c3c50513          	addi	a0,a0,-964 # 80008140 <CONSOLE_STATUS+0x130>
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	36c080e7          	jalr	876(ra) # 80004878 <_Z11printStringPKc>
    80005514:	00000613          	li	a2,0
    80005518:	00a00593          	li	a1,10
    8000551c:	0009051b          	sext.w	a0,s2
    80005520:	fffff097          	auipc	ra,0xfffff
    80005524:	508080e7          	jalr	1288(ra) # 80004a28 <_Z8printIntiii>
    80005528:	00003517          	auipc	a0,0x3
    8000552c:	e9850513          	addi	a0,a0,-360 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005530:	fffff097          	auipc	ra,0xfffff
    80005534:	348080e7          	jalr	840(ra) # 80004878 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005538:	00000493          	li	s1,0
    8000553c:	f99ff06f          	j	800054d4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005540:	00003517          	auipc	a0,0x3
    80005544:	c0850513          	addi	a0,a0,-1016 # 80008148 <CONSOLE_STATUS+0x138>
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	330080e7          	jalr	816(ra) # 80004878 <_Z11printStringPKc>
    finishedA = true;
    80005550:	00100793          	li	a5,1
    80005554:	00005717          	auipc	a4,0x5
    80005558:	d2f70ba3          	sb	a5,-713(a4) # 8000a28b <_ZL9finishedA>
}
    8000555c:	01813083          	ld	ra,24(sp)
    80005560:	01013403          	ld	s0,16(sp)
    80005564:	00813483          	ld	s1,8(sp)
    80005568:	00013903          	ld	s2,0(sp)
    8000556c:	02010113          	addi	sp,sp,32
    80005570:	00008067          	ret

0000000080005574 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005574:	fd010113          	addi	sp,sp,-48
    80005578:	02113423          	sd	ra,40(sp)
    8000557c:	02813023          	sd	s0,32(sp)
    80005580:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005584:	00000613          	li	a2,0
    80005588:	00000597          	auipc	a1,0x0
    8000558c:	f2058593          	addi	a1,a1,-224 # 800054a8 <_ZL11workerBodyAPv>
    80005590:	fd040513          	addi	a0,s0,-48
    80005594:	ffffc097          	auipc	ra,0xffffc
    80005598:	fc0080e7          	jalr	-64(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000559c:	00003517          	auipc	a0,0x3
    800055a0:	c3c50513          	addi	a0,a0,-964 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800055a4:	fffff097          	auipc	ra,0xfffff
    800055a8:	2d4080e7          	jalr	724(ra) # 80004878 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800055ac:	00000613          	li	a2,0
    800055b0:	00000597          	auipc	a1,0x0
    800055b4:	e1458593          	addi	a1,a1,-492 # 800053c4 <_ZL11workerBodyBPv>
    800055b8:	fd840513          	addi	a0,s0,-40
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	f98080e7          	jalr	-104(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800055c4:	00003517          	auipc	a0,0x3
    800055c8:	c2c50513          	addi	a0,a0,-980 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800055cc:	fffff097          	auipc	ra,0xfffff
    800055d0:	2ac080e7          	jalr	684(ra) # 80004878 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800055d4:	00000613          	li	a2,0
    800055d8:	00000597          	auipc	a1,0x0
    800055dc:	c6c58593          	addi	a1,a1,-916 # 80005244 <_ZL11workerBodyCPv>
    800055e0:	fe040513          	addi	a0,s0,-32
    800055e4:	ffffc097          	auipc	ra,0xffffc
    800055e8:	f70080e7          	jalr	-144(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800055ec:	00003517          	auipc	a0,0x3
    800055f0:	c1c50513          	addi	a0,a0,-996 # 80008208 <CONSOLE_STATUS+0x1f8>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	284080e7          	jalr	644(ra) # 80004878 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800055fc:	00000613          	li	a2,0
    80005600:	00000597          	auipc	a1,0x0
    80005604:	afc58593          	addi	a1,a1,-1284 # 800050fc <_ZL11workerBodyDPv>
    80005608:	fe840513          	addi	a0,s0,-24
    8000560c:	ffffc097          	auipc	ra,0xffffc
    80005610:	f48080e7          	jalr	-184(ra) # 80001554 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005614:	00003517          	auipc	a0,0x3
    80005618:	c0c50513          	addi	a0,a0,-1012 # 80008220 <CONSOLE_STATUS+0x210>
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	25c080e7          	jalr	604(ra) # 80004878 <_Z11printStringPKc>
    80005624:	00c0006f          	j	80005630 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005628:	ffffc097          	auipc	ra,0xffffc
    8000562c:	fcc080e7          	jalr	-52(ra) # 800015f4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005630:	00005797          	auipc	a5,0x5
    80005634:	c5b7c783          	lbu	a5,-933(a5) # 8000a28b <_ZL9finishedA>
    80005638:	fe0788e3          	beqz	a5,80005628 <_Z16System_Mode_testv+0xb4>
    8000563c:	00005797          	auipc	a5,0x5
    80005640:	c4e7c783          	lbu	a5,-946(a5) # 8000a28a <_ZL9finishedB>
    80005644:	fe0782e3          	beqz	a5,80005628 <_Z16System_Mode_testv+0xb4>
    80005648:	00005797          	auipc	a5,0x5
    8000564c:	c417c783          	lbu	a5,-959(a5) # 8000a289 <_ZL9finishedC>
    80005650:	fc078ce3          	beqz	a5,80005628 <_Z16System_Mode_testv+0xb4>
    80005654:	00005797          	auipc	a5,0x5
    80005658:	c347c783          	lbu	a5,-972(a5) # 8000a288 <_ZL9finishedD>
    8000565c:	fc0786e3          	beqz	a5,80005628 <_Z16System_Mode_testv+0xb4>
    }

}
    80005660:	02813083          	ld	ra,40(sp)
    80005664:	02013403          	ld	s0,32(sp)
    80005668:	03010113          	addi	sp,sp,48
    8000566c:	00008067          	ret

0000000080005670 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005670:	fe010113          	addi	sp,sp,-32
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00813823          	sd	s0,16(sp)
    8000567c:	00913423          	sd	s1,8(sp)
    80005680:	01213023          	sd	s2,0(sp)
    80005684:	02010413          	addi	s0,sp,32
    80005688:	00050493          	mv	s1,a0
    8000568c:	00058913          	mv	s2,a1
    80005690:	0015879b          	addiw	a5,a1,1
    80005694:	0007851b          	sext.w	a0,a5
    80005698:	00f4a023          	sw	a5,0(s1)
    8000569c:	0004a823          	sw	zero,16(s1)
    800056a0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800056a4:	00251513          	slli	a0,a0,0x2
    800056a8:	ffffc097          	auipc	ra,0xffffc
    800056ac:	e1c080e7          	jalr	-484(ra) # 800014c4 <_Z9mem_allocm>
    800056b0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800056b4:	00000593          	li	a1,0
    800056b8:	02048513          	addi	a0,s1,32
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	f84080e7          	jalr	-124(ra) # 80001640 <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    800056c4:	00090593          	mv	a1,s2
    800056c8:	01848513          	addi	a0,s1,24
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	f74080e7          	jalr	-140(ra) # 80001640 <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    800056d4:	00100593          	li	a1,1
    800056d8:	02848513          	addi	a0,s1,40
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	f64080e7          	jalr	-156(ra) # 80001640 <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    800056e4:	00100593          	li	a1,1
    800056e8:	03048513          	addi	a0,s1,48
    800056ec:	ffffc097          	auipc	ra,0xffffc
    800056f0:	f54080e7          	jalr	-172(ra) # 80001640 <_Z8sem_openPP3SEMj>
}
    800056f4:	01813083          	ld	ra,24(sp)
    800056f8:	01013403          	ld	s0,16(sp)
    800056fc:	00813483          	ld	s1,8(sp)
    80005700:	00013903          	ld	s2,0(sp)
    80005704:	02010113          	addi	sp,sp,32
    80005708:	00008067          	ret

000000008000570c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000570c:	fe010113          	addi	sp,sp,-32
    80005710:	00113c23          	sd	ra,24(sp)
    80005714:	00813823          	sd	s0,16(sp)
    80005718:	00913423          	sd	s1,8(sp)
    8000571c:	01213023          	sd	s2,0(sp)
    80005720:	02010413          	addi	s0,sp,32
    80005724:	00050493          	mv	s1,a0
    80005728:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000572c:	01853503          	ld	a0,24(a0)
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	fb4080e7          	jalr	-76(ra) # 800016e4 <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    80005738:	0304b503          	ld	a0,48(s1)
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	fa8080e7          	jalr	-88(ra) # 800016e4 <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    80005744:	0084b783          	ld	a5,8(s1)
    80005748:	0144a703          	lw	a4,20(s1)
    8000574c:	00271713          	slli	a4,a4,0x2
    80005750:	00e787b3          	add	a5,a5,a4
    80005754:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005758:	0144a783          	lw	a5,20(s1)
    8000575c:	0017879b          	addiw	a5,a5,1
    80005760:	0004a703          	lw	a4,0(s1)
    80005764:	02e7e7bb          	remw	a5,a5,a4
    80005768:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000576c:	0304b503          	ld	a0,48(s1)
    80005770:	ffffc097          	auipc	ra,0xffffc
    80005774:	fc4080e7          	jalr	-60(ra) # 80001734 <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    80005778:	0204b503          	ld	a0,32(s1)
    8000577c:	ffffc097          	auipc	ra,0xffffc
    80005780:	fb8080e7          	jalr	-72(ra) # 80001734 <_Z10sem_signalP3SEM>

}
    80005784:	01813083          	ld	ra,24(sp)
    80005788:	01013403          	ld	s0,16(sp)
    8000578c:	00813483          	ld	s1,8(sp)
    80005790:	00013903          	ld	s2,0(sp)
    80005794:	02010113          	addi	sp,sp,32
    80005798:	00008067          	ret

000000008000579c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000579c:	fe010113          	addi	sp,sp,-32
    800057a0:	00113c23          	sd	ra,24(sp)
    800057a4:	00813823          	sd	s0,16(sp)
    800057a8:	00913423          	sd	s1,8(sp)
    800057ac:	01213023          	sd	s2,0(sp)
    800057b0:	02010413          	addi	s0,sp,32
    800057b4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800057b8:	02053503          	ld	a0,32(a0)
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	f28080e7          	jalr	-216(ra) # 800016e4 <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    800057c4:	0284b503          	ld	a0,40(s1)
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	f1c080e7          	jalr	-228(ra) # 800016e4 <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    800057d0:	0084b703          	ld	a4,8(s1)
    800057d4:	0104a783          	lw	a5,16(s1)
    800057d8:	00279693          	slli	a3,a5,0x2
    800057dc:	00d70733          	add	a4,a4,a3
    800057e0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800057e4:	0017879b          	addiw	a5,a5,1
    800057e8:	0004a703          	lw	a4,0(s1)
    800057ec:	02e7e7bb          	remw	a5,a5,a4
    800057f0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800057f4:	0284b503          	ld	a0,40(s1)
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	f3c080e7          	jalr	-196(ra) # 80001734 <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    80005800:	0184b503          	ld	a0,24(s1)
    80005804:	ffffc097          	auipc	ra,0xffffc
    80005808:	f30080e7          	jalr	-208(ra) # 80001734 <_Z10sem_signalP3SEM>

    return ret;
}
    8000580c:	00090513          	mv	a0,s2
    80005810:	01813083          	ld	ra,24(sp)
    80005814:	01013403          	ld	s0,16(sp)
    80005818:	00813483          	ld	s1,8(sp)
    8000581c:	00013903          	ld	s2,0(sp)
    80005820:	02010113          	addi	sp,sp,32
    80005824:	00008067          	ret

0000000080005828 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005828:	fe010113          	addi	sp,sp,-32
    8000582c:	00113c23          	sd	ra,24(sp)
    80005830:	00813823          	sd	s0,16(sp)
    80005834:	00913423          	sd	s1,8(sp)
    80005838:	01213023          	sd	s2,0(sp)
    8000583c:	02010413          	addi	s0,sp,32
    80005840:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005844:	02853503          	ld	a0,40(a0)
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	e9c080e7          	jalr	-356(ra) # 800016e4 <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    80005850:	0304b503          	ld	a0,48(s1)
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	e90080e7          	jalr	-368(ra) # 800016e4 <_Z8sem_waitP3SEM>

    if (tail >= head) {
    8000585c:	0144a783          	lw	a5,20(s1)
    80005860:	0104a903          	lw	s2,16(s1)
    80005864:	0327ce63          	blt	a5,s2,800058a0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005868:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000586c:	0304b503          	ld	a0,48(s1)
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	ec4080e7          	jalr	-316(ra) # 80001734 <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    80005878:	0284b503          	ld	a0,40(s1)
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	eb8080e7          	jalr	-328(ra) # 80001734 <_Z10sem_signalP3SEM>

    return ret;
}
    80005884:	00090513          	mv	a0,s2
    80005888:	01813083          	ld	ra,24(sp)
    8000588c:	01013403          	ld	s0,16(sp)
    80005890:	00813483          	ld	s1,8(sp)
    80005894:	00013903          	ld	s2,0(sp)
    80005898:	02010113          	addi	sp,sp,32
    8000589c:	00008067          	ret
        ret = cap - head + tail;
    800058a0:	0004a703          	lw	a4,0(s1)
    800058a4:	4127093b          	subw	s2,a4,s2
    800058a8:	00f9093b          	addw	s2,s2,a5
    800058ac:	fc1ff06f          	j	8000586c <_ZN6Buffer6getCntEv+0x44>

00000000800058b0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800058b0:	fe010113          	addi	sp,sp,-32
    800058b4:	00113c23          	sd	ra,24(sp)
    800058b8:	00813823          	sd	s0,16(sp)
    800058bc:	00913423          	sd	s1,8(sp)
    800058c0:	02010413          	addi	s0,sp,32
    800058c4:	00050493          	mv	s1,a0
    putc('\n');
    800058c8:	00a00513          	li	a0,10
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	eec080e7          	jalr	-276(ra) # 800017b8 <_Z4putcc>
    printString("Buffer deleted!\n");
    800058d4:	00003517          	auipc	a0,0x3
    800058d8:	96450513          	addi	a0,a0,-1692 # 80008238 <CONSOLE_STATUS+0x228>
    800058dc:	fffff097          	auipc	ra,0xfffff
    800058e0:	f9c080e7          	jalr	-100(ra) # 80004878 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800058e4:	00048513          	mv	a0,s1
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	f40080e7          	jalr	-192(ra) # 80005828 <_ZN6Buffer6getCntEv>
    800058f0:	02a05c63          	blez	a0,80005928 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800058f4:	0084b783          	ld	a5,8(s1)
    800058f8:	0104a703          	lw	a4,16(s1)
    800058fc:	00271713          	slli	a4,a4,0x2
    80005900:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005904:	0007c503          	lbu	a0,0(a5)
    80005908:	ffffc097          	auipc	ra,0xffffc
    8000590c:	eb0080e7          	jalr	-336(ra) # 800017b8 <_Z4putcc>
        head = (head + 1) % cap;
    80005910:	0104a783          	lw	a5,16(s1)
    80005914:	0017879b          	addiw	a5,a5,1
    80005918:	0004a703          	lw	a4,0(s1)
    8000591c:	02e7e7bb          	remw	a5,a5,a4
    80005920:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005924:	fc1ff06f          	j	800058e4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005928:	02100513          	li	a0,33
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	e8c080e7          	jalr	-372(ra) # 800017b8 <_Z4putcc>
    putc('\n');
    80005934:	00a00513          	li	a0,10
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	e80080e7          	jalr	-384(ra) # 800017b8 <_Z4putcc>
    mem_free(buffer);
    80005940:	0084b503          	ld	a0,8(s1)
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	bc0080e7          	jalr	-1088(ra) # 80001504 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000594c:	0204b503          	ld	a0,32(s1)
    80005950:	ffffc097          	auipc	ra,0xffffc
    80005954:	d44080e7          	jalr	-700(ra) # 80001694 <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    80005958:	0184b503          	ld	a0,24(s1)
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	d38080e7          	jalr	-712(ra) # 80001694 <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    80005964:	0304b503          	ld	a0,48(s1)
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	d2c080e7          	jalr	-724(ra) # 80001694 <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    80005970:	0284b503          	ld	a0,40(s1)
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	d20080e7          	jalr	-736(ra) # 80001694 <_Z9sem_closeP3SEM>
}
    8000597c:	01813083          	ld	ra,24(sp)
    80005980:	01013403          	ld	s0,16(sp)
    80005984:	00813483          	ld	s1,8(sp)
    80005988:	02010113          	addi	sp,sp,32
    8000598c:	00008067          	ret

0000000080005990 <start>:
    80005990:	ff010113          	addi	sp,sp,-16
    80005994:	00813423          	sd	s0,8(sp)
    80005998:	01010413          	addi	s0,sp,16
    8000599c:	300027f3          	csrr	a5,mstatus
    800059a0:	ffffe737          	lui	a4,0xffffe
    800059a4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff330f>
    800059a8:	00e7f7b3          	and	a5,a5,a4
    800059ac:	00001737          	lui	a4,0x1
    800059b0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800059b4:	00e7e7b3          	or	a5,a5,a4
    800059b8:	30079073          	csrw	mstatus,a5
    800059bc:	00000797          	auipc	a5,0x0
    800059c0:	16078793          	addi	a5,a5,352 # 80005b1c <system_main>
    800059c4:	34179073          	csrw	mepc,a5
    800059c8:	00000793          	li	a5,0
    800059cc:	18079073          	csrw	satp,a5
    800059d0:	000107b7          	lui	a5,0x10
    800059d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800059d8:	30279073          	csrw	medeleg,a5
    800059dc:	30379073          	csrw	mideleg,a5
    800059e0:	104027f3          	csrr	a5,sie
    800059e4:	2227e793          	ori	a5,a5,546
    800059e8:	10479073          	csrw	sie,a5
    800059ec:	fff00793          	li	a5,-1
    800059f0:	00a7d793          	srli	a5,a5,0xa
    800059f4:	3b079073          	csrw	pmpaddr0,a5
    800059f8:	00f00793          	li	a5,15
    800059fc:	3a079073          	csrw	pmpcfg0,a5
    80005a00:	f14027f3          	csrr	a5,mhartid
    80005a04:	0200c737          	lui	a4,0x200c
    80005a08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005a0c:	0007869b          	sext.w	a3,a5
    80005a10:	00269713          	slli	a4,a3,0x2
    80005a14:	000f4637          	lui	a2,0xf4
    80005a18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a1c:	00d70733          	add	a4,a4,a3
    80005a20:	0037979b          	slliw	a5,a5,0x3
    80005a24:	020046b7          	lui	a3,0x2004
    80005a28:	00d787b3          	add	a5,a5,a3
    80005a2c:	00c585b3          	add	a1,a1,a2
    80005a30:	00371693          	slli	a3,a4,0x3
    80005a34:	00005717          	auipc	a4,0x5
    80005a38:	85c70713          	addi	a4,a4,-1956 # 8000a290 <timer_scratch>
    80005a3c:	00b7b023          	sd	a1,0(a5)
    80005a40:	00d70733          	add	a4,a4,a3
    80005a44:	00f73c23          	sd	a5,24(a4)
    80005a48:	02c73023          	sd	a2,32(a4)
    80005a4c:	34071073          	csrw	mscratch,a4
    80005a50:	00000797          	auipc	a5,0x0
    80005a54:	6e078793          	addi	a5,a5,1760 # 80006130 <timervec>
    80005a58:	30579073          	csrw	mtvec,a5
    80005a5c:	300027f3          	csrr	a5,mstatus
    80005a60:	0087e793          	ori	a5,a5,8
    80005a64:	30079073          	csrw	mstatus,a5
    80005a68:	304027f3          	csrr	a5,mie
    80005a6c:	0807e793          	ori	a5,a5,128
    80005a70:	30479073          	csrw	mie,a5
    80005a74:	f14027f3          	csrr	a5,mhartid
    80005a78:	0007879b          	sext.w	a5,a5
    80005a7c:	00078213          	mv	tp,a5
    80005a80:	30200073          	mret
    80005a84:	00813403          	ld	s0,8(sp)
    80005a88:	01010113          	addi	sp,sp,16
    80005a8c:	00008067          	ret

0000000080005a90 <timerinit>:
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00813423          	sd	s0,8(sp)
    80005a98:	01010413          	addi	s0,sp,16
    80005a9c:	f14027f3          	csrr	a5,mhartid
    80005aa0:	0200c737          	lui	a4,0x200c
    80005aa4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005aa8:	0007869b          	sext.w	a3,a5
    80005aac:	00269713          	slli	a4,a3,0x2
    80005ab0:	000f4637          	lui	a2,0xf4
    80005ab4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005ab8:	00d70733          	add	a4,a4,a3
    80005abc:	0037979b          	slliw	a5,a5,0x3
    80005ac0:	020046b7          	lui	a3,0x2004
    80005ac4:	00d787b3          	add	a5,a5,a3
    80005ac8:	00c585b3          	add	a1,a1,a2
    80005acc:	00371693          	slli	a3,a4,0x3
    80005ad0:	00004717          	auipc	a4,0x4
    80005ad4:	7c070713          	addi	a4,a4,1984 # 8000a290 <timer_scratch>
    80005ad8:	00b7b023          	sd	a1,0(a5)
    80005adc:	00d70733          	add	a4,a4,a3
    80005ae0:	00f73c23          	sd	a5,24(a4)
    80005ae4:	02c73023          	sd	a2,32(a4)
    80005ae8:	34071073          	csrw	mscratch,a4
    80005aec:	00000797          	auipc	a5,0x0
    80005af0:	64478793          	addi	a5,a5,1604 # 80006130 <timervec>
    80005af4:	30579073          	csrw	mtvec,a5
    80005af8:	300027f3          	csrr	a5,mstatus
    80005afc:	0087e793          	ori	a5,a5,8
    80005b00:	30079073          	csrw	mstatus,a5
    80005b04:	304027f3          	csrr	a5,mie
    80005b08:	0807e793          	ori	a5,a5,128
    80005b0c:	30479073          	csrw	mie,a5
    80005b10:	00813403          	ld	s0,8(sp)
    80005b14:	01010113          	addi	sp,sp,16
    80005b18:	00008067          	ret

0000000080005b1c <system_main>:
    80005b1c:	fe010113          	addi	sp,sp,-32
    80005b20:	00813823          	sd	s0,16(sp)
    80005b24:	00913423          	sd	s1,8(sp)
    80005b28:	00113c23          	sd	ra,24(sp)
    80005b2c:	02010413          	addi	s0,sp,32
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	0c4080e7          	jalr	196(ra) # 80005bf4 <cpuid>
    80005b38:	00004497          	auipc	s1,0x4
    80005b3c:	6b848493          	addi	s1,s1,1720 # 8000a1f0 <started>
    80005b40:	02050263          	beqz	a0,80005b64 <system_main+0x48>
    80005b44:	0004a783          	lw	a5,0(s1)
    80005b48:	0007879b          	sext.w	a5,a5
    80005b4c:	fe078ce3          	beqz	a5,80005b44 <system_main+0x28>
    80005b50:	0ff0000f          	fence
    80005b54:	00003517          	auipc	a0,0x3
    80005b58:	96450513          	addi	a0,a0,-1692 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80005b5c:	00001097          	auipc	ra,0x1
    80005b60:	a70080e7          	jalr	-1424(ra) # 800065cc <panic>
    80005b64:	00001097          	auipc	ra,0x1
    80005b68:	9c4080e7          	jalr	-1596(ra) # 80006528 <consoleinit>
    80005b6c:	00001097          	auipc	ra,0x1
    80005b70:	150080e7          	jalr	336(ra) # 80006cbc <printfinit>
    80005b74:	00003517          	auipc	a0,0x3
    80005b78:	84c50513          	addi	a0,a0,-1972 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005b7c:	00001097          	auipc	ra,0x1
    80005b80:	aac080e7          	jalr	-1364(ra) # 80006628 <__printf>
    80005b84:	00003517          	auipc	a0,0x3
    80005b88:	90450513          	addi	a0,a0,-1788 # 80008488 <CONSOLE_STATUS+0x478>
    80005b8c:	00001097          	auipc	ra,0x1
    80005b90:	a9c080e7          	jalr	-1380(ra) # 80006628 <__printf>
    80005b94:	00003517          	auipc	a0,0x3
    80005b98:	82c50513          	addi	a0,a0,-2004 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005b9c:	00001097          	auipc	ra,0x1
    80005ba0:	a8c080e7          	jalr	-1396(ra) # 80006628 <__printf>
    80005ba4:	00001097          	auipc	ra,0x1
    80005ba8:	4a4080e7          	jalr	1188(ra) # 80007048 <kinit>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	148080e7          	jalr	328(ra) # 80005cf4 <trapinit>
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	16c080e7          	jalr	364(ra) # 80005d20 <trapinithart>
    80005bbc:	00000097          	auipc	ra,0x0
    80005bc0:	5b4080e7          	jalr	1460(ra) # 80006170 <plicinit>
    80005bc4:	00000097          	auipc	ra,0x0
    80005bc8:	5d4080e7          	jalr	1492(ra) # 80006198 <plicinithart>
    80005bcc:	00000097          	auipc	ra,0x0
    80005bd0:	078080e7          	jalr	120(ra) # 80005c44 <userinit>
    80005bd4:	0ff0000f          	fence
    80005bd8:	00100793          	li	a5,1
    80005bdc:	00003517          	auipc	a0,0x3
    80005be0:	8c450513          	addi	a0,a0,-1852 # 800084a0 <CONSOLE_STATUS+0x490>
    80005be4:	00f4a023          	sw	a5,0(s1)
    80005be8:	00001097          	auipc	ra,0x1
    80005bec:	a40080e7          	jalr	-1472(ra) # 80006628 <__printf>
    80005bf0:	0000006f          	j	80005bf0 <system_main+0xd4>

0000000080005bf4 <cpuid>:
    80005bf4:	ff010113          	addi	sp,sp,-16
    80005bf8:	00813423          	sd	s0,8(sp)
    80005bfc:	01010413          	addi	s0,sp,16
    80005c00:	00020513          	mv	a0,tp
    80005c04:	00813403          	ld	s0,8(sp)
    80005c08:	0005051b          	sext.w	a0,a0
    80005c0c:	01010113          	addi	sp,sp,16
    80005c10:	00008067          	ret

0000000080005c14 <mycpu>:
    80005c14:	ff010113          	addi	sp,sp,-16
    80005c18:	00813423          	sd	s0,8(sp)
    80005c1c:	01010413          	addi	s0,sp,16
    80005c20:	00020793          	mv	a5,tp
    80005c24:	00813403          	ld	s0,8(sp)
    80005c28:	0007879b          	sext.w	a5,a5
    80005c2c:	00779793          	slli	a5,a5,0x7
    80005c30:	00005517          	auipc	a0,0x5
    80005c34:	69050513          	addi	a0,a0,1680 # 8000b2c0 <cpus>
    80005c38:	00f50533          	add	a0,a0,a5
    80005c3c:	01010113          	addi	sp,sp,16
    80005c40:	00008067          	ret

0000000080005c44 <userinit>:
    80005c44:	ff010113          	addi	sp,sp,-16
    80005c48:	00813423          	sd	s0,8(sp)
    80005c4c:	01010413          	addi	s0,sp,16
    80005c50:	00813403          	ld	s0,8(sp)
    80005c54:	01010113          	addi	sp,sp,16
    80005c58:	ffffc317          	auipc	t1,0xffffc
    80005c5c:	e7c30067          	jr	-388(t1) # 80001ad4 <main>

0000000080005c60 <either_copyout>:
    80005c60:	ff010113          	addi	sp,sp,-16
    80005c64:	00813023          	sd	s0,0(sp)
    80005c68:	00113423          	sd	ra,8(sp)
    80005c6c:	01010413          	addi	s0,sp,16
    80005c70:	02051663          	bnez	a0,80005c9c <either_copyout+0x3c>
    80005c74:	00058513          	mv	a0,a1
    80005c78:	00060593          	mv	a1,a2
    80005c7c:	0006861b          	sext.w	a2,a3
    80005c80:	00002097          	auipc	ra,0x2
    80005c84:	c54080e7          	jalr	-940(ra) # 800078d4 <__memmove>
    80005c88:	00813083          	ld	ra,8(sp)
    80005c8c:	00013403          	ld	s0,0(sp)
    80005c90:	00000513          	li	a0,0
    80005c94:	01010113          	addi	sp,sp,16
    80005c98:	00008067          	ret
    80005c9c:	00003517          	auipc	a0,0x3
    80005ca0:	84450513          	addi	a0,a0,-1980 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005ca4:	00001097          	auipc	ra,0x1
    80005ca8:	928080e7          	jalr	-1752(ra) # 800065cc <panic>

0000000080005cac <either_copyin>:
    80005cac:	ff010113          	addi	sp,sp,-16
    80005cb0:	00813023          	sd	s0,0(sp)
    80005cb4:	00113423          	sd	ra,8(sp)
    80005cb8:	01010413          	addi	s0,sp,16
    80005cbc:	02059463          	bnez	a1,80005ce4 <either_copyin+0x38>
    80005cc0:	00060593          	mv	a1,a2
    80005cc4:	0006861b          	sext.w	a2,a3
    80005cc8:	00002097          	auipc	ra,0x2
    80005ccc:	c0c080e7          	jalr	-1012(ra) # 800078d4 <__memmove>
    80005cd0:	00813083          	ld	ra,8(sp)
    80005cd4:	00013403          	ld	s0,0(sp)
    80005cd8:	00000513          	li	a0,0
    80005cdc:	01010113          	addi	sp,sp,16
    80005ce0:	00008067          	ret
    80005ce4:	00003517          	auipc	a0,0x3
    80005ce8:	82450513          	addi	a0,a0,-2012 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005cec:	00001097          	auipc	ra,0x1
    80005cf0:	8e0080e7          	jalr	-1824(ra) # 800065cc <panic>

0000000080005cf4 <trapinit>:
    80005cf4:	ff010113          	addi	sp,sp,-16
    80005cf8:	00813423          	sd	s0,8(sp)
    80005cfc:	01010413          	addi	s0,sp,16
    80005d00:	00813403          	ld	s0,8(sp)
    80005d04:	00003597          	auipc	a1,0x3
    80005d08:	82c58593          	addi	a1,a1,-2004 # 80008530 <CONSOLE_STATUS+0x520>
    80005d0c:	00005517          	auipc	a0,0x5
    80005d10:	63450513          	addi	a0,a0,1588 # 8000b340 <tickslock>
    80005d14:	01010113          	addi	sp,sp,16
    80005d18:	00001317          	auipc	t1,0x1
    80005d1c:	5c030067          	jr	1472(t1) # 800072d8 <initlock>

0000000080005d20 <trapinithart>:
    80005d20:	ff010113          	addi	sp,sp,-16
    80005d24:	00813423          	sd	s0,8(sp)
    80005d28:	01010413          	addi	s0,sp,16
    80005d2c:	00000797          	auipc	a5,0x0
    80005d30:	2f478793          	addi	a5,a5,756 # 80006020 <kernelvec>
    80005d34:	10579073          	csrw	stvec,a5
    80005d38:	00813403          	ld	s0,8(sp)
    80005d3c:	01010113          	addi	sp,sp,16
    80005d40:	00008067          	ret

0000000080005d44 <usertrap>:
    80005d44:	ff010113          	addi	sp,sp,-16
    80005d48:	00813423          	sd	s0,8(sp)
    80005d4c:	01010413          	addi	s0,sp,16
    80005d50:	00813403          	ld	s0,8(sp)
    80005d54:	01010113          	addi	sp,sp,16
    80005d58:	00008067          	ret

0000000080005d5c <usertrapret>:
    80005d5c:	ff010113          	addi	sp,sp,-16
    80005d60:	00813423          	sd	s0,8(sp)
    80005d64:	01010413          	addi	s0,sp,16
    80005d68:	00813403          	ld	s0,8(sp)
    80005d6c:	01010113          	addi	sp,sp,16
    80005d70:	00008067          	ret

0000000080005d74 <kerneltrap>:
    80005d74:	fe010113          	addi	sp,sp,-32
    80005d78:	00813823          	sd	s0,16(sp)
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00913423          	sd	s1,8(sp)
    80005d84:	02010413          	addi	s0,sp,32
    80005d88:	142025f3          	csrr	a1,scause
    80005d8c:	100027f3          	csrr	a5,sstatus
    80005d90:	0027f793          	andi	a5,a5,2
    80005d94:	10079c63          	bnez	a5,80005eac <kerneltrap+0x138>
    80005d98:	142027f3          	csrr	a5,scause
    80005d9c:	0207ce63          	bltz	a5,80005dd8 <kerneltrap+0x64>
    80005da0:	00002517          	auipc	a0,0x2
    80005da4:	7d850513          	addi	a0,a0,2008 # 80008578 <CONSOLE_STATUS+0x568>
    80005da8:	00001097          	auipc	ra,0x1
    80005dac:	880080e7          	jalr	-1920(ra) # 80006628 <__printf>
    80005db0:	141025f3          	csrr	a1,sepc
    80005db4:	14302673          	csrr	a2,stval
    80005db8:	00002517          	auipc	a0,0x2
    80005dbc:	7d050513          	addi	a0,a0,2000 # 80008588 <CONSOLE_STATUS+0x578>
    80005dc0:	00001097          	auipc	ra,0x1
    80005dc4:	868080e7          	jalr	-1944(ra) # 80006628 <__printf>
    80005dc8:	00002517          	auipc	a0,0x2
    80005dcc:	7d850513          	addi	a0,a0,2008 # 800085a0 <CONSOLE_STATUS+0x590>
    80005dd0:	00000097          	auipc	ra,0x0
    80005dd4:	7fc080e7          	jalr	2044(ra) # 800065cc <panic>
    80005dd8:	0ff7f713          	andi	a4,a5,255
    80005ddc:	00900693          	li	a3,9
    80005de0:	04d70063          	beq	a4,a3,80005e20 <kerneltrap+0xac>
    80005de4:	fff00713          	li	a4,-1
    80005de8:	03f71713          	slli	a4,a4,0x3f
    80005dec:	00170713          	addi	a4,a4,1
    80005df0:	fae798e3          	bne	a5,a4,80005da0 <kerneltrap+0x2c>
    80005df4:	00000097          	auipc	ra,0x0
    80005df8:	e00080e7          	jalr	-512(ra) # 80005bf4 <cpuid>
    80005dfc:	06050663          	beqz	a0,80005e68 <kerneltrap+0xf4>
    80005e00:	144027f3          	csrr	a5,sip
    80005e04:	ffd7f793          	andi	a5,a5,-3
    80005e08:	14479073          	csrw	sip,a5
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	02010113          	addi	sp,sp,32
    80005e1c:	00008067          	ret
    80005e20:	00000097          	auipc	ra,0x0
    80005e24:	3c4080e7          	jalr	964(ra) # 800061e4 <plic_claim>
    80005e28:	00a00793          	li	a5,10
    80005e2c:	00050493          	mv	s1,a0
    80005e30:	06f50863          	beq	a0,a5,80005ea0 <kerneltrap+0x12c>
    80005e34:	fc050ce3          	beqz	a0,80005e0c <kerneltrap+0x98>
    80005e38:	00050593          	mv	a1,a0
    80005e3c:	00002517          	auipc	a0,0x2
    80005e40:	71c50513          	addi	a0,a0,1820 # 80008558 <CONSOLE_STATUS+0x548>
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	7e4080e7          	jalr	2020(ra) # 80006628 <__printf>
    80005e4c:	01013403          	ld	s0,16(sp)
    80005e50:	01813083          	ld	ra,24(sp)
    80005e54:	00048513          	mv	a0,s1
    80005e58:	00813483          	ld	s1,8(sp)
    80005e5c:	02010113          	addi	sp,sp,32
    80005e60:	00000317          	auipc	t1,0x0
    80005e64:	3bc30067          	jr	956(t1) # 8000621c <plic_complete>
    80005e68:	00005517          	auipc	a0,0x5
    80005e6c:	4d850513          	addi	a0,a0,1240 # 8000b340 <tickslock>
    80005e70:	00001097          	auipc	ra,0x1
    80005e74:	48c080e7          	jalr	1164(ra) # 800072fc <acquire>
    80005e78:	00004717          	auipc	a4,0x4
    80005e7c:	37c70713          	addi	a4,a4,892 # 8000a1f4 <ticks>
    80005e80:	00072783          	lw	a5,0(a4)
    80005e84:	00005517          	auipc	a0,0x5
    80005e88:	4bc50513          	addi	a0,a0,1212 # 8000b340 <tickslock>
    80005e8c:	0017879b          	addiw	a5,a5,1
    80005e90:	00f72023          	sw	a5,0(a4)
    80005e94:	00001097          	auipc	ra,0x1
    80005e98:	534080e7          	jalr	1332(ra) # 800073c8 <release>
    80005e9c:	f65ff06f          	j	80005e00 <kerneltrap+0x8c>
    80005ea0:	00001097          	auipc	ra,0x1
    80005ea4:	090080e7          	jalr	144(ra) # 80006f30 <uartintr>
    80005ea8:	fa5ff06f          	j	80005e4c <kerneltrap+0xd8>
    80005eac:	00002517          	auipc	a0,0x2
    80005eb0:	68c50513          	addi	a0,a0,1676 # 80008538 <CONSOLE_STATUS+0x528>
    80005eb4:	00000097          	auipc	ra,0x0
    80005eb8:	718080e7          	jalr	1816(ra) # 800065cc <panic>

0000000080005ebc <clockintr>:
    80005ebc:	fe010113          	addi	sp,sp,-32
    80005ec0:	00813823          	sd	s0,16(sp)
    80005ec4:	00913423          	sd	s1,8(sp)
    80005ec8:	00113c23          	sd	ra,24(sp)
    80005ecc:	02010413          	addi	s0,sp,32
    80005ed0:	00005497          	auipc	s1,0x5
    80005ed4:	47048493          	addi	s1,s1,1136 # 8000b340 <tickslock>
    80005ed8:	00048513          	mv	a0,s1
    80005edc:	00001097          	auipc	ra,0x1
    80005ee0:	420080e7          	jalr	1056(ra) # 800072fc <acquire>
    80005ee4:	00004717          	auipc	a4,0x4
    80005ee8:	31070713          	addi	a4,a4,784 # 8000a1f4 <ticks>
    80005eec:	00072783          	lw	a5,0(a4)
    80005ef0:	01013403          	ld	s0,16(sp)
    80005ef4:	01813083          	ld	ra,24(sp)
    80005ef8:	00048513          	mv	a0,s1
    80005efc:	0017879b          	addiw	a5,a5,1
    80005f00:	00813483          	ld	s1,8(sp)
    80005f04:	00f72023          	sw	a5,0(a4)
    80005f08:	02010113          	addi	sp,sp,32
    80005f0c:	00001317          	auipc	t1,0x1
    80005f10:	4bc30067          	jr	1212(t1) # 800073c8 <release>

0000000080005f14 <devintr>:
    80005f14:	142027f3          	csrr	a5,scause
    80005f18:	00000513          	li	a0,0
    80005f1c:	0007c463          	bltz	a5,80005f24 <devintr+0x10>
    80005f20:	00008067          	ret
    80005f24:	fe010113          	addi	sp,sp,-32
    80005f28:	00813823          	sd	s0,16(sp)
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00913423          	sd	s1,8(sp)
    80005f34:	02010413          	addi	s0,sp,32
    80005f38:	0ff7f713          	andi	a4,a5,255
    80005f3c:	00900693          	li	a3,9
    80005f40:	04d70c63          	beq	a4,a3,80005f98 <devintr+0x84>
    80005f44:	fff00713          	li	a4,-1
    80005f48:	03f71713          	slli	a4,a4,0x3f
    80005f4c:	00170713          	addi	a4,a4,1
    80005f50:	00e78c63          	beq	a5,a4,80005f68 <devintr+0x54>
    80005f54:	01813083          	ld	ra,24(sp)
    80005f58:	01013403          	ld	s0,16(sp)
    80005f5c:	00813483          	ld	s1,8(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret
    80005f68:	00000097          	auipc	ra,0x0
    80005f6c:	c8c080e7          	jalr	-884(ra) # 80005bf4 <cpuid>
    80005f70:	06050663          	beqz	a0,80005fdc <devintr+0xc8>
    80005f74:	144027f3          	csrr	a5,sip
    80005f78:	ffd7f793          	andi	a5,a5,-3
    80005f7c:	14479073          	csrw	sip,a5
    80005f80:	01813083          	ld	ra,24(sp)
    80005f84:	01013403          	ld	s0,16(sp)
    80005f88:	00813483          	ld	s1,8(sp)
    80005f8c:	00200513          	li	a0,2
    80005f90:	02010113          	addi	sp,sp,32
    80005f94:	00008067          	ret
    80005f98:	00000097          	auipc	ra,0x0
    80005f9c:	24c080e7          	jalr	588(ra) # 800061e4 <plic_claim>
    80005fa0:	00a00793          	li	a5,10
    80005fa4:	00050493          	mv	s1,a0
    80005fa8:	06f50663          	beq	a0,a5,80006014 <devintr+0x100>
    80005fac:	00100513          	li	a0,1
    80005fb0:	fa0482e3          	beqz	s1,80005f54 <devintr+0x40>
    80005fb4:	00048593          	mv	a1,s1
    80005fb8:	00002517          	auipc	a0,0x2
    80005fbc:	5a050513          	addi	a0,a0,1440 # 80008558 <CONSOLE_STATUS+0x548>
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	668080e7          	jalr	1640(ra) # 80006628 <__printf>
    80005fc8:	00048513          	mv	a0,s1
    80005fcc:	00000097          	auipc	ra,0x0
    80005fd0:	250080e7          	jalr	592(ra) # 8000621c <plic_complete>
    80005fd4:	00100513          	li	a0,1
    80005fd8:	f7dff06f          	j	80005f54 <devintr+0x40>
    80005fdc:	00005517          	auipc	a0,0x5
    80005fe0:	36450513          	addi	a0,a0,868 # 8000b340 <tickslock>
    80005fe4:	00001097          	auipc	ra,0x1
    80005fe8:	318080e7          	jalr	792(ra) # 800072fc <acquire>
    80005fec:	00004717          	auipc	a4,0x4
    80005ff0:	20870713          	addi	a4,a4,520 # 8000a1f4 <ticks>
    80005ff4:	00072783          	lw	a5,0(a4)
    80005ff8:	00005517          	auipc	a0,0x5
    80005ffc:	34850513          	addi	a0,a0,840 # 8000b340 <tickslock>
    80006000:	0017879b          	addiw	a5,a5,1
    80006004:	00f72023          	sw	a5,0(a4)
    80006008:	00001097          	auipc	ra,0x1
    8000600c:	3c0080e7          	jalr	960(ra) # 800073c8 <release>
    80006010:	f65ff06f          	j	80005f74 <devintr+0x60>
    80006014:	00001097          	auipc	ra,0x1
    80006018:	f1c080e7          	jalr	-228(ra) # 80006f30 <uartintr>
    8000601c:	fadff06f          	j	80005fc8 <devintr+0xb4>

0000000080006020 <kernelvec>:
    80006020:	f0010113          	addi	sp,sp,-256
    80006024:	00113023          	sd	ra,0(sp)
    80006028:	00213423          	sd	sp,8(sp)
    8000602c:	00313823          	sd	gp,16(sp)
    80006030:	00413c23          	sd	tp,24(sp)
    80006034:	02513023          	sd	t0,32(sp)
    80006038:	02613423          	sd	t1,40(sp)
    8000603c:	02713823          	sd	t2,48(sp)
    80006040:	02813c23          	sd	s0,56(sp)
    80006044:	04913023          	sd	s1,64(sp)
    80006048:	04a13423          	sd	a0,72(sp)
    8000604c:	04b13823          	sd	a1,80(sp)
    80006050:	04c13c23          	sd	a2,88(sp)
    80006054:	06d13023          	sd	a3,96(sp)
    80006058:	06e13423          	sd	a4,104(sp)
    8000605c:	06f13823          	sd	a5,112(sp)
    80006060:	07013c23          	sd	a6,120(sp)
    80006064:	09113023          	sd	a7,128(sp)
    80006068:	09213423          	sd	s2,136(sp)
    8000606c:	09313823          	sd	s3,144(sp)
    80006070:	09413c23          	sd	s4,152(sp)
    80006074:	0b513023          	sd	s5,160(sp)
    80006078:	0b613423          	sd	s6,168(sp)
    8000607c:	0b713823          	sd	s7,176(sp)
    80006080:	0b813c23          	sd	s8,184(sp)
    80006084:	0d913023          	sd	s9,192(sp)
    80006088:	0da13423          	sd	s10,200(sp)
    8000608c:	0db13823          	sd	s11,208(sp)
    80006090:	0dc13c23          	sd	t3,216(sp)
    80006094:	0fd13023          	sd	t4,224(sp)
    80006098:	0fe13423          	sd	t5,232(sp)
    8000609c:	0ff13823          	sd	t6,240(sp)
    800060a0:	cd5ff0ef          	jal	ra,80005d74 <kerneltrap>
    800060a4:	00013083          	ld	ra,0(sp)
    800060a8:	00813103          	ld	sp,8(sp)
    800060ac:	01013183          	ld	gp,16(sp)
    800060b0:	02013283          	ld	t0,32(sp)
    800060b4:	02813303          	ld	t1,40(sp)
    800060b8:	03013383          	ld	t2,48(sp)
    800060bc:	03813403          	ld	s0,56(sp)
    800060c0:	04013483          	ld	s1,64(sp)
    800060c4:	04813503          	ld	a0,72(sp)
    800060c8:	05013583          	ld	a1,80(sp)
    800060cc:	05813603          	ld	a2,88(sp)
    800060d0:	06013683          	ld	a3,96(sp)
    800060d4:	06813703          	ld	a4,104(sp)
    800060d8:	07013783          	ld	a5,112(sp)
    800060dc:	07813803          	ld	a6,120(sp)
    800060e0:	08013883          	ld	a7,128(sp)
    800060e4:	08813903          	ld	s2,136(sp)
    800060e8:	09013983          	ld	s3,144(sp)
    800060ec:	09813a03          	ld	s4,152(sp)
    800060f0:	0a013a83          	ld	s5,160(sp)
    800060f4:	0a813b03          	ld	s6,168(sp)
    800060f8:	0b013b83          	ld	s7,176(sp)
    800060fc:	0b813c03          	ld	s8,184(sp)
    80006100:	0c013c83          	ld	s9,192(sp)
    80006104:	0c813d03          	ld	s10,200(sp)
    80006108:	0d013d83          	ld	s11,208(sp)
    8000610c:	0d813e03          	ld	t3,216(sp)
    80006110:	0e013e83          	ld	t4,224(sp)
    80006114:	0e813f03          	ld	t5,232(sp)
    80006118:	0f013f83          	ld	t6,240(sp)
    8000611c:	10010113          	addi	sp,sp,256
    80006120:	10200073          	sret
    80006124:	00000013          	nop
    80006128:	00000013          	nop
    8000612c:	00000013          	nop

0000000080006130 <timervec>:
    80006130:	34051573          	csrrw	a0,mscratch,a0
    80006134:	00b53023          	sd	a1,0(a0)
    80006138:	00c53423          	sd	a2,8(a0)
    8000613c:	00d53823          	sd	a3,16(a0)
    80006140:	01853583          	ld	a1,24(a0)
    80006144:	02053603          	ld	a2,32(a0)
    80006148:	0005b683          	ld	a3,0(a1)
    8000614c:	00c686b3          	add	a3,a3,a2
    80006150:	00d5b023          	sd	a3,0(a1)
    80006154:	00200593          	li	a1,2
    80006158:	14459073          	csrw	sip,a1
    8000615c:	01053683          	ld	a3,16(a0)
    80006160:	00853603          	ld	a2,8(a0)
    80006164:	00053583          	ld	a1,0(a0)
    80006168:	34051573          	csrrw	a0,mscratch,a0
    8000616c:	30200073          	mret

0000000080006170 <plicinit>:
    80006170:	ff010113          	addi	sp,sp,-16
    80006174:	00813423          	sd	s0,8(sp)
    80006178:	01010413          	addi	s0,sp,16
    8000617c:	00813403          	ld	s0,8(sp)
    80006180:	0c0007b7          	lui	a5,0xc000
    80006184:	00100713          	li	a4,1
    80006188:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000618c:	00e7a223          	sw	a4,4(a5)
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00008067          	ret

0000000080006198 <plicinithart>:
    80006198:	ff010113          	addi	sp,sp,-16
    8000619c:	00813023          	sd	s0,0(sp)
    800061a0:	00113423          	sd	ra,8(sp)
    800061a4:	01010413          	addi	s0,sp,16
    800061a8:	00000097          	auipc	ra,0x0
    800061ac:	a4c080e7          	jalr	-1460(ra) # 80005bf4 <cpuid>
    800061b0:	0085171b          	slliw	a4,a0,0x8
    800061b4:	0c0027b7          	lui	a5,0xc002
    800061b8:	00e787b3          	add	a5,a5,a4
    800061bc:	40200713          	li	a4,1026
    800061c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800061c4:	00813083          	ld	ra,8(sp)
    800061c8:	00013403          	ld	s0,0(sp)
    800061cc:	00d5151b          	slliw	a0,a0,0xd
    800061d0:	0c2017b7          	lui	a5,0xc201
    800061d4:	00a78533          	add	a0,a5,a0
    800061d8:	00052023          	sw	zero,0(a0)
    800061dc:	01010113          	addi	sp,sp,16
    800061e0:	00008067          	ret

00000000800061e4 <plic_claim>:
    800061e4:	ff010113          	addi	sp,sp,-16
    800061e8:	00813023          	sd	s0,0(sp)
    800061ec:	00113423          	sd	ra,8(sp)
    800061f0:	01010413          	addi	s0,sp,16
    800061f4:	00000097          	auipc	ra,0x0
    800061f8:	a00080e7          	jalr	-1536(ra) # 80005bf4 <cpuid>
    800061fc:	00813083          	ld	ra,8(sp)
    80006200:	00013403          	ld	s0,0(sp)
    80006204:	00d5151b          	slliw	a0,a0,0xd
    80006208:	0c2017b7          	lui	a5,0xc201
    8000620c:	00a78533          	add	a0,a5,a0
    80006210:	00452503          	lw	a0,4(a0)
    80006214:	01010113          	addi	sp,sp,16
    80006218:	00008067          	ret

000000008000621c <plic_complete>:
    8000621c:	fe010113          	addi	sp,sp,-32
    80006220:	00813823          	sd	s0,16(sp)
    80006224:	00913423          	sd	s1,8(sp)
    80006228:	00113c23          	sd	ra,24(sp)
    8000622c:	02010413          	addi	s0,sp,32
    80006230:	00050493          	mv	s1,a0
    80006234:	00000097          	auipc	ra,0x0
    80006238:	9c0080e7          	jalr	-1600(ra) # 80005bf4 <cpuid>
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	01013403          	ld	s0,16(sp)
    80006244:	00d5179b          	slliw	a5,a0,0xd
    80006248:	0c201737          	lui	a4,0xc201
    8000624c:	00f707b3          	add	a5,a4,a5
    80006250:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006254:	00813483          	ld	s1,8(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret

0000000080006260 <consolewrite>:
    80006260:	fb010113          	addi	sp,sp,-80
    80006264:	04813023          	sd	s0,64(sp)
    80006268:	04113423          	sd	ra,72(sp)
    8000626c:	02913c23          	sd	s1,56(sp)
    80006270:	03213823          	sd	s2,48(sp)
    80006274:	03313423          	sd	s3,40(sp)
    80006278:	03413023          	sd	s4,32(sp)
    8000627c:	01513c23          	sd	s5,24(sp)
    80006280:	05010413          	addi	s0,sp,80
    80006284:	06c05c63          	blez	a2,800062fc <consolewrite+0x9c>
    80006288:	00060993          	mv	s3,a2
    8000628c:	00050a13          	mv	s4,a0
    80006290:	00058493          	mv	s1,a1
    80006294:	00000913          	li	s2,0
    80006298:	fff00a93          	li	s5,-1
    8000629c:	01c0006f          	j	800062b8 <consolewrite+0x58>
    800062a0:	fbf44503          	lbu	a0,-65(s0)
    800062a4:	0019091b          	addiw	s2,s2,1
    800062a8:	00148493          	addi	s1,s1,1
    800062ac:	00001097          	auipc	ra,0x1
    800062b0:	a9c080e7          	jalr	-1380(ra) # 80006d48 <uartputc>
    800062b4:	03298063          	beq	s3,s2,800062d4 <consolewrite+0x74>
    800062b8:	00048613          	mv	a2,s1
    800062bc:	00100693          	li	a3,1
    800062c0:	000a0593          	mv	a1,s4
    800062c4:	fbf40513          	addi	a0,s0,-65
    800062c8:	00000097          	auipc	ra,0x0
    800062cc:	9e4080e7          	jalr	-1564(ra) # 80005cac <either_copyin>
    800062d0:	fd5518e3          	bne	a0,s5,800062a0 <consolewrite+0x40>
    800062d4:	04813083          	ld	ra,72(sp)
    800062d8:	04013403          	ld	s0,64(sp)
    800062dc:	03813483          	ld	s1,56(sp)
    800062e0:	02813983          	ld	s3,40(sp)
    800062e4:	02013a03          	ld	s4,32(sp)
    800062e8:	01813a83          	ld	s5,24(sp)
    800062ec:	00090513          	mv	a0,s2
    800062f0:	03013903          	ld	s2,48(sp)
    800062f4:	05010113          	addi	sp,sp,80
    800062f8:	00008067          	ret
    800062fc:	00000913          	li	s2,0
    80006300:	fd5ff06f          	j	800062d4 <consolewrite+0x74>

0000000080006304 <consoleread>:
    80006304:	f9010113          	addi	sp,sp,-112
    80006308:	06813023          	sd	s0,96(sp)
    8000630c:	04913c23          	sd	s1,88(sp)
    80006310:	05213823          	sd	s2,80(sp)
    80006314:	05313423          	sd	s3,72(sp)
    80006318:	05413023          	sd	s4,64(sp)
    8000631c:	03513c23          	sd	s5,56(sp)
    80006320:	03613823          	sd	s6,48(sp)
    80006324:	03713423          	sd	s7,40(sp)
    80006328:	03813023          	sd	s8,32(sp)
    8000632c:	06113423          	sd	ra,104(sp)
    80006330:	01913c23          	sd	s9,24(sp)
    80006334:	07010413          	addi	s0,sp,112
    80006338:	00060b93          	mv	s7,a2
    8000633c:	00050913          	mv	s2,a0
    80006340:	00058c13          	mv	s8,a1
    80006344:	00060b1b          	sext.w	s6,a2
    80006348:	00005497          	auipc	s1,0x5
    8000634c:	02048493          	addi	s1,s1,32 # 8000b368 <cons>
    80006350:	00400993          	li	s3,4
    80006354:	fff00a13          	li	s4,-1
    80006358:	00a00a93          	li	s5,10
    8000635c:	05705e63          	blez	s7,800063b8 <consoleread+0xb4>
    80006360:	09c4a703          	lw	a4,156(s1)
    80006364:	0984a783          	lw	a5,152(s1)
    80006368:	0007071b          	sext.w	a4,a4
    8000636c:	08e78463          	beq	a5,a4,800063f4 <consoleread+0xf0>
    80006370:	07f7f713          	andi	a4,a5,127
    80006374:	00e48733          	add	a4,s1,a4
    80006378:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000637c:	0017869b          	addiw	a3,a5,1
    80006380:	08d4ac23          	sw	a3,152(s1)
    80006384:	00070c9b          	sext.w	s9,a4
    80006388:	0b370663          	beq	a4,s3,80006434 <consoleread+0x130>
    8000638c:	00100693          	li	a3,1
    80006390:	f9f40613          	addi	a2,s0,-97
    80006394:	000c0593          	mv	a1,s8
    80006398:	00090513          	mv	a0,s2
    8000639c:	f8e40fa3          	sb	a4,-97(s0)
    800063a0:	00000097          	auipc	ra,0x0
    800063a4:	8c0080e7          	jalr	-1856(ra) # 80005c60 <either_copyout>
    800063a8:	01450863          	beq	a0,s4,800063b8 <consoleread+0xb4>
    800063ac:	001c0c13          	addi	s8,s8,1
    800063b0:	fffb8b9b          	addiw	s7,s7,-1
    800063b4:	fb5c94e3          	bne	s9,s5,8000635c <consoleread+0x58>
    800063b8:	000b851b          	sext.w	a0,s7
    800063bc:	06813083          	ld	ra,104(sp)
    800063c0:	06013403          	ld	s0,96(sp)
    800063c4:	05813483          	ld	s1,88(sp)
    800063c8:	05013903          	ld	s2,80(sp)
    800063cc:	04813983          	ld	s3,72(sp)
    800063d0:	04013a03          	ld	s4,64(sp)
    800063d4:	03813a83          	ld	s5,56(sp)
    800063d8:	02813b83          	ld	s7,40(sp)
    800063dc:	02013c03          	ld	s8,32(sp)
    800063e0:	01813c83          	ld	s9,24(sp)
    800063e4:	40ab053b          	subw	a0,s6,a0
    800063e8:	03013b03          	ld	s6,48(sp)
    800063ec:	07010113          	addi	sp,sp,112
    800063f0:	00008067          	ret
    800063f4:	00001097          	auipc	ra,0x1
    800063f8:	1d8080e7          	jalr	472(ra) # 800075cc <push_on>
    800063fc:	0984a703          	lw	a4,152(s1)
    80006400:	09c4a783          	lw	a5,156(s1)
    80006404:	0007879b          	sext.w	a5,a5
    80006408:	fef70ce3          	beq	a4,a5,80006400 <consoleread+0xfc>
    8000640c:	00001097          	auipc	ra,0x1
    80006410:	234080e7          	jalr	564(ra) # 80007640 <pop_on>
    80006414:	0984a783          	lw	a5,152(s1)
    80006418:	07f7f713          	andi	a4,a5,127
    8000641c:	00e48733          	add	a4,s1,a4
    80006420:	01874703          	lbu	a4,24(a4)
    80006424:	0017869b          	addiw	a3,a5,1
    80006428:	08d4ac23          	sw	a3,152(s1)
    8000642c:	00070c9b          	sext.w	s9,a4
    80006430:	f5371ee3          	bne	a4,s3,8000638c <consoleread+0x88>
    80006434:	000b851b          	sext.w	a0,s7
    80006438:	f96bf2e3          	bgeu	s7,s6,800063bc <consoleread+0xb8>
    8000643c:	08f4ac23          	sw	a5,152(s1)
    80006440:	f7dff06f          	j	800063bc <consoleread+0xb8>

0000000080006444 <consputc>:
    80006444:	10000793          	li	a5,256
    80006448:	00f50663          	beq	a0,a5,80006454 <consputc+0x10>
    8000644c:	00001317          	auipc	t1,0x1
    80006450:	9f430067          	jr	-1548(t1) # 80006e40 <uartputc_sync>
    80006454:	ff010113          	addi	sp,sp,-16
    80006458:	00113423          	sd	ra,8(sp)
    8000645c:	00813023          	sd	s0,0(sp)
    80006460:	01010413          	addi	s0,sp,16
    80006464:	00800513          	li	a0,8
    80006468:	00001097          	auipc	ra,0x1
    8000646c:	9d8080e7          	jalr	-1576(ra) # 80006e40 <uartputc_sync>
    80006470:	02000513          	li	a0,32
    80006474:	00001097          	auipc	ra,0x1
    80006478:	9cc080e7          	jalr	-1588(ra) # 80006e40 <uartputc_sync>
    8000647c:	00013403          	ld	s0,0(sp)
    80006480:	00813083          	ld	ra,8(sp)
    80006484:	00800513          	li	a0,8
    80006488:	01010113          	addi	sp,sp,16
    8000648c:	00001317          	auipc	t1,0x1
    80006490:	9b430067          	jr	-1612(t1) # 80006e40 <uartputc_sync>

0000000080006494 <consoleintr>:
    80006494:	fe010113          	addi	sp,sp,-32
    80006498:	00813823          	sd	s0,16(sp)
    8000649c:	00913423          	sd	s1,8(sp)
    800064a0:	01213023          	sd	s2,0(sp)
    800064a4:	00113c23          	sd	ra,24(sp)
    800064a8:	02010413          	addi	s0,sp,32
    800064ac:	00005917          	auipc	s2,0x5
    800064b0:	ebc90913          	addi	s2,s2,-324 # 8000b368 <cons>
    800064b4:	00050493          	mv	s1,a0
    800064b8:	00090513          	mv	a0,s2
    800064bc:	00001097          	auipc	ra,0x1
    800064c0:	e40080e7          	jalr	-448(ra) # 800072fc <acquire>
    800064c4:	02048c63          	beqz	s1,800064fc <consoleintr+0x68>
    800064c8:	0a092783          	lw	a5,160(s2)
    800064cc:	09892703          	lw	a4,152(s2)
    800064d0:	07f00693          	li	a3,127
    800064d4:	40e7873b          	subw	a4,a5,a4
    800064d8:	02e6e263          	bltu	a3,a4,800064fc <consoleintr+0x68>
    800064dc:	00d00713          	li	a4,13
    800064e0:	04e48063          	beq	s1,a4,80006520 <consoleintr+0x8c>
    800064e4:	07f7f713          	andi	a4,a5,127
    800064e8:	00e90733          	add	a4,s2,a4
    800064ec:	0017879b          	addiw	a5,a5,1
    800064f0:	0af92023          	sw	a5,160(s2)
    800064f4:	00970c23          	sb	s1,24(a4)
    800064f8:	08f92e23          	sw	a5,156(s2)
    800064fc:	01013403          	ld	s0,16(sp)
    80006500:	01813083          	ld	ra,24(sp)
    80006504:	00813483          	ld	s1,8(sp)
    80006508:	00013903          	ld	s2,0(sp)
    8000650c:	00005517          	auipc	a0,0x5
    80006510:	e5c50513          	addi	a0,a0,-420 # 8000b368 <cons>
    80006514:	02010113          	addi	sp,sp,32
    80006518:	00001317          	auipc	t1,0x1
    8000651c:	eb030067          	jr	-336(t1) # 800073c8 <release>
    80006520:	00a00493          	li	s1,10
    80006524:	fc1ff06f          	j	800064e4 <consoleintr+0x50>

0000000080006528 <consoleinit>:
    80006528:	fe010113          	addi	sp,sp,-32
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	02010413          	addi	s0,sp,32
    8000653c:	00005497          	auipc	s1,0x5
    80006540:	e2c48493          	addi	s1,s1,-468 # 8000b368 <cons>
    80006544:	00048513          	mv	a0,s1
    80006548:	00002597          	auipc	a1,0x2
    8000654c:	06858593          	addi	a1,a1,104 # 800085b0 <CONSOLE_STATUS+0x5a0>
    80006550:	00001097          	auipc	ra,0x1
    80006554:	d88080e7          	jalr	-632(ra) # 800072d8 <initlock>
    80006558:	00000097          	auipc	ra,0x0
    8000655c:	7ac080e7          	jalr	1964(ra) # 80006d04 <uartinit>
    80006560:	01813083          	ld	ra,24(sp)
    80006564:	01013403          	ld	s0,16(sp)
    80006568:	00000797          	auipc	a5,0x0
    8000656c:	d9c78793          	addi	a5,a5,-612 # 80006304 <consoleread>
    80006570:	0af4bc23          	sd	a5,184(s1)
    80006574:	00000797          	auipc	a5,0x0
    80006578:	cec78793          	addi	a5,a5,-788 # 80006260 <consolewrite>
    8000657c:	0cf4b023          	sd	a5,192(s1)
    80006580:	00813483          	ld	s1,8(sp)
    80006584:	02010113          	addi	sp,sp,32
    80006588:	00008067          	ret

000000008000658c <console_read>:
    8000658c:	ff010113          	addi	sp,sp,-16
    80006590:	00813423          	sd	s0,8(sp)
    80006594:	01010413          	addi	s0,sp,16
    80006598:	00813403          	ld	s0,8(sp)
    8000659c:	00005317          	auipc	t1,0x5
    800065a0:	e8433303          	ld	t1,-380(t1) # 8000b420 <devsw+0x10>
    800065a4:	01010113          	addi	sp,sp,16
    800065a8:	00030067          	jr	t1

00000000800065ac <console_write>:
    800065ac:	ff010113          	addi	sp,sp,-16
    800065b0:	00813423          	sd	s0,8(sp)
    800065b4:	01010413          	addi	s0,sp,16
    800065b8:	00813403          	ld	s0,8(sp)
    800065bc:	00005317          	auipc	t1,0x5
    800065c0:	e6c33303          	ld	t1,-404(t1) # 8000b428 <devsw+0x18>
    800065c4:	01010113          	addi	sp,sp,16
    800065c8:	00030067          	jr	t1

00000000800065cc <panic>:
    800065cc:	fe010113          	addi	sp,sp,-32
    800065d0:	00113c23          	sd	ra,24(sp)
    800065d4:	00813823          	sd	s0,16(sp)
    800065d8:	00913423          	sd	s1,8(sp)
    800065dc:	02010413          	addi	s0,sp,32
    800065e0:	00050493          	mv	s1,a0
    800065e4:	00002517          	auipc	a0,0x2
    800065e8:	fd450513          	addi	a0,a0,-44 # 800085b8 <CONSOLE_STATUS+0x5a8>
    800065ec:	00005797          	auipc	a5,0x5
    800065f0:	ec07ae23          	sw	zero,-292(a5) # 8000b4c8 <pr+0x18>
    800065f4:	00000097          	auipc	ra,0x0
    800065f8:	034080e7          	jalr	52(ra) # 80006628 <__printf>
    800065fc:	00048513          	mv	a0,s1
    80006600:	00000097          	auipc	ra,0x0
    80006604:	028080e7          	jalr	40(ra) # 80006628 <__printf>
    80006608:	00002517          	auipc	a0,0x2
    8000660c:	db850513          	addi	a0,a0,-584 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80006610:	00000097          	auipc	ra,0x0
    80006614:	018080e7          	jalr	24(ra) # 80006628 <__printf>
    80006618:	00100793          	li	a5,1
    8000661c:	00004717          	auipc	a4,0x4
    80006620:	bcf72e23          	sw	a5,-1060(a4) # 8000a1f8 <panicked>
    80006624:	0000006f          	j	80006624 <panic+0x58>

0000000080006628 <__printf>:
    80006628:	f3010113          	addi	sp,sp,-208
    8000662c:	08813023          	sd	s0,128(sp)
    80006630:	07313423          	sd	s3,104(sp)
    80006634:	09010413          	addi	s0,sp,144
    80006638:	05813023          	sd	s8,64(sp)
    8000663c:	08113423          	sd	ra,136(sp)
    80006640:	06913c23          	sd	s1,120(sp)
    80006644:	07213823          	sd	s2,112(sp)
    80006648:	07413023          	sd	s4,96(sp)
    8000664c:	05513c23          	sd	s5,88(sp)
    80006650:	05613823          	sd	s6,80(sp)
    80006654:	05713423          	sd	s7,72(sp)
    80006658:	03913c23          	sd	s9,56(sp)
    8000665c:	03a13823          	sd	s10,48(sp)
    80006660:	03b13423          	sd	s11,40(sp)
    80006664:	00005317          	auipc	t1,0x5
    80006668:	e4c30313          	addi	t1,t1,-436 # 8000b4b0 <pr>
    8000666c:	01832c03          	lw	s8,24(t1)
    80006670:	00b43423          	sd	a1,8(s0)
    80006674:	00c43823          	sd	a2,16(s0)
    80006678:	00d43c23          	sd	a3,24(s0)
    8000667c:	02e43023          	sd	a4,32(s0)
    80006680:	02f43423          	sd	a5,40(s0)
    80006684:	03043823          	sd	a6,48(s0)
    80006688:	03143c23          	sd	a7,56(s0)
    8000668c:	00050993          	mv	s3,a0
    80006690:	4a0c1663          	bnez	s8,80006b3c <__printf+0x514>
    80006694:	60098c63          	beqz	s3,80006cac <__printf+0x684>
    80006698:	0009c503          	lbu	a0,0(s3)
    8000669c:	00840793          	addi	a5,s0,8
    800066a0:	f6f43c23          	sd	a5,-136(s0)
    800066a4:	00000493          	li	s1,0
    800066a8:	22050063          	beqz	a0,800068c8 <__printf+0x2a0>
    800066ac:	00002a37          	lui	s4,0x2
    800066b0:	00018ab7          	lui	s5,0x18
    800066b4:	000f4b37          	lui	s6,0xf4
    800066b8:	00989bb7          	lui	s7,0x989
    800066bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800066c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800066c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800066c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800066cc:	00148c9b          	addiw	s9,s1,1
    800066d0:	02500793          	li	a5,37
    800066d4:	01998933          	add	s2,s3,s9
    800066d8:	38f51263          	bne	a0,a5,80006a5c <__printf+0x434>
    800066dc:	00094783          	lbu	a5,0(s2)
    800066e0:	00078c9b          	sext.w	s9,a5
    800066e4:	1e078263          	beqz	a5,800068c8 <__printf+0x2a0>
    800066e8:	0024849b          	addiw	s1,s1,2
    800066ec:	07000713          	li	a4,112
    800066f0:	00998933          	add	s2,s3,s1
    800066f4:	38e78a63          	beq	a5,a4,80006a88 <__printf+0x460>
    800066f8:	20f76863          	bltu	a4,a5,80006908 <__printf+0x2e0>
    800066fc:	42a78863          	beq	a5,a0,80006b2c <__printf+0x504>
    80006700:	06400713          	li	a4,100
    80006704:	40e79663          	bne	a5,a4,80006b10 <__printf+0x4e8>
    80006708:	f7843783          	ld	a5,-136(s0)
    8000670c:	0007a603          	lw	a2,0(a5)
    80006710:	00878793          	addi	a5,a5,8
    80006714:	f6f43c23          	sd	a5,-136(s0)
    80006718:	42064a63          	bltz	a2,80006b4c <__printf+0x524>
    8000671c:	00a00713          	li	a4,10
    80006720:	02e677bb          	remuw	a5,a2,a4
    80006724:	00002d97          	auipc	s11,0x2
    80006728:	ebcd8d93          	addi	s11,s11,-324 # 800085e0 <digits>
    8000672c:	00900593          	li	a1,9
    80006730:	0006051b          	sext.w	a0,a2
    80006734:	00000c93          	li	s9,0
    80006738:	02079793          	slli	a5,a5,0x20
    8000673c:	0207d793          	srli	a5,a5,0x20
    80006740:	00fd87b3          	add	a5,s11,a5
    80006744:	0007c783          	lbu	a5,0(a5)
    80006748:	02e656bb          	divuw	a3,a2,a4
    8000674c:	f8f40023          	sb	a5,-128(s0)
    80006750:	14c5d863          	bge	a1,a2,800068a0 <__printf+0x278>
    80006754:	06300593          	li	a1,99
    80006758:	00100c93          	li	s9,1
    8000675c:	02e6f7bb          	remuw	a5,a3,a4
    80006760:	02079793          	slli	a5,a5,0x20
    80006764:	0207d793          	srli	a5,a5,0x20
    80006768:	00fd87b3          	add	a5,s11,a5
    8000676c:	0007c783          	lbu	a5,0(a5)
    80006770:	02e6d73b          	divuw	a4,a3,a4
    80006774:	f8f400a3          	sb	a5,-127(s0)
    80006778:	12a5f463          	bgeu	a1,a0,800068a0 <__printf+0x278>
    8000677c:	00a00693          	li	a3,10
    80006780:	00900593          	li	a1,9
    80006784:	02d777bb          	remuw	a5,a4,a3
    80006788:	02079793          	slli	a5,a5,0x20
    8000678c:	0207d793          	srli	a5,a5,0x20
    80006790:	00fd87b3          	add	a5,s11,a5
    80006794:	0007c503          	lbu	a0,0(a5)
    80006798:	02d757bb          	divuw	a5,a4,a3
    8000679c:	f8a40123          	sb	a0,-126(s0)
    800067a0:	48e5f263          	bgeu	a1,a4,80006c24 <__printf+0x5fc>
    800067a4:	06300513          	li	a0,99
    800067a8:	02d7f5bb          	remuw	a1,a5,a3
    800067ac:	02059593          	slli	a1,a1,0x20
    800067b0:	0205d593          	srli	a1,a1,0x20
    800067b4:	00bd85b3          	add	a1,s11,a1
    800067b8:	0005c583          	lbu	a1,0(a1)
    800067bc:	02d7d7bb          	divuw	a5,a5,a3
    800067c0:	f8b401a3          	sb	a1,-125(s0)
    800067c4:	48e57263          	bgeu	a0,a4,80006c48 <__printf+0x620>
    800067c8:	3e700513          	li	a0,999
    800067cc:	02d7f5bb          	remuw	a1,a5,a3
    800067d0:	02059593          	slli	a1,a1,0x20
    800067d4:	0205d593          	srli	a1,a1,0x20
    800067d8:	00bd85b3          	add	a1,s11,a1
    800067dc:	0005c583          	lbu	a1,0(a1)
    800067e0:	02d7d7bb          	divuw	a5,a5,a3
    800067e4:	f8b40223          	sb	a1,-124(s0)
    800067e8:	46e57663          	bgeu	a0,a4,80006c54 <__printf+0x62c>
    800067ec:	02d7f5bb          	remuw	a1,a5,a3
    800067f0:	02059593          	slli	a1,a1,0x20
    800067f4:	0205d593          	srli	a1,a1,0x20
    800067f8:	00bd85b3          	add	a1,s11,a1
    800067fc:	0005c583          	lbu	a1,0(a1)
    80006800:	02d7d7bb          	divuw	a5,a5,a3
    80006804:	f8b402a3          	sb	a1,-123(s0)
    80006808:	46ea7863          	bgeu	s4,a4,80006c78 <__printf+0x650>
    8000680c:	02d7f5bb          	remuw	a1,a5,a3
    80006810:	02059593          	slli	a1,a1,0x20
    80006814:	0205d593          	srli	a1,a1,0x20
    80006818:	00bd85b3          	add	a1,s11,a1
    8000681c:	0005c583          	lbu	a1,0(a1)
    80006820:	02d7d7bb          	divuw	a5,a5,a3
    80006824:	f8b40323          	sb	a1,-122(s0)
    80006828:	3eeaf863          	bgeu	s5,a4,80006c18 <__printf+0x5f0>
    8000682c:	02d7f5bb          	remuw	a1,a5,a3
    80006830:	02059593          	slli	a1,a1,0x20
    80006834:	0205d593          	srli	a1,a1,0x20
    80006838:	00bd85b3          	add	a1,s11,a1
    8000683c:	0005c583          	lbu	a1,0(a1)
    80006840:	02d7d7bb          	divuw	a5,a5,a3
    80006844:	f8b403a3          	sb	a1,-121(s0)
    80006848:	42eb7e63          	bgeu	s6,a4,80006c84 <__printf+0x65c>
    8000684c:	02d7f5bb          	remuw	a1,a5,a3
    80006850:	02059593          	slli	a1,a1,0x20
    80006854:	0205d593          	srli	a1,a1,0x20
    80006858:	00bd85b3          	add	a1,s11,a1
    8000685c:	0005c583          	lbu	a1,0(a1)
    80006860:	02d7d7bb          	divuw	a5,a5,a3
    80006864:	f8b40423          	sb	a1,-120(s0)
    80006868:	42ebfc63          	bgeu	s7,a4,80006ca0 <__printf+0x678>
    8000686c:	02079793          	slli	a5,a5,0x20
    80006870:	0207d793          	srli	a5,a5,0x20
    80006874:	00fd8db3          	add	s11,s11,a5
    80006878:	000dc703          	lbu	a4,0(s11)
    8000687c:	00a00793          	li	a5,10
    80006880:	00900c93          	li	s9,9
    80006884:	f8e404a3          	sb	a4,-119(s0)
    80006888:	00065c63          	bgez	a2,800068a0 <__printf+0x278>
    8000688c:	f9040713          	addi	a4,s0,-112
    80006890:	00f70733          	add	a4,a4,a5
    80006894:	02d00693          	li	a3,45
    80006898:	fed70823          	sb	a3,-16(a4)
    8000689c:	00078c93          	mv	s9,a5
    800068a0:	f8040793          	addi	a5,s0,-128
    800068a4:	01978cb3          	add	s9,a5,s9
    800068a8:	f7f40d13          	addi	s10,s0,-129
    800068ac:	000cc503          	lbu	a0,0(s9)
    800068b0:	fffc8c93          	addi	s9,s9,-1
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	b90080e7          	jalr	-1136(ra) # 80006444 <consputc>
    800068bc:	ffac98e3          	bne	s9,s10,800068ac <__printf+0x284>
    800068c0:	00094503          	lbu	a0,0(s2)
    800068c4:	e00514e3          	bnez	a0,800066cc <__printf+0xa4>
    800068c8:	1a0c1663          	bnez	s8,80006a74 <__printf+0x44c>
    800068cc:	08813083          	ld	ra,136(sp)
    800068d0:	08013403          	ld	s0,128(sp)
    800068d4:	07813483          	ld	s1,120(sp)
    800068d8:	07013903          	ld	s2,112(sp)
    800068dc:	06813983          	ld	s3,104(sp)
    800068e0:	06013a03          	ld	s4,96(sp)
    800068e4:	05813a83          	ld	s5,88(sp)
    800068e8:	05013b03          	ld	s6,80(sp)
    800068ec:	04813b83          	ld	s7,72(sp)
    800068f0:	04013c03          	ld	s8,64(sp)
    800068f4:	03813c83          	ld	s9,56(sp)
    800068f8:	03013d03          	ld	s10,48(sp)
    800068fc:	02813d83          	ld	s11,40(sp)
    80006900:	0d010113          	addi	sp,sp,208
    80006904:	00008067          	ret
    80006908:	07300713          	li	a4,115
    8000690c:	1ce78a63          	beq	a5,a4,80006ae0 <__printf+0x4b8>
    80006910:	07800713          	li	a4,120
    80006914:	1ee79e63          	bne	a5,a4,80006b10 <__printf+0x4e8>
    80006918:	f7843783          	ld	a5,-136(s0)
    8000691c:	0007a703          	lw	a4,0(a5)
    80006920:	00878793          	addi	a5,a5,8
    80006924:	f6f43c23          	sd	a5,-136(s0)
    80006928:	28074263          	bltz	a4,80006bac <__printf+0x584>
    8000692c:	00002d97          	auipc	s11,0x2
    80006930:	cb4d8d93          	addi	s11,s11,-844 # 800085e0 <digits>
    80006934:	00f77793          	andi	a5,a4,15
    80006938:	00fd87b3          	add	a5,s11,a5
    8000693c:	0007c683          	lbu	a3,0(a5)
    80006940:	00f00613          	li	a2,15
    80006944:	0007079b          	sext.w	a5,a4
    80006948:	f8d40023          	sb	a3,-128(s0)
    8000694c:	0047559b          	srliw	a1,a4,0x4
    80006950:	0047569b          	srliw	a3,a4,0x4
    80006954:	00000c93          	li	s9,0
    80006958:	0ee65063          	bge	a2,a4,80006a38 <__printf+0x410>
    8000695c:	00f6f693          	andi	a3,a3,15
    80006960:	00dd86b3          	add	a3,s11,a3
    80006964:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006968:	0087d79b          	srliw	a5,a5,0x8
    8000696c:	00100c93          	li	s9,1
    80006970:	f8d400a3          	sb	a3,-127(s0)
    80006974:	0cb67263          	bgeu	a2,a1,80006a38 <__printf+0x410>
    80006978:	00f7f693          	andi	a3,a5,15
    8000697c:	00dd86b3          	add	a3,s11,a3
    80006980:	0006c583          	lbu	a1,0(a3)
    80006984:	00f00613          	li	a2,15
    80006988:	0047d69b          	srliw	a3,a5,0x4
    8000698c:	f8b40123          	sb	a1,-126(s0)
    80006990:	0047d593          	srli	a1,a5,0x4
    80006994:	28f67e63          	bgeu	a2,a5,80006c30 <__printf+0x608>
    80006998:	00f6f693          	andi	a3,a3,15
    8000699c:	00dd86b3          	add	a3,s11,a3
    800069a0:	0006c503          	lbu	a0,0(a3)
    800069a4:	0087d813          	srli	a6,a5,0x8
    800069a8:	0087d69b          	srliw	a3,a5,0x8
    800069ac:	f8a401a3          	sb	a0,-125(s0)
    800069b0:	28b67663          	bgeu	a2,a1,80006c3c <__printf+0x614>
    800069b4:	00f6f693          	andi	a3,a3,15
    800069b8:	00dd86b3          	add	a3,s11,a3
    800069bc:	0006c583          	lbu	a1,0(a3)
    800069c0:	00c7d513          	srli	a0,a5,0xc
    800069c4:	00c7d69b          	srliw	a3,a5,0xc
    800069c8:	f8b40223          	sb	a1,-124(s0)
    800069cc:	29067a63          	bgeu	a2,a6,80006c60 <__printf+0x638>
    800069d0:	00f6f693          	andi	a3,a3,15
    800069d4:	00dd86b3          	add	a3,s11,a3
    800069d8:	0006c583          	lbu	a1,0(a3)
    800069dc:	0107d813          	srli	a6,a5,0x10
    800069e0:	0107d69b          	srliw	a3,a5,0x10
    800069e4:	f8b402a3          	sb	a1,-123(s0)
    800069e8:	28a67263          	bgeu	a2,a0,80006c6c <__printf+0x644>
    800069ec:	00f6f693          	andi	a3,a3,15
    800069f0:	00dd86b3          	add	a3,s11,a3
    800069f4:	0006c683          	lbu	a3,0(a3)
    800069f8:	0147d79b          	srliw	a5,a5,0x14
    800069fc:	f8d40323          	sb	a3,-122(s0)
    80006a00:	21067663          	bgeu	a2,a6,80006c0c <__printf+0x5e4>
    80006a04:	02079793          	slli	a5,a5,0x20
    80006a08:	0207d793          	srli	a5,a5,0x20
    80006a0c:	00fd8db3          	add	s11,s11,a5
    80006a10:	000dc683          	lbu	a3,0(s11)
    80006a14:	00800793          	li	a5,8
    80006a18:	00700c93          	li	s9,7
    80006a1c:	f8d403a3          	sb	a3,-121(s0)
    80006a20:	00075c63          	bgez	a4,80006a38 <__printf+0x410>
    80006a24:	f9040713          	addi	a4,s0,-112
    80006a28:	00f70733          	add	a4,a4,a5
    80006a2c:	02d00693          	li	a3,45
    80006a30:	fed70823          	sb	a3,-16(a4)
    80006a34:	00078c93          	mv	s9,a5
    80006a38:	f8040793          	addi	a5,s0,-128
    80006a3c:	01978cb3          	add	s9,a5,s9
    80006a40:	f7f40d13          	addi	s10,s0,-129
    80006a44:	000cc503          	lbu	a0,0(s9)
    80006a48:	fffc8c93          	addi	s9,s9,-1
    80006a4c:	00000097          	auipc	ra,0x0
    80006a50:	9f8080e7          	jalr	-1544(ra) # 80006444 <consputc>
    80006a54:	ff9d18e3          	bne	s10,s9,80006a44 <__printf+0x41c>
    80006a58:	0100006f          	j	80006a68 <__printf+0x440>
    80006a5c:	00000097          	auipc	ra,0x0
    80006a60:	9e8080e7          	jalr	-1560(ra) # 80006444 <consputc>
    80006a64:	000c8493          	mv	s1,s9
    80006a68:	00094503          	lbu	a0,0(s2)
    80006a6c:	c60510e3          	bnez	a0,800066cc <__printf+0xa4>
    80006a70:	e40c0ee3          	beqz	s8,800068cc <__printf+0x2a4>
    80006a74:	00005517          	auipc	a0,0x5
    80006a78:	a3c50513          	addi	a0,a0,-1476 # 8000b4b0 <pr>
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	94c080e7          	jalr	-1716(ra) # 800073c8 <release>
    80006a84:	e49ff06f          	j	800068cc <__printf+0x2a4>
    80006a88:	f7843783          	ld	a5,-136(s0)
    80006a8c:	03000513          	li	a0,48
    80006a90:	01000d13          	li	s10,16
    80006a94:	00878713          	addi	a4,a5,8
    80006a98:	0007bc83          	ld	s9,0(a5)
    80006a9c:	f6e43c23          	sd	a4,-136(s0)
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	9a4080e7          	jalr	-1628(ra) # 80006444 <consputc>
    80006aa8:	07800513          	li	a0,120
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	998080e7          	jalr	-1640(ra) # 80006444 <consputc>
    80006ab4:	00002d97          	auipc	s11,0x2
    80006ab8:	b2cd8d93          	addi	s11,s11,-1236 # 800085e0 <digits>
    80006abc:	03ccd793          	srli	a5,s9,0x3c
    80006ac0:	00fd87b3          	add	a5,s11,a5
    80006ac4:	0007c503          	lbu	a0,0(a5)
    80006ac8:	fffd0d1b          	addiw	s10,s10,-1
    80006acc:	004c9c93          	slli	s9,s9,0x4
    80006ad0:	00000097          	auipc	ra,0x0
    80006ad4:	974080e7          	jalr	-1676(ra) # 80006444 <consputc>
    80006ad8:	fe0d12e3          	bnez	s10,80006abc <__printf+0x494>
    80006adc:	f8dff06f          	j	80006a68 <__printf+0x440>
    80006ae0:	f7843783          	ld	a5,-136(s0)
    80006ae4:	0007bc83          	ld	s9,0(a5)
    80006ae8:	00878793          	addi	a5,a5,8
    80006aec:	f6f43c23          	sd	a5,-136(s0)
    80006af0:	000c9a63          	bnez	s9,80006b04 <__printf+0x4dc>
    80006af4:	1080006f          	j	80006bfc <__printf+0x5d4>
    80006af8:	001c8c93          	addi	s9,s9,1
    80006afc:	00000097          	auipc	ra,0x0
    80006b00:	948080e7          	jalr	-1720(ra) # 80006444 <consputc>
    80006b04:	000cc503          	lbu	a0,0(s9)
    80006b08:	fe0518e3          	bnez	a0,80006af8 <__printf+0x4d0>
    80006b0c:	f5dff06f          	j	80006a68 <__printf+0x440>
    80006b10:	02500513          	li	a0,37
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	930080e7          	jalr	-1744(ra) # 80006444 <consputc>
    80006b1c:	000c8513          	mv	a0,s9
    80006b20:	00000097          	auipc	ra,0x0
    80006b24:	924080e7          	jalr	-1756(ra) # 80006444 <consputc>
    80006b28:	f41ff06f          	j	80006a68 <__printf+0x440>
    80006b2c:	02500513          	li	a0,37
    80006b30:	00000097          	auipc	ra,0x0
    80006b34:	914080e7          	jalr	-1772(ra) # 80006444 <consputc>
    80006b38:	f31ff06f          	j	80006a68 <__printf+0x440>
    80006b3c:	00030513          	mv	a0,t1
    80006b40:	00000097          	auipc	ra,0x0
    80006b44:	7bc080e7          	jalr	1980(ra) # 800072fc <acquire>
    80006b48:	b4dff06f          	j	80006694 <__printf+0x6c>
    80006b4c:	40c0053b          	negw	a0,a2
    80006b50:	00a00713          	li	a4,10
    80006b54:	02e576bb          	remuw	a3,a0,a4
    80006b58:	00002d97          	auipc	s11,0x2
    80006b5c:	a88d8d93          	addi	s11,s11,-1400 # 800085e0 <digits>
    80006b60:	ff700593          	li	a1,-9
    80006b64:	02069693          	slli	a3,a3,0x20
    80006b68:	0206d693          	srli	a3,a3,0x20
    80006b6c:	00dd86b3          	add	a3,s11,a3
    80006b70:	0006c683          	lbu	a3,0(a3)
    80006b74:	02e557bb          	divuw	a5,a0,a4
    80006b78:	f8d40023          	sb	a3,-128(s0)
    80006b7c:	10b65e63          	bge	a2,a1,80006c98 <__printf+0x670>
    80006b80:	06300593          	li	a1,99
    80006b84:	02e7f6bb          	remuw	a3,a5,a4
    80006b88:	02069693          	slli	a3,a3,0x20
    80006b8c:	0206d693          	srli	a3,a3,0x20
    80006b90:	00dd86b3          	add	a3,s11,a3
    80006b94:	0006c683          	lbu	a3,0(a3)
    80006b98:	02e7d73b          	divuw	a4,a5,a4
    80006b9c:	00200793          	li	a5,2
    80006ba0:	f8d400a3          	sb	a3,-127(s0)
    80006ba4:	bca5ece3          	bltu	a1,a0,8000677c <__printf+0x154>
    80006ba8:	ce5ff06f          	j	8000688c <__printf+0x264>
    80006bac:	40e007bb          	negw	a5,a4
    80006bb0:	00002d97          	auipc	s11,0x2
    80006bb4:	a30d8d93          	addi	s11,s11,-1488 # 800085e0 <digits>
    80006bb8:	00f7f693          	andi	a3,a5,15
    80006bbc:	00dd86b3          	add	a3,s11,a3
    80006bc0:	0006c583          	lbu	a1,0(a3)
    80006bc4:	ff100613          	li	a2,-15
    80006bc8:	0047d69b          	srliw	a3,a5,0x4
    80006bcc:	f8b40023          	sb	a1,-128(s0)
    80006bd0:	0047d59b          	srliw	a1,a5,0x4
    80006bd4:	0ac75e63          	bge	a4,a2,80006c90 <__printf+0x668>
    80006bd8:	00f6f693          	andi	a3,a3,15
    80006bdc:	00dd86b3          	add	a3,s11,a3
    80006be0:	0006c603          	lbu	a2,0(a3)
    80006be4:	00f00693          	li	a3,15
    80006be8:	0087d79b          	srliw	a5,a5,0x8
    80006bec:	f8c400a3          	sb	a2,-127(s0)
    80006bf0:	d8b6e4e3          	bltu	a3,a1,80006978 <__printf+0x350>
    80006bf4:	00200793          	li	a5,2
    80006bf8:	e2dff06f          	j	80006a24 <__printf+0x3fc>
    80006bfc:	00002c97          	auipc	s9,0x2
    80006c00:	9c4c8c93          	addi	s9,s9,-1596 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80006c04:	02800513          	li	a0,40
    80006c08:	ef1ff06f          	j	80006af8 <__printf+0x4d0>
    80006c0c:	00700793          	li	a5,7
    80006c10:	00600c93          	li	s9,6
    80006c14:	e0dff06f          	j	80006a20 <__printf+0x3f8>
    80006c18:	00700793          	li	a5,7
    80006c1c:	00600c93          	li	s9,6
    80006c20:	c69ff06f          	j	80006888 <__printf+0x260>
    80006c24:	00300793          	li	a5,3
    80006c28:	00200c93          	li	s9,2
    80006c2c:	c5dff06f          	j	80006888 <__printf+0x260>
    80006c30:	00300793          	li	a5,3
    80006c34:	00200c93          	li	s9,2
    80006c38:	de9ff06f          	j	80006a20 <__printf+0x3f8>
    80006c3c:	00400793          	li	a5,4
    80006c40:	00300c93          	li	s9,3
    80006c44:	dddff06f          	j	80006a20 <__printf+0x3f8>
    80006c48:	00400793          	li	a5,4
    80006c4c:	00300c93          	li	s9,3
    80006c50:	c39ff06f          	j	80006888 <__printf+0x260>
    80006c54:	00500793          	li	a5,5
    80006c58:	00400c93          	li	s9,4
    80006c5c:	c2dff06f          	j	80006888 <__printf+0x260>
    80006c60:	00500793          	li	a5,5
    80006c64:	00400c93          	li	s9,4
    80006c68:	db9ff06f          	j	80006a20 <__printf+0x3f8>
    80006c6c:	00600793          	li	a5,6
    80006c70:	00500c93          	li	s9,5
    80006c74:	dadff06f          	j	80006a20 <__printf+0x3f8>
    80006c78:	00600793          	li	a5,6
    80006c7c:	00500c93          	li	s9,5
    80006c80:	c09ff06f          	j	80006888 <__printf+0x260>
    80006c84:	00800793          	li	a5,8
    80006c88:	00700c93          	li	s9,7
    80006c8c:	bfdff06f          	j	80006888 <__printf+0x260>
    80006c90:	00100793          	li	a5,1
    80006c94:	d91ff06f          	j	80006a24 <__printf+0x3fc>
    80006c98:	00100793          	li	a5,1
    80006c9c:	bf1ff06f          	j	8000688c <__printf+0x264>
    80006ca0:	00900793          	li	a5,9
    80006ca4:	00800c93          	li	s9,8
    80006ca8:	be1ff06f          	j	80006888 <__printf+0x260>
    80006cac:	00002517          	auipc	a0,0x2
    80006cb0:	91c50513          	addi	a0,a0,-1764 # 800085c8 <CONSOLE_STATUS+0x5b8>
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	918080e7          	jalr	-1768(ra) # 800065cc <panic>

0000000080006cbc <printfinit>:
    80006cbc:	fe010113          	addi	sp,sp,-32
    80006cc0:	00813823          	sd	s0,16(sp)
    80006cc4:	00913423          	sd	s1,8(sp)
    80006cc8:	00113c23          	sd	ra,24(sp)
    80006ccc:	02010413          	addi	s0,sp,32
    80006cd0:	00004497          	auipc	s1,0x4
    80006cd4:	7e048493          	addi	s1,s1,2016 # 8000b4b0 <pr>
    80006cd8:	00048513          	mv	a0,s1
    80006cdc:	00002597          	auipc	a1,0x2
    80006ce0:	8fc58593          	addi	a1,a1,-1796 # 800085d8 <CONSOLE_STATUS+0x5c8>
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	5f4080e7          	jalr	1524(ra) # 800072d8 <initlock>
    80006cec:	01813083          	ld	ra,24(sp)
    80006cf0:	01013403          	ld	s0,16(sp)
    80006cf4:	0004ac23          	sw	zero,24(s1)
    80006cf8:	00813483          	ld	s1,8(sp)
    80006cfc:	02010113          	addi	sp,sp,32
    80006d00:	00008067          	ret

0000000080006d04 <uartinit>:
    80006d04:	ff010113          	addi	sp,sp,-16
    80006d08:	00813423          	sd	s0,8(sp)
    80006d0c:	01010413          	addi	s0,sp,16
    80006d10:	100007b7          	lui	a5,0x10000
    80006d14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006d18:	f8000713          	li	a4,-128
    80006d1c:	00e781a3          	sb	a4,3(a5)
    80006d20:	00300713          	li	a4,3
    80006d24:	00e78023          	sb	a4,0(a5)
    80006d28:	000780a3          	sb	zero,1(a5)
    80006d2c:	00e781a3          	sb	a4,3(a5)
    80006d30:	00700693          	li	a3,7
    80006d34:	00d78123          	sb	a3,2(a5)
    80006d38:	00e780a3          	sb	a4,1(a5)
    80006d3c:	00813403          	ld	s0,8(sp)
    80006d40:	01010113          	addi	sp,sp,16
    80006d44:	00008067          	ret

0000000080006d48 <uartputc>:
    80006d48:	00003797          	auipc	a5,0x3
    80006d4c:	4b07a783          	lw	a5,1200(a5) # 8000a1f8 <panicked>
    80006d50:	00078463          	beqz	a5,80006d58 <uartputc+0x10>
    80006d54:	0000006f          	j	80006d54 <uartputc+0xc>
    80006d58:	fd010113          	addi	sp,sp,-48
    80006d5c:	02813023          	sd	s0,32(sp)
    80006d60:	00913c23          	sd	s1,24(sp)
    80006d64:	01213823          	sd	s2,16(sp)
    80006d68:	01313423          	sd	s3,8(sp)
    80006d6c:	02113423          	sd	ra,40(sp)
    80006d70:	03010413          	addi	s0,sp,48
    80006d74:	00003917          	auipc	s2,0x3
    80006d78:	48c90913          	addi	s2,s2,1164 # 8000a200 <uart_tx_r>
    80006d7c:	00093783          	ld	a5,0(s2)
    80006d80:	00003497          	auipc	s1,0x3
    80006d84:	48848493          	addi	s1,s1,1160 # 8000a208 <uart_tx_w>
    80006d88:	0004b703          	ld	a4,0(s1)
    80006d8c:	02078693          	addi	a3,a5,32
    80006d90:	00050993          	mv	s3,a0
    80006d94:	02e69c63          	bne	a3,a4,80006dcc <uartputc+0x84>
    80006d98:	00001097          	auipc	ra,0x1
    80006d9c:	834080e7          	jalr	-1996(ra) # 800075cc <push_on>
    80006da0:	00093783          	ld	a5,0(s2)
    80006da4:	0004b703          	ld	a4,0(s1)
    80006da8:	02078793          	addi	a5,a5,32
    80006dac:	00e79463          	bne	a5,a4,80006db4 <uartputc+0x6c>
    80006db0:	0000006f          	j	80006db0 <uartputc+0x68>
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	88c080e7          	jalr	-1908(ra) # 80007640 <pop_on>
    80006dbc:	00093783          	ld	a5,0(s2)
    80006dc0:	0004b703          	ld	a4,0(s1)
    80006dc4:	02078693          	addi	a3,a5,32
    80006dc8:	fce688e3          	beq	a3,a4,80006d98 <uartputc+0x50>
    80006dcc:	01f77693          	andi	a3,a4,31
    80006dd0:	00004597          	auipc	a1,0x4
    80006dd4:	70058593          	addi	a1,a1,1792 # 8000b4d0 <uart_tx_buf>
    80006dd8:	00d586b3          	add	a3,a1,a3
    80006ddc:	00170713          	addi	a4,a4,1
    80006de0:	01368023          	sb	s3,0(a3)
    80006de4:	00e4b023          	sd	a4,0(s1)
    80006de8:	10000637          	lui	a2,0x10000
    80006dec:	02f71063          	bne	a4,a5,80006e0c <uartputc+0xc4>
    80006df0:	0340006f          	j	80006e24 <uartputc+0xdc>
    80006df4:	00074703          	lbu	a4,0(a4)
    80006df8:	00f93023          	sd	a5,0(s2)
    80006dfc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006e00:	00093783          	ld	a5,0(s2)
    80006e04:	0004b703          	ld	a4,0(s1)
    80006e08:	00f70e63          	beq	a4,a5,80006e24 <uartputc+0xdc>
    80006e0c:	00564683          	lbu	a3,5(a2)
    80006e10:	01f7f713          	andi	a4,a5,31
    80006e14:	00e58733          	add	a4,a1,a4
    80006e18:	0206f693          	andi	a3,a3,32
    80006e1c:	00178793          	addi	a5,a5,1
    80006e20:	fc069ae3          	bnez	a3,80006df4 <uartputc+0xac>
    80006e24:	02813083          	ld	ra,40(sp)
    80006e28:	02013403          	ld	s0,32(sp)
    80006e2c:	01813483          	ld	s1,24(sp)
    80006e30:	01013903          	ld	s2,16(sp)
    80006e34:	00813983          	ld	s3,8(sp)
    80006e38:	03010113          	addi	sp,sp,48
    80006e3c:	00008067          	ret

0000000080006e40 <uartputc_sync>:
    80006e40:	ff010113          	addi	sp,sp,-16
    80006e44:	00813423          	sd	s0,8(sp)
    80006e48:	01010413          	addi	s0,sp,16
    80006e4c:	00003717          	auipc	a4,0x3
    80006e50:	3ac72703          	lw	a4,940(a4) # 8000a1f8 <panicked>
    80006e54:	02071663          	bnez	a4,80006e80 <uartputc_sync+0x40>
    80006e58:	00050793          	mv	a5,a0
    80006e5c:	100006b7          	lui	a3,0x10000
    80006e60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006e64:	02077713          	andi	a4,a4,32
    80006e68:	fe070ce3          	beqz	a4,80006e60 <uartputc_sync+0x20>
    80006e6c:	0ff7f793          	andi	a5,a5,255
    80006e70:	00f68023          	sb	a5,0(a3)
    80006e74:	00813403          	ld	s0,8(sp)
    80006e78:	01010113          	addi	sp,sp,16
    80006e7c:	00008067          	ret
    80006e80:	0000006f          	j	80006e80 <uartputc_sync+0x40>

0000000080006e84 <uartstart>:
    80006e84:	ff010113          	addi	sp,sp,-16
    80006e88:	00813423          	sd	s0,8(sp)
    80006e8c:	01010413          	addi	s0,sp,16
    80006e90:	00003617          	auipc	a2,0x3
    80006e94:	37060613          	addi	a2,a2,880 # 8000a200 <uart_tx_r>
    80006e98:	00003517          	auipc	a0,0x3
    80006e9c:	37050513          	addi	a0,a0,880 # 8000a208 <uart_tx_w>
    80006ea0:	00063783          	ld	a5,0(a2)
    80006ea4:	00053703          	ld	a4,0(a0)
    80006ea8:	04f70263          	beq	a4,a5,80006eec <uartstart+0x68>
    80006eac:	100005b7          	lui	a1,0x10000
    80006eb0:	00004817          	auipc	a6,0x4
    80006eb4:	62080813          	addi	a6,a6,1568 # 8000b4d0 <uart_tx_buf>
    80006eb8:	01c0006f          	j	80006ed4 <uartstart+0x50>
    80006ebc:	0006c703          	lbu	a4,0(a3)
    80006ec0:	00f63023          	sd	a5,0(a2)
    80006ec4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ec8:	00063783          	ld	a5,0(a2)
    80006ecc:	00053703          	ld	a4,0(a0)
    80006ed0:	00f70e63          	beq	a4,a5,80006eec <uartstart+0x68>
    80006ed4:	01f7f713          	andi	a4,a5,31
    80006ed8:	00e806b3          	add	a3,a6,a4
    80006edc:	0055c703          	lbu	a4,5(a1)
    80006ee0:	00178793          	addi	a5,a5,1
    80006ee4:	02077713          	andi	a4,a4,32
    80006ee8:	fc071ae3          	bnez	a4,80006ebc <uartstart+0x38>
    80006eec:	00813403          	ld	s0,8(sp)
    80006ef0:	01010113          	addi	sp,sp,16
    80006ef4:	00008067          	ret

0000000080006ef8 <uartgetc>:
    80006ef8:	ff010113          	addi	sp,sp,-16
    80006efc:	00813423          	sd	s0,8(sp)
    80006f00:	01010413          	addi	s0,sp,16
    80006f04:	10000737          	lui	a4,0x10000
    80006f08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006f0c:	0017f793          	andi	a5,a5,1
    80006f10:	00078c63          	beqz	a5,80006f28 <uartgetc+0x30>
    80006f14:	00074503          	lbu	a0,0(a4)
    80006f18:	0ff57513          	andi	a0,a0,255
    80006f1c:	00813403          	ld	s0,8(sp)
    80006f20:	01010113          	addi	sp,sp,16
    80006f24:	00008067          	ret
    80006f28:	fff00513          	li	a0,-1
    80006f2c:	ff1ff06f          	j	80006f1c <uartgetc+0x24>

0000000080006f30 <uartintr>:
    80006f30:	100007b7          	lui	a5,0x10000
    80006f34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006f38:	0017f793          	andi	a5,a5,1
    80006f3c:	0a078463          	beqz	a5,80006fe4 <uartintr+0xb4>
    80006f40:	fe010113          	addi	sp,sp,-32
    80006f44:	00813823          	sd	s0,16(sp)
    80006f48:	00913423          	sd	s1,8(sp)
    80006f4c:	00113c23          	sd	ra,24(sp)
    80006f50:	02010413          	addi	s0,sp,32
    80006f54:	100004b7          	lui	s1,0x10000
    80006f58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006f5c:	0ff57513          	andi	a0,a0,255
    80006f60:	fffff097          	auipc	ra,0xfffff
    80006f64:	534080e7          	jalr	1332(ra) # 80006494 <consoleintr>
    80006f68:	0054c783          	lbu	a5,5(s1)
    80006f6c:	0017f793          	andi	a5,a5,1
    80006f70:	fe0794e3          	bnez	a5,80006f58 <uartintr+0x28>
    80006f74:	00003617          	auipc	a2,0x3
    80006f78:	28c60613          	addi	a2,a2,652 # 8000a200 <uart_tx_r>
    80006f7c:	00003517          	auipc	a0,0x3
    80006f80:	28c50513          	addi	a0,a0,652 # 8000a208 <uart_tx_w>
    80006f84:	00063783          	ld	a5,0(a2)
    80006f88:	00053703          	ld	a4,0(a0)
    80006f8c:	04f70263          	beq	a4,a5,80006fd0 <uartintr+0xa0>
    80006f90:	100005b7          	lui	a1,0x10000
    80006f94:	00004817          	auipc	a6,0x4
    80006f98:	53c80813          	addi	a6,a6,1340 # 8000b4d0 <uart_tx_buf>
    80006f9c:	01c0006f          	j	80006fb8 <uartintr+0x88>
    80006fa0:	0006c703          	lbu	a4,0(a3)
    80006fa4:	00f63023          	sd	a5,0(a2)
    80006fa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006fac:	00063783          	ld	a5,0(a2)
    80006fb0:	00053703          	ld	a4,0(a0)
    80006fb4:	00f70e63          	beq	a4,a5,80006fd0 <uartintr+0xa0>
    80006fb8:	01f7f713          	andi	a4,a5,31
    80006fbc:	00e806b3          	add	a3,a6,a4
    80006fc0:	0055c703          	lbu	a4,5(a1)
    80006fc4:	00178793          	addi	a5,a5,1
    80006fc8:	02077713          	andi	a4,a4,32
    80006fcc:	fc071ae3          	bnez	a4,80006fa0 <uartintr+0x70>
    80006fd0:	01813083          	ld	ra,24(sp)
    80006fd4:	01013403          	ld	s0,16(sp)
    80006fd8:	00813483          	ld	s1,8(sp)
    80006fdc:	02010113          	addi	sp,sp,32
    80006fe0:	00008067          	ret
    80006fe4:	00003617          	auipc	a2,0x3
    80006fe8:	21c60613          	addi	a2,a2,540 # 8000a200 <uart_tx_r>
    80006fec:	00003517          	auipc	a0,0x3
    80006ff0:	21c50513          	addi	a0,a0,540 # 8000a208 <uart_tx_w>
    80006ff4:	00063783          	ld	a5,0(a2)
    80006ff8:	00053703          	ld	a4,0(a0)
    80006ffc:	04f70263          	beq	a4,a5,80007040 <uartintr+0x110>
    80007000:	100005b7          	lui	a1,0x10000
    80007004:	00004817          	auipc	a6,0x4
    80007008:	4cc80813          	addi	a6,a6,1228 # 8000b4d0 <uart_tx_buf>
    8000700c:	01c0006f          	j	80007028 <uartintr+0xf8>
    80007010:	0006c703          	lbu	a4,0(a3)
    80007014:	00f63023          	sd	a5,0(a2)
    80007018:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000701c:	00063783          	ld	a5,0(a2)
    80007020:	00053703          	ld	a4,0(a0)
    80007024:	02f70063          	beq	a4,a5,80007044 <uartintr+0x114>
    80007028:	01f7f713          	andi	a4,a5,31
    8000702c:	00e806b3          	add	a3,a6,a4
    80007030:	0055c703          	lbu	a4,5(a1)
    80007034:	00178793          	addi	a5,a5,1
    80007038:	02077713          	andi	a4,a4,32
    8000703c:	fc071ae3          	bnez	a4,80007010 <uartintr+0xe0>
    80007040:	00008067          	ret
    80007044:	00008067          	ret

0000000080007048 <kinit>:
    80007048:	fc010113          	addi	sp,sp,-64
    8000704c:	02913423          	sd	s1,40(sp)
    80007050:	fffff7b7          	lui	a5,0xfffff
    80007054:	00005497          	auipc	s1,0x5
    80007058:	49b48493          	addi	s1,s1,1179 # 8000c4ef <end+0xfff>
    8000705c:	02813823          	sd	s0,48(sp)
    80007060:	01313c23          	sd	s3,24(sp)
    80007064:	00f4f4b3          	and	s1,s1,a5
    80007068:	02113c23          	sd	ra,56(sp)
    8000706c:	03213023          	sd	s2,32(sp)
    80007070:	01413823          	sd	s4,16(sp)
    80007074:	01513423          	sd	s5,8(sp)
    80007078:	04010413          	addi	s0,sp,64
    8000707c:	000017b7          	lui	a5,0x1
    80007080:	01100993          	li	s3,17
    80007084:	00f487b3          	add	a5,s1,a5
    80007088:	01b99993          	slli	s3,s3,0x1b
    8000708c:	06f9e063          	bltu	s3,a5,800070ec <kinit+0xa4>
    80007090:	00004a97          	auipc	s5,0x4
    80007094:	460a8a93          	addi	s5,s5,1120 # 8000b4f0 <end>
    80007098:	0754ec63          	bltu	s1,s5,80007110 <kinit+0xc8>
    8000709c:	0734fa63          	bgeu	s1,s3,80007110 <kinit+0xc8>
    800070a0:	00088a37          	lui	s4,0x88
    800070a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800070a8:	00003917          	auipc	s2,0x3
    800070ac:	16890913          	addi	s2,s2,360 # 8000a210 <kmem>
    800070b0:	00ca1a13          	slli	s4,s4,0xc
    800070b4:	0140006f          	j	800070c8 <kinit+0x80>
    800070b8:	000017b7          	lui	a5,0x1
    800070bc:	00f484b3          	add	s1,s1,a5
    800070c0:	0554e863          	bltu	s1,s5,80007110 <kinit+0xc8>
    800070c4:	0534f663          	bgeu	s1,s3,80007110 <kinit+0xc8>
    800070c8:	00001637          	lui	a2,0x1
    800070cc:	00100593          	li	a1,1
    800070d0:	00048513          	mv	a0,s1
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	5e4080e7          	jalr	1508(ra) # 800076b8 <__memset>
    800070dc:	00093783          	ld	a5,0(s2)
    800070e0:	00f4b023          	sd	a5,0(s1)
    800070e4:	00993023          	sd	s1,0(s2)
    800070e8:	fd4498e3          	bne	s1,s4,800070b8 <kinit+0x70>
    800070ec:	03813083          	ld	ra,56(sp)
    800070f0:	03013403          	ld	s0,48(sp)
    800070f4:	02813483          	ld	s1,40(sp)
    800070f8:	02013903          	ld	s2,32(sp)
    800070fc:	01813983          	ld	s3,24(sp)
    80007100:	01013a03          	ld	s4,16(sp)
    80007104:	00813a83          	ld	s5,8(sp)
    80007108:	04010113          	addi	sp,sp,64
    8000710c:	00008067          	ret
    80007110:	00001517          	auipc	a0,0x1
    80007114:	4e850513          	addi	a0,a0,1256 # 800085f8 <digits+0x18>
    80007118:	fffff097          	auipc	ra,0xfffff
    8000711c:	4b4080e7          	jalr	1204(ra) # 800065cc <panic>

0000000080007120 <freerange>:
    80007120:	fc010113          	addi	sp,sp,-64
    80007124:	000017b7          	lui	a5,0x1
    80007128:	02913423          	sd	s1,40(sp)
    8000712c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007130:	009504b3          	add	s1,a0,s1
    80007134:	fffff537          	lui	a0,0xfffff
    80007138:	02813823          	sd	s0,48(sp)
    8000713c:	02113c23          	sd	ra,56(sp)
    80007140:	03213023          	sd	s2,32(sp)
    80007144:	01313c23          	sd	s3,24(sp)
    80007148:	01413823          	sd	s4,16(sp)
    8000714c:	01513423          	sd	s5,8(sp)
    80007150:	01613023          	sd	s6,0(sp)
    80007154:	04010413          	addi	s0,sp,64
    80007158:	00a4f4b3          	and	s1,s1,a0
    8000715c:	00f487b3          	add	a5,s1,a5
    80007160:	06f5e463          	bltu	a1,a5,800071c8 <freerange+0xa8>
    80007164:	00004a97          	auipc	s5,0x4
    80007168:	38ca8a93          	addi	s5,s5,908 # 8000b4f0 <end>
    8000716c:	0954e263          	bltu	s1,s5,800071f0 <freerange+0xd0>
    80007170:	01100993          	li	s3,17
    80007174:	01b99993          	slli	s3,s3,0x1b
    80007178:	0734fc63          	bgeu	s1,s3,800071f0 <freerange+0xd0>
    8000717c:	00058a13          	mv	s4,a1
    80007180:	00003917          	auipc	s2,0x3
    80007184:	09090913          	addi	s2,s2,144 # 8000a210 <kmem>
    80007188:	00002b37          	lui	s6,0x2
    8000718c:	0140006f          	j	800071a0 <freerange+0x80>
    80007190:	000017b7          	lui	a5,0x1
    80007194:	00f484b3          	add	s1,s1,a5
    80007198:	0554ec63          	bltu	s1,s5,800071f0 <freerange+0xd0>
    8000719c:	0534fa63          	bgeu	s1,s3,800071f0 <freerange+0xd0>
    800071a0:	00001637          	lui	a2,0x1
    800071a4:	00100593          	li	a1,1
    800071a8:	00048513          	mv	a0,s1
    800071ac:	00000097          	auipc	ra,0x0
    800071b0:	50c080e7          	jalr	1292(ra) # 800076b8 <__memset>
    800071b4:	00093703          	ld	a4,0(s2)
    800071b8:	016487b3          	add	a5,s1,s6
    800071bc:	00e4b023          	sd	a4,0(s1)
    800071c0:	00993023          	sd	s1,0(s2)
    800071c4:	fcfa76e3          	bgeu	s4,a5,80007190 <freerange+0x70>
    800071c8:	03813083          	ld	ra,56(sp)
    800071cc:	03013403          	ld	s0,48(sp)
    800071d0:	02813483          	ld	s1,40(sp)
    800071d4:	02013903          	ld	s2,32(sp)
    800071d8:	01813983          	ld	s3,24(sp)
    800071dc:	01013a03          	ld	s4,16(sp)
    800071e0:	00813a83          	ld	s5,8(sp)
    800071e4:	00013b03          	ld	s6,0(sp)
    800071e8:	04010113          	addi	sp,sp,64
    800071ec:	00008067          	ret
    800071f0:	00001517          	auipc	a0,0x1
    800071f4:	40850513          	addi	a0,a0,1032 # 800085f8 <digits+0x18>
    800071f8:	fffff097          	auipc	ra,0xfffff
    800071fc:	3d4080e7          	jalr	980(ra) # 800065cc <panic>

0000000080007200 <kfree>:
    80007200:	fe010113          	addi	sp,sp,-32
    80007204:	00813823          	sd	s0,16(sp)
    80007208:	00113c23          	sd	ra,24(sp)
    8000720c:	00913423          	sd	s1,8(sp)
    80007210:	02010413          	addi	s0,sp,32
    80007214:	03451793          	slli	a5,a0,0x34
    80007218:	04079c63          	bnez	a5,80007270 <kfree+0x70>
    8000721c:	00004797          	auipc	a5,0x4
    80007220:	2d478793          	addi	a5,a5,724 # 8000b4f0 <end>
    80007224:	00050493          	mv	s1,a0
    80007228:	04f56463          	bltu	a0,a5,80007270 <kfree+0x70>
    8000722c:	01100793          	li	a5,17
    80007230:	01b79793          	slli	a5,a5,0x1b
    80007234:	02f57e63          	bgeu	a0,a5,80007270 <kfree+0x70>
    80007238:	00001637          	lui	a2,0x1
    8000723c:	00100593          	li	a1,1
    80007240:	00000097          	auipc	ra,0x0
    80007244:	478080e7          	jalr	1144(ra) # 800076b8 <__memset>
    80007248:	00003797          	auipc	a5,0x3
    8000724c:	fc878793          	addi	a5,a5,-56 # 8000a210 <kmem>
    80007250:	0007b703          	ld	a4,0(a5)
    80007254:	01813083          	ld	ra,24(sp)
    80007258:	01013403          	ld	s0,16(sp)
    8000725c:	00e4b023          	sd	a4,0(s1)
    80007260:	0097b023          	sd	s1,0(a5)
    80007264:	00813483          	ld	s1,8(sp)
    80007268:	02010113          	addi	sp,sp,32
    8000726c:	00008067          	ret
    80007270:	00001517          	auipc	a0,0x1
    80007274:	38850513          	addi	a0,a0,904 # 800085f8 <digits+0x18>
    80007278:	fffff097          	auipc	ra,0xfffff
    8000727c:	354080e7          	jalr	852(ra) # 800065cc <panic>

0000000080007280 <kalloc>:
    80007280:	fe010113          	addi	sp,sp,-32
    80007284:	00813823          	sd	s0,16(sp)
    80007288:	00913423          	sd	s1,8(sp)
    8000728c:	00113c23          	sd	ra,24(sp)
    80007290:	02010413          	addi	s0,sp,32
    80007294:	00003797          	auipc	a5,0x3
    80007298:	f7c78793          	addi	a5,a5,-132 # 8000a210 <kmem>
    8000729c:	0007b483          	ld	s1,0(a5)
    800072a0:	02048063          	beqz	s1,800072c0 <kalloc+0x40>
    800072a4:	0004b703          	ld	a4,0(s1)
    800072a8:	00001637          	lui	a2,0x1
    800072ac:	00500593          	li	a1,5
    800072b0:	00048513          	mv	a0,s1
    800072b4:	00e7b023          	sd	a4,0(a5)
    800072b8:	00000097          	auipc	ra,0x0
    800072bc:	400080e7          	jalr	1024(ra) # 800076b8 <__memset>
    800072c0:	01813083          	ld	ra,24(sp)
    800072c4:	01013403          	ld	s0,16(sp)
    800072c8:	00048513          	mv	a0,s1
    800072cc:	00813483          	ld	s1,8(sp)
    800072d0:	02010113          	addi	sp,sp,32
    800072d4:	00008067          	ret

00000000800072d8 <initlock>:
    800072d8:	ff010113          	addi	sp,sp,-16
    800072dc:	00813423          	sd	s0,8(sp)
    800072e0:	01010413          	addi	s0,sp,16
    800072e4:	00813403          	ld	s0,8(sp)
    800072e8:	00b53423          	sd	a1,8(a0)
    800072ec:	00052023          	sw	zero,0(a0)
    800072f0:	00053823          	sd	zero,16(a0)
    800072f4:	01010113          	addi	sp,sp,16
    800072f8:	00008067          	ret

00000000800072fc <acquire>:
    800072fc:	fe010113          	addi	sp,sp,-32
    80007300:	00813823          	sd	s0,16(sp)
    80007304:	00913423          	sd	s1,8(sp)
    80007308:	00113c23          	sd	ra,24(sp)
    8000730c:	01213023          	sd	s2,0(sp)
    80007310:	02010413          	addi	s0,sp,32
    80007314:	00050493          	mv	s1,a0
    80007318:	10002973          	csrr	s2,sstatus
    8000731c:	100027f3          	csrr	a5,sstatus
    80007320:	ffd7f793          	andi	a5,a5,-3
    80007324:	10079073          	csrw	sstatus,a5
    80007328:	fffff097          	auipc	ra,0xfffff
    8000732c:	8ec080e7          	jalr	-1812(ra) # 80005c14 <mycpu>
    80007330:	07852783          	lw	a5,120(a0)
    80007334:	06078e63          	beqz	a5,800073b0 <acquire+0xb4>
    80007338:	fffff097          	auipc	ra,0xfffff
    8000733c:	8dc080e7          	jalr	-1828(ra) # 80005c14 <mycpu>
    80007340:	07852783          	lw	a5,120(a0)
    80007344:	0004a703          	lw	a4,0(s1)
    80007348:	0017879b          	addiw	a5,a5,1
    8000734c:	06f52c23          	sw	a5,120(a0)
    80007350:	04071063          	bnez	a4,80007390 <acquire+0x94>
    80007354:	00100713          	li	a4,1
    80007358:	00070793          	mv	a5,a4
    8000735c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007360:	0007879b          	sext.w	a5,a5
    80007364:	fe079ae3          	bnez	a5,80007358 <acquire+0x5c>
    80007368:	0ff0000f          	fence
    8000736c:	fffff097          	auipc	ra,0xfffff
    80007370:	8a8080e7          	jalr	-1880(ra) # 80005c14 <mycpu>
    80007374:	01813083          	ld	ra,24(sp)
    80007378:	01013403          	ld	s0,16(sp)
    8000737c:	00a4b823          	sd	a0,16(s1)
    80007380:	00013903          	ld	s2,0(sp)
    80007384:	00813483          	ld	s1,8(sp)
    80007388:	02010113          	addi	sp,sp,32
    8000738c:	00008067          	ret
    80007390:	0104b903          	ld	s2,16(s1)
    80007394:	fffff097          	auipc	ra,0xfffff
    80007398:	880080e7          	jalr	-1920(ra) # 80005c14 <mycpu>
    8000739c:	faa91ce3          	bne	s2,a0,80007354 <acquire+0x58>
    800073a0:	00001517          	auipc	a0,0x1
    800073a4:	26050513          	addi	a0,a0,608 # 80008600 <digits+0x20>
    800073a8:	fffff097          	auipc	ra,0xfffff
    800073ac:	224080e7          	jalr	548(ra) # 800065cc <panic>
    800073b0:	00195913          	srli	s2,s2,0x1
    800073b4:	fffff097          	auipc	ra,0xfffff
    800073b8:	860080e7          	jalr	-1952(ra) # 80005c14 <mycpu>
    800073bc:	00197913          	andi	s2,s2,1
    800073c0:	07252e23          	sw	s2,124(a0)
    800073c4:	f75ff06f          	j	80007338 <acquire+0x3c>

00000000800073c8 <release>:
    800073c8:	fe010113          	addi	sp,sp,-32
    800073cc:	00813823          	sd	s0,16(sp)
    800073d0:	00113c23          	sd	ra,24(sp)
    800073d4:	00913423          	sd	s1,8(sp)
    800073d8:	01213023          	sd	s2,0(sp)
    800073dc:	02010413          	addi	s0,sp,32
    800073e0:	00052783          	lw	a5,0(a0)
    800073e4:	00079a63          	bnez	a5,800073f8 <release+0x30>
    800073e8:	00001517          	auipc	a0,0x1
    800073ec:	22050513          	addi	a0,a0,544 # 80008608 <digits+0x28>
    800073f0:	fffff097          	auipc	ra,0xfffff
    800073f4:	1dc080e7          	jalr	476(ra) # 800065cc <panic>
    800073f8:	01053903          	ld	s2,16(a0)
    800073fc:	00050493          	mv	s1,a0
    80007400:	fffff097          	auipc	ra,0xfffff
    80007404:	814080e7          	jalr	-2028(ra) # 80005c14 <mycpu>
    80007408:	fea910e3          	bne	s2,a0,800073e8 <release+0x20>
    8000740c:	0004b823          	sd	zero,16(s1)
    80007410:	0ff0000f          	fence
    80007414:	0f50000f          	fence	iorw,ow
    80007418:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000741c:	ffffe097          	auipc	ra,0xffffe
    80007420:	7f8080e7          	jalr	2040(ra) # 80005c14 <mycpu>
    80007424:	100027f3          	csrr	a5,sstatus
    80007428:	0027f793          	andi	a5,a5,2
    8000742c:	04079a63          	bnez	a5,80007480 <release+0xb8>
    80007430:	07852783          	lw	a5,120(a0)
    80007434:	02f05e63          	blez	a5,80007470 <release+0xa8>
    80007438:	fff7871b          	addiw	a4,a5,-1
    8000743c:	06e52c23          	sw	a4,120(a0)
    80007440:	00071c63          	bnez	a4,80007458 <release+0x90>
    80007444:	07c52783          	lw	a5,124(a0)
    80007448:	00078863          	beqz	a5,80007458 <release+0x90>
    8000744c:	100027f3          	csrr	a5,sstatus
    80007450:	0027e793          	ori	a5,a5,2
    80007454:	10079073          	csrw	sstatus,a5
    80007458:	01813083          	ld	ra,24(sp)
    8000745c:	01013403          	ld	s0,16(sp)
    80007460:	00813483          	ld	s1,8(sp)
    80007464:	00013903          	ld	s2,0(sp)
    80007468:	02010113          	addi	sp,sp,32
    8000746c:	00008067          	ret
    80007470:	00001517          	auipc	a0,0x1
    80007474:	1b850513          	addi	a0,a0,440 # 80008628 <digits+0x48>
    80007478:	fffff097          	auipc	ra,0xfffff
    8000747c:	154080e7          	jalr	340(ra) # 800065cc <panic>
    80007480:	00001517          	auipc	a0,0x1
    80007484:	19050513          	addi	a0,a0,400 # 80008610 <digits+0x30>
    80007488:	fffff097          	auipc	ra,0xfffff
    8000748c:	144080e7          	jalr	324(ra) # 800065cc <panic>

0000000080007490 <holding>:
    80007490:	00052783          	lw	a5,0(a0)
    80007494:	00079663          	bnez	a5,800074a0 <holding+0x10>
    80007498:	00000513          	li	a0,0
    8000749c:	00008067          	ret
    800074a0:	fe010113          	addi	sp,sp,-32
    800074a4:	00813823          	sd	s0,16(sp)
    800074a8:	00913423          	sd	s1,8(sp)
    800074ac:	00113c23          	sd	ra,24(sp)
    800074b0:	02010413          	addi	s0,sp,32
    800074b4:	01053483          	ld	s1,16(a0)
    800074b8:	ffffe097          	auipc	ra,0xffffe
    800074bc:	75c080e7          	jalr	1884(ra) # 80005c14 <mycpu>
    800074c0:	01813083          	ld	ra,24(sp)
    800074c4:	01013403          	ld	s0,16(sp)
    800074c8:	40a48533          	sub	a0,s1,a0
    800074cc:	00153513          	seqz	a0,a0
    800074d0:	00813483          	ld	s1,8(sp)
    800074d4:	02010113          	addi	sp,sp,32
    800074d8:	00008067          	ret

00000000800074dc <push_off>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00813823          	sd	s0,16(sp)
    800074e4:	00113c23          	sd	ra,24(sp)
    800074e8:	00913423          	sd	s1,8(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	100024f3          	csrr	s1,sstatus
    800074f4:	100027f3          	csrr	a5,sstatus
    800074f8:	ffd7f793          	andi	a5,a5,-3
    800074fc:	10079073          	csrw	sstatus,a5
    80007500:	ffffe097          	auipc	ra,0xffffe
    80007504:	714080e7          	jalr	1812(ra) # 80005c14 <mycpu>
    80007508:	07852783          	lw	a5,120(a0)
    8000750c:	02078663          	beqz	a5,80007538 <push_off+0x5c>
    80007510:	ffffe097          	auipc	ra,0xffffe
    80007514:	704080e7          	jalr	1796(ra) # 80005c14 <mycpu>
    80007518:	07852783          	lw	a5,120(a0)
    8000751c:	01813083          	ld	ra,24(sp)
    80007520:	01013403          	ld	s0,16(sp)
    80007524:	0017879b          	addiw	a5,a5,1
    80007528:	06f52c23          	sw	a5,120(a0)
    8000752c:	00813483          	ld	s1,8(sp)
    80007530:	02010113          	addi	sp,sp,32
    80007534:	00008067          	ret
    80007538:	0014d493          	srli	s1,s1,0x1
    8000753c:	ffffe097          	auipc	ra,0xffffe
    80007540:	6d8080e7          	jalr	1752(ra) # 80005c14 <mycpu>
    80007544:	0014f493          	andi	s1,s1,1
    80007548:	06952e23          	sw	s1,124(a0)
    8000754c:	fc5ff06f          	j	80007510 <push_off+0x34>

0000000080007550 <pop_off>:
    80007550:	ff010113          	addi	sp,sp,-16
    80007554:	00813023          	sd	s0,0(sp)
    80007558:	00113423          	sd	ra,8(sp)
    8000755c:	01010413          	addi	s0,sp,16
    80007560:	ffffe097          	auipc	ra,0xffffe
    80007564:	6b4080e7          	jalr	1716(ra) # 80005c14 <mycpu>
    80007568:	100027f3          	csrr	a5,sstatus
    8000756c:	0027f793          	andi	a5,a5,2
    80007570:	04079663          	bnez	a5,800075bc <pop_off+0x6c>
    80007574:	07852783          	lw	a5,120(a0)
    80007578:	02f05a63          	blez	a5,800075ac <pop_off+0x5c>
    8000757c:	fff7871b          	addiw	a4,a5,-1
    80007580:	06e52c23          	sw	a4,120(a0)
    80007584:	00071c63          	bnez	a4,8000759c <pop_off+0x4c>
    80007588:	07c52783          	lw	a5,124(a0)
    8000758c:	00078863          	beqz	a5,8000759c <pop_off+0x4c>
    80007590:	100027f3          	csrr	a5,sstatus
    80007594:	0027e793          	ori	a5,a5,2
    80007598:	10079073          	csrw	sstatus,a5
    8000759c:	00813083          	ld	ra,8(sp)
    800075a0:	00013403          	ld	s0,0(sp)
    800075a4:	01010113          	addi	sp,sp,16
    800075a8:	00008067          	ret
    800075ac:	00001517          	auipc	a0,0x1
    800075b0:	07c50513          	addi	a0,a0,124 # 80008628 <digits+0x48>
    800075b4:	fffff097          	auipc	ra,0xfffff
    800075b8:	018080e7          	jalr	24(ra) # 800065cc <panic>
    800075bc:	00001517          	auipc	a0,0x1
    800075c0:	05450513          	addi	a0,a0,84 # 80008610 <digits+0x30>
    800075c4:	fffff097          	auipc	ra,0xfffff
    800075c8:	008080e7          	jalr	8(ra) # 800065cc <panic>

00000000800075cc <push_on>:
    800075cc:	fe010113          	addi	sp,sp,-32
    800075d0:	00813823          	sd	s0,16(sp)
    800075d4:	00113c23          	sd	ra,24(sp)
    800075d8:	00913423          	sd	s1,8(sp)
    800075dc:	02010413          	addi	s0,sp,32
    800075e0:	100024f3          	csrr	s1,sstatus
    800075e4:	100027f3          	csrr	a5,sstatus
    800075e8:	0027e793          	ori	a5,a5,2
    800075ec:	10079073          	csrw	sstatus,a5
    800075f0:	ffffe097          	auipc	ra,0xffffe
    800075f4:	624080e7          	jalr	1572(ra) # 80005c14 <mycpu>
    800075f8:	07852783          	lw	a5,120(a0)
    800075fc:	02078663          	beqz	a5,80007628 <push_on+0x5c>
    80007600:	ffffe097          	auipc	ra,0xffffe
    80007604:	614080e7          	jalr	1556(ra) # 80005c14 <mycpu>
    80007608:	07852783          	lw	a5,120(a0)
    8000760c:	01813083          	ld	ra,24(sp)
    80007610:	01013403          	ld	s0,16(sp)
    80007614:	0017879b          	addiw	a5,a5,1
    80007618:	06f52c23          	sw	a5,120(a0)
    8000761c:	00813483          	ld	s1,8(sp)
    80007620:	02010113          	addi	sp,sp,32
    80007624:	00008067          	ret
    80007628:	0014d493          	srli	s1,s1,0x1
    8000762c:	ffffe097          	auipc	ra,0xffffe
    80007630:	5e8080e7          	jalr	1512(ra) # 80005c14 <mycpu>
    80007634:	0014f493          	andi	s1,s1,1
    80007638:	06952e23          	sw	s1,124(a0)
    8000763c:	fc5ff06f          	j	80007600 <push_on+0x34>

0000000080007640 <pop_on>:
    80007640:	ff010113          	addi	sp,sp,-16
    80007644:	00813023          	sd	s0,0(sp)
    80007648:	00113423          	sd	ra,8(sp)
    8000764c:	01010413          	addi	s0,sp,16
    80007650:	ffffe097          	auipc	ra,0xffffe
    80007654:	5c4080e7          	jalr	1476(ra) # 80005c14 <mycpu>
    80007658:	100027f3          	csrr	a5,sstatus
    8000765c:	0027f793          	andi	a5,a5,2
    80007660:	04078463          	beqz	a5,800076a8 <pop_on+0x68>
    80007664:	07852783          	lw	a5,120(a0)
    80007668:	02f05863          	blez	a5,80007698 <pop_on+0x58>
    8000766c:	fff7879b          	addiw	a5,a5,-1
    80007670:	06f52c23          	sw	a5,120(a0)
    80007674:	07853783          	ld	a5,120(a0)
    80007678:	00079863          	bnez	a5,80007688 <pop_on+0x48>
    8000767c:	100027f3          	csrr	a5,sstatus
    80007680:	ffd7f793          	andi	a5,a5,-3
    80007684:	10079073          	csrw	sstatus,a5
    80007688:	00813083          	ld	ra,8(sp)
    8000768c:	00013403          	ld	s0,0(sp)
    80007690:	01010113          	addi	sp,sp,16
    80007694:	00008067          	ret
    80007698:	00001517          	auipc	a0,0x1
    8000769c:	fb850513          	addi	a0,a0,-72 # 80008650 <digits+0x70>
    800076a0:	fffff097          	auipc	ra,0xfffff
    800076a4:	f2c080e7          	jalr	-212(ra) # 800065cc <panic>
    800076a8:	00001517          	auipc	a0,0x1
    800076ac:	f8850513          	addi	a0,a0,-120 # 80008630 <digits+0x50>
    800076b0:	fffff097          	auipc	ra,0xfffff
    800076b4:	f1c080e7          	jalr	-228(ra) # 800065cc <panic>

00000000800076b8 <__memset>:
    800076b8:	ff010113          	addi	sp,sp,-16
    800076bc:	00813423          	sd	s0,8(sp)
    800076c0:	01010413          	addi	s0,sp,16
    800076c4:	1a060e63          	beqz	a2,80007880 <__memset+0x1c8>
    800076c8:	40a007b3          	neg	a5,a0
    800076cc:	0077f793          	andi	a5,a5,7
    800076d0:	00778693          	addi	a3,a5,7
    800076d4:	00b00813          	li	a6,11
    800076d8:	0ff5f593          	andi	a1,a1,255
    800076dc:	fff6071b          	addiw	a4,a2,-1
    800076e0:	1b06e663          	bltu	a3,a6,8000788c <__memset+0x1d4>
    800076e4:	1cd76463          	bltu	a4,a3,800078ac <__memset+0x1f4>
    800076e8:	1a078e63          	beqz	a5,800078a4 <__memset+0x1ec>
    800076ec:	00b50023          	sb	a1,0(a0)
    800076f0:	00100713          	li	a4,1
    800076f4:	1ae78463          	beq	a5,a4,8000789c <__memset+0x1e4>
    800076f8:	00b500a3          	sb	a1,1(a0)
    800076fc:	00200713          	li	a4,2
    80007700:	1ae78a63          	beq	a5,a4,800078b4 <__memset+0x1fc>
    80007704:	00b50123          	sb	a1,2(a0)
    80007708:	00300713          	li	a4,3
    8000770c:	18e78463          	beq	a5,a4,80007894 <__memset+0x1dc>
    80007710:	00b501a3          	sb	a1,3(a0)
    80007714:	00400713          	li	a4,4
    80007718:	1ae78263          	beq	a5,a4,800078bc <__memset+0x204>
    8000771c:	00b50223          	sb	a1,4(a0)
    80007720:	00500713          	li	a4,5
    80007724:	1ae78063          	beq	a5,a4,800078c4 <__memset+0x20c>
    80007728:	00b502a3          	sb	a1,5(a0)
    8000772c:	00700713          	li	a4,7
    80007730:	18e79e63          	bne	a5,a4,800078cc <__memset+0x214>
    80007734:	00b50323          	sb	a1,6(a0)
    80007738:	00700e93          	li	t4,7
    8000773c:	00859713          	slli	a4,a1,0x8
    80007740:	00e5e733          	or	a4,a1,a4
    80007744:	01059e13          	slli	t3,a1,0x10
    80007748:	01c76e33          	or	t3,a4,t3
    8000774c:	01859313          	slli	t1,a1,0x18
    80007750:	006e6333          	or	t1,t3,t1
    80007754:	02059893          	slli	a7,a1,0x20
    80007758:	40f60e3b          	subw	t3,a2,a5
    8000775c:	011368b3          	or	a7,t1,a7
    80007760:	02859813          	slli	a6,a1,0x28
    80007764:	0108e833          	or	a6,a7,a6
    80007768:	03059693          	slli	a3,a1,0x30
    8000776c:	003e589b          	srliw	a7,t3,0x3
    80007770:	00d866b3          	or	a3,a6,a3
    80007774:	03859713          	slli	a4,a1,0x38
    80007778:	00389813          	slli	a6,a7,0x3
    8000777c:	00f507b3          	add	a5,a0,a5
    80007780:	00e6e733          	or	a4,a3,a4
    80007784:	000e089b          	sext.w	a7,t3
    80007788:	00f806b3          	add	a3,a6,a5
    8000778c:	00e7b023          	sd	a4,0(a5)
    80007790:	00878793          	addi	a5,a5,8
    80007794:	fed79ce3          	bne	a5,a3,8000778c <__memset+0xd4>
    80007798:	ff8e7793          	andi	a5,t3,-8
    8000779c:	0007871b          	sext.w	a4,a5
    800077a0:	01d787bb          	addw	a5,a5,t4
    800077a4:	0ce88e63          	beq	a7,a4,80007880 <__memset+0x1c8>
    800077a8:	00f50733          	add	a4,a0,a5
    800077ac:	00b70023          	sb	a1,0(a4)
    800077b0:	0017871b          	addiw	a4,a5,1
    800077b4:	0cc77663          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    800077b8:	00e50733          	add	a4,a0,a4
    800077bc:	00b70023          	sb	a1,0(a4)
    800077c0:	0027871b          	addiw	a4,a5,2
    800077c4:	0ac77e63          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    800077c8:	00e50733          	add	a4,a0,a4
    800077cc:	00b70023          	sb	a1,0(a4)
    800077d0:	0037871b          	addiw	a4,a5,3
    800077d4:	0ac77663          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    800077d8:	00e50733          	add	a4,a0,a4
    800077dc:	00b70023          	sb	a1,0(a4)
    800077e0:	0047871b          	addiw	a4,a5,4
    800077e4:	08c77e63          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    800077e8:	00e50733          	add	a4,a0,a4
    800077ec:	00b70023          	sb	a1,0(a4)
    800077f0:	0057871b          	addiw	a4,a5,5
    800077f4:	08c77663          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    800077f8:	00e50733          	add	a4,a0,a4
    800077fc:	00b70023          	sb	a1,0(a4)
    80007800:	0067871b          	addiw	a4,a5,6
    80007804:	06c77e63          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007808:	00e50733          	add	a4,a0,a4
    8000780c:	00b70023          	sb	a1,0(a4)
    80007810:	0077871b          	addiw	a4,a5,7
    80007814:	06c77663          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007818:	00e50733          	add	a4,a0,a4
    8000781c:	00b70023          	sb	a1,0(a4)
    80007820:	0087871b          	addiw	a4,a5,8
    80007824:	04c77e63          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00b70023          	sb	a1,0(a4)
    80007830:	0097871b          	addiw	a4,a5,9
    80007834:	04c77663          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007838:	00e50733          	add	a4,a0,a4
    8000783c:	00b70023          	sb	a1,0(a4)
    80007840:	00a7871b          	addiw	a4,a5,10
    80007844:	02c77e63          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00b70023          	sb	a1,0(a4)
    80007850:	00b7871b          	addiw	a4,a5,11
    80007854:	02c77663          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007858:	00e50733          	add	a4,a0,a4
    8000785c:	00b70023          	sb	a1,0(a4)
    80007860:	00c7871b          	addiw	a4,a5,12
    80007864:	00c77e63          	bgeu	a4,a2,80007880 <__memset+0x1c8>
    80007868:	00e50733          	add	a4,a0,a4
    8000786c:	00b70023          	sb	a1,0(a4)
    80007870:	00d7879b          	addiw	a5,a5,13
    80007874:	00c7f663          	bgeu	a5,a2,80007880 <__memset+0x1c8>
    80007878:	00f507b3          	add	a5,a0,a5
    8000787c:	00b78023          	sb	a1,0(a5)
    80007880:	00813403          	ld	s0,8(sp)
    80007884:	01010113          	addi	sp,sp,16
    80007888:	00008067          	ret
    8000788c:	00b00693          	li	a3,11
    80007890:	e55ff06f          	j	800076e4 <__memset+0x2c>
    80007894:	00300e93          	li	t4,3
    80007898:	ea5ff06f          	j	8000773c <__memset+0x84>
    8000789c:	00100e93          	li	t4,1
    800078a0:	e9dff06f          	j	8000773c <__memset+0x84>
    800078a4:	00000e93          	li	t4,0
    800078a8:	e95ff06f          	j	8000773c <__memset+0x84>
    800078ac:	00000793          	li	a5,0
    800078b0:	ef9ff06f          	j	800077a8 <__memset+0xf0>
    800078b4:	00200e93          	li	t4,2
    800078b8:	e85ff06f          	j	8000773c <__memset+0x84>
    800078bc:	00400e93          	li	t4,4
    800078c0:	e7dff06f          	j	8000773c <__memset+0x84>
    800078c4:	00500e93          	li	t4,5
    800078c8:	e75ff06f          	j	8000773c <__memset+0x84>
    800078cc:	00600e93          	li	t4,6
    800078d0:	e6dff06f          	j	8000773c <__memset+0x84>

00000000800078d4 <__memmove>:
    800078d4:	ff010113          	addi	sp,sp,-16
    800078d8:	00813423          	sd	s0,8(sp)
    800078dc:	01010413          	addi	s0,sp,16
    800078e0:	0e060863          	beqz	a2,800079d0 <__memmove+0xfc>
    800078e4:	fff6069b          	addiw	a3,a2,-1
    800078e8:	0006881b          	sext.w	a6,a3
    800078ec:	0ea5e863          	bltu	a1,a0,800079dc <__memmove+0x108>
    800078f0:	00758713          	addi	a4,a1,7
    800078f4:	00a5e7b3          	or	a5,a1,a0
    800078f8:	40a70733          	sub	a4,a4,a0
    800078fc:	0077f793          	andi	a5,a5,7
    80007900:	00f73713          	sltiu	a4,a4,15
    80007904:	00174713          	xori	a4,a4,1
    80007908:	0017b793          	seqz	a5,a5
    8000790c:	00e7f7b3          	and	a5,a5,a4
    80007910:	10078863          	beqz	a5,80007a20 <__memmove+0x14c>
    80007914:	00900793          	li	a5,9
    80007918:	1107f463          	bgeu	a5,a6,80007a20 <__memmove+0x14c>
    8000791c:	0036581b          	srliw	a6,a2,0x3
    80007920:	fff8081b          	addiw	a6,a6,-1
    80007924:	02081813          	slli	a6,a6,0x20
    80007928:	01d85893          	srli	a7,a6,0x1d
    8000792c:	00858813          	addi	a6,a1,8
    80007930:	00058793          	mv	a5,a1
    80007934:	00050713          	mv	a4,a0
    80007938:	01088833          	add	a6,a7,a6
    8000793c:	0007b883          	ld	a7,0(a5)
    80007940:	00878793          	addi	a5,a5,8
    80007944:	00870713          	addi	a4,a4,8
    80007948:	ff173c23          	sd	a7,-8(a4)
    8000794c:	ff0798e3          	bne	a5,a6,8000793c <__memmove+0x68>
    80007950:	ff867713          	andi	a4,a2,-8
    80007954:	02071793          	slli	a5,a4,0x20
    80007958:	0207d793          	srli	a5,a5,0x20
    8000795c:	00f585b3          	add	a1,a1,a5
    80007960:	40e686bb          	subw	a3,a3,a4
    80007964:	00f507b3          	add	a5,a0,a5
    80007968:	06e60463          	beq	a2,a4,800079d0 <__memmove+0xfc>
    8000796c:	0005c703          	lbu	a4,0(a1)
    80007970:	00e78023          	sb	a4,0(a5)
    80007974:	04068e63          	beqz	a3,800079d0 <__memmove+0xfc>
    80007978:	0015c603          	lbu	a2,1(a1)
    8000797c:	00100713          	li	a4,1
    80007980:	00c780a3          	sb	a2,1(a5)
    80007984:	04e68663          	beq	a3,a4,800079d0 <__memmove+0xfc>
    80007988:	0025c603          	lbu	a2,2(a1)
    8000798c:	00200713          	li	a4,2
    80007990:	00c78123          	sb	a2,2(a5)
    80007994:	02e68e63          	beq	a3,a4,800079d0 <__memmove+0xfc>
    80007998:	0035c603          	lbu	a2,3(a1)
    8000799c:	00300713          	li	a4,3
    800079a0:	00c781a3          	sb	a2,3(a5)
    800079a4:	02e68663          	beq	a3,a4,800079d0 <__memmove+0xfc>
    800079a8:	0045c603          	lbu	a2,4(a1)
    800079ac:	00400713          	li	a4,4
    800079b0:	00c78223          	sb	a2,4(a5)
    800079b4:	00e68e63          	beq	a3,a4,800079d0 <__memmove+0xfc>
    800079b8:	0055c603          	lbu	a2,5(a1)
    800079bc:	00500713          	li	a4,5
    800079c0:	00c782a3          	sb	a2,5(a5)
    800079c4:	00e68663          	beq	a3,a4,800079d0 <__memmove+0xfc>
    800079c8:	0065c703          	lbu	a4,6(a1)
    800079cc:	00e78323          	sb	a4,6(a5)
    800079d0:	00813403          	ld	s0,8(sp)
    800079d4:	01010113          	addi	sp,sp,16
    800079d8:	00008067          	ret
    800079dc:	02061713          	slli	a4,a2,0x20
    800079e0:	02075713          	srli	a4,a4,0x20
    800079e4:	00e587b3          	add	a5,a1,a4
    800079e8:	f0f574e3          	bgeu	a0,a5,800078f0 <__memmove+0x1c>
    800079ec:	02069613          	slli	a2,a3,0x20
    800079f0:	02065613          	srli	a2,a2,0x20
    800079f4:	fff64613          	not	a2,a2
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00c78633          	add	a2,a5,a2
    80007a00:	fff7c683          	lbu	a3,-1(a5)
    80007a04:	fff78793          	addi	a5,a5,-1
    80007a08:	fff70713          	addi	a4,a4,-1
    80007a0c:	00d70023          	sb	a3,0(a4)
    80007a10:	fec798e3          	bne	a5,a2,80007a00 <__memmove+0x12c>
    80007a14:	00813403          	ld	s0,8(sp)
    80007a18:	01010113          	addi	sp,sp,16
    80007a1c:	00008067          	ret
    80007a20:	02069713          	slli	a4,a3,0x20
    80007a24:	02075713          	srli	a4,a4,0x20
    80007a28:	00170713          	addi	a4,a4,1
    80007a2c:	00e50733          	add	a4,a0,a4
    80007a30:	00050793          	mv	a5,a0
    80007a34:	0005c683          	lbu	a3,0(a1)
    80007a38:	00178793          	addi	a5,a5,1
    80007a3c:	00158593          	addi	a1,a1,1
    80007a40:	fed78fa3          	sb	a3,-1(a5)
    80007a44:	fee798e3          	bne	a5,a4,80007a34 <__memmove+0x160>
    80007a48:	f89ff06f          	j	800079d0 <__memmove+0xfc>

0000000080007a4c <__putc>:
    80007a4c:	fe010113          	addi	sp,sp,-32
    80007a50:	00813823          	sd	s0,16(sp)
    80007a54:	00113c23          	sd	ra,24(sp)
    80007a58:	02010413          	addi	s0,sp,32
    80007a5c:	00050793          	mv	a5,a0
    80007a60:	fef40593          	addi	a1,s0,-17
    80007a64:	00100613          	li	a2,1
    80007a68:	00000513          	li	a0,0
    80007a6c:	fef407a3          	sb	a5,-17(s0)
    80007a70:	fffff097          	auipc	ra,0xfffff
    80007a74:	b3c080e7          	jalr	-1220(ra) # 800065ac <console_write>
    80007a78:	01813083          	ld	ra,24(sp)
    80007a7c:	01013403          	ld	s0,16(sp)
    80007a80:	02010113          	addi	sp,sp,32
    80007a84:	00008067          	ret

0000000080007a88 <__getc>:
    80007a88:	fe010113          	addi	sp,sp,-32
    80007a8c:	00813823          	sd	s0,16(sp)
    80007a90:	00113c23          	sd	ra,24(sp)
    80007a94:	02010413          	addi	s0,sp,32
    80007a98:	fe840593          	addi	a1,s0,-24
    80007a9c:	00100613          	li	a2,1
    80007aa0:	00000513          	li	a0,0
    80007aa4:	fffff097          	auipc	ra,0xfffff
    80007aa8:	ae8080e7          	jalr	-1304(ra) # 8000658c <console_read>
    80007aac:	fe844503          	lbu	a0,-24(s0)
    80007ab0:	01813083          	ld	ra,24(sp)
    80007ab4:	01013403          	ld	s0,16(sp)
    80007ab8:	02010113          	addi	sp,sp,32
    80007abc:	00008067          	ret

0000000080007ac0 <console_handler>:
    80007ac0:	fe010113          	addi	sp,sp,-32
    80007ac4:	00813823          	sd	s0,16(sp)
    80007ac8:	00113c23          	sd	ra,24(sp)
    80007acc:	00913423          	sd	s1,8(sp)
    80007ad0:	02010413          	addi	s0,sp,32
    80007ad4:	14202773          	csrr	a4,scause
    80007ad8:	100027f3          	csrr	a5,sstatus
    80007adc:	0027f793          	andi	a5,a5,2
    80007ae0:	06079e63          	bnez	a5,80007b5c <console_handler+0x9c>
    80007ae4:	00074c63          	bltz	a4,80007afc <console_handler+0x3c>
    80007ae8:	01813083          	ld	ra,24(sp)
    80007aec:	01013403          	ld	s0,16(sp)
    80007af0:	00813483          	ld	s1,8(sp)
    80007af4:	02010113          	addi	sp,sp,32
    80007af8:	00008067          	ret
    80007afc:	0ff77713          	andi	a4,a4,255
    80007b00:	00900793          	li	a5,9
    80007b04:	fef712e3          	bne	a4,a5,80007ae8 <console_handler+0x28>
    80007b08:	ffffe097          	auipc	ra,0xffffe
    80007b0c:	6dc080e7          	jalr	1756(ra) # 800061e4 <plic_claim>
    80007b10:	00a00793          	li	a5,10
    80007b14:	00050493          	mv	s1,a0
    80007b18:	02f50c63          	beq	a0,a5,80007b50 <console_handler+0x90>
    80007b1c:	fc0506e3          	beqz	a0,80007ae8 <console_handler+0x28>
    80007b20:	00050593          	mv	a1,a0
    80007b24:	00001517          	auipc	a0,0x1
    80007b28:	a3450513          	addi	a0,a0,-1484 # 80008558 <CONSOLE_STATUS+0x548>
    80007b2c:	fffff097          	auipc	ra,0xfffff
    80007b30:	afc080e7          	jalr	-1284(ra) # 80006628 <__printf>
    80007b34:	01013403          	ld	s0,16(sp)
    80007b38:	01813083          	ld	ra,24(sp)
    80007b3c:	00048513          	mv	a0,s1
    80007b40:	00813483          	ld	s1,8(sp)
    80007b44:	02010113          	addi	sp,sp,32
    80007b48:	ffffe317          	auipc	t1,0xffffe
    80007b4c:	6d430067          	jr	1748(t1) # 8000621c <plic_complete>
    80007b50:	fffff097          	auipc	ra,0xfffff
    80007b54:	3e0080e7          	jalr	992(ra) # 80006f30 <uartintr>
    80007b58:	fddff06f          	j	80007b34 <console_handler+0x74>
    80007b5c:	00001517          	auipc	a0,0x1
    80007b60:	afc50513          	addi	a0,a0,-1284 # 80008658 <digits+0x78>
    80007b64:	fffff097          	auipc	ra,0xfffff
    80007b68:	a68080e7          	jalr	-1432(ra) # 800065cc <panic>
	...
