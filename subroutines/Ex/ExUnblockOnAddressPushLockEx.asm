ExUnblockOnAddressPushLockEx proc near  ; DATA XREF: .pdata:00000001400E1B34↑o

var_38          = dword ptr -38h
var_18          = qword ptr -18h

                sub     rsp, 38h
                test    edx, 0FFFFFFFCh
                jz      short loc_1403F89F5
                and     [rsp+38h+var_18], 0
                mov     r8, rcx
                mov     ecx, 152h
                mov     edx, edx
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1403F89F5:                          ; CODE XREF: ExUnblockOnAddressPushLockEx+A↑j
                lock or [rsp+38h+var_38], 0
                cmp     qword ptr [rcx], 0
                jz      short loc_1403F8A0A
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140323C18

loc_1403F8A0A:                          ; CODE XREF: ExUnblockOnAddressPushLockEx+2E↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExUnblockOnAddressPushLockEx endp
