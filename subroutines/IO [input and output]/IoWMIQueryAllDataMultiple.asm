IoWMIQueryAllDataMultiple proc near     ; DATA XREF: .pdata:0000000140123414↑o

var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_88          = byte ptr -88h
var_38          = qword ptr -38h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 0B8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_38], rax
                mov     esi, edx
                mov     rdi, r8
                xor     edx, edx
                mov     rbp, rcx
                lea     rcx, [rsp+0D8h+var_88]
                mov     rbx, r9
                lea     r8d, [rdx+48h]
                call    memset
                and     [rsp+0D8h+var_98], 0
                test    rbp, rbp
                jz      short loc_140932777
                test    esi, esi
                jz      short loc_140932777
                test    rdi, rdi
                jz      short loc_140932777
                mov     eax, [rdi]
                test    rbx, rbx
                jz      short loc_140932718
                cmp     eax, 48h ; 'H'
                jnb     short loc_140932722

loc_140932718:                          ; CODE XREF: IoWMIQueryAllDataMultiple+51↑j
                lea     rbx, [rsp+0D8h+var_88]
                mov     eax, 48h ; 'H'

loc_140932722:                          ; CODE XREF: IoWMIQueryAllDataMultiple+56↑j
                lea     rcx, [rsp+0D8h+var_98]
                xor     r9d, r9d
                mov     [rsp+0D8h+var_A0], rcx
                xor     r8d, r8d
                and     [rsp+0D8h+var_A8], 0
                mov     rdx, rbp
                mov     [rsp+0D8h+var_B0], eax
                mov     ecx, esi
                mov     [rsp+0D8h+var_B8], rbx
                call    sub_140934198
                mov     edx, eax
                test    eax, eax
                js      short loc_14093277C
                mov     ecx, [rbx+2Ch]
                test    cl, 20h
                jz      short loc_140932765
                mov     eax, [rbx+30h]
                mov     [rdi], eax

loc_14093275E:                          ; CODE XREF: IoWMIQueryAllDataMultiple+B5↓j
                mov     edx, 0C0000023h
                jmp     short loc_14093277C
; ---------------------------------------------------------------------------

loc_140932765:                          ; CODE XREF: IoWMIQueryAllDataMultiple+97↑j
                mov     eax, [rsp+0D8h+var_98]
                mov     [rdi], eax
                lea     rax, [rsp+0D8h+var_88]
                cmp     rbx, rax
                jnz     short loc_14093277C
                jmp     short loc_14093275E
; ---------------------------------------------------------------------------

loc_140932777:                          ; CODE XREF: IoWMIQueryAllDataMultiple+41↑j
                                        ; IoWMIQueryAllDataMultiple+45↑j ...
                mov     edx, 0C000000Dh

loc_14093277C:                          ; CODE XREF: IoWMIQueryAllDataMultiple+8F↑j
                                        ; IoWMIQueryAllDataMultiple+A3↑j ...
                mov     eax, edx
                mov     rcx, [rsp+0D8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0B8h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409326C0
IoWMIQueryAllDataMultiple endp
