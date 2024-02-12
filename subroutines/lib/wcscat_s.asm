wcscat_s        proc near               ; CODE XREF: sub_140781244+D5↓p
                                        ; sub_1407B3980+2C3↓p ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                xor     r10d, r10d
                test    rcx, rcx
                jz      short loc_1403D7E8A
                test    rdx, rdx
                jz      short loc_1403D7E8A
                test    r8, r8
                jz      short loc_1403D7E69
                mov     r9, rcx

loc_1403D7E2B:                          ; CODE XREF: wcscat_s+29↓j
                cmp     [r9], r10w
                jz      short loc_1403D7E3B
                add     r9, 2
                sub     rdx, 1
                jnz     short loc_1403D7E2B

loc_1403D7E3B:                          ; CODE XREF: wcscat_s+1F↑j
                test    rdx, rdx
                jz      short loc_1403D7E69
                sub     r9, r8

loc_1403D7E43:                          ; CODE XREF: wcscat_s+49↓j
                movzx   eax, word ptr [r8]
                mov     [r9+r8], ax
                lea     r8, [r8+2]
                test    ax, ax
                jz      short loc_1403D7E5B
                sub     rdx, 1
                jnz     short loc_1403D7E43

loc_1403D7E5B:                          ; CODE XREF: wcscat_s+43↑j
                test    rdx, rdx
                jnz     short loc_1403D7E65
                lea     ebx, [rdx+22h]
                jmp     short loc_1403D7E6E
; ---------------------------------------------------------------------------

loc_1403D7E65:                          ; CODE XREF: wcscat_s+4E↑j
                xor     eax, eax
                jmp     short loc_1403D7EA3
; ---------------------------------------------------------------------------

loc_1403D7E69:                          ; CODE XREF: wcscat_s+16↑j
                                        ; wcscat_s+2E↑j
                mov     ebx, 16h

loc_1403D7E6E:                          ; CODE XREF: wcscat_s+53↑j
                mov     [rcx], r10w
                xor     r9d, r9d
                xor     ecx, ecx
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                call    __misaligned_access
                mov     eax, ebx
                jmp     short loc_1403D7EA3
; ---------------------------------------------------------------------------

loc_1403D7E8A:                          ; CODE XREF: wcscat_s+C↑j
                                        ; wcscat_s+11↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D7EA3:                          ; CODE XREF: wcscat_s+57↑j
                                        ; wcscat_s+78↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
wcscat_s        endp

algn_1403D7EAA:                         ; DATA XREF: .pdata:00000001400E0E80↑o
                align 10h
; Exported entry 3074. wcscpy_s

; =============== S U B R O U T I N E =======================================


