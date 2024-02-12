RtlShiftLeftBitMap proc near            ; DATA XREF: .pdata:00000001400F7CC8↑o

arg_0           = qword ptr  8

                test    edx, edx
                jz      short locret_140588944
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r9d, [rcx]
                xor     eax, eax
                mov     ebx, edx
                mov     rdi, rcx
                cmp     edx, r9d
                jb      short loc_14058891D
                mov     rcx, [rcx+8]
                test    r9b, 1Fh
                setnz   al
                shr     r9d, 5
                xor     edx, edx
                lea     r8d, [r9+rax]
                shl     r8d, 2
                call    memset
                jmp     short loc_14058893A
; ---------------------------------------------------------------------------

loc_14058891D:                          ; CODE XREF: RtlShiftLeftBitMap+1B↑j
                sub     r9d, ebx
                mov     r8d, ebx
                mov     rdx, rdi
                call    RtlExtractBitMap
                mov     edx, [rdi]
                mov     r8d, ebx
                sub     edx, ebx
                mov     rcx, rdi
                call    RtlClearBits

loc_14058893A:                          ; CODE XREF: RtlShiftLeftBitMap+3B↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi

locret_140588944:                       ; CODE XREF: RtlShiftLeftBitMap+2↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlShiftLeftBitMap endp
