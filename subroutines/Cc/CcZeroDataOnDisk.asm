CcZeroDataOnDisk proc near              ; CODE XREF: CcZeroData+1F1↑p
                                        ; DATA XREF: .rdata:0000000140084668↑o ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140484874 SIZE 0000000E BYTES

                push    rbx
                sub     rsp, 20h
                mov     rax, [rdx]
                xor     bl, bl
                mov     rdx, [r8]
                sub     rdx, rax
                mov     [rsp+28h+arg_10], rax
                mov     eax, cs:dword_140C5094C
                mov     [rsp+28h+arg_8], rdx
                cmp     rdx, rax
                jge     short loc_140352CB7
                xor     r9d, r9d

loc_140352C99:                          ; CODE XREF: CcZeroDataOnDisk+6F↓j
                                        ; CcZeroDataOnDisk+131C0D↓j
                lea     r8, [rsp+28h+arg_8]
                lea     rdx, [rsp+28h+arg_10]
                call    sub_140352CF8
                test    eax, eax
                js      short loc_140352CE1
                test    bl, bl
                jnz     short loc_140352CE9

loc_140352CB0:                          ; CODE XREF: CcZeroDataOnDisk+80↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140352CB7:                          ; CODE XREF: CcZeroDataOnDisk+24↑j
                mov     eax, 1
                lock xadd cs:dword_140C48774, eax
                inc     eax
                cmp     eax, cs:dword_140C48770
                jle     loc_140484874
                lock dec cs:dword_140C48774
                mov     r9d, 10000h
                jmp     short loc_140352C99
; ---------------------------------------------------------------------------

loc_140352CE1:                          ; CODE XREF: CcZeroDataOnDisk+3A↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140352CE9:                          ; CODE XREF: CcZeroDataOnDisk+3E↑j
                lock dec cs:dword_140C48774
                jmp     short loc_140352CB0
CcZeroDataOnDisk endp
