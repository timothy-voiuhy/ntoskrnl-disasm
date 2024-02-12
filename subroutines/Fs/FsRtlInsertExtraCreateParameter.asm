FsRtlInsertExtraCreateParameter proc near
                                        ; CODE XREF: sub_1405ECB84+AA↑p
                                        ; sub_140702C60+97↓p ...

; FUNCTION CHUNK AT 00000001407F5358 SIZE 00000007 BYTES

                mov     r8, [rcx+8]
                lea     rax, [rcx+8]
                cmp     r8, rax
                jnz     short loc_1405ECCB0

loc_1405ECC8D:                          ; CODE XREF: FsRtlInsertExtraCreateParameter+4D↓j
                lea     rcx, [rdx-40h]
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     FatalListEntryError_64
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1405ECCB0:                          ; CODE XREF: FsRtlInsertExtraCreateParameter+B↑j
                                        ; FsRtlInsertExtraCreateParameter+4F↓j
                mov     r9, [r8+10h]
                sub     r9, [rdx-30h]
                jnz     short loc_1405ECCC2
                mov     r9, [r8+18h]
                sub     r9, [rdx-28h]

loc_1405ECCC2:                          ; CODE XREF: FsRtlInsertExtraCreateParameter+38↑j
                test    r9, r9
                jz      short loc_1405ECCD1
                mov     r8, [r8]
                cmp     r8, rax
                jz      short loc_1405ECC8D
                jmp     short loc_1405ECCB0
; ---------------------------------------------------------------------------

loc_1405ECCD1:                          ; CODE XREF: FsRtlInsertExtraCreateParameter+45↑j
                or      dword ptr [r8+28h], 4
                mov     eax, 0C000000Dh
                retn
FsRtlInsertExtraCreateParameter endp
