KeInitializeQueue proc near             ; CODE XREF: sub_140700C0C+8E↓p
                                        ; sub_140700DE0+A2↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     byte ptr [rcx], 4
                xor     ecx, ecx
                mov     word ptr [rbx+1], 1000h
                lea     rax, [rbx+8]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+18h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+30h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rbx+4], ecx
                mov     [rbx+28h], ecx
                test    edx, edx
                jnz     short loc_14034ACAB
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                mov     edx, eax

loc_14034ACAB:                          ; CODE XREF: KeInitializeQueue+3D↑j
                mov     [rbx+2Ch], edx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeQueue endp
