KeSetLastBranchRecordInUse proc near    ; DATA XREF: .pdata:000000014011DE70↑o
                test    cl, cl
                jz      short loc_1408BC6EF
                lock bts cs:dword_140C31428, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408BC6EF:                          ; CODE XREF: KeSetLastBranchRecordInUse+2↑j
                lock btr cs:dword_140C31428, 1
                retn
KeSetLastBranchRecordInUse endp
