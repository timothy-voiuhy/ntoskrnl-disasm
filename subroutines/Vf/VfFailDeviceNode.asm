VfFailDeviceNode proc near              ; DATA XREF: .rdata:000000014009E9B4↑o
                                        ; .pdata:00000001400DDAD8↑o

var_28          = qword ptr -28h

; FUNCTION CHUNK AT 00000001404A77F0 SIZE 0000001C BYTES

                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     esi, edx
                mov     edi, r8d
                mov     rdx, rcx
                mov     rbx, rcx
                mov     ecx, 1
                call    VfIsVerificationEnabled
                test    eax, eax
                jnz     loc_1404A77F0

loc_1403A71E5:                          ; CODE XREF: VfFailDeviceNode+100647↓j
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfFailDeviceNode endp
