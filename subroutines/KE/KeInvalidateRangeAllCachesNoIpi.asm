KeInvalidateRangeAllCachesNoIpi proc near
                                        ; CODE XREF: sub_1402D66FC+50↑p
                                        ; sub_1404DB998+82↓p ...

; FUNCTION CHUNK AT 000000014045D5F0 SIZE 0000001A BYTES

                sub     rsp, 28h
                cmp     edx, cs:dword_140CFB14C
                jnb     short loc_1402D6801
                mov     rax, gs:20h
                mov     r10, 800000000h
                mov     edx, edx
                add     rdx, rcx
                mov     r8d, [rax+0E8h]
                lea     r9, [r8-1]
                not     r9
                mov     rax, r9
                and     rax, rcx
                test    cs:qword_140CFC458, r10
                jnz     loc_14045D5F0
                cmp     rax, rdx
                jnb     short loc_1402D67FB
                nop     word ptr [rax+rax+00h]

loc_1402D67F0:                          ; CODE XREF: KeInvalidateRangeAllCachesNoIpi+59↓j
                clflush byte ptr [rax]
                add     rax, r8
                cmp     rax, rdx
                jb      short loc_1402D67F0

loc_1402D67FB:                          ; CODE XREF: KeInvalidateRangeAllCachesNoIpi+48↑j
                                        ; KeInvalidateRangeAllCachesNoIpi+66↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402D6801:                          ; CODE XREF: KeInvalidateRangeAllCachesNoIpi+A↑j
                call    KeInvalidateAllCaches
                jmp     short loc_1402D67FB
KeInvalidateRangeAllCachesNoIpi endp
