IoInitializeMiniCompletionPacket proc near
                                        ; DATA XREF: .pdata:000000014011CA6C↑o
                mov     dword ptr [rcx+10h], 4
                mov     [rcx+38h], rdx
                mov     [rcx+40h], r8
                mov     byte ptr [rcx+48h], 0
                retn
IoInitializeMiniCompletionPacket endp
