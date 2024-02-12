RtlUnicodeStringToOemString proc near   ; CODE XREF: sub_1409B51C0+4D6↓p
                                        ; sub_1409B51C0+612↓p
                                        ; DATA XREF: ...

var_38          = dword ptr -38h
var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E8258 SIZE 00000037 BYTES
; FUNCTION CHUNK AT 0000000140826144 SIZE 00000030 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 40h
                mov     sil, r8b
                mov     rdi, rdx
                mov     rbx, rcx
                and     [rsp+58h+arg_18], 0
                mov     rcx, rdx
                call    RtlxUnicodeStringToOemSize
                mov     ecx, eax
                cmp     eax, 0FFFFh
                ja      loc_140826144
                lea     eax, [rcx-1]
                mov     [rbx], ax
                test    sil, sil
                jnz     short loc_1406F8A79
                cmp     ax, [rbx+2]
                jnb     loc_14082614E

loc_1406F8A29:                          ; CODE XREF: RtlUnicodeStringToOemString+A9↓j
                and     [rsp+58h+var_28], 0

loc_1406F8A2E:                          ; DATA XREF: .rdata:0000000140080AA8↑o
;   __try { // __finally(loc_1407E8258)
                movzx   eax, word ptr [rdi]
                movzx   edx, word ptr [rbx]
                mov     [rsp+58h+var_38], eax
                mov     r9, [rdi+8]
                lea     r8, [rsp+58h+arg_18]
                mov     rcx, [rbx+8]
                call    RtlUnicodeToOemN
                mov     edi, eax
                mov     [rsp+58h+var_28], eax
                test    eax, eax
                js      short loc_1406F8A66
                mov     ecx, [rsp+58h+arg_18]
                mov     rax, [rbx+8]
                mov     byte ptr [rcx+rax], 0
                xor     edi, edi
                mov     [rsp+58h+var_28], edi
;   } // starts at 1406F8A2E

loc_1406F8A66:                          ; CODE XREF: RtlUnicodeStringToOemString+72↑j
                                        ; DATA XREF: .rdata:0000000140080AA8↑o
                test    edi, edi
                js      loc_140826158

loc_1406F8A6E:                          ; CODE XREF: RtlUnicodeStringToOemString+12D77B↓j
                                        ; RtlUnicodeStringToOemString+12D78F↓j
                mov     eax, edi

loc_1406F8A70:                          ; CODE XREF: RtlUnicodeStringToOemString+B0↓j
                                        ; RtlUnicodeStringToOemString+12D769↓j ...
                add     rsp, 40h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F8A79:                          ; CODE XREF: RtlUnicodeStringToOemString+3D↑j
                mov     [rbx+2], cx
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jnz     short loc_1406F8A29
                mov     eax, 0C0000017h
                jmp     short loc_1406F8A70
; } // starts at 1406F89E0
RtlUnicodeStringToOemString endp
