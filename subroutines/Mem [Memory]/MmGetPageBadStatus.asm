MmGetPageBadStatus proc near            ; CODE XREF: sub_1404D026C+6A↑p
                                        ; sub_1405BBDE0+29↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     rcx, 0FFFFFFFFFh
                shr     rax, 0Ch
                cmp     rax, rcx
                ja      loc_14052FAD9
                lea     rcx, [rax+rax*2]
                add     rcx, rcx
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rax+rcx*8]
                mov     rdx, 4000000000000h
                test    rdx, rax
                jz      loc_14052FAD9
                mov     rax, 0FFFFFA8000000000h
                lea     rdi, [rax+rcx*8]
                mov     rcx, rdi
                call    sub_1402DAA00
                mov     rcx, rdi
                movzx   esi, al
                call    sub_1402D9F7C
                test    eax, eax
                jz      short loc_14052FA5D
                mov     ebx, 0C0000709h
                jmp     short loc_14052FA6E
; ---------------------------------------------------------------------------

loc_14052FA5D:                          ; CODE XREF: MmGetPageBadStatus+74↑j
                test    byte ptr [rdi+23h], 40h
                mov     ebx, 0
                mov     eax, 103h
                cmovnz  ebx, eax

loc_14052FA6E:                          ; CODE XREF: MmGetPageBadStatus+7B↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14052FAD1
                test    al, 1
                jz      short loc_14052FAD1
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14052FAD1
                cmp     sil, 0Fh
                ja      short loc_14052FAD1
                cmp     al, 2
                jb      short loc_14052FAD1
                mov     rax, gs:20h
                lea     ecx, [rsi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   edx, dx
                mov     r9, [rax+84B8h]
                not     edx
                mov     r8d, [r9+14h]
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_14052FAD1
                mov     rcx, rax
                call    sub_1403F2EC4

loc_14052FAD1:                          ; CODE XREF: MmGetPageBadStatus+A5↑j
                                        ; MmGetPageBadStatus+A9↑j ...
                mov     cr8, rsi
                mov     eax, ebx
                jmp     short loc_14052FADE
; ---------------------------------------------------------------------------

loc_14052FAD9:                          ; CODE XREF: MmGetPageBadStatus+23↑j
                                        ; MmGetPageBadStatus+4B↑j
                mov     eax, 0C00000EFh

loc_14052FADE:                          ; CODE XREF: MmGetPageBadStatus+F7↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGetPageBadStatus endp
