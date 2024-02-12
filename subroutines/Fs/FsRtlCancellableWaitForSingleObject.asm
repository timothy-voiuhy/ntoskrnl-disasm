FsRtlCancellableWaitForSingleObject proc near
                                        ; CODE XREF: sub_1404F0DE0+210↑p
                                        ; DATA XREF: .pdata:0000000140106470↑o
                mov     rax, rsp
                mov     [rax+8], rcx
                sub     rsp, 38h
                mov     [rax-10h], r8
                mov     r9, rdx
                and     qword ptr [rax-18h], 0
                lea     rdx, [rax+8]
                xor     r8d, r8d
                lea     ecx, [r8+1]
                call    FsRtlCancellableWaitForMultipleObjects
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCancellableWaitForSingleObject endp
