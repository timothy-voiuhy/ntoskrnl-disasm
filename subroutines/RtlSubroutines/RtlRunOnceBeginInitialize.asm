RtlRunOnceBeginInitialize proc near     ; CODE XREF: RtlRunOnceExecuteOnce+3A↑p
                                        ; DATA XREF: .rdata:0000000140078284↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408220FE SIZE 0000004D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                lea     eax, [rdx-1]
                mov     rsi, r8
                test    edx, eax
                mov     ebx, edx
                mov     r14, rcx
                setz    r9b
                test    edx, 0FFFFFFFCh
                setz    al
                test    al, r9b
                jz      loc_140822141
                mov     rax, [rcx]
                xor     edi, edi
                mov     dl, al
                and     dl, 3
                cmp     dl, 2
                jnz     short loc_1406DE92E

loc_1406DE907:                          ; CODE XREF: RtlRunOnceBeginInitialize+143867↓j
                test    rsi, rsi
                jnz     short loc_1406DE925

loc_1406DE90C:                          ; CODE XREF: RtlRunOnceBeginInitialize+6C↓j
                                        ; RtlRunOnceBeginInitialize+9B↓j ...
                mov     eax, edi

loc_1406DE90E:                          ; CODE XREF: RtlRunOnceBeginInitialize+A2↓j
                                        ; RtlRunOnceBeginInitialize+143886↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DE925:                          ; CODE XREF: RtlRunOnceBeginInitialize+4A↑j
                and     rax, 0FFFFFFFFFFFFFFFCh
                mov     [rsi], rax
                jmp     short loc_1406DE90C
; ---------------------------------------------------------------------------

loc_1406DE92E:                          ; CODE XREF: RtlRunOnceBeginInitialize+45↑j
                test    bl, 1
                jnz     short loc_1406DE95D
                and     ebx, 2

loc_1406DE936:                          ; CODE XREF: RtlRunOnceBeginInitialize+94↓j
                                        ; RtlRunOnceBeginInitialize+143854↓j
                mov     rcx, rax
                and     ecx, 3
                jnz     loc_1408220FE
                mov     ecx, ebx
                neg     ecx
                sbb     rcx, rcx
                and     ecx, 2
                inc     rcx
                lock cmpxchg [r14], rcx
                jnz     short loc_1406DE936
                mov     edi, 103h
                jmp     short loc_1406DE90C
; ---------------------------------------------------------------------------

loc_1406DE95D:                          ; CODE XREF: RtlRunOnceBeginInitialize+71↑j
                mov     eax, 0C0000001h
                jmp     short loc_1406DE90E
RtlRunOnceBeginInitialize endp
