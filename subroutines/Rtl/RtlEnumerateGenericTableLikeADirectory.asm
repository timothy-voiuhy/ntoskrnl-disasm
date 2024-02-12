RtlEnumerateGenericTableLikeADirectory proc near
                                        ; CODE XREF: sub_1406C9C28+BB↓p
                                        ; sub_1406C9C28+169↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 000000014046D6CA SIZE 0000002B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                cmp     dword ptr [rcx+2Ch], 0
                mov     ebp, r9d
                mov     rsi, [rsp+38h+arg_20]
                mov     r12, r8
                mov     rdi, rcx
                mov     rbx, [rsi]
                mov     [rax+28h], rbx
                jz      loc_1403108AA
                mov     r14, [rsp+38h+arg_28]
                lea     r15, PsGetHostSilo
                mov     eax, [rdi+40h]
                test    rdx, rdx
                mov     rcx, rbx
                cmovnz  r15, rdx
                cmp     [r14], eax
                jnz     loc_14031089C

loc_14031080E:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+F5↓j
                test    rcx, rcx
                jz      short loc_14031087B

loc_140310813:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+E7↓j
                                        ; RtlEnumerateGenericTableLikeADirectory+15CF27↓j
                test    ebp, ebp
                jz      short loc_140310822
                mov     rcx, rbx
                call    sub_1403108D0
                mov     rbx, rax

loc_140310822:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+65↑j
                                        ; RtlEnumerateGenericTableLikeADirectory+112↓j
                test    rbx, rbx
                jz      loc_1403108AE

loc_14031082B:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+15CF3A↓j
                lea     rdx, [rbx+20h]
                mov     r8, r12
                mov     rcx, rdi
                mov     rax, r15
                call    sub_1404079D0
                mov     ecx, eax
                cmp     eax, 0C0000272h
                jz      loc_14046D6DC
                mov     [rsi], rbx
                mov     eax, [rdi+40h]
                mov     [r14], eax
                test    ecx, ecx
                jnz     short loc_1403108AE
                lea     rax, [rbx+20h]

loc_14031085B:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+100↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031087B:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+61↑j
                mov     rdx, [rsp+38h+arg_30]
                lea     r8, [rsp+38h+arg_20]
                mov     rcx, rdi
                call    sub_140310FFC
                cmp     eax, 1
                jnz     short loc_1403108B2
                mov     rbx, [rsp+38h+arg_20]
                jmp     loc_140310813
; ---------------------------------------------------------------------------

loc_14031089C:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+58↑j
                xor     ebx, ebx
                mov     [rsp+38h+arg_20], rbx
                xor     ecx, ecx
                jmp     loc_14031080E
; ---------------------------------------------------------------------------

loc_1403108AA:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+36↑j
                and     qword ptr [rsi], 0

loc_1403108AE:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+75↑j
                                        ; RtlEnumerateGenericTableLikeADirectory+A5↑j ...
                xor     eax, eax
                jmp     short loc_14031085B
; ---------------------------------------------------------------------------

loc_1403108B2:                          ; CODE XREF: RtlEnumerateGenericTableLikeADirectory+E0↑j
                xor     ebp, ebp
                cmp     eax, 3
                jz      loc_14046D6CA
                mov     rbx, [rsp+38h+arg_20]
                jmp     loc_140310822
RtlEnumerateGenericTableLikeADirectory endp
