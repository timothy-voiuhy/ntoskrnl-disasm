InbvAcquireDisplayOwnership proc near   ; CODE XREF: sub_140518220+1FF↓p
                                        ; sub_1409B47B0+14↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1404FEFDE
                mov     rax, [rax+8]
                test    rax, rax
                jz      short loc_1404FEFDE
                call    sub_1404079D0

loc_1404FEFDE:                          ; CODE XREF: InbvAcquireDisplayOwnership+E↑j
                                        ; InbvAcquireDisplayOwnership+17↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvAcquireDisplayOwnership endp
