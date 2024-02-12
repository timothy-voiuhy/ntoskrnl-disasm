NtQuerySecurityObject proc near         ; CODE XREF: sub_1407313B8+5F↓p
                                        ; sub_1407313B8+A5↓p
                                        ; DATA XREF: ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = byte ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], r9d
                mov     [rsp+arg_8], edx
                push    rdi
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rsi, r8
                mov     r14, rcx
                xor     r15d, r15d
                mov     [rsp+88h+var_38], r15d
                mov     [rsp+88h+var_28], r15
                mov     rax, gs:188h
                movzx   edi, byte ptr [rax+232h]
                test    dil, dil
                jz      loc_1406EC862

loc_1406EC728:                          ; DATA XREF: .rdata:000000014007D6A8↑o
;   __try { // __except at loc_1406EC760
                mov     rbx, [rsp+88h+arg_20]
                mov     rcx, rbx
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                jb      short loc_1406EC745
                mov     rcx, rax

loc_1406EC745:                          ; CODE XREF: NtQuerySecurityObject+60↑j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     edx, [rsp+88h+arg_18]
                mov     r8d, 4
                mov     rcx, rsi
                call    ProbeForWrite
                jmp     short loc_1406EC765
;   } // starts at 1406EC728
; ---------------------------------------------------------------------------

loc_1406EC760:                          ; DATA XREF: .rdata:000000014007D6A8↑o
;   __except(1) // owned by 1406EC728
                jmp     loc_1406EC84B
; ---------------------------------------------------------------------------

loc_1406EC765:                          ; CODE XREF: NtQuerySecurityObject+7E↑j
                                        ; NtQuerySecurityObject+18A↓j
                lea     rdx, [rsp+88h+var_38]
                mov     ecx, [rsp+88h+arg_8]
                call    sub_1406EC878
                mov     [rsp+88h+var_30], r15
                lea     rax, [rsp+88h+var_28]
                mov     [rsp+88h+var_60], rax
                lea     rax, [rsp+88h+var_30]
                mov     [rsp+88h+var_68], rax
                movzx   r9d, dil
                xor     r8d, r8d
                mov     edx, [rsp+88h+var_38]
                mov     rcx, r14
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1406EC84B
                mov     r14, [rsp+88h+var_30]
                lea     rdx, [r14-30h]
                mov     rax, rdx
                shr     rax, 8
                movzx   ecx, al
                movzx   eax, byte ptr [rdx+18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                lea     r8, qword_140CFCE60
                mov     r8, [r8+rcx*8]
                mov     rax, [r8+98h]
                lea     rcx, [r8+4Ch]
                add     rdx, 28h ; '('
                mov     [rsp+88h+var_48], dil
                mov     [rsp+88h+var_50], rcx
                mov     ecx, [r8+64h]
                mov     [rsp+88h+var_58], ecx
                mov     [rsp+88h+var_60], rdx
                lea     rcx, [rsp+88h+arg_18]
                mov     [rsp+88h+var_68], rcx
                mov     r9, rsi
                lea     r8, [rsp+88h+arg_8]
                mov     edx, 1
                mov     rcx, r14
                call    sub_1404079D0
                mov     edi, eax

loc_1406EC826:                          ; DATA XREF: .rdata:000000014007D6B8↑o
;   __try { // __except at loc_1406EC831
                mov     edx, [rsp+88h+arg_18]
                mov     [rbx], edx
                jmp     short loc_1406EC841
;   } // starts at 1406EC826
; ---------------------------------------------------------------------------

loc_1406EC831:                          ; DATA XREF: .rdata:000000014007D6B8↑o
;   __except(1) // owned by 1406EC826
                mov     ebx, eax
                mov     rcx, [rsp+88h+var_30]
                call    PsDereferenceSiloContext
                mov     eax, ebx
                jmp     short loc_1406EC84B
; ---------------------------------------------------------------------------

loc_1406EC841:                          ; CODE XREF: NtQuerySecurityObject+14F↑j
                mov     rcx, r14
                call    PsDereferenceSiloContext
                mov     eax, edi

loc_1406EC84B:                          ; CODE XREF: NtQuerySecurityObject:loc_1406EC760↑j
                                        ; NtQuerySecurityObject+C4↑j ...
                lea     r11, [rsp+88h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406EC862:                          ; CODE XREF: NtQuerySecurityObject+42↑j
                mov     rbx, [rsp+88h+arg_20]
                jmp     loc_1406EC765
; } // starts at 1406EC6E0
NtQuerySecurityObject endp
