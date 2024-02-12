IoUnregisterFileSystem proc near        ; CODE XREF: sub_140910970+15↓p
                                        ; sub_140910970+21↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014084ED34 SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C459A0
                call    ExAcquireResourceExclusiveLite
                lea     rdx, [rdi+50h]
                mov     rax, [rdx]
                test    rax, rax
                jz      short loc_14077BEFA
                cmp     [rax+8], rdx
                jnz     FatalListEntryError_112
                mov     rcx, [rdx+8]
                cmp     [rcx], rdx
                jnz     FatalListEntryError_112
                mov     [rcx], rax
                mov     [rax+8], rcx

loc_14077BEFA:                          ; CODE XREF: IoUnregisterFileSystem+3A↑j
                mov     rbx, cs:qword_140C45AF0
                lea     rsi, qword_140C45AF0

loc_14077BF08:                          ; CODE XREF: IoUnregisterFileSystem+B9↓j
                cmp     rbx, rsi
                jnz     short loc_14077BF48
                inc     cs:dword_140C45900
                lea     rcx, unk_140C459A0
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     dl, 1
                mov     rcx, rdi
                call    sub_1402F0DCC
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14077BF48:                          ; CODE XREF: IoUnregisterFileSystem+6B↑j
                mov     rax, [rbx+18h]
                xor     edx, edx
                mov     rbx, [rbx]
                mov     rcx, rdi
                call    sub_1404079D0
                jmp     short loc_14077BF08
IoUnregisterFileSystem endp
