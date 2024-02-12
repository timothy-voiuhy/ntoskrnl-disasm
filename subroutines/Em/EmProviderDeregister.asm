EmProviderDeregister proc near          ; DATA XREF: .pdata:000000014011C16C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                test    rcx, rcx
                jz      locret_14088B9B6
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, qword_140C47818
                call    ExAcquirePushLockExclusiveEx
                cmp     qword ptr [rdi+18h], 0
                jz      short loc_14088B890
                xor     edx, edx
                cmp     [rdi+20h], edx
                jbe     short loc_14088B882

loc_14088B851:                          ; CODE XREF: EmProviderDeregister+70↓j
                mov     r8, [rdi+18h]
                add     r8, 10h
                mov     ecx, edx
                shl     rcx, 5
                add     r8, rcx
                mov     rcx, [r8]
                cmp     [rcx+8], r8
                jnz     short loc_14088B8BC
                mov     rax, [r8+8]
                cmp     [rax], r8
                jnz     short loc_14088B8BC
                mov     [rax], rcx
                inc     edx
                mov     [rcx+8], rax
                cmp     edx, [rdi+20h]
                jb      short loc_14088B851

loc_14088B882:                          ; CODE XREF: EmProviderDeregister+3F↑j
                mov     rcx, [rdi+18h]
                mov     edx, 72704D45h
                call    ExFreePoolWithTag

loc_14088B890:                          ; CODE XREF: EmProviderDeregister+38↑j
                xor     ebp, ebp
                or      rbx, 0FFFFFFFFFFFFFFFFh
                cmp     [rdi+10h], ebp
                jbe     short loc_14088B8DD

loc_14088B89B:                          ; CODE XREF: EmProviderDeregister+CB↓j
                mov     rax, [rdi+8]
                mov     rcx, [rax+rbp*8]
                mov     eax, ebx
                lock xadd [rcx+10h], eax
                add     eax, ebx
                jnz     short loc_14088B8D6
                mov     rax, [rdi+8]
                mov     rcx, [rax+rbp*8]
                mov     rsi, [rcx+48h]
                jmp     short loc_14088B8D1
; ---------------------------------------------------------------------------

loc_14088B8BC:                          ; CODE XREF: EmProviderDeregister+59↑j
                                        ; EmProviderDeregister+62↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14088B8C3:                          ; CODE XREF: EmProviderDeregister+C4↓j
                mov     rcx, [rsi-8]
                xor     edx, edx
                call    sub_1403B4148
                mov     rsi, [rsi]

loc_14088B8D1:                          ; CODE XREF: EmProviderDeregister+AA↑j
                test    rsi, rsi
                jnz     short loc_14088B8C3

loc_14088B8D6:                          ; CODE XREF: EmProviderDeregister+9C↑j
                inc     ebp
                cmp     ebp, [rdi+10h]
                jb      short loc_14088B89B

loc_14088B8DD:                          ; CODE XREF: EmProviderDeregister+89↑j
                lea     r14, [rdi+38h]
                mov     rsi, [r14]
                jmp     short loc_14088B8F2
; ---------------------------------------------------------------------------

loc_14088B8E6:                          ; CODE XREF: EmProviderDeregister+E5↓j
                lea     rcx, [rsi-28h]
                mov     rsi, [rsi]
                call    sub_1404EF060

loc_14088B8F2:                          ; CODE XREF: EmProviderDeregister+D4↑j
                cmp     rsi, r14
                jnz     short loc_14088B8E6
                xor     esi, esi
                cmp     [rdi+30h], esi
                jbe     short loc_14088B946

loc_14088B8FE:                          ; CODE XREF: EmProviderDeregister+134↓j
                mov     rax, [rdi+28h]
                mov     rcx, [rax+rsi*8]
                mov     eax, ebx
                lock xadd [rcx+18h], eax
                add     eax, ebx
                jnz     short loc_14088B93F
                mov     rax, [rdi+28h]
                mov     rcx, [rax+rsi*8]
                and     qword ptr [rcx+10h], 0
                mov     rax, [rdi+28h]
                mov     rcx, [rax+rsi*8]
                mov     r14, [rcx+30h]
                jmp     short loc_14088B93A
; ---------------------------------------------------------------------------

loc_14088B92C:                          ; CODE XREF: EmProviderDeregister+12D↓j
                mov     rcx, [r14-8]
                xor     edx, edx
                call    sub_1403B4148
                mov     r14, [r14]

loc_14088B93A:                          ; CODE XREF: EmProviderDeregister+11A↑j
                test    r14, r14
                jnz     short loc_14088B92C

loc_14088B93F:                          ; CODE XREF: EmProviderDeregister+FF↑j
                inc     esi
                cmp     esi, [rdi+30h]
                jb      short loc_14088B8FE

loc_14088B946:                          ; CODE XREF: EmProviderDeregister+EC↑j
                mov     rcx, [rdi]
                test    rcx, rcx
                jz      short loc_14088B953
                call    PsDereferenceSiloContext

loc_14088B953:                          ; CODE XREF: EmProviderDeregister+13C↑j
                mov     rcx, [rdi+28h]
                test    rcx, rcx
                jz      short loc_14088B966
                mov     edx, 72704D45h
                call    ExFreePoolWithTag

loc_14088B966:                          ; CODE XREF: EmProviderDeregister+14A↑j
                mov     edx, 72704D45h
                mov     rcx, rdi
                call    ExFreePoolWithTag
                lock xadd cs:qword_140C47818, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14088B990
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock

loc_14088B990:                          ; CODE XREF: EmProviderDeregister+172↑j
                lea     rcx, qword_140C47818
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14

locret_14088B9B6:                       ; CODE XREF: EmProviderDeregister+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EmProviderDeregister endp
