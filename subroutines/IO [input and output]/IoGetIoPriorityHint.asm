IoGetIoPriorityHint proc near           ; CODE XREF: IoRetrievePriorityInfo:loc_1402CFB9B↑p
                                        ; sub_140643F60+283↓p
                                        ; DATA XREF: ...
                mov     eax, [rcx+10h]
                shr     eax, 11h
                and     eax, 7
                jz      short loc_1402D0B97
                dec     eax
                cmp     eax, 2
                jge     short locret_1402D0B9C
                mov     rdx, [rcx+98h]
                test    rdx, rdx
                jz      short locret_1402D0B9C
                cmp     dword ptr [rdx+550h], 0
                jz      short locret_1402D0B9C

loc_1402D0B97:                          ; CODE XREF: IoGetIoPriorityHint+9↑j
                mov     eax, 2

locret_1402D0B9C:                       ; CODE XREF: IoGetIoPriorityHint+10↑j
                                        ; IoGetIoPriorityHint+1C↑j ...
                retn
IoGetIoPriorityHint endp
