KeReleaseMutant proc near               ; CODE XREF: sub_14027C960+2D7↓p
                                        ; KeReleaseMutex+F↓p ...

var_C8          = qword ptr -0C8h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014042EB96 SIZE 00000358 BYTES

                mov     [rsp+arg_18], r9b
                mov     [rsp+arg_8], edx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A8h
                xor     edi, edi
                mov     rbx, rcx
                mov     rcx, gs:188h
                movzx   r12d, r8b
                mov     [rsp+0E8h+var_B8], rcx
                mov     r15d, edi
                mov     ebp, edi
                mov     [rsp+0E8h+var_78], rdi
                xor     r13b, r13b
                mov     r10, cr8
                mov     [rsp+0E8h+var_90], r10
                mov     r8d, 2
                mov     cr8, r8
                mov     eax, cs:dword_140CFC660
                lea     r11, [rdi-1]
                test    eax, eax
                jnz     loc_14042EB96

loc_14023CA25:                          ; CODE XREF: KeReleaseMutant+1F21D8↓j
                                        ; KeReleaseMutant+1F21E2↓j ...
                mov     rsi, gs:20h
                mov     [rsp+0E8h+arg_0], edi
                lock bts dword ptr [rbx], 7
                mov     [rsp+0E8h+var_A8], rsi
                jb      loc_14023CCD0

loc_14023CA45:                          ; CODE XREF: KeReleaseMutant+33B↓j
                mov     r14d, [rbx+4]
                test    r12b, r12b
                jnz     loc_14042EBDC
                cmp     [rbx+28h], rcx
                jnz     loc_14023CC52
                movzx   eax, byte ptr [rsi+312Ah]
                cmp     [rbx+2], al
                jnz     loc_14023CC52
                inc     dword ptr [rbx+4]
                mov     eax, [rbx+4]

loc_14023CA72:                          ; CODE XREF: KeReleaseMutant+1F222C↓j
                cmp     eax, 1
                jnz     loc_14023CBD6
                test    r14d, r14d
                jg      loc_14023CBD6
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+0E8h+var_58], rax
                mov     eax, [rbx]
                movups  [rsp+0E8h+var_68], xmm0
                mov     dword ptr [rsp+0E8h+var_68], eax
                mov     byte ptr [rsp+0E8h+var_68+2], dil
                mov     eax, dword ptr [rsp+0E8h+var_68]
                mov     [rbx], eax
                mov     rsi, gs:20h
                movzx   eax, byte ptr [rbx+31h]
                mov     rbp, [rbx+28h]
                mov     [rsp+0E8h+arg_10], eax
                mov     rcx, [rsi+84B8h]
                mov     [rsp+0E8h+var_A0], edi
                test    rcx, rcx
                jnz     loc_14042EBF1

loc_14023CADF:                          ; CODE XREF: KeReleaseMutant+2FD↓j
                                        ; KeReleaseMutant+1F2235↓j ...
                lock bts qword ptr [rbp+40h], 0
                jb      loc_14023CC8B
                mov     rdx, [rbx+18h]
                lea     rax, [rbx+18h]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14023CC08
                cmp     [rcx], rax
                jnz     loc_14023CC08
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     [rbp+40h], rdi
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042EC5A

loc_14023CB2F:                          ; CODE XREF: KeReleaseMutant+1F229E↓j
                                        ; KeReleaseMutant+1F22AD↓j ...
                mov     r15, [rbx+8]
                lea     rsi, [rbx+8]
                mov     [rbx+28h], rdi
                cmp     r15, rsi
                jnz     loc_14023CBF0

loc_14023CB44:                          ; CODE XREF: KeReleaseMutant+287↓j
                                        ; KeReleaseMutant+35E↓j ...
                test    byte ptr [rbx+30h], 2
                jnz     loc_14042EDDC

loc_14023CB4E:                          ; CODE XREF: KeReleaseMutant+1F241F↓j
                lock and dword ptr [rbx], 0FFFFFF7Fh
                test    r12b, r12b
                jnz     loc_14042EDE4

loc_14023CB5E:                          ; CODE XREF: KeReleaseMutant+1F242D↓j
                mov     rsi, [rsp+0E8h+var_A8]
                mov     r12, [rsp+0E8h+var_B8]
                test    r13b, r13b
                jnz     loc_14042EDF2

loc_14023CB71:                          ; CODE XREF: KeReleaseMutant+1F243A↓j
                                        ; KeReleaseMutant+1F244A↓j ...
                mov     r15d, [rsp+0E8h+arg_10]

loc_14023CB79:                          ; CODE XREF: KeReleaseMutant+222↓j
                cmp     [rsp+0E8h+arg_18], dil
                jnz     loc_14042EE36

loc_14023CB87:                          ; CODE XREF: KeReleaseMutant+1F247B↓j
                mov     rax, [rsp+0E8h+var_90]
                mov     r8d, 1
                mov     r9d, [rsp+0E8h+arg_8]
                mov     edx, edi
                mov     rcx, rsi
                mov     byte ptr [rsp+0E8h+var_C8], al
                call    sub_14023E110
                test    r13b, r13b
                jnz     loc_14042EE40

loc_14023CBB1:                          ; CODE XREF: KeReleaseMutant+1F248E↓j
                test    r15d, r15d
                jz      short loc_14023CBBE
                mov     rcx, r12
                call    sub_14021E1F0

loc_14023CBBE:                          ; CODE XREF: KeReleaseMutant+1F4↑j
                mov     eax, r14d
                add     rsp, 0A8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14023CBD6:                          ; CODE XREF: KeReleaseMutant+B5↑j
                                        ; KeReleaseMutant+BE↑j
                lock and dword ptr [rbx], 0FFFFFF7Fh
                mov     r12, [rsp+0E8h+var_B8]
                jmp     short loc_14023CB79
; ---------------------------------------------------------------------------
                align 10h

loc_14023CBF0:                          ; CODE XREF: KeReleaseMutant+17E↑j
                                        ; KeReleaseMutant+364↓j
                mov     rax, [r15]
                mov     rdx, r15
                mov     [rsp+0E8h+var_98], rdx
                mov     r15, rax
                mov     rcx, [rdx+8]
                cmp     [rax+8], rdx
                jz      short loc_14023CC0F

loc_14023CC08:                          ; CODE XREF: KeReleaseMutant+13C↑j
                                        ; KeReleaseMutant+145↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14023CC0F:                          ; CODE XREF: KeReleaseMutant+246↑j
                cmp     [rcx], rdx
                jnz     short loc_14023CC08
                mov     [rcx], rax
                mov     [rax+8], rcx
                movzx   eax, byte ptr [rdx+10h]
                cmp     al, 1
                jnz     loc_14023CD00
                movzx   r8d, word ptr [rdx+12h]
                lea     r9, [rsp+0E8h+var_78]
                mov     rcx, [rsp+0E8h+var_A8]
                call    sub_14023CD30
                test    al, al
                jz      loc_14023CD1B
                sub     dword ptr [rbx+4], 1
                jz      loc_14023CB44
                jmp     loc_14023CD1B
; ---------------------------------------------------------------------------

loc_14023CC52:                          ; CODE XREF: KeReleaseMutant+96↑j
                                        ; KeReleaseMutant+A6↑j
                movzx   edi, byte ptr [rbx+30h]
                and     dil, 1
                lock and dword ptr [rbx], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042EE7D

loc_14023CC6F:                          ; CODE XREF: KeReleaseMutant+1F24BF↓j
                                        ; KeReleaseMutant+1F24CB↓j ...
                movzx   eax, r10b
                mov     cr8, rax
                test    dil, dil
                jnz     loc_14042EEE4
                mov     ecx, 0C0000046h

loc_14023CC85:                          ; CODE XREF: KeReleaseMutant+1F2529↓j
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023CC8B:                          ; CODE XREF: KeReleaseMutant+126↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14042EC18
                nop     dword ptr [rax+rax+00h]

loc_14023CCA0:                          ; CODE XREF: KeReleaseMutant+2F1↓j
                                        ; KeReleaseMutant+1F225C↓j ...
                lea     rcx, [rsp+0E8h+var_A0]
                call    sub_1402C8C70
                mov     rax, [rbp+40h]
                test    rax, rax
                jnz     short loc_14023CCA0
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jz      loc_14023CADF
                jmp     loc_14042EC3F
; ---------------------------------------------------------------------------
                align 10h

loc_14023CCD0:                          ; CODE XREF: KeReleaseMutant+7F↑j
                                        ; KeReleaseMutant+321↓j ...
                lea     rcx, [rsp+0E8h+arg_0]
                call    sub_1402C8C70
                mov     eax, [rbx]
                test    al, al
                js      short loc_14023CCD0
                lock bts dword ptr [rbx], 7
                jb      short loc_14023CCD0
                mov     rcx, [rsp+0E8h+var_B8]
                mov     r11, 0FFFFFFFFFFFFFFFFh
                mov     r10, [rsp+0E8h+var_90]
                jmp     loc_14023CA45
; ---------------------------------------------------------------------------

loc_14023CD00:                          ; CODE XREF: KeReleaseMutant+261↑j
                cmp     al, 2
                jz      loc_14042EC7E
                mov     rcx, [rsp+0E8h+var_A8]
                xor     r9d, r9d
                mov     r8d, 100h
                call    sub_14023CD30

loc_14023CD1B:                          ; CODE XREF: KeReleaseMutant+27D↑j
                                        ; KeReleaseMutant+28D↑j ...
                cmp     r15, rsi
                jz      loc_14023CB44
                jmp     loc_14023CBF0
KeReleaseMutant endp
