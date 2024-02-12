PsAcquireSiloHardReference proc near    ; CODE XREF: sub_140653C50+E31↓p
                                        ; sub_14068313C+129↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014041E398 SIZE 00000017 BYTES

                sub     rsp, 28h
                mov     r8, rcx
                test    rcx, rcx
                jz      short loc_1402009EF
                test    dword ptr [rcx+528h], 40000000h
                jz      short loc_1402009F7

loc_1402009B8:                          ; CODE XREF: PsAcquireSiloHardReference+59↓j
                prefetchw byte ptr [rcx+5F0h]
                mov     rax, [rcx+5F0h]
                lea     rcx, [rax+1]

loc_1402009CA:                          ; CODE XREF: PsAcquireSiloHardReference+5E↓j
                cmp     rcx, 1
                jbe     loc_14041E398
                lock cmpxchg [r8+5F0h], rcx
                mov     rcx, rax
                jnz     short loc_1402009FB
                mov     edx, 486C6953h
                mov     rcx, r8
                call    ObfReferenceObjectWithTag

loc_1402009EF:                          ; CODE XREF: PsAcquireSiloHardReference+A↑j
                xor     eax, eax

loc_1402009F1:                          ; CODE XREF: PsAcquireSiloHardReference+21DA0A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402009F7:                          ; CODE XREF: PsAcquireSiloHardReference+16↑j
                int     2Ch             ; Windows NT - assertion failure
                jmp     short loc_1402009B8
; ---------------------------------------------------------------------------

loc_1402009FB:                          ; CODE XREF: PsAcquireSiloHardReference+40↑j
                inc     rcx
                jmp     short loc_1402009CA
PsAcquireSiloHardReference endp
