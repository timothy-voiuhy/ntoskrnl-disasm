PoLatencySensitivityHint proc near      ; CODE XREF: sub_14078A2C0+36↓p
                                        ; sub_14067B764+194CE8↓p
                                        ; DATA XREF: ...

var_70          = dword ptr -70h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 0000000140495806 SIZE 00000042 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                xor     r14d, r14d
                mov     edi, ecx
                cmp     cs:byte_140C24478, r14b
                mov     [rbp+var_28], r14
                jnz     loc_14037DFA4

loc_14037DE6F:                          ; CODE XREF: PoLatencySensitivityHint+177↓j
                mov     rdx, cs:off_140C01AA8
                mov     r8d, r14d
                movsxd  rax, cs:dword_140C23D6C
                mov     ebx, 1
                imul    rcx, rax, 0AB0h
                lea     rax, [rdx+75h]
                add     rax, rcx

loc_14037DE93:                          ; CODE XREF: PoLatencySensitivityHint+189↓j
                cmp     [rax], r14b
                jz      loc_14037DFAF
                cmp     cs:byte_140C54300, r14b
                mov     [rbp+var_30], edi
                jz      short loc_14037DEC6
                mov     rsi, cs:qword_140C20550
                lea     rdx, qword_14000C568
                mov     rcx, rsi
                call    EtwEventEnabled
                test    al, al
                jnz     loc_140495806

loc_14037DEC6:                          ; CODE XREF: PoLatencySensitivityHint+76↑j
                                        ; PoLatencySensitivityHint+117A13↓j
                mov     rdx, 0FFFFF78000000008h
                lea     r8, [rbp+var_28]
                lea     rcx, qword_140C24488
                mov     rdx, [rdx]
                add     rdx, cs:qword_140C20F20
                mov     [rbp+var_20], r14
                call    sub_1402BDD60
                test    al, al
                movzx   r11d, r14b
                cmovnz  r11d, ebx
                cmp     edi, 4
                jnz     short loc_14037DF17
                lea     r8, [rbp+var_20]
                lea     rcx, qword_140C24480
                call    sub_1402BDD60
                test    al, al
                movzx   r11d, r11b
                cmovnz  r11d, ebx

loc_14037DF17:                          ; CODE XREF: PoLatencySensitivityHint+CB↑j
                test    r11b, r11b
                jz      short loc_14037DF4D
                lock or [rsp+70h+var_70], r14d
                mov     rax, cs:qword_140C20F18
                cmp     [rbp+var_28], rax
                movzx   ecx, r14b
                cmovbe  ecx, ebx
                cmp     edi, 4
                jnz     short loc_14037DF49
                mov     rax, cs:qword_140C20F18
                cmp     [rbp+var_20], rax
                movzx   ecx, cl
                cmovbe  ecx, ebx

loc_14037DF49:                          ; CODE XREF: PoLatencySensitivityHint+106↑j
                test    cl, cl
                jnz     short loc_14037DF74

loc_14037DF4D:                          ; CODE XREF: PoLatencySensitivityHint+EA↑j
                                        ; PoLatencySensitivityHint+157↓j ...
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14037DF74:                          ; CODE XREF: PoLatencySensitivityHint+11B↑j
                call    sub_14037DFC8
                test    al, al
                jz      short loc_14037DF89
                mov     ecx, 3
                call    sub_14037D3A8
                jmp     short loc_14037DF4D
; ---------------------------------------------------------------------------

loc_14037DF89:                          ; CODE XREF: PoLatencySensitivityHint+14B↑j
                xchg    ebx, cs:dword_140C24490
                test    ebx, ebx
                jnz     short loc_14037DF4D
                lea     edx, [rbx+3Bh]
                lea     rcx, qword_140C244A0
                call    ExQueueWorkItem
                jmp     short loc_14037DF4D
; ---------------------------------------------------------------------------

loc_14037DFA4:                          ; CODE XREF: PoLatencySensitivityHint+39↑j
                cmp     ecx, 4
                jnz     loc_14037DE6F
                jmp     short loc_14037DF4D
; ---------------------------------------------------------------------------

loc_14037DFAF:                          ; CODE XREF: PoLatencySensitivityHint+66↑j
                add     r8d, ebx
                add     rax, rbx
                cmp     r8d, 2
                jb      loc_14037DE93
                jmp     short loc_14037DF4D
; } // starts at 14037DE30
PoLatencySensitivityHint endp
