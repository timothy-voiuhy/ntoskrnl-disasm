IoRecordIoAttribution proc near         ; DATA XREF: .rdata:0000000140078690↑o
                                        ; .pdata:00000001400D5048↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047074A SIZE 0000001D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     dword ptr [rdx], 1
                mov     rbp, rdx
                jnz     short loc_140319A32
                call    sub_140319A40
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140319A2B
                mov     rdi, rax

loc_1403199DC:                          ; CODE XREF: IoRecordIoAttribution+57↓j
                mov     eax, [rbp+4]
                bt      eax, 0Bh
                jb      loc_14047074A

loc_1403199E9:                          ; CODE XREF: IoRecordIoAttribution+156D9E↓j
                                        ; IoRecordIoAttribution+156DB2↓j
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_140319B74
                mov     ebx, eax
                test    eax, eax
                js      short loc_140319A0B

loc_1403199FD:                          ; CODE XREF: IoRecordIoAttribution+156DAC↓j
                mov     rdi, [rdi+0B0h]
                test    rdi, rdi
                jnz     short loc_1403199DC
                xor     ebx, ebx

loc_140319A0B:                          ; CODE XREF: IoRecordIoAttribution+4B↑j
                mov     rcx, rsi
                call    sub_140319B24

loc_140319A13:                          ; CODE XREF: IoRecordIoAttribution+80↓j
                                        ; IoRecordIoAttribution+87↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140319A2B:                          ; CODE XREF: IoRecordIoAttribution+27↑j
                mov     ebx, 0C0000008h
                jmp     short loc_140319A13
; ---------------------------------------------------------------------------

loc_140319A32:                          ; CODE XREF: IoRecordIoAttribution+1A↑j
                mov     ebx, 0C0000059h
                jmp     short loc_140319A13
IoRecordIoAttribution endp
