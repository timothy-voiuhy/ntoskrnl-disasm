IoCheckQuotaBufferValidity proc near    ; CODE XREF: sub_140893B3C+2E6↑p
                                        ; DATA XREF: .pdata:000000014011C970↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, r8
                mov     edi, edx
                mov     rsi, rcx
                mov     rbx, rcx
                cmp     edx, 7FFFFFFFh
                jbe     short loc_140894F63
                mov     eax, 80000014h
                jmp     short loc_140894F6E
; ---------------------------------------------------------------------------

loc_140894F63:                          ; CODE XREF: IoCheckQuotaBufferValidity+2A↑j
                test    sil, 7
                jz      short loc_140894F74
                mov     eax, 80000002h

loc_140894F6E:                          ; CODE XREF: IoCheckQuotaBufferValidity+31↑j
                and     dword ptr [r8], 0
                jmp     short loc_140894FC5
; ---------------------------------------------------------------------------

loc_140894F74:                          ; CODE XREF: IoCheckQuotaBufferValidity+37↑j
                cmp     edx, 34h ; '4'
                jb      short loc_140894FBB

loc_140894F79:                          ; CODE XREF: IoCheckQuotaBufferValidity+89↓j
                lea     rcx, [rbx+28h]
                call    RtlValidSid
                test    al, al
                jz      short loc_140894FBB
                lea     rcx, [rbx+28h]
                call    RtlLengthSid
                lea     ecx, [rax+28h]
                cmp     edi, ecx
                jb      short loc_140894FBB
                cmp     [rbx+4], eax
                jnz     short loc_140894FBB
                mov     eax, [rbx]
                test    eax, eax
                jz      short loc_140894FE1
                cmp     ecx, eax
                ja      short loc_140894FBB
                test    al, 7
                jnz     short loc_140894FBB
                test    eax, eax
                js      short loc_140894FBB
                cmp     edi, eax
                jb      short loc_140894FBB
                sub     edi, eax
                add     rbx, rax
                cmp     edi, 34h ; '4'
                jnb     short loc_140894F79

loc_140894FBB:                          ; CODE XREF: IoCheckQuotaBufferValidity+47↑j
                                        ; IoCheckQuotaBufferValidity+54↑j ...
                sub     ebx, esi
                mov     eax, 0C0000266h
                mov     [r14], ebx

loc_140894FC5:                          ; CODE XREF: IoCheckQuotaBufferValidity+42↑j
                                        ; IoCheckQuotaBufferValidity+B3↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140894FE1:                          ; CODE XREF: IoCheckQuotaBufferValidity+6F↑j
                xor     eax, eax
                jmp     short loc_140894FC5
IoCheckQuotaBufferValidity endp
