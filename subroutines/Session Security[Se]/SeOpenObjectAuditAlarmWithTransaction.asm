SeOpenObjectAuditAlarmWithTransaction proc near
                                        ; CODE XREF: sub_140631260+66A↑p
                                        ; sub_14064A9E0+747↓p ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = dword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_90          = byte ptr -90h
var_8F          = byte ptr -8Fh
var_8C          = word ptr -8Ch
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h
arg_30          = byte ptr  40h
arg_38          = dword ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h

; FUNCTION CHUNK AT 00000001408031E0 SIZE 00000521 BYTES

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbp
                push    rdi
                push    r13
                push    r14
                lea     rbp, [rax-18h]
                sub     rsp, 118h
                mov     r13, [rbp+10h+arg_20]
                xor     r8d, r8d
                mov     edi, 3E7h
                mov     r11, r9
                mov     r10, rcx
                mov     [rbp+10h+var_90], 0
                mov     r14d, r8d
                mov     [rbp+10h+var_8F], 0
                mov     [rbp+10h+var_70], r8
                mov     [rbp+10h+var_78], r8
                mov     [rbp+10h+var_80], r8
                mov     [rbp+10h+var_68], r8
                mov     [rbp+10h+var_88], r8d
                mov     [rbp+10h+var_8C], di
                cmp     byte ptr [rbp+10h+arg_38], r8b
                jz      loc_140631BB7
                mov     rdx, [r13+20h]

loc_140631A67:                          ; DATA XREF: .rdata:0000000140050F90↑o
                                        ; .rdata:0000000140050FA4↑o ...
                mov     [rax-28h], rbx
                lea     rbx, [r13+20h]
                mov     [rax-30h], rsi
                mov     [rax-38h], r12
                mov     r12, [r13+48h]
                test    rdx, rdx
                jnz     loc_140631BC6
                mov     rsi, [r13+30h]

loc_140631A88:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+1C9↓j
                mov     [rsp+130h+var_38], r15
                movzx   r15d, [rbp+10h+arg_30]
                test    r9, r9
                jz      loc_140631B5E
                movzx   eax, r15b
                mov     edi, 76h ; 'v'
                neg     al
                mov     [rbp+10h+arg_38], edi
                mov     eax, cs:dword_140C1D3C8
                xorps   xmm0, xmm0
                sbb     ecx, ecx
                mov     [rbp+10h+var_8C], di
                and     ecx, 3
                test    r15b, r15b
                mov     ebx, ecx
                movups  [rbp+10h+var_60], xmm0
                setz    r14b
                or      ebx, 30h
                test    r15b, r15b
                movups  [rbp+10h+var_50], xmm0
                cmovnz  ebx, ecx
                test    eax, eax
                jz      loc_140631BFB
                test    eax, ebx
                jnz     loc_1408032BB
                xor     dil, dil
                cmp     cs:dword_140C1D408, r8d
                jnz     loc_1408031E0
                movzx   ebx, [rbp+10h+var_90]
                mov     edi, [rbp+10h+arg_38]

loc_140631AFF:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+1FF↓j
                                        ; SeOpenObjectAuditAlarmWithTransaction+1D1A1C↓j
                lea     r9, [r13+20h]

loc_140631B03:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+219↓j
                mov     ecx, [r13+18h]
                mov     eax, 1
                mov     rdx, [r13+48h]
                and     ecx, 2000000h
                movzx   r8d, r14b
                cmovnz  r8d, eax
                xor     r10d, r10d
                test    ecx, ecx
                movzx   eax, r15b
                cmovz   r10d, eax
                xor     al, al
                nop     dword ptr [rax]

loc_140631B30:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+142↓j
                movzx   ecx, al
                cmp     dword ptr [rdx+rcx*4+58h], 0
                jl      loc_140803426
                inc     al
                cmp     al, 20h ; ' '
                jb      short loc_140631B30
                xor     al, al

loc_140631B46:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+1D1A38↓j
                mov     [r12+0D8h], al
                test    bl, bl
                jnz     loc_140803442
                mov     r14, [rbp+10h+var_78]
                lea     rbx, [r13+20h]

loc_140631B5E:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+98↑j
                test    r15b, r15b
                jz      short loc_140631B71
                mov     rcx, [r12]
                test    rcx, rcx
                jz      short loc_140631B71
                cmp     dword ptr [rcx], 0
                ja      short loc_140631BCE

loc_140631B71:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+161↑j
                                        ; SeOpenObjectAuditAlarmWithTransaction+16A↑j ...
                cmp     [rbp+10h+var_8F], 0
                jnz     loc_140803442
                xor     al, al

loc_140631B7D:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+1D1A4C↓j
                mov     [r13+9], al
                test    al, al
                jnz     loc_140803451
                cmp     [r12+0D8h], al
                jnz     loc_140803451

loc_140631B97:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+1D1CEE↓j
                                        ; SeOpenObjectAuditAlarmWithTransaction+1D1CFC↓j
                mov     r15, [rsp+130h+var_38]
                mov     rsi, [rsp+130h+var_28]
                mov     rbx, [rsp+110h]
                mov     r12, [rsp+130h+var_30]

loc_140631BB7:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+5D↑j
                                        ; DATA XREF: .pdata:00000001400FE778↑o ...
                add     rsp, 118h
                pop     r14
                pop     r13
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140631BC6:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+7E↑j
                                        ; DATA XREF: .pdata:00000001400FE784↑o ...
                mov     rsi, rdx
                jmp     loc_140631A88
; ---------------------------------------------------------------------------

loc_140631BCE:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+16F↑j
                                        ; DATA XREF: .pdata:00000001400FE790↑o ...
                lea     rax, [rbp+10h+var_8C]
                mov     r9, rbx
                xor     r8d, r8d
                mov     [rsp+130h+var_110], rax
                movzx   edx, r15b
                call    sub_1406294B0
                movzx   edi, [rbp+10h+var_8C]
                mov     r11, [rbp+10h+arg_18]
                test    al, al
                jz      loc_140631B71
                jmp     loc_14080343D
; ---------------------------------------------------------------------------

loc_140631BFB:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+DA↑j
                movzx   ebx, [rbp+10h+var_90]
                jmp     loc_140631AFF
; ---------------------------------------------------------------------------

loc_140631C04:                          ; CODE XREF: SeOpenObjectAuditAlarmWithTransaction+1D189C↓j
                                        ; SeOpenObjectAuditAlarmWithTransaction+1D18B6↓j
                movzx   r15d, [rbp+10h+arg_30]
                test    dil, dil
                jnz     loc_1408032BB
                movzx   ebx, [rbp+10h+var_90]
                mov     edi, [rbp+10h+arg_38]
                jmp     loc_140631B03
SeOpenObjectAuditAlarmWithTransaction endp
