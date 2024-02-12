_strnset_s      proc near               ; DATA XREF: .pdata:00000001400E0DCC↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                xor     r10d, r10d
                test    r9, r9
                jnz     short loc_1403D721A
                test    rcx, rcx
                jnz     short loc_1403D721F
                test    rdx, rdx
                jnz     short loc_1403D7262

loc_1403D7216:                          ; CODE XREF: _strnset_s+5D↓j
                xor     eax, eax
                jmp     short loc_1403D727B
; ---------------------------------------------------------------------------

loc_1403D721A:                          ; CODE XREF: _strnset_s+A↑j
                test    rcx, rcx
                jz      short loc_1403D7262

loc_1403D721F:                          ; CODE XREF: _strnset_s+F↑j
                test    rdx, rdx
                jz      short loc_1403D7262
                mov     rax, rcx
                cmp     [rcx], r10b
                jz      short loc_1403D7245

loc_1403D722C:                          ; CODE XREF: _strnset_s+43↓j
                test    r9, r9
                jz      short loc_1403D7255
                sub     rdx, 1
                jz      short loc_1403D7245
                mov     [rax], r8b
                dec     r9
                inc     rax
                cmp     [rax], r10b
                jnz     short loc_1403D722C

loc_1403D7245:                          ; CODE XREF: _strnset_s+2A↑j
                                        ; _strnset_s+35↑j
                test    r9, r9
                jnz     short loc_1403D725A
                jmp     short loc_1403D7255
; ---------------------------------------------------------------------------

loc_1403D724C:                          ; CODE XREF: _strnset_s+58↓j
                sub     rdx, 1
                jz      short loc_1403D725A
                inc     rax

loc_1403D7255:                          ; CODE XREF: _strnset_s+2F↑j
                                        ; _strnset_s+4A↑j
                cmp     [rax], r10b
                jnz     short loc_1403D724C

loc_1403D725A:                          ; CODE XREF: _strnset_s+48↑j
                                        ; _strnset_s+50↑j
                test    rdx, rdx
                jnz     short loc_1403D7216
                mov     [rcx], r10b

loc_1403D7262:                          ; CODE XREF: _strnset_s+14↑j
                                        ; _strnset_s+1D↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D727B:                          ; CODE XREF: _strnset_s+18↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_strnset_s      endp

algn_1403D7281:                         ; DATA XREF: .pdata:00000001400E0DCC↑o
                align 10h
; Exported entry 2981. _strset_s

; =============== S U B R O U T I N E =======================================


