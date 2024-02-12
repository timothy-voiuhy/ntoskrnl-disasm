IoWMIQuerySingleInstanceMultiple proc near
                                        ; DATA XREF: .pdata:0000000140123420↑o

var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = dword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_28          = qword ptr -28h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                push    rbx
                push    rdi
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_28], rax
                and     [rsp+0B8h+var_68], 0
                xorps   xmm0, xmm0
                mov     rbx, [rsp+0B8h+arg_20]
                xor     eax, eax
                mov     rdi, r9
                movups  [rsp+0B8h+var_60], xmm0
                movups  [rsp+0B8h+var_50], xmm0
                movups  [rsp+0B8h+var_40], xmm0
                mov     [r11-30h], rax
                test    rcx, rcx
                jz      short loc_14093287A
                test    rdx, rdx
                jz      short loc_14093287A
                test    r8d, r8d
                jz      short loc_14093287A
                test    r9, r9
                jz      short loc_14093287A
                mov     r9d, [r9]
                test    rbx, rbx
                jz      short loc_140932818
                cmp     r9d, 38h ; '8'
                jnb     short loc_140932823

loc_140932818:                          ; CODE XREF: IoWMIQuerySingleInstanceMultiple+60↑j
                lea     rbx, [rsp+0B8h+var_60]
                mov     r9d, 38h ; '8'

loc_140932823:                          ; CODE XREF: IoWMIQuerySingleInstanceMultiple+66↑j
                lea     rax, [rsp+0B8h+var_68]
                mov     [rsp+0B8h+var_78], rax
                mov     [rsp+0B8h+var_80], rdx
                xor     edx, edx
                mov     [rsp+0B8h+var_88], rcx
                xor     ecx, ecx
                mov     [rsp+0B8h+var_90], r8d
                mov     r8, rbx
                and     [rsp+0B8h+var_98], 0
                call    sub_14093454C
                mov     edx, eax
                test    eax, eax
                js      short loc_14093287F
                mov     ecx, [rbx+2Ch]
                test    cl, 20h
                jz      short loc_140932868
                mov     eax, [rbx+30h]
                mov     [rdi], eax

loc_140932861:                          ; CODE XREF: IoWMIQuerySingleInstanceMultiple+C8↓j
                mov     edx, 0C0000023h
                jmp     short loc_14093287F
; ---------------------------------------------------------------------------

loc_140932868:                          ; CODE XREF: IoWMIQuerySingleInstanceMultiple+AA↑j
                mov     eax, [rsp+0B8h+var_68]
                mov     [rdi], eax
                lea     rax, [rsp+0B8h+var_60]
                cmp     rbx, rax
                jnz     short loc_14093287F
                jmp     short loc_140932861
; ---------------------------------------------------------------------------

loc_14093287A:                          ; CODE XREF: IoWMIQuerySingleInstanceMultiple+49↑j
                                        ; IoWMIQuerySingleInstanceMultiple+4E↑j ...
                mov     edx, 0C000000Dh

loc_14093287F:                          ; CODE XREF: IoWMIQuerySingleInstanceMultiple+A2↑j
                                        ; IoWMIQuerySingleInstanceMultiple+B6↑j ...
                mov     eax, edx
                mov     rcx, [rsp+0B8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409327B0
IoWMIQuerySingleInstanceMultiple endp
