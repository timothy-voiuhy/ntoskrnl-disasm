_strlwr         proc near               ; DATA XREF: .pdata:00000001400E06DC↑o
                mov     dl, [rcx]
                mov     r8, rcx
                jmp     short loc_1403D1A4A
; ---------------------------------------------------------------------------

loc_1403D1A37:                          ; CODE XREF: _strlwr+1C↓j
                lea     eax, [rdx-41h]
                cmp     al, 19h
                ja      short loc_1403D1A44
                add     dl, 20h ; ' '
                mov     [r8], dl

loc_1403D1A44:                          ; CODE XREF: _strlwr+C↑j
                inc     r8
                mov     dl, [r8]

loc_1403D1A4A:                          ; CODE XREF: _strlwr+5↑j
                test    dl, dl
                jnz     short loc_1403D1A37
                mov     rax, rcx
                retn
_strlwr         endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D1A53  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E06DC↑o

; =============== S U B R O U T I N E =======================================


sub_1403D1A5C   proc near               ; CODE XREF: _strnicmp+4↓p
                                        ; DATA XREF: .pdata:00000001400E06E8↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     r10, r8
                mov     r11, rdx
                mov     rbx, rcx
                test    r8, r8
                jz      short loc_1403D1AB0

loc_1403D1A6F:                          ; CODE XREF: sub_1403D1A5C+4B↓j
                movzx   r9d, byte ptr [rbx]
                inc     rbx
                movzx   ecx, byte ptr [r11]
                lea     eax, [r9-41h]
                cmp     eax, 19h
                lea     edx, [r9+20h]
                lea     eax, [rcx-41h]
                cmova   edx, r9d
                lea     r8d, [rcx+20h]
                inc     r11
                cmp     eax, 19h
                cmova   r8d, ecx
                sub     r10, 1
                jz      short loc_1403D1AA9
                test    edx, edx
                jz      short loc_1403D1AA9
                cmp     edx, r8d
                jz      short loc_1403D1A6F

loc_1403D1AA9:                          ; CODE XREF: sub_1403D1A5C+42↑j
                                        ; sub_1403D1A5C+46↑j
                sub     edx, r8d
                mov     eax, edx
                jmp     short loc_1403D1AB2
; ---------------------------------------------------------------------------

loc_1403D1AB0:                          ; CODE XREF: sub_1403D1A5C+11↑j
                xor     eax, eax

loc_1403D1AB2:                          ; CODE XREF: sub_1403D1A5C+52↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1A5C   endp

algn_1403D1AB9:                         ; DATA XREF: .pdata:00000001400E06E8↑o
                align 20h
; Exported entry 2976. _strnicmp

; =============== S U B R O U T I N E =======================================


