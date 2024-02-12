MmUnmapViewInSystemSpace proc near      ; CODE XREF: sub_14037F0FC+F4↑p
                                        ; sub_14037FA10+9F↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_140245330
                mov     r8d, 1
                cmp     eax, r8d
                jz      short loc_14065FBA1
                lea     rcx, unk_140C4CBE8

loc_14065FB90:                          ; CODE XREF: MmUnmapViewInSystemSpace+5B↓j
                mov     rdx, rbx
                call    sub_1402A472C
                xor     eax, eax

loc_14065FB9A:                          ; CODE XREF: MmUnmapViewInSystemSpace+62↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14065FBA1:                          ; CODE XREF: MmUnmapViewInSystemSpace+17↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+464h], 10000h
                jz      short loc_14065FBCD
                mov     rcx, [rcx+558h]
                add     rcx, 0C0h
                jmp     short loc_14065FB90
; ---------------------------------------------------------------------------

loc_14065FBCD:                          ; CODE XREF: MmUnmapViewInSystemSpace+4B↑j
                mov     eax, 0C0000019h
                jmp     short loc_14065FB9A
MmUnmapViewInSystemSpace endp
