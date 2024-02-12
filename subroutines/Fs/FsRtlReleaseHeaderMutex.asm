FsRtlReleaseHeaderMutex proc near       ; CODE XREF: sub_14032274C+105↓p
                                        ; FsRtlReleaseEofLock+17154E↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404318AA SIZE 00000067 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdx
                push    rdi
                sub     rsp, 20h
                mov     rax, [rsp+28h+arg_8]
                test    rax, rax
                jz      short loc_140243541
                mov     rax, [rsp+28h+arg_8]
                lock inc dword ptr [rax]

loc_140243541:                          ; CODE XREF: FsRtlReleaseHeaderMutex+17↑j
                mov     rbx, [rcx+18h]
                xor     eax, eax
                mov     ecx, 1
                mov     rbx, [rbx+30h]
                movzx   edi, byte ptr [rbx+30h]
                mov     qword ptr [rbx+8], 0
                lock cmpxchg [rbx], ecx
                jnz     short loc_140243588

loc_140243562:                          ; CODE XREF: FsRtlReleaseHeaderMutex+72↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404318AA

loc_140243570:                          ; CODE XREF: FsRtlReleaseHeaderMutex+1EE38C↓j
                                        ; FsRtlReleaseHeaderMutex+1EE398↓j ...
                mov     cr8, rdi
                mov     rcx, rbx
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140243588:                          ; CODE XREF: FsRtlReleaseHeaderMutex+40↑j
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     short loc_140243562
FsRtlReleaseHeaderMutex endp
