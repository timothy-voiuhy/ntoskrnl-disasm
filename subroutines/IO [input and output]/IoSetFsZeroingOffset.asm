IoSetFsZeroingOffset proc near          ; DATA XREF: .pdata:00000001400F2940↑o
                sub     rsp, 28h
                xor     r8d, r8d
                mov     r9d, edx
                lea     edx, [r8+4]
                call    sub_1402F17B0
                test    al, al
                jz      short loc_140507DF4
                mov     rax, [rcx+0C8h]
                mov     [rax+28h], r9d
                jmp     short loc_140507DFA
; ---------------------------------------------------------------------------

loc_140507DF4:                          ; CODE XREF: IoSetFsZeroingOffset+15↑j
                mov     r8d, 0C0000225h

loc_140507DFA:                          ; CODE XREF: IoSetFsZeroingOffset+22↑j
                mov     eax, r8d
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetFsZeroingOffset endp
