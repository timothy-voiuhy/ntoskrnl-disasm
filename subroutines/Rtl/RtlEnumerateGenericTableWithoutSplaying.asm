RtlEnumerateGenericTableWithoutSplaying proc near
                                        ; DATA XREF: .rdata:00000001400876E8↑o
                                        ; .pdata:00000001400D8EE8↑o

; FUNCTION CHUNK AT 000000014048931E SIZE 00000016 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     rbx, rdx
                test    rax, rax
                jnz     short loc_14035C6C8

loc_14035C6C1:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplaying+46↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14035C6C8:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplaying+F↑j
                mov     rcx, [rdx]
                test    rcx, rcx
                jnz     loc_14048931E
                mov     rcx, [rax+8]
                jmp     short loc_14035C6E1
; ---------------------------------------------------------------------------

loc_14035C6DA:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplaying+34↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_14035C6E1:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplaying+28↑j
                test    rcx, rcx
                jnz     short loc_14035C6DA
                mov     [rdx], rax

loc_14035C6E9:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplaying+12CC76↓j
                                        ; RtlEnumerateGenericTableWithoutSplaying+12CC7F↓j
                lea     rcx, [rax+28h]
                neg     rax
                sbb     rax, rax
                and     rax, rcx
                jmp     short loc_14035C6C1
RtlEnumerateGenericTableWithoutSplaying endp
