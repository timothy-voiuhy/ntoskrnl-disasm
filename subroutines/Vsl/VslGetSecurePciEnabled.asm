VslGetSecurePciEnabled proc near        ; CODE XREF: sub_1404F5120+3B9↓p
                                        ; DATA XREF: .rdata:00000001400AE108↑o ...

var_88          = byte ptr -88h
var_78          = dword ptr -78h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404B5CBC SIZE 00000036 BYTES

; __unwind { // __GSHandlerCheck
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_18], rax
                xor     edx, edx
                lea     rcx, [rsp+0A8h+var_88]
                lea     r8d, [rdx+68h]
                call    memset
                xor     ecx, ecx
                call    sub_1402AA098
                test    al, al
                jnz     loc_1404B5CBC

loc_1403CF8A8:                          ; CODE XREF: VslGetSecurePciEnabled+E646A↓j
                                        ; VslGetSecurePciEnabled+E6475↓j
                xor     al, al

loc_1403CF8AA:                          ; CODE XREF: VslGetSecurePciEnabled+E647D↓j
                mov     rcx, [rsp+0A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403CF870
VslGetSecurePciEnabled endp
