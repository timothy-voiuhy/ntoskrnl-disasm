RtlRaiseStatus  proc near               ; CODE XREF: FsRtlIsNameInExpression+6C↑p
                                        ; FsRtlIsNameInUnUpcasedExpression+40↑p ...

var_578         = dword ptr -578h
var_574         = dword ptr -574h
var_570         = qword ptr -570h
var_560         = dword ptr -560h
var_4D8         = byte ptr -4D8h

                push    rbx             ; ExRaiseStatus
                sub     rsp, 590h
                mov     ebx, ecx
                xor     edx, edx
                lea     rcx, [rsp+598h+var_578]
                mov     r8d, 98h
                call    memset
                and     [rsp+598h+var_570], 0
                and     [rsp+598h+var_560], 0
                mov     [rsp+598h+var_578], ebx
                mov     ebx, 1
                mov     [rsp+598h+var_574], ebx

loc_140328215:                          ; CODE XREF: RtlRaiseStatus+4D↓j
                mov     r8b, bl
                lea     rdx, [rsp+598h+var_4D8]
                lea     rcx, [rsp+598h+var_578]
                call    sub_140407560
                add     bl, 0FFh
                jz      short loc_140328215
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
RtlRaiseStatus  endp

algn_140328237:                         ; DATA XREF: .pdata:00000001400D5D98↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140328240   proc near               ; CODE XREF: sub_140216560+120F↑p
                                        ; DATA XREF: .pdata:00000001400D5DA4↑o
                lock and dword ptr [rcx], 0FFFFFF7Fh
                retn
sub_140328240   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140328249:                         ; DATA XREF: .pdata:00000001400D5DA4↑o
                align 10h
; Exported entry 308. ExReleaseRundownProtection

; =============== S U B R O U T I N E =======================================


