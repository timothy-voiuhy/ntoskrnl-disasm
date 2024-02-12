SeGetCachedSigningLevel proc near       ; CODE XREF: sub_140703570+168↑p
                                        ; DATA XREF: .pdata:00000001401057F8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     r11, cs:qword_140C1D8F0
                mov     rax, r8
                mov     r10, rcx
                test    r11, r11
                jz      short loc_140703860
                test    rcx, rcx
                jz      short loc_140703867
                test    rdx, rdx
                jz      short loc_140703867
                test    rax, rax
                jz      short loc_140703867
                mov     rcx, [rsp+48h+arg_28]
                mov     r8, rdx
                mov     [rsp+48h+var_20], rcx
                mov     rdx, rax
                mov     rcx, [rsp+48h+arg_20]
                mov     rax, r11
                mov     [rsp+48h+var_28], rcx
                mov     rcx, r10
                call    sub_1404079D0

loc_14070385A:                          ; CODE XREF: SeGetCachedSigningLevel+55↓j
                                        ; SeGetCachedSigningLevel+5C↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140703860:                          ; CODE XREF: SeGetCachedSigningLevel+14↑j
                mov     eax, 0C0000001h
                jmp     short loc_14070385A
; ---------------------------------------------------------------------------

loc_140703867:                          ; CODE XREF: SeGetCachedSigningLevel+19↑j
                                        ; SeGetCachedSigningLevel+1E↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_14070385A
SeGetCachedSigningLevel endp
