PoQueueShutdownWorkItem proc near       ; DATA XREF: .pdata:000000014011FA18↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                lea     rcx, dword_140C243C0
                call    ExAcquireFastMutex
                xor     ebx, ebx
                cmp     cs:byte_140C54223, bl
                jz      short loc_1408E7D7E
                mov     rax, cs:qword_140C24428
                lea     rcx, qword_140C24420
                cmp     [rax], rcx
                jz      short loc_1408E7D6B
                lea     ecx, [rbx+3]
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1408E7D6B:                          ; CODE XREF: PoQueueShutdownWorkItem+34↑j
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     cs:qword_140C24428, rdi
                jmp     short loc_1408E7D83
; ---------------------------------------------------------------------------

loc_1408E7D7E:                          ; CODE XREF: PoQueueShutdownWorkItem+21↑j
                mov     ebx, 0C00002EBh

loc_1408E7D83:                          ; CODE XREF: PoQueueShutdownWorkItem+4C↑j
                lea     rcx, dword_140C243C0
                call    KeReleaseGuardedMutex
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoQueueShutdownWorkItem endp
