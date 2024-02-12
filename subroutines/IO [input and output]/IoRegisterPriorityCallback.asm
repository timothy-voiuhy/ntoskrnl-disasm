IoRegisterPriorityCallback proc near    ; DATA XREF: .rdata:000000014009F3CC↑o
                                        ; .pdata:00000001400DE2C4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A868A SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                test    dword ptr [rcx+10h], 200h
                mov     rsi, rdx
                mov     rdi, rcx
                jnz     loc_1404A868A
                mov     edx, 28h ; '('
                mov     ecx, 200h
                mov     r8d, 62436F49h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1403AF5CD
                lea     rax, sub_140359760
                mov     [rbx+10h], rbx
                mov     rcx, rbx
                mov     [rbx+8], rax
                mov     [rbx+20h], rdi
                mov     [rbx+18h], rsi
                call    KeInitializeSpinLock
                xor     esi, esi

loc_1403AF590:                          ; CODE XREF: IoRegisterPriorityCallback+F9169↓j
                lea     rcx, unk_140C458A0
                xor     r8d, r8d
                lea     rcx, [rcx+rsi*8]
                mov     rdx, rbx
                call    sub_1403AF5DC
                test    al, al
                jz      loc_1404A8694
                lock inc cs:dword_140CF4344
                bts     dword ptr [rdi+10h], 9
                xor     eax, eax

loc_1403AF5BC:                          ; CODE XREF: IoRegisterPriorityCallback+A2↓j
                                        ; IoRegisterPriorityCallback+F915F↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403AF5CD:                          ; CODE XREF: IoRegisterPriorityCallback+3D↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1403AF5BC
IoRegisterPriorityCallback endp
