MmAllocateContiguousMemory proc near    ; DATA XREF: .pdata:00000001400F489C↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h

                sub     rsp, 48h
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                cmp     rdx, rax
                mov     [rsp+48h+var_20], 80000000h
                mov     [rsp+48h+var_28], 6
                cmova   rdx, rax
                xor     r9d, r9d
                mov     r8, rdx
                xor     edx, edx
                call    sub_1402E730C
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocateContiguousMemory endp
