NtAllocateUuids proc near               ; DATA XREF: .rdata:0000000140087CB0↑o
                                        ; .pdata:0000000140106AA0↑o ...

var_46          = byte ptr -46h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_20          = qword ptr -20h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 00000001407E8968 SIZE 00000068 BYTES
; FUNCTION CHUNK AT 000000014082DAAA SIZE 0000006F BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r12, r9
                mov     r13, r8
                mov     r15, rdx
                mov     r14, rcx
                xor     ecx, ecx
                mov     [rax-38h], rcx
                mov     [rax-44h], ecx
                mov     [rax-40h], ecx

loc_14071A3F5:                          ; DATA XREF: .rdata:0000000140087C8C↑o
;   __try { // __except at loc_14071A478
                mov     rax, gs:188h
                mov     [rsp+68h+var_20], rax
                mov     al, [rax+232h]
                mov     [rsp+68h+var_46], al
                test    al, al
                jz      short loc_14071A476
                mov     r8b, 3
                test    r8b, r14b
                jnz     short loc_14071A470
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     r14, rdx
                cmovb   rcx, r14
                mov     al, [rcx]
                mov     [rcx], al
                mov     al, [rcx+7]
                mov     [rcx+7], al
                test    r8b, r15b
                jnz     short loc_14071A470
                mov     rcx, rdx
                cmp     r15, rdx
                cmovb   rcx, r15
                mov     eax, [rcx]
                mov     [rcx], eax
                test    r8b, r13b
                jnz     short loc_14071A470
                mov     rcx, rdx
                cmp     r13, rdx
                cmovb   rcx, r13
                mov     eax, [rcx]
                mov     [rcx], eax
                cmp     r9, rdx
                cmovb   rdx, r9
                mov     al, [rdx]
                mov     [rdx], al
                mov     al, [rdx+5]
                mov     [rdx+5], al
                jmp     short loc_14071A476
; ---------------------------------------------------------------------------

loc_14071A470:                          ; CODE XREF: NtAllocateUuids+57↑j
                                        ; NtAllocateUuids+7A↑j ...
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 2

loc_14071A476:                          ; CODE XREF: NtAllocateUuids+4F↑j
                                        ; NtAllocateUuids+AE↑j
                jmp     short loc_14071A47D
;   } // starts at 14071A3F5
; ---------------------------------------------------------------------------

loc_14071A478:                          ; DATA XREF: .rdata:0000000140087C8C↑o
;   __except(loc_1407E8968) // owned by 14071A3F5
                jmp     loc_14071A54D
; ---------------------------------------------------------------------------

loc_14071A47D:                          ; CODE XREF: NtAllocateUuids:loc_14071A476↑j
                mov     rsi, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rsi+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, qword_140CEC940
                call    sub_140244C10
                mov     rdi, rax
                lock bts cs:qword_140CEC940, 0
                jb      loc_14082DAAA

loc_14071A4B5:                          ; CODE XREF: NtAllocateUuids+113701↓j
                test    rdi, rdi
                jz      short loc_14071A4BE
                or      byte ptr [rdi+1Ah], 1

loc_14071A4BE:                          ; CODE XREF: NtAllocateUuids+F8↑j
                lea     r8, [rsp+68h+var_40]
                lea     rdx, [rsp+68h+var_44]
                lea     rcx, [rsp+68h+var_38]
                call    sub_14071A5A4
                mov     edi, eax
                test    eax, eax
                js      loc_14082DAC6
                call    sub_14071A574
                mov     dil, cs:byte_140D2D006
                lock xadd cs:qword_140CEC940, rbx
                test    bl, 2
                jnz     loc_14082DAFE

loc_14071A4FA:                          ; CODE XREF: NtAllocateUuids+113741↓j
                                        ; NtAllocateUuids+113754↓j
                lea     rcx, qword_140CEC940
                call    sub_140243660
                mov     rcx, rsi
                call    sub_14021E1F0
                nop

loc_14071A50F:                          ; DATA XREF: .rdata:0000000140087C9C↑o
;   __try { // __except at loc_14071A53F
                mov     rax, [rsp+68h+var_38]
                mov     [r14], rax
                mov     eax, [rsp+68h+var_44]
                mov     [r15], eax
                mov     eax, [rsp+68h+var_40]
                mov     [r13+0], eax
                mov     eax, cs:dword_140D2D2C4+2
                mov     [r12], eax
                movzx   eax, word ptr cs:dword_140D2D2C8+2
                mov     [r12+4], ax
                jmp     short loc_14071A541
;   } // starts at 14071A50F
; ---------------------------------------------------------------------------

loc_14071A53F:                          ; DATA XREF: .rdata:0000000140087C9C↑o
;   __except(loc_1407E899C) // owned by 14071A50F
                jmp     short loc_14071A54D
; ---------------------------------------------------------------------------

loc_14071A541:                          ; CODE XREF: NtAllocateUuids+17D↑j
                neg     dil
                sbb     eax, eax
                not     eax
                and     eax, 40020056h

loc_14071A54D:                          ; CODE XREF: NtAllocateUuids:loc_14071A478↑j
                                        ; NtAllocateUuids:loc_14071A53F↑j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14071A3C0
NtAllocateUuids endp
