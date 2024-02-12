SeAuditingFileOrGlobalEvents proc near  ; DATA XREF: .pdata:0000000140122928↑o

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rdx
                mov     sil, cl
                xorps   xmm0, xmm0
                lea     rdx, aFile      ; "File"
                xor     ebx, ebx
                lea     rcx, [rax-18h]
                mov     [rax+10h], rbx
                mov     rbp, r8
                movups  xmmword ptr [rax-18h], xmm0
                call    RtlInitUnicodeString
                mov     r9b, 1
                lea     r8, [rsp+38h+var_18]
                xor     edx, edx
                lea     rcx, [rsp+38h+arg_8]
                call    sub_1409262B0
                cmp     eax, 0C0000034h
                jnz     short loc_140921F6B
                movzx   eax, word ptr [rdi+2]
                test    al, 10h
                jz      short loc_140921F67
                test    ax, ax
                jns     short loc_140921F5E
                mov     eax, [rdi+0Ch]
                test    eax, eax
                jz      short loc_140921F67
                add     rax, rdi
                jmp     short loc_140921F62
; ---------------------------------------------------------------------------

loc_140921F5E:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+60↑j
                mov     rax, [rdi+18h]

loc_140921F62:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+6C↑j
                test    rax, rax
                jnz     short loc_140921F6B

loc_140921F67:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+5B↑j
                                        ; SeAuditingFileOrGlobalEvents+67↑j
                xor     al, al
                jmp     short loc_140921FBB
; ---------------------------------------------------------------------------

loc_140921F6B:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+53↑j
                                        ; SeAuditingFileOrGlobalEvents+75↑j
                test    sil, sil
                mov     r9, rbp
                mov     dl, sil
                mov     ecx, 74h ; 't'
                setz    dil
                mov     r8b, dil
                call    sub_140629580
                test    al, al
                jnz     short loc_140921FB7
                mov     r9, rbp
                mov     r8b, dil
                mov     dl, sil
                mov     ecx, 81h
                call    sub_140629580
                test    al, al
                jnz     short loc_140921FB7
                mov     r9, rbp
                mov     r8b, dil
                mov     dl, sil
                mov     ecx, 3
                call    sub_140629580
                test    al, al
                jz      short loc_140921FB9

loc_140921FB7:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+97↑j
                                        ; SeAuditingFileOrGlobalEvents+AE↑j
                mov     bl, 1

loc_140921FB9:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+C5↑j
                mov     al, bl

loc_140921FBB:                          ; CODE XREF: SeAuditingFileOrGlobalEvents+79↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAuditingFileOrGlobalEvents endp
