IoDecrementKeepAliveCount proc near     ; DATA XREF: .pdata:00000001400F2880↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+arg_10], 0
                lea     rax, [r11+20h]
                and     qword ptr [r11+20h], 0
                lea     r9, [r11+18h]
                xor     r8d, r8d
                mov     [r11-18h], rax
                call    sub_140507468
                mov     edi, eax
                test    eax, eax
                js      loc_1405070FD
                cmp     [rsp+38h+arg_10], 0
                jnz     loc_1405070FD
                lea     rcx, qword_140C45DD0
                call    KeAcquireSpinLockRaiseToDpc
                or      rsi, 0FFFFFFFFFFFFFFFFh
                movzx   ebx, al
                mov     rcx, 0FFFFF78000000014h
                mov     rcx, [rcx]
                mov     rdx, [rsp+38h+arg_18]
                add     rcx, 2FAF080h
                mov     [rdx+30h], rcx
                add     [rdx+20h], esi
                cmp     byte ptr [rdx+10h], 0
                jnz     short loc_14050708C
                mov     rcx, cs:qword_140C45DC8
                lea     rax, qword_140C45DC0
                cmp     [rcx], rax
                jz      short loc_140507054
                lea     ecx, [rsi+4]
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140507054:                          ; CODE XREF: IoDecrementKeepAliveCount+8D↑j
                mov     [rdx], rax
                mov     [rdx+8], rcx
                mov     [rcx], rdx
                mov     cs:qword_140C45DC8, rdx
                mov     byte ptr [rdx+10h], 1
                cmp     cs:byte_140C45DF8, 0
                jnz     short loc_14050709F
                mov     edx, 1
                mov     cs:byte_140C45DF8, 1
                lea     rcx, qword_140C45DA0
                call    ExQueueWorkItem
                jmp     short loc_14050709F
; ---------------------------------------------------------------------------

loc_14050708C:                          ; CODE XREF: IoDecrementKeepAliveCount+7A↑j
                mov     rcx, cs:qword_140C45E00
                test    rcx, rcx
                jz      short loc_14050709F
                xor     edx, edx
                call    KeAlertThread

loc_14050709F:                          ; CODE XREF: IoDecrementKeepAliveCount+B0↑j
                                        ; IoDecrementKeepAliveCount+CA↑j ...
                lea     rcx, qword_140C45DD0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405070F9
                test    al, 1
                jz      short loc_1405070F9
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405070F9
                cmp     bl, 0Fh
                ja      short loc_1405070F9
                cmp     al, 2
                jb      short loc_1405070F9
                mov     r9, gs:20h
                lea     ecx, [rbx+1]
                shl     rsi, cl
                movzx   eax, si
                not     eax
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405070F9
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405070F9:                          ; CODE XREF: IoDecrementKeepAliveCount+F3↑j
                                        ; IoDecrementKeepAliveCount+F7↑j ...
                mov     cr8, rbx

loc_1405070FD:                          ; CODE XREF: IoDecrementKeepAliveCount+32↑j
                                        ; IoDecrementKeepAliveCount+3D↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoDecrementKeepAliveCount endp
