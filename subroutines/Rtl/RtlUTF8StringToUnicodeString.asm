RtlUTF8StringToUnicodeString proc near  ; CODE XREF: sub_140769624+DCFBD↑p
                                        ; DATA XREF: .pdata:000000014012243C↑o

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rdx
                mov     sil, r8b
                movzx   edx, word ptr [rdx]
                lea     r8, [rax+10h]
                mov     rbx, rcx
                xor     ebp, ebp
                inc     edx
                mov     [rax+10h], ebp
                mov     rcx, [rdi+8]
                mov     [rax+20h], ebp
                call    sub_14058F268
                test    eax, eax
                js      loc_14091AF58
                mov     eax, [rsp+48h+arg_8]
                cmp     eax, 0FFFEh
                jbe     short loc_14091AEBE
                mov     eax, 0C00000F0h
                jmp     loc_14091AF58
; ---------------------------------------------------------------------------

loc_14091AEBE:                          ; CODE XREF: RtlUTF8StringToUnicodeString+42↑j
                movzx   ecx, ax
                mov     r8d, 2
                sub     cx, r8w
                mov     [rbx], cx
                test    sil, sil
                jz      short loc_14091AEF4
                mov     rcx, rax
                mov     [rbx+2], ax
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jnz     short loc_14091AEEF
                mov     eax, 0C0000017h
                jmp     short loc_14091AF58
; ---------------------------------------------------------------------------

loc_14091AEEF:                          ; CODE XREF: RtlUTF8StringToUnicodeString+76↑j
                movzx   ecx, word ptr [rbx]
                jmp     short loc_14091AF08
; ---------------------------------------------------------------------------

loc_14091AEF4:                          ; CODE XREF: RtlUTF8StringToUnicodeString+61↑j
                movzx   eax, word ptr [rbx+2]
                movzx   edx, cx
                add     rdx, r8
                cmp     rdx, rax
                ja      short loc_14091AF53
                cmp     rdx, r8
                jb      short loc_14091AF53

loc_14091AF08:                          ; CODE XREF: RtlUTF8StringToUnicodeString+82↑j
                movzx   eax, word ptr [rdi]
                lea     r8, [rsp+48h+arg_18]
                mov     r9, [rdi+8]
                movzx   edx, cx
                mov     rcx, [rbx+8]
                mov     [rsp+48h+var_28], eax
                call    RtlUTF8ToUnicodeN
                mov     edi, eax
                test    eax, eax
                js      short loc_14091AF3D
                mov     ecx, [rsp+48h+arg_18]
                mov     edi, ebp
                mov     rax, [rbx+8]
                shr     rcx, 1
                mov     [rax+rcx*2], bp
                jmp     short loc_14091AF4F
; ---------------------------------------------------------------------------

loc_14091AF3D:                          ; CODE XREF: RtlUTF8StringToUnicodeString+B8↑j
                test    sil, sil
                jz      short loc_14091AF4F
                mov     rcx, [rbx+8]
                call    ExFreePoolWithTag
                mov     [rbx+8], rbp

loc_14091AF4F:                          ; CODE XREF: RtlUTF8StringToUnicodeString+CB↑j
                                        ; RtlUTF8StringToUnicodeString+D0↑j
                mov     eax, edi
                jmp     short loc_14091AF58
; ---------------------------------------------------------------------------

loc_14091AF53:                          ; CODE XREF: RtlUTF8StringToUnicodeString+91↑j
                                        ; RtlUTF8StringToUnicodeString+96↑j
                mov     eax, 80000005h

loc_14091AF58:                          ; CODE XREF: RtlUTF8StringToUnicodeString+33↑j
                                        ; RtlUTF8StringToUnicodeString+49↑j ...
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUTF8StringToUnicodeString endp
