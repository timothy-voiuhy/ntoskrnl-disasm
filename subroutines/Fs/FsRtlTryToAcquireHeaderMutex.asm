FsRtlTryToAcquireHeaderMutex proc near  ; DATA XREF: .pdata:00000001400D50FC↑o

arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rdx
                sub     rsp, 28h
                mov     rcx, [rcx+18h]
                mov     rcx, [rcx+30h]
                call    ExTryToAcquireFastMutex
                test    al, al
                jz      short loc_14031A2CC
                mov     rcx, [rsp+28h+arg_8]
                test    rcx, rcx
                jz      short loc_14031A2CC
                mov     rcx, [rsp+28h+arg_8]
                lock inc dword ptr [rcx]

loc_14031A2CC:                          ; CODE XREF: FsRtlTryToAcquireHeaderMutex+18↑j
                                        ; FsRtlTryToAcquireHeaderMutex+22↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlTryToAcquireHeaderMutex endp
