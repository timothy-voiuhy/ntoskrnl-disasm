PoDisableSleepStates proc near          ; CODE XREF: sub_1403CEA1C+E6738↑p
                                        ; sub_14079A698+B9F49↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, edx
                mov     rsi, r8
                mov     edx, 18h
                mov     r14d, ecx
                mov     r8d, 64536F50h
                lea     ecx, [rdx-17h]
                call    ExAllocatePoolWithTag
                xor     edi, edi
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1408E5305
                mov     edi, 0C000009Ah
                jmp     short loc_1408E5359
; ---------------------------------------------------------------------------

loc_1408E5305:                          ; CODE XREF: PoDisableSleepStates+3C↑j
                mov     [rax], rdi
                lea     rcx, dword_140C24A60
                mov     [rax+8], rdi
                mov     [rax+10h], r14d
                mov     [rax+14h], ebp
                call    ExAcquireFastMutex
                mov     rax, cs:qword_140C24A58
                lea     rcx, qword_140C24A50
                cmp     [rax], rcx
                jz      short loc_1408E5339
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1408E5339:                          ; CODE XREF: PoDisableSleepStates+70↑j
                mov     [rbx], rcx
                lea     rcx, dword_140C24A60
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140C24A58, rbx
                call    KeReleaseGuardedMutex
                mov     [rsi], rbx

loc_1408E5359:                          ; CODE XREF: PoDisableSleepStates+43↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoDisableSleepStates endp
