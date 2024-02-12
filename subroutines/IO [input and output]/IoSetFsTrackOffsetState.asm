IoSetFsTrackOffsetState proc near       ; DATA XREF: .pdata:00000001400F2934↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, r8
                mov     edx, 5
                mov     rsi, rcx
                call    sub_140507E80
                test    al, al
                jnz     short loc_140507D8D
                mov     eax, 0C00000BBh
                jmp     short loc_140507DB0
; ---------------------------------------------------------------------------

loc_140507D8D:                          ; CODE XREF: IoSetFsTrackOffsetState+24↑j
                mov     edx, 5
                mov     rcx, rsi
                call    sub_1402A2A90
                test    rax, rax
                jnz     short loc_140507DA6
                mov     eax, 0C000009Ah
                jmp     short loc_140507DB0
; ---------------------------------------------------------------------------

loc_140507DA6:                          ; CODE XREF: IoSetFsTrackOffsetState+3D↑j
                mov     [rax+28h], rdi
                mov     [rax+30h], rbx
                xor     eax, eax

loc_140507DB0:                          ; CODE XREF: IoSetFsTrackOffsetState+2B↑j
                                        ; IoSetFsTrackOffsetState+44↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetFsTrackOffsetState endp
