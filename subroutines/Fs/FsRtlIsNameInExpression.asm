FsRtlIsNameInExpression proc near       ; CODE XREF: sub_140204518+124↑p
                                        ; sub_1405C1CF0+1D9↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404185C8 SIZE 00000020 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, r9
                mov     rdi, rcx
                xorps   xmm0, xmm0
                movups  [rsp+48h+var_18], xmm0
                test    r8b, r8b
                jz      short loc_1402066E8
                test    rbx, rbx
                jnz     short loc_1402066E8
                lea     rcx, [rsp+48h+var_18]
                call    sub_14021D920
                test    eax, eax
                js      short loc_14020671A
                lea     rdx, [rsp+48h+var_18]
                xor     r8b, r8b

loc_1402066E8:                          ; CODE XREF: FsRtlIsNameInExpression+1B↑j
                                        ; FsRtlIsNameInExpression+20↑j
                                        ; DATA XREF: ...
;   __try { // __finally(loc_1404185C8)
                mov     [rsp+48h+var_28], rbx
                xor     r9d, r9d
                mov     rcx, rdi
                call    sub_1402067E0
                mov     bl, al
;   } // starts at 1402066E8

loc_1402066FA:                          ; DATA XREF: .rdata:000000014004641C↑o
                cmp     qword ptr [rsp+48h+var_18+8], 0
                jz      short loc_14020670C
                lea     rcx, [rsp+48h+var_18]
                call    RtlFreeUnicodeString

loc_14020670C:                          ; CODE XREF: FsRtlIsNameInExpression+50↑j
                mov     al, bl
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14020671A:                          ; CODE XREF: FsRtlIsNameInExpression+2E↑j
                mov     ecx, eax
                call    RtlRaiseStatus
FsRtlIsNameInExpression endp
