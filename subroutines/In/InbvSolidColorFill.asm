InbvSolidColorFill proc near            ; CODE XREF: sub_1403B4CD0+F602E↑p
                                        ; sub_1403B4CD0+F6043↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_20          = dword ptr  28h

                sub     rsp, 38h
                mov     rax, cs:qword_140C509F0
                mov     r10d, r8d
                test    rax, rax
                jz      short loc_1404FF20E
                mov     rax, [rax+20h]
                test    rax, rax
                jz      short loc_1404FF20E
                mov     r8d, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], r8d
                mov     r8d, r10d
                call    sub_1404079D0

loc_1404FF20E:                          ; CODE XREF: InbvSolidColorFill+11↑j
                                        ; InbvSolidColorFill+1A↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvSolidColorFill endp
