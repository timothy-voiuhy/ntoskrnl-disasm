KePrepareToDispatchVirtualProcessor proc near
                                        ; DATA XREF: .pdata:00000001400F3B34↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 40h
                mov     rbx, gs:20h
                mov     r10, rdx
                movups  xmm0, cs:xmmword_140CFC4D0
                xor     edx, edx
                mov     rsi, [rsp+48h+arg_20]
                movsd   xmm1, cs:qword_140CFC4E0
                mov     r14, [rsp+48h+arg_28]
                mov     [r10], dl
                mov     [r8], dl
                mov     [r9], dl
                mov     [rsi], dl
                mov     [r14], rdx
                movups  xmmword ptr [rax-28h], xmm0
                movsd   qword ptr [rax-18h], xmm1
                cli
                test    cl, cl
                jz      loc_14051B741
                mov     rax, 1000000000h
                test    [rsp+48h+var_28], rax
                jnz     short loc_14051B646
                mov     byte ptr [r8], 1
                jmp     loc_14051B775
; ---------------------------------------------------------------------------

loc_14051B646:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+6B↑j
                mov     rax, [rbx+8]
                mov     rcx, [rax+220h]
                mov     rdi, [rcx+9E0h]
                test    rdi, rdi
                jnz     short loc_14051B663
                mov     byte ptr [r8], 1
                jmp     short loc_14051B69E
; ---------------------------------------------------------------------------

loc_14051B663:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+8B↑j
                mov     cl, [rbx+0F8h]
                test    cl, 8
                jnz     loc_14051B741
                test    byte ptr [rbx+6D3h], 1
                jz      short loc_14051B684
                test    cl, 10h
                jnz     loc_14051B741

loc_14051B684:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+A9↑j
                test    byte ptr [rsp+48h+var_28], 10h
                jz      short loc_14051B69A
                test    [rsp+48h+var_28], 1000h
                jz      loc_14051B741

loc_14051B69A:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+B9↑j
                mov     byte ptr [r9], 1

loc_14051B69E:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+91↑j
                movzx   eax, word ptr [rbx+0FEh]
                test    al, 2
                jz      short loc_14051B6B2
                xor     ecx, ecx
                call    sub_1402ADF00
                jmp     short loc_14051B6ED
; ---------------------------------------------------------------------------

loc_14051B6B2:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+D7↑j
                mov     al, [rbx+0F8h]
                test    al, 4
                jz      short loc_14051B6D6
                mov     eax, 1
                lea     ecx, [rax+48h]
                wrmsr
                and     byte ptr [rbx+0F8h], 0FBh
                mov     [r10], al
                mov     al, [rbx+0F8h]

loc_14051B6D6:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+EA↑j
                test    al, 20h
                jz      short loc_14051B6E6
                call    sub_140A19740
                and     byte ptr [rbx+0F8h], 0DFh

loc_14051B6E6:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+108↑j
                mov     [rbx+0F0h], rdi

loc_14051B6ED:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+E0↑j
                mov     al, [rbx+0F8h]
                movzx   edx, byte ptr [rbx+6D0h]
                movzx   ecx, byte ptr [rbx+0FBh]
                mov     [rbx+6D2h], al
                mov     rax, 20000000000h
                mov     [rbx+6D1h], dl
                test    [rsp+48h+var_28], rax
                jz      short loc_14051B728
                test    byte ptr [rbx+6D3h], 1
                cmovnz  ecx, edx

loc_14051B728:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+14C↑j
                cmp     [rbx+0FAh], cl
                jz      short loc_14051B775
                movzx   eax, cl
                mov     [r14], rax
                mov     byte ptr [rsi], 1
                mov     [rbx+0FAh], cl
                jmp     short loc_14051B775
; ---------------------------------------------------------------------------

loc_14051B741:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+56↑j
                                        ; KePrepareToDispatchVirtualProcessor+9C↑j ...
                mov     al, [rbx+0F8h]
                test    al, 4
                jz      short loc_14051B765
                mov     eax, 1
                lea     ecx, [rax+48h]
                wrmsr
                and     byte ptr [rbx+0F8h], 0FBh
                mov     [r10], al
                mov     al, [rbx+0F8h]

loc_14051B765:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+179↑j
                test    al, 20h
                jz      short loc_14051B775
                call    sub_140A19740
                and     byte ptr [rbx+0F8h], 0FBh

loc_14051B775:                          ; CODE XREF: KePrepareToDispatchVirtualProcessor+71↑j
                                        ; KePrepareToDispatchVirtualProcessor+15E↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KePrepareToDispatchVirtualProcessor endp
