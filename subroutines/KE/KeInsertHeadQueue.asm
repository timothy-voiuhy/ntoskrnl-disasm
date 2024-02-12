KeInsertHeadQueue proc near             ; DATA XREF: .pdata:00000001400F3B04↑o

var_28          = byte ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rdi, rdx
                lea     rbp, [rcx+8]
                mov     rbx, rcx
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14051B14E
                test    al, 1
                jz      short loc_14051B14E
                cmp     r15b, 0Fh
                ja      short loc_14051B14E
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r15b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14051B14E:                          ; CODE XREF: KeInsertHeadQueue+37↑j
                                        ; KeInsertHeadQueue+3B↑j ...
                mov     rsi, gs:20h
                test    dword ptr cs:xmmword_140CFC480+4, 1000000h
                mov     r14, [rsi+8]
                jz      short loc_14051B17D
                mov     rcx, r14
                call    sub_1405131B4
                mov     r8b, al
                mov     rcx, r14
                mov     rdx, rdi
                call    sub_1405A7A60

loc_14051B17D:                          ; CODE XREF: KeInsertHeadQueue+85↑j
                mov     rcx, rbx
                call    sub_1402AF4F0
                mov     eax, [rbx+4]
                mov     [rsp+48h+arg_0], eax
                cmp     [rbp+0], rbp
                jz      short loc_14051B1C2
                mov     eax, [rbx+28h]
                cmp     eax, [rbx+2Ch]
                jnb     short loc_14051B1C2
                mov     rax, [r14+0E8h]
                cmp     rax, rbx
                jnz     short loc_14051B1B0
                cmp     byte ptr [r14+283h], 0Fh
                jz      short loc_14051B1C2

loc_14051B1B0:                          ; CODE XREF: KeInsertHeadQueue+C4↑j
                mov     r8, rdi
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402AF540
                test    al, al
                jnz     short loc_14051B202

loc_14051B1C2:                          ; CODE XREF: KeInsertHeadQueue+B0↑j
                                        ; KeInsertHeadQueue+B8↑j ...
                mov     edx, [rbx+4]
                lea     eax, [rdx+1]
                mov     [rbx+4], eax
                lea     rax, [rbx+18h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jz      short loc_14051B1DF
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14051B1DF:                          ; CODE XREF: KeInsertHeadQueue+F6↑j
                mov     [rdi], rcx
                mov     [rdi+8], rax
                mov     [rcx+8], rdi
                mov     [rax], rdi
                test    edx, edx
                jnz     short loc_14051B202
                cmp     [rbp+0], rbp
                jz      short loc_14051B202
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402C2EC0

loc_14051B202:                          ; CODE XREF: KeInsertHeadQueue+E0↑j
                                        ; KeInsertHeadQueue+10F↑j ...
                lock and dword ptr [rbx], 0FFFFFF7Fh
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15b
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [r9+1]
                call    sub_14023E110
                mov     eax, [rsp+48h+arg_0]
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInsertHeadQueue endp
