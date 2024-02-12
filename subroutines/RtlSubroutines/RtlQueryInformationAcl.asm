RtlQueryInformationAcl proc near        ; CODE XREF: sub_140201C7C+7A↑p
                                        ; sub_140201C7C+99↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 20h
                xor     esi, esi
                mov     rdi, rcx
                movzx   ecx, byte ptr [rcx]
                mov     rbx, rdx
                mov     [r11+8], rsi
                lea     eax, [rcx-2]
                cmp     al, 2
                ja      short loc_140624F1A
                sub     r9d, 1
                jz      short loc_140624EF9
                cmp     r9d, 1
                jnz     short loc_140624F03
                cmp     r8d, 0Ch
                jb      short loc_140624F13
                lea     rdx, [r11+8]
                mov     rcx, rdi
                call    RtlFirstFreeAce
                test    al, al
                jz      short loc_140624F1A
                mov     rcx, [rsp+28h+arg_0]
                movzx   eax, word ptr [rdi+4]
                mov     [rbx], eax
                test    rcx, rcx
                jz      short loc_140624F0A
                sub     ecx, edi
                mov     [rbx+4], ecx
                movzx   esi, word ptr [rdi+2]
                sub     esi, ecx

loc_140624EE3:                          ; CODE XREF: RtlQueryInformationAcl+91↓j
                mov     [rbx+8], esi

loc_140624EE6:                          ; CODE XREF: RtlQueryInformationAcl+81↓j
                xor     eax, eax

loc_140624EE8:                          ; CODE XREF: RtlQueryInformationAcl+88↓j
                                        ; RtlQueryInformationAcl+98↓j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140624EF9:                          ; CODE XREF: RtlQueryInformationAcl+2A↑j
                cmp     r8d, 4
                jb      short loc_140624F13
                mov     [rdx], ecx
                jmp     short loc_140624EE6
; ---------------------------------------------------------------------------

loc_140624F03:                          ; CODE XREF: RtlQueryInformationAcl+30↑j
                mov     eax, 0C0000003h
                jmp     short loc_140624EE8
; ---------------------------------------------------------------------------

loc_140624F0A:                          ; CODE XREF: RtlQueryInformationAcl+56↑j
                movzx   eax, word ptr [rdi+2]
                mov     [rbx+4], eax
                jmp     short loc_140624EE3
; ---------------------------------------------------------------------------

loc_140624F13:                          ; CODE XREF: RtlQueryInformationAcl+36↑j
                                        ; RtlQueryInformationAcl+7D↑j
                mov     eax, 0C0000023h
                jmp     short loc_140624EE8
; ---------------------------------------------------------------------------

loc_140624F1A:                          ; CODE XREF: RtlQueryInformationAcl+24↑j
                                        ; RtlQueryInformationAcl+46↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140624EE8
RtlQueryInformationAcl endp
