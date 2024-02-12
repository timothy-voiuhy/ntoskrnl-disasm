FsRtlGetNextExtraCreateParameter proc near
                                        ; DATA XREF: .pdata:0000000140106CF8↑o

arg_20          = qword ptr  28h

                lea     rax, [rcx+8]
                test    rdx, rdx
                jz      short loc_14071C0DB
                mov     rcx, [rdx-40h]

loc_14071C09D:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+4E↓j
                cmp     rcx, rax
                jz      short loc_14071C0E0
                add     rcx, 0FFFFFFFFFFFFFFF8h
                jz      short loc_14071C0E0
                xor     edx, edx
                test    r9, r9
                jz      short loc_14071C0B6
                lea     rax, [rcx+48h]
                mov     [r9], rax

loc_14071C0B6:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+1D↑j
                mov     r9, [rsp+arg_20]
                test    r9, r9
                jz      short loc_14071C0C9
                mov     eax, [rcx+34h]
                sub     eax, 48h ; 'H'
                mov     [r9], eax

loc_14071C0C9:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+2E↑j
                test    r8, r8
                jz      short loc_14071C0D7
                movups  xmm0, xmmword ptr [rcx+18h]
                movdqu  xmmword ptr [r8], xmm0

loc_14071C0D7:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+3C↑j
                                        ; FsRtlGetNextExtraCreateParameter+6E↓j ...
                mov     eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071C0DB:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+7↑j
                mov     rcx, [rax]
                jmp     short loc_14071C09D
; ---------------------------------------------------------------------------

loc_14071C0E0:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+10↑j
                                        ; FsRtlGetNextExtraCreateParameter+16↑j
                mov     edx, 0C0000225h
                test    r9, r9
                jz      short loc_14071C0EE
                and     qword ptr [r9], 0

loc_14071C0EE:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+58↑j
                mov     rcx, [rsp+arg_20]
                test    rcx, rcx
                jz      short loc_14071C0FB
                and     dword ptr [rcx], 0

loc_14071C0FB:                          ; CODE XREF: FsRtlGetNextExtraCreateParameter+66↑j
                test    r8, r8
                jz      short loc_14071C0D7
                xorps   xmm0, xmm0
                movups  xmmword ptr [r8], xmm0
                jmp     short loc_14071C0D7
FsRtlGetNextExtraCreateParameter endp
