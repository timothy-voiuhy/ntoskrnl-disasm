KeEnumerateNextProcessor proc near      ; CODE XREF: sub_140259F00+3C5↑p
                                        ; sub_14025ADF0+133↓p ...

arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 00000001404384E0 SIZE 0000001D BYTES

                mov     rax, [rdx]
                mov     r9, rcx
                mov     [rsp+arg_8], 0
                test    rax, rax
                jz      short loc_14025A508
                movzx   r8d, word ptr [rax]

loc_14025A4B7:                          ; CODE XREF: KeEnumerateNextProcessor+70↓j
                mov     rcx, [rdx+8]
                test    rcx, rcx
                jz      short loc_14025A4F0

loc_14025A4C0:                          ; CODE XREF: KeEnumerateNextProcessor+1DE058↓j
                bsf     r8, rcx
                movzx   eax, r8b
                btr     rcx, rax
                movzx   eax, r8b
                mov     [rdx+8], rcx
                movzx   ecx, word ptr [rdx+10h]
                shl     ecx, 6
                add     eax, ecx
                lea     rcx, dword_140D024D0
                mov     eax, [rcx+rax*4]
                mov     [r9], eax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14025A4F0:                          ; CODE XREF: KeEnumerateNextProcessor+1E↑j
                                        ; KeEnumerateNextProcessor+1DE052↓j
                inc     word ptr [rdx+10h]
                movzx   eax, word ptr [rdx+10h]
                cmp     eax, r8d
                jb      loc_1404384E0
                mov     eax, 0C0000225h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14025A508:                          ; CODE XREF: KeEnumerateNextProcessor+11↑j
                movzx   r8d, word ptr [rdx+10h]
                inc     r8d
                jmp     short loc_14025A4B7
KeEnumerateNextProcessor endp
