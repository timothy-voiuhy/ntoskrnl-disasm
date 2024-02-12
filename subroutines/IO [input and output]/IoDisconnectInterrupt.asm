IoDisconnectInterrupt proc near         ; CODE XREF: IoDisconnectInterruptEx+2A↑p
                                        ; IoDisconnectInterruptEx+54↑p ...

var_88          = qword ptr -88h
var_78          = byte ptr -78h
var_28          = byte ptr -28h

; FUNCTION CHUNK AT 00000001408424F4 SIZE 0000017B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                xor     edx, edx
                mov     rbp, rcx
                lea     rcx, [rax-78h]
                lea     r8d, [rdx+50h]
                call    memset
                lea     rcx, [rbp+140h]
                call    KeRemoveQueueDpc
                lea     rdx, [rsp+0A8h+var_78]
                lea     rcx, [rbp-60h]
                call    sub_140761114
                mov     rdx, [rbp-68h]
                mov     rcx, 5555555555555555h
                mov     rax, rdx
                shr     rax, 1
                and     rax, rcx
                mov     rcx, 3333333333333333h
                sub     rdx, rax
                mov     rax, rdx
                and     rdx, rcx
                shr     rax, 2
                and     rax, rcx
                lea     rcx, [rsp+0A8h+var_78]
                add     rax, rdx
                mov     rdi, rax
                shr     rdi, 4
                add     rdi, rax
                mov     rax, 0F0F0F0F0F0F0F0Fh
                and     rdi, rax
                mov     rax, 101010101010101h
                imul    rdi, rax
                shr     rdi, 38h
                call    sub_1407610F0
                lea     rsi, [rbp+180h]
                mov     dl, dil
                mov     rcx, rsi
                lea     r8, [rbp-60h]
                call    sub_140376E04
                lea     rcx, [rsp+0A8h+var_78]
                call    sub_1407610CC
                xor     r12d, r12d
                cmp     [rbp+120h], r12b
                jnz     loc_1408424F4

loc_140760402:                          ; CODE XREF: IoDisconnectInterrupt+E21DD↓j
                mov     rax, gs:188h
                or      ecx, 0FFFFFFFFh
                add     [rax+1E4h], cx
                lea     r13d, [rcx+2]
                cmp     [rbp+120h], r12b
                jnz     loc_140842502

loc_140760426:                          ; CODE XREF: IoDisconnectInterrupt+E2215↓j
                                        ; IoDisconnectInterrupt+E2235↓j
                call    KeLeaveCriticalRegion
                mov     sil, r12b
                test    dil, dil
                jle     short loc_140760497

loc_140760433:                          ; CODE XREF: IoDisconnectInterrupt+175↓j
                movsx   rax, sil
                mov     r14, [rbp+rax*8+180h]
                mov     rbx, [r14+118h]
                test    rbx, rbx
                jz      short loc_140760487
                mov     rcx, [rbx+138h]
                mov     rax, [rcx+28h]
                test    rax, rax
                jz      loc_14084255A
                mov     eax, [rax+18Ch]
                bt      eax, 11h
                jb      loc_14084255A
                lock dec dword ptr [rcx+60h]
                mov     edx, 54706E50h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                mov     [r14+118h], r12

loc_140760487:                          ; CODE XREF: IoDisconnectInterrupt+129↑j
                mov     rcx, r14
                call    sub_140376DDC
                add     sil, r13b
                cmp     sil, dil
                jl      short loc_140760433

loc_140760497:                          ; CODE XREF: IoDisconnectInterrupt+111↑j
                lea     rcx, [rsp+0A8h+var_78]
                call    sub_140760F60
                xor     edx, edx
                lea     rcx, [rbp-70h]
                call    ExFreePoolWithTag
                xor     ecx, ecx
                call    sub_140761060
                lea     r11, [rsp+0A8h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoDisconnectInterrupt endp
