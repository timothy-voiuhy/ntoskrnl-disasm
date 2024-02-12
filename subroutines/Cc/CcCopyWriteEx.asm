CcCopyWriteEx   proc near               ; CODE XREF: CcCopyWrite+14↓p
                                        ; CcFastCopyWrite+1D↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                push    rbx
                sub     rsp, 70h
                mov     [rsp+78h+var_20], 0
                mov     r10, rcx
                mov     r11, gs:188h
                movzx   ebx, r9b
                mov     rcx, r11
                call    sub_140310190
                cmp     eax, 2
                jl      loc_14031015D

loc_140310070:                          ; CODE XREF: CcCopyWriteEx+129↓j
                                        ; CcCopyWriteEx+137↓j
                test    eax, eax
                jle     loc_14031014C

loc_140310078:                          ; CODE XREF: CcCopyWriteEx+13D↓j
                mov     eax, [r10+50h]
                test    al, 10h
                jnz     loc_14031014C

loc_140310084:                          ; CODE XREF: CcCopyWriteEx+10E↓j
                mov     rax, [r10+28h]
                mov     r9d, 2
                mov     r11, [rax+8]
                mov     rax, [rdx]
                mov     [rsp+78h+var_20], rax
                test    eax, 0FFFh
                jnz     short loc_1403100B0
                cmp     r8d, 1000h
                jb      short loc_1403100B0
                mov     r9d, 3

loc_1403100B0:                          ; CODE XREF: CcCopyWriteEx+5F↑j
                                        ; CcCopyWriteEx+68↑j
                mov     [rsp+78h+var_28], rax
                lea     ecx, [rax+r8]
                mov     edx, r9d
                or      edx, 4
                and     ecx, 0FFFh
                cmovnz  edx, r9d
                and     eax, 0FFFFF000h
                mov     dword ptr [rsp+78h+var_28], eax
                mov     rax, [r10+18h]
                mov     r9, [rax+28h]
                mov     [rsp+78h+var_18], r9
                sub     r9, [rsp+78h+var_28]
                test    r9, r9
                jg      short loc_140310131
                mov     ecx, 7

loc_1403100EE:                          ; CODE XREF: CcCopyWriteEx+FC↓j
                                        ; CcCopyWriteEx+105↓j ...
                mov     rax, [rsp+78h+arg_28]
                mov     r9d, r8d
                mov     rdx, [rsp+78h+arg_20]
                lea     r8, [rsp+78h+var_20]
                mov     [rsp+78h+var_38], rax
                lea     rax, [rsp+78h+var_18]
                mov     [rsp+78h+var_40], bl
                mov     [rsp+78h+var_48], rax
                mov     [rsp+78h+var_50], r10
                mov     [rsp+78h+var_58], ecx
                mov     rcx, r11
                call    sub_1402841E0
                add     rsp, 70h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310131:                          ; CODE XREF: CcCopyWriteEx+A7↑j
                mov     rax, r9
                mov     ecx, edx
                shr     rax, 20h
                test    eax, eax
                jnz     short loc_1403100EE
                cmp     r9d, 1000h
                ja      short loc_1403100EE
                or      ecx, 6
                jmp     short loc_1403100EE
; ---------------------------------------------------------------------------

loc_14031014C:                          ; CODE XREF: CcCopyWriteEx+32↑j
                                        ; CcCopyWriteEx+3E↑j
                test    bl, bl
                jnz     loc_140310084
                xor     al, al
                add     rsp, 70h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031015D:                          ; CODE XREF: CcCopyWriteEx+2A↑j
                mov     rcx, gs:188h
                cmp     r11, rcx
                jnz     loc_140310070
                cmp     dword ptr [r11+550h], 0
                jz      loc_140310070
                jmp     loc_140310078
CcCopyWriteEx   endp

; ---------------------------------------------------------------------------
algn_140310182:                         ; DATA XREF: .pdata:00000001400D4778↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140310190   proc near               ; CODE XREF: sub_14025BCB0+42C↑p
                                        ; sub_1402841E0+19A↑p ...
                mov     eax, [rcx+510h]
                mov     rcx, [rcx+220h]
                shr     eax, 9
                and     eax, 7
                test    dword ptr [rcx+464h], 100000h
                jnz     short loc_1403101B1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403101B1:                          ; CODE XREF: sub_140310190+1D↑j
                xor     eax, eax
                retn
sub_140310190   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403101B5:                         ; DATA XREF: .pdata:00000001400D4784↑o
                align 20h
; Exported entry 836. IoGetAttachedDeviceReference

; =============== S U B R O U T I N E =======================================


