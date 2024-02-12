RtlCopyBitMap   proc near               ; CODE XREF: sub_1402B007C+10A↑p
                                        ; sub_1402B007C+131↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044E78A SIZE 000000CE BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebx, [rdx]
                mov     r14, rdx
                mov     eax, [rcx]
                sub     ebx, r8d
                cmp     eax, ebx
                mov     r10d, r8d
                mov     rbp, rcx
                cmovbe  ebx, eax
                test    rbx, rbx
                jz      short loc_1402B179D
                mov     rcx, [rdx+8]
                mov     eax, r10d
                mov     r11, [rbp+8]
                mov     r8d, r10d
                shr     rax, 5
                lea     r9, [rcx+rax*4]
                cmp     r11, r9
                ja      short loc_1402B17BB
                lea     rax, [rbx-1]
                shr     rax, 5
                lea     rax, [r11+rax*4]
                cmp     r9, rax
                ja      short loc_1402B17BB
                mov     r9d, ebx
                mov     rcx, rbp
                call    sub_1402B187C

loc_1402B179D:                          ; CODE XREF: RtlCopyBitMap+34↑j
                                        ; RtlCopyBitMap+B8↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B17BB:                          ; CODE XREF: RtlCopyBitMap+4F↑j
                                        ; RtlCopyBitMap+60↑j
                mov     rsi, r8
                shr     rsi, 3
                test    r10b, 7
                jnz     short loc_1402B181D
                mov     rdi, rbx
                and     ebx, 7
                shr     rdi, 3
                test    rdi, rdi
                jz      short loc_1402B17E5
                add     rcx, rsi
                mov     r8, rdi
                mov     rdx, r11
                call    memmove

loc_1402B17E5:                          ; CODE XREF: RtlCopyBitMap+A5↑j
                test    rbx, rbx
                jz      short loc_1402B179D
                mov     r9, [r14+8]
                mov     r10d, 1
                mov     rcx, rbx
                add     r9, rsi
                add     r9, rdi
                mov     r8d, r10d
                shl     r8b, cl
                sub     r8b, r10b
                mov     al, r8b
                not     al
                and     [r9], al
                mov     rax, [rbp+8]
                mov     cl, [rdi+rax]
                and     cl, r8b
                or      [r9], cl
                jmp     short loc_1402B179D
; ---------------------------------------------------------------------------

loc_1402B181D:                          ; CODE XREF: RtlCopyBitMap+96↑j
                mov     edi, 20h ; ' '
                and     r8d, 1Fh
                lea     r10d, [rdi-1Fh]
                cmp     rbx, rdi
                jnb     loc_14044E78A

loc_1402B1833:                          ; CODE XREF: RtlCopyBitMap+19D0D4↓j
                test    rbx, rbx
                jz      loc_1402B179D
                mov     esi, [r11]
                sub     rdi, r8
                mov     ebp, [r9]
                cmp     rbx, rdi
                ja      loc_14044E809
                mov     rcx, rbx
                shl     r10d, cl
                mov     rcx, r8
                lea     edx, [r10-1]
                shl     edx, cl
                lea     eax, [r10-1]
                not     edx
                and     eax, esi
                and     edx, ebp
                shl     eax, cl
                or      edx, eax
                mov     [r9], edx
                jmp     loc_1402B179D
RtlCopyBitMap   endp

; ---------------------------------------------------------------------------
byte_1402B1873  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140064264↑o
                                        ; .pdata:00000001400D05C0↑o

; =============== S U B R O U T I N E =======================================


sub_1402B187C   proc near               ; CODE XREF: RtlCopyBitMap+68↑p
                                        ; DATA XREF: .rdata:0000000140064294↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044E858 SIZE 0000007C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebx, r8d
                mov     rdi, rdx
                shr     rbx, 3
                mov     rsi, rcx
                mov     r11d, r8d
                mov     r10d, r9d
                test    r8b, 7
                jz      loc_1402B19A3
                mov     rax, [rdx+8]
                mov     r8d, r11d
                mov     ecx, r10d
                shr     r11, 5
                shr     r10, 5
                mov     edi, 20h ; ' '
                add     r11, r10
                and     r8d, 1Fh
                and     ecx, 1Fh
                lea     rbp, [rax+r11*4]
                mov     rax, [rsi+8]
                lea     r11d, [rdi-1Fh]
                mov     r14, rbp
                lea     r9, [rax+r10*4]
                test    rcx, rcx
                jz      short loc_1402B191D
                mov     esi, [r9]
                mov     ebx, edi
                sub     rbx, r8
                cmp     rcx, rbx
                ja      loc_14044E88B
                mov     eax, r11d
                shl     eax, cl
                mov     ecx, r8d
                lea     edx, [rax-1]
                shl     edx, cl
                not     edx
                and     edx, [rbp+0]
                dec     eax
                and     eax, esi
                shl     eax, cl
                or      edx, eax
                mov     [rbp+0], edx

loc_1402B191D:                          ; CODE XREF: sub_1402B187C+71↑j
                                        ; sub_1402B187C+19D053↓j
                sub     r9, 4
                test    r10, r10
                jz      short loc_1402B1983
                mov     ebx, [rbp+0]
                sub     rdi, r8
                mov     rcx, rdi
                mov     r15d, r11d
                shl     r15d, cl
                mov     r12d, r11d
                mov     rcx, r8
                shl     r12d, cl
                dec     r12d
                mov     ebp, r12d
                lea     esi, [r15-1]
                not     ebp
                not     esi

loc_1402B194C:                          ; CODE XREF: sub_1402B187C+105↓j
                mov     rcx, rdi
                mov     edx, esi
                and     edx, [r9]
                mov     eax, ebp
                and     eax, ebx
                shr     edx, cl
                or      eax, edx
                mov     rcx, r8
                mov     [r14], eax
                lea     r14, [r14-4]
                mov     ebx, [r14]
                lea     eax, [r15-1]
                and     eax, [r9]
                and     ebx, r12d
                shl     eax, cl
                lea     r9, [r9-4]
                or      ebx, eax
                mov     [r14], ebx
                sub     r10, r11
                jnz     short loc_1402B194C

loc_1402B1983:                          ; CODE XREF: sub_1402B187C+A8↑j
                                        ; sub_1402B187C+13B↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B19A3:                          ; CODE XREF: sub_1402B187C+34↑j
                mov     r8, r10
                shr     r8, 3
                and     r10d, 7
                ja      loc_14044E858

loc_1402B19B4:                          ; CODE XREF: sub_1402B187C+19D00A↓j
                test    r8, r8
                jz      short loc_1402B1983
                mov     rcx, [rdi+8]
                mov     rdx, [rsi+8]
                add     rcx, rbx
                call    memmove
                jmp     short loc_1402B1983
sub_1402B187C   endp

; ---------------------------------------------------------------------------
byte_1402B19CB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140064294↑o
                                        ; .pdata:00000001400D05CC↑o

; =============== S U B R O U T I N E =======================================


sub_1402B19D4   proc near               ; CODE XREF: sub_1402B0B38+7E↑p
                                        ; sub_1402B0B38+8A↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                mov     r9d, [rcx]
                mov     rbx, rdx
                mov     eax, [rdx]
                mov     rdi, rcx
                cmp     r9d, eax
                cmovnb  r9d, eax
                xor     r11d, r11d
                jmp     short loc_1402B1A11
; ---------------------------------------------------------------------------

loc_1402B19F5:                          ; CODE XREF: sub_1402B19D4+4A↓j
                mov     r8, [rdi+8]
                mov     ecx, r9d
                mov     edx, 1
                shl     rdx, cl
                dec     edx
                and     edx, [rax+r11*4]
                or      [r8+r11*4], edx
                xor     r9d, r9d

loc_1402B1A11:                          ; CODE XREF: sub_1402B19D4+1F↑j
                                        ; sub_1402B19D4+5F↓j
                test    r9d, r9d
                jz      short loc_1402B1A35
                mov     rax, [rbx+8]
                cmp     r9d, 20h ; ' '
                jb      short loc_1402B19F5
                mov     ecx, [rax+r11*4]
                add     r9d, 0FFFFFFE0h
                mov     rdx, [rdi+8]
                or      [rdx+r11*4], ecx
                inc     r11d
                jmp     short loc_1402B1A11
; ---------------------------------------------------------------------------

loc_1402B1A35:                          ; CODE XREF: sub_1402B19D4+40↑j
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B19D4   endp

algn_1402B1A41:                         ; DATA XREF: .pdata:00000001400D05D8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B1A48   proc near               ; CODE XREF: sub_14066BD10:loc_14066BDD2↓p
                                        ; sub_140671B68+3B↓p
                                        ; DATA XREF: ...
                mov     eax, 10000h
                retn
sub_1402B1A48   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402B1A4F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D05E4↑o

; =============== S U B R O U T I N E =======================================


sub_1402B1A58   proc near               ; CODE XREF: sub_1406266A0+327↓p
                                        ; sub_1406266A0+42F↓p ...
                push    rbx
                sub     rsp, 20h
                movzx   eax, byte ptr [rcx+1Ah]
                mov     rbx, rcx
                and     eax, 3
                lea     rcx, unk_140C25E20
                mov     rdx, rbx
                movzx   eax, byte ptr [rax+rcx]
                sub     rdx, rax
                or      eax, 0FFFFFFFFh
                lock xadd [rdx+18h], eax
                cmp     eax, 1
                jnz     short loc_1402B1A8E
                mov     rcx, rbx
                call    sub_140673E90

loc_1402B1A8E:                          ; CODE XREF: sub_1402B1A58+2C↑j
                lea     rcx, [rbx+30h]
                call    PsDereferenceSiloContext
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B1A58   endp

byte_1402B1A9E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400D05F0↑o
; Exported entry 1798. PsDetachSiloFromCurrentThread

; =============== S U B R O U T I N E =======================================


