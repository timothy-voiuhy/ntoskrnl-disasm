RtlStronglyEnumerateEntryHashTable proc near
                                        ; DATA XREF: .rdata:0000000140099C1C↑o
                                        ; .pdata:00000001400DC38C↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049D476 SIZE 00000014 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                mov     ebx, [rdx+20h]
                mov     rsi, rdx
                mov     r11d, [rcx+8]
                mov     rdi, rcx
                mov     r8d, ebx
                cmp     ebx, r11d
                jnb     short loc_14038FE69
                lea     r10d, [rbx+80h]
                xor     ebp, ebp
                xchg    ax, ax

loc_14038FE20:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+77↓j
                cmp     r8d, ebx
                jz      short loc_14038FE6D
                mov     rdx, [rdi+20h]
                cmp     r11d, 80h
                jbe     short loc_14038FEA0
                bsr     ecx, r10d
                mov     r9d, 1
                shl     r9d, cl
                xor     r9d, r10d
                lea     eax, [rcx-7]
                mov     rdx, [rdx+rax*8]

loc_14038FE49:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+B3↓j
                mov     eax, r9d
                shl     rax, 4
                add     rax, rdx
                mov     rdx, rax

loc_14038FE56:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+84↓j
                mov     rdx, [rdx]
                cmp     rdx, rax
                jnz     short loc_14038FE76

loc_14038FE5E:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+10D695↓j
                inc     r8d
                inc     r10d
                cmp     r8d, r11d
                jb      short loc_14038FE20

loc_14038FE69:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+23↑j
                xor     eax, eax
                jmp     short loc_14038FE8E
; ---------------------------------------------------------------------------

loc_14038FE6D:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+33↑j
                mov     rdx, [rsi]
                mov     rax, [rsi+18h]
                jmp     short loc_14038FE56
; ---------------------------------------------------------------------------

loc_14038FE76:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+6C↑j
                                        ; RtlStronglyEnumerateEntryHashTable+10D68F↓j
                cmp     [rdx+10h], rbp
                jz      loc_14049D476
                mov     [rsi+18h], rax
                mov     rax, rdx
                mov     [rsi+20h], r8d
                mov     [rsi], rdx

loc_14038FE8E:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+7B↑j
                mov     rbx, [rsp+8+arg_8]
                mov     rbp, [rsp+8+arg_10]
                mov     rsi, [rsp+8+arg_18]
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14038FEA0:                          ; CODE XREF: RtlStronglyEnumerateEntryHashTable+40↑j
                mov     r9d, r8d
                jmp     short loc_14038FE49
RtlStronglyEnumerateEntryHashTable endp
