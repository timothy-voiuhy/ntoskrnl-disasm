IoRegisterBootDriverReinitialization proc near
                                        ; DATA XREF: .rdata:00000001400AA3E4↑o
                                        ; .pdata:000000014010E4E0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014085F9F6 SIZE 0000000E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140C50B64, 1
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbx, rcx
                jz      short loc_1407C57B3
                call    ObfReferenceObject
                mov     edx, 28h ; '('
                mov     ecx, 200h
                mov     r8d, 69526F49h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_14085F9F6
                or      dword ptr [rbx+10h], 20h
                lea     rcx, qword_140C45AB0
                mov     rdx, rax
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                call    sub_1403C90C0

loc_1407C57B3:                          ; CODE XREF: IoRegisterBootDriverReinitialization+1F↑j
                                        ; IoRegisterBootDriverReinitialization+9A2AF↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRegisterBootDriverReinitialization endp
