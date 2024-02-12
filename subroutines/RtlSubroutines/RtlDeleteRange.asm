RtlDeleteRange  proc near               ; CODE XREF: sub_1407D0940+17↓p
                                        ; sub_1408A4880+52↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140842316 SIZE 00000068 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, [rcx]
                mov     rbx, rcx
                mov     rdi, r8
                mov     rsi, rdx
                mov     r10d, 0C000028Ch
                lea     rcx, [rax-28h]
                jmp     short loc_14075FEB5
; ---------------------------------------------------------------------------

loc_14075FE97:                          ; CODE XREF: RtlDeleteRange+4F↓j
                mov     rdx, [rcx]
                cmp     rdi, rdx
                jb      short loc_14075FEFF
                test    byte ptr [rcx+22h], 1
                jnz     loc_140842316
                cmp     rdx, rsi
                jz      short loc_14075FEC3

loc_14075FEAE:                          ; CODE XREF: RtlDeleteRange+57↓j
                                        ; RtlDeleteRange+5D↓j ...
                mov     rcx, r11
                lea     rax, [r11+28h]

loc_14075FEB5:                          ; CODE XREF: RtlDeleteRange+25↑j
                mov     r11, [rax]
                sub     r11, 28h ; '('
                cmp     rbx, rax
                jnz     short loc_14075FE97
                jmp     short loc_14075FEFF
; ---------------------------------------------------------------------------

loc_14075FEC3:                          ; CODE XREF: RtlDeleteRange+3C↑j
                cmp     [rcx+8], rdi
                jnz     short loc_14075FEAE
                cmp     [rcx+18h], r9
                jnz     short loc_14075FEAE
                lea     rax, [rcx+28h]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     short loc_14075FF13
                mov     r8, [rax+8]
                cmp     [r8], rax
                jnz     short loc_14075FF13
                mov     [r8], rdx
                mov     [rdx+8], r8
                call    sub_1407600D8
                xor     r10d, r10d

loc_14075FEF4:                          ; CODE XREF: RtlDeleteRange+E24ED↓j
                test    r10d, r10d
                js      short loc_14075FEFF
                dec     dword ptr [rbx+14h]
                inc     dword ptr [rbx+18h]

loc_14075FEFF:                          ; CODE XREF: RtlDeleteRange+2D↑j
                                        ; RtlDeleteRange+51↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, r10d
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075FF13:                          ; CODE XREF: RtlDeleteRange+6A↑j
                                        ; RtlDeleteRange+73↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlDeleteRange  endp

; ---------------------------------------------------------------------------
algn_14075FF1A:                         ; DATA XREF: .rdata:00000001400920A8↑o
                                        ; .pdata:0000000140109E30↑o
                align 20h
; Exported entry 2076. RtlDeleteOwnersRanges

; =============== S U B R O U T I N E =======================================


