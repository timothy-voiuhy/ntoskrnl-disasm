FsRtlDeregisterUncProvider proc near    ; DATA XREF: .pdata:000000014011C28C↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                lea     rax, [rcx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      short loc_14088CF6C
                call    ZwClose
                test    eax, eax
                js      short loc_14088CF6C
                and     [rsp+38h+var_18], 0
                lea     rcx, byte_140C476E0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                dec     cs:dword_140D2D1E4
                lea     rcx, byte_140C476E0
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    KeReleaseSemaphore

loc_14088CF6C:                          ; CODE XREF: FsRtlDeregisterUncProvider+C↑j
                                        ; FsRtlDeregisterUncProvider+15↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlDeregisterUncProvider endp
