PsSetCurrentThreadPrefetching proc near ; CODE XREF: sub_1405DB2DC+39↑p
                                        ; sub_1405DB428+C4↑p ...
                push    rbx
                sub     rsp, 20h
                mov     dl, cl
                mov     rcx, gs:188h
                dec     word ptr [rcx+1E6h]
                mov     bl, [rcx+518h]
                shl     dl, 6
                xor     dl, bl
                and     dl, 40h
                xor     dl, bl
                mov     [rcx+518h], dl
                call    sub_140245770
                shr     bl, 6
                and     bl, 1
                mov     al, bl
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetCurrentThreadPrefetching endp
