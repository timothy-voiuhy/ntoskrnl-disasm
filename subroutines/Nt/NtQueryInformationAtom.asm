NtQueryInformationAtom proc near        ; DATA XREF: .rdata:0000000140083274↑o
                                        ; .pdata:0000000140105858↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140828166 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 60h
                mov     r14d, r9d
                mov     rdi, r8
                mov     esi, edx
                movzx   r15d, cx
                and     dword ptr [rax-28h], 0
                and     qword ptr [rax-20h], 0
                and     dword ptr [rax-30h], 0
                and     dword ptr [rax-34h], 0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     rdx, [rax-20h]
                lea     ecx, [r9+2]
                call    sub_1406630E0
                cmp     [rsp+68h+var_20], 0
                jz      loc_140828166

loc_140703C75:                          ; DATA XREF: .rdata:0000000140083260↑o
;   __try { // __except at loc_140703D98
                mov     rax, gs:188h
                mov     [rsp+68h+var_18], rax
                mov     al, [rax+232h]
                mov     [rsp+68h+var_38], al
                test    al, al
                jz      short loc_140703CC4
                mov     edx, r14d
                mov     r8d, 4
                mov     rcx, rdi
                call    ProbeForWrite
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jz      short loc_140703CC4
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                cmovb   rcx, rax
                mov     eax, [rcx]
                mov     [rcx], eax

loc_140703CC4:                          ; CODE XREF: NtQueryInformationAtom+6F↑j
                                        ; NtQueryInformationAtom+8D↑j
                xor     ebx, ebx
                test    esi, esi
                jnz     short loc_140703D42
                lea     ebx, [rsi+6]
                cmp     r14d, ebx
                jb      loc_140703D8F
                and     [rsp+68h+var_34], esi
                lea     eax, [r14-6]
                mov     [rsp+68h+var_30], eax
                lea     rax, [rdi+6]
                lea     rcx, [rsp+68h+var_30]
                mov     [rsp+68h+var_40], rcx
                mov     [rsp+68h+var_48], rax
                lea     r9, [rsp+68h+var_28]
                lea     r8, [rsp+68h+var_34]
                movzx   edx, r15w
                mov     rcx, [rsp+68h+var_20]
                call    RtlQueryAtomInAtomTable
                mov     edx, eax
                mov     [rsp+68h+var_2C], eax
                test    eax, eax
                js      short loc_140703D31
                mov     eax, [rsp+68h+var_34]
                mov     [rdi], ax
                mov     eax, [rsp+68h+var_28]
                mov     [rdi+2], ax
                mov     eax, [rsp+68h+var_30]
                mov     [rdi+4], ax
                lea     ebx, [rax+8]

loc_140703D31:                          ; CODE XREF: NtQueryInformationAtom+F5↑j
                                        ; NtQueryInformationAtom+130↓j ...
                mov     rax, [rsp+68h+arg_20]
                test    rax, rax
                jz      short loc_140703D96
                mov     [rax], ebx
                jmp     short loc_140703D96
; ---------------------------------------------------------------------------

loc_140703D42:                          ; CODE XREF: NtQueryInformationAtom+A8↑j
                cmp     esi, 1
                jz      short loc_140703D52
                mov     edx, 0C0000003h
                mov     [rsp+68h+var_2C], edx
                jmp     short loc_140703D31
; ---------------------------------------------------------------------------

loc_140703D52:                          ; CODE XREF: NtQueryInformationAtom+125↑j
                mov     ebx, 4
                cmp     r14d, ebx
                jnb     short loc_140703D63
                mov     eax, 0C0000004h
                jmp     short loc_140703DA0
; ---------------------------------------------------------------------------

loc_140703D63:                          ; CODE XREF: NtQueryInformationAtom+13A↑j
                lea     r9, [rdi+4]
                lea     edx, [r14-4]
                shr     edx, 1
                mov     r8, rdi
                mov     rcx, [rsp+68h+var_20]
                call    sub_140914998
                mov     edx, eax
                mov     [rsp+68h+var_2C], eax
                test    eax, eax
                js      short loc_140703D31
                mov     ecx, [rdi]
                lea     ebx, ds:4[rcx*2]
                jmp     short loc_140703D31
; ---------------------------------------------------------------------------

loc_140703D8F:                          ; CODE XREF: NtQueryInformationAtom+B0↑j
                mov     eax, 0C0000004h
                jmp     short loc_140703DA0
; ---------------------------------------------------------------------------

loc_140703D96:                          ; CODE XREF: NtQueryInformationAtom+11C↑j
                                        ; NtQueryInformationAtom+120↑j
                jmp     short loc_140703D9E
;   } // starts at 140703C75
; ---------------------------------------------------------------------------

loc_140703D98:                          ; DATA XREF: .rdata:0000000140083260↑o
;   __except(1) // owned by 140703C75
                mov     edx, eax
                mov     [rsp+68h+var_2C], eax

loc_140703D9E:                          ; CODE XREF: NtQueryInformationAtom:loc_140703D96↑j
                mov     eax, edx

loc_140703DA0:                          ; CODE XREF: NtQueryInformationAtom+141↑j
                                        ; NtQueryInformationAtom+174↑j ...
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140703C20
NtQueryInformationAtom endp
