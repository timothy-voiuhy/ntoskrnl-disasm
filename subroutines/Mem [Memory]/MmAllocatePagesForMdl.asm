MmAllocatePagesForMdl proc near         ; CODE XREF: sub_140866B18+4A↓p
                                        ; DATA XREF: .pdata:00000001400DD9C4↑o

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 48h
                mov     rax, gs:188h
                lea     r10, qword_140CFDCC0
                and     [rsp+48h+var_10], 0
                mov     eax, [rax+24Ch]
                mov     rax, [r10+rax*8]
                mov     r10, [rax+0C0h]
                movzx   eax, word ptr [r10+92h]
                mov     [rsp+48h+var_18], eax
                mov     [rsp+48h+var_20], 3
                mov     [rsp+48h+var_28], r9
                mov     r9, r8
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, unk_140C50C00
                call    sub_1403014F4
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocatePagesForMdl endp
