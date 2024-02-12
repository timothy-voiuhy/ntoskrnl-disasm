HalGetProcessorIdByNtNumber proc near   ; CODE XREF: HalGetMessageRoutingInfo+EB↑p
                                        ; sub_140378518+11BB3F↓p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140493A14 SIZE 0000000A BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rdi, rdx
                mov     ebx, cs:dword_140C50780
                cmp     ecx, ebx
                jnb     loc_140493A14
                lea     rdx, [rsp+28h+arg_0]
                call    KeGetProcessorNumberFromIndex
                test    eax, eax
                js      short loc_140377686
                xor     edx, edx
                test    ebx, ebx
                jz      short loc_14037769C
                mov     rcx, cs:qword_140C4BD28
                mov     eax, [rsp+28h+arg_0]
                add     rcx, 0Dh
                mov     r8b, byte ptr [rsp+28h+arg_0+2]

loc_140377668:                          ; CODE XREF: HalGetProcessorIdByNtNumber+7A↓j
                cmp     byte ptr [rcx-1], 0
                jz      short loc_140377692
                cmp     byte ptr [rcx], 0
                jz      short loc_140377692
                cmp     [rcx+3], ax
                jnz     short loc_140377692
                cmp     [rcx+5], r8b
                jnz     short loc_140377692
                mov     eax, [rcx-0Dh]
                mov     [rdi], eax
                xor     eax, eax

loc_140377686:                          ; CODE XREF: HalGetProcessorIdByNtNumber+2C↑j
                                        ; HalGetProcessorIdByNtNumber+81↓j ...
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140377692:                          ; CODE XREF: HalGetProcessorIdByNtNumber+4C↑j
                                        ; HalGetProcessorIdByNtNumber+51↑j ...
                inc     edx
                add     rcx, 40h ; '@'
                cmp     edx, ebx
                jb      short loc_140377668

loc_14037769C:                          ; CODE XREF: HalGetProcessorIdByNtNumber+32↑j
                mov     eax, 0C0000225h
                jmp     short loc_140377686
HalGetProcessorIdByNtNumber endp
