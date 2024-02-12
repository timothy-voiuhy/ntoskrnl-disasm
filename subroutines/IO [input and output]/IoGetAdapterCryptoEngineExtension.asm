IoGetAdapterCryptoEngineExtension proc near
                                        ; DATA XREF: .pdata:00000001400F2910↑o
                sub     rsp, 28h
                mov     r8, rdx
                mov     edx, 7
                call    sub_1402F17B0
                test    al, al
                jz      short loc_140507CA7
                mov     rax, [rcx+0C8h]
                add     rax, 28h ; '('
                mov     [r8], rax
                xor     eax, eax
                jmp     short loc_140507CAC
; ---------------------------------------------------------------------------

loc_140507CA7:                          ; CODE XREF: IoGetAdapterCryptoEngineExtension+13↑j
                mov     eax, 0C0000225h

loc_140507CAC:                          ; CODE XREF: IoGetAdapterCryptoEngineExtension+25↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetAdapterCryptoEngineExtension endp
