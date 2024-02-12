ntoskrnl_20     proc near               ; CODE XREF: sub_1405B2F98+134↑p
                                        ; sub_1405B3334+2A↑p ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E7D8C SIZE 00000043 BYTES
; FUNCTION CHUNK AT 0000000140823C0E SIZE 00000030 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+8], rcx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r14d, r8d
                mov     rdi, rdx
                mov     r15, rcx
                xor     ecx, ecx
                mov     [rax-40h], rcx
                xor     esi, esi
                mov     [rax-38h], rsi
                test    rdx, rdx
                jz      loc_140823C0E
                and     r9d, 1
                test    r9b, r9b
                jnz     short loc_1406E883B
                cmp     [r15+0B6F0h], rcx
                jz      loc_1406E89C1

loc_1406E883B:                          ; CODE XREF: ntoskrnl_20+3C↑j
                                        ; DATA XREF: .rdata:000000014007C180↑o
;   __try { // __finally(loc_1407E7D8C)
                lea     rsi, [r15+0B7B0h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [r15+0B7A8h]
                test    rax, rax
                jz      loc_1406E88DE
                mov     rax, [rax]
                mov     [rsp+68h+arg_8], rax
                lea     rcx, [rsp+68h+arg_8]
                call    sub_1406E8A98
                mov     [rsp+68h+var_48], eax
                test    eax, eax
                js      loc_1406E8974
                mov     rbx, [rsp+68h+arg_8]

loc_1406E887F:                          ; CODE XREF: ntoskrnl_20+177↓j
                test    r14b, 1
                jnz     short loc_1406E88C2

loc_1406E8885:                          ; CODE XREF: ntoskrnl_20+D8↓j
                test    r14b, 2
                jnz     short loc_1406E88BA

loc_1406E888B:                          ; CODE XREF: ntoskrnl_20+D0↓j
                test    r14b, 4
                jz      short loc_1406E8899
                mov     rax, [rdi+10h]
                mov     [rbx+10h], rax

loc_1406E8899:                          ; CODE XREF: ntoskrnl_20+9F↑j
                test    r14b, 8
                jnz     short loc_1406E88CA

loc_1406E889F:                          ; CODE XREF: ntoskrnl_20+E2↓j
                test    r14b, 10h
                jnz     short loc_1406E88D4

loc_1406E88A5:                          ; CODE XREF: ntoskrnl_20+EC↓j
                test    r14b, 20h
                jz      loc_1406E8974
                mov     al, [rdi+28h]
                mov     [rbx+28h], al
                jmp     loc_1406E8974
; ---------------------------------------------------------------------------

loc_1406E88BA:                          ; CODE XREF: ntoskrnl_20+99↑j
                mov     eax, [rdi+8]
                mov     [rbx+8], eax
                jmp     short loc_1406E888B
; ---------------------------------------------------------------------------

loc_1406E88C2:                          ; CODE XREF: ntoskrnl_20+93↑j
                mov     rax, [rdi]
                mov     [rbx], rax
                jmp     short loc_1406E8885
; ---------------------------------------------------------------------------

loc_1406E88CA:                          ; CODE XREF: ntoskrnl_20+AD↑j
                mov     rax, [rdi+18h]
                mov     [rbx+18h], rax
                jmp     short loc_1406E889F
; ---------------------------------------------------------------------------

loc_1406E88D4:                          ; CODE XREF: ntoskrnl_20+B3↑j
                mov     rax, [rdi+20h]
                mov     [rbx+20h], rax
                jmp     short loc_1406E88A5
; ---------------------------------------------------------------------------

loc_1406E88DE:                          ; CODE XREF: ntoskrnl_20+66↑j
                mov     r12d, 20534C53h
                mov     r8d, r12d
                mov     edx, 30h ; '0'
                lea     ecx, [rdx-2Fh]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+68h+var_40], rax
                test    rax, rax
                jz      short loc_1406E896C
                mov     r8d, r12d
                mov     edx, 8
                lea     ecx, [rdx-7]
                call    ExAllocatePoolWithTag
                mov     r12, rax
                mov     [rsp+68h+var_38], rax
                test    rax, rax
                jz      short loc_1406E896C
                mov     [rax], rbx
                mov     [rsp+68h+arg_8], rbx
                and     qword ptr [rbx], 0
                and     qword ptr [rbx+10h], 0
                mov     dword ptr [rbx+8], 4
                and     qword ptr [rbx+18h], 0
                and     qword ptr [rbx+20h], 0
                mov     byte ptr [rbx+28h], 1
                mov     rcx, rax
                call    sub_1407C5844
                mov     [rsp+68h+var_48], eax
                test    eax, eax
                js      short loc_1406E8974
                mov     [r15+0B7A8h], r12
                and     [rsp+68h+var_40], 0
                and     [rsp+68h+var_38], 0
                jmp     loc_1406E887F
; ---------------------------------------------------------------------------

loc_1406E896C:                          ; CODE XREF: ntoskrnl_20+10F↑j
                                        ; ntoskrnl_20+12C↑j
                mov     [rsp+68h+var_48], 0C0000017h
;   } // starts at 1406E883B

loc_1406E8974:                          ; CODE XREF: ntoskrnl_20+84↑j
                                        ; ntoskrnl_20+B9↑j ...
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rsi], rax
                test    al, 2
                jnz     loc_140823C18

loc_1406E8985:                          ; CODE XREF: ntoskrnl_20+13B42A↓j
                                        ; ntoskrnl_20+13B439↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     ebx, [rsp+68h+var_48]
                mov     rcx, [rsp+68h+var_40]
                mov     rsi, [rsp+68h+var_38]

loc_1406E899B:                          ; CODE XREF: ntoskrnl_20+1D3↓j
                                        ; ntoskrnl_20+13B423↓j
                test    rcx, rcx
                jnz     short loc_1406E89C5

loc_1406E89A0:                          ; CODE XREF: ntoskrnl_20+1DC↓j
                test    rsi, rsi
                jnz     loc_140823C2E

loc_1406E89A9:                          ; CODE XREF: ntoskrnl_20+13B449↓j
                mov     eax, ebx
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406E89C1:                          ; CODE XREF: ntoskrnl_20+45↑j
                xor     ebx, ebx
                jmp     short loc_1406E899B
; ---------------------------------------------------------------------------

loc_1406E89C5:                          ; CODE XREF: ntoskrnl_20+1AE↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406E89A0
; } // starts at 1406E87F0
ntoskrnl_20     endp

; ---------------------------------------------------------------------------
algn_1406E89CE:                         ; DATA XREF: .rdata:000000014007C194↑o
                                        ; .pdata:00000001401046A0↑o
                align 20h
; Exported entry  21.

; =============== S U B R O U T I N E =======================================


