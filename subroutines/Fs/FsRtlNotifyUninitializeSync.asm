FsRtlNotifyUninitializeSync proc near   ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+131ED0↓p
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1316DC↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_14071F12C
                xor     edx, edx
                call    ExFreePoolWithTag
                and     qword ptr [rbx], 0

loc_14071F12C:                          ; CODE XREF: FsRtlNotifyUninitializeSync+F↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyUninitializeSync endp
