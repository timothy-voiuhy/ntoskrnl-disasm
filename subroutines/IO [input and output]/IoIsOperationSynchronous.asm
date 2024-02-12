IoIsOperationSynchronous proc near      ; CODE XREF: sub_14061ADE0+E4↓p
                                        ; sub_14061ADE0+317↓p ...
                mov     r8d, [rcx+10h]
                mov     eax, r8d
                mov     rcx, [rcx+0B8h]
                and     eax, 42h
                mov     rdx, [rcx+30h]
                test    byte ptr [rdx+50h], 2
                setz    dl
                test    r8b, 4
                setz    cl
                test    cl, dl
                jz      short loc_140329960
                cmp     eax, 42h ; 'B'
                jz      short loc_140329960

loc_14032995C:                          ; CODE XREF: IoIsOperationSynchronous+33↓j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140329960:                          ; CODE XREF: IoIsOperationSynchronous+25↑j
                                        ; IoIsOperationSynchronous+2A↑j
                cmp     eax, 2
                jz      short loc_14032995C
                mov     al, 1
                retn
IoIsOperationSynchronous endp
