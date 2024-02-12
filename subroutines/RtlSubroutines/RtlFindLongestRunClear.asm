RtlFindLongestRunClear proc near        ; DATA XREF: .pdata:00000001400F7C08↑o

arg_10          = dword ptr  18h
arg_14          = dword ptr  1Ch

                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                mov     r9b, 1
                lea     rdx, [rsp+28h+arg_10]
                mov     r8d, 1
                call    RtlFindClearRuns
                cmp     eax, 1
                jnz     short loc_1405874CD
                mov     eax, [rsp+28h+arg_10]
                mov     [rbx], eax
                mov     eax, [rsp+28h+arg_14]
                jmp     short loc_1405874D2
; ---------------------------------------------------------------------------

loc_1405874CD:                          ; CODE XREF: RtlFindLongestRunClear+1F↑j
                and     dword ptr [rbx], 0
                xor     eax, eax

loc_1405874D2:                          ; CODE XREF: RtlFindLongestRunClear+2B↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFindLongestRunClear endp
