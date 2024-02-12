RtlFindClosestEncodableLength proc near ; DATA XREF: .pdata:00000001400F7D10↑o
                mov     eax, 0FFFFFFFFh
                cmp     rcx, rax
                jbe     loc_140588E2D
                mov     r8, 0FFFFFFFF00h
                cmp     rcx, r8
                ja      short loc_140588DCA
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFFFF00h
                cmp     rcx, rax
                jz      short loc_140588E2D
                lea     rcx, [rax+100h]
                mov     [rdx], rcx
                cmp     rcx, r8
                jbe     short loc_140588E30

loc_140588DCA:                          ; CODE XREF: RtlFindClosestEncodableLength+1B↑j
                mov     r8, 0FFFFFFFF0000h
                cmp     rcx, r8
                ja      short loc_140588DF6
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFF0000h
                cmp     rcx, rax
                jz      short loc_140588E2D
                lea     rcx, [rax+10000h]
                mov     [rdx], rcx
                cmp     rcx, r8
                jbe     short loc_140588E30

loc_140588DF6:                          ; CODE XREF: RtlFindClosestEncodableLength+47↑j
                mov     r8, 0FFFFFFFF00000000h
                cmp     rcx, r8
                ja      short loc_140588E22
                mov     rax, rcx
                and     rax, r8
                cmp     rcx, rax
                jz      short loc_140588E2D
                mov     rcx, 100000000h
                add     rax, rcx
                mov     [rdx], rax
                jmp     short loc_140588E30
; ---------------------------------------------------------------------------

loc_140588E22:                          ; CODE XREF: RtlFindClosestEncodableLength+73↑j
                and     qword ptr [rdx], 0
                mov     eax, 0C0000001h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140588E2D:                          ; CODE XREF: RtlFindClosestEncodableLength+8↑j
                                        ; RtlFindClosestEncodableLength+29↑j ...
                mov     [rdx], rcx

loc_140588E30:                          ; CODE XREF: RtlFindClosestEncodableLength+38↑j
                                        ; RtlFindClosestEncodableLength+64↑j ...
                xor     eax, eax
                retn
RtlFindClosestEncodableLength endp
