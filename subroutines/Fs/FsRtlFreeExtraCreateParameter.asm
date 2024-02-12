FsRtlFreeExtraCreateParameter proc near ; CODE XREF: sub_14030D0CC+F3↑p
                                        ; FsRtlCheckOplockEx2+1E8A58↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx-20h]
                xor     edi, edi
                mov     rsi, rcx
                test    rax, rax
                jz      short loc_14063F406
                lea     rdx, [rcx-30h]
                call    sub_1404079D0

loc_14063F406:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+1B↑j
                mov     eax, [rsi-18h]
                test    al, 20h
                jnz     short loc_14063F448

loc_14063F40D:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+72↓j
                                        ; FsRtlFreeExtraCreateParameter+86↓j
                mov     rcx, [rsi-10h]
                test    rcx, rcx
                jz      short loc_14063F488
                mov     eax, [rsi-18h]
                test    al, 40h
                jnz     short loc_14063F47D
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     short loc_14063F495
                lea     rdx, [rsi-48h]
                call    ExpInterlockedPushEntrySList

loc_14063F432:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+A6↓j
                                        ; FsRtlFreeExtraCreateParameter+B3↓j ...
                test    rdi, rdi
                jnz     short loc_14063F468

loc_14063F437:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+9B↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14063F448:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+2B↑j
                mov     rax, cs:qword_140CF4338
                test    rax, rax
                jz      short loc_14063F40D
                mov     rdi, [rsi-8]
                mov     rdx, rsi
                mov     rax, [rax]
                mov     rcx, rdi
                call    sub_1404079D0
                jmp     short loc_14063F40D
; ---------------------------------------------------------------------------

loc_14063F468:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+55↑j
                mov     rax, cs:qword_140CF4338
                mov     rcx, rdi
                mov     rax, [rax+8]
                call    sub_1404079D0
                jmp     short loc_14063F437
; ---------------------------------------------------------------------------

loc_14063F47D:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+3B↑j
                lea     rdx, [rsi-48h]
                call    sub_14030D224
                jmp     short loc_14063F432
; ---------------------------------------------------------------------------

loc_14063F488:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+34↑j
                xor     edx, edx
                lea     rcx, [rsi-48h]
                call    ExFreePoolWithTag
                jmp     short loc_14063F432
; ---------------------------------------------------------------------------

loc_14063F495:                          ; CODE XREF: FsRtlFreeExtraCreateParameter+47↑j
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                lea     rcx, [rsi-48h]
                call    sub_1404079D0
                jmp     short loc_14063F432
FsRtlFreeExtraCreateParameter endp
