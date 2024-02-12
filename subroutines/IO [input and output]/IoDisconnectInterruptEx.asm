IoDisconnectInterruptEx proc near       ; DATA XREF: .rdata:0000000140092154↑o
                                        ; .pdata:0000000140109E84↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001408424D0 SIZE 00000024 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     edx, [rcx]
                mov     eax, edx
                sub     eax, 1
                jz      short loc_1407602A6
                sub     eax, 1
                jz      short loc_1407602EC
                sub     eax, 1
                jz      short loc_1407602BB
                sub     eax, 1
                jnz     loc_1408424D0

loc_1407602A6:                          ; CODE XREF: IoDisconnectInterruptEx+11↑j
                mov     rcx, [rcx+8]
                call    IoDisconnectInterrupt

loc_1407602AF:                          ; CODE XREF: IoDisconnectInterruptEx+6A↓j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407602BB:                          ; CODE XREF: IoDisconnectInterruptEx+1B↑j
                                        ; IoDisconnectInterruptEx+E2253↓j
                mov     rdi, [rcx+8]
                xor     ebx, ebx
                cmp     [rdi+4], ebx
                jbe     short loc_1407602E0

loc_1407602C6:                          ; CODE XREF: IoDisconnectInterruptEx+5E↓j
                mov     eax, ebx
                lea     rcx, [rax+rax*2]
                add     rcx, rcx
                mov     rcx, [rdi+rcx*8+18h]
                call    IoDisconnectInterrupt
                inc     ebx
                cmp     ebx, [rdi+4]
                jb      short loc_1407602C6

loc_1407602E0:                          ; CODE XREF: IoDisconnectInterruptEx+44↑j
                                        ; IoDisconnectInterruptEx+78↓j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     short loc_1407602AF
; ---------------------------------------------------------------------------

loc_1407602EC:                          ; CODE XREF: IoDisconnectInterruptEx+16↑j
                mov     rdi, [rcx+8]
                xor     ebx, ebx
                cmp     [rdi+124h], ebx
                jbe     short loc_1407602E0

loc_1407602FA:                          ; CODE XREF: IoDisconnectInterruptEx+97↓j
                mov     eax, ebx
                mov     rcx, [rdi+rax*8+128h]
                add     rcx, 70h ; 'p'
                call    IoDisconnectInterrupt
                inc     ebx
                cmp     ebx, [rdi+124h]
                jnb     short loc_1407602E0
                jmp     short loc_1407602FA
IoDisconnectInterruptEx endp
