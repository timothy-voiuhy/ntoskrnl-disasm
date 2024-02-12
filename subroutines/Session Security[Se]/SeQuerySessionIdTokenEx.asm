SeQuerySessionIdTokenEx proc near       ; CODE XREF: sub_1406C8510+4C↓p
                                        ; sub_1406C8F5C+4D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     r14, r8
                and     [rsp+38h+arg_0], 0
                mov     rbx, rdx
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+30h]
                mov     sil, 1
                mov     dl, sil
                call    ExAcquireResourceSharedLite
                mov     ebp, [rdi+78h]
                mov     [rbx], ebp
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    ebp, ebp
                jz      short loc_1406C84A0
                lea     rdx, [rsp+38h+arg_0]
                mov     ecx, ebp
                call    sub_1406C84C4
                test    eax, eax
                js      short loc_1406C84B9
                mov     rcx, [rsp+38h+arg_0]
                call    PsGetServerSiloServiceSessionId
                cmp     ebp, eax
                setz    sil

loc_1406C84A0:                          ; CODE XREF: SeQuerySessionIdTokenEx+5E↑j
                                        ; SeQuerySessionIdTokenEx+9C↓j
                mov     [r14], sil
                xor     eax, eax
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406C84B9:                          ; CODE XREF: SeQuerySessionIdTokenEx+6E↑j
                xor     sil, sil
                jmp     short loc_1406C84A0
SeQuerySessionIdTokenEx endp
