strcat_s        proc near               ; CODE XREF: sub_1409B51C0+F4↓p
                                        ; sub_1409B51C0+16F↓p ...

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                xor     r10d, r10d
                test    rcx, rcx
                jz      short loc_1403D7983
                test    rdx, rdx
                jz      short loc_1403D7983
                test    r8, r8
                jz      short loc_1403D7963
                mov     r9, rcx

loc_1403D792B:                          ; CODE XREF: strcat_s+27↓j
                cmp     [r9], r10b
                jz      short loc_1403D7939
                inc     r9
                sub     rdx, 1
                jnz     short loc_1403D792B

loc_1403D7939:                          ; CODE XREF: strcat_s+1E↑j
                test    rdx, rdx
                jz      short loc_1403D7963
                sub     r9, r8

loc_1403D7941:                          ; CODE XREF: strcat_s+43↓j
                mov     al, [r8]
                mov     [r9+r8], al
                inc     r8
                test    al, al
                jz      short loc_1403D7955
                sub     rdx, 1
                jnz     short loc_1403D7941

loc_1403D7955:                          ; CODE XREF: strcat_s+3D↑j
                test    rdx, rdx
                jnz     short loc_1403D795F
                lea     ebx, [rdx+22h]
                jmp     short loc_1403D7968
; ---------------------------------------------------------------------------

loc_1403D795F:                          ; CODE XREF: strcat_s+48↑j
                xor     eax, eax
                jmp     short loc_1403D799C
; ---------------------------------------------------------------------------

loc_1403D7963:                          ; CODE XREF: strcat_s+16↑j
                                        ; strcat_s+2C↑j
                mov     ebx, 16h

loc_1403D7968:                          ; CODE XREF: strcat_s+4D↑j
                mov     [rcx], r10b
                xor     r9d, r9d
                xor     ecx, ecx
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                call    __misaligned_access
                mov     eax, ebx
                jmp     short loc_1403D799C
; ---------------------------------------------------------------------------

loc_1403D7983:                          ; CODE XREF: strcat_s+C↑j
                                        ; strcat_s+11↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D799C:                          ; CODE XREF: strcat_s+51↑j
                                        ; strcat_s+71↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
strcat_s        endp

algn_1403D79A3:                         ; DATA XREF: .pdata:00000001400E0E38↑o
                align 10h
; Exported entry 3045. strcpy_s

; =============== S U B R O U T I N E =======================================


