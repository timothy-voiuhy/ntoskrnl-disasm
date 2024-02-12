VslGetSecurePciDeviceAlternateFunctionNumberForVtl0Dma proc near
                                        ; DATA XREF: .pdata:00000001400F1FA4↑o

var_A8          = byte ptr -0A8h
var_A0          = dword ptr -0A0h
var_9C          = byte ptr -9Ch
var_9B          = byte ptr -9Bh
var_9A          = byte ptr -9Ah
var_98          = dword ptr -98h
var_38          = qword ptr -38h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 0A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_38], rax
                mov     dil, dl
                mov     sil, r8b
                xor     edx, edx
                mov     ebx, ecx
                lea     rcx, [rsp+0C8h+var_A8]
                mov     bpl, r9b
                lea     r8d, [rdx+68h]
                call    memset
                xor     ecx, ecx
                call    sub_1402AA098
                test    al, al
                jz      short loc_1404FC8DB
                mov     edx, 107h
                mov     [rsp+0C8h+var_A0], ebx
                lea     r9, [rsp+0C8h+var_A8]
                mov     [rsp+0C8h+var_9C], dil
                xor     r8d, r8d
                mov     [rsp+0C8h+var_9B], sil
                mov     cl, 2
                mov     [rsp+0C8h+var_9A], bpl
                mov     [rsp+0C8h+var_98], 2
                call    sub_14034DB1C
                test    eax, eax
                mov     al, byte ptr [rsp+0C8h+var_98]
                jns     short loc_1404FC8DD

loc_1404FC8DB:                          ; CODE XREF: VslGetSecurePciDeviceAlternateFunctionNumberForVtl0Dma+42↑j
                mov     al, 0FFh

loc_1404FC8DD:                          ; CODE XREF: VslGetSecurePciDeviceAlternateFunctionNumberForVtl0Dma+79↑j
                mov     rcx, [rsp+0C8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A8h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404FC860
VslGetSecurePciDeviceAlternateFunctionNumberForVtl0Dma endp
