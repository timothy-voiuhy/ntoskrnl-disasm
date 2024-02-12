FsRtlNotifyInitializeSync proc near     ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2FC↑p
                                        ; FsRtlNotifyFilterReportChangeLiteEx+131EB4↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rcx], 0
                mov     rdi, rcx
                mov     ecx, 210h
                mov     edx, 48h ; 'H'
                mov     r8d, 4E725346h
                call    ExAllocatePoolWithTag
                mov     edx, 1
                xor     r8d, r8d
                mov     rbx, rax
                and     qword ptr [rax+8], 0
                lea     rcx, [rax+18h]
                and     dword ptr [rax+10h], 0
                mov     [rax], edx
                call    KeInitializeEvent
                and     qword ptr [rbx+38h], 0
                and     dword ptr [rbx+40h], 0
                mov     [rdi], rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyInitializeSync endp
