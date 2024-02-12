SeQueryServerSiloToken proc near        ; CODE XREF: sub_1405EB770+3C9↑p
                                        ; sub_140619C30+1E3346↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rsi, rdx
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rcx, [rdi+30h]
                mov     ebx, [rdi+78h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rdx, rsi
                mov     ecx, ebx
                call    sub_1406C84C4
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeQueryServerSiloToken endp
