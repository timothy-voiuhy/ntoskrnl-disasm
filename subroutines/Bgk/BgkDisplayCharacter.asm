BgkDisplayCharacter proc near           ; DATA XREF: .pdata:000000014012BF94↑o

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     ebx, r9d
                mov     edi, r8d
                mov     esi, edx
                movzx   ebp, cx
                call    sub_1404FFA78
                xor     ecx, ecx
                test    al, al
                jnz     short loc_1409F8371
                mov     eax, 0C0000001h
                jmp     short loc_1409F83BE
; ---------------------------------------------------------------------------

loc_1409F8371:                          ; CODE XREF: BgkDisplayCharacter+28↑j
                cmp     cs:byte_140C505C5, cl
                jnz     short loc_1409F8381
                cmp     cs:byte_140C505C4, cl
                jz      short loc_1409F8392

loc_1409F8381:                          ; CODE XREF: BgkDisplayCharacter+37↑j
                mov     cs:byte_140C505C5, cl
                mov     cs:byte_140C505C4, cl
                call    sub_1409F3524

loc_1409F8392:                          ; CODE XREF: BgkDisplayCharacter+3F↑j
                mov     ecx, [rsp+38h+arg_20]
                mov     r9d, ebx
                mov     rax, cs:qword_140C50A00
                mov     r8d, edi
                mov     [rsp+38h+var_18], ecx
                mov     edx, esi
                movzx   ecx, bp
                mov     rax, [rax+20h]
                call    sub_1404079D0
                mov     ebx, eax
                call    sub_1404FFAC4
                mov     eax, ebx

loc_1409F83BE:                          ; CODE XREF: BgkDisplayCharacter+2F↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
BgkDisplayCharacter endp
