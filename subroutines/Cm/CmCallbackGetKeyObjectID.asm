CmCallbackGetKeyObjectID proc near      ; CODE XREF: sub_14093C9E0+3F2↓p
                                        ; DATA XREF: .pdata:000000014011ADE0↑o

var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  20h

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
                jz      loc_14086B3BA
                cmp     dword ptr [rdx], 6B793032h
                jnz     loc_14086B3BA
                test    rcx, rcx
                jz      loc_14086B3BA
                mov     rdi, [rdx+8]
                test    r8, r8
                jz      short loc_14086B340
                mov     [r8], rdi

loc_14086B340:                          ; CODE XREF: CmCallbackGetKeyObjectID+6B↑j
                test    rsi, rsi
                jnz     short loc_14086B349
                xor     ebx, ebx
                jmp     short loc_14086B3BF
; ---------------------------------------------------------------------------

loc_14086B349:                          ; CODE XREF: CmCallbackGetKeyObjectID+73↑j
                test    dil, 1
                jnz     short loc_14086B3BA
                lea     rcx, [rbp+var_38]
                call    sub_14063A890
                call    sub_14064A3A0
                mov     rdx, rdi
                lea     rcx, [rbp+var_58]
                call    sub_1406342C0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14086B3A8
                lea     rcx, [rbp+var_58]
                call    sub_14064F880
                cmp     qword ptr [rdi+50h], 0
                jnz     short loc_14086B386

loc_14086B37F:                          ; CODE XREF: CmCallbackGetKeyObjectID+C4↓j
                mov     ebx, 0C000009Ah
                jmp     short loc_14086B39F
; ---------------------------------------------------------------------------

loc_14086B386:                          ; CODE XREF: CmCallbackGetKeyObjectID+AD↑j
                lea     rdx, [rbp+var_60]
                mov     rcx, rdi
                call    sub_14071B4CC
                test    eax, eax
                js      short loc_14086B37F
                mov     rax, [rbp+var_60]
                xor     ebx, ebx
                mov     [rsi], rax

loc_14086B39F:                          ; CODE XREF: CmCallbackGetKeyObjectID+B4↑j
                lea     rcx, [rbp+var_58]
                call    sub_14064F8E0

loc_14086B3A8:                          ; CODE XREF: CmCallbackGetKeyObjectID+9D↑j
                call    sub_14064A360
                xor     edx, edx
                lea     rcx, [rbp+var_38]
                call    sub_14021E230
                jmp     short loc_14086B3BF
; ---------------------------------------------------------------------------

loc_14086B3BA:                          ; CODE XREF: CmCallbackGetKeyObjectID+49↑j
                                        ; CmCallbackGetKeyObjectID+55↑j ...
                mov     ebx, 0C000000Dh

loc_14086B3BF:                          ; CODE XREF: CmCallbackGetKeyObjectID+77↑j
                                        ; CmCallbackGetKeyObjectID+E8↑j
                mov     rcx, qword ptr [rbp+var_48+8]
                test    rcx, rcx
                jz      short loc_14086B3CD
                call    SeFreePrivileges

loc_14086B3CD:                          ; CODE XREF: CmCallbackGetKeyObjectID+F6↑j
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
; } // starts at 14086B2D0
CmCallbackGetKeyObjectID endp
