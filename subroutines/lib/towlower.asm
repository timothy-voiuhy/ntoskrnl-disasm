towlower        proc near               ; CODE XREF: sub_1409442E4+6A↓p
                                        ; sub_140952128+7B↓p ...
                push    rbx
                sub     rsp, 20h
                mov     edx, 1
                movzx   ebx, cx
                call    sub_1403D45AC
                test    eax, eax
                lea     ecx, [rbx+20h]
                cmovnz  bx, cx
                movzx   eax, bx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
towlower        endp

algn_1403D3A06:                         ; DATA XREF: .pdata:00000001400E09DC↑o
                align 10h
; Exported entry 3063. towupper

; =============== S U B R O U T I N E =======================================


