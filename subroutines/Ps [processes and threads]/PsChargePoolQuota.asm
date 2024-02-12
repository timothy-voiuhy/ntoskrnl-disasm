PsChargePoolQuota proc near             ; CODE XREF: FsRtlNotifyFilterReportChange+26E↓p
                                        ; FsRtlNotifyFilterReportChangeLiteEx+22C↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    PsChargeProcessPoolQuota
                test    eax, eax
                js      short loc_14033E393
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E393:                          ; CODE XREF: PsChargePoolQuota+B↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
PsChargePoolQuota endp
