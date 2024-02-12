RtlGetSystemBootStatus proc near        ; CODE XREF: sub_140A468BC+35↓p
                                        ; DATA XREF: .pdata:000000014010CB48↑o
                mov     rax, rsp
                sub     rsp, 48h
                and     dword ptr [rax-24h], 0
                and     dword ptr [rax-14h], 0
                mov     [rax-18h], r8d
                mov     r8d, 1
                mov     [rax-28h], ecx
                mov     [rax-20h], rdx
                lea     rdx, [rax-28h]
                lea     ecx, [r8+1Eh]
                call    sub_14079A0EC
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetSystemBootStatus endp
