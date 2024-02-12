IoStartPacket   proc near               ; DATA XREF: .pdata:00000001400F27F0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, r9
                mov     r12, r8
                mov     rbx, rdx
                mov     rdi, rcx
                xor     r14b, r14b
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      r15, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1405065CB
                test    al, 1
                jz      short loc_1405065CB
                cmp     bpl, 0Fh
                ja      short loc_1405065CB
                mov     rax, gs:20h
                mov     rdx, r15
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405065CB:                          ; CODE XREF: IoStartPacket+45↑j
                                        ; IoStartPacket+49↑j ...
                test    rsi, rsi
                jz      short loc_1405065E1
                mov     ecx, 7
                call    KeAcquireQueuedSpinLock
                mov     r14b, al
                mov     [rbx+68h], rsi

loc_1405065E1:                          ; CODE XREF: IoStartPacket+7E↑j
                lea     rdx, [rbx+78h]
                lea     rcx, [rdi+0A0h]
                test    r12, r12
                jz      short loc_1405065FC
                mov     r8d, [r12]
                call    KeInsertByKeyDeviceQueue
                jmp     short loc_140506601
; ---------------------------------------------------------------------------

loc_1405065FC:                          ; CODE XREF: IoStartPacket+9F↑j
                call    KeInsertDeviceQueue

loc_140506601:                          ; CODE XREF: IoStartPacket+AA↑j
                test    al, al
                jnz     short loc_14050663A
                mov     [rdi+20h], rbx
                test    rsi, rsi
                jz      short loc_140506630
                mov     rax, [rdi+138h]
                test    dword ptr [rax+40h], 200h
                jz      short loc_140506623
                and     qword ptr [rbx+68h], 0

loc_140506623:                          ; CODE XREF: IoStartPacket+CC↑j
                mov     dl, r14b
                mov     ecx, 7
                call    KeReleaseQueuedSpinLock

loc_140506630:                          ; CODE XREF: IoStartPacket+BC↑j
                mov     rax, [rdi+8]
                mov     rax, [rax+60h]
                jmp     short loc_140506651
; ---------------------------------------------------------------------------

loc_14050663A:                          ; CODE XREF: IoStartPacket+B3↑j
                test    rsi, rsi
                jz      short loc_14050666B
                cmp     byte ptr [rbx+44h], 0
                jz      short loc_14050665E
                and     qword ptr [rbx+68h], 0
                mov     rax, rsi
                mov     [rbx+45h], r14b

loc_140506651:                          ; CODE XREF: IoStartPacket+E8↑j
                mov     rcx, rdi
                mov     rdx, rbx
                call    sub_1404079D0
                jmp     short loc_14050666B
; ---------------------------------------------------------------------------

loc_14050665E:                          ; CODE XREF: IoStartPacket+F3↑j
                mov     dl, r14b
                mov     ecx, 7
                call    KeReleaseQueuedSpinLock

loc_14050666B:                          ; CODE XREF: IoStartPacket+ED↑j
                                        ; IoStartPacket+10C↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405066BE
                test    al, 1
                jz      short loc_1405066BE
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405066BE
                cmp     bpl, 0Fh
                ja      short loc_1405066BE
                cmp     al, 2
                jb      short loc_1405066BE
                mov     r9, gs:20h
                movzx   ecx, bpl
                inc     ecx
                shl     r15, cl
                mov     r8, [r9+84B8h]
                movzx   eax, r15w
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405066BE
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405066BE:                          ; CODE XREF: IoStartPacket+123↑j
                                        ; IoStartPacket+127↑j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoStartPacket   endp

algn_1405066E6:                         ; DATA XREF: .pdata:00000001400F27F0↑o
                align 10h
; Exported entry 1013. IoStartTimer

; =============== S U B R O U T I N E =======================================


