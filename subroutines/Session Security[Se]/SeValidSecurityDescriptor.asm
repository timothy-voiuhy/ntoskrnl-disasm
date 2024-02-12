SeValidSecurityDescriptor proc near     ; CODE XREF: RtlNormalizeSecurityDescriptor+3F↑p
                                        ; sub_1406299F0+D3↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     edi, ecx
                cmp     ecx, 14h
                jb      loc_140625AAB
                cmp     byte ptr [rdx], 1
                jnz     loc_140625AAB
                xor     esi, esi
                cmp     [rdx+2], si
                jge     loc_140625AAB
                mov     ecx, [rdx+4]
                test    ecx, ecx
                jz      loc_140625AAB
                lea     rax, [rcx+3]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rcx
                jnz     loc_140625AAB
                cmp     ecx, edi
                ja      loc_140625AAB
                mov     r8d, edi
                sub     r8d, ecx
                cmp     r8d, 0Ch
                jb      loc_140625AAB
                cmp     byte ptr [rcx+rdx], 1
                jnz     loc_140625AAB
                movzx   eax, byte ptr [rcx+rdx+1]
                cmp     al, 0Fh
                ja      loc_140625AAB
                lea     eax, ds:8[rax*4]
                cmp     r8d, eax
                jb      loc_140625AAB
                mov     ecx, [rdx+8]
                test    ecx, ecx
                jz      short loc_140625A30
                lea     rax, [rcx+3]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rcx
                jnz     loc_140625AAB
                cmp     ecx, edi
                ja      loc_140625AAB
                mov     r8d, edi
                sub     r8d, ecx
                cmp     r8d, 0Ch
                jb      loc_140625AAB
                cmp     byte ptr [rcx+rdx], 1
                jnz     loc_140625AAB
                movzx   eax, byte ptr [rcx+rdx+1]
                cmp     al, 0Fh
                ja      loc_140625AAB
                lea     eax, ds:8[rax*4]
                cmp     r8d, eax
                jb      short loc_140625AAB

loc_140625A30:                          ; CODE XREF: SeValidSecurityDescriptor+92↑j
                mov     ecx, [rdx+10h]
                test    ecx, ecx
                jz      short loc_140625A65
                lea     rax, [rcx+3]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rcx
                jnz     short loc_140625AAB
                cmp     ecx, edi
                ja      short loc_140625AAB
                mov     edx, edi
                sub     edx, ecx
                cmp     edx, 8
                jb      short loc_140625AAB
                add     rcx, rbx
                movzx   eax, word ptr [rcx+2]
                cmp     edx, eax
                jb      short loc_140625AAB
                call    RtlValidAcl
                test    al, al
                jz      short loc_140625AAB

loc_140625A65:                          ; CODE XREF: SeValidSecurityDescriptor+E5↑j
                mov     ecx, [rbx+0Ch]
                test    ecx, ecx
                jnz     short loc_140625A7F

loc_140625A6C:                          ; CODE XREF: SeValidSecurityDescriptor+159↓j
                mov     al, 1

loc_140625A6E:                          ; CODE XREF: SeValidSecurityDescriptor+15D↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140625A7F:                          ; CODE XREF: SeValidSecurityDescriptor+11A↑j
                lea     rax, [rcx+3]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rcx
                jnz     short loc_140625AAB
                cmp     ecx, edi
                ja      short loc_140625AAB
                sub     edi, ecx
                cmp     edi, 8
                jb      short loc_140625AAB
                add     rcx, rbx
                movzx   edx, word ptr [rcx+2]
                cmp     edi, edx
                jb      short loc_140625AAB
                call    RtlValidAcl
                test    al, al
                jnz     short loc_140625A6C

loc_140625AAB:                          ; CODE XREF: SeValidSecurityDescriptor+17↑j
                                        ; SeValidSecurityDescriptor+20↑j ...
                xor     al, al
                jmp     short loc_140625A6E
SeValidSecurityDescriptor endp
