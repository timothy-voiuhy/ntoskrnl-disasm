RtlLookupElementGenericTable proc near  ; DATA XREF: .pdata:00000001400D5CFC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx]
                mov     rsi, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jz      short loc_1403275F2

loc_1403275AD:                          ; CODE XREF: RtlLookupElementGenericTable+60↓j
                mov     rax, [rdi+28h]
                lea     r8, [rbx+28h]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1403275E9
                cmp     eax, 1
                jz      short loc_1403275F6
                mov     rcx, rbx
                call    RtlSplay
                mov     [rdi], rax
                lea     rax, [rbx+28h]

loc_1403275D8:                          ; CODE XREF: RtlLookupElementGenericTable+64↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403275E9:                          ; CODE XREF: RtlLookupElementGenericTable+32↑j
                mov     rbx, [rbx+8]

loc_1403275ED:                          ; CODE XREF: RtlLookupElementGenericTable+6A↓j
                test    rbx, rbx
                jnz     short loc_1403275AD

loc_1403275F2:                          ; CODE XREF: RtlLookupElementGenericTable+1B↑j
                xor     eax, eax
                jmp     short loc_1403275D8
; ---------------------------------------------------------------------------

loc_1403275F6:                          ; CODE XREF: RtlLookupElementGenericTable+37↑j
                mov     rbx, [rbx+10h]
                jmp     short loc_1403275ED
RtlLookupElementGenericTable endp
