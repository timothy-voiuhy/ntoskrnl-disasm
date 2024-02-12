RtlHashUnicodeString proc near          ; CODE XREF: sub_1402F1EC4+2D↑p
                                        ; sub_140380060+17↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014081D9A8 SIZE 0000000A BYTES

                push    rdi
                xor     r10d, r10d
                mov     rdi, r9
                test    rcx, rcx
                jz      loc_14081D9A8
                test    r9, r9
                jz      loc_14081D9A8
                mov     r11, [rcx+8]
                mov     [r9], r10d
                movzx   r9d, word ptr [rcx]
                shr     r9d, 1
                cmp     r8d, 1
                ja      loc_14081D9A8
                test    r9d, r9d
                jz      short loc_1406CB85C
                test    dl, dl
                jz      loc_1406CB8B0

loc_1406CB81F:                          ; DATA XREF: .rdata:0000000140075AA0↑o
                                        ; .rdata:0000000140075AB4↑o ...
                mov     [rsp+8+arg_8], rsi
                mov     esi, 0C0h
                mov     [rsp+8+arg_0], rbx
                xchg    ax, ax

loc_1406CB830:                          ; CODE XREF: RtlHashUnicodeString+70↓j
                movzx   eax, word ptr [r11]
                lea     r11, [r11+2]
                dec     r9d
                cmp     eax, 61h ; 'a'
                jnb     short loc_1406CB864

loc_1406CB840:                          ; CODE XREF: RtlHashUnicodeString+8D↓j
                                        ; RtlHashUnicodeString+99↓j ...
                imul    r10d, 1003Fh
                movzx   ecx, ax
                add     r10d, ecx
                test    r9d, r9d
                jnz     short loc_1406CB830
                mov     rsi, [rsp+8+arg_8]
                mov     rbx, [rsp+8+arg_0]

loc_1406CB85C:                          ; CODE XREF: RtlHashUnicodeString+35↑j
                                        ; RtlHashUnicodeString+E8↓j
                                        ; DATA XREF: ...
                mov     [rdi], r10d
                xor     eax, eax

loc_1406CB861:                          ; CODE XREF: RtlHashUnicodeString+1521CD↓j
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406CB864:                          ; CODE XREF: RtlHashUnicodeString+5E↑j
                                        ; DATA XREF: .pdata:00000001401034DC↑o ...
                cmp     eax, 7Ah ; 'z'
                ja      short loc_1406CB86F
                sub     ax, 20h ; ' '
                jmp     short loc_1406CB840
; ---------------------------------------------------------------------------

loc_1406CB86F:                          ; CODE XREF: RtlHashUnicodeString+87↑j
                mov     rbx, cs:qword_140D2D020
                test    rbx, rbx
                jz      short loc_1406CB840
                cmp     ax, si
                jb      short loc_1406CB840
                mov     rcx, rax
                mov     r8d, eax
                shr     rcx, 8
                and     r8d, 0Fh
                movzx   edx, word ptr [rbx+rcx*2]
                mov     ecx, eax
                shr     ecx, 4
                and     ecx, 0Fh
                add     edx, ecx
                movzx   edx, word ptr [rbx+rdx*2]
                add     edx, r8d
                add     ax, [rbx+rdx*2]
                jmp     short loc_1406CB840
; ---------------------------------------------------------------------------
                align 10h

loc_1406CB8B0:                          ; CODE XREF: RtlHashUnicodeString+39↑j
                                        ; RtlHashUnicodeString+E6↓j
                                        ; DATA XREF: ...
                movzx   ecx, word ptr [r11]
                lea     r11, [r11+2]
                imul    r10d, 1003Fh
                add     r10d, ecx
                add     r9d, 0FFFFFFFFh
                jnz     short loc_1406CB8B0
                jmp     short loc_1406CB85C
RtlHashUnicodeString endp
