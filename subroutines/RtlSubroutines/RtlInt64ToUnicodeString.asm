RtlInt64ToUnicodeString proc near       ; CODE XREF: sub_1406737AC+24↑p
                                        ; DATA XREF: .pdata:00000001401009F8↑o

var_88          = word ptr -88h
var_86          = word ptr -86h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_68          = byte ptr -68h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+8], rbx
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                and     [rsp+0A8h+var_84], 0
                lea     r9, [r11-68h]
                mov     rbx, r8
                mov     [r11-78h], rcx
                mov     edi, 41h ; 'A'
                lea     rcx, [r11-78h]
                mov     r8d, edi
                call    RtlLargeIntegerToChar
                test    eax, eax
                js      short loc_1406738CC
                lea     rax, [rsp+0A8h+var_68]
                mov     [rsp+0A8h+var_86], di
                mov     [rsp+0A8h+var_80], rax
                lea     rcx, [rsp+0A8h+var_68]
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1406738AE:                          ; CODE XREF: RtlInt64ToUnicodeString+65↓j
                inc     rax
                cmp     byte ptr [rcx+rax], 0
                jnz     short loc_1406738AE
                xor     r8d, r8d
                mov     [rsp+0A8h+var_88], ax
                lea     rdx, [rsp+0A8h+var_88]
                mov     rcx, rbx
                call    RtlAnsiStringToUnicodeString

loc_1406738CC:                          ; CODE XREF: RtlInt64ToUnicodeString+44↑j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0A8h+arg_0]
                add     rsp, 0A0h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140673850
RtlInt64ToUnicodeString endp
