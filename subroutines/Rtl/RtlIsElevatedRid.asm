RtlIsElevatedRid proc near              ; CODE XREF: NtQueryInformationToken+100A↑p
                                        ; SeQueryInformationToken+1E4↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                test    rcx, rcx
                jz      short loc_14061E243
                mov     eax, [rcx+8]
                test    al, 30h
                jnz     short loc_14061E243
                mov     rbx, [rcx]
                mov     rcx, rbx
                call    RtlSubAuthorityCountSid
                movzx   edi, byte ptr [rax]
                cmp     dil, 1
                jb      short loc_14061E243
                xor     edx, edx
                mov     rcx, rbx
                call    RtlSubAuthoritySid
                mov     edx, [rax]
                add     edx, 0FFFFFFB0h
                cmp     edx, 1Fh
                jbe     short loc_14061E243
                lea     edx, [rdi-1]
                mov     rcx, rbx
                call    RtlSubAuthoritySid
                xor     ecx, ecx
                mov     edx, [rax]
                lea     rax, qword_1400179C0

loc_14061E234:                          ; CODE XREF: RtlIsElevatedRid+61↓j
                cmp     edx, [rax]
                jz      short loc_14061E251
                inc     ecx
                add     rax, 4
                cmp     ecx, 13h
                jb      short loc_14061E234

loc_14061E243:                          ; CODE XREF: RtlIsElevatedRid+D↑j
                                        ; RtlIsElevatedRid+14↑j ...
                xor     al, al
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14061E251:                          ; CODE XREF: RtlIsElevatedRid+56↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     al, 1
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIsElevatedRid endp
