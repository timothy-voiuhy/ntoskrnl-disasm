RtlInitString   proc near               ; CODE XREF: sub_1403B40A8+45↓p
                                        ; sub_1403B7C60+25↓p ...
                and     qword ptr [rcx], 0 ; RtlInitAnsiString
                mov     [rcx+8], rdx
                test    rdx, rdx
                jz      short locret_1402041C3
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1402041A1:                          ; CODE XREF: RtlInitString+18↓j
                inc     rax
                cmp     byte ptr [rdx+rax], 0
                jnz     short loc_1402041A1
                cmp     rax, 0FFFFh
                mov     edx, 0FFFEh
                cmovnb  rax, rdx
                mov     [rcx], ax
                inc     ax
                mov     [rcx+2], ax

locret_1402041C3:                       ; CODE XREF: RtlInitString+B↑j
                retn
RtlInitString   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402041C5:                         ; DATA XREF: .pdata:00000001400C93FC↑o
                align 10h
; Exported entry 1890. PsIsProtectedProcess

; =============== S U B R O U T I N E =======================================


