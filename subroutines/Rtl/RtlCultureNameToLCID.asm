RtlCultureNameToLCID proc near          ; CODE XREF: sub_1403A7DB0+162↑p
                                        ; sub_1403A7DB0+261↑p ...

var_C8          = word ptr -0C8h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                xor     edi, edi
                mov     rsi, rdx
                test    rcx, rcx
                jz      short loc_14078EDB8
                test    rdx, rdx
                jz      short loc_14078EDB8
                movzx   r8d, word ptr [rcx]
                cmp     di, r8w
                jz      short loc_14078EDB8
                mov     rdx, [rcx+8]
                test    rdx, rdx
                jz      short loc_14078EDB8
                lea     eax, [r8+2]
                cmp     eax, 55h ; 'U'
                ja      short loc_14078EDB8
                lea     rcx, [rsp+0E8h+var_C8]
                mov     ebx, r8d
                call    memmove
                shr     rbx, 1
                add     rbx, rbx
                cmp     rbx, 0AAh
                jnb     short loc_14078EDE1
                lea     edx, [rdi+2]
                mov     [rsp+rbx+0E8h+var_C8], di
                lea     rcx, [rsp+0E8h+var_C8]
                call    sub_1403A8208
                movzx   eax, ax
                test    eax, eax
                mov     [rsi], eax
                setnz   dil

loc_14078EDB8:                          ; CODE XREF: RtlCultureNameToLCID+2C↑j
                                        ; RtlCultureNameToLCID+31↑j ...
                mov     al, dil
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E8h+var_8]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14078EDE1:                          ; CODE XREF: RtlCultureNameToLCID+69↑j
                call    sub_1404B63DC
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14078ED30
RtlCultureNameToLCID endp
