PoRegisterCoalescingCallback proc near  ; CODE XREF: sub_140798CC8+175↑p
                                        ; sub_140A3E728+477↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140853E58 SIZE 00000011 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, r8
                mov     bpl, dl
                mov     r14, rcx
                mov     edx, 48h ; 'H'
                mov     ecx, 200h
                mov     r8d, 62436F50h
                mov     rsi, r9
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140853E58
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+48h]
                call    memset
                lea     rax, sub_1408E7E90
                mov     [rbx+10h], rbx
                mov     [rbx+8], rax
                test    bpl, bpl
                mov     rcx, rbx
                mov     [rbx+28h], rsi
                setnz   al
                mov     [rbx+18h], r14
                mov     [rbx+20h], al
                call    KeInitializeSpinLock
                lea     rcx, [rbx+40h]
                xor     r8d, r8d
                mov     rdx, rbx
                call    sub_1403AF5DC
                test    al, al
                jz      short loc_1407992D4
                lea     rcx, qword_140C243B0
                call    sub_1402B4578
                mov     rcx, cs:off_140C04718
                lea     rdx, off_140C04710
                lea     rax, [rbx+30h]
                cmp     [rcx], rdx
                jnz     loc_140853E62
                mov     [rax+8], rcx
                mov     [rax], rdx
                mov     [rcx], rax
                lea     rcx, qword_140C243B0
                mov     cs:off_140C04718, rax
                call    sub_140216274
                xor     eax, eax
                mov     [rdi], rbx

loc_1407992B8:                          ; CODE XREF: PoRegisterCoalescingCallback+F9↓j
                                        ; PoRegisterCoalescingCallback+BAC7D↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407992D4:                          ; CODE XREF: PoRegisterCoalescingCallback+8D↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1407992B8
PoRegisterCoalescingCallback endp
