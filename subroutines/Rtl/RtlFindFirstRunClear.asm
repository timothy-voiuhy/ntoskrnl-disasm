RtlFindFirstRunClear proc near          ; CODE XREF: sub_1409B01EC+96↓p
                                        ; DATA XREF: .pdata:00000001400D8678↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                mov     r8d, [rcx]
                xor     r9d, r9d
                mov     rsi, rdx
                mov     r11, rcx
                test    r8d, r8d
                jz      loc_1403559B5
                mov     rdx, [rcx+8]
                or      ebp, 0FFFFFFFFh
                lea     ecx, [r8-1]
                mov     r10d, r9d
                shr     rcx, 5
                lea     rbx, [rdx+rcx*4]
                cmp     rdx, rbx
                jz      short loc_14035590F
                cmp     [rdx], ebp
                jnz     short loc_14035590F
                lea     r10d, [r9+20h]
                add     rdx, 4

loc_1403558FC:                          ; CODE XREF: RtlFindFirstRunClear+5D↓j
                cmp     rdx, rbx
                jnb     short loc_14035590F
                cmp     [rdx], ebp
                jnz     short loc_14035590F
                add     rdx, 4
                add     r10d, 20h ; ' '
                jmp     short loc_1403558FC
; ---------------------------------------------------------------------------

loc_14035590F:                          ; CODE XREF: RtlFindFirstRunClear+3E↑j
                                        ; RtlFindFirstRunClear+42↑j ...
                cmp     r10d, r8d
                jnb     short loc_140355926
                mov     rax, [r11+8]

loc_140355918:                          ; CODE XREF: RtlFindFirstRunClear+74↓j
                bt      [rax], r10d
                jnb     short loc_140355926
                inc     r10d
                cmp     r10d, r8d
                jb      short loc_140355918

loc_140355926:                          ; CODE XREF: RtlFindFirstRunClear+62↑j
                                        ; RtlFindFirstRunClear+6C↑j
                mov     r8d, r9d
                cmp     rdx, rbx
                jz      short loc_140355946
                mov     ecx, [rdx]
                lea     rax, qword_140011060
                mov     edi, r10d
                and     edi, 1Fh
                mov     eax, [rax+rdi*4]
                not     eax
                and     eax, ecx
                jz      short loc_14035598A

loc_140355946:                          ; CODE XREF: RtlFindFirstRunClear+7C↑j
                                        ; RtlFindFirstRunClear+EF↓j ...
                mov     ecx, [r11]
                lea     eax, [r8+r10]
                cmp     eax, ecx
                jnb     short loc_140355968
                mov     rdx, [r11+8]

loc_140355955:                          ; CODE XREF: RtlFindFirstRunClear+B6↓j
                bt      [rdx], eax
                jb      short loc_140355968
                cmp     r8d, ebp
                jnb     short loc_140355968
                inc     eax
                inc     r8d
                cmp     eax, ecx
                jb      short loc_140355955

loc_140355968:                          ; CODE XREF: RtlFindFirstRunClear+9F↑j
                                        ; RtlFindFirstRunClear+A8↑j ...
                cmp     r8d, ebp
                mov     [rsi], r10d
                mov     r9d, r8d
                cmova   r9d, ebp

loc_140355975:                          ; CODE XREF: RtlFindFirstRunClear+108↓j
                mov     rbx, [rsp+8+arg_8]
                mov     eax, r9d
                mov     rbp, [rsp+8+arg_10]
                mov     rsi, [rsp+8+arg_18]
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14035598A:                          ; CODE XREF: RtlFindFirstRunClear+94↑j
                mov     r8d, 20h ; ' '
                sub     r8d, edi
                cmp     r8d, ebp
                jnb     short loc_140355968
                add     rdx, 4

loc_14035599C:                          ; CODE XREF: RtlFindFirstRunClear+101↓j
                cmp     rdx, rbx
                jnb     short loc_140355946
                cmp     [rdx], r9d
                jnz     short loc_140355946
                add     rdx, 4
                add     r8d, 20h ; ' '
                cmp     r8d, ebp
                jb      short loc_14035599C
                jmp     short loc_140355968
; ---------------------------------------------------------------------------

loc_1403559B5:                          ; CODE XREF: RtlFindFirstRunClear+1F↑j
                mov     [rdx], r9d
                jmp     short loc_140355975
RtlFindFirstRunClear endp
