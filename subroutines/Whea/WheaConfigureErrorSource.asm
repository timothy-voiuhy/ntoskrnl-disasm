WheaConfigureErrorSource proc near      ; CODE XREF: WheaAddErrorSourceDeviceDriver+74↑p
                                        ; sub_140A65D7C+12D↓p ...

var_48          = dword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A87AC SIZE 00000045 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                movsxd  rsi, ecx
                mov     rdi, rdx
                cmp     esi, 10h
                ja      loc_1409A87E6
                lea     rax, unk_140CF4540
                mov     rbx, rsi
                lea     r12, qword_140C15EE0
                shl     rbx, 6
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r12
                add     rbx, rax
                mov     r14d, 0C0000001h
                call    sub_140244C10
                mov     rbp, rax
                xor     eax, eax
                lea     r13d, [rax+11h]
                lock cmpxchg cs:qword_140C15EE0, r13
                jnz     loc_1409A1D81

loc_1409A1C8E:                          ; CODE XREF: WheaConfigureErrorSource+16F↓j
                xor     r15d, r15d
                test    rbp, rbp
                jz      short loc_1409A1C9A
                or      byte ptr [rbp+1Ah], 1

loc_1409A1C9A:                          ; CODE XREF: WheaConfigureErrorSource+74↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140244C10
                lock bts qword ptr [rbx], 0
                mov     rbp, rax
                jb      loc_1409A87AC

loc_1409A1CB6:                          ; CODE XREF: WheaConfigureErrorSource+6B9B↓j
                test    rbp, rbp
                jz      short loc_1409A1CBF
                or      byte ptr [rbp+1Ah], 1

loc_1409A1CBF:                          ; CODE XREF: WheaConfigureErrorSource+99↑j
                mov     al, [rbx+8]
                test    al, al
                jnz     short loc_1409A1D30
                mov     eax, [rdi]
                mov     [rbx+0Ch], eax
                mov     rax, [rdi+8]
                test    rax, rax
                jz      short loc_1409A1CD8
                mov     [rbx+10h], rax

loc_1409A1CD8:                          ; CODE XREF: WheaConfigureErrorSource+B2↑j
                mov     rax, [rdi+10h]
                test    rax, rax
                jz      short loc_1409A1CE5
                mov     [rbx+18h], rax

loc_1409A1CE5:                          ; CODE XREF: WheaConfigureErrorSource+BF↑j
                mov     rax, [rdi+18h]
                test    rax, rax
                jz      short loc_1409A1CF2
                mov     [rbx+20h], rax

loc_1409A1CF2:                          ; CODE XREF: WheaConfigureErrorSource+CC↑j
                mov     rax, [rdi+20h]
                test    rax, rax
                jnz     short loc_1409A1D0C
                cmp     esi, 0Bh
                jle     short loc_1409A1D10
                cmp     esi, 0Eh
                jz      short loc_1409A1D10
                lea     rax, sub_1405BD2B0

loc_1409A1D0C:                          ; CODE XREF: WheaConfigureErrorSource+D9↑j
                mov     [rbx+28h], rax

loc_1409A1D10:                          ; CODE XREF: WheaConfigureErrorSource+DE↑j
                                        ; WheaConfigureErrorSource+E3↑j
                mov     rax, [rdi+28h]
                test    rax, rax
                jnz     short loc_1409A1D94

loc_1409A1D19:                          ; CODE XREF: WheaConfigureErrorSource+178↓j
                lock or [rsp+48h+var_48], r15d
                mov     byte ptr [rbx+8], 1
                mov     al, cs:byte_140CDAF8D
                test    al, al
                jnz     loc_1409A87C0

loc_1409A1D30:                          ; CODE XREF: WheaConfigureErrorSource+A4↑j
                                        ; WheaConfigureErrorSource+6BAA↓j
                or      rcx, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rcx
                test    cl, 2
                jnz     loc_1409A87CF

loc_1409A1D42:                          ; CODE XREF: WheaConfigureErrorSource+6BB2↓j
                                        ; WheaConfigureErrorSource+6BC1↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rax, r13
                lock cmpxchg cs:qword_140C15EE0, r15
                jnz     short loc_1409A1D9D

loc_1409A1D58:                          ; CODE XREF: WheaConfigureErrorSource+185↓j
                mov     rcx, r12
                call    sub_140243660

loc_1409A1D60:                          ; CODE XREF: WheaConfigureErrorSource+6BCC↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, r14d
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A1D81:                          ; CODE XREF: WheaConfigureErrorSource+68↑j
                mov     r8, r12
                mov     rdx, rbp
                mov     rcx, r12
                call    sub_1402F6140
                jmp     loc_1409A1C8E
; ---------------------------------------------------------------------------

loc_1409A1D94:                          ; CODE XREF: WheaConfigureErrorSource+F7↑j
                mov     [rbx+30h], rax
                jmp     loc_1409A1D19
; ---------------------------------------------------------------------------

loc_1409A1D9D:                          ; CODE XREF: WheaConfigureErrorSource+136↑j
                mov     rcx, r12
                call    ExfReleasePushLockShared
                jmp     short loc_1409A1D58
WheaConfigureErrorSource endp
