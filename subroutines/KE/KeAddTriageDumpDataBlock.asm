KeAddTriageDumpDataBlock proc near      ; CODE XREF: sub_1403CC478+E7A5E↓p
                                        ; sub_140592FA4+2C4↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B2F82 SIZE 00000048 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rbp, r8
                mov     rsi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_1403C9DAE
                xor     r8d, r8d
                call    sub_1403C9DBC
                test    al, al
                jz      short loc_1403C9DAE
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1403C9E9C
                test    al, al
                jz      short loc_1403C9DAE
                test    rbp, rbp
                jz      short loc_1403C9D88
                mov     r9d, [rbx+10h]
                lea     rdx, [rsi+rbp]
                test    r9d, r9d
                jnz     loc_1404B2F82

loc_1403C9D59:                          ; CODE XREF: KeAddTriageDumpDataBlock+E92C5↓j
                cmp     r9d, [rbx+14h]
                jz      short loc_1403C9DA0
                mov     eax, [rbx+1Ch]
                sub     rdx, rsi
                sub     eax, [rbx+18h]
                cmp     rdx, rax
                ja      short loc_1403C9DA7
                mov     ecx, edi
                lea     rax, [rcx+3]
                add     rcx, rcx
                add     rax, rax
                mov     [rbx+rcx*8+38h], rdx
                mov     [rbx+rax*8], rsi
                inc     dword ptr [rbx+10h]
                add     [rbx+18h], edx

loc_1403C9D88:                          ; CODE XREF: KeAddTriageDumpDataBlock+46↑j
                                        ; KeAddTriageDumpDataBlock+E92AC↓j
                xor     eax, eax

loc_1403C9D8A:                          ; CODE XREF: KeAddTriageDumpDataBlock+A5↓j
                                        ; KeAddTriageDumpDataBlock+AC↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403C9DA0:                          ; CODE XREF: KeAddTriageDumpDataBlock+5D↑j
                mov     eax, 0C0000023h
                jmp     short loc_1403C9D8A
; ---------------------------------------------------------------------------

loc_1403C9DA7:                          ; CODE XREF: KeAddTriageDumpDataBlock+6B↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1403C9D8A
; ---------------------------------------------------------------------------

loc_1403C9DAE:                          ; CODE XREF: KeAddTriageDumpDataBlock+22↑j
                                        ; KeAddTriageDumpDataBlock+32↑j ...
                mov     eax, 0C000000Dh
                jmp     short loc_1403C9D8A
KeAddTriageDumpDataBlock endp
