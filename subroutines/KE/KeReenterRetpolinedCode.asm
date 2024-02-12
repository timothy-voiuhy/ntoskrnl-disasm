KeReenterRetpolinedCode proc near       ; DATA XREF: .pdata:00000001400E1648↑o

var_8           = dword ptr -8

                pushfq
                mov     al, gs:853h
                test    al, 1
                jz      short loc_1403F2C4B
                mov     ecx, [rsp+8+var_8]
                cli
                mov     rax, gs:20h
                shr     ecx, 9
                and     byte ptr [rax+6D3h], 0FEh
                and     cl, 1
                jz      short loc_1403F2C4B
                sti

loc_1403F2C4B:                          ; CODE XREF: KeReenterRetpolinedCode+C↑j
                                        ; KeReenterRetpolinedCode+28↑j
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReenterRetpolinedCode endp
