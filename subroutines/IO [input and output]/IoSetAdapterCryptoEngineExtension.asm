IoSetAdapterCryptoEngineExtension proc near
                                        ; DATA XREF: .pdata:00000001400F2928↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                mov     edx, 7
                call    sub_140507E80
                test    al, al
                jnz     short loc_140507D25
                mov     eax, 0C00000BBh
                jmp     short loc_140507D48
; ---------------------------------------------------------------------------

loc_140507D25:                          ; CODE XREF: IoSetAdapterCryptoEngineExtension+1C↑j
                mov     edx, 7
                mov     rcx, rdi
                call    sub_1402A2A90
                test    rax, rax
                jnz     short loc_140507D3E
                mov     eax, 0C000009Ah
                jmp     short loc_140507D48
; ---------------------------------------------------------------------------

loc_140507D3E:                          ; CODE XREF: IoSetAdapterCryptoEngineExtension+35↑j
                movups  xmm0, xmmword ptr [rbx]
                movdqu  xmmword ptr [rax+28h], xmm0
                xor     eax, eax

loc_140507D48:                          ; CODE XREF: IoSetAdapterCryptoEngineExtension+23↑j
                                        ; IoSetAdapterCryptoEngineExtension+3C↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetAdapterCryptoEngineExtension endp
