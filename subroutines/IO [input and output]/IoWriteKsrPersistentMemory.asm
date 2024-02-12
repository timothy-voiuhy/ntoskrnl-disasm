IoWriteKsrPersistentMemory proc near    ; DATA XREF: .pdata:000000014011CE98↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     r9, rdx
                xor     ebx, ebx
                mov     rax, cr8
                test    al, al
                jz      short loc_14089DC51
                mov     rax, cr8
                movzx   r8d, al
                lea     edx, [rbx+1]
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rbx
                mov     ecx, 121h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089DC51:                          ; CODE XREF: IoWriteKsrPersistentMemory+11↑j
                mov     eax, [rcx]
                dec     eax
                cmp     eax, 1
                jbe     short loc_14089DC61
                mov     ebx, 0C00000EFh
                jmp     short loc_14089DC85
; ---------------------------------------------------------------------------

loc_14089DC61:                          ; CODE XREF: IoWriteKsrPersistentMemory+38↑j
                mov     rax, [rcx+30h]
                mov     rdx, [rcx+28h]
                cmp     r8, [rax+8]
                jbe     short loc_14089DC76
                mov     ebx, 0C0000023h
                jmp     short loc_14089DC85
; ---------------------------------------------------------------------------

loc_14089DC76:                          ; CODE XREF: IoWriteKsrPersistentMemory+4D↑j
                mov     [rdx], r8
                lea     rcx, [rdx+8]
                mov     rdx, r9
                call    memmove

loc_14089DC85:                          ; CODE XREF: IoWriteKsrPersistentMemory+3F↑j
                                        ; IoWriteKsrPersistentMemory+54↑j
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWriteKsrPersistentMemory endp
