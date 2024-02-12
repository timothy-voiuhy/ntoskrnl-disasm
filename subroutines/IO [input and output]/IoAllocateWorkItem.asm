IoAllocateWorkItem proc near            ; CODE XREF: sub_14036D694+1E↓p
                                        ; DATA XREF: .pdata:00000001400D77A8↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     edx, 58h ; 'X'
                mov     ecx, 200h
                call    sub_14036D5A0
                test    rax, rax
                jz      short loc_1403463B0
                and     qword ptr [rax+38h], 0
                lea     rcx, sub_1402F26A0
                mov     [rax+28h], rbx
                mov     dword ptr [rax+40h], 1
                and     qword ptr [rax], 0
                mov     [rax+10h], rcx
                mov     [rax+18h], rax

loc_1403463B0:                          ; CODE XREF: IoAllocateWorkItem+1B↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateWorkItem endp
