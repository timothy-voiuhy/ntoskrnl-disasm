FsRtlFreeExtraCreateParameterList proc near
                                        ; CODE XREF: sub_1405EB770+FB2↑p
                                        ; sub_14063F270+16↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001408056F6 SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                lea     rbx, [rcx+8]
                xor     esi, esi

loc_14063F338:                          ; CODE XREF: FsRtlFreeExtraCreateParameterList+4E↓j
                mov     rcx, [rbx]
                cmp     rcx, rbx
                jz      short loc_14063F370
                cmp     [rcx+8], rbx
                jnz     FatalListEntryError_69
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     FatalListEntryError_69
                mov     [rbx], rax
                mov     [rax+8], rbx
                mov     [rcx+8], rsi
                mov     [rcx], rsi
                add     rcx, 40h ; '@'
                call    FsRtlFreeExtraCreateParameter
                jmp     short loc_14063F338
; ---------------------------------------------------------------------------

loc_14063F370:                          ; CODE XREF: FsRtlFreeExtraCreateParameterList+1E↑j
                mov     eax, [rdi+4]
                test    al, 4
                jz      loc_1408056FD
                inc     cs:dword_140CDB29C
                movzx   eax, cs:word_140CDB290
                cmp     cs:word_140CDB280, ax
                jnb     short loc_14063F3B1
                mov     rdx, rdi
                lea     rcx, word_140CDB280
                call    ExpInterlockedPushEntrySList

loc_14063F3A0:                          ; CODE XREF: FsRtlFreeExtraCreateParameterList+1C63E8↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14063F3B1:                          ; CODE XREF: FsRtlFreeExtraCreateParameterList+6F↑j
                inc     cs:dword_140CDB2A0
                mov     rcx, rdi
                mov     rax, cs:qword_140CDB2B8
                call    sub_1404079D0
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlFreeExtraCreateParameterList endp
