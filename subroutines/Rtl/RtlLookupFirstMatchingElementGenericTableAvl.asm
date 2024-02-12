RtlLookupFirstMatchingElementGenericTableAvl proc near
                                        ; DATA XREF: .pdata:00000001400DC800↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     qword ptr [r8], 0
                mov     rdi, r8
                and     qword ptr [rax+18h], 0
                lea     r8, [rax+18h]
                mov     r15, rdx
                mov     r14, rcx
                call    sub_140310FFC
                cmp     eax, 1
                jz      short loc_1403949C4
                xor     eax, eax

loc_1403949AA:                          ; CODE XREF: RtlLookupFirstMatchingElementGenericTableAvl+8E↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403949C4:                          ; CODE XREF: RtlLookupFirstMatchingElementGenericTableAvl+36↑j
                mov     rbx, [rsp+38h+arg_10]

loc_1403949C9:                          ; CODE XREF: RtlLookupFirstMatchingElementGenericTableAvl+85↓j
                mov     rcx, rbx
                mov     rsi, rbx
                mov     rbp, rbx
                call    sub_14035D4BC
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1403949F7
                lea     r8, [rax+20h]
                mov     rdx, r15
                mov     rax, [r14+48h]
                mov     rcx, r14
                call    sub_1404079D0
                cmp     eax, 2
                jz      short loc_1403949C9

loc_1403949F7:                          ; CODE XREF: RtlLookupFirstMatchingElementGenericTableAvl+6D↑j
                mov     [rdi], rbp
                lea     rax, [rsi+20h]
                jmp     short loc_1403949AA
RtlLookupFirstMatchingElementGenericTableAvl endp
