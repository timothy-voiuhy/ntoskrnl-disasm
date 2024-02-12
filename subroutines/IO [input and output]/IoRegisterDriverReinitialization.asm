IoRegisterDriverReinitialization proc near
                                        ; DATA XREF: .rdata:00000001400AA408↑o
                                        ; .pdata:000000014010E4EC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014085FA04 SIZE 0000000E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbx, rcx
                call    ObfReferenceObject
                mov     edx, 28h ; '('
                mov     ecx, 200h
                mov     r8d, 69526F49h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_14085FA04
                or      dword ptr [rbx+10h], 8
                lea     rcx, qword_140C45B20
                mov     rdx, rax
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                call    sub_1403C90C0

loc_1407C582A:                          ; CODE XREF: IoRegisterDriverReinitialization+9A23D↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRegisterDriverReinitialization endp
