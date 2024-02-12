ObDeleteCapturedInsertInfo proc near    ; CODE XREF: CcInitializeCacheMapEx+45C↑p
                                        ; sub_14066C7CC+8F0↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014080C890 SIZE 0000001D BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr [rcx-15h], 1
                mov     rbx, rcx
                jz      short loc_14066DE8B
                mov     rdx, [rcx-10h]
                test    rdx, rdx
                jz      short loc_14066DE8B
                mov     rcx, [rdx+20h]
                test    rcx, rcx
                jnz     loc_14080C890

loc_14066DE65:                          ; CODE XREF: ObDeleteCapturedInsertInfo+19EA68↓j
                mov     r8, gs:20h
                mov     rcx, [r8+840h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     short loc_14066DE92

loc_14066DE81:                          ; CODE XREF: ObDeleteCapturedInsertInfo+66↓j
                call    ExpInterlockedPushEntrySList

loc_14066DE86:                          ; CODE XREF: ObDeleteCapturedInsertInfo+77↓j
                and     qword ptr [rbx-10h], 0

loc_14066DE8B:                          ; CODE XREF: ObDeleteCapturedInsertInfo+D↑j
                                        ; ObDeleteCapturedInsertInfo+16↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066DE92:                          ; CODE XREF: ObDeleteCapturedInsertInfo+3F↑j
                inc     dword ptr [rcx+20h]
                mov     rcx, [r8+848h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_14066DE81
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, rdx
                call    sub_1404079D0
                jmp     short loc_14066DE86
ObDeleteCapturedInsertInfo endp
