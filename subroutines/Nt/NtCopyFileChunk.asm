NtCopyFileChunk proc near               ; DATA XREF: .pdata:00000001400FB130↑o
                                        ; PAGE:000000014098BB58↓o

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = qword ptr -0C8h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_50          = xmmword ptr -50h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = dword ptr  50h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], rsi
                mov     [r11+18h], r8
                mov     [r11+10h], rdx
                mov     [r11+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0F0h
                movaps  xmmword ptr [r11-38h], xmm6
                mov     r14, r9
                and     [rsp+118h+var_B8], 0
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-50h], xmm0
                and     [rsp+118h+var_B0], 0
                and     qword ptr [r11-90h], 0
                xor     eax, eax
                movups  xmmword ptr [r11-68h], xmm0
                mov     [r11-58h], rax
                and     [rsp+118h+var_A0], rax
                and     [rsp+118h+var_70], rax
                mov     rax, gs:188h
                mov     r15b, [rax+232h]
                cmp     [rsp+118h+arg_48], 0
                jz      short loc_1405CD482
                mov     eax, 0C000000Dh
                jmp     loc_1405CD860
; ---------------------------------------------------------------------------

loc_1405CD482:                          ; CODE XREF: NtCopyFileChunk+76↑j
                test    r15b, r15b
                jz      short loc_1405CD4EA

loc_1405CD487:                          ; DATA XREF: .rdata:00000001400B7394↑o
;   __try { // __except at loc_1405CD4DC
                mov     r12, [rsp+118h+arg_28]
                test    r12b, 3
                jnz     loc_1405CD87F
                mov     rcx, 7FFFFFFF0000h
                mov     rax, rcx
                cmp     r12, rcx
                cmovb   rax, r12
                mov     al, [rax]
                mov     rax, [r12]
                mov     [rsp+118h+var_98], rax
                cmp     r14, rcx
                cmovb   rcx, r14
                mov     eax, [rcx]
                mov     [rcx], eax
                movups  xmm6, xmmword ptr [r9]
                movups  [rsp+118h+var_50], xmm6
                mov     rdi, [rsp+118h+var_98]
                jmp     short loc_1405CD50A
;   } // starts at 1405CD487
; ---------------------------------------------------------------------------

loc_1405CD4DC:                          ; DATA XREF: .rdata:00000001400B7394↑o
                                        ; .rdata:00000001400B73C4↑o
;   __except(loc_1405CD886) // owned by 1405CD487
;   __except(loc_1405CD886) // owned by 1405CD87F
                mov     edi, [rsp+118h+var_B8]
                mov     rsi, [rsp+118h+var_B0]
                jmp     loc_1405CD840
; ---------------------------------------------------------------------------

loc_1405CD4EA:                          ; CODE XREF: NtCopyFileChunk+85↑j
                mov     r12, [rsp+118h+arg_28]
                mov     rdi, [r12]
                mov     [rsp+118h+var_98], rdi
                movups  xmm6, xmmword ptr [r9]
                movups  [rsp+118h+var_50], xmm6

loc_1405CD50A:                          ; CODE XREF: NtCopyFileChunk+DA↑j
                mov     edx, [rsp+118h+arg_20]
                add     rdx, 48h ; 'H'
                mov     ecx, 43h ; 'C'
                mov     r8d, 70436F49h
                call    ExAllocatePool2
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1405CD537
                mov     edi, 0C000009Ah
                jmp     loc_1405CD840
; ---------------------------------------------------------------------------

loc_1405CD537:                          ; CODE XREF: NtCopyFileChunk+12B↑j
                mov     r13, rsi
                mov     [rsp+118h+var_88], rsi
                xor     edx, edx
                lea     r8d, [rdx+48h]
                mov     rcx, rsi
                call    memset
                add     rsi, 48h ; 'H'
                mov     [rsp+118h+var_B0], rsi
                mov     [r13+40h], rdi
                lea     rax, [r13+38h]
                mov     [rsp+118h+var_78], rax
                and     [rsp+118h+var_F8], 0
                mov     r9, rax
                mov     r8b, r15b
                mov     edx, 1
                mov     rcx, [rsp+118h+arg_0]
                call    sub_1402433F0
                mov     edi, eax
                test    eax, eax
                js      loc_1405CD840
                lea     r9, [rsp+118h+var_90]
                lea     r8, [r13+30h]
                mov     dl, r15b
                mov     rcx, [rsp+118h+arg_8]
                call    sub_140609FB0
                mov     edi, eax
                test    eax, eax
                js      short loc_1405CD5C6
                mov     rcx, [r13+30h]
                call    sub_140215848
                mov     ecx, 0C0000910h
                test    al, al
                cmovnz  edi, ecx

loc_1405CD5C6:                          ; CODE XREF: NtCopyFileChunk+1B1↑j
                test    edi, edi
                js      loc_1405CD840
                mov     rcx, [r13+30h]
                mov     eax, [rcx+50h]
                mov     r8d, eax
                and     r8d, 2
                mov     [rsp+118h+arg_48], r8d
                shr     eax, 2
                and     al, 1
                mov     [rsp+118h+var_A8], eax
                mov     rax, r13
                add     rax, 20h ; ' '
                xor     edx, edx
                test    r8d, r8d
                cmovz   rdx, [rsp+118h+arg_10]
                mov     [rsp+118h+var_C8], rax
                mov     eax, [rsp+118h+var_8C]
                mov     [rsp+118h+var_D0], eax
                mov     rax, [rsp+118h+arg_40]
                mov     [rsp+118h+var_D8], rax
                mov     rax, [rsp+118h+arg_30]
                mov     [rsp+118h+var_E0], rax
                mov     [rsp+118h+var_E8], rdx
                mov     rax, [rsp+118h+var_78]
                mov     [rsp+118h+var_F0], rax
                mov     r9d, [rsp+118h+arg_20]
                mov     r8, rsi
                mov     rdx, r14
                call    sub_1403F1E0C
                mov     edi, eax
                mov     [rsp+118h+var_B8], eax
                test    eax, eax
                jns     short loc_1405CD665
                and     qword ptr [r13+30h], 0
                jmp     loc_1405CD840
; ---------------------------------------------------------------------------

loc_1405CD665:                          ; CODE XREF: NtCopyFileChunk+259↑j
                mov     r13d, [rsp+118h+arg_48]
                test    r13d, r13d
                jz      loc_1405CD71E
                xor     r8d, r8d
                lea     edx, [r8+1]
                lea     rcx, [rsp+118h+var_68]
                call    KeInitializeEvent
                mov     r13, [rsp+118h+var_88]
                mov     rax, [r13+20h]
                lea     rcx, [rsp+118h+var_68]
                mov     [rax+50h], rcx
                mov     rax, [r13+20h]
                or      dword ptr [rax+10h], 4
                mov     rax, [rsp+118h+arg_10]
                test    rax, rax
                jz      short loc_1405CD70A
                mov     r8, cs:ExEventObjectType
                and     [rsp+118h+var_80], 0
                and     [rsp+118h+var_F0], 0
                lea     rcx, [rsp+118h+var_80]
                mov     [rsp+118h+var_F8], rcx
                mov     r9b, r15b
                mov     edx, 2
                mov     rcx, rax
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     rcx, [rsp+118h+var_80]
                mov     [rsp+118h+var_A0], rcx
                mov     [rsp+118h+var_B8], eax
                test    eax, eax
                js      loc_1405CD840
                call    KeResetEvent

loc_1405CD70A:                          ; CODE XREF: NtCopyFileChunk+2B5↑j
                mov     rax, [r13+20h]
                mov     [rsp+118h+var_70], rax
                mov     r13d, [rsp+118h+arg_48]

loc_1405CD71E:                          ; CODE XREF: NtCopyFileChunk+270↑j
                test    r15b, r15b
                jz      short loc_1405CD738

loc_1405CD723:                          ; DATA XREF: .rdata:00000001400B73A4↑o
;   __try { // __except at loc_1405CD72A
                movdqu  xmmword ptr [r14], xmm6
                jmp     short loc_1405CD73D
;   } // starts at 1405CD723
; ---------------------------------------------------------------------------

loc_1405CD72A:                          ; DATA XREF: .rdata:00000001400B73A4↑o
;   __except(loc_1405CD8A0) // owned by 1405CD723
                mov     edi, [rsp+118h+var_B8]
                mov     rsi, [rsp+118h+var_B0]
                jmp     loc_1405CD840
; ---------------------------------------------------------------------------

loc_1405CD738:                          ; CODE XREF: NtCopyFileChunk+321↑j
                movdqu  xmmword ptr [r14], xmm6

loc_1405CD73D:                          ; CODE XREF: NtCopyFileChunk+328↑j
                mov     rdi, [rsp+118h+var_78]
                mov     rcx, [rdi]
                call    ObfReferenceObject
                mov     [rsp+118h+var_C8], rdi
                mov     [rsp+118h+var_D0], 40000000h
                mov     rax, [rsp+118h+arg_38]
                mov     [rsp+118h+var_D8], rax
                mov     [rsp+118h+var_E0], r12
                mov     eax, [rsp+118h+arg_20]
                mov     dword ptr [rsp+118h+var_E8], eax
                mov     [rsp+118h+var_F0], rsi
                mov     [rsp+118h+var_F8], r14
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, [rsp+118h+arg_10]
                mov     rcx, [rdi]
                call    sub_1405CD8DC
                mov     edi, eax
                xor     esi, esi
                mov     [rsp+118h+var_B0], rsi
                test    eax, eax
                js      loc_1405CD836
                test    r13d, r13d
                jz      loc_1405CD836
                lea     r9, [rsp+118h+var_68]
                mov     r8b, byte ptr [rsp+118h+var_A8]
                mov     dl, r15b
                mov     rcx, [rsp+118h+var_70]
                call    sub_1403F1564
                mov     edi, eax
                mov     [rsp+118h+var_B8], eax
                test    eax, eax
                js      short loc_1405CD820
                test    r15b, r15b
                jz      short loc_1405CD80B

loc_1405CD7DD:                          ; DATA XREF: .rdata:00000001400B73B4↑o
;   __try { // __except at loc_1405CD800
                xor     ecx, ecx
                call    IoIs32bitProcess
                test    al, al
                jz      short loc_1405CD7F3
                mov     eax, [r14]
                mov     ecx, [rax]
                mov     [rsp+118h+var_B8], ecx
                jmp     short loc_1405CD7FA
; ---------------------------------------------------------------------------

loc_1405CD7F3:                          ; CODE XREF: NtCopyFileChunk+3E6↑j
                mov     eax, [r14]
                mov     [rsp+118h+var_B8], eax

loc_1405CD7FA:                          ; CODE XREF: NtCopyFileChunk+3F1↑j
                mov     edi, [rsp+118h+var_B8]
                jmp     short loc_1405CD820
;   } // starts at 1405CD7DD
; ---------------------------------------------------------------------------

loc_1405CD800:                          ; DATA XREF: .rdata:00000001400B73B4↑o
;   __except(loc_1405CD8BA) // owned by 1405CD7DD
                mov     edi, [rsp+118h+var_B8]
                mov     rsi, [rsp+118h+var_B0]
                jmp     short loc_1405CD840
; ---------------------------------------------------------------------------

loc_1405CD80B:                          ; CODE XREF: NtCopyFileChunk+3DB↑j
                xor     ecx, ecx
                call    IoIs32bitProcess
                test    al, al
                jz      short loc_1405CD81D
                mov     eax, [r14]
                mov     edi, [rax]
                jmp     short loc_1405CD820
; ---------------------------------------------------------------------------

loc_1405CD81D:                          ; CODE XREF: NtCopyFileChunk+414↑j
                mov     edi, [r14]

loc_1405CD820:                          ; CODE XREF: NtCopyFileChunk+3D6↑j
                                        ; NtCopyFileChunk+3FE↑j ...
                mov     rcx, [rsp+118h+var_A0]
                test    rcx, rcx
                jz      short loc_1405CD840
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     short loc_1405CD840
; ---------------------------------------------------------------------------

loc_1405CD836:                          ; CODE XREF: NtCopyFileChunk+3A2↑j
                                        ; NtCopyFileChunk+3AB↑j
                mov     eax, 103h
                test    edi, edi
                cmovns  edi, eax

loc_1405CD840:                          ; CODE XREF: NtCopyFileChunk+E5↑j
                                        ; NtCopyFileChunk+132↑j ...
                test    rsi, rsi
                jz      short loc_1405CD84F
                mov     dl, 1
                mov     rcx, rsi
                call    sub_1403F1D28

loc_1405CD84F:                          ; CODE XREF: NtCopyFileChunk+443↑j
                mov     rcx, [rsp+118h+var_A0]
                test    rcx, rcx
                jz      short loc_1405CD85E
                call    PsDereferenceSiloContext

loc_1405CD85E:                          ; CODE XREF: NtCopyFileChunk+457↑j
                mov     eax, edi

loc_1405CD860:                          ; CODE XREF: NtCopyFileChunk+7D↑j
                lea     r11, [rsp+118h+var_28]
                mov     rsi, [r11+48h]
                movaps  xmm6, xmmword ptr [r11-10h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405CD87F:                          ; CODE XREF: NtCopyFileChunk+93↑j
                                        ; DATA XREF: .rdata:00000001400B73C4↑o
;   __try { // __except at loc_1405CD4DC
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 1405CD87F
byte_1405CD885  db 0CCh                 ; DATA XREF: .rdata:00000001400B73C4↑o
; } // starts at 1405CD400
; ---------------------------------------------------------------------------

loc_1405CD886:                          ; DATA XREF: .rdata:00000001400B7394↑o
                                        ; .rdata:00000001400B73C4↑o ...
;   __except filter // owned by 1405CD487
;   __except filter // owned by 1405CD87F
                push    rbp
                sub     rsp, 60h
                mov     rbp, rdx
                lea     rdx, [rbp+60h]
                call    sub_140500B6C
                nop
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1405CD8A0:                          ; DATA XREF: .rdata:00000001400B73A4↑o
                                        ; .pdata:00000001400FB13C↑o ...
;   __except filter // owned by 1405CD723
                push    rbp
                sub     rsp, 60h
                mov     rbp, rdx
                lea     rdx, [rbp+60h]
                call    sub_140500B6C
                nop
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405CD8BA:                          ; DATA XREF: .rdata:00000001400B73B4↑o
                                        ; .pdata:00000001400FB148↑o ...
;   __except filter // owned by 1405CD7DD
                push    rbp
                sub     rsp, 60h
                mov     rbp, rdx
                lea     rdx, [rbp+60h]
                call    sub_140500B6C
                nop
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtCopyFileChunk endp
