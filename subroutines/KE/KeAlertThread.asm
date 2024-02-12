KeAlertThread   proc near               ; CODE XREF: sub_140307B7C+F7↑p
                                        ; sub_14035C4F0+12CDBD↓p ...

var_38          = byte ptr -38h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046ACEA SIZE 00000090 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                movsx   r14, dl
                mov     rbx, rcx
                mov     rbp, cr8
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046ACEA

loc_140307D19:                          ; CODE XREF: KeAlertThread+16300C↓j
                                        ; KeAlertThread+163016↓j ...
                mov     r15, gs:20h
                mov     rdi, gs:20h
                and     [rsp+58h+arg_8], 0

loc_140307D30:                          ; CODE XREF: KeAlertThread+11C↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AD2C

loc_140307D40:                          ; CODE XREF: KeAlertThread+163050↓j
                                        ; KeAlertThread+16305F↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140307DD9
                mov     sil, [r14+rbx+72h]
                test    sil, sil
                jnz     short loc_140307D67
                mov     al, [rbx+184h]
                cmp     al, 5
                jz      short loc_140307DA0

loc_140307D61:                          ; CODE XREF: KeAlertThread+C9↓j
                                        ; KeAlertThread+D0↓j ...
                mov     byte ptr [r14+rbx+72h], 1

loc_140307D67:                          ; CODE XREF: KeAlertThread+75↑j
                                        ; KeAlertThread+F5↓j
                mov     rcx, rbx
                call    sub_1403261B0
                xor     edx, edx
                mov     [rsp+58h+var_38], bpl
                mov     r9d, r13d
                mov     rcx, r15
                lea     r8d, [rdx+1]
                call    sub_14023E110
                mov     rbx, [rsp+58h+arg_0]
                mov     al, sil
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140307DA0:                          ; CODE XREF: KeAlertThread+7F↑j
                mov     al, [rbx+70h]
                and     al, 7
                sub     al, 3
                cmp     al, 1
                jbe     short loc_140307D61
                mov     eax, [rbx+74h]
                test    al, 10h
                jz      short loc_140307D61
                cmp     r14b, [rbx+187h]
                jg      short loc_140307D61
                xor     r9d, r9d
                mov     r8d, 101h
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_1402C32B0
                or      byte ptr [rbx+70h], 80h
                test    al, al
                jnz     short loc_140307D67
                jmp     short loc_140307D61
; ---------------------------------------------------------------------------

loc_140307DD9:                          ; CODE XREF: KeAlertThread+67↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AD53

loc_140307DE9:                          ; CODE XREF: KeAlertThread+11A↓j
                                        ; KeAlertThread+163077↓j ...
                lea     rcx, [rsp+58h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140307DE9
                jmp     loc_140307D30
KeAlertThread   endp

; ---------------------------------------------------------------------------
algn_140307E01:                         ; DATA XREF: .rdata:000000014007195C↑o
                                        ; .pdata:00000001400D4100↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140307E10   proc near               ; CODE XREF: sub_1403FED90+80↓p
                                        ; sub_1403FF6E0+80↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046AD7A SIZE 00000056 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     r10, r8
                mov     rbx, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      loc_140307EEA
                mov     r9b, 1

loc_140307E2F:                          ; CODE XREF: sub_140307E10+E6↓j
                movzx   r8d, byte ptr [rbx+2]
                test    r8b, 10h
                jnz     loc_140307F48

loc_140307E3E:                          ; CODE XREF: sub_140307E10+14A↓j
                test    r8b, 20h
                jz      short loc_140307EAC
                mov     rdx, [rcx+8168h]
                mov     rax, [rcx+8170h]
                test    rdx, rdx
                jz      loc_140307F3E
                test    rax, rax
                jz      loc_140307F3E
                cmp     byte ptr [rax+64h], 0
                jnz     loc_14046AD7A
                mov     ecx, [rax+48h]
                mov     eax, [rdx+170h]
                cmp     ecx, eax
                jb      short loc_140307E7D
                mov     ecx, eax

loc_140307E7D:                          ; CODE XREF: sub_140307E10+69↑j
                                        ; sub_140307E10+133↓j ...
                cmp     ecx, 4Bh ; 'K'
                jb      loc_14046AD82
                mov     edx, 3

loc_140307E8B:                          ; CODE XREF: sub_140307E10+162F7C↓j
                movzx   eax, byte ptr [rdi+81B8h]
                add     rax, 0FE8h
                mov     ecx, edx
                lea     rcx, [rax+rcx*2]
                lea     rdx, [rdi+rcx*8]
                mov     rcx, [rdi+rcx*8]
                add     rcx, r10
                mov     [rdx], rcx

loc_140307EAC:                          ; CODE XREF: sub_140307E10+32↑j
                test    r8b, 40h
                jnz     loc_14046AD91

loc_140307EB6:                          ; CODE XREF: sub_140307E10+162F8B↓j
                                        ; sub_140307E10+162F95↓j
                mov     byte ptr [rdi+20h], 0
                test    r9b, r9b
                jz      short loc_140307EFB
                test    r8b, 36h
                jz      loc_14046ADBA
                cmp     qword ptr [rbx+168h], 0
                jnz     loc_14046ADAA

loc_140307ED7:                          ; CODE XREF: sub_140307E10+162FA5↓j
                sti
                test    byte ptr [rbx+2], 4
                jnz     short loc_140307F06

loc_140307EDE:                          ; CODE XREF: sub_140307E10+EF↓j
                                        ; sub_140307E10+104↓j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140307EEA:                          ; CODE XREF: sub_140307E10+16↑j
                mov     rbx, gs:188h
                xor     r9b, r9b
                jmp     loc_140307E2F
; ---------------------------------------------------------------------------

loc_140307EFB:                          ; CODE XREF: sub_140307E10+AD↑j
                test    r8b, 2
                jz      short loc_140307EDE
                jmp     loc_14046ADC0
; ---------------------------------------------------------------------------

loc_140307F06:                          ; CODE XREF: sub_140307E10+CC↑j
                mov     eax, [rbx+78h]
                bt      eax, 0Bh
                jb      short loc_140307F5F
                test    eax, 600h
                jnz     short loc_140307EDE
                mov     rcx, [rbx+68h]
                test    rcx, rcx
                jz      short loc_140307EDE
                mov     eax, [rdi+0D8h]
                add     rcx, rax
                jz      short loc_140307EDE

loc_140307F2A:                          ; CODE XREF: sub_140307E10+12C↓j
                test    byte ptr [rcx+70h], 2
                jnz     short loc_140307F5F
                mov     rcx, [rcx+198h]
                test    rcx, rcx
                jz      short loc_140307EDE
                jmp     short loc_140307F2A
; ---------------------------------------------------------------------------

loc_140307F3E:                          ; CODE XREF: sub_140307E10+45↑j
                                        ; sub_140307E10+4E↑j
                mov     ecx, 64h ; 'd'
                jmp     loc_140307E7D
; ---------------------------------------------------------------------------

loc_140307F48:                          ; CODE XREF: sub_140307E10+28↑j
                movzx   eax, byte ptr [rbx+7Ch]
                mov     rax, [rcx+7EC0h]
                mov     [rcx+7EC8h], rax
                jmp     loc_140307E3E
; ---------------------------------------------------------------------------

loc_140307F5F:                          ; CODE XREF: sub_140307E10+FD↑j
                                        ; sub_140307E10+11E↑j
                mov     r8b, 1
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403087E0
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140307E10   endp

algn_140307F79:                         ; DATA XREF: .rdata:0000000140071980↑o
                                        ; .pdata:00000001400D410C↑o
                align 20h
; Exported entry 1204. KeInsertQueueApc

; =============== S U B R O U T I N E =======================================


