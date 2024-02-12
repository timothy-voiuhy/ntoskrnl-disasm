IoWriteErrorLogEntry proc near          ; CODE XREF: sub_140500838+204↓p
                                        ; FsRtlLogCcFlushError+226↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140496774 SIZE 000000A5 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140C456ED, 0
                lea     rbx, [rcx-30h]
                jnz     loc_140496774
                mov     rax, ds:0FFFFF78000000014h
                lea     rcx, qword_140D23180
                mov     [rbx+28h], rax
                call    KeAcquireSpinLockRaiseToDpc
                movzx   edi, al
                lea     rcx, qword_140C45B70
                mov     rax, cs:qword_140C45B78
                add     rbx, 8
                cmp     [rax], rcx
                jnz     loc_1404967AE
                cmp     cs:byte_140C456EE, 0
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C45B78, rbx
                jnz     short loc_1403807C3
                and     cs:qword_140C45718, 0
                lea     rax, sub_140751A10
                and     cs:qword_140C45700, 0
                lea     rcx, qword_140C45700
                mov     edx, 1
                mov     cs:qword_140C45710, rax
                mov     cs:byte_140C456EE, 1
                call    ExQueueWorkItem

loc_1403807C3:                          ; CODE XREF: IoWriteErrorLogEntry+6B↑j
                lea     rcx, qword_140D23180
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404967B5

loc_1403807DD:                          ; CODE XREF: IoWriteErrorLogEntry+116097↓j
                                        ; IoWriteErrorLogEntry+1160A3↓j ...
                mov     cr8, rdi

loc_1403807E1:                          ; CODE XREF: IoWriteErrorLogEntry+116089↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWriteErrorLogEntry endp
