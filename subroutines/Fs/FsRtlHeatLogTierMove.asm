FsRtlHeatLogTierMove proc near          ; DATA XREF: .pdata:000000014011C3DC↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 58h
                test    cs:byte_140C47600, 10h
                jz      short loc_14088E84C
                mov     eax, [rcx]
                mov     [rsp+58h+var_10], eax
                mov     eax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_18], eax
                mov     eax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_20], eax
                mov     rax, [rdx+8]
                mov     [rsp+58h+var_28], r9d
                mov     r9, [rdx]
                mov     [rsp+58h+var_30], r8
                mov     r8, [rsp+58h+arg_30]
                mov     [rsp+58h+var_38], rax
                call    sub_1404F1420

loc_14088E84C:                          ; CODE XREF: FsRtlHeatLogTierMove+B↑j
                xor     eax, eax
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlHeatLogTierMove endp
