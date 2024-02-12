ObReferenceObjectSafe proc near         ; CODE XREF: sub_1403EFABC+71↓p
                                        ; sub_140614D10+7E↓p ...

; FUNCTION CHUNK AT 000000014041DFEA SIZE 0000001B BYTES

                sub     rsp, 28h
                add     rcx, 0FFFFFFFFFFFFFFD0h
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_1403282F8

loc_1403282D3:                          ; CODE XREF: ObReferenceObjectSafe+36↓j
                lea     rdx, [rax+1]
                lock cmpxchg [rcx], rdx
                jnz     short loc_1403282F3
                cmp     cs:dword_140CFB010, 0
                jnz     loc_14041DFEA

loc_1403282EB:                          ; CODE XREF: ObReferenceObjectSafe+F5D40↓j
                mov     al, 1

loc_1403282ED:                          ; CODE XREF: ObReferenceObjectSafe+3A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403282F3:                          ; CODE XREF: ObReferenceObjectSafe+1C↑j
                test    rax, rax
                jnz     short loc_1403282D3

loc_1403282F8:                          ; CODE XREF: ObReferenceObjectSafe+11↑j
                xor     al, al
                jmp     short loc_1403282ED
ObReferenceObjectSafe endp
