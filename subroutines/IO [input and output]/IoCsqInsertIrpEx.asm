IoCsqInsertIrpEx proc near              ; CODE XREF: IoCsqInsertIrp+7↑p
                                        ; DATA XREF: .rdata:000000014007EC18↑o ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047B130 SIZE 00000055 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                xor     ebp, ebp
                mov     [rsp+38h+arg_0], 0
                mov     r14, r9
                mov     rsi, r8
                mov     rdi, rdx
                mov     rbx, rcx
                test    r8, r8
                jnz     loc_14033B5A1
                mov     [rdx+90h], rcx

loc_14033B525:                          ; CODE XREF: IoCsqInsertIrpEx+C7↓j
                mov     rax, [rcx+20h]
                lea     rdx, [rsp+38h+arg_0]
                and     [rcx+38h], rbp
                call    sub_1404079D0
                cmp     dword ptr [rbx], 3
                mov     rdx, rdi
                mov     rax, [rbx+8]
                mov     rcx, rbx
                jnz     short loc_14033B59A
                mov     r8, r14
                call    sub_1404079D0
                mov     ebp, eax
                test    eax, eax
                js      short loc_14033B574

loc_14033B554:                          ; CODE XREF: IoCsqInsertIrpEx+AF↓j
                mov     rax, [rdi+0B8h]
                or      byte ptr [rax+3], 1
                lea     rax, sub_1403A5300
                xchg    rax, [rdi+68h]
                cmp     byte ptr [rdi+44h], 0
                jnz     loc_14047B130

loc_14033B574:                          ; CODE XREF: IoCsqInsertIrpEx+62↑j
                mov     rcx, rbx

loc_14033B577:                          ; CODE XREF: IoCsqInsertIrpEx+13FC4C↓j
                mov     dl, [rsp+38h+arg_0]
                mov     rax, [rbx+28h]
                call    sub_1404079D0

loc_14033B584:                          ; CODE XREF: IoCsqInsertIrpEx+13FC90↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, ebp
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033B59A:                          ; CODE XREF: IoCsqInsertIrpEx+54↑j
                call    sub_1404079D0
                jmp     short loc_14033B554
; ---------------------------------------------------------------------------

loc_14033B5A1:                          ; CODE XREF: IoCsqInsertIrpEx+28↑j
                mov     [rdx+90h], rsi
                mov     [r8+8], rdi
                mov     [r8+10h], rbx
                mov     dword ptr [r8], 1
                jmp     loc_14033B525
IoCsqInsertIrpEx endp
