IoUnregisterPriorityCallback proc near  ; CODE XREF: sub_140770CE0+D81D1↓p
                                        ; DATA XREF: .pdata:00000001400F2808↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                test    dword ptr [rcx+10h], 200h
                mov     rdi, rcx
                jz      loc_140506845
                mov     rbp, gs:188h
                or      eax, 0FFFFFFFFh
                add     [rbp+1E4h], ax
                lea     r13, unk_140C458A0
                xor     r15d, r15d
                mov     r14, r13

loc_14050676C:                          ; CODE XREF: IoUnregisterPriorityCallback+117↓j
                lea     r12, ds:0[r15*8]
                add     r12, r13
                mov     rcx, r12
                call    sub_1402A9540
                mov     rbx, rax
                test    rax, rax
                jz      loc_14050682C
                cmp     [rax+20h], rdi
                jnz     short loc_140506804
                mov     r8, rax
                xor     edx, edx
                mov     rcx, r12
                call    sub_1403AF5DC
                test    al, al
                jz      loc_14050682C
                lock dec cs:dword_140CF4344
                prefetchw byte ptr [r13+r15*8+0]
                mov     rax, [r13+r15*8+0]
                mov     rcx, rax
                xor     rcx, rbx
                cmp     rcx, 0Fh
                jnb     short loc_1405067DD

loc_1405067C4:                          ; CODE XREF: IoUnregisterPriorityCallback+BB↓j
                lea     rcx, [rax+1]
                lock cmpxchg [r13+r15*8+0], rcx
                jz      short loc_1405067E5
                mov     rdx, rax
                xor     rdx, rbx
                cmp     rdx, 0Fh
                jb      short loc_1405067C4

loc_1405067DD:                          ; CODE XREF: IoUnregisterPriorityCallback+A2↑j
                mov     rcx, rbx
                call    sub_14024C380

loc_1405067E5:                          ; CODE XREF: IoUnregisterPriorityCallback+AF↑j
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rcx, rbx
                call    sub_1409506CC
                mov     rcx, rbx
                call    sub_140718840
                btr     dword ptr [rdi+10h], 9
                jmp     short loc_140506845
; ---------------------------------------------------------------------------

loc_140506804:                          ; CODE XREF: IoUnregisterPriorityCallback+6F↑j
                prefetchw byte ptr [r14]
                mov     rax, [r14]
                jmp     short loc_140506818
; ---------------------------------------------------------------------------

loc_14050680D:                          ; CODE XREF: IoUnregisterPriorityCallback+102↓j
                lea     rcx, [rax+1]
                lock cmpxchg [r14], rcx
                jz      short loc_14050682C

loc_140506818:                          ; CODE XREF: IoUnregisterPriorityCallback+EB↑j
                mov     rcx, rax
                xor     rcx, rbx
                cmp     rcx, 0Fh
                jb      short loc_14050680D
                mov     rcx, rbx
                call    sub_14024C380

loc_14050682C:                          ; CODE XREF: IoUnregisterPriorityCallback+65↑j
                                        ; IoUnregisterPriorityCallback+80↑j ...
                inc     r15d
                add     r14, 8
                cmp     r15d, 8
                jb      loc_14050676C
                mov     rcx, rbp
                call    sub_14021E1F0

loc_140506845:                          ; CODE XREF: IoUnregisterPriorityCallback+26↑j
                                        ; IoUnregisterPriorityCallback+E2↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoUnregisterPriorityCallback endp
