ExUnblockPushLockEx proc near           ; DATA XREF: .rdata:0000000140079FC0↑o
                                        ; .pdata:00000001400D5888↑o

var_38          = dword ptr -38h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014041DF12 SIZE 00000019 BYTES

                sub     rsp, 38h
                test    edx, 0FFFFFFFCh
                jnz     loc_14041DF12
                lock or [rsp+38h+var_38], 0
                cmp     qword ptr [rcx], 0
                jnz     short loc_1403232B1

loc_1403232AB:                          ; CODE XREF: ExUnblockPushLockEx+2B↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403232B1:                          ; CODE XREF: ExUnblockPushLockEx+19↑j
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140323C18
                jmp     short loc_1403232AB
ExUnblockPushLockEx endp
