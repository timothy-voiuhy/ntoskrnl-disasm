FsRtlOplockBreakToNone proc near        ; DATA XREF: .pdata:00000001400F13D4↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                mov     r10, r8
                xor     r8d, r8d
                cmp     [rcx], r8
                jnz     short loc_1404F0353
                xor     eax, eax
                jmp     short loc_1404F0390
; ---------------------------------------------------------------------------

loc_1404F0353:                          ; CODE XREF: FsRtlOplockBreakToNone+D↑j
                test    rdx, rdx
                jnz     short loc_1404F035F
                mov     rdx, [r10+0B8h]

loc_1404F035F:                          ; CODE XREF: FsRtlOplockBreakToNone+16↑j
                cmp     [rdx], r8b
                jnz     short loc_1404F0374
                test    dword ptr [rdx+10h], 100h
                mov     eax, 1
                cmovnz  r8d, eax

loc_1404F0374:                          ; CODE XREF: FsRtlOplockBreakToNone+22↑j
                mov     rax, [rsp+38h+arg_28]
                mov     rdx, r10
                mov     [rsp+38h+var_10], rax
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                call    FsRtlOplockBreakToNoneEx

loc_1404F0390:                          ; CODE XREF: FsRtlOplockBreakToNone+11↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlOplockBreakToNone endp
