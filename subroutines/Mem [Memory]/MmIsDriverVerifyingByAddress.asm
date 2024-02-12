MmIsDriverVerifyingByAddress proc near  ; DATA XREF: .pdata:000000014010EF90↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, gs:188h
                mov     rbx, rcx
                mov     edi, 1
                dec     word ptr [rsi+1E4h]
                mov     dl, dil
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14033EE44
                test    rax, rax
                jz      short loc_1407D151E
                mov     eax, [rax+68h]
                bt      eax, 19h
                jb      short loc_1407D1520

loc_1407D151E:                          ; CODE XREF: MmIsDriverVerifyingByAddress+43↑j
                xor     edi, edi

loc_1407D1520:                          ; CODE XREF: MmIsDriverVerifyingByAddress+4C↑j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rsi
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmIsDriverVerifyingByAddress endp
