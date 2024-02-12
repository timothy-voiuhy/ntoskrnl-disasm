PsLookupProcessByProcessId proc near    ; CODE XREF: sub_1405D94AC+66↑p
                                        ; sub_1405E7C2C+14C↑p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014081D0C4 SIZE 0000004C BYTES

                mov     [rsp+arg_10], rbx
                push    rsi
                sub     rsp, 20h

loc_1406C7F0A:                          ; DATA XREF: .rdata:000000014007546C↑o
                                        ; .rdata:0000000140075480↑o ...
                mov     [rsp+28h+arg_8], rdi
                mov     rsi, rdx
                mov     rdi, gs:188h
                dec     word ptr [rdi+1E6h]
                mov     dl, 3
                call    sub_1406C80D0
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1406C7F66

loc_1406C7F31:                          ; DATA XREF: .rdata:0000000140075480↑o
                                        ; .rdata:0000000140075490↑o ...
                mov     [rsp+28h+arg_0], rbp
                call    PsGetCurrentServerSilo
                test    dword ptr [rbx+464h], 4000000h
                mov     rbp, rax
                jz      loc_14081D0C4
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140310498
                test    al, al
                jz      loc_14081D0FC

loc_1406C7F61:                          ; CODE XREF: PsLookupProcessByProcessId+1551F6↓j
                                        ; PsLookupProcessByProcessId+15520B↓j
                mov     rbp, [rsp+28h+arg_0]

loc_1406C7F66:                          ; CODE XREF: PsLookupProcessByProcessId+2F↑j
                                        ; DATA XREF: .pdata:00000001401032A8↑o ...
                add     word ptr [rdi+1E6h], 1
                jnz     short loc_1406C7F7C
                lea     rax, [rdi+98h]
                cmp     [rax], rax
                jnz     short loc_1406C7F9E

loc_1406C7F7C:                          ; CODE XREF: PsLookupProcessByProcessId+6E↑j
                                        ; PsLookupProcessByProcessId+A3↓j
                mov     rdi, [rsp+28h+arg_8]
                test    rbx, rbx
                jz      short loc_1406C7F97

loc_1406C7F86:                          ; DATA XREF: .pdata:00000001401032B4↑o
                                        ; .pdata:00000001401032C0↑o
                mov     [rsi], rbx
                xor     eax, eax

loc_1406C7F8B:                          ; CODE XREF: PsLookupProcessByProcessId+9C↓j
                mov     rbx, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406C7F97:                          ; CODE XREF: PsLookupProcessByProcessId+84↑j
                mov     eax, 0C000000Bh
                jmp     short loc_1406C7F8B
; ---------------------------------------------------------------------------

loc_1406C7F9E:                          ; CODE XREF: PsLookupProcessByProcessId+7A↑j
                                        ; DATA XREF: .pdata:00000001401032C0↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1406C7F7C
PsLookupProcessByProcessId endp
