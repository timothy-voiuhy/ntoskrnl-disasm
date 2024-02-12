CcGetNumberOfMappedPages proc near      ; DATA XREF: .pdata:00000001400DC830↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, [rcx+8]
                mov     rsi, r8
                and     qword ptr [rdx], 0
                mov     r14, rdx
                and     qword ptr [r8], 0
                test    rdi, rdi
                jz      short loc_140394BAC
                xor     edx, edx
                lea     rcx, [rdi+68h]
                call    ExAcquirePushLockSharedEx
                mov     eax, [rdi+21Ch]
                lea     rcx, [rdi+68h]
                shl     rax, 6
                xor     edx, edx
                mov     [r14], rax
                mov     eax, [rdi+220h]
                shl     rax, 6
                mov     [rsi], rax
                call    ExReleasePushLockEx

loc_140394BAC:                          ; CODE XREF: CcGetNumberOfMappedPages+2A↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcGetNumberOfMappedPages endp
