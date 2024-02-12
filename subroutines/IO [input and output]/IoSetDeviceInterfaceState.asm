IoSetDeviceInterfaceState proc near     ; CODE XREF: sub_14073FAB4+AC↑p
                                        ; sub_14073FD34+92↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     dil, dl
                mov     rbx, rcx
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceExclusiveLite
                mov     r8b, 1
                mov     dl, dil
                mov     rcx, rbx
                call    sub_140740BCC
                lea     rcx, unk_140C44D40
                mov     ebx, eax
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    ebx, ebx
                js      short loc_140740BBA

loc_140740BAC:                          ; CODE XREF: IoSetDeviceInterfaceState+71↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140740BBA:                          ; CODE XREF: IoSetDeviceInterfaceState+5A↑j
                neg     dil
                sbb     ecx, ecx
                and     ebx, ecx
                jmp     short loc_140740BAC
IoSetDeviceInterfaceState endp
