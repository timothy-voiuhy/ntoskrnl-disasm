NtRequestWaitReplyPort proc near        ; DATA XREF: .pdata:0000000140104FB8↑o
                                        ; PAGE:000000014098B4B8↓o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], r14
                push    r15
                sub     rsp, 50h
                mov     r14, r8
                mov     r15, rdx
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, gs:188h
                mov     sil, [rax+232h]
                mov     r8, cs:qword_140CFC548
                and     qword ptr [r11+20h], 0
                and     qword ptr [r11-30h], 0
                lea     rax, [r11+20h]
                mov     [r11-38h], rax
                mov     r9b, sil
                mov     edx, 1
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406F847B
                test    sil, sil
                jz      short loc_1406F842C

loc_1406F841C:                          ; DATA XREF: .rdata:0000000140080938↑o
;   __try { // __except at loc_1406F8428
                xor     edx, edx
                mov     rcx, r14
                call    sub_1406F84B8
                jmp     short loc_1406F842C
;   } // starts at 1406F841C
; ---------------------------------------------------------------------------

loc_1406F8428:                          ; DATA XREF: .rdata:0000000140080938↑o
;   __except(1) // owned by 1406F841C
                mov     ebx, eax
                jmp     short loc_1406F847B
; ---------------------------------------------------------------------------

loc_1406F842C:                          ; CODE XREF: NtRequestWaitReplyPort+6A↑j
                                        ; NtRequestWaitReplyPort+76↑j
                mov     [rsp+58h+var_18], sil
                and     [rsp+58h+var_20], 0
                and     [rsp+58h+var_28], 0
                and     [rsp+58h+var_30], 0
                mov     [rsp+58h+var_38], r14
                xor     r9d, r9d
                mov     r8, r15
                mov     edx, 20000h
                mov     rcx, [rsp+58h+arg_18]
                call    sub_1406169E0
                mov     ebx, eax
                mov     eax, 0C0000037h
                cmp     ebx, 0C0000703h
                cmovz   ebx, eax
                mov     eax, 0C0000253h
                cmp     ebx, 0C0000701h
                cmovz   ebx, eax

loc_1406F847B:                          ; CODE XREF: NtRequestWaitReplyPort+65↑j
                                        ; NtRequestWaitReplyPort+7A↑j
                mov     rcx, [rsp+58h+arg_18]
                test    rcx, rcx
                jz      short loc_1406F848A
                call    PsDereferenceSiloContext

loc_1406F848A:                          ; CODE XREF: NtRequestWaitReplyPort+D3↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                mov     r14, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F83B0
NtRequestWaitReplyPort endp
