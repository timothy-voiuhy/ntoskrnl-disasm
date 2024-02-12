IoClearAdapterCryptoEngineExtension proc near
                                        ; DATA XREF: .pdata:00000001400F28F8↑o
                push    rbx
                sub     rsp, 20h
                mov     edx, 7
                mov     rbx, rcx
                call    sub_1402F17B0
                test    al, al
                jz      short loc_140507C3B
                call    sub_1402A2A90
                test    rax, rax
                jz      short loc_140507C3B
                xor     r8d, r8d
                xorps   xmm0, xmm0
                mov     rcx, rbx
                movups  xmmword ptr [rax+28h], xmm0
                lea     edx, [r8+7]
                call    sub_1402F0FC8
                xor     eax, eax
                jmp     short loc_140507C40
; ---------------------------------------------------------------------------

loc_140507C3B:                          ; CODE XREF: IoClearAdapterCryptoEngineExtension+15↑j
                                        ; IoClearAdapterCryptoEngineExtension+1F↑j
                mov     eax, 0C0000225h

loc_140507C40:                          ; CODE XREF: IoClearAdapterCryptoEngineExtension+39↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoClearAdapterCryptoEngineExtension endp
