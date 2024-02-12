FsRtlNotifyVolumeEventEx proc near      ; CODE XREF: sub_14069C3B0+1A1↑p
                                        ; FsRtlNotifyVolumeEvent+3F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140816BBA SIZE 000000AF BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+20h], 0
                mov     ebx, edx
                lea     rdx, [rax+20h]
                mov     rdi, r8
                call    sub_14069C6DC
                mov     esi, eax
                test    eax, eax
                js      short loc_14069C690
                cmp     ebx, 8
                ja      loc_140816BEF
                jz      loc_140816BE3
                sub     ebx, 1
                jz      loc_14069C6C1
                sub     ebx, 1
                jz      loc_140816BD7
                sub     ebx, 1
                jz      short loc_14069C6A3
                sub     ebx, 1
                jz      loc_140816BCB
                sub     ebx, 1
                jz      short loc_14069C6CA
                sub     ebx, 1
                jnz     loc_140816BBA
                movups  xmm0, cs:xmmword_1400117D8

loc_14069C66D:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+17A5C6↓j
                                        ; FsRtlNotifyVolumeEventEx+17A5EA↓j ...
                mov     rbx, [rsp+28h+arg_18]
                xor     r9d, r9d
                mov     rcx, rbx
                xor     r8d, r8d
                mov     rdx, rdi
                movdqu  xmmword ptr [rdi+4], xmm0
                call    IoReportTargetDeviceChangeAsynchronous

loc_14069C688:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+BF↓j
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_14069C690:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+27↑j
                mov     eax, esi

loc_14069C692:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+17A628↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069C6A3:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+4D↑j
                movups  xmm0, cs:xmmword_140010F80

loc_14069C6AA:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+C8↓j
                                        ; FsRtlNotifyVolumeEventEx+D1↓j ...
                mov     rbx, [rsp+28h+arg_18]
                mov     rdx, rdi
                mov     rcx, rbx
                movdqu  xmmword ptr [rdi+4], xmm0
                call    IoReportTargetDeviceChange
                jmp     short loc_14069C688
; ---------------------------------------------------------------------------

loc_14069C6C1:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+3B↑j
                movups  xmm0, cs:xmmword_140010F90
                jmp     short loc_14069C6AA
; ---------------------------------------------------------------------------

loc_14069C6CA:                          ; CODE XREF: FsRtlNotifyVolumeEventEx+5B↑j
                movups  xmm0, cs:xmmword_140010FA0
                jmp     short loc_14069C6AA
FsRtlNotifyVolumeEventEx endp
