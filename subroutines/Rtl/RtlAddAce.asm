RtlAddAce       proc near               ; CODE XREF: sub_140201C7C+122↑p
                                        ; sub_1403F81A0+205↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014080013A SIZE 00000050 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                and     qword ptr [rax-28h], 0
                mov     rdi, r9
                mov     ebp, r8d
                mov     esi, edx
                mov     rbx, rcx
                call    RtlValidAcl
                test    al, al
                jz      loc_140800154
                lea     rdx, [rsp+48h+var_28]
                mov     rcx, rbx
                call    RtlFirstFreeAce
                test    al, al
                jz      loc_140800154
                movzx   eax, byte ptr [rbx]
                mov     rcx, rdi
                mov     r14d, [rsp+48h+arg_20]
                movzx   r15d, sil
                mov     r11d, r14d
                cmp     r15b, al
                cmovbe  r15d, eax
                lea     rdx, [r14+rdi]
                xor     r12d, r12d
                cmp     rdi, rdx
                jnb     short loc_14062459D

loc_140624584:                          ; CODE XREF: RtlAddAce+8B↓j
                mov     al, [rcx]
                cmp     al, 3
                ja      loc_14080013A

loc_14062458E:                          ; CODE XREF: RtlAddAce+1DBC35↓j
                                        ; RtlAddAce:loc_14080014E↓j
                movzx   eax, word ptr [rcx+2]
                inc     r12d
                add     rcx, rax
                cmp     rcx, rdx
                jb      short loc_140624584

loc_14062459D:                          ; CODE XREF: RtlAddAce+72↑j
                cmp     rcx, rdx
                ja      loc_140800154
                mov     r8, [rsp+48h+var_28]
                test    r8, r8
                jz      short loc_14062462E
                movzx   ecx, word ptr [rbx+2]
                lea     rax, [r14+r8]
                add     rcx, rbx
                cmp     rax, rcx
                ja      short loc_14062462E
                xor     ecx, ecx
                lea     rdx, [rbx+8]
                test    ebp, ebp
                jnz     short loc_140624616

loc_1406245CA:                          ; CODE XREF: RtlAddAce+10E↓j
                                        ; RtlAddAce+1DBC5F↓j
                sub     r8d, edx
                sub     r8d, 1
                movsxd  r9, r8d
                jns     short loc_140624625

loc_1406245D6:                          ; CODE XREF: RtlAddAce+1DBC75↓j
                test    r14d, r14d
                jz      short loc_1406245EC
                sub     rdi, rdx

loc_1406245DE:                          ; CODE XREF: RtlAddAce+DA↓j
                mov     al, [rdi+rdx]
                mov     [rdx], al
                inc     rdx
                sub     r11, 1
                jnz     short loc_1406245DE

loc_1406245EC:                          ; CODE XREF: RtlAddAce+C9↑j
                add     [rbx+4], r12w
                xor     eax, eax
                mov     [rbx], r15b

loc_1406245F6:                          ; CODE XREF: RtlAddAce+123↓j
                                        ; RtlAddAce+1DBC49↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140624616:                          ; CODE XREF: RtlAddAce+B8↑j
                movzx   r9d, word ptr [rbx+4]

loc_14062461B:                          ; CODE XREF: RtlAddAce+1DBC59↓j
                cmp     ecx, r9d
                jnb     short loc_1406245CA
                jmp     loc_14080015E
; ---------------------------------------------------------------------------

loc_140624625:                          ; CODE XREF: RtlAddAce+C4↑j
                lea     r10d, [r8+r14]
                jmp     loc_140800174
; ---------------------------------------------------------------------------

loc_14062462E:                          ; CODE XREF: RtlAddAce+9E↑j
                                        ; RtlAddAce+AE↑j
                mov     eax, 0C0000023h
                jmp     short loc_1406245F6
RtlAddAce       endp

; ---------------------------------------------------------------------------
algn_140624635:                         ; DATA XREF: .rdata:000000014004F1C0↑o
                                        ; .pdata:00000001400FDD64↑o
                align 20h
; Exported entry 2565. SeSetSecurityDescriptorInfo

; =============== S U B R O U T I N E =======================================


