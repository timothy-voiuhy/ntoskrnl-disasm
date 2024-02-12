RtlCopyString   proc near               ; DATA XREF: .pdata:00000001400F7A4C↑o
                sub     rsp, 28h
                xor     eax, eax
                mov     [rcx], ax
                test    rdx, rdx
                jz      short loc_1405857EE
                movzx   eax, word ptr [rdx]
                movzx   r8d, word ptr [rcx+2]
                cmp     rax, r8
                cmovbe  r8d, eax
                mov     [rcx], r8w
                mov     rdx, [rdx+8]
                mov     rcx, [rcx+8]
                call    memmove

loc_1405857EE:                          ; CODE XREF: RtlCopyString+C↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCopyString   endp

algn_1405857F4:                         ; DATA XREF: .pdata:00000001400F7A4C↑o
                align 20h
; Exported entry 2204. RtlInitStringEx
; Exported entry 2207. RtlInitUTF8StringEx

; =============== S U B R O U T I N E =======================================


