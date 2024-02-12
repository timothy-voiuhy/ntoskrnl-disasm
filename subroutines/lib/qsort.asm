qsort           proc near               ; CODE XREF: sub_14025A7A0+14E↑p
                                        ; sub_14026A8F0+970↑p ...

var_458         = qword ptr -458h
var_448         = qword ptr -448h
var_438         = qword ptr -438h
var_248         = qword ptr -248h
var_58          = qword ptr -58h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h

; __unwind { // __GSHandlerCheck
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 458h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+478h+var_58], rax
                mov     r14, r8
                mov     r15, rdx
                mov     r13, rcx
                xor     edx, edx
                mov     r8d, 1F0h
                lea     rcx, [rsp+478h+var_438]
                mov     r12, r9
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+478h+var_248]
                mov     r8d, 1F0h
                call    memset
                test    r13, r13
                jnz     short loc_1403D2762
                test    r15, r15
                jnz     loc_1403D2A76

loc_1403D2762:                          ; CODE XREF: qsort+57↑j
                test    r14, r14
                jz      loc_1403D2A76
                test    r12, r12
                jz      loc_1403D2A76
                cmp     r15, 2
                jb      loc_1403D2AAE
; } // starts at 1403D2700

loc_1403D277E:                          ; DATA XREF: .rdata:00000001400B1078↑o
                                        ; .rdata:00000001400B1088↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+478h+var_28], rbx
                mov     rcx, r12
                mov     [rsp+478h+var_30], rbp
                mov     [rsp+478h+var_38], rsi
                mov     [rsp+478h+var_40], rdi
                call    sub_140407980
                dec     r15
                imul    r15, r14
                add     r15, r13
                xor     ecx, ecx
                mov     [rsp+478h+var_448], rcx
                nop     word ptr [rax+rax+00000000h]

loc_1403D27C0:                          ; CODE XREF: qsort+15F↓j
                                        ; qsort+346↓j ...
                xor     edx, edx
                mov     rax, r15
                sub     rax, r13
                div     r14
                lea     rbx, [rax+1]
                cmp     rbx, 8
                ja      loc_1403D2864
                cmp     r15, r13
                jbe     short loc_1403D2843
                lea     rsi, [r14+r13]

loc_1403D27E2:                          ; CODE XREF: qsort+13C↓j
                mov     rbx, r13
                mov     rdi, rsi
                cmp     rsi, r15
                ja      short loc_1403D280C
                nop     dword ptr [rax]

loc_1403D27F0:                          ; CODE XREF: qsort+10A↓j
                mov     rdx, rbx
                mov     rcx, rdi
                mov     rax, r12
                call    sub_1404079D0
                test    eax, eax
                cmovg   rbx, rdi
                add     rdi, r14
                cmp     rdi, r15
                jbe     short loc_1403D27F0

loc_1403D280C:                          ; CODE XREF: qsort+EB↑j
                mov     r8, r14
                mov     rdx, r15
                cmp     rbx, r15
                jz      short loc_1403D2836
                sub     rbx, r15
                nop     word ptr [rax+rax+00h]

loc_1403D2820:                          ; CODE XREF: qsort+134↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [rbx+rdx]
                mov     [rbx+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D2820

loc_1403D2836:                          ; CODE XREF: qsort+115↑j
                sub     r15, r14
                cmp     r15, r13
                ja      short loc_1403D27E2
                mov     rcx, [rsp+478h+var_448]

loc_1403D2843:                          ; CODE XREF: qsort+DC↑j
                                        ; qsort+33D↓j ...
                sub     rcx, 1
                mov     [rsp+478h+var_448], rcx
                js      loc_1403D2A8E
                mov     r13, [rsp+rcx*8+478h+var_438]
                mov     r15, [rsp+rcx*8+478h+var_248]
                jmp     loc_1403D27C0
; ---------------------------------------------------------------------------

loc_1403D2864:                          ; CODE XREF: qsort+D3↑j
                shr     rbx, 1
                mov     rax, r12
                imul    rbx, r14
                mov     rcx, r13
                lea     rdi, [rbx+r13]
                mov     rdx, rdi
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D28AB
                mov     r9, r14
                mov     r8, rdi
                cmp     r13, rdi
                jz      short loc_1403D28AB
                nop     dword ptr [rax+00h]

loc_1403D2890:                          ; CODE XREF: qsort+1A9↓j
                movzx   eax, byte ptr [r8]
                mov     rdx, r8
                sub     rdx, rbx
                movzx   ecx, byte ptr [rdx]
                mov     [rdx], al
                mov     [r8], cl
                inc     r8
                sub     r9, 1
                jnz     short loc_1403D2890

loc_1403D28AB:                          ; CODE XREF: qsort+17F↑j
                                        ; qsort+18A↑j
                mov     rax, r12
                mov     rdx, r15
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D28E8
                mov     r8, r14
                mov     rdx, r15
                cmp     r13, r15
                jz      short loc_1403D28E8
                mov     r9, r13
                sub     r9, r15
                xchg    ax, ax

loc_1403D28D0:                          ; CODE XREF: qsort+1E6↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [r9+rdx]
                mov     [r9+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D28D0

loc_1403D28E8:                          ; CODE XREF: qsort+1BB↑j
                                        ; qsort+1C6↑j
                mov     rax, r12
                mov     rdx, r15
                mov     rcx, rdi
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2928
                mov     r8, r14
                mov     rdx, r15
                cmp     rdi, r15
                jz      short loc_1403D2928
                mov     r9, rdi
                sub     r9, r15
                nop     dword ptr [rax+rax+00h]

loc_1403D2910:                          ; CODE XREF: qsort+226↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [r9+rdx]
                mov     [r9+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D2910

loc_1403D2928:                          ; CODE XREF: qsort+1F8↑j
                                        ; qsort+203↑j
                mov     rbx, r13
                mov     rsi, r15
                xchg    ax, ax

loc_1403D2930:                          ; CODE XREF: qsort+2C5↓j
                cmp     rdi, rbx
                jbe     short loc_1403D2951

loc_1403D2935:                          ; CODE XREF: qsort+24D↓j
                add     rbx, r14
                cmp     rbx, rdi
                jnb     short loc_1403D2951
                mov     rax, r12
                mov     rdx, rdi
                mov     rcx, rbx
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2935
                jmp     short loc_1403D2970
; ---------------------------------------------------------------------------

loc_1403D2951:                          ; CODE XREF: qsort+233↑j
                                        ; qsort+23B↑j ...
                add     rbx, r14
                cmp     rbx, r15
                ja      short loc_1403D2970
                mov     rax, r12
                mov     rdx, rdi
                mov     rcx, rbx
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2951
                nop     dword ptr [rax+rax+00h]

loc_1403D2970:                          ; CODE XREF: qsort+24F↑j
                                        ; qsort+257↑j ...
                mov     rbp, rsi
                sub     rsi, r14
                cmp     rsi, rdi
                jbe     short loc_1403D298D
                mov     rax, r12
                mov     rdx, rdi
                mov     rcx, rsi
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jg      short loc_1403D2970

loc_1403D298D:                          ; CODE XREF: qsort+279↑j
                cmp     rsi, rbx
                jb      short loc_1403D29CA
                mov     r8, r14
                mov     rdx, rsi
                jz      short loc_1403D29B8
                mov     r9, rbx
                sub     r9, rsi

loc_1403D29A0:                          ; CODE XREF: qsort+2B6↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [r9+rdx]
                mov     [r9+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D29A0

loc_1403D29B8:                          ; CODE XREF: qsort+298↑j
                cmp     rdi, rsi
                mov     rax, rbx
                cmovnz  rax, rdi
                mov     rdi, rax
                jmp     loc_1403D2930
; ---------------------------------------------------------------------------

loc_1403D29CA:                          ; CODE XREF: qsort+290↑j
                cmp     rdi, rbp
                jnb     short loc_1403D29F0
                nop

loc_1403D29D0:                          ; CODE XREF: qsort+2E8↓j
                sub     rbp, r14
                cmp     rbp, rdi
                jbe     short loc_1403D29F0
                mov     rax, r12
                mov     rdx, rdi
                mov     rcx, rbp
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jz      short loc_1403D29D0
                jmp     short loc_1403D2A0A
; ---------------------------------------------------------------------------
                align 10h

loc_1403D29F0:                          ; CODE XREF: qsort+2CD↑j
                                        ; qsort+2D6↑j ...
                sub     rbp, r14
                cmp     rbp, r13
                jbe     short loc_1403D2A0A
                mov     rax, r12
                mov     rdx, rdi
                mov     rcx, rbp
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jz      short loc_1403D29F0

loc_1403D2A0A:                          ; CODE XREF: qsort+2EA↑j
                                        ; qsort+2F6↑j
                mov     rcx, r15
                mov     rax, rbp
                sub     rcx, rbx
                sub     rax, r13
                cmp     rax, rcx
                mov     rcx, [rsp+478h+var_448]
                jl      short loc_1403D2A4B
                cmp     r13, rbp
                jnb     short loc_1403D2A3A
                mov     [rsp+rcx*8+478h+var_438], r13
                mov     [rsp+rcx*8+478h+var_248], rbp
                inc     rcx
                mov     [rsp+478h+var_448], rcx

loc_1403D2A3A:                          ; CODE XREF: qsort+323↑j
                cmp     rbx, r15
                jnb     loc_1403D2843
                mov     r13, rbx
                jmp     loc_1403D27C0
; ---------------------------------------------------------------------------

loc_1403D2A4B:                          ; CODE XREF: qsort+31E↑j
                cmp     rbx, r15
                jnb     short loc_1403D2A65
                mov     [rsp+rcx*8+478h+var_438], rbx
                mov     [rsp+rcx*8+478h+var_248], r15
                inc     rcx
                mov     [rsp+478h+var_448], rcx

loc_1403D2A65:                          ; CODE XREF: qsort+34E↑j
                cmp     r13, rbp
                jnb     loc_1403D2843
                mov     r15, rbp
                jmp     loc_1403D27C0
; } // starts at 1403D277E
; ---------------------------------------------------------------------------

loc_1403D2A76:                          ; CODE XREF: qsort+5C↑j
                                        ; qsort+65↑j ...
; __unwind { // __GSHandlerCheck
                xor     eax, eax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+478h+var_458], rax
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                jmp     short loc_1403D2AAE
; } // starts at 1403D2A76
; ---------------------------------------------------------------------------

loc_1403D2A8E:                          ; CODE XREF: qsort+14C↑j
                                        ; DATA XREF: .pdata:00000001400E08B0↑o ...
; __unwind { // __GSHandlerCheck
                mov     rsi, [rsp+478h+var_38]
                mov     rbp, [rsp+478h+var_30]
                mov     rbx, [rsp+478h+var_28]
                mov     rdi, [rsp+478h+var_40]
; } // starts at 1403D2A8E

loc_1403D2AAE:                          ; CODE XREF: qsort+78↑j
                                        ; qsort+38C↑j
                                        ; DATA XREF: ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rsp+478h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 458h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D2AAE
qsort           endp

algn_1403D2ACF:                         ; DATA XREF: .pdata:00000001400E08C8↑o
                align 20h
; Exported entry 3032. qsort_s

; =============== S U B R O U T I N E =======================================


