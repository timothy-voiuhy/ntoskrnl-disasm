RtlIsGenericTableEmptyAvl proc near     ; CODE XREF: sub_1406CDB1C+9E↓p
                                        ; sub_1406D3734:loc_1406D3745↓p ...
                cmp     dword ptr [rcx+2Ch], 0
                setz    al
                retn
RtlIsGenericTableEmptyAvl endp
