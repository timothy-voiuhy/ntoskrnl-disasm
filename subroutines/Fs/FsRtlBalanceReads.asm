FsRtlBalanceReads proc near             ; DATA XREF: .rdata:0000000140089994↑o
                                        ; .pdata:00000001401074C0↑o

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014082FC24 SIZE 00000021 BYTES

                push    rbx
                sub     rsp, 80h
                xorps   xmm0, xmm0
                mov     rbx, rcx
                xor     eax, eax
                lea     rcx, [rsp+88h+var_28]
                xor     r8d, r8d
                mov     [rsp+88h+var_18], rax
                xor     edx, edx
                movups  [rsp+88h+var_28], xmm0
                movups  [rsp+88h+var_38], xmm0
                call    KeInitializeEvent
                lea     rax, [rsp+88h+var_38]
                xor     r9d, r9d
                mov     [rsp+88h+var_48], rax
                xor     r8d, r8d
                lea     rax, [rsp+88h+var_28]
                mov     rdx, rbx
                mov     [rsp+88h+var_50], rax
                mov     ecx, 66001Bh
                mov     [rsp+88h+var_58], 0
                and     [rsp+88h+var_60], 0
                and     [rsp+88h+var_68], 0
                call    IoBuildDeviceIoControlRequest
                test    rax, rax
                jz      short loc_140721FEB
                mov     rdx, rax
                mov     rcx, rbx
                call    IofCallDriver
                cmp     eax, 103h
                jz      loc_14082FC24

loc_140721FE1:                          ; CODE XREF: FsRtlBalanceReads+90↓j
                                        ; FsRtlBalanceReads+10DCE0↓j
                add     rsp, 80h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140721FEB:                          ; CODE XREF: FsRtlBalanceReads+69↑j
                mov     eax, 0C000009Ah
                jmp     short loc_140721FE1
FsRtlBalanceReads endp
