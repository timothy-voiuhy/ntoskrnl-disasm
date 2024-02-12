ExIsResourceAcquiredExclusiveLite proc near
                                        ; CODE XREF: sub_14067296C+19BA1F↓p
                                        ; DATA XREF: .rdata:0000000140078798↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404708DE SIZE 0000002C BYTES

                sub     rsp, 38h
                movzx   edx, word ptr [rcx+1Ah]
                mov     r8, rcx
                movzx   eax, dl
                and     al, 41h
                cmp     al, 1
                jz      short loc_140319FE6
                movzx   eax, dx
                and     ax, 1
                jnz     short loc_140319FD8

loc_140319FAD:                          ; CODE XREF: ExIsResourceAcquiredExclusiveLite+4F↓j
                test    ax, ax
                jnz     loc_1404708FC
                xor     cl, cl
                test    dl, dl
                js      short loc_140319FC5

loc_140319FBC:                          ; CODE XREF: ExIsResourceAcquiredExclusiveLite+42↓j
                                        ; ExIsResourceAcquiredExclusiveLite+46↓j
                movzx   eax, cl

loc_140319FBF:                          ; CODE XREF: ExIsResourceAcquiredExclusiveLite+156975↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140319FC5:                          ; CODE XREF: ExIsResourceAcquiredExclusiveLite+2A↑j
                mov     rax, gs:188h
                cmp     [r8+30h], rax
                jnz     short loc_140319FBC
                mov     cl, 1
                jmp     short loc_140319FBC
; ---------------------------------------------------------------------------

loc_140319FD8:                          ; CODE XREF: ExIsResourceAcquiredExclusiveLite+1B↑j
                mov     rcx, cr8
                cmp     cl, 2
                jbe     short loc_140319FAD
                jmp     loc_1404708DE
; ---------------------------------------------------------------------------

loc_140319FE6:                          ; CODE XREF: ExIsResourceAcquiredExclusiveLite+12↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExIsResourceAcquiredExclusiveLite endp
