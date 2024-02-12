HalAllProcessorsStarted proc near       ; CODE XREF: sub_140A3CC14:loc_140A3D3C3↑p
                                        ; DATA XREF: .pdata:000000014012EB74↑o
                sub     rsp, 28h
                xor     r8d, r8d
                lea     edx, [r8+16h]
                lea     ecx, [rdx-1]
                call    sub_14099D7A8
                test    eax, eax
                setns   al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalAllProcessorsStarted endp
