KeInitializeDeviceQueue proc near       ; CODE XREF: IoCreateDevice+35A↓p
                                        ; sub_14076376C+14A↓p ...
                lea     rax, [rcx+8]
                mov     dword ptr [rcx], 280014h
                mov     [rax+8], rax
                mov     [rax], rax
                and     qword ptr [rcx+18h], 0
                mov     byte ptr [rcx+20h], 0
                and     qword ptr [rcx+20h], 0FFh
                retn
KeInitializeDeviceQueue endp
