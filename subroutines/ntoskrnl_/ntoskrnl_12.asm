ntoskrnl_12     proc near               ; CODE XREF: sub_14033DD74+123↑p
                                        ; sub_14033DF10+F7↑p ...
                mov     rax, cs:qword_140C4E4C8
                movzx   edx, cx
                mov     rax, [rax+rdx*8]
                mov     rax, [rax+1B10h]
                retn
ntoskrnl_12     endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1406F2E77:                         ; DATA XREF: .pdata:0000000140104C94↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F2E80   proc near               ; DATA XREF: .pdata:0000000140104CA0↑o
                                        ; sub_140790488+2C↓o
                sub     rsp, 28h
                mov     rcx, [rdx]
                mov     r10, [r8]
                cmp     rcx, r10
                jz      short loc_1406F2ED0
                mov     eax, [rcx+18h]
                cmp     eax, [r10+18h]
                jb      short loc_1406F2EA1
                jbe     short loc_1406F2EA9

loc_1406F2E9A:                          ; CODE XREF: sub_1406F2E80+4E↓j
                mov     eax, 1
                jmp     short loc_1406F2EA3
; ---------------------------------------------------------------------------

loc_1406F2EA1:                          ; CODE XREF: sub_1406F2E80+16↑j
                                        ; sub_1406F2E80+4C↓j
                xor     eax, eax

loc_1406F2EA3:                          ; CODE XREF: sub_1406F2E80+1F↑j
                                        ; sub_1406F2E80+55↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F2EA9:                          ; CODE XREF: sub_1406F2E80+18↑j
                cmp     dword ptr [rcx+1Ch], 3
                mov     rax, [r10+10h]
                mov     r8, [rcx+10h]
                lea     rdx, [rax+8]
                lea     rcx, [r8+8]
                cmovnz  rdx, rax
                cmovnz  rcx, r8
                call    _wcsicmp
                test    eax, eax
                js      short loc_1406F2EA1
                jg      short loc_1406F2E9A

loc_1406F2ED0:                          ; CODE XREF: sub_1406F2E80+D↑j
                mov     eax, 2
                jmp     short loc_1406F2EA3
sub_1406F2E80   endp

; ---------------------------------------------------------------------------
algn_1406F2ED7:                         ; DATA XREF: .pdata:0000000140104CA0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406F2EE0   proc near               ; DATA XREF: .pdata:0000000140104CAC↑o
                                        ; PAGEDATA:0000000140D2D528↓o

arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

                mov     r9d, [rsp+arg_30]
                mov     r10, rdx
                mov     r11, rcx
                mov     rax, 8888888888888889h
                mul     r8
                and     r11d, 3
                shr     rdx, 3
                imul    eax, edx, 0Fh
                sub     r8d, eax
                mov     rax, 0AAAAAAAAAAAAAAABh
                mul     r10
                lea     ecx, [r8+1]
                ror     r9d, cl
                lea     rcx, [r10+1]
                shr     rdx, 1
                add     rdx, r11
                add     rcx, rdx
                mov     rdx, [rsp+arg_28]
                and     ecx, 3
                movzx   eax, word ptr [rdx+rcx*2]
                xor     eax, [rsp+arg_30]
                movzx   ecx, word ptr [rdx+r11*2]
                imul    eax, ecx
                add     eax, r9d
                retn
sub_1406F2EE0   endp

; ---------------------------------------------------------------------------
                align 4
algn_1406F2F44:                         ; DATA XREF: .pdata:0000000140104CAC↑o
                align 10h
; Exported entry 517. FsRtlNotifyFilterReportChange

; =============== S U B R O U T I N E =======================================


