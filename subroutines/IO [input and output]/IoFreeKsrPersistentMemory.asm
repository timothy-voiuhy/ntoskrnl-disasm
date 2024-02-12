IoFreeKsrPersistentMemory proc near     ; DATA XREF: .pdata:000000014011CE74↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                mov     rax, cr8
                test    al, al
                jz      short loc_14089D551
                mov     rax, cr8
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                movzx   r8d, al
                mov     ecx, 121h
                lea     edx, [r9+1]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D551:                          ; CODE XREF: IoFreeKsrPersistentMemory+F↑j
                mov     rcx, [rcx+28h]
                test    rcx, rcx
                jz      short loc_14089D563
                mov     rdx, [rbx+8]
                call    MmUnmapLockedPages

loc_14089D563:                          ; CODE XREF: IoFreeKsrPersistentMemory+38↑j
                mov     rdx, [rbx+20h]
                lea     rcx, [rbx+10h]
                mov     r8b, 1
                call    cs:KsrFreePersistedMemoryBlock
                nop     dword ptr [rax+rax+00h]
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14089D58D
                mov     edx, 61706E50h
                call    ExFreePoolWithTag

loc_14089D58D:                          ; CODE XREF: IoFreeKsrPersistentMemory+61↑j
                mov     edx, 61706E50h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                xor     eax, eax
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFreeKsrPersistentMemory endp
