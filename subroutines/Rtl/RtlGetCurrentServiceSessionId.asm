RtlGetCurrentServiceSessionId proc near ; CODE XREF: sub_1406D74D8+149240↓p
                                        ; sub_140915D48+2E8↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    sub_1403F2884
                test    eax, eax
                jnz     short loc_1403A6089
                mov     rcx, gs:188h
                call    PsGetThreadServerSilo
                test    rax, rax
                jz      short loc_1403A6089
                mov     rax, [rax+4F8h]
                jmp     short loc_1403A6090
; ---------------------------------------------------------------------------

loc_1403A6089:                          ; CODE XREF: RtlGetCurrentServiceSessionId+B↑j
                                        ; RtlGetCurrentServiceSessionId+1E↑j
                lea     rax, unk_140D24540

loc_1403A6090:                          ; CODE XREF: RtlGetCurrentServiceSessionId+27↑j
                mov     rax, [rax+468h]
                mov     eax, [rax]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetCurrentServiceSessionId endp
