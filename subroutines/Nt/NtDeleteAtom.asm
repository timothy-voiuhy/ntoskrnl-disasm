NtDeleteAtom    proc near               ; DATA XREF: .pdata:0000000140105654↑o
                                        ; PAGE:000000014098A698↓o

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_8], 0
                lea     rdx, [rsp+28h+arg_8]
                xor     r9d, r9d
                movzx   ebx, cx
                xor     r8d, r8d
                lea     ecx, [r9+2]
                call    sub_1406630E0
                mov     rcx, [rsp+28h+arg_8]
                test    rcx, rcx
                jz      short loc_1407017DC
                movzx   edx, bx
                call    RtlDeleteAtomFromAtomTable

loc_1407017D5:                          ; CODE XREF: NtDeleteAtom+41↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407017DC:                          ; CODE XREF: NtDeleteAtom+2B↑j
                mov     eax, 0C0000022h
                jmp     short loc_1407017D5
NtDeleteAtom    endp

; ---------------------------------------------------------------------------
algn_1407017E3:                         ; DATA XREF: .pdata:0000000140105654↑o
                align 10h
; Exported entry 2081. RtlDestroyAtomTable

; =============== S U B R O U T I N E =======================================


