RtlTraceDatabaseDestroy proc near       ; DATA XREF: .pdata:00000001400F8124↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rcx, [rcx+10h]
                test    rcx, rcx
                jz      short loc_14058ED26

loc_14058ED06:                          ; CODE XREF: RtlTraceDatabaseDestroy+34↓j
                mov     rbx, [rcx+10h]
                test    rbx, rbx
                jnz     short loc_14058ED16
                sub     rcx, 0D8h

loc_14058ED16:                          ; CODE XREF: RtlTraceDatabaseDestroy+1D↑j
                mov     edx, [rdi+8]
                call    ExFreePoolWithTag
                mov     rcx, rbx
                test    rbx, rbx
                jnz     short loc_14058ED06

loc_14058ED26:                          ; CODE XREF: RtlTraceDatabaseDestroy+14↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     al, 1
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlTraceDatabaseDestroy endp
