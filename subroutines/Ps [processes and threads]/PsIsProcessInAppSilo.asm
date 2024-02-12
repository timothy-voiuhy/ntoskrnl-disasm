PsIsProcessInAppSilo proc near          ; DATA XREF: .pdata:000000014012141C↑o
                sub     rsp, 28h
                call    PsGetProcessSilo
                xor     edx, edx
                test    rax, rax
                jz      short loc_14090724E
                mov     rcx, rax
                call    sub_1402B96B0
                test    al, al
                jnz     short loc_14090724E
                mov     dl, 1

loc_14090724E:                          ; CODE XREF: PsIsProcessInAppSilo+E↑j
                                        ; PsIsProcessInAppSilo+1A↑j
                mov     al, dl
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsIsProcessInAppSilo endp
