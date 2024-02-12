IoGetAttachedDeviceReference proc near  ; CODE XREF: sub_1406701A4+AC↓p
                                        ; sub_140670554+75↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046D48A SIZE 000000C2 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rbp, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046D48A

loc_1403101F6:                          ; CODE XREF: IoGetAttachedDeviceReference+15D2CC↓j
                                        ; IoGetAttachedDeviceReference+15D2D6↓j ...
                mov     rcx, gs:28h
                add     rcx, 0A0h
                mov     rdx, [rcx+8]
                call    sub_14024B3F0
                mov     rax, [rbx+18h]
                test    rax, rax
                jnz     short loc_140310272

loc_140310218:                          ; CODE XREF: IoGetAttachedDeviceReference+BE↓j
                cmp     cs:dword_140CFB010, 0
                jnz     loc_14046D4CB

loc_140310225:                          ; CODE XREF: IoGetAttachedDeviceReference+15D325↓j
                lea     rcx, [rbx-30h]
                call    sub_140233550
                mov     rcx, gs:28h
                add     rcx, 0A0h
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046D4EA

loc_140310251:                          ; CODE XREF: IoGetAttachedDeviceReference+15D32C↓j
                                        ; IoGetAttachedDeviceReference+15D338↓j ...
                movzx   eax, sil
                mov     cr8, rax
                mov     rbp, [rsp+28h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140310272:                          ; CODE XREF: IoGetAttachedDeviceReference+56↑j
                                        ; IoGetAttachedDeviceReference+BC↓j
                mov     rbx, rax
                mov     rax, [rax+18h]
                test    rax, rax
                jnz     short loc_140310272
                jmp     short loc_140310218
IoGetAttachedDeviceReference endp
