IoGetOplockKeyContext proc near         ; DATA XREF: .pdata:00000001400F276C↑o
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+6]
                call    sub_14021B460
                test    rax, rax
                jz      short loc_140505D02
                test    byte ptr [rax+2], 2
                jz      short loc_140505D02
                lea     r9, [rax+14h]

loc_140505D02:                          ; CODE XREF: IoGetOplockKeyContext+16↑j
                                        ; IoGetOplockKeyContext+1C↑j
                mov     rax, r9
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetOplockKeyContext endp
