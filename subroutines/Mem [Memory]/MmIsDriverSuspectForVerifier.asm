MmIsDriverSuspectForVerifier proc near  ; DATA XREF: .pdata:0000000140128484↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, [rcx+28h]
                test    rbx, rbx
                jnz     short loc_1409C7F93
                xor     eax, eax
                jmp     short loc_1409C7FBD
; ---------------------------------------------------------------------------

loc_1409C7F93:                          ; CODE XREF: MmIsDriverSuspectForVerifier+D↑j
                call    sub_1409C45C8
                mov     rcx, rbx
                call    sub_1409C8CF0
                xor     edx, edx
                mov     cs:qword_140C1CC70, 0
                lea     rcx, unk_140C1CC80
                mov     ebx, eax
                call    KeReleaseMutex
                mov     eax, ebx

loc_1409C7FBD:                          ; CODE XREF: MmIsDriverSuspectForVerifier+11↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmIsDriverSuspectForVerifier endp
