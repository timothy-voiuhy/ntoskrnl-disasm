RtlRestoreContext proc near             ; CODE XREF: sub_1402A9ED8+42↑p
                                        ; DATA XREF: .rdata:0000000140008E48↑o ...

var_488         = qword ptr -488h
var_428         = qword ptr -428h
var_s0          = qword ptr  0
var_s8          = word ptr  8
var_s10         = dword ptr  10h
var_s18         = qword ptr  18h
var_s20         = word ptr  20h

                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rbp, rsp
                test    rdx, rdx
                jz      loc_140407252
                cmp     dword ptr [rdx], 80000029h
                jnz     short loc_140407146
                cmp     dword ptr [rdx+18h], 1
                jnb     loc_14040739F

loc_140407146:                          ; CODE XREF: RtlRestoreContext+1A↑j
                cmp     dword ptr [rdx], 80000026h
                jnz     loc_140407252
                mov     rax, [rdx+20h]
                mov     r8, [rax+8]
                mov     [rcx+90h], r8
                mov     r8, [rax+10h]
                mov     [rcx+98h], r8
                mov     r8, [rax+18h]
                mov     [rcx+0A0h], r8
                mov     r8, [rax+20h]
                mov     [rcx+0A8h], r8
                mov     r8, [rax+28h]
                mov     [rcx+0B0h], r8
                mov     r8, [rax+30h]
                mov     [rcx+0D8h], r8
                mov     r8, [rax+38h]
                mov     [rcx+0E0h], r8
                mov     r8, [rax+40h]
                mov     [rcx+0E8h], r8
                mov     r8, [rax+48h]
                mov     [rcx+0F0h], r8
                mov     r8, [rax+50h]
                mov     [rcx+0F8h], r8
                mov     r8d, [rax+58h]
                mov     [rcx+34h], r8d
                movaps  xmm0, xmmword ptr [rax+60h]
                movaps  xmmword ptr [rcx+200h], xmm0
                movaps  xmm0, xmmword ptr [rax+70h]
                movaps  xmmword ptr [rcx+210h], xmm0
                movaps  xmm0, xmmword ptr [rax+80h]
                movaps  xmmword ptr [rcx+220h], xmm0
                movaps  xmm0, xmmword ptr [rax+90h]
                movaps  xmmword ptr [rcx+230h], xmm0
                movaps  xmm0, xmmword ptr [rax+0A0h]
                movaps  xmmword ptr [rcx+240h], xmm0
                movaps  xmm0, xmmword ptr [rax+0B0h]
                movaps  xmmword ptr [rcx+250h], xmm0
                movaps  xmm0, xmmword ptr [rax+0C0h]
                movaps  xmmword ptr [rcx+260h], xmm0
                movaps  xmm0, xmmword ptr [rax+0D0h]
                movaps  xmmword ptr [rcx+270h], xmm0
                movaps  xmm0, xmmword ptr [rax+0E0h]
                movaps  xmmword ptr [rcx+280h], xmm0
                movaps  xmm0, xmmword ptr [rax+0F0h]
                movaps  xmmword ptr [rcx+290h], xmm0

loc_140407252:                          ; CODE XREF: RtlRestoreContext+E↑j
                                        ; RtlRestoreContext+2C↑j
                mov     eax, [rcx+30h]
                and     eax, 0FFFFFFBFh
                cmp     eax, 10000Fh
                jz      short loc_140407271

loc_14040725F:                          ; DATA XREF: sub_1404073F0+21↓o
                xor     edx, edx
                call    sub_1403FA440
                mov     rsp, rbp
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------

loc_140407271:                          ; CODE XREF: RtlRestoreContext+13D↑j
                movaps  xmm0, xmmword ptr [rcx+1A0h]
                movaps  xmm1, xmmword ptr [rcx+1B0h]
                movaps  xmm2, xmmword ptr [rcx+1C0h]
                movaps  xmm3, xmmword ptr [rcx+1D0h]
                movaps  xmm4, xmmword ptr [rcx+1E0h]
                movaps  xmm5, xmmword ptr [rcx+1F0h]
                movaps  xmm6, xmmword ptr [rcx+200h]
                movaps  xmm7, xmmword ptr [rcx+210h]
                movaps  xmm8, xmmword ptr [rcx+220h]
                movaps  xmm9, xmmword ptr [rcx+230h]
                movaps  xmm10, xmmword ptr [rcx+240h]
                movaps  xmm11, xmmword ptr [rcx+250h]
                movaps  xmm12, xmmword ptr [rcx+260h]
                movaps  xmm13, xmmword ptr [rcx+270h]
                movaps  xmm14, xmmword ptr [rcx+280h]
                movaps  xmm15, xmmword ptr [rcx+290h]
                ldmxcsr dword ptr [rcx+34h]
                mov     rsi, rcx
                mov     rdx, [rcx+98h]
                mov     rcx, [rcx+0F8h]
                call    sub_140345260
                mov     rcx, rsi
                mov     ax, [rcx+42h]
                mov     [rsp+var_s20], ax
                mov     rax, [rcx+98h]
                mov     [rsp+var_s18], rax
                mov     eax, [rcx+44h]
                mov     [rsp+var_s10], eax
                mov     ax, [rcx+38h]
                mov     [rsp+var_s8], ax
                mov     rax, [rcx+0F8h]
                mov     [rsp+var_s0], rax
                mov     rax, [rcx+78h]
                mov     rdx, [rcx+88h]
                mov     r8, [rcx+0B8h]
                mov     r9, [rcx+0C0h]
                mov     r10, [rcx+0C8h]
                mov     r11, [rcx+0D0h]
                cli
                mov     rbx, [rcx+90h]
                mov     rsi, [rcx+0A8h]
                mov     rdi, [rcx+0B0h]
                mov     rbp, [rcx+0A0h]
                mov     r12, [rcx+0D8h]
                mov     r13, [rcx+0E0h]
                mov     r14, [rcx+0E8h]
                mov     r15, [rcx+0F0h]
                mov     rcx, [rcx+80h]
                iretq
; ---------------------------------------------------------------------------

loc_14040739F:                          ; CODE XREF: RtlRestoreContext+20↑j
                sub     rsp, 30h
                mov     r8, rsp
                sub     rsp, 4F0h
                mov     rsi, rcx
                mov     rdi, rsp
                mov     ecx, 9Ah
                rep movsq
                mov     rax, [rsp+520h+var_488]
                mov     [r8+18h], rax
                mov     rax, [rsp+520h+var_428]
                mov     [r8], rax
                mov     rcx, rdx
                lea     rdx, sub_1404073F0
                jmp     rdx
; ---------------------------------------------------------------------------
                db 3 dup(0CCh)
                db 0CCh
RtlRestoreContext endp ; sp-analysis failed
