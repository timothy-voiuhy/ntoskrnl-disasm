RtlShiftLeftBitMapEx proc near          ; DATA XREF: .pdata:00000001400F7CD4↑o

arg_0           = qword ptr  8

                test    rdx, rdx
                jz      short locret_1405889B9
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r9, [rcx]
                xor     r8d, r8d
                mov     rbx, rdx
                mov     rdi, rcx
                cmp     rdx, r9
                jb      short loc_140588990
                mov     rcx, [rcx+8]
                test    r9b, 1Fh
                setnz   r8b
                shr     r9, 5
                add     r8, r9
                xor     edx, edx
                shl     r8, 2
                call    memset
                jmp     short loc_1405889AF
; ---------------------------------------------------------------------------

loc_140588990:                          ; CODE XREF: RtlShiftLeftBitMapEx+1E↑j
                sub     r9, rbx
                mov     r8, rbx
                mov     rdx, rdi
                call    RtlExtractBitMapEx
                mov     rdx, [rdi]
                mov     r8, rbx
                sub     rdx, rbx
                mov     rcx, rdi
                call    RtlClearBitsEx

loc_1405889AF:                          ; CODE XREF: RtlShiftLeftBitMapEx+3E↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi

locret_1405889B9:                       ; CODE XREF: RtlShiftLeftBitMapEx+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlShiftLeftBitMapEx endp
