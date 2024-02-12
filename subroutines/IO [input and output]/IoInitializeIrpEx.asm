IoInitializeIrpEx proc near             ; DATA XREF: .rdata:000000014009A178↑o
                                        ; .pdata:00000001400DC620↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049E374 SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   eax, r8w
                mov     rdi, rdx
                movzx   edx, ax
                mov     r8b, r9b
                mov     rbx, rcx
                call    IoInitializeIrp
                test    rdi, rdi
                jz      short loc_14039230C
                cmp     rdi, 0FFFFFFFFFFFFFFFFh
                jnz     loc_14049E374

loc_1403922FE:                          ; CODE XREF: IoInitializeIrpEx+10C0B1↓j
                mov     rax, [rbx+0B8h]
                mov     [rbx+0C8h], rax

loc_14039230C:                          ; CODE XREF: IoInitializeIrpEx+22↑j
                                        ; IoInitializeIrpEx+10C0AB↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoInitializeIrpEx endp
