MmLockPagableImageSection proc near     ; CODE XREF: sub_1409A2560+2B↓p
                                        ; sub_1409C8D50+34↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140825B38 SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx ; MmLockPagableDataSection
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                call    sub_140260090
                test    eax, eax
                jnz     loc_1406F4E06
                mov     rbp, gs:188h
                xor     ebx, ebx
                dec     word ptr [rbp+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033EE44
                mov     rsi, rdi
                mov     rcx, [rax+30h]
                sub     rsi, rcx
                call    RtlImageNtHeader
                movzx   ecx, word ptr [rax+14h]
                lea     rdx, [rax+18h]
                movzx   r10d, word ptr [rax+6]
                add     rdx, rcx
                xor     ecx, ecx
                test    r10d, r10d
                jz      short loc_1406F4DC3

loc_1406F4D94:                          ; CODE XREF: MmLockPagableImageSection+9C↓j
                mov     r8d, [rdx+0Ch]
                mov     eax, [rdx+10h]
                mov     r9d, [rdx+8]
                cmp     rsi, r8
                jb      short loc_1406F4DB3
                cmp     eax, r9d
                cmovb   eax, r9d
                add     eax, r8d
                cmp     rsi, rax
                jb      short loc_1406F4DC0

loc_1406F4DB3:                          ; CODE XREF: MmLockPagableImageSection+82↑j
                add     rdx, 28h ; '('
                inc     ecx
                cmp     ecx, r10d
                jb      short loc_1406F4D94
                jmp     short loc_1406F4DC3
; ---------------------------------------------------------------------------

loc_1406F4DC0:                          ; CODE XREF: MmLockPagableImageSection+91↑j
                mov     rbx, rdx

loc_1406F4DC3:                          ; CODE XREF: MmLockPagableImageSection+72↑j
                                        ; MmLockPagableImageSection+9E↑j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rbp
                call    sub_14021E1F0
                test    rbx, rbx
                jz      loc_140825B38
                mov     edx, 1
                mov     rcx, rbx
                call    sub_140261960
                mov     rax, rbx

loc_1406F4DF0:                          ; CODE XREF: MmLockPagableImageSection+EB↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F4E06:                          ; CODE XREF: MmLockPagableImageSection+1E↑j
                mov     eax, 1
                jmp     short loc_1406F4DF0
MmLockPagableImageSection endp
