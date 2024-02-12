KeReleaseSemaphore proc near            ; CODE XREF: sub_14039CD80+68↓p
                                        ; sub_140564B70+1D4↓p ...

var_58          = byte ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140474216 SIZE 000000D3 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                xor     eax, eax
                mov     esi, r8d
                mov     r15d, edx
                mov     rbx, rcx
                mov     r14d, eax
                test    r9b, r9b
                jnz     loc_140474216

loc_140327F03:                          ; CODE XREF: KeReleaseSemaphore+14C34C↓j
                mov     r12, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     r13, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474221

loc_140327F22:                          ; CODE XREF: KeReleaseSemaphore+14C353↓j
                                        ; KeReleaseSemaphore+14C35D↓j ...
                mov     rbp, gs:20h
                mov     rcx, rbx
                call    sub_1402AF4F0
                mov     edi, [rbx+4]
                lea     eax, [rdi+rsi]
                cmp     eax, [rbx+18h]
                jg      loc_14032800F
                cmp     eax, edi
                jl      loc_14032800F
                mov     [rbx+4], eax
                test    edi, edi
                jnz     short loc_140327FB5
                mov     r13, [rbx+8]
                lea     rax, [rbx+8]
                cmp     r13, rax
                jz      short loc_140327FB5

loc_140327F5E:                          ; CODE XREF: KeReleaseSemaphore+24B↓j
                mov     rax, [r13+0]
                mov     rsi, r13
                mov     r13, rax
                mov     rcx, [rsi+8]
                cmp     [rax+8], rsi
                jz      loc_140328001

loc_140327F76:                          ; CODE XREF: KeReleaseSemaphore+134↓j
                                        ; KeReleaseSemaphore+270↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140327F7D:                          ; CODE XREF: KeReleaseSemaphore+13A↓j
                mov     [rcx], rax
                mov     [rax+8], rcx
                movzx   eax, byte ptr [rsi+10h]
                cmp     al, 1
                jnz     loc_140328037
                movzx   r8d, word ptr [rsi+12h]
                xor     r9d, r9d
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_14023CD30
                test    al, al
                jz      loc_14032810E
                sub     dword ptr [rbx+4], 1
                jnz     loc_14032810E

loc_140327FB5:                          ; CODE XREF: KeReleaseSemaphore+7F↑j
                                        ; KeReleaseSemaphore+8C↑j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh
                mov     eax, 0
                mov     [rsp+78h+var_58], r12b
                test    r14d, r14d
                mov     edx, 3
                mov     r9d, r15d
                mov     rcx, rbp
                cmovz   edx, eax
                lea     r8d, [rax+1]
                call    sub_14023E110
                lea     r11, [rsp+78h+var_28]
                mov     eax, edi
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
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

loc_140328001:                          ; CODE XREF: KeReleaseSemaphore+A0↑j
                cmp     [rcx], rsi
                jnz     loc_140327F76
                jmp     loc_140327F7D
; ---------------------------------------------------------------------------

loc_14032800F:                          ; CODE XREF: KeReleaseSemaphore+6C↑j
                                        ; KeReleaseSemaphore+74↑j
                lock and dword ptr [rbx], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474286

loc_140328024:                          ; CODE XREF: KeReleaseSemaphore+14C3B8↓j
                                        ; KeReleaseSemaphore+14C3C4↓j ...
                movzx   eax, r12b
                mov     cr8, rax
                mov     ecx, 0C0000047h
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328037:                          ; CODE XREF: KeReleaseSemaphore+BA↑j
                cmp     al, 2
                jnz     loc_14047426C
                mov     byte ptr [rsi+11h], 5
                mov     rax, [rsi+18h]
                mov     [rsp+78h+arg_0], rax
                add     rax, 8
                mov     [rsp+78h+var_48], rax
                mov     qword ptr [rsi], 0
                mov     rcx, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14032807E
                test    al, 1
                jnz     loc_140328175

loc_14032807E:                          ; CODE XREF: KeReleaseSemaphore+1A4↑j
                                        ; KeReleaseSemaphore+2A8↓j ...
                mov     rax, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     [rsp+78h+var_40], rax
                mov     r9, [rax+8]
                mov     [rsp+78h+var_38], r9
                jnz     loc_1403281B0

loc_1403280A5:                          ; CODE XREF: KeReleaseSemaphore+2F7↓j
                mov     rcx, [rsp+78h+arg_0]
                call    sub_1402AF4F0
                mov     rdx, [rsp+78h+var_48]
                mov     rcx, [rsp+78h+arg_0]
                cmp     [rdx], rdx
                jz      short loc_14032812A
                mov     eax, [rcx+28h]
                cmp     eax, [rcx+2Ch]
                jnb     short loc_14032812A
                mov     r8, [rsp+78h+var_38]
                mov     rax, [r8+0E8h]
                cmp     rax, rcx
                jz      short loc_140328120

loc_1403280DD:                          ; CODE XREF: KeReleaseSemaphore+258↓j
                mov     rdx, rcx
                mov     r8, rsi
                mov     rcx, [rsp+78h+var_40]
                call    sub_1402AF540
                mov     rcx, [rsp+78h+arg_0]
                test    al, al
                jz      loc_140474262

loc_1403280FD:                          ; CODE XREF: KeReleaseSemaphore+287↓j
                                        ; KeReleaseSemaphore+28C↓j ...
                lock and dword ptr [rcx], 0FFFFFF7Fh
                sub     dword ptr [rbx+4], 1
                jz      loc_140327FB5

loc_14032810E:                          ; CODE XREF: KeReleaseSemaphore+D5↑j
                                        ; KeReleaseSemaphore+DF↑j ...
                lea     rax, [rbx+8]
                cmp     r13, rax
                jz      loc_140327FB5
                jmp     loc_140327F5E
; ---------------------------------------------------------------------------

loc_140328120:                          ; CODE XREF: KeReleaseSemaphore+20B↑j
                cmp     byte ptr [r8+283h], 0Fh
                jnz     short loc_1403280DD

loc_14032812A:                          ; CODE XREF: KeReleaseSemaphore+1F2↑j
                                        ; KeReleaseSemaphore+1FA↑j ...
                mov     r9d, [rcx+4]
                lea     eax, [r9+1]
                mov     [rcx+4], eax
                lea     rax, [rcx+18h]
                mov     r8, [rax+8]
                cmp     [r8], rax
                jnz     loc_140327F76
                mov     [rsi], rax
                mov     [rsi+8], r8
                mov     [r8], rsi
                mov     [rax+8], rsi
                test    r9d, r9d
                jnz     short loc_1403280FD
                cmp     [rdx], rdx
                jz      short loc_1403280FD
                mov     rdx, rcx
                mov     rcx, [rsp+78h+var_40]
                call    sub_1402C2EC0
                mov     rcx, [rsp+78h+arg_0]
                jmp     short loc_1403280FD
; ---------------------------------------------------------------------------

loc_140328175:                          ; CODE XREF: KeReleaseSemaphore+1A8↑j
                cmp     cl, 0Fh
                ja      loc_14032807E
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_14032807E
; ---------------------------------------------------------------------------

loc_1403281B0:                          ; CODE XREF: KeReleaseSemaphore+1CF↑j
                mov     rcx, r9
                call    sub_1405131B4
                movzx   r8d, al
                mov     rcx, r9
                mov     rdx, rsi
                call    sub_1405A7A60
                jmp     loc_1403280A5
KeReleaseSemaphore endp
