IoTestDependency proc near              ; DATA XREF: .pdata:00000001400DBDE0↑o
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                test    rcx, rcx
                jz      short loc_14038ABED
                test    rdx, rdx
                jz      short loc_14038ABED
                cmp     rcx, rdx
                jz      short loc_14038ABED
                mov     rax, [rcx+138h]
                mov     rcx, [rax+50h]
                mov     rax, [rdx+138h]
                mov     rdx, [rax+50h]
                test    rcx, rcx
                jz      short loc_14038ABE5
                test    rdx, rdx
                jz      short loc_14038ABE5
                call    sub_14038ABFC

loc_14038ABDC:                          ; CODE XREF: IoTestDependency+4B↓j
                                        ; IoTestDependency+52↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14038ABE5:                          ; CODE XREF: IoTestDependency+30↑j
                                        ; IoTestDependency+35↑j
                mov     [r8], ebx
                mov     [r9], ebx
                jmp     short loc_14038ABDC
; ---------------------------------------------------------------------------

loc_14038ABED:                          ; CODE XREF: IoTestDependency+B↑j
                                        ; IoTestDependency+10↑j ...
                mov     ebx, 0C000000Dh
                jmp     short loc_14038ABDC
IoTestDependency endp
