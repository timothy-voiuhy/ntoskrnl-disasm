RtlRemoveUnicodePrefix proc near        ; DATA XREF: .rdata:000000014007AEE0↑o
                                        ; .pdata:00000001401044CC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014082355C SIZE 000000C9 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rcx+10h], 0
                mov     ebp, 801h
                movzx   eax, word ptr [rdx]
                cmp     ax, bp
                jl      short loc_1406E6060
                lea     esi, [rbp+1]
                cmp     ax, si
                jg      loc_14082355C
                mov     rax, [rdx+10h]
                cmp     rax, rdx
                jnz     loc_14082358C
                lea     rcx, [rdx+18h]
                mov     rdx, [rcx]
                mov     rbx, rcx
                cmp     rdx, rcx
                jz      short loc_1406E601C

loc_1406E600E:                          ; CODE XREF: RtlRemoveUnicodePrefix+5A↓j
                mov     rax, [rdx]
                mov     rbx, rdx
                mov     rdx, rax
                cmp     rax, rbx
                jnz     short loc_1406E600E

loc_1406E601C:                          ; CODE XREF: RtlRemoveUnicodePrefix+4C↑j
                lea     rdi, [rbx-18h]
                call    RtlDelete
                test    rax, rax
                jz      short loc_1406E6076
                cmp     rbx, rax
                jz      short loc_1406E6060
                lea     rdx, [rax-18h]
                mov     rax, [rbx-10h]
                mov     rcx, [rax+8]
                jmp     short loc_1406E6044
; ---------------------------------------------------------------------------

loc_1406E603D:                          ; CODE XREF: RtlRemoveUnicodePrefix+87↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_1406E6044:                          ; CODE XREF: RtlRemoveUnicodePrefix+7B↑j
                cmp     rcx, rdi
                jnz     short loc_1406E603D
                mov     [rdx], bp
                mov     [rax+8], rdx
                mov     rax, [rbx-10h]
                mov     [rdx+8], rax
                and     qword ptr [rbx-10h], 0
                mov     [rdi], si

loc_1406E6060:                          ; CODE XREF: RtlRemoveUnicodePrefix+24↑j
                                        ; RtlRemoveUnicodePrefix+6D↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406E6076:                          ; CODE XREF: RtlRemoveUnicodePrefix+68↑j
                mov     rdx, [rbx-10h]
                mov     rax, rdx
                mov     rcx, [rdx+8]
                jmp     short loc_1406E608A
; ---------------------------------------------------------------------------

loc_1406E6083:                          ; CODE XREF: RtlRemoveUnicodePrefix+CD↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_1406E608A:                          ; CODE XREF: RtlRemoveUnicodePrefix+C1↑j
                cmp     rcx, rdi
                jnz     short loc_1406E6083
                mov     [rax+8], rdx
                jmp     short loc_1406E6060
RtlRemoveUnicodePrefix endp
