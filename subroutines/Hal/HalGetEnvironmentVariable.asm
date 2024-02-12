HalGetEnvironmentVariable proc near     ; CODE XREF: sub_1409560B0+1D8↓p
                                        ; DATA XREF: .pdata:00000001400EE8E4↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140C49E48, 0
                mov     rbx, r8
                movzx   edi, dx
                jz      short loc_1404BBD60
                mov     eax, 7
                jmp     short loc_1404BBDC3
; ---------------------------------------------------------------------------

loc_1404BBD60:                          ; CODE XREF: HalGetEnvironmentVariable+17↑j
                lea     rdx, aLastknowngood ; "LastKnownGood"
                call    _stricmp
                test    eax, eax
                jz      short loc_1404BBD77
                mov     eax, 0Eh
                jmp     short loc_1404BBDC3
; ---------------------------------------------------------------------------

loc_1404BBD77:                          ; CODE XREF: HalGetEnvironmentVariable+2E↑j
                call    sub_140346FBC
                mov     edx, 70h ; 'p'
                mov     al, 0Bh
                out     dx, al          ; CMOS Memory/RTC Index Register:
                                        ; RTC Register B
                mov     edx, 71h ; 'q'
                in      al, dx          ; CMOS Memory/RTC Data Register
                mov     dl, cs:byte_140C4A020
                or      ecx, 0FFFFFFFFh
                xchg    ecx, cs:dword_140C11080
                test    dl, dl
                jz      short loc_1404BBD9E
                sti

loc_1404BBD9E:                          ; CODE XREF: HalGetEnvironmentVariable+5B↑j
                test    al, 1
                lea     r8, aTrue       ; "TRUE"
                lea     rax, aFalse     ; "FALSE"
                mov     rdx, rdi
                cmovz   r8, rax
                lea     r9, [rdi-1]
                mov     rcx, rbx
                call    strncpy_s
                xor     eax, eax

loc_1404BBDC3:                          ; CODE XREF: HalGetEnvironmentVariable+1E↑j
                                        ; HalGetEnvironmentVariable+35↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalGetEnvironmentVariable endp
