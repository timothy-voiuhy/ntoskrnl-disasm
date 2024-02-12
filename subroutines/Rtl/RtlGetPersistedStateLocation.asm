RtlGetPersistedStateLocation proc near  ; CODE XREF: sub_1403C72E0+E8↑p
                                        ; sub_1403C72E0+140↑p ...

var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_18          = dword ptr  48h
arg_20          = qword ptr  50h
arg_28          = dword ptr  58h
arg_30          = qword ptr  60h

; FUNCTION CHUNK AT 0000000140817110 SIZE 00000178 BYTES

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                mov     rbp, rsp
                sub     rsp, 80h
                xor     r13d, r13d
                xorps   xmm0, xmm0
                mov     [rbp+var_50], r13
                mov     r14, r8
                mov     [rbp+var_48], r13
                mov     rsi, rdx
                mov     [rbp+arg_18], r13d
                mov     r12, rcx
                mov     edi, r13d
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                movups  [rbp+var_40], xmm0
                cmp     r9d, 1
                ja      loc_140817110
                cmp     cs:byte_140C4C429, r13b
                jz      loc_14069E04A
                mov     ebx, 0C0000034h

loc_14069DFB6:                          ; CODE XREF: RtlGetPersistedStateLocation+14C↓j
                                        ; RtlGetPersistedStateLocation+17921D↓j
                test    r14, r14
                jnz     short loc_14069DFFD

loc_14069DFBB:                          ; CODE XREF: RtlGetPersistedStateLocation+E4↓j
                                        ; RtlGetPersistedStateLocation+F5↓j ...
                mov     rcx, [rbp+var_50]
                test    rcx, rcx
                jnz     loc_140817262

loc_14069DFC8:                          ; CODE XREF: RtlGetPersistedStateLocation+179318↓j
                mov     rcx, [rbp+var_48]
                test    rcx, rcx
                jnz     loc_14081726D

loc_14069DFD5:                          ; CODE XREF: RtlGetPersistedStateLocation+179323↓j
                test    rdi, rdi
                jnz     loc_140817278

loc_14069DFDE:                          ; CODE XREF: RtlGetPersistedStateLocation+179333↓j
                mov     eax, ebx

loc_14069DFE0:                          ; CODE XREF: RtlGetPersistedStateLocation+1791C5↓j
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069DFFD:                          ; CODE XREF: RtlGetPersistedStateLocation+69↑j
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_14069E001:                          ; CODE XREF: RtlGetPersistedStateLocation+B9↓j
                inc     rax
                cmp     [r14+rax*2], r13w
                jnz     short loc_14069E001
                inc     eax
                lea     ecx, [rax+rax]
                mov     [rbp+arg_18], ecx
                cmp     ecx, eax
                jb      loc_1408171C3
                cmp     [rbp+arg_28], ecx
                mov     rax, [rbp+arg_30]
                sbb     ebx, ebx
                and     ebx, 80000005h
                test    rax, rax
                jz      short loc_14069E031
                mov     [rax], ecx

loc_14069E031:                          ; CODE XREF: RtlGetPersistedStateLocation+DD↑j
                cmp     ecx, [rbp+arg_28]
                ja      short loc_14069DFBB
                mov     rdx, r14

loc_14069E039:                          ; CODE XREF: RtlGetPersistedStateLocation+17930D↓j
                mov     r8d, ecx
                mov     rcx, [rbp+arg_20]
                call    memmove
                jmp     loc_14069DFBB
; ---------------------------------------------------------------------------

loc_14069E04A:                          ; CODE XREF: RtlGetPersistedStateLocation+5B↑j
                movsxd  rax, r9d
                lea     rcx, qword_140985B68
                shl     rax, 4
                lea     r8, [rbp+var_30]
                add     rax, rcx
                mov     dword ptr [rbp+var_30], 30h ; '0'
                lea     rcx, [rbp+var_50]
                mov     qword ptr [rbp+var_20], rax
                mov     edx, 20019h
                mov     qword ptr [rbp+var_30+8], r13
                mov     dword ptr [rbp+var_20+8], 240h
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     loc_14081711A
                mov     cs:byte_140C4C429, 1
                jmp     loc_14069DFB6
RtlGetPersistedStateLocation endp
