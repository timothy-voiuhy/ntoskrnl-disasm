FsRtlRemoveBaseMcbEntry proc near       ; CODE XREF: FsRtlRemoveLargeMcbEntry+2F↓p
                                        ; DATA XREF: .rdata:000000014007CA80↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140476332 SIZE 000000C8 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     [rsp+48h+arg_0], 0
                mov     rbp, r8
                mov     r14, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      loc_14032CE79

loc_14032CD9D:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+10E↓j
                                        ; FsRtlRemoveBaseMcbEntry+123↓j
                test    rbp, rbp
                jle     loc_14032CE5F
                or      r13d, 0FFFFFFFFh

loc_14032CDAA:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+E9↓j
                lea     r8, [rsp+48h+arg_0]
                mov     edx, r14d
                mov     rcx, rdi
                call    sub_14032D7CC
                test    al, al
                jz      loc_14032CE5F
                mov     ebx, [rsp+48h+arg_0]
                test    ebx, ebx
                jz      loc_14032CF78
                mov     rax, [rdi+10h]
                lea     ecx, [rbx-1]
                mov     eax, [rax+rcx*8]

loc_14032CDD8:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+20A↓j
                cmp     rax, r14
                jnz     loc_14032CE9F
                mov     rdx, [rdi+10h]
                lea     rax, [r14+rbp]
                mov     r8d, [rdx+rbx*8]
                lea     ecx, [r8-1]
                cmp     rcx, rax
                jge     loc_14032CE9F
                test    ebx, ebx
                jz      loc_14032CFA4
                lea     eax, [rbx-1]
                mov     eax, [rdx+rax*8]

loc_14032CE08:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+236↓j
                sub     r8d, eax
                mov     eax, r8d
                add     r14, rax
                sub     rbp, rax
                cmp     [rdx+rbx*8+4], r13d
                jz      short loc_14032CE56
                mov     r9d, [rdi+4]
                dec     r9d
                cmp     ebx, r9d
                jnz     loc_14032CF32
                test    ebx, ebx
                jz      loc_14032CF97
                lea     r9d, [rbx-1]
                mov     r8d, [rdx+r9*8+4]
                cmp     r8d, r13d
                jnz     loc_14032CF7F

loc_14032CE45:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+221↓j
                mov     edx, r9d

loc_14032CE48:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+2EC↓j
                mov     r8d, 2

loc_14032CE4E:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+22F↓j
                                        ; FsRtlRemoveBaseMcbEntry+288↓j
                mov     rcx, rdi
                call    sub_14032D858

loc_14032CE56:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+A9↑j
                                        ; FsRtlRemoveBaseMcbEntry+203↓j ...
                test    rbp, rbp
                jg      loc_14032CDAA

loc_14032CE5F:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+30↑j
                                        ; FsRtlRemoveBaseMcbEntry+4C↑j ...
                mov     al, 1

loc_14032CE61:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+149685↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032CE79:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+27↑j
                mov     eax, [rcx+4]
                test    eax, eax
                jz      loc_14032CD9D
                lea     r8d, [rax-1]
                mov     rax, [rcx+10h]
                mov     ecx, [rax+r8*8]
                cmp     rbp, rcx
                jl      loc_14032CD9D
                and     dword ptr [rdi+4], 0
                jmp     short loc_14032CE5F
; ---------------------------------------------------------------------------

loc_14032CE9F:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+6B↑j
                                        ; FsRtlRemoveBaseMcbEntry+84↑j
                test    ebx, ebx
                jz      loc_14032CFFD
                mov     rax, [rdi+10h]
                lea     ecx, [rbx-1]
                mov     eax, [rax+rcx*8]

loc_14032CEB1:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+28F↓j
                mov     rdx, [rdi+10h]
                cmp     rax, r14
                jnz     loc_14032D015
                cmp     [rdx+rbx*8+4], r13d
                jz      short loc_14032CE5F
                test    ebx, ebx
                jz      short loc_14032CEF6
                lea     eax, [rbx-1]
                mov     r9d, [rdx+rax*8+4]
                mov     r8d, eax
                cmp     r9d, r13d
                jz      loc_14032D004
                test    eax, eax
                jnz     loc_14032D061
                xor     ecx, ecx

loc_14032CEE7:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+2F7↓j
                mov     eax, [rdx+r8*8]
                sub     eax, ecx
                add     eax, r9d
                jz      loc_14032D004

loc_14032CEF6:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+157↑j
                mov     r8d, 1
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404763F3
                mov     rax, [rdi+10h]
                lea     ecx, [r14+rbp]
                mov     [rax+rbx*8+4], r13d
                mov     rax, [rdi+10h]
                mov     [rax+rbx*8], ecx
                lea     ecx, [rbx+1]
                mov     rax, [rdi+10h]
                add     [rax+rcx*8+4], ebp
                jmp     loc_14032CE5F
; ---------------------------------------------------------------------------

loc_14032CF32:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+B5↑j
                test    ebx, ebx
                jz      short loc_14032CF57
                lea     eax, [rbx-1]
                mov     r8d, [rdx+rax*8+4]
                mov     r10d, eax
                cmp     r8d, r13d
                jz      short loc_14032CFAB
                test    eax, eax
                jnz     loc_14032D0E6

loc_14032CF4E:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+37C↓j
                sub     r8d, eax
                add     r8d, [rdx+r10*8]
                jz      short loc_14032CFAB

loc_14032CF57:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+1C4↑j
                cmp     ebx, r9d
                jnb     loc_14032D0C2
                lea     eax, [rbx+1]
                cmp     [rdx+rax*8+4], r13d
                jz      loc_14032D0C2
                mov     [rdx+rbx*8+4], r13d
                jmp     loc_14032CE56
; ---------------------------------------------------------------------------

loc_14032CF78:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+58↑j
                xor     eax, eax
                jmp     loc_14032CDD8
; ---------------------------------------------------------------------------

loc_14032CF7F:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+CF↑j
                test    r9d, r9d
                jnz     loc_14032D0B7
                xor     eax, eax

loc_14032CF8A:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+34D↓j
                sub     r8d, eax
                add     r8d, [rdx+r9*8]
                jz      loc_14032CE45

loc_14032CF97:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+BD↑j
                                        ; FsRtlRemoveBaseMcbEntry+35D↓j ...
                mov     r8d, 1
                mov     edx, ebx
                jmp     loc_14032CE4E
; ---------------------------------------------------------------------------

loc_14032CFA4:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+8C↑j
                xor     eax, eax
                jmp     loc_14032CE08
; ---------------------------------------------------------------------------

loc_14032CFAB:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+1D4↑j
                                        ; FsRtlRemoveBaseMcbEntry+1E5↑j ...
                lea     eax, [rbx-1]
                mov     r8d, [rdx+rax*8+4]
                mov     r10d, eax
                cmp     r8d, r13d
                jnz     loc_14032D0F1

loc_14032CFBF:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+38E↓j
                test    ebx, ebx
                jz      loc_14032D0CA

loc_14032CFC7:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+1495CA↓j
                lea     eax, [rbx-1]
                mov     r8d, [rdx+rax*8+4]
                mov     r10d, eax
                cmp     r8d, r13d
                jnz     loc_14047633F

loc_14032CFDB:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+1495C4↓j
                                        ; FsRtlRemoveBaseMcbEntry+1495E6↓j
                cmp     ebx, r9d
                jnb     short loc_14032D059
                lea     eax, [rbx+1]
                cmp     [rdx+rax*8+4], r13d
                jz      short loc_14032D059
                mov     [rdx+rbx*8+4], r13d
                mov     r8d, 1
                lea     edx, [rbx-1]
                jmp     loc_14032CE4E
; ---------------------------------------------------------------------------

loc_14032CFFD:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+131↑j
                xor     eax, eax
                jmp     loc_14032CEB1
; ---------------------------------------------------------------------------

loc_14032D004:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+167↑j
                                        ; FsRtlRemoveBaseMcbEntry+180↑j
                add     [rdx+r8*8], ebp
                mov     rax, [rdi+10h]
                add     [rax+rbx*8+4], ebp
                jmp     loc_14032CE5F
; ---------------------------------------------------------------------------

loc_14032D015:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+148↑j
                mov     r15d, [rdx+rbx*8]
                lea     r13, [r14+rbp]
                mov     r8d, [rdx+rbx*8+4]
                mov     rsi, rbx
                lea     ecx, [r15-1]
                cmp     rcx, r13
                jge     loc_140476364
                sub     r15d, r14d
                or      r13d, 0FFFFFFFFh
                cmp     r8d, r13d
                jz      short loc_14032D04B
                mov     eax, [rdi+4]
                dec     eax
                cmp     ebx, eax
                jnz     short loc_14032D06C
                sub     [rdx+rbx*8], r15d

loc_14032D04B:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+2CC↑j
                                        ; FsRtlRemoveBaseMcbEntry+345↓j ...
                mov     eax, r15d
                add     r14, rax
                sub     rbp, rax
                jmp     loc_14032CE56
; ---------------------------------------------------------------------------

loc_14032D059:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+26E↑j
                                        ; FsRtlRemoveBaseMcbEntry+278↑j ...
                lea     edx, [rbx-1]
                jmp     loc_14032CE48
; ---------------------------------------------------------------------------

loc_14032D061:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+16F↑j
                lea     eax, [rbx-2]
                mov     ecx, [rdx+rax*8]
                jmp     loc_14032CEE7
; ---------------------------------------------------------------------------

loc_14032D06C:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+2D5↑j
                jnb     loc_14047635B
                lea     ecx, [rbx+1]
                mov     ebx, ecx
                cmp     [rdx+rcx*8+4], r13d
                jz      loc_14047635B
                mov     edx, ecx
                mov     r8d, 1
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404763F3
                mov     rax, [rdi+10h]
                mov     [rax+rbx*8+4], r13d
                mov     rcx, [rdi+10h]
                mov     eax, [rcx+rsi*8]
                mov     [rcx+rbx*8], eax
                mov     rax, [rdi+10h]
                sub     [rax+rsi*8], r15d
                jmp     short loc_14032D04B
; ---------------------------------------------------------------------------

loc_14032D0B7:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+212↑j
                lea     eax, [rbx-2]
                mov     eax, [rdx+rax*8]
                jmp     loc_14032CF8A
; ---------------------------------------------------------------------------

loc_14032D0C2:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+1EA↑j
                                        ; FsRtlRemoveBaseMcbEntry+1F8↑j
                test    ebx, ebx
                jnz     loc_14032CFAB

loc_14032D0CA:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+251↑j
                                        ; FsRtlRemoveBaseMcbEntry+38C↓j
                cmp     ebx, r9d
                jnb     loc_14032CF97
                lea     eax, [rbx+1]
                cmp     [rdx+rax*8+4], r13d
                jz      loc_14032CF97
                jmp     loc_140476332
; ---------------------------------------------------------------------------

loc_14032D0E6:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+1D8↑j
                lea     eax, [rbx-2]
                mov     eax, [rdx+rax*8]
                jmp     loc_14032CF4E
; ---------------------------------------------------------------------------

loc_14032D0F1:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+249↑j
                test    eax, eax
                jnz     short loc_14032D103

loc_14032D0F5:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+399↓j
                sub     r8d, eax
                add     r8d, [rdx+r10*8]
                jnz     short loc_14032D0CA
                jmp     loc_14032CFBF
; ---------------------------------------------------------------------------

loc_14032D103:                          ; CODE XREF: FsRtlRemoveBaseMcbEntry+383↑j
                lea     eax, [rbx-2]
                mov     eax, [rdx+rax*8]
                jmp     short loc_14032D0F5
FsRtlRemoveBaseMcbEntry endp
