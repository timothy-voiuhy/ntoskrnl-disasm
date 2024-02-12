HalBugCheckSystem proc near             ; DATA XREF: .pdata:00000001400EE734↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                movzx   edi, word ptr [rdx+0Ah]
                xor     r9d, r9d
                mov     r8, rdx
                mov     r11d, r9d
                sub     rdx, 0FFFFFFFFFFFFFF80h
                mov     ebx, r9d
                test    edi, edi
                jz      loc_1404B9437
                lea     r10, [rdx+10h]

loc_1404B93AF:                          ; CODE XREF: HalBugCheckSystem+A3↓j
                mov     rax, [r10]
                sub     rax, qword ptr cs:xmmword_1400308E0
                jnz     short loc_1404B93C6
                mov     rax, [r10+8]
                sub     rax, qword ptr cs:xmmword_1400308E0+8

loc_1404B93C6:                          ; CODE XREF: HalBugCheckSystem+39↑j
                test    rax, rax
                jnz     short loc_1404B93FB
                mov     eax, [rdx]
                test    byte ptr [rax+r8+8], 1
                jnz     short loc_1404B9417
                xor     r8d, r8d
                mov     cs:byte_140C49DD0, 1
                mov     edx, 4F4454h
                mov     cs:byte_140C4A251, 1
                mov     ecx, 80h
                mov     [rsp+38h+var_18], r9
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1404B93FB:                          ; CODE XREF: HalBugCheckSystem+49↑j
                mov     rax, [r10]
                sub     rax, qword ptr cs:xmmword_140030890
                jnz     short loc_1404B9412
                mov     rax, [r10+8]
                sub     rax, qword ptr cs:xmmword_140030890+8

loc_1404B9412:                          ; CODE XREF: HalBugCheckSystem+85↑j
                test    rax, rax
                jz      short loc_1404B9427

loc_1404B9417:                          ; CODE XREF: HalBugCheckSystem+53↑j
                add     rdx, 48h ; 'H'
                add     r10, 48h ; 'H'
                inc     ebx
                cmp     ebx, edi
                jb      short loc_1404B93AF
                jmp     short loc_1404B9437
; ---------------------------------------------------------------------------

loc_1404B9427:                          ; CODE XREF: HalBugCheckSystem+95↑j
                mov     eax, [rdx]
                mov     r9, [rax+r8+28h]
                mov     r11d, [rax+r8+28h]
                shr     r9, 20h

loc_1404B9437:                          ; CODE XREF: HalBugCheckSystem+25↑j
                                        ; HalBugCheckSystem+A5↑j
                movsxd  rdx, dword ptr [rcx+8]
                mov     ecx, 124h
                mov     [rsp+38h+var_18], r11
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
HalBugCheckSystem endp
