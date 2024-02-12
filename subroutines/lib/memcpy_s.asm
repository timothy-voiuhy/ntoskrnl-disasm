memcpy_s        proc near               ; DATA XREF: .rdata:0000000140008DA8↑o
                                        ; .pdata:00000001400E0DFC↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, r9
                mov     rsi, r8
                mov     rdi, rdx
                test    r9, r9
                jnz     short loc_1403D7751

loc_1403D774D:                          ; CODE XREF: memcpy_s+3B↓j
                xor     eax, eax
                jmp     short loc_1403D77AB
; ---------------------------------------------------------------------------

loc_1403D7751:                          ; CODE XREF: memcpy_s+1B↑j
                test    rcx, rcx
                jz      short loc_1403D778F
                test    rsi, rsi
                jz      short loc_1403D776D
                cmp     rdi, rbx
                jb      short loc_1403D776D
                mov     r8, rbx
                mov     rdx, rsi
                call    memmove
                jmp     short loc_1403D774D
; ---------------------------------------------------------------------------

loc_1403D776D:                          ; CODE XREF: memcpy_s+29↑j
                                        ; memcpy_s+2E↑j
                mov     r8, rdi
                xor     edx, edx
                call    memset
                test    rsi, rsi
                jz      short loc_1403D778F
                cmp     rdi, rbx
                jnb     short loc_1403D7788
                mov     ebx, 22h ; '"'
                jmp     short loc_1403D7794
; ---------------------------------------------------------------------------

loc_1403D7788:                          ; CODE XREF: memcpy_s+4F↑j
                mov     eax, 16h
                jmp     short loc_1403D77AB
; ---------------------------------------------------------------------------

loc_1403D778F:                          ; CODE XREF: memcpy_s+24↑j
                                        ; memcpy_s+4A↑j
                mov     ebx, 16h

loc_1403D7794:                          ; CODE XREF: memcpy_s+56↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx

loc_1403D77AB:                          ; CODE XREF: memcpy_s+1F↑j
                                        ; memcpy_s+5D↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
memcpy_s        endp

byte_1403D77BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0DFC↑o
; Exported entry 3028. memmove_s

; =============== S U B R O U T I N E =======================================


