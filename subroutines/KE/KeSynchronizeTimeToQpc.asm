KeSynchronizeTimeToQpc proc near        ; CODE XREF: sub_14099770C+4A↓p
                                        ; DATA XREF: .pdata:00000001400DB9E4↑o
                mov     rax, rsp
                mov     [rax+8], rcx
                sub     rsp, 28h
                and     qword ptr [rax+10h], 0
                lea     r8, [rax+10h]
                lea     rdx, [rax+10h]
                lea     rcx, [rax+8]
                call    sub_140214A58
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSynchronizeTimeToQpc endp
