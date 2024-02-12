FsRtlFastUnlockSingle proc near         ; CODE XREF: FsRtlProcessFileLock+D9↓p
                                        ; DATA XREF: .rdata:000000014007B13C↑o ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
var_28          = byte ptr -28h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140473B82 SIZE 0000001D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r10, [rcx+18h]
                mov     rbx, r9
                mov     rdi, r8
                mov     rbp, rdx
                mov     rsi, rcx
                test    r10, r10
                jz      loc_140473B82
                mov     rcx, [r8]
                mov     rdx, [r9]
                lea     rax, [rcx-1]
                add     rax, rdx
                cmp     rax, rcx
                jb      loc_140473B8C

loc_140326FDC:                          ; CODE XREF: FsRtlFastUnlockSingle+14CBFF↓j
                mov     r14, [rsp+68h+arg_30]
                mov     rdx, rbp
                mov     r15d, [rsp+68h+arg_28]
                mov     rcx, r10
                mov     r12, [rsp+68h+arg_20]
                mov     [rsp+68h+var_28], 1
                mov     [rsp+68h+var_30], 0
                mov     [rsp+68h+var_38], r14
                mov     [rsp+68h+var_40], r15d
                mov     [rsp+68h+var_48], r12
                call    sub_140327074
                test    eax, eax
                jz      short loc_140327067
                mov     rcx, [rsi+18h]
                mov     r9, rbx
                mov     [rsp+68h+var_28], 1
                mov     r8, rdi
                mov     [rsp+68h+var_30], 0
                mov     rdx, rbp
                mov     [rsp+68h+var_38], r14
                mov     [rsp+68h+var_40], r15d
                mov     [rsp+68h+var_48], r12
                call    sub_1403271FC

loc_140327047:                          ; CODE XREF: FsRtlFastUnlockSingle+D9↓j
                                        ; FsRtlFastUnlockSingle+14CBF7↓j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140327067:                          ; CODE XREF: FsRtlFastUnlockSingle+8A↑j
                xor     eax, eax
                jmp     short loc_140327047
FsRtlFastUnlockSingle endp
