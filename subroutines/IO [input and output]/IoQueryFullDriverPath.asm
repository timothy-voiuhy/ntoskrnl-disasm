IoQueryFullDriverPath proc near         ; CODE XREF: sub_1408A0B04+52↓p
                                        ; DATA XREF: .pdata:00000001400DDA90↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx+28h]
                mov     rdi, rdx
                test    rbx, rbx
                jz      short loc_1403A6E1F
                movzx   edx, word ptr [rbx+4Ah]
                mov     ecx, 1
                call    sub_14036D5A0
                mov     [rdi+8], rax
                test    rax, rax
                jz      short loc_1403A6E26
                movzx   eax, word ptr [rbx+4Ah]
                lea     rdx, [rbx+48h]
                mov     rcx, rdi
                mov     [rdi+2], ax
                call    RtlCopyUnicodeString
                xor     eax, eax

loc_1403A6E13:                          ; CODE XREF: IoQueryFullDriverPath+54↓j
                                        ; IoQueryFullDriverPath+5B↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A6E1F:                          ; CODE XREF: IoQueryFullDriverPath+14↑j
                mov     eax, 0C0000225h
                jmp     short loc_1403A6E13
; ---------------------------------------------------------------------------

loc_1403A6E26:                          ; CODE XREF: IoQueryFullDriverPath+2B↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1403A6E13
IoQueryFullDriverPath endp
