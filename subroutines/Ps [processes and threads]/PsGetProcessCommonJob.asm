PsGetProcessCommonJob proc near         ; DATA XREF: .pdata:00000001400DA31C↑o
                mov     r8, [rcx+510h]
                test    r8, r8
                jz      short loc_14036C92B
                mov     rcx, [rdx+510h]
                test    rcx, rcx
                jz      short loc_14036C92B
                mov     rcx, [rcx+438h]
                mov     rax, [r8+438h]
                cmp     rax, rcx
                jz      short loc_14036C92F

loc_14036C92B:                          ; CODE XREF: PsGetProcessCommonJob+A↑j
                                        ; PsGetProcessCommonJob+16↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036C92F:                          ; CODE XREF: PsGetProcessCommonJob+29↑j
                mov     rax, [r8+438h]
                retn
PsGetProcessCommonJob endp
