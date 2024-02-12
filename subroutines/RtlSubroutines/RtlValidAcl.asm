RtlValidAcl     proc near               ; CODE XREF: RtlDeleteAce+15↑p
                                        ; sub_1405E2A44+11↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407FF59E SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   eax, byte ptr [rcx]
                mov     rdi, rcx
                sub     al, 2
                cmp     al, 2
                ja      loc_140622DCD
                lea     rax, [rcx+3]
                and     rax, 0FFFFFFFFFFFFFFFEh
                lea     r14, [rcx+2]
                cmp     rax, r14
                jnz     loc_140622DCD
                cmp     word ptr [r14], 8
                jb      loc_140622DCD
                xor     ebp, ebp
                lea     rbx, [rcx+8]
                cmp     bp, [rcx+4]
                jnb     loc_140622D72
                mov     r15d, 1A660Fh

loc_140622CDE:                          ; CODE XREF: RtlValidAcl+EC↓j
                movzx   edx, word ptr [r14]
                lea     rax, [rbx+4]
                add     rdx, rdi
                cmp     rax, rdx
                jnb     loc_140622DCD
                lea     rax, [rbx+3]
                and     rax, 0FFFFFFFFFFFFFFFEh
                lea     rsi, [rbx+2]
                cmp     rax, rsi
                jnz     loc_140622DCD
                movzx   ecx, word ptr [rsi]
                lea     rax, [rcx+rbx]
                cmp     rax, rdx
                ja      loc_140622DCD
                movzx   edx, byte ptr [rbx]
                cmp     dl, 14h
                ja      short loc_140622D8E
                bt      r15d, edx
                jnb     short loc_140622D8E
                lea     rax, [rcx+3]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rcx
                jnz     loc_140622DCD
                cmp     ecx, 10h
                jb      loc_140622DCD
                cmp     byte ptr [rbx+8], 1
                jnz     loc_140622DCD
                movzx   eax, byte ptr [rbx+9]
                cmp     al, 0Fh
                ja      short loc_140622DCD
                lea     rax, ds:10h[rax*4]
                cmp     rcx, rax
                jb      short loc_140622DCD

loc_140622D5E:                          ; CODE XREF: RtlValidAcl+14B↓j
                                        ; RtlValidAcl+1DC937↓j ...
                movzx   eax, word ptr [rsi]
                inc     ebp
                add     rbx, rax
                movzx   eax, word ptr [rdi+4]
                cmp     ebp, eax
                jb      loc_140622CDE

loc_140622D72:                          ; CODE XREF: RtlValidAcl+52↑j
                mov     al, 1

loc_140622D74:                          ; CODE XREF: RtlValidAcl+14F↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140622D8E:                          ; CODE XREF: RtlValidAcl+9D↑j
                                        ; RtlValidAcl+A3↑j
                cmp     dl, 4
                jz      loc_1407FF59E
                lea     eax, [rdx-5]
                cmp     al, 3
                jbe     loc_1407FF5E4
                lea     eax, [rdx-0Bh]
                cmp     al, 1
                jbe     loc_1407FF5E4
                lea     eax, [rdx-0Fh]
                cmp     al, 1
                jbe     loc_1407FF5E4
                cmp     dl, 12h
                jnz     loc_1407FF5BC
                mov     rcx, rbx
                call    sub_140716A54
                test    al, al
                jnz     short loc_140622D5E

loc_140622DCD:                          ; CODE XREF: RtlValidAcl+22↑j
                                        ; RtlValidAcl+37↑j ...
                xor     al, al
                jmp     short loc_140622D74
RtlValidAcl     endp

; ---------------------------------------------------------------------------
algn_140622DD1:                         ; DATA XREF: .rdata:000000014004EEA4↑o
                                        ; .pdata:00000001400FDC68↑o
                align 20h
; Exported entry 2457. RtlValidSid

; =============== S U B R O U T I N E =======================================


