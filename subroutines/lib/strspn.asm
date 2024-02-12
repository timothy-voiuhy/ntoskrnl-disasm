strspn          proc near               ; DATA XREF: .pdata:00000001400E09B8↑o

var_38          = byte ptr -38h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 58h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_18], rax
                xor     r9d, r9d
                mov     r8, rdx
                mov     eax, r9d
                mov     r10, rcx
                cmp     rax, 20h ; ' '
                lea     r11d, [r9+1]

loc_1403D3887:                          ; CODE XREF: strspn+39↓j
                jnb     loc_1403D391D
                mov     [rsp+rax+58h+var_38], r9b
                add     rax, r11
                cmp     rax, 20h ; ' '
                jl      short loc_1403D3887
                mov     al, [rdx]
                jmp     short loc_1403D38BE
; ---------------------------------------------------------------------------

loc_1403D389F:                          ; CODE XREF: strspn+60↓j
                movzx   edx, al
                shr     rdx, 3
                movzx   eax, al
                and     eax, 7
                movzx   ecx, [rsp+rdx+58h+var_38]
                bts     ecx, eax
                add     r8, r11
                mov     [rsp+rdx+58h+var_38], cl
                mov     al, [r8]

loc_1403D38BE:                          ; CODE XREF: strspn+3D↑j
                test    al, al
                jnz     short loc_1403D389F
                movzx   r8d, byte ptr [r10]
                test    r8b, r8b
                jz      short loc_1403D3919
                mov     eax, r8d
                mov     ecx, r8d
                and     ecx, 7
                shr     rax, 3
                mov     edx, r11d
                shl     edx, cl
                test    [rsp+rax+58h+var_38], dl
                jz      short loc_1403D3903

loc_1403D38E3:                          ; CODE XREF: strspn+A1↓j
                add     r10, r11
                mov     edx, r11d
                add     r9d, r11d
                movzx   r8d, byte ptr [r10]
                mov     ecx, r8d
                shr     r8, 3
                and     ecx, 7
                shl     edx, cl
                test    [rsp+r8+58h+var_38], dl
                jnz     short loc_1403D38E3

loc_1403D3903:                          ; CODE XREF: strspn+81↑j
                movsxd  rax, r9d

loc_1403D3906:                          ; CODE XREF: strspn+BB↓j
                mov     rcx, [rsp+58h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D3919:                          ; CODE XREF: strspn+69↑j
                xor     eax, eax
                jmp     short loc_1403D3906
; ---------------------------------------------------------------------------

loc_1403D391D:                          ; CODE XREF: strspn:loc_1403D3887↑j
                call    sub_1404B63DC
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D3860
strspn          endp

algn_1403D3923:                         ; DATA XREF: .pdata:00000001400E09B8↑o
                align 10h
; Exported entry 3060. tolower

; =============== S U B R O U T I N E =======================================


