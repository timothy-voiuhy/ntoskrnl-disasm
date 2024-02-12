ExAcquireSharedStarveExclusive proc near
                                        ; CODE XREF: sub_1402720A0+803↓p
                                        ; sub_1402720A0+936↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140441D5E SIZE 00000086 BYTES

                push    rbx
                sub     rsp, 30h
                movzx   r9d, word ptr [rcx+1Ah]
                mov     al, dl
                neg     al
                mov     r10, rcx
                mov     al, r9b
                mov     bl, dl
                sbb     r11b, r11b
                and     al, 41h
                add     r11b, 2
                xor     ecx, ecx
                cmp     al, 1
                jz      short loc_140271022
                and     r9w, 1
                jnz     short loc_140270FD8

loc_140270FBD:                          ; CODE XREF: ExAcquireSharedStarveExclusive+78↓j
                                        ; ExAcquireSharedStarveExclusive+82↓j ...
                mov     dl, bl
                mov     rcx, r10
                test    r9w, r9w
                jnz     loc_140441DD9
                call    sub_1402711C0

loc_140270FD1:                          ; CODE XREF: ExAcquireSharedStarveExclusive+1D0E4F↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140270FD8:                          ; CODE XREF: ExAcquireSharedStarveExclusive+2B↑j
                mov     rdx, cr8
                mov     r8, gs:188h
                cmp     dl, r11b
                ja      loc_140441D5E
                cmp     dl, 2
                jnb     loc_140441D78

loc_140270FF7:                          ; CODE XREF: ExAcquireSharedStarveExclusive+1D0DF5↓j
                test    byte ptr [r8+0C0h], 2
                jnz     loc_140441DA5
                cmp     dl, 1
                jnb     short loc_140270FBD
                test    dword ptr [r8+74h], 400h
                jnz     short loc_140270FBD
                cmp     [r8+1E4h], ecx
                jnz     short loc_140270FBD
                jmp     loc_140441DBF
; ---------------------------------------------------------------------------

loc_140271022:                          ; CODE XREF: ExAcquireSharedStarveExclusive+24↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rcx
                mov     r8, r10
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExAcquireSharedStarveExclusive endp
