IoGetBaseFileSystemDeviceObject proc near
                                        ; CODE XREF: sub_1402D41D8+6C↑p
                                        ; sub_1402D43A8+74↑p ...

; FUNCTION CHUNK AT 000000014045CCA4 SIZE 00000012 BYTES

                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short loc_1402D4F44
                mov     rax, [rax+8]
                test    rax, rax
                jz      short loc_1402D4F44

locret_1402D4F42:                       ; CODE XREF: IoGetBaseFileSystemDeviceObject+187D7B↓j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402D4F44:                          ; CODE XREF: IoGetBaseFileSystemDeviceObject+7↑j
                                        ; IoGetBaseFileSystemDeviceObject+10↑j
                test    dword ptr [rcx+50h], 800h
                jnz     short loc_1402D4F5E
                mov     rax, [rcx+8]
                mov     rax, [rax+38h]
                test    rax, rax
                jnz     loc_14045CCA4

loc_1402D4F5E:                          ; CODE XREF: IoGetBaseFileSystemDeviceObject+1B↑j
                                        ; IoGetBaseFileSystemDeviceObject+187D81↓j
                mov     rax, [rcx+8]
                retn
IoGetBaseFileSystemDeviceObject endp
