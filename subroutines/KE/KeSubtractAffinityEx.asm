KeSubtractAffinityEx proc near          ; CODE XREF: sub_14024EFB0+442↑p
                                        ; sub_140259F00+398↑p ...

var_C8          = byte ptr -0C8h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140438A40 SIZE 0000002B BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     rbx, r8
                mov     rsi, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+0E8h+var_C8]
                call    memset
                test    rbx, rbx
                jz      loc_140438A40

loc_14025B268:                          ; CODE XREF: KeSubtractAffinityEx+1DD825↓j
                xor     r10d, r10d
                mov     eax, 14h
                mov     [rbx+2], ax
                mov     r9d, r10d
                movzx   eax, word ptr [rdi]
                movzx   ecx, r10w
                mov     [rbx], ax
                movzx   edx, word ptr [rdi]
                lea     r11d, [r10+1]
                movzx   eax, word ptr [rsi]
                movzx   r8d, dx
                cmp     dx, ax
                cmovnb  r8w, ax
                cmp     r10w, r8w
                jnb     short loc_14025B2CB

loc_14025B29D:                          ; CODE XREF: KeSubtractAffinityEx+A6↓j
                movzx   eax, cx
                lea     rdx, ds:0[rax*8]
                mov     rax, [rdx+rsi+8]
                not     rax
                and     rax, [rdx+rdi+8]
                mov     [rdx+rbx+8], rax
                jz      short loc_14025B2BF
                mov     r9d, r11d

loc_14025B2BF:                          ; CODE XREF: KeSubtractAffinityEx+9A↑j
                inc     cx
                cmp     cx, r8w
                jb      short loc_14025B29D
                movzx   edx, word ptr [rdi]

loc_14025B2CB:                          ; CODE XREF: KeSubtractAffinityEx+7B↑j
                cmp     cx, dx
                jb      loc_140438A4A

loc_14025B2D4:                          ; CODE XREF: KeSubtractAffinityEx+1DD846↓j
                lea     rax, [rsp+0E8h+var_C8]
                cmp     rbx, rax
                jz      short loc_14025B301
                mov     [rbx+4], r10d
                cmp     cx, [rbx+2]
                jnb     short loc_14025B301
                nop     dword ptr [rax+rax+00000000h]

loc_14025B2F0:                          ; CODE XREF: KeSubtractAffinityEx+DF↓j
                movzx   edx, cx
                inc     cx
                mov     [rbx+rdx*8+8], r10
                cmp     cx, [rbx+2]
                jb      short loc_14025B2F0

loc_14025B301:                          ; CODE XREF: KeSubtractAffinityEx+BC↑j
                                        ; KeSubtractAffinityEx+C6↑j
                mov     eax, r9d
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14025B220
KeSubtractAffinityEx endp
