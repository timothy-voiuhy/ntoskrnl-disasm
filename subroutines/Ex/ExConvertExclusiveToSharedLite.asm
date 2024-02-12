ExConvertExclusiveToSharedLite proc near
                                        ; CODE XREF: sub_1402D43A8+18854C↓p
                                        ; sub_140679140+4F↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014047EAF2 SIZE 0000002E BYTES

                sub     rsp, 38h
                movzx   r8d, word ptr [rcx+1Ah]
                mov     r9d, 1
                mov     al, r8b
                xor     edx, edx
                and     al, 41h
                cmp     al, r9b
                jz      short loc_140345339
                and     r8w, r9w
                jnz     short loc_140345309

loc_1403452F1:                          ; CODE XREF: ExConvertExclusiveToSharedLite+4F↓j
                                        ; ExConvertExclusiveToSharedLite+59↓j ...
                test    r8w, r8w
                jnz     short loc_140345302
                call    sub_14034535C

loc_1403452FC:                          ; CODE XREF: ExConvertExclusiveToSharedLite+37↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140345302:                          ; CODE XREF: ExConvertExclusiveToSharedLite+25↑j
                call    sub_14038E1B8
                jmp     short loc_1403452FC
; ---------------------------------------------------------------------------

loc_140345309:                          ; CODE XREF: ExConvertExclusiveToSharedLite+1F↑j
                mov     rax, cr8
                mov     r10, gs:188h
                cmp     al, r9b
                ja      loc_14047EAF2
                jnb     short loc_1403452F1
                test    dword ptr [r10+74h], 400h
                jnz     short loc_1403452F1
                cmp     [r10+1E4h], edx
                jnz     short loc_1403452F1
                jmp     loc_14047EB06
; ---------------------------------------------------------------------------

loc_140345339:                          ; CODE XREF: ExConvertExclusiveToSharedLite+19↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExConvertExclusiveToSharedLite endp
