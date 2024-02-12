qsort_s         proc near               ; CODE XREF: sub_140333D18+3C4↑p
                                        ; DATA XREF: .rdata:00000001400B10F4↑o ...

var_458         = qword ptr -458h
var_448         = qword ptr -448h
var_440         = qword ptr -440h
var_438         = qword ptr -438h
var_248         = qword ptr -248h
var_58          = qword ptr -58h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                push    rsi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 450h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+478h+var_58], rax
                mov     r13, [rsp+478h+arg_20]
                mov     r14, r8
                mov     r15, rdx
                mov     [rsp+478h+var_440], rcx
                mov     rsi, rcx
                xor     edx, edx
                mov     r8d, 1F0h
                lea     rcx, [rsp+478h+var_438]
                mov     r12, r9
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+478h+var_248]
                mov     r8d, 1F0h
                call    memset
                test    rsi, rsi
                jnz     short loc_1403D2B51
                test    r15, r15
                jnz     loc_1403D2E8E

loc_1403D2B51:                          ; CODE XREF: qsort_s+66↑j
                test    r14, r14
                jz      loc_1403D2E8E
                test    r12, r12
                jz      loc_1403D2E8E
                cmp     r15, 2
                jb      loc_1403D2EBE
; } // starts at 1403D2AE0

loc_1403D2B6D:                          ; DATA XREF: .rdata:00000001400B10F4↑o
                                        ; .rdata:00000001400B1104↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+478h+var_30], rbx
                mov     rcx, r12
                mov     [rsp+478h+var_38], rbp
                mov     [rsp+478h+var_40], rdi
                call    sub_140407980
                dec     r15
                imul    r15, r14
                add     r15, rsi
                xor     ecx, ecx
                mov     [rsp+478h+var_448], rcx
                xchg    ax, ax

loc_1403D2BA0:                          ; CODE XREF: qsort_s+164↓j
                                        ; qsort_s+37E↓j ...
                xor     edx, edx
                mov     rax, r15
                sub     rax, rsi
                div     r14
                lea     rbx, [rax+1]
                cmp     rbx, 8
                ja      loc_1403D2C49
                cmp     r15, rsi
                jbe     short loc_1403D2C23
                lea     rbp, [r14+rsi]

loc_1403D2BC2:                          ; CODE XREF: qsort_s+13C↓j
                mov     rbx, rsi
                mov     rdi, rbp
                cmp     rbp, r15
                ja      short loc_1403D2BEF
                nop     dword ptr [rax]

loc_1403D2BD0:                          ; CODE XREF: qsort_s+10D↓j
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, r13
                mov     rax, r12
                call    sub_1404079D0
                test    eax, eax
                cmovg   rbx, rdi
                add     rdi, r14
                cmp     rdi, r15
                jbe     short loc_1403D2BD0

loc_1403D2BEF:                          ; CODE XREF: qsort_s+EB↑j
                mov     r8, r14
                mov     rdx, r15
                cmp     rbx, r15
                jz      short loc_1403D2C16
                sub     rbx, r15
                nop     dword ptr [rax]

loc_1403D2C00:                          ; CODE XREF: qsort_s+134↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [rbx+rdx]
                mov     [rbx+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D2C00

loc_1403D2C16:                          ; CODE XREF: qsort_s+118↑j
                sub     r15, r14
                cmp     r15, rsi
                ja      short loc_1403D2BC2
                mov     rcx, [rsp+478h+var_448]

loc_1403D2C23:                          ; CODE XREF: qsort_s+DC↑j
                                        ; qsort_s+370↓j ...
                sub     rcx, 1
                mov     [rsp+478h+var_448], rcx
                js      loc_1403D2EA6
                mov     rsi, [rsp+rcx*8+478h+var_438]
                mov     r15, [rsp+rcx*8+478h+var_248]
                mov     [rsp+478h+var_440], rsi
                jmp     loc_1403D2BA0
; ---------------------------------------------------------------------------

loc_1403D2C49:                          ; CODE XREF: qsort_s+D3↑j
                shr     rbx, 1
                mov     rax, r12
                imul    rbx, r14
                mov     rdx, rsi
                mov     rcx, r13
                lea     rdi, [rbx+rsi]
                mov     r8, rdi
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2C9B
                mov     r9, r14
                mov     r8, rdi
                cmp     rsi, rdi
                jz      short loc_1403D2C9B
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_1403D2C80:                          ; CODE XREF: qsort_s+1B9↓j
                movzx   eax, byte ptr [r8]
                mov     rdx, r8
                sub     rdx, rbx
                movzx   ecx, byte ptr [rdx]
                mov     [rdx], al
                mov     [r8], cl
                inc     r8
                sub     r9, 1
                jnz     short loc_1403D2C80

loc_1403D2C9B:                          ; CODE XREF: qsort_s+187↑j
                                        ; qsort_s+192↑j
                mov     rax, r12
                mov     r8, r15
                mov     rdx, rsi
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2CD9
                mov     r8, r14
                mov     rdx, r15
                cmp     rsi, r15
                jz      short loc_1403D2CD9
                mov     r9, rsi
                sub     r9, r15

loc_1403D2CC1:                          ; CODE XREF: qsort_s+1F7↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [r9+rdx]
                mov     [r9+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D2CC1

loc_1403D2CD9:                          ; CODE XREF: qsort_s+1CE↑j
                                        ; qsort_s+1D9↑j
                mov     rax, r12
                mov     r8, r15
                mov     rdx, rdi
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2D18
                mov     r8, r14
                mov     rdx, r15
                cmp     rdi, r15
                jz      short loc_1403D2D18
                mov     r9, rdi
                sub     r9, r15
                nop

loc_1403D2D00:                          ; CODE XREF: qsort_s+236↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [r9+rdx]
                mov     [r9+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D2D00

loc_1403D2D18:                          ; CODE XREF: qsort_s+20C↑j
                                        ; qsort_s+217↑j
                mov     rbx, rsi
                mov     rsi, r15
                xchg    ax, ax

loc_1403D2D20:                          ; CODE XREF: qsort_s+2E5↓j
                cmp     rdi, rbx
                jbe     short loc_1403D2D44

loc_1403D2D25:                          ; CODE XREF: qsort_s+260↓j
                add     rbx, r14
                cmp     rbx, rdi
                jnb     short loc_1403D2D44
                mov     rax, r12
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2D25
                jmp     short loc_1403D2D61
; ---------------------------------------------------------------------------

loc_1403D2D44:                          ; CODE XREF: qsort_s+243↑j
                                        ; qsort_s+24B↑j ...
                add     rbx, r14
                cmp     rbx, r15
                ja      short loc_1403D2D61
                mov     rax, r12
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jle     short loc_1403D2D44

loc_1403D2D61:                          ; CODE XREF: qsort_s+262↑j
                                        ; qsort_s+26A↑j ...
                mov     rbp, rsi
                sub     rsi, r14
                cmp     rsi, rdi
                jbe     short loc_1403D2D81
                mov     rax, r12
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jg      short loc_1403D2D61

loc_1403D2D81:                          ; CODE XREF: qsort_s+28A↑j
                cmp     rsi, rbx
                jb      short loc_1403D2DCA
                mov     r8, r14
                mov     rdx, rsi
                jz      short loc_1403D2DB8
                mov     r9, rbx
                sub     r9, rsi
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_1403D2DA0:                          ; CODE XREF: qsort_s+2D6↓j
                movzx   eax, byte ptr [rdx]
                movzx   ecx, byte ptr [r9+rdx]
                mov     [r9+rdx], al
                mov     [rdx], cl
                lea     rdx, [rdx+1]
                sub     r8, 1
                jnz     short loc_1403D2DA0

loc_1403D2DB8:                          ; CODE XREF: qsort_s+2AC↑j
                cmp     rdi, rsi
                mov     rax, rbx
                cmovnz  rax, rdi
                mov     rdi, rax
                jmp     loc_1403D2D20
; ---------------------------------------------------------------------------

loc_1403D2DCA:                          ; CODE XREF: qsort_s+2A4↑j
                cmp     rdi, rbp
                jnb     short loc_1403D2DF4
                nop

loc_1403D2DD0:                          ; CODE XREF: qsort_s+30B↓j
                sub     rbp, r14
                cmp     rbp, rdi
                jbe     short loc_1403D2DF4
                mov     rax, r12
                mov     r8, rdi
                mov     rdx, rbp
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jz      short loc_1403D2DD0
                mov     rsi, [rsp+478h+var_440]
                jmp     short loc_1403D2E1D
; ---------------------------------------------------------------------------

loc_1403D2DF4:                          ; CODE XREF: qsort_s+2ED↑j
                                        ; qsort_s+2F6↑j
                mov     rsi, [rsp+478h+var_440]
                nop     dword ptr [rax+00000000h]

loc_1403D2E00:                          ; CODE XREF: qsort_s+33B↓j
                sub     rbp, r14
                cmp     rbp, rsi
                jbe     short loc_1403D2E1D
                mov     rax, r12
                mov     r8, rdi
                mov     rdx, rbp
                mov     rcx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jz      short loc_1403D2E00

loc_1403D2E1D:                          ; CODE XREF: qsort_s+312↑j
                                        ; qsort_s+326↑j
                mov     rcx, r15
                mov     rax, rbp
                sub     rcx, rbx
                sub     rax, rsi
                cmp     rax, rcx
                mov     rcx, [rsp+478h+var_448]
                jl      short loc_1403D2E63
                cmp     rsi, rbp
                jnb     short loc_1403D2E4D
                mov     [rsp+rcx*8+478h+var_438], rsi
                mov     [rsp+rcx*8+478h+var_248], rbp
                inc     rcx
                mov     [rsp+478h+var_448], rcx

loc_1403D2E4D:                          ; CODE XREF: qsort_s+356↑j
                cmp     rbx, r15
                jnb     loc_1403D2C23
                mov     rsi, rbx
                mov     [rsp+478h+var_440], rbx
                jmp     loc_1403D2BA0
; ---------------------------------------------------------------------------

loc_1403D2E63:                          ; CODE XREF: qsort_s+351↑j
                cmp     rbx, r15
                jnb     short loc_1403D2E7D
                mov     [rsp+rcx*8+478h+var_438], rbx
                mov     [rsp+rcx*8+478h+var_248], r15
                inc     rcx
                mov     [rsp+478h+var_448], rcx

loc_1403D2E7D:                          ; CODE XREF: qsort_s+386↑j
                cmp     rsi, rbp
                jnb     loc_1403D2C23
                mov     r15, rbp
                jmp     loc_1403D2BA0
; } // starts at 1403D2B6D
; ---------------------------------------------------------------------------

loc_1403D2E8E:                          ; CODE XREF: qsort_s+6B↑j
                                        ; qsort_s+74↑j ...
; __unwind { // __GSHandlerCheck
                xor     eax, eax
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+478h+var_458], rax
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                jmp     short loc_1403D2EBE
; } // starts at 1403D2E8E
; ---------------------------------------------------------------------------

loc_1403D2EA6:                          ; CODE XREF: qsort_s+14C↑j
                                        ; DATA XREF: .pdata:00000001400E08EC↑o ...
; __unwind { // __GSHandlerCheck
                mov     rbp, [rsp+478h+var_38]
                mov     rbx, [rsp+478h+var_30]
                mov     rdi, [rsp+478h+var_40]
; } // starts at 1403D2EA6

loc_1403D2EBE:                          ; CODE XREF: qsort_s+87↑j
                                        ; qsort_s+3C4↑j
                                        ; DATA XREF: ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rsp+478h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 450h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D2EBE
qsort_s         endp

byte_1403D2EE0  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0904↑o
; Exported entry 3033. rand
; [0000001E BYTES: COLLAPSED FUNCTION rand. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D2F0F:                         ; DATA XREF: .pdata:00000001400E0910↑o
                align 20h
; Exported entry 3038. srand

; =============== S U B R O U T I N E =======================================


