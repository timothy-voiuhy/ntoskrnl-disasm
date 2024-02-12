ObReferenceObjectSafeWithTag proc near  ; CODE XREF: sub_140201210+4C↑p
                                        ; sub_14026200C+62↓p ...

; FUNCTION CHUNK AT 0000000140431892 SIZE 00000018 BYTES

                sub     rsp, 28h
                add     rcx, 0FFFFFFFFFFFFFFD0h
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_1402434A3

loc_140243483:                          ; CODE XREF: ObReferenceObjectSafeWithTag+3A↓j
                lea     r8, [rax+1]
                lock cmpxchg [rcx], r8
                jnz     short loc_1402434A7
                cmp     cs:dword_140CFB010, 0
                jnz     loc_140431892

loc_14024349B:                          ; CODE XREF: ObReferenceObjectSafeWithTag+1EE435↓j
                mov     al, 1

loc_14024349D:                          ; CODE XREF: ObReferenceObjectSafeWithTag+35↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402434A3:                          ; CODE XREF: ObReferenceObjectSafeWithTag+11↑j
                                        ; ObReferenceObjectSafeWithTag+3C↓j
                xor     al, al
                jmp     short loc_14024349D
; ---------------------------------------------------------------------------

loc_1402434A7:                          ; CODE XREF: ObReferenceObjectSafeWithTag+1C↑j
                test    rax, rax
                jnz     short loc_140243483
                jmp     short loc_1402434A3
ObReferenceObjectSafeWithTag endp
