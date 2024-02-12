IoInitializeWorkItem proc near          ; DATA XREF: .rdata:0000000140092964↑o
                                        ; .pdata:00000001400DADF0↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140494530 SIZE 0000001A BYTES

                sub     rsp, 38h
                movzx   eax, word ptr [rcx]
                mov     r10d, 3
                sub     ax, r10w
                lea     r8d, [r10-2]
                cmp     ax, r8w
                ja      loc_140494530
                and     qword ptr [rdx+38h], 0
                lea     rax, sub_1402F26A0
                mov     [rdx+40h], r8d
                mov     [rdx+28h], rcx
                and     qword ptr [rdx], 0
                mov     [rdx+10h], rax
                mov     [rdx+18h], rdx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoInitializeWorkItem endp
