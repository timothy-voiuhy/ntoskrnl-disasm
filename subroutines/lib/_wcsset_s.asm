_wcsset_s       proc near               ; DATA XREF: .pdata:00000001400E079C↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                xor     r9d, r9d
                test    rcx, rcx
                jz      short loc_1403D2007
                test    rdx, rdx
                jz      short loc_1403D2007
                mov     rax, rcx
                cmp     [rcx], r9w
                jz      short loc_1403D1FFE

loc_1403D1FEA:                          ; CODE XREF: _wcsset_s+2C↓j
                sub     rdx, 1
                jz      short loc_1403D1FFE
                mov     [rax], r8w
                add     rax, 2
                cmp     [rax], r9w
                jnz     short loc_1403D1FEA

loc_1403D1FFE:                          ; CODE XREF: _wcsset_s+18↑j
                                        ; _wcsset_s+1E↑j
                test    rdx, rdx
                jnz     short loc_1403D2023
                mov     [rcx], r9w

loc_1403D2007:                          ; CODE XREF: _wcsset_s+A↑j
                                        ; _wcsset_s+F↑j
                xor     r8d, r8d
                mov     [rsp+38h+var_18], r9
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D201D:                          ; CODE XREF: _wcsset_s+55↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D2023:                          ; CODE XREF: _wcsset_s+31↑j
                xor     eax, eax
                jmp     short loc_1403D201D
_wcsset_s       endp

; ---------------------------------------------------------------------------
algn_1403D2027:                         ; DATA XREF: .pdata:00000001400E079C↑o
                align 10h
; Exported entry 3002. _wcsupr

; =============== S U B R O U T I N E =======================================


