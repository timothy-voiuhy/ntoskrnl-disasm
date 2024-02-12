IoGetContainerInformation proc near     ; DATA XREF: .pdata:000000014011CAF0↑o

arg_0           = dword ptr  8

                push    rbx
                sub     rsp, 20h
                mov     rbx, r8
                mov     rax, rdx
                test    ecx, ecx
                jz      short loc_140896157
                mov     eax, 0C00000EFh
                jmp     short loc_1408961AF
; ---------------------------------------------------------------------------

loc_140896157:                          ; CODE XREF: IoGetContainerInformation+E↑j
                cmp     r9d, 0Ch
                jnb     short loc_140896164
                mov     eax, 0C00000F2h
                jmp     short loc_1408961AF
; ---------------------------------------------------------------------------

loc_140896164:                          ; CODE XREF: IoGetContainerInformation+1B↑j
                test    rax, rax
                jnz     short loc_140896181
                call    PsGetCurrentProcessSessionId
                mov     ecx, eax
                call    sub_140201F98
                test    rax, rax
                jnz     short loc_140896181
                mov     eax, 0C00000F0h
                jmp     short loc_1408961AF
; ---------------------------------------------------------------------------

loc_140896181:                          ; CODE XREF: IoGetContainerInformation+27↑j
                                        ; IoGetContainerInformation+38↑j
                and     [rsp+28h+arg_0], 0
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, rax
                call    sub_1408CA2D0
                mov     [rbx+4], eax
                mov     eax, ds:0FFFFF780000002D8h
                mov     ecx, [rsp+28h+arg_0]
                cmp     ecx, eax
                mov     [rbx], ecx
                setz    al
                mov     [rbx+8], al
                xor     eax, eax

loc_1408961AF:                          ; CODE XREF: IoGetContainerInformation+15↑j
                                        ; IoGetContainerInformation+22↑j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetContainerInformation endp
