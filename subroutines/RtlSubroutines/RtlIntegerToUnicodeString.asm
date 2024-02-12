RtlIntegerToUnicodeString proc near     ; CODE XREF: sub_1403AAA54+E5765↑p
                                        ; sub_1405C2D54+898↑p ...

var_48          = word ptr -48h
var_46          = word ptr -46h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_10], rax
                and     [rsp+68h+var_44], 0
                lea     r9, [rsp+68h+var_38]
                mov     rbx, r8
                mov     edi, 21h ; '!'
                mov     r8d, edi
                call    RtlIntegerToChar
                test    eax, eax
                js      short loc_140674A7D
                lea     rax, [rsp+68h+var_38]
                mov     [rsp+68h+var_46], di
                mov     [rsp+68h+var_40], rax
                lea     rcx, [rsp+68h+var_38]
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140674A5F:                          ; CODE XREF: RtlIntegerToUnicodeString+56↓j
                inc     rax
                cmp     byte ptr [rcx+rax], 0
                jnz     short loc_140674A5F
                xor     r8d, r8d
                mov     [rsp+68h+var_48], ax
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, rbx
                call    RtlAnsiStringToUnicodeString

loc_140674A7D:                          ; CODE XREF: RtlIntegerToUnicodeString+35↑j
                mov     rcx, [rsp+68h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140674A10
RtlIntegerToUnicodeString endp
