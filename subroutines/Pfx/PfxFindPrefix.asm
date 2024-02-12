PfxFindPrefix   proc near               ; DATA XREF: .pdata:0000000140121EC0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, [rcx+8]
                mov     rbp, rcx
                mov     rcx, rdx
                mov     rbx, rdx
                call    sub_140913434
                jmp     short loc_1409134F3
; ---------------------------------------------------------------------------

loc_1409134EC:                          ; CODE XREF: PfxFindPrefix+37↓j
                mov     rbp, rdi
                mov     rdi, [rdi+8]

loc_1409134F3:                          ; CODE XREF: PfxFindPrefix+2A↑j
                cmp     [rdi+2], ax
                jg      short loc_1409134EC
                xor     r15d, r15d
                jmp     short loc_140913533
; ---------------------------------------------------------------------------

loc_1409134FE:                          ; CODE XREF: PfxFindPrefix+78↓j
                lea     rsi, [rdi+10h]
                jmp     short loc_140913527
; ---------------------------------------------------------------------------

loc_140913504:                          ; CODE XREF: PfxFindPrefix+6A↓j
                lea     r14, [rsi-10h]
                mov     rdx, rbx
                mov     rcx, [r14+28h]
                call    sub_1409132B4
                cmp     eax, 3
                jnz     short loc_14091351F
                mov     rsi, [rsi+8]
                jmp     short loc_140913527
; ---------------------------------------------------------------------------

loc_14091351F:                          ; CODE XREF: PfxFindPrefix+57↑j
                test    eax, eax
                jnz     short loc_140913556
                mov     rsi, [rsi+10h]

loc_140913527:                          ; CODE XREF: PfxFindPrefix+42↑j
                                        ; PfxFindPrefix+5D↑j
                test    rsi, rsi
                jnz     short loc_140913504
                mov     rbp, rdi
                mov     rdi, [rdi+8]

loc_140913533:                          ; CODE XREF: PfxFindPrefix+3C↑j
                cmp     [rdi+2], r15w
                jg      short loc_1409134FE
                xor     eax, eax

loc_14091353C:                          ; CODE XREF: PfxFindPrefix+CC↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140913556:                          ; CODE XREF: PfxFindPrefix+61↑j
                mov     eax, 202h
                cmp     [r14], ax
                jnz     short loc_140913589
                mov     rbx, [rdi+8]
                mov     rcx, rsi
                mov     [rdi+8], r15
                mov     [rdi], ax
                call    RtlSplay
                lea     r14, [rax-10h]
                mov     eax, 201h
                mov     [r14], ax
                mov     [rbp+8], r14
                mov     [r14+8], rbx

loc_140913589:                          ; CODE XREF: PfxFindPrefix+9F↑j
                mov     rax, r14
                jmp     short loc_14091353C
PfxFindPrefix   endp

; ---------------------------------------------------------------------------
algn_14091358E:                         ; DATA XREF: .pdata:0000000140121EC0↑o
                align 20h
; Exported entry 1695. PfxInitialize

; =============== S U B R O U T I N E =======================================


