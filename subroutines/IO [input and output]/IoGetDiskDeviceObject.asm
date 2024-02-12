IoGetDiskDeviceObject proc near         ; CODE XREF: sub_140349804+13704A↓p
                                        ; DATA XREF: .pdata:00000001400DC80C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rsi, rdx
                mov     rdi, rcx
                cmp     [rcx+38h], rbx
                jnz     short loc_140394A8E
                lea     ecx, [rbx+9]
                call    KeAcquireQueuedSpinLock
                mov     bpl, al
                mov     rax, [rdi+138h]
                mov     rcx, [rax+48h]
                test    rcx, rcx
                jz      short loc_140394A95
                cmp     [rcx+1Ch], ebx
                jz      short loc_140394A9C
                test    byte ptr [rcx+4], 1
                jz      short loc_140394A9C
                mov     rcx, [rcx+10h]
                mov     edx, 746C6644h
                mov     [rsi], rcx
                call    ObfReferenceObjectWithTag

loc_140394A69:                          ; CODE XREF: IoGetDiskDeviceObject+8A↓j
                                        ; IoGetDiskDeviceObject+91↓j
                mov     dl, bpl
                mov     ecx, 9
                call    KeReleaseQueuedSpinLock
                mov     eax, ebx

loc_140394A78:                          ; CODE XREF: IoGetDiskDeviceObject+83↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140394A8E:                          ; CODE XREF: IoGetDiskDeviceObject+20↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140394A78
; ---------------------------------------------------------------------------

loc_140394A95:                          ; CODE XREF: IoGetDiskDeviceObject+3B↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_140394A69
; ---------------------------------------------------------------------------

loc_140394A9C:                          ; CODE XREF: IoGetDiskDeviceObject+40↑j
                                        ; IoGetDiskDeviceObject+46↑j
                mov     ebx, 0C000026Eh
                jmp     short loc_140394A69
IoGetDiskDeviceObject endp
