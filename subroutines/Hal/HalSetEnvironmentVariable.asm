HalSetEnvironmentVariable proc near     ; CODE XREF: sub_140956A00+265↓p
                                        ; DATA XREF: .pdata:00000001400EE8FC↑o
                push    rbx
                sub     rsp, 20h
                cmp     cs:byte_140C49E48, 0
                mov     rbx, rdx
                jz      short loc_1404BBEFC
                mov     eax, 7
                jmp     loc_1404BBFA9
; ---------------------------------------------------------------------------

loc_1404BBEFC:                          ; CODE XREF: HalSetEnvironmentVariable+10↑j
                lea     rdx, aLastknowngood ; "LastKnownGood"
                call    _stricmp
                test    eax, eax
                jnz     loc_1404BBFA4
                lea     rdx, aTrue      ; "TRUE"
                mov     rcx, rbx
                call    _stricmp
                test    eax, eax
                jnz     short loc_1404BBF4F
                call    sub_140346FBC
                mov     r8d, 70h ; 'p'
                mov     al, 0Bh
                mov     edx, r8d
                out     dx, al
                lea     r9d, [r8+1]
                mov     edx, r9d
                in      al, dx
                mov     cl, al
                mov     edx, r8d
                mov     al, 0Bh
                out     dx, al
                or      cl, 1
                mov     edx, r9d
                mov     al, cl
                out     dx, al
                jmp     short loc_1404BBF8C
; ---------------------------------------------------------------------------

loc_1404BBF4F:                          ; CODE XREF: HalSetEnvironmentVariable+41↑j
                lea     rdx, aFalse     ; "FALSE"
                mov     rcx, rbx
                call    _stricmp
                test    eax, eax
                jnz     short loc_1404BBFA4
                call    sub_140346FBC
                mov     r8d, 70h ; 'p'
                mov     al, 0Bh
                mov     edx, r8d
                out     dx, al
                lea     r9d, [r8+1]
                mov     edx, r9d
                in      al, dx
                mov     cl, al
                mov     edx, r8d
                mov     al, 0Bh
                out     dx, al
                and     cl, 0FEh
                mov     edx, r9d
                mov     al, cl
                out     dx, al

loc_1404BBF8C:                          ; CODE XREF: HalSetEnvironmentVariable+6D↑j
                mov     al, cs:byte_140C4A020
                or      ecx, 0FFFFFFFFh
                xchg    ecx, cs:dword_140C11080
                test    al, al
                jz      short loc_1404BBFA0
                sti

loc_1404BBFA0:                          ; CODE XREF: HalSetEnvironmentVariable+BD↑j
                xor     eax, eax
                jmp     short loc_1404BBFA9
; ---------------------------------------------------------------------------

loc_1404BBFA4:                          ; CODE XREF: HalSetEnvironmentVariable+2A↑j
                                        ; HalSetEnvironmentVariable+80↑j
                mov     eax, 10h

loc_1404BBFA9:                          ; CODE XREF: HalSetEnvironmentVariable+17↑j
                                        ; HalSetEnvironmentVariable+C2↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalSetEnvironmentVariable endp
