FsRtlInitializeLargeMcb proc near       ; CODE XREF: FsRtlInitializeMcb+4↓p
                                        ; DATA XREF: .rdata:000000014007B52C↑o ...

; FUNCTION CHUNK AT 0000000140474462 SIZE 0000000B BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     r8d, 1
                add     rcx, 8
                call    FsRtlInitializeBaseMcbEx
                lea     rcx, unk_140CDB700
                call    sub_14030E5D4
                xor     ecx, ecx
                mov     [rbx], rax
                test    rax, rax
                jz      loc_140474462
                mov     dword ptr [rax], 1
                mov     [rax+8], rcx
                mov     [rax+10h], ecx
                mov     word ptr [rax+18h], 1
                mov     byte ptr [rax+1Ah], 6
                mov     [rax+1Ch], ecx
                add     rax, 20h ; ' '
                mov     [rax+8], rax
                mov     [rax], rax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInitializeLargeMcb endp
