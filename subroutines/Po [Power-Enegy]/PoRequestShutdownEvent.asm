PoRequestShutdownEvent proc near        ; CODE XREF: sub_1407ACF70+7B↑p
                                        ; DATA XREF: .pdata:000000014010D64C↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_1407AD452
                and     qword ptr [rcx], 0

loc_1407AD452:                          ; CODE XREF: PoRequestShutdownEvent+C↑j
                mov     rcx, gs:188h
                call    sub_1407AD484
                test    eax, eax
                js      short loc_1407AD475
                test    rbx, rbx
                jz      short loc_1407AD473
                lea     rax, word_140C24400
                mov     [rbx], rax

loc_1407AD473:                          ; CODE XREF: PoRequestShutdownEvent+27↑j
                xor     eax, eax

loc_1407AD475:                          ; CODE XREF: PoRequestShutdownEvent+22↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoRequestShutdownEvent endp
