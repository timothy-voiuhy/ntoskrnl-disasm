_strset_s       proc near               ; DATA XREF: .pdata:00000001400E0DD8↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                xor     r9d, r9d
                test    rcx, rcx
                jz      short loc_1403D72C2
                test    rdx, rdx
                jz      short loc_1403D72C2
                mov     rax, rcx
                cmp     [rcx], r9b
                jz      short loc_1403D72BA

loc_1403D72A9:                          ; CODE XREF: _strset_s+28↓j
                sub     rdx, 1
                jz      short loc_1403D72BA
                mov     [rax], r8b
                inc     rax
                cmp     [rax], r9b
                jnz     short loc_1403D72A9

loc_1403D72BA:                          ; CODE XREF: _strset_s+17↑j
                                        ; _strset_s+1D↑j
                test    rdx, rdx
                jnz     short loc_1403D72DE
                mov     [rcx], r9b

loc_1403D72C2:                          ; CODE XREF: _strset_s+A↑j
                                        ; _strset_s+F↑j
                xor     r8d, r8d
                mov     [rsp+38h+var_18], r9
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D72D8:                          ; CODE XREF: _strset_s+50↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403D72DE:                          ; CODE XREF: _strset_s+2D↑j
                xor     eax, eax
                jmp     short loc_1403D72D8
_strset_s       endp

; ---------------------------------------------------------------------------
algn_1403D72E2:                         ; DATA XREF: .pdata:00000001400E0DD8↑o
                align 10h
; Exported entry 3003. _wmakepath_s

; =============== S U B R O U T I N E =======================================


