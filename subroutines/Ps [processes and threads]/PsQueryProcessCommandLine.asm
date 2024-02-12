PsQueryProcessCommandLine proc near     ; CODE XREF: NtQueryInformationProcess+2CC7↓p
                                        ; sub_1407BC0E8+A058F↓p ...

var_F8          = qword ptr -0F8h
var_F0          = byte ptr -0F0h
var_E8          = qword ptr -0E8h
var_D8          = byte ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = xmmword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_48          = qword ptr -48h
arg_10          = dword ptr  18h
arg_18          = byte ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140484550 SIZE 00000014 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+20h], r9b
                mov     [r11+18h], r8d
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_48], rax
                mov     r15, rdx
                mov     r13, rcx
                mov     [rsp+118h+var_A8], rcx
                mov     [rsp+118h+var_A0], rdx
                mov     rax, [rsp+118h+arg_20]
                mov     [rsp+118h+var_C0], rax
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-78h], xmm0
                movups  xmmword ptr [r11-68h], xmm0
                movups  xmmword ptr [r11-58h], xmm0
                xor     edi, edi
                mov     [r11-98h], rdi
                mov     [rsp+118h+var_B8], rdi
                add     rcx, 458h
                mov     [rsp+118h+var_90], rcx
                call    sub_14024C840
                mov     [rsp+118h+var_D8], al
                test    al, al
                jz      loc_140484550
                xorps   xmm0, xmm0
                movups  [rsp+118h+var_D0], xmm0
                mov     [rsp+118h+var_D4], edi
                lea     r8, [rsp+118h+var_78]
                xor     edx, edx
                mov     rcx, r13
                call    sub_1402D3C90
                nop

loc_140351EFB:                          ; DATA XREF: .rdata:0000000140084348↑o
;   __try { // __except at loc_14035200E
                mov     eax, edi
                mov     rcx, [r13+580h]
                test    rcx, rcx
                jnz     loc_140351FC7

loc_140351F0D:                          ; CODE XREF: PsQueryProcessCommandLine+17A↓j
                test    rax, rax
                jnz     loc_140351FCF
                mov     rax, [r13+550h]
                mov     [rsp+118h+var_80], rax
                test    rax, rax
                jz      short loc_140351FA2
                mov     rax, [rax+20h]
                mov     [rsp+118h+var_B0], rax
                mov     rcx, rax
                add     rcx, 70h ; 'p'
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovnb  rcx, rdx
                mov     eax, [rcx]
                mov     dword ptr [rsp+118h+var_D0], eax
                mov     r12, [rcx+8]
                mov     qword ptr [rsp+118h+var_D0+8], r12
                movzx   r14d, word ptr [rsp+118h+var_D0+2]
                movzx   ebx, word ptr [rsp+118h+var_D0]
                mov     esi, [rsp+118h+var_D4]

loc_140351F69:                          ; CODE XREF: PsQueryProcessCommandLine+175↓j
                mov     eax, dword ptr [rsp+118h+var_D0]
                sar     eax, 10h
                test    ax, ax
                jz      loc_14035200C
                test    byte ptr [rsp+118h+var_D0+8], 1
                jnz     loc_140352007
                movzx   ecx, r14w
                add     rcx, r12
                cmp     rcx, rdx
                ja      short loc_140351F95
                cmp     rcx, r12
                jnb     short loc_14035200C

loc_140351F95:                          ; CODE XREF: PsQueryProcessCommandLine+13E↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14035200C
; ---------------------------------------------------------------------------

loc_140351FA2:                          ; CODE XREF: PsQueryProcessCommandLine+D8↑j
                mov     esi, 0C0000225h
                mov     [rsp+118h+var_D4], esi
                mov     r12, qword ptr [rsp+118h+var_D0+8]
                movzx   r14d, word ptr [rsp+118h+var_D0+2]
                movzx   ebx, word ptr [rsp+118h+var_D0]

loc_140351FBB:                          ; CODE XREF: PsQueryProcessCommandLine+1B5↓j
                mov     rdx, 7FFFFFFF0000h
                jmp     short loc_140351F69
; ---------------------------------------------------------------------------

loc_140351FC7:                          ; CODE XREF: PsQueryProcessCommandLine+B7↑j
                mov     rax, [rcx]
                jmp     loc_140351F0D
; ---------------------------------------------------------------------------

loc_140351FCF:                          ; CODE XREF: PsQueryProcessCommandLine+C0↑j
                mov     eax, [rax+10h]
                mov     [rsp+118h+var_88], rax
                mov     rbx, [rax+40h]
                mov     [rsp+118h+var_B8], rbx
                mov     word ptr [rsp+118h+var_D0], bx
                mov     r14, rbx
                shr     r14, 10h
                mov     word ptr [rsp+118h+var_D0+2], r14w
                mov     r12, rbx
                shr     r12, 20h
                mov     qword ptr [rsp+118h+var_D0+8], r12
                mov     esi, [rsp+118h+var_D4]
                jmp     short loc_140351FBB
; ---------------------------------------------------------------------------

loc_140352007:                          ; CODE XREF: PsQueryProcessCommandLine+12E↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_14035200C:                          ; CODE XREF: PsQueryProcessCommandLine+123↑j
                                        ; PsQueryProcessCommandLine+143↑j ...
                jmp     short loc_140352030
;   } // starts at 140351EFB
; ---------------------------------------------------------------------------

loc_14035200E:                          ; DATA XREF: .rdata:0000000140084348↑o
;   __except(1) // owned by 140351EFB
                mov     esi, eax
                mov     [rsp+118h+var_D4], eax
                xor     edi, edi
                mov     r12, qword ptr [rsp+118h+var_D0+8]
                movzx   r14d, word ptr [rsp+118h+var_D0+2]
                movzx   ebx, word ptr [rsp+118h+var_D0]
                mov     r13, [rsp+118h+var_A8]
                mov     r15, [rsp+118h+var_A0]

loc_140352030:                          ; CODE XREF: PsQueryProcessCommandLine:loc_14035200C↑j
                xor     edx, edx
                lea     rcx, [rsp+118h+var_78]
                call    sub_14021E230
                test    esi, esi
                js      loc_140352114
                test    bx, bx
                jz      loc_14048455A
                cmp     bx, r14w
                ja      loc_14048455A
                test    byte ptr [rsp+118h+var_D0], 1
                jnz     loc_14048455A
                test    byte ptr [rsp+118h+var_D0+2], 1
                jnz     loc_14048455A
                test    r12, r12
                jz      loc_14048455A
                movzx   eax, r14w
                add     eax, 10h

loc_140352080:                          ; DATA XREF: .rdata:0000000140084358↑o
;   __try { // __except at loc_1403520BF
                mov     rcx, [rsp+118h+var_C0]
                test    rcx, rcx
                jz      short loc_14035208C
                mov     [rcx], eax

loc_14035208C:                          ; CODE XREF: PsQueryProcessCommandLine+238↑j
                cmp     [rsp+118h+arg_10], eax
                jb      short loc_1403520AE
                mov     [r15], bx
                mov     [r15+2], r14w
                test    r14w, r14w
                jz      short loc_1403520B9
                lea     rax, [r15+10h]
                mov     [r15+8], rax
                jmp     short loc_1403520BD
; ---------------------------------------------------------------------------

loc_1403520AE:                          ; CODE XREF: PsQueryProcessCommandLine+243↑j
                mov     esi, 0C0000004h
                mov     [rsp+118h+var_D4], esi
                jmp     short loc_140352114
; ---------------------------------------------------------------------------

loc_1403520B9:                          ; CODE XREF: PsQueryProcessCommandLine+252↑j
                mov     [r15+8], rdi

loc_1403520BD:                          ; CODE XREF: PsQueryProcessCommandLine+25C↑j
                jmp     short loc_1403520C9
;   } // starts at 140352080
; ---------------------------------------------------------------------------

loc_1403520BF:                          ; DATA XREF: .rdata:0000000140084358↑o
;   __except(1) // owned by 140352080
                mov     esi, eax
                mov     [rsp+118h+var_D4], eax
                xor     edi, edi
                jmp     short loc_140352114
; ---------------------------------------------------------------------------

loc_1403520C9:                          ; CODE XREF: PsQueryProcessCommandLine:loc_1403520BD↑j
                mov     rax, gs:188h
                mov     r8, [rax+0B8h]
                movzx   eax, word ptr [rsp+118h+var_D0+2]
                lea     r9, [r15+10h]
                lea     rcx, [rsp+118h+var_98]
                mov     [rsp+118h+var_E8], rcx
                mov     cl, [rsp+118h+arg_18]
                mov     [rsp+118h+var_F0], cl
                mov     [rsp+118h+var_F8], rax
                mov     rdx, qword ptr [rsp+118h+var_D0+8]
                mov     rcx, r13
                call    MmCopyVirtualMemory
                mov     esi, eax
                test    eax, eax
                js      short loc_140352114
                mov     esi, edi

loc_140352114:                          ; CODE XREF: PsQueryProcessCommandLine+1F1↑j
                                        ; PsQueryProcessCommandLine+267↑j ...
                cmp     [rsp+118h+var_D8], dil
                jz      short loc_140352128
                mov     rcx, [rsp+118h+var_90]
                call    sub_14024C380

loc_140352128:                          ; CODE XREF: PsQueryProcessCommandLine+2C9↑j
                mov     eax, esi
                mov     rcx, [rsp+118h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140351E50
PsQueryProcessCommandLine endp
