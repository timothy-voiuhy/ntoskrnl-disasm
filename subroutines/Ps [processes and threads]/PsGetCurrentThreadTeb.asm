PsGetCurrentThreadTeb proc near         ; CODE XREF: sub_1406C8654:loc_1406C877C↓p
                                        ; sub_1406C89B0+67↓p
                                        ; DATA XREF: ...
                mov     rcx, gs:188h
                test    dword ptr [rcx+74h], 400h
                jnz     short loc_140341EB4
                cmp     byte ptr [rcx+24Ah], 1
                jz      short loc_140341EB4
                mov     rax, [rcx+0F0h]
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140341EB4:                          ; CODE XREF: PsGetCurrentThreadTeb+10↑j
                                        ; PsGetCurrentThreadTeb+19↑j
                xor     eax, eax
                retn
PsGetCurrentThreadTeb endp
