RtlCopyLuidAndAttributesArray proc near ; CODE XREF: sub_1406EE160+258↑p
                                        ; DATA XREF: .pdata:0000000140104AE4↑o
                test    ecx, ecx
                jz      short locret_1406EE458
                sub     rdx, r8
                mov     r9d, ecx

loc_1406EE43A:                          ; CODE XREF: RtlCopyLuidAndAttributesArray+26↓j
                movsd   xmm0, qword ptr [rdx+r8]
                movsd   qword ptr [r8], xmm0
                mov     eax, [rdx+r8+8]
                mov     [r8+8], eax
                lea     r8, [r8+0Ch]
                sub     r9, 1
                jnz     short loc_1406EE43A

locret_1406EE458:                       ; CODE XREF: RtlCopyLuidAndAttributesArray+2↑j
                retn
RtlCopyLuidAndAttributesArray endp
