MmAllocateMdlForIoSpace proc near       ; DATA XREF: .pdata:00000001400F48CC↑o

var_18          = qword ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rdx
                xor     r10d, r10d
                xor     edx, edx
                mov     rsi, r8
                mov     rbx, rcx
                mov     r9, rcx
                test    rdi, rdi
                jz      short loc_140532136
                mov     r8d, 0FFFh

loc_1405320CB:                          ; CODE XREF: MmAllocateMdlForIoSpace+94↓j
                test    [r9+8], r8d
                jnz     loc_140532158
                test    [r9], r8d
                jnz     short loc_140532158
                mov     rax, [r9]
                mov     rcx, 0FFFFFFFFFh
                shr     rax, 0Ch
                cmp     rax, rcx
                ja      short loc_14053210E
                lea     rax, [rax+rax*2]
                add     rax, rax
                mov     rcx, 0FFFFFA8000000028h
                mov     rcx, [rcx+rax*8]
                shr     rcx, 32h
                and     ecx, 1
                jnz     short loc_140532158

loc_14053210E:                          ; CODE XREF: MmAllocateMdlForIoSpace+4E↑j
                mov     rcx, [r9+8]
                add     rcx, rdx
                cmp     rcx, rdx
                jb      short loc_140532158
                mov     eax, 0FFFFFFFFh
                mov     rdx, rcx
                cmp     rcx, rax
                ja      short loc_140532158
                inc     r10d
                add     r9, 10h
                mov     eax, r10d
                cmp     rax, rdi
                jb      short loc_1405320CB

loc_140532136:                          ; CODE XREF: MmAllocateMdlForIoSpace+23↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     ecx, ecx
                call    IoAllocateMdl
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_14053215F
                mov     eax, 0C000009Ah
                jmp     short loc_1405321B9
; ---------------------------------------------------------------------------

loc_140532158:                          ; CODE XREF: MmAllocateMdlForIoSpace+2F↑j
                                        ; MmAllocateMdlForIoSpace+38↑j ...
                mov     eax, 0C00000EFh
                jmp     short loc_1405321B9
; ---------------------------------------------------------------------------

loc_14053215F:                          ; CODE XREF: MmAllocateMdlForIoSpace+AF↑j
                xor     r8d, r8d
                lea     r11, [rax+30h]
                test    rdi, rdi
                jz      short loc_1405321A6

loc_14053216B:                          ; CODE XREF: MmAllocateMdlForIoSpace+104↓j
                mov     r9, [rbx+8]
                xor     r10d, r10d
                mov     rdx, [rbx]
                shr     r9, 0Ch
                shr     rdx, 0Ch
                test    r9, r9
                jz      short loc_140532197

loc_140532182:                          ; CODE XREF: MmAllocateMdlForIoSpace+F5↓j
                inc     r10d
                mov     [r11], rdx
                mov     eax, r10d
                add     r11, 8
                inc     rdx
                cmp     rax, r9
                jb      short loc_140532182

loc_140532197:                          ; CODE XREF: MmAllocateMdlForIoSpace+E0↑j
                inc     r8d
                add     rbx, 10h
                mov     eax, r8d
                cmp     rax, rdi
                jb      short loc_14053216B

loc_1405321A6:                          ; CODE XREF: MmAllocateMdlForIoSpace+C9↑j
                and     qword ptr [rcx+10h], 0
                mov     eax, 802h
                or      [rcx+0Ah], ax
                xor     eax, eax
                mov     [rsi], rcx

loc_1405321B9:                          ; CODE XREF: MmAllocateMdlForIoSpace+B6↑j
                                        ; MmAllocateMdlForIoSpace+BD↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocateMdlForIoSpace endp
