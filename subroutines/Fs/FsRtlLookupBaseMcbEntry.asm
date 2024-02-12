FsRtlLookupBaseMcbEntry proc near       ; CODE XREF: FsRtlLookupLargeMcbEntry+5C↓p
                                        ; DATA XREF: .pdata:00000001400D5A8C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                push    r15
                mov     r11d, [rcx+4]
                xor     ebp, ebp
                sub     r11d, 1
                mov     r14, r9
                mov     r15, r8
                mov     rsi, rdx
                mov     rdi, rcx
                mov     ebx, ebp
                js      loc_140325325
                mov     r9d, esi

loc_140325269:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+EF↓j
                mov     r10, [rdi+10h]
                lea     eax, [r11+rbx]
                cdq
                sub     eax, edx
                sar     eax, 1
                jnz     loc_140325302

loc_14032527C:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+DD↓j
                movsxd  rcx, eax
                mov     edx, [r10+rcx*8]
                dec     edx
                cmp     r9d, edx
                ja      loc_140325319
                test    r15, r15
                jz      short loc_1403252B6
                mov     r8d, [r10+rax*8+4]
                cmp     r8d, 0FFFFFFFFh
                jz      loc_140325363
                test    eax, eax
                jnz     loc_14032532D
                mov     ecx, ebp

loc_1403252AC:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+104↓j
                sub     r8d, ecx
                lea     ecx, [r9+r8]
                mov     [r15], rcx

loc_1403252B6:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+61↑j
                                        ; FsRtlLookupBaseMcbEntry+13A↓j
                test    r14, r14
                jz      short loc_1403252C8
                mov     rcx, [rdi+10h]
                mov     ecx, [rcx+rax*8]
                sub     ecx, r9d
                mov     [r14], rcx

loc_1403252C8:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+89↑j
                mov     rdx, [rsp+10h+arg_20]
                test    rdx, rdx
                jnz     short loc_140325339

loc_1403252D2:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+11B↓j
                                        ; FsRtlLookupBaseMcbEntry+14F↓j
                mov     r8, [rsp+10h+arg_28]
                test    r8, r8
                jnz     short loc_14032534D

loc_1403252DC:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+12E↓j
                mov     rcx, [rsp+10h+arg_30]
                test    rcx, rcx
                jnz     short loc_140325329

loc_1403252E6:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+FB↓j
                mov     al, 1

loc_1403252E8:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+F7↓j
                mov     rbx, [rsp+10h+arg_0]
                mov     rbp, [rsp+10h+arg_8]
                mov     rsi, [rsp+10h+arg_10]
                mov     rdi, [rsp+10h+arg_18]
                pop     r15
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140325302:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+46↑j
                movsxd  rcx, eax
                mov     r9d, esi
                cmp     esi, [r10+rcx*8-8]
                jnb     loc_14032527C
                lea     r11d, [rax-1]
                jmp     short loc_14032531C
; ---------------------------------------------------------------------------

loc_140325319:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+58↑j
                lea     ebx, [rax+1]

loc_14032531C:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+E7↑j
                cmp     ebx, r11d
                jle     loc_140325269

loc_140325325:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+30↑j
                xor     al, al
                jmp     short loc_1403252E8
; ---------------------------------------------------------------------------

loc_140325329:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+B4↑j
                mov     [rcx], eax
                jmp     short loc_1403252E6
; ---------------------------------------------------------------------------

loc_14032532D:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+74↑j
                lea     ecx, [rax-1]
                mov     ecx, [r10+rcx*8]
                jmp     loc_1403252AC
; ---------------------------------------------------------------------------

loc_140325339:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+A0↑j
                mov     rcx, [rdi+10h]
                mov     r8d, [rcx+rax*8+4]
                cmp     r8d, 0FFFFFFFFh
                jz      short loc_140325378
                mov     [rdx], r8
                jmp     short loc_1403252D2
; ---------------------------------------------------------------------------

loc_14032534D:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+AA↑j
                mov     r9, [rdi+10h]
                test    eax, eax
                jnz     short loc_14032536F

loc_140325355:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+146↓j
                mov     ecx, [r9+rax*8]
                sub     ecx, ebp
                mov     [r8], rcx
                jmp     loc_1403252DC
; ---------------------------------------------------------------------------

loc_140325363:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+6C↑j
                mov     qword ptr [r15], 0FFFFFFFFFFFFFFFFh
                jmp     loc_1403252B6
; ---------------------------------------------------------------------------

loc_14032536F:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+123↑j
                lea     ecx, [rax-1]
                mov     ebp, [r9+rcx*8]
                jmp     short loc_140325355
; ---------------------------------------------------------------------------

loc_140325378:                          ; CODE XREF: FsRtlLookupBaseMcbEntry+116↑j
                mov     qword ptr [rdx], 0FFFFFFFFFFFFFFFFh
                jmp     loc_1403252D2
FsRtlLookupBaseMcbEntry endp
