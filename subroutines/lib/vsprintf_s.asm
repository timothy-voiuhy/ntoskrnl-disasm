vsprintf_s      proc near               ; CODE XREF: sprintf_s+13↑p
                                        ; DATA XREF: .pdata:00000001400E0E20↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_1403D7889
                test    rdx, rdx
                jz      short loc_1403D7889
                test    r8, r8
                jz      short loc_1403D7889
                call    sub_1403D8B7C
                test    eax, eax
                jns     short loc_1403D78A1
                mov     byte ptr [rbx], 0
                cmp     eax, 0FFFFFFFEh
                jnz     short loc_1403D789E

loc_1403D7889:                          ; CODE XREF: vsprintf_s+C↑j
                                        ; vsprintf_s+11↑j ...
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D789E:                          ; CODE XREF: vsprintf_s+27↑j
                or      eax, 0FFFFFFFFh

loc_1403D78A1:                          ; CODE XREF: vsprintf_s+1F↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
vsprintf_s      endp

algn_1403D78A8:                         ; DATA XREF: .pdata:00000001400E0E20↑o
                align 10h
; Exported entry 3039. sscanf_s

; =============== S U B R O U T I N E =======================================


