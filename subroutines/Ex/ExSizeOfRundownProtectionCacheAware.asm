ExSizeOfRundownProtectionCacheAware proc near
                                        ; DATA XREF: .pdata:000000014010B8DC↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, cs:dword_140CFC404
                cmp     ebx, 1
                jbe     short loc_140780657
                call    KeGetRecommendedSharedDataAlignment
                lea     ecx, [rbx+1]
                imul    eax, ecx

loc_14078064C:                          ; CODE XREF: ExSizeOfRundownProtectionCacheAware+2C↓j
                add     rax, 18h
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140780657:                          ; CODE XREF: ExSizeOfRundownProtectionCacheAware+F↑j
                mov     eax, 8
                jmp     short loc_14078064C
ExSizeOfRundownProtectionCacheAware endp
