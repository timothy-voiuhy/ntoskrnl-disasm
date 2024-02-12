CcGetDirtyPages proc near               ; DATA XREF: .pdata:00000001400D3878↑o

var_18          = qword ptr -18h

                mov     rax, rsp
                sub     rsp, 58h
                and     qword ptr [rax-18h], 0
                mov     [rax-28h], r8
                mov     r8b, 1
                mov     [rax-38h], rcx
                lea     rcx, sub_1402F7480
                mov     [rax-30h], rdx
                lea     rdx, [rax-38h]
                mov     [rax-20h], r9
                call    sub_1402FBF50
                mov     rax, [rsp+58h+var_18]
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcGetDirtyPages endp
