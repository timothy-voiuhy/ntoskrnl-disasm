RtlDeleteElementGenericTableAvlEx proc near
                                        ; DATA XREF: .rdata:000000014009544C↑o
                                        ; .pdata:00000001400DB564↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140496D02 SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                cmp     rdx, [rcx+38h]
                jz      loc_140496D02

loc_14038113A:                          ; CODE XREF: RtlDeleteElementGenericTableAvlEx+115BEE↓j
                inc     dword ptr [rbx+40h]
                mov     rcx, rbx
                call    sub_140310B90
                mov     rax, [rbx+58h]
                mov     rdx, rdi
                dec     dword ptr [rbx+2Ch]
                mov     rcx, rbx
                and     dword ptr [rbx+28h], 0
                and     qword ptr [rbx+20h], 0
                call    sub_1404079D0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlDeleteElementGenericTableAvlEx endp
