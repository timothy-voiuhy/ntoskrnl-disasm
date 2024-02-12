PsReferenceProcessFilePointer proc near ; CODE XREF: sub_1402013A4+5E↑p
                                        ; sub_140202D3C+73↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+458h]
                mov     rbx, rcx
                mov     rcx, rdi
                mov     rsi, rdx
                call    sub_14024C840
                test    al, al
                jz      short loc_1405E4D6A
                mov     rcx, [rbx+518h]
                test    rcx, rcx
                jz      short loc_1405E4D62
                call    sub_140267410
                mov     rcx, rax
                call    sub_14026F920
                mov     rcx, rdi
                mov     rbx, rax
                call    sub_14024C380
                xor     eax, eax
                mov     [rsi], rbx

loc_1405E4D51:                          ; CODE XREF: PsReferenceProcessFilePointer+6F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E4D62:                          ; CODE XREF: PsReferenceProcessFilePointer+32↑j
                mov     rcx, rdi
                call    sub_14024C380

loc_1405E4D6A:                          ; CODE XREF: PsReferenceProcessFilePointer+26↑j
                mov     eax, 0C0000001h
                jmp     short loc_1405E4D51
PsReferenceProcessFilePointer endp
