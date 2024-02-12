RtlDeleteElementGenericTableAvl proc near
                                        ; CODE XREF: sub_140372614+75↓p
                                        ; sub_140675E38+30↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     dword ptr [rcx+2Ch], 0
                mov     rsi, rdx
                mov     rdi, rcx
                jz      short loc_140310B2B
                mov     rbx, [rcx+10h]
                nop

loc_140310B00:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+49↓j
                mov     rax, [rdi+48h]
                lea     r8, [rbx+20h]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_140310B22
                cmp     eax, 1
                jnz     short loc_140310B2F
                mov     rbx, [rbx+10h]
                jmp     short loc_140310B26
; ---------------------------------------------------------------------------

loc_140310B22:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+35↑j
                mov     rbx, [rbx+8]

loc_140310B26:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+40↑j
                test    rbx, rbx
                jnz     short loc_140310B00

loc_140310B2B:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+19↑j
                xor     al, al
                jmp     short loc_140310B60
; ---------------------------------------------------------------------------

loc_140310B2F:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+3A↑j
                cmp     rbx, [rdi+38h]
                jz      short loc_140310B71

loc_140310B35:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+9D↓j
                inc     dword ptr [rdi+40h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140310B90
                dec     dword ptr [rdi+2Ch]
                xor     eax, eax
                mov     [rdi+28h], eax
                mov     rdx, rbx
                mov     [rdi+20h], rax
                mov     rcx, rdi
                mov     rax, [rdi+58h]
                call    sub_1404079D0
                mov     al, 1

loc_140310B60:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+4D↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310B71:                          ; CODE XREF: RtlDeleteElementGenericTableAvl+53↑j
                mov     rcx, rbx
                call    sub_14035D4BC
                mov     [rdi+38h], rax
                jmp     short loc_140310B35
RtlDeleteElementGenericTableAvl endp
