RtlDeleteHashTable proc near            ; CODE XREF: sub_140376B30+15D↑p
                                        ; sub_1403502C4+133658↓p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                cmp     dword ptr [rcx+8], 80h
                mov     rdi, rcx
                mov     rbx, [rcx+20h]
                ja      short loc_140379769
                test    rbx, rbx
                jz      short loc_140379743

loc_140379739:                          ; CODE XREF: RtlDeleteHashTable+69↓j
                                        ; RtlDeleteHashTable+7D↓j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140379743:                          ; CODE XREF: RtlDeleteHashTable+27↑j
                                        ; RtlDeleteHashTable+5C↓j
                mov     eax, [rdi]
                test    al, 1
                jz      short loc_140379753
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_140379753:                          ; CODE XREF: RtlDeleteHashTable+37↑j
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140379769:                          ; CODE XREF: RtlDeleteHashTable+22↑j
                test    rbx, rbx
                jz      short loc_140379743
                xor     ebp, ebp
                mov     rsi, rbx

loc_140379773:                          ; CODE XREF: RtlDeleteHashTable+7B↓j
                mov     rcx, [rsi]
                test    rcx, rcx
                jz      short loc_140379739
                xor     edx, edx
                call    ExFreePoolWithTag
                inc     ebp
                add     rsi, 8
                cmp     ebp, 10h
                jb      short loc_140379773
                jmp     short loc_140379739
RtlDeleteHashTable endp
