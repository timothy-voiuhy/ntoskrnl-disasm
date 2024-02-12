PsMakeSiloContextPermanent proc near    ; CODE XREF: sub_1405D17AC+20E↑p
                                        ; DATA XREF: .rdata:0000000140042044↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E95D4 SIZE 00000022 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                test    rcx, rcx
                jz      loc_1407E95D4
                mov     rcx, [rcx+518h]

loc_1405D1A6A:                          ; CODE XREF: PsMakeSiloContextPermanent+217B8B↓j
                and     [rsp+28h+arg_0], 0
                lea     r9, [rsp+28h+arg_10]
                and     [rsp+28h+arg_10], 0
                lea     r8, [rsp+28h+arg_0]
                call    sub_1406E0308
                mov     edi, eax
                test    eax, eax
                js      short loc_1405D1ACC
                mov     ebx, [rsp+28h+arg_0]
                xor     edx, edx
                shl     rbx, 4
                add     rbx, [rsp+28h+arg_10]
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rbx+8]
                and     rcx, 0FFFFFFFFFFFFFFFEh
                jz      short loc_1405D1ADA
                or      rcx, 1
                mov     [rbx+8], rcx

loc_1405D1AB3:                          ; CODE XREF: PsMakeSiloContextPermanent+8F↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rax
                test    al, 2
                jnz     loc_1407E95E0

loc_1405D1AC4:                          ; CODE XREF: PsMakeSiloContextPermanent+217B92↓j
                                        ; PsMakeSiloContextPermanent+217BA1↓j
                mov     rcx, rbx
                call    sub_140243660

loc_1405D1ACC:                          ; CODE XREF: PsMakeSiloContextPermanent+38↑j
                mov     rbx, [rsp+28h+arg_8]
                mov     eax, edi
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405D1ADA:                          ; CODE XREF: PsMakeSiloContextPermanent+59↑j
                mov     edi, 0C000000Dh
                jmp     short loc_1405D1AB3
PsMakeSiloContextPermanent endp
