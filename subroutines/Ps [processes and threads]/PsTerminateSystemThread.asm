PsTerminateSystemThread proc near       ; CODE XREF: sub_14039CD80+38D↑p
                                        ; sub_1404FF300+4C↑p ...

; FUNCTION CHUNK AT 0000000140818AA0 SIZE 0000000A BYTES

                sub     rsp, 28h
                mov     edx, ecx
                mov     rcx, gs:188h
                test    dword ptr [rcx+74h], 400h
                jz      loc_140818AA0
                mov     r8b, 1
                call    sub_1406AB230

loc_1406A96D4:                          ; CODE XREF: PsTerminateSystemThread+16F3F5↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsTerminateSystemThread endp
