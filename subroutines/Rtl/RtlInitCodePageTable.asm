RtlInitCodePageTable proc near          ; CODE XREF: sub_1407CB114+17↑p
                                        ; sub_1407CB114+26↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 0000000140860E08 SIZE 00000038 BYTES

                xor     r9d, r9d
                mov     r10, rcx
                mov     eax, 0FDE9h
                test    rcx, rcx
                jz      loc_140860E16
                movzx   ecx, word ptr [rcx+2]
                cmp     cx, ax
                jz      loc_140860E16
                movzx   eax, word ptr [r10]
                movzx   r11d, word ptr [r10+rax*2]
                lea     r8, [rax+1]
                mov     [rdx], cx
                add     r11w, ax
                movzx   eax, word ptr [r10+4]
                mov     [rdx+2], ax
                movzx   eax, word ptr [r10+6]
                mov     [rdx+4], ax
                movzx   eax, word ptr [r10+8]
                mov     [rdx+6], ax
                movzx   eax, word ptr [r10+0Ah]
                mov     [rdx+8], ax
                movzx   eax, word ptr [r10+0Ch]
                mov     [rdx+0Ah], ax
                movsd   xmm0, qword ptr [r10+0Eh]
                movsd   qword ptr [rdx+0Eh], xmm0
                mov     eax, [r10+16h]
                mov     [rdx+16h], eax
                lea     rax, [r10+r8*2]
                mov     [rdx+20h], rax
                lea     rcx, [rax+200h]
                movzx   eax, word ptr [rcx]
                neg     ax
                sbb     r8, r8
                and     r8d, 200h
                add     r8, 2
                add     r8, rcx
                mov     [rdx+30h], r8
                cmp     [r8], r9w
                ja      loc_140860E08
                movzx   eax, r9w

loc_1407CB22C:                          ; CODE XREF: RtlInitCodePageTable+95C91↓j
                mov     [rdx+38h], r9
                movzx   r9d, r11w
                inc     r9
                mov     [rdx+0Ch], ax
                lea     r9, [r10+r9*2]

loc_1407CB23F:                          ; CODE XREF: RtlInitCodePageTable+95CBB↓j
                mov     [rdx+28h], r9
                retn
RtlInitCodePageTable endp
