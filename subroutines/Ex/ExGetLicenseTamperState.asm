ExGetLicenseTamperState proc near       ; DATA XREF: .pdata:00000001401243C8↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rsi, rcx
                mov     [rax+8], ebp
                call    sub_1402B95B0
                mov     rbx, [rax+388h]
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rdi, [rbx+0B6F8h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockSharedEx
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, rbx
                call    sub_1405B2F98
                mov     eax, [rsp+28h+arg_0]
                lea     ecx, [rbp+1]
                test    eax, eax
                movzx   ebx, bpl
                cmovnz  ebx, ecx
                test    rsi, rsi
                jz      short loc_14094E93D
                mov     [rsi], eax

loc_14094E93D:                          ; CODE XREF: ExGetLicenseTamperState+69↑j
                mov     eax, 11h
                lock cmpxchg [rdi], rbp
                jz      short loc_14094E951
                mov     rcx, rdi
                call    ExfReleasePushLockShared

loc_14094E951:                          ; CODE XREF: ExGetLicenseTamperState+77↑j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbp, [rsp+28h+arg_10]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExGetLicenseTamperState endp
