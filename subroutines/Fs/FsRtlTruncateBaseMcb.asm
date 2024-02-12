FsRtlTruncateBaseMcb proc near          ; CODE XREF: FsRtlTruncateLargeMcb+1F↑p
                                        ; DATA XREF: .pdata:00000001400D6284↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rdi, rdx
                mov     rbx, rcx
                test    edx, edx
                jnz     short loc_14032CC83
                and     [rcx+4], edx
                jmp     short loc_14032CCC6
; ---------------------------------------------------------------------------

loc_14032CC83:                          ; CODE XREF: FsRtlTruncateBaseMcb+1C↑j
                cmp     dword ptr [rcx+4], 0
                jbe     short loc_14032CCC6
                dec     edx
                lea     r8, [rsp+28h+arg_0]
                call    sub_14032D7CC
                test    al, al
                jz      short loc_14032CCC6
                mov     eax, [rsp+28h+arg_0]
                mov     r8, [rbx+10h]
                cmp     dword ptr [r8+rax*8+4], 0FFFFFFFFh
                jnz     short loc_14032CCAE
                mov     [rbx+4], eax
                jmp     short loc_14032CCC6
; ---------------------------------------------------------------------------

loc_14032CCAE:                          ; CODE XREF: FsRtlTruncateBaseMcb+47↑j
                lea     ecx, [rax+1]
                mov     [rbx+4], ecx
                cmp     eax, ecx
                jnb     short loc_14032CCC6
                test    ecx, ecx
                jz      short loc_14032CCC6
                cmp     [r8+rax*8], edi
                jbe     short loc_14032CCC6
                mov     [r8+rax*8], edi

loc_14032CCC6:                          ; CODE XREF: FsRtlTruncateBaseMcb+21↑j
                                        ; FsRtlTruncateBaseMcb+27↑j ...
                mov     ecx, [rbx]
                mov     eax, ecx
                mov     esi, [rbx+4]
                shr     eax, 2
                cmp     esi, eax
                jnb     short loc_14032CD4D
                mov     edx, 0Fh
                cmp     ecx, edx
                jbe     short loc_14032CD4D
                movzx   eax, word ptr [rbx+8]
                add     esi, esi
                cmp     esi, edx
                cmovb   esi, edx
                cmp     esi, edx
                jnz     short loc_14032CD0D
                cmp     eax, 1
                jnz     short loc_14032CCFF
                lea     rcx, unk_140CDB800
                call    sub_14030E5D4
                jmp     short loc_14032CD20
; ---------------------------------------------------------------------------

loc_14032CCFF:                          ; CODE XREF: FsRtlTruncateBaseMcb+8F↑j
                lea     rcx, unk_140CDB780
                call    sub_14030E5D4
                jmp     short loc_14032CD20
; ---------------------------------------------------------------------------

loc_14032CD0D:                          ; CODE XREF: FsRtlTruncateBaseMcb+8A↑j
                mov     edx, esi
                mov     ecx, eax
                shl     rdx, 3
                mov     r8d, 6D695346h
                call    ExAllocatePoolWithTag

loc_14032CD20:                          ; CODE XREF: FsRtlTruncateBaseMcb+9D↑j
                                        ; FsRtlTruncateBaseMcb+AB↑j
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14032CD4D
                mov     r8d, [rbx+4]
                mov     rcx, rax
                mov     rdx, [rbx+10h]
                shl     r8, 3
                call    memmove
                mov     rcx, [rbx+10h]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     [rbx+10h], rdi
                mov     [rbx], esi

loc_14032CD4D:                          ; CODE XREF: FsRtlTruncateBaseMcb+72↑j
                                        ; FsRtlTruncateBaseMcb+7B↑j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlTruncateBaseMcb endp
