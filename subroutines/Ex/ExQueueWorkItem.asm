ExQueueWorkItem proc near               ; CODE XREF: sub_14020091C+66↑p
                                        ; sub_14021D25C+1C↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404575A4 SIZE 0000001C BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                movsxd  rbx, edx
                mov     rdi, rcx
                mov     edx, ebx
                call    sub_1402C7708
                mov     ecx, ebx
                call    sub_1402C76E8
                mov     r8, cs:qword_140CFC760
                or      r9d, 0FFFFFFFFh
                and     dword ptr [rsp+38h+var_18], 0
                mov     rdx, rdi
                mov     rcx, [r8+10h]
                mov     r8d, eax
                call    sub_1402C3BD0
                test    al, al
                jz      loc_1404575A4
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExQueueWorkItem endp
