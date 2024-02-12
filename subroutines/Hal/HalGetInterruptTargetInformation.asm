HalGetInterruptTargetInformation proc near
                                        ; CODE XREF: sub_140A40EB8+9BB↓p
                                        ; DATA XREF: .rdata:00000001400AA77C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404B2BAC SIZE 0000003C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbx, r8
                mov     ebp, edx
                mov     esi, ecx
                test    ecx, ecx
                jnz     loc_1403C97B4

loc_1403C96B8:                          ; CODE XREF: HalGetInterruptTargetInformation+127↓j
                and     qword ptr [r8+4], 0
                and     qword ptr [r8+0Ch], 0
                cmp     cs:byte_140CF4A50, 0
                mov     [r8], esi
                jnz     loc_1404B2BC0
                cmp     cs:byte_140C49770, 0
                jz      loc_1404B2BC0
                mov     al, cs:byte_140C49778
                neg     al
                sbb     edi, edi
                neg     edi
                add     edi, 2

loc_1403C96EE:                          ; CODE XREF: HalGetInterruptTargetInformation+E9535↓j
                xor     ecx, ecx
                mov     [r8+14h], edi
                call    sub_1403C97D8
                test    al, al
                jz      short loc_1403C9704
                mov     dword ptr [rbx+8], 1

loc_1403C9704:                          ; CODE XREF: HalGetInterruptTargetInformation+6B↑j
                mov     eax, cs:dword_140C4A24C
                test    al, al
                js      loc_1404B2BCA

loc_1403C9712:                          ; CODE XREF: HalGetInterruptTargetInformation+E953E↓j
                cmp     esi, 2
                jz      short loc_1403C9796
                mov     edx, cs:dword_140C50780
                xor     ecx, ecx
                mov     eax, 0C0000225h
                test    edx, edx
                jz      short loc_1403C9798
                mov     rsi, cs:qword_140C4BD28

loc_1403C972F:                          ; CODE XREF: HalGetInterruptTargetInformation+B1↓j
                cmp     byte ptr [rsi+0Dh], 0
                jz      short loc_1403C9739
                cmp     [rsi], ebp
                jz      short loc_1403C9745

loc_1403C9739:                          ; CODE XREF: HalGetInterruptTargetInformation+A3↑j
                inc     ecx
                add     rsi, 40h ; '@'
                cmp     ecx, edx
                jb      short loc_1403C972F
                jmp     short loc_1403C9798
; ---------------------------------------------------------------------------

loc_1403C9745:                          ; CODE XREF: HalGetInterruptTargetInformation+A7↑j
                lea     r14, [rsi+10h]
                mov     eax, [r14]
                mov     rcx, r14
                mov     [rbx+4], eax
                call    KeGetProcessorIndexFromNumber
                mov     r8, cs:qword_140C50770
                mov     eax, eax
                lea     rdx, [rax+rax*2]
                cmp     edi, 1
                jz      short loc_1403C97C2
                movzx   eax, word ptr [r14]
                lea     r9, qword_140C4B8E8
                movzx   ecx, byte ptr [rsi+12h]
                mov     rax, [r9+rax*8]
                bt      rax, rcx
                jb      short loc_1403C97C2
                mov     [rbx+14h], edi
                cmp     edi, 2
                jnz     loc_1404B2BD3
                mov     eax, [r8+rdx*8+8]
                mov     [rbx+0Ch], eax

loc_1403C9796:                          ; CODE XREF: HalGetInterruptTargetInformation+85↑j
                                        ; HalGetInterruptTargetInformation+13D↓j ...
                xor     eax, eax

loc_1403C9798:                          ; CODE XREF: HalGetInterruptTargetInformation+96↑j
                                        ; HalGetInterruptTargetInformation+B3↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403C97B4:                          ; CODE XREF: HalGetInterruptTargetInformation+22↑j
                cmp     esi, 2
                jz      loc_1403C96B8
                jmp     loc_1404B2BAC
; ---------------------------------------------------------------------------

loc_1403C97C2:                          ; CODE XREF: HalGetInterruptTargetInformation+D7↑j
                                        ; HalGetInterruptTargetInformation+F0↑j
                and     dword ptr [rbx+0Ch], 0
                mov     dword ptr [rbx+14h], 1
                jmp     short loc_1403C9796
HalGetInterruptTargetInformation endp
