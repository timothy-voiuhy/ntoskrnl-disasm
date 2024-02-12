IoIncrementKeepAliveCount proc near     ; DATA XREF: .pdata:00000001400F288C↑o

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
                mov     r8d, 1
                mov     [r11-18h], rax
                mov     rbx, rdx
                mov     rdi, rcx
                call    sub_140507468
                mov     esi, eax
                test    eax, eax
                js      loc_140507272
                cmp     [rsp+38h+arg_10], 1
                jnz     loc_140507272
                mov     rcx, cr8
                cmp     cl, 2
                jz      short loc_1405071A0
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     rax, [rsp+38h+arg_18]
                mov     r8, rdi
                mov     edx, 1
                mov     rcx, rbx
                mov     r9b, [rax+12h]
                call    sub_1409092C0
                jmp     loc_140507272
; ---------------------------------------------------------------------------

loc_1405071A0:                          ; CODE XREF: IoIncrementKeepAliveCount+53↑j
                lea     rcx, qword_140C45DD0
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, [rsp+38h+arg_18]
                movzx   ebx, al
                inc     dword ptr [rcx+20h]
                cmp     byte ptr [rcx+10h], 0
                jnz     short loc_14050720F
                mov     rax, cs:qword_140C45DC0
                lea     rdx, qword_140C45DC0
                cmp     [rax+8], rdx
                jz      short loc_1405071D8
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1405071D8:                          ; CODE XREF: IoIncrementKeepAliveCount+AF↑j
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rax+8], rcx
                mov     cs:qword_140C45DC0, rcx
                mov     byte ptr [rcx+10h], 1
                cmp     cs:byte_140C45DF8, 0
                jnz     short loc_14050720F
                mov     edx, 1
                mov     cs:byte_140C45DF8, 1
                lea     rcx, qword_140C45DA0
                call    ExQueueWorkItem

loc_14050720F:                          ; CODE XREF: IoIncrementKeepAliveCount+9B↑j
                                        ; IoIncrementKeepAliveCount+D5↑j
                lea     rcx, qword_140C45DD0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14050726E
                test    al, 1
                jz      short loc_14050726E
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14050726E
                cmp     bl, 0Fh
                ja      short loc_14050726E
                cmp     al, 2
                jb      short loc_14050726E
                mov     r10, gs:20h
                lea     ecx, [rbx+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14050726E
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14050726E:                          ; CODE XREF: IoIncrementKeepAliveCount+103↑j
                                        ; IoIncrementKeepAliveCount+107↑j ...
                mov     cr8, rbx

loc_140507272:                          ; CODE XREF: IoIncrementKeepAliveCount+3B↑j
                                        ; IoIncrementKeepAliveCount+46↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoIncrementKeepAliveCount endp
