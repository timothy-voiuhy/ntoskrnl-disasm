IoCheckRedirectionTrustLevel proc near  ; DATA XREF: .pdata:00000001400E1504↑o

var_40          = byte ptr -40h
var_30          = byte ptr -30h
var_2F          = byte ptr -2Fh
var_2E          = byte ptr -2Eh
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = byte ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h
arg_20          = qword ptr  50h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     [rbp+var_2F], 0
                mov     ebx, 1
                mov     [rbp+arg_8], bl
                xorps   xmm0, xmm0
                mov     [rbp+var_30], bl
                mov     r12d, ebx
                mov     [rbp+var_2E], 0
                mov     r14b, bl
                mov     r15b, bl
                mov     rdi, r8
                mov     r13d, ecx
                movups  [rbp+var_28], xmm0
                movups  [rbp+var_18], xmm0
                test    dl, dl
                jz      loc_1403F172F
                test    r9d, 0FFFFFFFDh
                jz      loc_1403F172F
                test    r8, r8
                jnz     short loc_1403F16AF
                lea     rcx, [rbp+var_28]
                call    SeCaptureSubjectContext

loc_1403F16AF:                          ; CODE XREF: IoCheckRedirectionTrustLevel+64↑j
                test    rdi, rdi
                lea     rsi, [rbp+var_28]
                lea     r8, [rbp+var_2E]
                cmovnz  rsi, rdi
                lea     rdx, [rbp+var_2F]
                mov     rcx, [rsi+10h]
                call    sub_1403F8474
                mov     rcx, [rsi]
                test    rcx, rcx
                jz      short loc_1403F16F4
                cmp     dword ptr [rsi+8], 2
                jl      short loc_1403F16F4
                lea     r8, [rbp+var_30]
                lea     rdx, [rbp+arg_8]
                call    sub_1403F8474
                mov     r14b, [rbp+arg_8]
                mov     r12d, 2
                mov     r15b, [rbp+var_30]

loc_1403F16F4:                          ; CODE XREF: IoCheckRedirectionTrustLevel+91↑j
                                        ; IoCheckRedirectionTrustLevel+97↑j
                test    rdi, rdi
                jnz     short loc_1403F1702
                lea     rcx, [rbp+var_28]
                call    SeReleaseSubjectContext

loc_1403F1702:                          ; CODE XREF: IoCheckRedirectionTrustLevel+B7↑j
                cmp     [rbp+var_2F], 0
                jz      short loc_1403F1712
                test    r14b, r14b
                jz      short loc_1403F1712
                mov     dil, bl
                jmp     short loc_1403F1715
; ---------------------------------------------------------------------------

loc_1403F1712:                          ; CODE XREF: IoCheckRedirectionTrustLevel+C6↑j
                                        ; IoCheckRedirectionTrustLevel+CB↑j
                xor     dil, dil

loc_1403F1715:                          ; CODE XREF: IoCheckRedirectionTrustLevel+D0↑j
                cmp     [rbp+var_2E], 0
                jz      short loc_1403F1724
                test    r15b, r15b
                jz      short loc_1403F1724
                mov     al, bl
                jmp     short loc_1403F1726
; ---------------------------------------------------------------------------

loc_1403F1724:                          ; CODE XREF: IoCheckRedirectionTrustLevel+D9↑j
                                        ; IoCheckRedirectionTrustLevel+DE↑j
                xor     al, al

loc_1403F1726:                          ; CODE XREF: IoCheckRedirectionTrustLevel+E2↑j
                test    dil, dil
                jnz     short loc_1403F1750
                test    al, al
                jnz     short loc_1403F1755

loc_1403F172F:                          ; CODE XREF: IoCheckRedirectionTrustLevel+4E↑j
                                        ; IoCheckRedirectionTrustLevel+5B↑j ...
                xor     eax, eax

loc_1403F1731:                          ; CODE XREF: IoCheckRedirectionTrustLevel+148↓j
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1403F1750:                          ; CODE XREF: IoCheckRedirectionTrustLevel+E9↑j
                mov     ebx, 2

loc_1403F1755:                          ; CODE XREF: IoCheckRedirectionTrustLevel+ED↑j
                mov     rdx, gs:188h
                cmp     r12d, 2
                mov     r9, [rbp+arg_20]
                mov     r8d, r13d
                setz    al
                mov     ecx, ebx
                mov     [rsp+60h+var_40], al
                mov     rdx, [rdx+0B8h]
                call    sub_1405D00B0
                test    dil, dil
                jz      short loc_1403F172F
                mov     eax, 0C00004BEh
                jmp     short loc_1403F1731
IoCheckRedirectionTrustLevel endp
