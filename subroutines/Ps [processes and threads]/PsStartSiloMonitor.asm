PsStartSiloMonitor proc near            ; DATA XREF: .rdata:00000001400A9B84↑o
                                        ; .pdata:000000014010E2F4↑o

var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014085EA10 SIZE 00000118 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_28], rax
                xorps   xmm0, xmm0
                xor     edi, edi
                movups  [rsp+78h+var_58], xmm0
                or      rbp, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rcx
                movups  [rsp+78h+var_48], xmm0
                movups  [rsp+78h+var_38], xmm0
                mov     rax, gs:188h
                add     [rax+1E4h], bp
                xor     edx, edx
                lea     rcx, qword_140C1DEB0
                call    ExAcquirePushLockExclusiveEx
                cmp     [rbx], rdi
                jnz     loc_1407C36A1
                cmp     [rbx+8], rdi
                jnz     loc_1407C36A1
                lea     r12d, [rdi+1]
                cmp     [rbx+11h], dil
                jnz     short loc_1407C35E3
                xor     ecx, ecx

loc_1407C35CF:                          ; CODE XREF: PsStartSiloMonitor+9B4D4↓j
                mov     dl, r12b
                call    sub_1406048A0
                mov     r8, rax
                test    rax, rax
                jnz     loc_14085EA10

loc_1407C35E3:                          ; CODE XREF: PsStartSiloMonitor+7B↑j
                cmp     [rbx+18h], rdi
                jz      loc_1407C36A1
                cmp     [rbx+10h], dil
                jz      short loc_1407C3633
                mov     rcx, cs:PsInitialSystemProcess
                lea     r8, [rsp+78h+var_58]
                xor     edx, edx
                call    sub_1402D3C90
                call    PsGetHostSilo
                mov     rdx, rbx
                mov     rcx, rax
                mov     rsi, rax
                call    sub_1407C3700
                mov     edi, eax
                test    eax, eax
                js      loc_14085EA33

loc_1407C3623:                          ; CODE XREF: PsStartSiloMonitor+9B4E8↓j
                                        ; PsStartSiloMonitor+9B4FA↓j
                xor     edx, edx
                lea     rcx, [rsp+78h+var_58]
                call    sub_14021E230
                test    edi, edi
                js      short loc_1407C36A1

loc_1407C3633:                          ; CODE XREF: PsStartSiloMonitor+A1↑j
                mov     rcx, cs:PsInitialSystemProcess
                lea     r8, [rsp+78h+var_58]
                xor     edx, edx
                xor     sil, sil
                xor     r14d, r14d
                call    sub_1402D3C90
                xor     ecx, ecx

loc_1407C364E:                          ; CODE XREF: PsStartSiloMonitor+9B52B↓j
                mov     dl, r12b
                call    sub_1406048A0
                mov     rdi, rax
                test    rax, rax
                jnz     loc_14085EA4F
                xor     edx, edx
                lea     rcx, [rsp+78h+var_58]
                call    sub_14021E230
                test    sil, sil
                jnz     loc_14085EA87
                mov     rax, cs:qword_140C1DEA8
                lea     rcx, qword_140C1DEA0
                cmp     [rax], rcx
                jnz     loc_14085EA80
                mov     [rbx], rcx
                xor     edi, edi
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C1DEA8, rbx

loc_1407C36A1:                          ; CODE XREF: PsStartSiloMonitor+63↑j
                                        ; PsStartSiloMonitor+6D↑j ...
                lock xadd cs:qword_140C1DEB0, rbp
                test    bpl, 2
                jnz     loc_14085EB0C

loc_1407C36B4:                          ; CODE XREF: PsStartSiloMonitor+9B5C0↓j
                                        ; PsStartSiloMonitor+9B5D3↓j
                lea     rcx, qword_140C1DEB0
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, edi
                mov     rcx, [rsp+78h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407C3550
PsStartSiloMonitor endp
