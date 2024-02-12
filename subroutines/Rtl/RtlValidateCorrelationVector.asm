RtlValidateCorrelationVector proc near  ; CODE XREF: RtlIncrementCorrelationVector+35↑p
                                        ; DATA XREF: .pdata:00000001401221A8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                test    rcx, rcx
                jz      short loc_140917A97
                call    sub_140917C14
                test    eax, eax
                js      short loc_140917A97
                mov     rcx, rdi
                call    sub_140917C38
                mov     rcx, rdi
                mov     esi, eax
                call    sub_14058CFA4
                test    eax, eax
                js      short loc_140917A97
                mov     cl, [rdi]
                cmp     cl, 1
                jnz     short loc_140917AB2
                cmp     esi, 0Fh
                jz      short loc_140917ABC

loc_140917A97:                          ; CODE XREF: RtlValidateCorrelationVector+1A↑j
                                        ; RtlValidateCorrelationVector+23↑j ...
                mov     eax, 0C000000Dh

loc_140917A9C:                          ; CODE XREF: RtlValidateCorrelationVector+DC↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140917AB2:                          ; CODE XREF: RtlValidateCorrelationVector+40↑j
                cmp     cl, 2
                jnz     short loc_140917ABC
                cmp     esi, 15h
                jnz     short loc_140917A97

loc_140917ABC:                          ; CODE XREF: RtlValidateCorrelationVector+45↑j
                                        ; RtlValidateCorrelationVector+65↑j
                inc     esi
                movsxd  rbx, esi
                cmp     byte ptr [rbx+rdi+1], 2Eh ; '.'
                jnz     short loc_140917A97
                movsxd  rbp, eax
                jmp     short loc_140917B25
; ---------------------------------------------------------------------------

loc_140917ACD:                          ; CODE XREF: RtlValidateCorrelationVector+D8↓j
                cmp     byte ptr [rdi+rbx+1], 2Eh ; '.'
                jnz     short loc_140917A97
                inc     esi
                inc     rbx
                xor     ecx, ecx
                movsxd  rdx, esi
                cmp     rbx, rbp
                jge     short loc_140917A97

loc_140917AE3:                          ; CODE XREF: RtlValidateCorrelationVector+A7↓j
                mov     al, [rdi+rbx+1]
                sub     al, 30h ; '0'
                cmp     al, 9
                ja      short loc_140917AF9
                inc     esi
                inc     rbx
                inc     ecx
                cmp     rbx, rbp
                jl      short loc_140917AE3

loc_140917AF9:                          ; CODE XREF: RtlValidateCorrelationVector+9B↑j
                test    ecx, ecx
                jz      short loc_140917A97
                cmp     ecx, 0Ah
                jg      short loc_140917A97
                jnz     short loc_140917B25
                lea     rcx, [rdi+1]
                mov     r8d, 0Ah
                add     rcx, rdx
                lea     rdx, a2147483647 ; "2147483647"
                call    strncmp
                test    eax, eax
                jg      loc_140917A97

loc_140917B25:                          ; CODE XREF: RtlValidateCorrelationVector+7B↑j
                                        ; RtlValidateCorrelationVector+B2↑j
                cmp     rbx, rbp
                jl      short loc_140917ACD
                xor     eax, eax
                jmp     loc_140917A9C
RtlValidateCorrelationVector endp
