memmove_s       proc near               ; DATA XREF: .pdata:00000001400E0E08↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     rax, r8
                test    r9, r9
                jnz     short loc_1403D77E2

loc_1403D77DE:                          ; CODE XREF: memmove_s+33↓j
                xor     eax, eax
                jmp     short loc_1403D7821
; ---------------------------------------------------------------------------

loc_1403D77E2:                          ; CODE XREF: memmove_s+C↑j
                test    rcx, rcx
                jz      short loc_1403D7805
                test    rax, rax
                jz      short loc_1403D7805
                cmp     rdx, r9
                jnb     short loc_1403D77F8
                mov     ebx, 22h ; '"'
                jmp     short loc_1403D780A
; ---------------------------------------------------------------------------

loc_1403D77F8:                          ; CODE XREF: memmove_s+1F↑j
                mov     r8, r9
                mov     rdx, rax
                call    memmove
                jmp     short loc_1403D77DE
; ---------------------------------------------------------------------------

loc_1403D7805:                          ; CODE XREF: memmove_s+15↑j
                                        ; memmove_s+1A↑j
                mov     ebx, 16h

loc_1403D780A:                          ; CODE XREF: memmove_s+26↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, ebx

loc_1403D7821:                          ; CODE XREF: memmove_s+10↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
memmove_s       endp

algn_1403D7828:                         ; DATA XREF: .pdata:00000001400E0E08↑o
                align 10h
; Exported entry 3035. sprintf_s

; =============== S U B R O U T I N E =======================================


