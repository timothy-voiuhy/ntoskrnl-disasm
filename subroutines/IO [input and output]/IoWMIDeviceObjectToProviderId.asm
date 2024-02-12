IoWMIDeviceObjectToProviderId proc near ; CODE XREF: sub_140578710+61↓p
                                        ; sub_14077F338+9A↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404904CE SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rcx, qword_140C19FA0
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, rbx
                movzx   edi, al
                call    sub_140370E14
                test    rax, rax
                jz      short loc_140370D78
                mov     ebx, [rax+38h]

loc_140370D4C:                          ; CODE XREF: IoWMIDeviceObjectToProviderId+5A↓j
                lea     rcx, qword_140C19FA0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404904CE

loc_140370D66:                          ; CODE XREF: IoWMIDeviceObjectToProviderId+11F7B0↓j
                                        ; IoWMIDeviceObjectToProviderId+11F7BC↓j ...
                mov     cr8, rdi
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140370D78:                          ; CODE XREF: IoWMIDeviceObjectToProviderId+27↑j
                xor     ebx, ebx
                jmp     short loc_140370D4C
IoWMIDeviceObjectToProviderId endp
