FsRtlLogCcFlushError proc near          ; CODE XREF: sub_1404EA998+6E↑p
                                        ; DATA XREF: .pdata:000000014011C214↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, rdx
                mov     r14, rcx
                mov     edx, [rdx+34h]
                xor     r15d, r15d
                shr     edx, 4
                mov     r8d, r9d
                mov     ebx, r9d
                lea     r12d, [r15+1]
                and     edx, r12d
                mov     ecx, r12d
                call    sub_14033AE38
                test    eax, eax
                jz      loc_14088C7D6
                mov     eax, 0C00000C9h
                cmp     ebx, eax
                jg      short loc_14088C660
                jz      loc_14088C6C7
                cmp     ebx, 0C0000008h
                jz      short loc_14088C654
                cmp     ebx, 0C0000022h
                jz      short loc_14088C654
                cmp     ebx, 0C000007Fh
                jz      short loc_14088C654
                cmp     ebx, 0C0000098h
                jz      short loc_14088C648
                cmp     ebx, 0C000009Dh
                jz      short loc_14088C648
                cmp     ebx, 0C00000A2h
                jz      short loc_14088C648
                cmp     ebx, 0C00000BCh
                jz      loc_14088C6C7
                cmp     ebx, 0C00000BEh
                jz      loc_14088C6C7
                cmp     ebx, 0C00000C4h
                jmp     short loc_14088C6B9
; ---------------------------------------------------------------------------

loc_14088C648:                          ; CODE XREF: FsRtlLogCcFlushError+76↑j
                                        ; FsRtlLogCcFlushError+7E↑j ...
                mov     ecx, 0C000A082h
                mov     ebp, 8004008Dh
                jmp     short loc_14088C6D1
; ---------------------------------------------------------------------------

loc_14088C654:                          ; CODE XREF: FsRtlLogCcFlushError+5E↑j
                                        ; FsRtlLogCcFlushError+66↑j ...
                mov     ecx, 0C000A081h
                mov     ebp, 8004008Ch
                jmp     short loc_14088C6D1
; ---------------------------------------------------------------------------

loc_14088C660:                          ; CODE XREF: FsRtlLogCcFlushError+50↑j
                mov     eax, 0C000023Ch
                cmp     ebx, eax
                jg      short loc_14088C693
                jz      short loc_14088C6C7
                cmp     ebx, 0C00000CCh
                jz      short loc_14088C6C7
                cmp     ebx, 0C0000203h
                jz      short loc_14088C6C7
                cmp     ebx, 0C000020Bh
                jle     short loc_14088C6BB
                cmp     ebx, 0C000020Dh
                jle     short loc_14088C6C7
                cmp     ebx, 0C0000236h
                jmp     short loc_14088C6B9
; ---------------------------------------------------------------------------

loc_14088C693:                          ; CODE XREF: FsRtlLogCcFlushError+C7↑j
                cmp     ebx, 0C0000241h
                jz      short loc_14088C6C7
                cmp     ebx, 0C000035Ch
                jz      short loc_14088C6C7
                cmp     ebx, 0C0000465h
                jle     short loc_14088C6BB
                cmp     ebx, 0C0000467h
                jle     short loc_14088C6C7
                cmp     ebx, 0C0000480h

loc_14088C6B9:                          ; CODE XREF: FsRtlLogCcFlushError+A6↑j
                                        ; FsRtlLogCcFlushError+F1↑j
                jz      short loc_14088C6C7

loc_14088C6BB:                          ; CODE XREF: FsRtlLogCcFlushError+E1↑j
                                        ; FsRtlLogCcFlushError+109↑j
                mov     ecx, 0C0000222h
                mov     ebp, 80040032h
                jmp     short loc_14088C6D1
; ---------------------------------------------------------------------------

loc_14088C6C7:                          ; CODE XREF: FsRtlLogCcFlushError+52↑j
                                        ; FsRtlLogCcFlushError+8E↑j ...
                mov     ecx, 0C000A080h
                mov     ebp, 8004008Bh

loc_14088C6D1:                          ; CODE XREF: FsRtlLogCcFlushError+B2↑j
                                        ; FsRtlLogCcFlushError+BE↑j ...
                inc     dword ptr gs:813Ch
                test    [rsp+38h+arg_20], r12b
                jnz     short loc_14088C6EB
                xor     r8d, r8d
                mov     rdx, r14
                call    IoRaiseInformationalHardError

loc_14088C6EB:                          ; CODE XREF: FsRtlLogCcFlushError+13E↑j
                test    [rsp+38h+arg_20], 2
                jnz     loc_14088C7D3
                movzx   eax, word ptr [r14]
                mov     esi, 0F0h
                add     rax, 32h ; '2'
                cmp     rax, rsi
                ja      short loc_14088C70F
                mov     sil, [r14]
                add     sil, 32h ; '2'

loc_14088C70F:                          ; CODE XREF: FsRtlLogCcFlushError+166↑j
                mov     dl, sil
                mov     rcx, rdi
                call    IoAllocateErrorLogEntry
                mov     rdi, rax
                test    rax, rax
                jz      loc_14088C7CD
                mov     [rdi+0Ch], ebp
                mov     eax, 4
                mov     [rdi], al
                mov     eax, 30h ; '0'
                movzx   ebp, sil
                lea     rsi, [rdi+30h]
                mov     [rdi+6], ax
                sub     ebp, 32h ; '2'
                mov     [rdi+14h], ebx
                mov     rcx, rsi
                mov     dword ptr [rdi+2], 10004h
                mov     [rdi+28h], ebx
                movzx   eax, word ptr [r14]
                mov     rdx, [r14+8]
                cmp     ebp, eax
                jnb     short loc_14088C7AC
                mov     eax, ebp
                shr     eax, 2
                lea     eax, ds:0FFFFFFFFFFFFFFFCh[rax*2]
                sub     ebp, eax
                mov     r8d, eax
                sub     ebp, 8
                mov     ebx, eax
                call    memmove
                add     rsi, rbx
                mov     r8d, ebp
                mov     rax, 20002E002E0020h
                mov     ebx, ebp
                mov     [rsi], rax
                add     rsi, 8
                movzx   edx, word ptr [r14]
                mov     rcx, rsi
                sub     rdx, rbx
                add     rdx, [r14+8]
                call    memmove
                add     rsi, rbx
                jmp     short loc_14088C7BF
; ---------------------------------------------------------------------------

loc_14088C7AC:                          ; CODE XREF: FsRtlLogCcFlushError+1BE↑j
                mov     r8, rax
                call    memmove
                movzx   eax, word ptr [r14]
                shr     rax, 1
                lea     rsi, [rsi+rax*2]

loc_14088C7BF:                          ; CODE XREF: FsRtlLogCcFlushError+20A↑j
                mov     rcx, rdi
                mov     [rsi], r15w
                call    IoWriteErrorLogEntry
                jmp     short loc_14088C7D3
; ---------------------------------------------------------------------------

loc_14088C7CD:                          ; CODE XREF: FsRtlLogCcFlushError+180↑j
                mov     r15d, 0C000009Ah

loc_14088C7D3:                          ; CODE XREF: FsRtlLogCcFlushError+150↑j
                                        ; FsRtlLogCcFlushError+22B↑j
                mov     eax, r15d

loc_14088C7D6:                          ; CODE XREF: FsRtlLogCcFlushError+43↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlLogCcFlushError endp
