RtlPcToFilePath proc near               ; CODE XREF: KitLogFeatureUsage+B9↑p
                                        ; sub_14070B590+11E67C↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rsi, rdx
                mov     rdi, rcx
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                mov     r8, qword ptr cs:PsLoadedModuleList
                xor     ebx, ebx
                test    r8, r8
                jz      short loc_14091A959
                lea     r9, PsLoadedModuleList
                jmp     short loc_14091A954
; ---------------------------------------------------------------------------

loc_14091A93A:                          ; CODE XREF: RtlPcToFilePath+67↓j
                mov     rdx, r8
                mov     r8, [r8]
                mov     rcx, [rdx+30h]
                cmp     rdi, rcx
                jb      short loc_14091A954
                mov     eax, [rdx+40h]
                add     rax, rcx
                cmp     rdi, rax
                jb      short loc_14091A982

loc_14091A954:                          ; CODE XREF: RtlPcToFilePath+48↑j
                                        ; RtlPcToFilePath+57↑j
                cmp     r8, r9
                jnz     short loc_14091A93A

loc_14091A959:                          ; CODE XREF: RtlPcToFilePath+3F↑j
                mov     ebx, 0C0000225h

loc_14091A95E:                          ; CODE XREF: RtlPcToFilePath+9E↓j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14091A982:                          ; CODE XREF: RtlPcToFilePath+62↑j
                add     rdx, 48h ; 'H'
                mov     rcx, rsi
                call    RtlCopyUnicodeString
                jmp     short loc_14091A95E
RtlPcToFilePath endp
