WheaUnconfigureErrorSource proc near    ; DATA XREF: .pdata:0000000140127CEC↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                cmp     ecx, 10h
                ja      loc_1409B5A5C
                movsxd  rbx, ecx
                lea     rax, unk_140CF4540
                lea     r14, qword_140C15EE0
                shl     rbx, 6
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r14
                add     rbx, rax
                mov     esi, 0C0000001h
                call    sub_140244C10
                mov     rdi, rax
                xor     eax, eax
                lea     r15d, [rax+11h]
                lock cmpxchg cs:qword_140C15EE0, r15
                jz      short loc_1409B599D
                mov     r8, r14
                mov     rdx, rdi
                mov     rcx, r14
                call    sub_1402F6140

loc_1409B599D:                          ; CODE XREF: WheaUnconfigureErrorSource+5D↑j
                xor     ebp, ebp
                test    rdi, rdi
                jz      short loc_1409B59A8
                or      byte ptr [rdi+1Ah], 1

loc_1409B59A8:                          ; CODE XREF: WheaUnconfigureErrorSource+72↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140244C10
                lock bts qword ptr [rbx], 0
                mov     rdi, rax
                jnb     short loc_1409B59CE
                mov     r8, rbx
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_1402F5F10

loc_1409B59CE:                          ; CODE XREF: WheaUnconfigureErrorSource+8E↑j
                test    rdi, rdi
                jz      short loc_1409B59D7
                or      byte ptr [rdi+1Ah], 1

loc_1409B59D7:                          ; CODE XREF: WheaUnconfigureErrorSource+A1↑j
                mov     al, [rbx+8]
                test    al, al
                jz      short loc_1409B5A1D
                mov     [rbx+8], bpl
                lea     rax, PsGetHostSilo
                mov     [rbx+10h], rax
                lea     rax, sub_1409922D0
                mov     [rbx+18h], rax
                lea     rax, sub_1405BD280
                mov     [rbx+20h], rax
                lea     rax, PsGetHostSilo
                mov     [rbx+28h], rax
                lea     rax, __misaligned_access
                mov     [rbx+30h], rax
                mov     [rbx+38h], rbp

loc_1409B5A1D:                          ; CODE XREF: WheaUnconfigureErrorSource+AC↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1409B5A34
                mov     rcx, rbx
                call    ExfTryToWakePushLock

loc_1409B5A34:                          ; CODE XREF: WheaUnconfigureErrorSource+FA↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rax, r15
                lock cmpxchg cs:qword_140C15EE0, rbp
                jz      short loc_1409B5A52
                mov     rcx, r14
                call    ExfReleasePushLockShared

loc_1409B5A52:                          ; CODE XREF: WheaUnconfigureErrorSource+118↑j
                mov     rcx, r14
                call    sub_140243660
                jmp     short loc_1409B5A61
; ---------------------------------------------------------------------------

loc_1409B5A5C:                          ; CODE XREF: WheaUnconfigureErrorSource+1B↑j
                mov     esi, 0C000000Dh

loc_1409B5A61:                          ; CODE XREF: WheaUnconfigureErrorSource+12A↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaUnconfigureErrorSource endp
