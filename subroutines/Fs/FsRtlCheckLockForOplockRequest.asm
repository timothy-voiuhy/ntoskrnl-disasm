FsRtlCheckLockForOplockRequest proc near
                                        ; DATA XREF: .rdata:000000014008BD18↑o
                                        ; .pdata:00000001400DA388↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014048E3D8 SIZE 000000C7 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, [rcx+18h]
                test    rsi, rsi
                jz      short loc_14036CC50
                cmp     qword ptr [rsi+20h], 0
                jnz     short loc_14036CC71
                cmp     qword ptr [rsi+28h], 0
                jnz     short loc_14036CC71

loc_14036CC50:                          ; CODE XREF: FsRtlCheckLockForOplockRequest+20↑j
                                        ; FsRtlCheckLockForOplockRequest+55↓j
                mov     eax, 1

loc_14036CC55:                          ; CODE XREF: FsRtlCheckLockForOplockRequest+9C↓j
                                        ; FsRtlCheckLockForOplockRequest+A0↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036CC71:                          ; CODE XREF: FsRtlCheckLockForOplockRequest+27↑j
                                        ; FsRtlCheckLockForOplockRequest+2E↑j
                cmp     qword ptr [rdx], 0
                jz      short loc_14036CC50
                mov     eax, [rcx+58h]
                test    eax, eax
                jnz     short loc_14036CCBE
                mov     rbx, [rdx]
                lea     edi, [rax+1]
                lea     r14, [rsi+18h]
                sub     rbx, rdi
                mov     rcx, r14
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, r14
                movzx   ebp, al
                cmp     rbx, [rsi]
                jnb     loc_14048E43D
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048E3D8

loc_14036CCB5:                          ; CODE XREF: FsRtlCheckLockForOplockRequest+1217BB↓j
                                        ; FsRtlCheckLockForOplockRequest+1217C7↓j ...
                mov     cr8, rbp
                mov     al, dil
                jmp     short loc_14036CC55
; ---------------------------------------------------------------------------

loc_14036CCBE:                          ; CODE XREF: FsRtlCheckLockForOplockRequest+5C↑j
                xor     al, al
                jmp     short loc_14036CC55
FsRtlCheckLockForOplockRequest endp
