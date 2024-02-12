HalDisableInterrupt proc near           ; CODE XREF: sub_1403772C4+50↑p
                                        ; sub_14051936C+F0↓p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_4           = dword ptr  0Ch
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049384E SIZE 000000B6 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                cmp     dword ptr [rcx], 1
                mov     rbx, rcx
                jnz     loc_14049384E
                mov     edi, [rcx+8]
                test    edi, edi
                jz      short loc_14037739A
                cmp     edi, 3
                jnz     loc_14049384E
                xor     ebx, ebx

loc_140377382:                          ; CODE XREF: HalDisableInterrupt+ED↓j
                                        ; HalDisableInterrupt+11C519↓j ...
                mov     rbp, [rsp+28h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14037739A:                          ; CODE XREF: HalDisableInterrupt+25↑j
                mov     esi, [rcx+40h]
                mov     ecx, esi
                lea     edx, [rsi+1]
                call    sub_140379078
                mov     rbp, rax
                test    rax, rax
                jz      loc_14049386E
                mov     eax, [rax+10h]
                xor     r8d, r8d
                mov     [rsp+28h+arg_0], eax
                xor     edx, edx
                mov     ecx, [rbp+14h]
                sub     ecx, [rbp+1Ch]
                add     ecx, esi
                mov     [rsp+28h+arg_4], ecx
                lea     rcx, [rsp+28h+arg_0]
                call    sub_140378EF4
                mov     ecx, [rsp+28h+arg_0]
                call    sub_140378DD0
                mov     rbx, rax
                test    rax, rax
                jz      loc_140493891

loc_1403773EA:                          ; CODE XREF: HalDisableInterrupt+11C54B↓j
                lea     rcx, qword_140C49D80
                call    sub_140378FF0
                mov     edx, [rsp+28h+arg_4]
                mov     rcx, rbx
                sub     edx, [rbp+14h]
                movsxd  rdx, edx
                imul    r8, rdx, 38h ; '8'
                lea     rdx, [rsp+28h+arg_0]
                movzx   edi, al
                add     r8, [rbp+28h]
                and     dword ptr [r8+0Ch], 0FFFFFFEFh
                call    sub_140378C7C
                lea     rcx, qword_140C49D80
                mov     ebx, eax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404938A0

loc_140377439:                          ; CODE XREF: HalDisableInterrupt+11C552↓j
                                        ; HalDisableInterrupt+11C55E↓j ...
                mov     cr8, rdi
                jmp     loc_140377382
HalDisableInterrupt endp
