RtlDeleteAtomFromAtomTable proc near    ; CODE XREF: NtDeleteAtom+30↑p
                                        ; DATA XREF: .rdata:0000000140082CA0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140827E4E SIZE 0000000A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                movzx   edi, dx
                mov     rsi, rcx
                call    sub_140663974
                xor     r14d, r14d
                test    al, al
                jz      loc_140827E4E
                mov     eax, 0C000h
                mov     ebx, 0C0000008h
                cmp     di, ax
                jb      loc_1407019FA
                mov     edx, edi
                mov     rcx, rsi
                and     edx, 3FFFh
                call    sub_1406639C0
                mov     rbp, rax
                test    rax, rax
                jz      short loc_1407019BA
                cmp     [rax+0Ah], di
                jnz     short loc_1407019BA
                mov     r8b, 1
                mov     rdx, rax
                mov     rcx, rsi
                call    sub_1402A9648
                test    rax, rax
                jz      short loc_1407019BA
                test    byte ptr [rax+16h], 1
                mov     ebx, r14d
                jnz     short loc_140701A0D
                mov     r8, rsi
                mov     rdx, rax
                mov     rcx, rbp
                call    sub_14034D5D8

loc_1407019BA:                          ; CODE XREF: RtlDeleteAtomFromAtomTable+58↑j
                                        ; RtlDeleteAtomFromAtomTable+5E↑j ...
                lea     rdi, [rsi+8]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi], rdx
                and     dl, 6
                cmp     dl, 2
                jz      short loc_140701A03

loc_1407019CF:                          ; CODE XREF: RtlDeleteAtomFromAtomTable+DB↓j
                mov     rcx, rdi
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     eax, ebx

loc_1407019DE:                          ; CODE XREF: RtlDeleteAtomFromAtomTable+126523↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407019FA:                          ; CODE XREF: RtlDeleteAtomFromAtomTable+3C↑j
                test    di, di
                cmovnz  ebx, r14d
                jmp     short loc_1407019BA
; ---------------------------------------------------------------------------

loc_140701A03:                          ; CODE XREF: RtlDeleteAtomFromAtomTable+9D↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_1407019CF
; ---------------------------------------------------------------------------

loc_140701A0D:                          ; CODE XREF: RtlDeleteAtomFromAtomTable+7A↑j
                mov     ebx, 40000019h
                jmp     short loc_1407019BA
RtlDeleteAtomFromAtomTable endp
