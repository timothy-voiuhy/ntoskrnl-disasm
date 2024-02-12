FsRtlAllocateExtraCreateParameterList proc near
                                        ; CODE XREF: sub_1405ECB84+4F↑p
                                        ; sub_140702C60+73↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001407F5360 SIZE 0000001D BYTES

                push    rbx
                sub     rsp, 20h
                mov     qword ptr [rdx], 0
                mov     rbx, rdx
                test    cl, 1
                jnz     loc_1407F5360
                inc     cs:dword_140CDB294
                lea     rcx, word_140CDB280
                call    ExpInterlockedPopEntrySList
                test    rax, rax
                jz      short loc_1405ECD4A

loc_1405ECD20:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterList+7F↓j
                mov     edx, 6

loc_1405ECD25:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterList+208688↓j
                test    rax, rax
                jz      short loc_1405ECD71
                lea     rcx, [rax+8]
                mov     [rax+4], edx
                mov     dword ptr [rax], 4C706345h
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                mov     [rbx], rax
                xor     eax, eax

loc_1405ECD43:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterList+86↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405ECD4A:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterList+2E↑j
                inc     cs:dword_140CDB298
                mov     edx, cs:dword_140CDB2AC
                mov     rax, cs:qword_140CDB2B0
                mov     r8d, cs:dword_140CDB2A8
                mov     ecx, cs:dword_140CDB2A4
                call    sub_1404079D0
                jmp     short loc_1405ECD20
; ---------------------------------------------------------------------------

loc_1405ECD71:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterList+38↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1405ECD43
FsRtlAllocateExtraCreateParameterList endp
