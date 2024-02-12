FsRtlRegisterUncProvider proc near      ; DATA XREF: .pdata:000000014011C2B0↑o

arg_18          = qword ptr  20h

                sub     rsp, 28h
                and     [rsp+28h+arg_18], 0
                mov     rax, rdx
                mov     dword ptr [rsp+28h+arg_18], 1000008h
                test    r8b, r8b
                jz      short loc_14088CFFF
                or      dword ptr [rsp+28h+arg_18+4], 1

loc_14088CFFF:                          ; CODE XREF: FsRtlRegisterUncProvider+18↑j
                mov     r9, rcx
                lea     r8, [rsp+28h+arg_18]
                mov     rcx, rax
                xor     edx, edx
                call    sub_1407C6428
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlRegisterUncProvider endp
