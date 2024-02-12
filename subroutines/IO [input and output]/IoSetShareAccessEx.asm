IoSetShareAccessEx proc near            ; DATA XREF: .pdata:000000014010B51C↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                test    rax, rax
                jnz     short loc_14077B0A5

loc_14077B08E:                          ; CODE XREF: IoSetShareAccessEx+28↓j
                xor     eax, eax

loc_14077B090:                          ; CODE XREF: IoSetShareAccessEx+2F↓j
                mov     [rsp+38h+var_10], eax
                and     [rsp+38h+var_18], 0
                call    IoSetLinkShareAccess
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14077B0A5:                          ; CODE XREF: IoSetShareAccessEx+C↑j
                cmp     byte ptr [rax], 0
                jnz     short loc_14077B08E
                mov     eax, 80000000h
                jmp     short loc_14077B090
IoSetShareAccessEx endp
