RtlRunOnceComplete proc near            ; CODE XREF: RtlRunOnceExecuteOnce+9E↑p
                                        ; RtlRunOnceExecuteOnce+C5↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014082214C SIZE 0000004E BYTES

                push    rbx
                sub     rsp, 20h
                lea     eax, [rdx-1]
                mov     r11, r8
                test    edx, eax
                mov     r10, rcx
                setz    r9b
                test    edx, 0FFFFFFF9h
                setz    al
                test    al, r9b
                jz      short loc_1406DEA0C
                shr     edx, 1
                not     edx
                and     edx, 3
                test    r8, r8
                jz      short loc_1406DE9BC
                test    r11b, 3
                setz    cl
                test    dl, 2
                setnz   al
                test    al, cl
                jnz     short loc_1406DE9BC
                mov     eax, 0C00000F1h

loc_1406DE9B5:                          ; CODE XREF: RtlRunOnceComplete+93↓j
                                        ; RtlRunOnceComplete+9A↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406DE9BC:                          ; CODE XREF: RtlRunOnceComplete+2D↑j
                                        ; RtlRunOnceComplete+3E↑j
                prefetchw byte ptr [r10]
                mov     rax, [r10]
                cmp     edx, 2
                mov     rcx, rax
                sbb     r8, r8
                and     r11, 0FFFFFFFFFFFFFFFCh
                not     r8
                and     ecx, 3
                and     r8d, 2
                or      r8, r11
                cmp     rcx, 1
                jnz     loc_14082216C
                test    cl, dl
                jz      short loc_1406DEA0C
                xchg    r8, [r10]
                mov     al, r8b
                and     al, 3
                cmp     al, cl
                jnz     short loc_1406DEA05
                and     r8, 0FFFFFFFFFFFFFFFCh
                jnz     loc_14082214C

loc_1406DEA01:                          ; CODE XREF: RtlRunOnceComplete+1437F7↓j
                                        ; RtlRunOnceComplete+143810↓j
                xor     eax, eax
                jmp     short loc_1406DE9B5
; ---------------------------------------------------------------------------

loc_1406DEA05:                          ; CODE XREF: RtlRunOnceComplete+85↑j
                mov     eax, 0C000005Ah
                jmp     short loc_1406DE9B5
; ---------------------------------------------------------------------------

loc_1406DEA0C:                          ; CODE XREF: RtlRunOnceComplete+21↑j
                                        ; RtlRunOnceComplete+79↑j ...
                mov     eax, 0C00000F0h
                jmp     short loc_1406DE9B5
RtlRunOnceComplete endp
