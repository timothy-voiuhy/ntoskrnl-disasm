ExAcquireSpinLockExclusive proc near    ; CODE XREF: sub_1402012D8+40↑p
                                        ; sub_140201880+35↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041D754 SIZE 000000A5 BYTES

                mov     [rsp+arg_10], rbp
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041D754

loc_1402A0798:                          ; CODE XREF: ExAcquireSpinLockExclusive+17CFE6↓j
                                        ; ExAcquireSpinLockExclusive+17CFF0↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14041D799

loc_1402A07A5:                          ; DATA XREF: .rdata:0000000140060B0C↑o
                                        ; .rdata:0000000140060B20↑o ...
                mov     [rsp+28h+arg_0], rbx
                xor     ebx, ebx

loc_1402A07AC:                          ; DATA XREF: .rdata:0000000140060B20↑o
                                        ; .rdata:0000000140060B30↑o ...
                mov     [rsp+28h+arg_8], rsi
                mov     rsi, gs:20h
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14041D7AB

loc_1402A07CA:                          ; CODE XREF: ExAcquireSpinLockExclusive+17D03F↓j
                                        ; ExAcquireSpinLockExclusive+17D04E↓j ...
                lock bts dword ptr [rdi], 1Fh
                jb      short loc_1402A07FB

loc_1402A07D1:                          ; CODE XREF: ExAcquireSpinLockExclusive+A9↓j
                mov     eax, [rdi]
                mov     ecx, eax
                mov     rsi, [rsp+28h+arg_8]
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     short loc_1402A0820

loc_1402A07E6:                          ; CODE XREF: ExAcquireSpinLockExclusive+D2↓j
                                        ; DATA XREF: .pdata:00000001400CF900↑o ...
                mov     rbx, [rsp+28h+arg_0]

loc_1402A07EB:                          ; CODE XREF: ExAcquireSpinLockExclusive+17D036↓j
                                        ; DATA XREF: .pdata:00000001400CF90C↑o ...
                movzx   eax, bpl
                mov     rbp, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402A07FB:                          ; CODE XREF: ExAcquireSpinLockExclusive+5F↑j
                                        ; DATA XREF: .pdata:00000001400CF918↑o ...
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14041D7D2

loc_1402A080B:                          ; CODE XREF: ExAcquireSpinLockExclusive+17D066↓j
                                        ; ExAcquireSpinLockExclusive+17D075↓j ...
                movzx   edx, bpl
                mov     rcx, rdi
                call    sub_14028EAE0
                mov     ebx, eax
                jmp     short loc_1402A07D1
; ---------------------------------------------------------------------------
                align 20h

loc_1402A0820:                          ; CODE XREF: ExAcquireSpinLockExclusive+74↑j
                                        ; ExAcquireSpinLockExclusive+D0↓j
                                        ; DATA XREF: ...
                bt      eax, 1Eh
                jnb     short loc_1402A0844

loc_1402A0826:                          ; CODE XREF: ExAcquireSpinLockExclusive+DE↓j
                inc     ebx
                test    cs:dword_140CFB240, ebx
                jz      short loc_1402A0852

loc_1402A0830:                          ; CODE XREF: ExAcquireSpinLockExclusive+EA↓j
                                        ; ExAcquireSpinLockExclusive+F3↓j
                pause

loc_1402A0832:                          ; CODE XREF: ExAcquireSpinLockExclusive+FC↓j
                mov     eax, [rdi]

loc_1402A0834:                          ; CODE XREF: ExAcquireSpinLockExclusive+E0↓j
                mov     ecx, eax
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     short loc_1402A0820
                jmp     short loc_1402A07E6
; ---------------------------------------------------------------------------

loc_1402A0844:                          ; CODE XREF: ExAcquireSpinLockExclusive+B4↑j
                mov     ecx, eax
                bts     ecx, 1Eh
                lock cmpxchg [rdi], ecx
                jz      short loc_1402A0826
                jmp     short loc_1402A0834
; ---------------------------------------------------------------------------

loc_1402A0852:                          ; CODE XREF: ExAcquireSpinLockExclusive+BE↑j
                mov     eax, cs:dword_140CFC41C
                test    al, 40h
                jz      short loc_1402A0830
                call    sub_140390EA0
                test    al, al
                jz      short loc_1402A0830
                mov     ecx, ebx
                call    sub_1403900C0
                jmp     short loc_1402A0832
ExAcquireSpinLockExclusive endp
