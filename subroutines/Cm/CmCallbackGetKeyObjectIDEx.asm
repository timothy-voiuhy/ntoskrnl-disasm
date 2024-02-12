CmCallbackGetKeyObjectIDEx proc near    ; DATA XREF: .rdata:0000000140051468↑o
                                        ; .pdata:00000001400FE964↑o

var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  20h
arg_20          = dword ptr  40h

; FUNCTION CHUNK AT 0000000140803A50 SIZE 00000012 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                and     [rbp+var_60], 0
                xorps   xmm0, xmm0
                or      eax, 0FFFFFFFFh
                mov     rsi, r9
                movups  [rbp+var_58], xmm0
                mov     word ptr [rbp+var_58+2], ax
                movups  [rbp+var_38], xmm0
                movups  [rbp+var_28], xmm0
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_48], xmm0
                test    rdx, rdx
                jz      loc_140803A58
                cmp     dword ptr [rdx], 6B793032h
                jnz     loc_140803A58
                test    rcx, rcx
                jz      loc_140803A58
                cmp     [rbp+arg_20], 0
                jnz     loc_140803A58
                mov     rdi, [rdx+8]
                test    r8, r8
                jnz     loc_140803A50

loc_1406343DB:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+1CF6F3↓j
                test    rsi, rsi
                jz      loc_14063447B
                test    dil, 1
                jnz     loc_140803A58
                lea     rcx, [rbp+var_38]
                call    sub_14063A890
                call    sub_14064A3A0
                mov     rdx, rdi
                lea     rcx, [rbp+var_58]
                call    sub_1406342C0
                mov     ebx, eax
                test    eax, eax
                js      short loc_140634440
                lea     rcx, [rbp+var_58]
                call    sub_14064F880
                cmp     qword ptr [rdi+50h], 0
                jz      short loc_14063447F
                lea     rdx, [rbp+var_60]
                mov     rcx, rdi
                call    sub_1406374E0
                test    eax, eax
                js      short loc_14063447F
                mov     rax, [rbp+var_60]
                xor     ebx, ebx
                mov     [rsi], rax

loc_140634437:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+124↓j
                lea     rcx, [rbp+var_58]
                call    sub_14064F8E0

loc_140634440:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+AC↑j
                call    sub_14064A360
                xor     edx, edx
                lea     rcx, [rbp+var_38]
                call    sub_14021E230

loc_140634450:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+11D↓j
                                        ; CmCallbackGetKeyObjectIDEx+1CF6FD↓j
                mov     rcx, qword ptr [rbp+var_48+8]
                test    rcx, rcx
                jnz     short loc_140634486

loc_140634459:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+12B↓j
                mov     eax, ebx
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_0]
                add     rsp, 80h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14063447B:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+7E↑j
                xor     ebx, ebx
                jmp     short loc_140634450
; ---------------------------------------------------------------------------

loc_14063447F:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+BC↑j
                                        ; CmCallbackGetKeyObjectIDEx+CC↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_140634437
; ---------------------------------------------------------------------------

loc_140634486:                          ; CODE XREF: CmCallbackGetKeyObjectIDEx+F7↑j
                call    SeFreePrivileges
                jmp     short loc_140634459
; } // starts at 140634360
CmCallbackGetKeyObjectIDEx endp
