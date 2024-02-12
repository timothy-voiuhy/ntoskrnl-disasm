RtlLengthSecurityDescriptor proc near   ; CODE XREF: sub_1405C27DC+15D↑p
                                        ; ObLogSecurityDescriptor+1D↑p ...
                movsx   r8d, word ptr [rcx+2]
                mov     rdx, rcx
                mov     eax, r8d
                sar     eax, 1Fh
                and     eax, 0FFFFFFECh
                add     eax, 28h ; '('
                test    r8w, r8w
                jns     loc_140625562
                mov     ecx, [rcx+4]
                test    ecx, ecx
                jz      short loc_1406254ED
                add     rcx, rdx

loc_1406254D8:                          ; CODE XREF: RtlLengthSecurityDescriptor+B6↓j
                test    rcx, rcx
                jz      short loc_1406254ED
                movzx   ecx, byte ptr [rcx+1]
                lea     ecx, ds:0Bh[rcx*4]
                and     ecx, 0FFFFFFFCh
                add     eax, ecx

loc_1406254ED:                          ; CODE XREF: RtlLengthSecurityDescriptor+23↑j
                                        ; RtlLengthSecurityDescriptor+2B↑j
                test    r8w, r8w
                jns     short loc_14062556B
                mov     ecx, [rdx+8]
                test    ecx, ecx
                jz      short loc_140625512
                add     rcx, rdx

loc_1406254FD:                          ; CODE XREF: RtlLengthSecurityDescriptor+BF↓j
                test    rcx, rcx
                jz      short loc_140625512
                movzx   ecx, byte ptr [rcx+1]
                lea     ecx, ds:0Bh[rcx*4]
                and     ecx, 0FFFFFFFCh
                add     eax, ecx

loc_140625512:                          ; CODE XREF: RtlLengthSecurityDescriptor+48↑j
                                        ; RtlLengthSecurityDescriptor+50↑j
                test    r8b, 4
                jz      short loc_140625539
                test    r8w, r8w
                jns     short loc_140625571
                mov     ecx, [rdx+10h]
                test    ecx, ecx
                jz      short loc_140625539
                add     rcx, rdx

loc_140625528:                          ; CODE XREF: RtlLengthSecurityDescriptor+C5↓j
                test    rcx, rcx
                jz      short loc_140625539
                movzx   ecx, word ptr [rcx+2]
                add     ecx, 3
                and     ecx, 0FFFFFFFCh
                add     eax, ecx

loc_140625539:                          ; CODE XREF: RtlLengthSecurityDescriptor+66↑j
                                        ; RtlLengthSecurityDescriptor+73↑j ...
                test    r8b, 10h
                jz      short locret_140625560
                test    r8w, r8w
                jns     short loc_140625577
                mov     ecx, [rdx+0Ch]
                test    ecx, ecx
                jz      short locret_140625560
                add     rcx, rdx

loc_14062554F:                          ; CODE XREF: RtlLengthSecurityDescriptor+CB↓j
                test    rcx, rcx
                jz      short locret_140625560
                movzx   ecx, word ptr [rcx+2]
                add     ecx, 3
                and     ecx, 0FFFFFFFCh
                add     eax, ecx

locret_140625560:                       ; CODE XREF: RtlLengthSecurityDescriptor+8D↑j
                                        ; RtlLengthSecurityDescriptor+9A↑j ...
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140625562:                          ; CODE XREF: RtlLengthSecurityDescriptor+18↑j
                mov     rcx, [rcx+8]
                jmp     loc_1406254D8
; ---------------------------------------------------------------------------

loc_14062556B:                          ; CODE XREF: RtlLengthSecurityDescriptor+41↑j
                mov     rcx, [rdx+10h]
                jmp     short loc_1406254FD
; ---------------------------------------------------------------------------

loc_140625571:                          ; CODE XREF: RtlLengthSecurityDescriptor+6C↑j
                mov     rcx, [rdx+20h]
                jmp     short loc_140625528
; ---------------------------------------------------------------------------

loc_140625577:                          ; CODE XREF: RtlLengthSecurityDescriptor+93↑j
                mov     rcx, [rdx+18h]
                jmp     short loc_14062554F
RtlLengthSecurityDescriptor endp
