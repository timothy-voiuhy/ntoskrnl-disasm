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


                public PsDetachSiloFromCurrentThread
PsDetachSiloFromCurrentThread proc near ; CODE XREF: sub_1405D125C+E7↓p
                                        ; sub_140649AF0+532↓p ...
                mov     rax, gs:188h
                mov     [rax+608h], rcx
                retn
PsDetachSiloFromCurrentThread endp

; ---------------------------------------------------------------------------
                align 2
algn_1402B1AC2:                         ; DATA XREF: .pdata:00000001400D05FC↑o
                align 10h
; Exported entry 1785. PsAttachSiloToCurrentThread

; =============== S U B R O U T I N E =======================================


                public PsAttachSiloToCurrentThread
PsAttachSiloToCurrentThread proc near   ; CODE XREF: sub_1405D125C+1D↓p
                                        ; sub_140649AF0+4E8↓p ...
                mov     rdx, gs:188h
                mov     rax, [rdx+608h]
                mov     [rdx+608h], rcx
                retn
PsAttachSiloToCurrentThread endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402B1AE9:                         ; DATA XREF: .pdata:00000001400D0608↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402B1AF0   proc near               ; CODE XREF: sub_140671EF4+B2↓p
                                        ; DATA XREF: .pdata:00000001400D0614↑o
                mov     rax, rsp
                mov     [rax+8], rcx
                sub     rsp, 28h
                mov     rcx, [rdx]
                lea     rdx, [rax+10h]
                mov     [rax+10h], r8
                lea     r8, [rax+8]
                mov     [rax+8], r9
                mov     r9d, 1
                call    ZwLockVirtualMemory
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B1AF0   endp

byte_1402B1B1F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0614↑o

; =============== S U B R O U T I N E =======================================


sub_1402B1B28   proc near               ; CODE XREF: sub_140356C18+6↓p
                                        ; sub_14059CAB4+78↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044E8D4 SIZE 000001AE BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], r9
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     [rsp+58h+arg_0], 0
                xor     r12d, r12d
                mov     r15, r8
                mov     r8d, [r9]
                mov     ebp, edx
                mov     r14, rcx
                cmp     edx, 4
                jge     loc_14044E8D4
                mov     ecx, edx
                test    edx, edx
                jnz     loc_14044E8DE
                mov     esi, 0BCh

loc_1402B1B6D:                          ; CODE XREF: sub_1402B1B28+19CDC8↓j
                                        ; sub_1402B1B28+19CE16↓j ...
                cmp     r8d, esi
                jb      loc_14044E969
                mov     byte ptr [r15], 0Bh
                lea     rdi, [r15+1Ch]
                mov     eax, ebp
                shl     eax, 8
                xor     eax, [r15]
                and     eax, 0F00h
                xor     [r15], eax
                mov     ecx, [r14]
                mov     eax, [r15]
                shl     ecx, 0Ch
                xor     ecx, eax
                and     ecx, 0F000h
                xor     ecx, eax
                mov     [r15], ecx
                mov     eax, [r14]
                shl     eax, 8
                xor     eax, ecx
                and     eax, 10000h
                xor     eax, ecx
                mov     [r15], eax
                mov     ecx, [r14]
                shl     ecx, 7
                xor     ecx, eax
                and     ecx, 20000h
                xor     ecx, eax
                mov     [r15], ecx
                mov     edx, [r14+0FF8h]
                shl     edx, 15h
                xor     edx, ecx
                and     edx, 3FFC0000h
                xor     edx, ecx
                mov     rcx, rdi
                mov     [r15], edx
                mov     eax, [r14+358h]
                shl     eax, 0Ch
                xor     eax, edx
                mov     [r15+4], esi
                and     eax, 40000000h
                xor     eax, edx
                xor     edx, edx
                mov     [r15], eax
                movzx   eax, word ptr [r14+0FC0h]
                mov     [r15+8], ax
                mov     eax, [r14+8]
                mov     [r15+0Ch], eax
                mov     eax, [r14+0B38h]
                add     eax, [r14+3A8h]
                mov     [r15+10h], eax
                mov     eax, [r14+0Ch]
                mov     [r15+14h], eax
                mov     eax, 10h
                mov     [r15+18h], eax
                lea     r8d, [rax+40h]
                call    memset
                mov     eax, [r14+3A8h]
                lea     rbx, [r14+398h]
                mov     [rdi], eax
                mov     rcx, rbx
                mov     eax, [r14+58h]
                mov     [rdi+4], eax
                mov     eax, [r14+98h]
                mov     [rdi+8], eax
                call    RtlNumberOfSetBits
                mov     ecx, [rbx]
                lea     r9, [r14+50h]
                sub     ecx, eax
                sub     r9, rdi
                mov     [rdi+0Ch], ecx
                lea     rcx, [rdi+10h]
                mov     eax, [r14+358h]
                neg     al
                sbb     rdx, rdx
                and     rdx, 0FFFFFFFFFFFFFFF9h
                add     rdx, 8

loc_1402B1C8F:                          ; CODE XREF: sub_1402B1B28+184↓j
                mov     eax, [r9+rcx+710h]
                mov     [rcx], eax
                mov     eax, [r9+rcx+714h]
                mov     [rcx+4], eax
                lea     rcx, [rcx+8]
                sub     rdx, 1
                jnz     short loc_1402B1C8F
                lea     rdi, [r15+6Ch]
                mov     rcx, rdi
                lea     r8d, [rdx+50h]
                lea     r13, [r14+7E0h]
                call    memset
                mov     eax, [r13+358h]
                lea     rbx, [r13+348h]
                mov     [rdi], eax
                mov     rcx, rbx
                mov     eax, [r13+8]
                mov     [rdi+4], eax
                call    RtlNumberOfSetBits
                mov     ecx, [rbx]
                mov     r8, r13
                sub     ecx, eax
                sub     r8, rdi
                mov     [rdi+0Ch], ecx
                lea     rcx, [rdi+10h]
                mov     eax, [r13+308h]
                neg     al
                sbb     rdx, rdx
                and     rdx, 0FFFFFFFFFFFFFFF9h
                add     rdx, 8

loc_1402B1D09:                          ; CODE XREF: sub_1402B1B28+1FE↓j
                mov     eax, [rcx+r8+710h]
                mov     [rcx], eax
                mov     eax, [rcx+r8+714h]
                mov     [rcx+4], eax
                lea     rcx, [rcx+8]
                sub     rdx, 1
                jnz     short loc_1402B1D09
                test    ebp, ebp
                jnz     loc_14044E976

loc_1402B1D30:                          ; CODE XREF: sub_1402B1B28+19CE7E↓j
                                        ; sub_1402B1B28+19CED7↓j ...
                mov     rax, [rsp+58h+arg_18]
                mov     [rax], esi
                xor     eax, eax

loc_1402B1D39:                          ; CODE XREF: sub_1402B1B28+19CDB1↓j
                                        ; sub_1402B1B28+19CE49↓j ...
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B1B28   endp

algn_1402B1D4F:                         ; DATA XREF: .rdata:000000014006468C↑o
                                        ; .pdata:00000001400D0620↑o
                align 20h
; Exported entry 1815. PsGetCurrentThreadProcess

; =============== S U B R O U T I N E =======================================


                public PsGetCurrentThreadProcess
PsGetCurrentThreadProcess proc near     ; CODE XREF: SeCheckForCriticalAceRemoval+65↓p
                                        ; sub_140631260+714↓p ...
                mov     rax, gs:188h
                mov     rax, [rax+220h]
                retn
PsGetCurrentThreadProcess endp

; ---------------------------------------------------------------------------
                align 2
algn_1402B1D72:                         ; DATA XREF: .pdata:00000001400D062C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B1D78   proc near               ; CODE XREF: sub_1406F8274+AC↓p
                                        ; sub_140771428+41↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                lea     r8, [rax+8]
                mov     rsi, rcx
                mov     r9b, 1
                mov     rcx, [rcx+50h]
                xor     edx, edx
                call    sub_1402B1E40
                mov     rbp, [rsp+28h+arg_0]
                mov     r8d, 6F706D55h
                add     rbp, 10h
                mov     ecx, 1
                mov     rdx, rbp
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402B1E33
                mov     r8, rbp
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rcx, [rsi+50h]
                lea     rdx, [rbx+10h]
                mov     r9b, 1
                lea     r8, [rsp+28h+arg_0]
                call    sub_1402B1E40
                mov     edi, eax
                test    eax, eax
                js      short loc_1402B1E0E
                mov     dword ptr [rbx], 8
                xor     r8d, r8d
                mov     eax, [rsi+1Ch]
                mov     rdx, rbp
                mov     rcx, rbx
                mov     [rbx+8], eax
                call    sub_1402B2424
                mov     edi, eax

loc_1402B1E0E:                          ; CODE XREF: sub_1402B1D78+78↑j
                mov     edx, 6F706D55h
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1402B1E1B:                          ; CODE XREF: sub_1402B1D78+C0↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B1E33:                          ; CODE XREF: sub_1402B1D78+50↑j
                mov     edi, 0C000009Ah
                jmp     short loc_1402B1E1B
sub_1402B1D78   endp

; ---------------------------------------------------------------------------
algn_1402B1E3A:                         ; DATA XREF: .pdata:00000001400D0638↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B1E40   proc near               ; CODE XREF: sub_1402B1D78+29↑p
                                        ; sub_1402B1D78+6F↑p ...

var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15, [r8]
                xor     r10d, r10d
                mov     rdi, rdx
                mov     [rsp+68h+arg_0], r10d
                mov     rdx, rcx
                mov     ebp, 28h ; '('
                mov     r13b, r10b
                mov     r12d, r10d
                mov     esi, r10d
                test    rdi, rdi
                jz      short loc_1402B1ED9
                cmp     r15, rbp
                jb      short loc_1402B1ED9
                mov     eax, [rcx]
                lea     rsi, [rdi+28h]
                mov     [rdi+8], eax
                mov     bl, 1

loc_1402B1E8D:                          ; CODE XREF: sub_1402B1E40+9C↓j
                cmp     [rcx], r10d
                jz      loc_1402B1F78
                test    bl, bl
                jz      short loc_1402B1EAD
                mov     rax, [rcx+8]
                mov     ecx, [rax+440h]
                mov     [rdi+18h], ecx
                mov     eax, [rdx+10h]
                mov     [rdi+1Ch], eax

loc_1402B1EAD:                          ; CODE XREF: sub_1402B1E40+58↑j
                mov     rax, [rdx+8]
                mov     rcx, [rax+5C0h]
                movzx   r8d, word ptr [rcx]
                mov     rdx, [rcx+8]
                mov     [rsp+68h+arg_0], r8d
                test    r9b, r9b
                jz      short loc_1402B1EF4
                mov     eax, r8d
                shr     rax, 1
                lea     rax, [rdx+rax*2]
                jmp     loc_1402B1F6E
; ---------------------------------------------------------------------------

loc_1402B1ED9:                          ; CODE XREF: sub_1402B1E40+3B↑j
                                        ; sub_1402B1E40+40↑j
                mov     bl, r10b
                jmp     short loc_1402B1E8D
; ---------------------------------------------------------------------------

loc_1402B1EDE:                          ; CODE XREF: sub_1402B1E40+124↓j
                                        ; sub_1402B1E40+133↓j
                cmp     rax, rdx
                jz      short loc_1402B1EF4
                add     rax, 2
                sub     edx, eax
                add     r8d, edx
                mov     rdx, rax
                mov     [rsp+68h+arg_0], r8d

loc_1402B1EF4:                          ; CODE XREF: sub_1402B1E40+88↑j
                                        ; sub_1402B1E40+A1↑j
                mov     r14d, r8d
                lea     rbp, [r8+2Ah]
                test    bl, bl
                jz      short loc_1402B1F5B
                cmp     r15, rbp
                jb      short loc_1402B1F5B
                mov     r8d, r14d
                mov     rcx, rsi
                mov     bl, 1
                call    memmove
                shr     r14, 1
                xor     r10d, r10d
                mov     [rsi+r14*2], r10w
                sub     rsi, rdi
                mov     [rdi+10h], rsi

loc_1402B1F23:                          ; CODE XREF: sub_1402B1E40+11E↓j
                                        ; sub_1402B1E40+13F↓j ...
                mov     rcx, [rsp+68h+arg_10]
                mov     [rcx], rbp
                test    bl, bl
                jnz     short loc_1402B1F4D
                mov     eax, 0C0000023h

loc_1402B1F37:                          ; CODE XREF: sub_1402B1E40+119↓j
                mov     rbx, [rsp+68h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B1F4D:                          ; CODE XREF: sub_1402B1E40+F0↑j
                cmp     [rdi+8], r10d
                jz      loc_1402B2029

loc_1402B1F57:                          ; CODE XREF: sub_1402B1E40+1F5↓j
                                        ; sub_1402B1E40+1FF↓j
                xor     eax, eax
                jmp     short loc_1402B1F37
; ---------------------------------------------------------------------------

loc_1402B1F5B:                          ; CODE XREF: sub_1402B1E40+BD↑j
                                        ; sub_1402B1E40+C2↑j
                mov     bl, r10b
                jmp     short loc_1402B1F23
; ---------------------------------------------------------------------------

loc_1402B1F60:                          ; CODE XREF: sub_1402B1E40+131↓j
                cmp     word ptr [rax], 5Ch ; '\'
                jz      loc_1402B1EDE
                sub     rax, 2

loc_1402B1F6E:                          ; CODE XREF: sub_1402B1E40+94↑j
                cmp     rax, rdx
                jnz     short loc_1402B1F60
                jmp     loc_1402B1EDE
; ---------------------------------------------------------------------------

loc_1402B1F78:                          ; CODE XREF: sub_1402B1E40+50↑j
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_1402B1F23
                mov     edx, 67446F50h
                call    sub_140349A1C
                xor     r10d, r10d
                mov     r14, rax
                test    rax, rax
                jz      short loc_1402B1F23
                mov     rax, [rax+138h]
                cmp     [rax+28h], r10
                jnz     loc_1402B2044
                mov     eax, 0C0000010h

loc_1402B1FAC:                          ; CODE XREF: sub_1402B1E40+22F↓j
                                        ; sub_1402B1E40+282↓j
                test    eax, eax
                jns     short loc_1402B1FE8
                mov     r8, [r14+8]
                add     r8, 38h ; '8'
                movzx   ecx, word ptr [r8]
                add     ecx, 2
                mov     eax, ecx
                mov     [rsp+68h+arg_0], ecx
                test    bl, bl
                jz      loc_1402B20AB
                add     rax, rbp
                cmp     r15, rax
                jb      loc_1402B20AB
                mov     edx, ecx
                mov     bl, 1
                mov     rcx, rsi
                call    sub_140341C10
                xor     r10d, r10d

loc_1402B1FE8:                          ; CODE XREF: sub_1402B1E40+16E↑j
                                        ; sub_1402B1E40+26E↓j
                mov     ecx, [rsp+68h+arg_0]
                lea     rbp, [rcx+28h]
                test    bl, bl
                jz      short loc_1402B2004
                mov     rax, rsi
                mov     r13b, 1
                sub     rax, rdi
                mov     [rdi+10h], rax
                add     rsi, rcx

loc_1402B2004:                          ; CODE XREF: sub_1402B1E40+1B2↑j
                mov     rax, [r14+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jnz     short loc_1402B2074

loc_1402B2014:                          ; CODE XREF: sub_1402B1E40+266↓j
                                        ; sub_1402B1E40+28A↓j
                mov     edx, 67446F50h
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag
                xor     r10d, r10d
                jmp     loc_1402B1F23
; ---------------------------------------------------------------------------

loc_1402B2029:                          ; CODE XREF: sub_1402B1E40+111↑j
                test    r13b, r13b
                jz      loc_1402B20CF

loc_1402B2032:                          ; CODE XREF: sub_1402B1E40+293↓j
                test    r12, r12
                jnz     loc_1402B1F57
                mov     [rdi+18h], r10
                jmp     loc_1402B1F57
; ---------------------------------------------------------------------------

loc_1402B2044:                          ; CODE XREF: sub_1402B1E40+161↑j
                xor     edx, edx
                lea     rax, [rsp+68h+arg_0]
                mov     [rsp+68h+var_48], rax
                mov     rcx, r14
                test    bl, bl
                jnz     short loc_1402B20B3
                xor     r9d, r9d
                xor     r8d, r8d
                call    IoGetDeviceProperty
                cmp     eax, 0C0000023h
                jnz     short loc_1402B20BF
                xor     r10d, r10d
                mov     eax, r10d
                jmp     loc_1402B1FAC
; ---------------------------------------------------------------------------

loc_1402B2074:                          ; CODE XREF: sub_1402B1E40+1D2↑j
                lea     r12, [rcx+28h]
                movzx   eax, word ptr [r12]
                add     eax, 2
                mov     edx, eax
                add     rbp, rdx
                mov     [rsp+68h+arg_0], eax
                test    bl, bl
                jz      short loc_1402B20C7
                cmp     r15, rbp
                jb      short loc_1402B20C7
                mov     r8, r12
                mov     rcx, rsi
                mov     bl, 1
                call    sub_140341C10
                sub     rsi, rdi
                mov     [rdi+18h], rsi
                jmp     loc_1402B2014
; ---------------------------------------------------------------------------

loc_1402B20AB:                          ; CODE XREF: sub_1402B1E40+187↑j
                                        ; sub_1402B1E40+193↑j
                mov     bl, r10b
                jmp     loc_1402B1FE8
; ---------------------------------------------------------------------------

loc_1402B20B3:                          ; CODE XREF: sub_1402B1E40+215↑j
                lea     r8d, [r15-28h]
                mov     r9, rsi
                call    IoGetDeviceProperty

loc_1402B20BF:                          ; CODE XREF: sub_1402B1E40+227↑j
                xor     r10d, r10d
                jmp     loc_1402B1FAC
; ---------------------------------------------------------------------------

loc_1402B20C7:                          ; CODE XREF: sub_1402B1E40+24B↑j
                                        ; sub_1402B1E40+250↑j
                mov     bl, r10b
                jmp     loc_1402B2014
; ---------------------------------------------------------------------------

loc_1402B20CF:                          ; CODE XREF: sub_1402B1E40+1EC↑j
                mov     [rdi+10h], r10
                jmp     loc_1402B2032
sub_1402B1E40   endp

; ---------------------------------------------------------------------------
algn_1402B20D8:                         ; DATA XREF: .pdata:00000001400D0644↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402B20E0   proc near               ; CODE XREF: sub_140677894+31↓p
                                        ; DATA XREF: .rdata:0000000140064878↑o ...

var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = word ptr -14h
var_10          = dword ptr -10h
var_C           = word ptr -0Ch
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 000000014044EA82 SIZE 0000017C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     r14d, [rcx+8]
                xor     eax, eax
                mov     rbx, rcx
                mov     [rbp+var_20], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_18], eax
                xor     edi, edi
                mov     [rbp+var_14], ax
                xor     ecx, ecx
                mov     [rbp+var_40], edi
                movups  [rbp+var_30], xmm0
                mov     [rbp+var_10], eax
                xor     r13d, r13d
                mov     [rbp+var_C], ax
                xor     r15b, r15b
                mov     [rbp+var_38], r14d
                call    sub_140678398
                mov     ecx, [rbx]
                call    sub_140675DE4
                test    rax, rax
                jz      loc_1402B21E0
                mov     rdi, [rax]
                lea     rdx, [rbp+var_30]
                lea     rcx, qword_140C24DF0
                call    KeAcquireInStackQueuedSpinLock
                mov     r12d, r14d
                lea     r8d, [r13+1]
                or      rsi, 0FFFFFFFFFFFFFFFFh
                xor     r12d, [rdi+18h]
                mov     [rdi+18h], r14d
                jnz     loc_14044EA82

loc_1402B2181:                          ; CODE XREF: sub_1402B20E0+19CA75↓j
                mov     dl, r8b
                mov     rcx, rdi
                call    sub_1402B2BB8
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_20]
                test    eax, eax
                jnz     loc_14044EB5A

loc_1402B21A7:                          ; CODE XREF: sub_1402B20E0+19CA7C↓j
                                        ; sub_1402B20E0+19CA88↓j ...
                mov     cr8, rbx
                xor     ebx, ebx
                lea     rsi, [rbp+var_18]

loc_1402B21B1:                          ; CODE XREF: sub_1402B20E0+E2↓j
                cmp     byte ptr [rsi], 0
                jnz     loc_14044EBBB

loc_1402B21BA:                          ; CODE XREF: sub_1402B20E0+19CAE9↓j
                inc     ebx
                inc     rsi
                cmp     ebx, 6
                jb      short loc_1402B21B1
                xor     ebx, ebx
                lea     rsi, [rbp+var_10]

loc_1402B21CA:                          ; CODE XREF: sub_1402B20E0+FB↓j
                cmp     byte ptr [rsi], 0
                jnz     loc_14044EBCE

loc_1402B21D3:                          ; CODE XREF: sub_1402B20E0+19CAFC↓j
                inc     ebx
                inc     rsi
                cmp     ebx, 6
                jb      short loc_1402B21CA
                mov     edi, [rbp+var_40]

loc_1402B21E0:                          ; CODE XREF: sub_1402B20E0+6F↑j
                call    sub_1406760F8
                test    r13, r13
                jnz     loc_14044EBE1

loc_1402B21EE:                          ; CODE XREF: sub_1402B20E0+19CB19↓j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402B20E0
sub_1402B20E0   endp

algn_1402B2219:                         ; DATA XREF: .rdata:0000000140064878↑o
                                        ; .pdata:00000001400D0650↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B2220   proc near               ; CODE XREF: sub_140675E20+4↓p
                                        ; sub_14068BF38+73D↓p ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044EBFE SIZE 000000F7 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     sil, [rcx+88h]
                xor     eax, eax
                xorps   xmm0, xmm0
                xor     edi, edi
                xor     r15d, r15d
                mov     rbx, rcx
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                cmp     [rcx], rax
                jz      loc_1402B23D7
                mov     cl, 1
                call    sub_140678398
                mov     rax, [rbx]
                test    rax, rax
                jz      loc_14044EBFE
                mov     rcx, [rbx+8]
                cmp     [rax+8], rbx
                jnz     loc_14044ECEE
                cmp     [rcx], rbx
                jnz     loc_14044ECEE
                mov     [rcx], rax
                mov     [rax+8], rcx
                and     [rbx], rdi
                cmp     [rbx+2Ch], edi
                jnz     loc_14044EC09

loc_1402B22A0:                          ; CODE XREF: sub_1402B2220+19C9F5↓j
                                        ; sub_1402B2220+19CA01↓j ...
                mov     rcx, rbx
                call    sub_1406783D4
                test    al, al
                jz      short loc_1402B22B6
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406767F0

loc_1402B22B6:                          ; CODE XREF: sub_1402B2220+8A↑j
                mov     rax, [rbx+78h]
                test    rax, rax
                jz      short loc_1402B22D3
                mov     edx, 72506F50h
                mov     rcx, rax
                mov     rdi, rax
                call    ObfReferenceObjectWithTag
                and     [rbx+78h], r15

loc_1402B22D3:                          ; CODE XREF: sub_1402B2220+9D↑j
                test    sil, sil
                jnz     loc_14044EC3D
                dec     cs:qword_140C24DE0

loc_1402B22E3:                          ; CODE XREF: sub_1402B2220+19CA24↓j
                mov     ecx, [rbx+1Ch]
                call    sub_140675E38
                call    sub_1406760F8
                mov     rcx, rbx
                call    sub_1406761A4
                mov     rcx, rbx
                call    sub_140676114
                lea     rdx, [rsp+58h+var_38]
                lea     rcx, qword_140C24DF0
                call    KeAcquireInStackQueuedSpinLock
                mov     r12b, [rbx+4Eh]
                test    r12b, r12b
                jnz     loc_14044EC49

loc_1402B231E:                          ; CODE XREF: sub_1402B2220+19CA52↓j
                xor     ecx, ecx
                lea     r8, dword_140C002D0
                xor     edx, edx
                lea     r9, [rbx+20h]
                or      r14, 0FFFFFFFFFFFFFFFFh
                lea     r10d, [rcx+2]

loc_1402B2335:                          ; CODE XREF: sub_1402B2220+137↓j
                mov     eax, [rbx+18h]
                bt      eax, ecx
                jb      short loc_1402B2347
                cmp     dword ptr [r9], 0
                ja      loc_1402B23F7

loc_1402B2347:                          ; CODE XREF: sub_1402B2220+11B↑j
                                        ; sub_1402B2220+1F7↓j
                inc     ecx
                inc     rdx
                add     r9, 4
                add     r8, 10h
                cmp     ecx, 6
                jb      short loc_1402B2335
                lea     rcx, [rsp+58h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebp, [rsp+58h+var_28]
                test    eax, eax
                jnz     loc_14044EC77

loc_1402B2376:                          ; CODE XREF: sub_1402B2220+19CA59↓j
                                        ; sub_1402B2220+19CA65↓j ...
                mov     cr8, rbp
                mov     r8d, [rbx+10h]
                lea     rcx, [rbx+48h]
                mov     edx, [rbx+1Ch]
                call    sub_1402B2D98
                test    r12b, r12b
                jnz     loc_14044ECDB

loc_1402B2393:                          ; CODE XREF: sub_1402B2220+19CAC9↓j
                mov     rcx, [rbx+50h]
                call    sub_1402B25B4
                cmp     dword ptr [rbx+58h], 0
                jz      short loc_1402B23AD
                mov     edx, [rbx+1Ch]
                mov     ecx, [rbx+10h]
                call    sub_140675490

loc_1402B23AD:                          ; CODE XREF: sub_1402B2220+180↑j
                test    sil, sil
                jnz     short loc_1402B23BA
                mov     rcx, rbx
                call    sub_140675E7C

loc_1402B23BA:                          ; CODE XREF: sub_1402B2220+190↑j
                test    rdi, rdi
                jz      short loc_1402B23D7
                mov     edx, r15d
                mov     rcx, rdi
                call    sub_1406754C4
                mov     edx, 72506F50h
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag

loc_1402B23D7:                          ; CODE XREF: sub_1402B2220+3D↑j
                                        ; sub_1402B2220+19D↑j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B23F7:                          ; CODE XREF: sub_1402B2220+121↑j
                mov     eax, [r8]
                dec     eax
                mov     [r8], eax
                test    ecx, ecx
                jz      short loc_1402B240C
                cmp     ecx, 3
                jz      short loc_1402B240C
                test    eax, eax
                jnz     short loc_1402B2411

loc_1402B240C:                          ; CODE XREF: sub_1402B2220+1E1↑j
                                        ; sub_1402B2220+1E6↑j
                add     [rdx+rbx+48h], r14b

loc_1402B2411:                          ; CODE XREF: sub_1402B2220+1EA↑j
                test    ecx, ecx
                cmovz   r15d, r10d
                jmp     loc_1402B2347
sub_1402B2220   endp

; ---------------------------------------------------------------------------
byte_1402B241C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400648A8↑o
                                        ; .pdata:00000001400D065C↑o

; =============== S U B R O U T I N E =======================================


sub_1402B2424   proc near               ; CODE XREF: sub_1402B1D78+8F↑p
                                        ; sub_14038D4EC+3C↓p ...

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_C8          = byte ptr -0C8h
var_28          = qword ptr -28h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044ECF6 SIZE 00000014 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_28], rax
                and     [rsp+118h+var_D8], 0
                mov     sil, r8b
                mov     rbx, rdx
                mov     rbp, rcx
                mov     edx, 1000h
                mov     ecx, 1
                mov     r8d, 6F706D55h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14044ECF6
                xor     ecx, ecx
                call    sub_140675EE8
                cmp     cs:qword_140C205C8, 0
                jz      loc_1402B252C
                cmp     rbx, 0FD8h
                ja      loc_14044ED00
                lea     rcx, [rdi+4]
                xor     edx, edx
                mov     r8d, 0FFCh
                call    memset
                lea     eax, [rbx+28h]
                mov     [rdi], bx
                lea     rcx, [rdi+28h]
                mov     [rdi+2], ax
                mov     r8, rbx
                mov     rdx, rbp
                call    memmove
                test    sil, sil
                jnz     short loc_1402B2533
                and     [rsp+118h+var_E0], 0
                xor     r9d, r9d
                and     [rsp+118h+var_E8], 0
                mov     r8, rdi
                and     [rsp+118h+var_F0], 0
                mov     edx, 10000h
                and     [rsp+118h+var_F8], 0
                mov     rcx, cs:qword_140C205C8
                call    ZwAlpcSendWaitReceivePort

loc_1402B24F5:                          ; CODE XREF: sub_1402B2424+184↓j
                mov     ebx, eax

loc_1402B24F7:                          ; CODE XREF: sub_1402B2424+10D↓j
                                        ; sub_1402B2424+164↓j ...
                call    sub_140675EC4
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1402B2506:                          ; CODE XREF: sub_1402B2424+19C8D7↓j
                mov     eax, ebx
                mov     rcx, [rsp+118h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+118h+arg_10]
                add     rsp, 100h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402B252C:                          ; CODE XREF: sub_1402B2424+60↑j
                mov     ebx, 0C0000042h
                jmp     short loc_1402B24F7
; ---------------------------------------------------------------------------

loc_1402B2533:                          ; CODE XREF: sub_1402B2424+A0↑j
                xor     edx, edx
                lea     rcx, [rsp+118h+var_C8]
                mov     r8d, 0A0h
                call    memset
                and     [rsp+118h+var_E0], 0
                lea     rax, [rsp+118h+var_C8]
                mov     rcx, cs:qword_140C205C8
                xor     r9d, r9d
                mov     [rsp+118h+var_E8], rax
                mov     r8, rdi
                lea     rax, [rsp+118h+var_D8]
                mov     [rsp+118h+var_D8], 1000h
                mov     [rsp+118h+var_F0], rax
                mov     edx, 20000h
                mov     [rsp+118h+var_F8], rdi
                call    ZwAlpcSendWaitReceivePort
                mov     ebx, eax
                test    eax, eax
                js      loc_1402B24F7
                mov     edx, 20000000h
                lea     rcx, [rsp+118h+var_C8]
                call    AlpcGetMessageAttribute
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_140677764
                jmp     loc_1402B24F5
; } // starts at 1402B2424
sub_1402B2424   endp

; ---------------------------------------------------------------------------
byte_1402B25AD  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400648E4↑o
                                        ; .pdata:00000001400D0668↑o

; =============== S U B R O U T I N E =======================================


sub_1402B25B4   proc near               ; CODE XREF: sub_1402B2220+177↑p
                                        ; sub_1402BEFB0+5D7↓p ...
                push    rbx
                sub     rsp, 20h
                cmp     dword ptr [rcx], 0
                mov     rbx, rcx
                jz      short loc_1402B25D6

loc_1402B25C2:                          ; CODE XREF: sub_1402B25B4+29↓j
                                        ; sub_1402B25B4+35↓j
                mov     edx, 78435250h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B25D6:                          ; CODE XREF: sub_1402B25B4+C↑j
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_1402B25C2
                mov     edx, 67446F50h
                call    ObfDereferenceObjectWithTag
                jmp     short loc_1402B25C2
sub_1402B25B4   endp

; ---------------------------------------------------------------------------
algn_1402B25EB:                         ; DATA XREF: .pdata:00000001400D0674↑o
                align 20h
; Exported entry 1700. PoClearPowerRequest

; =============== S U B R O U T I N E =======================================


                public PoClearPowerRequest
PoClearPowerRequest proc near           ; CODE XREF: sub_1403415B0:loc_1403415FC↓p
                                        ; sub_1403415B0:loc_140341615↓p ...

; FUNCTION CHUNK AT 000000014044ED0A SIZE 00000028 BYTES

                sub     rsp, 28h
                xor     eax, eax
                test    edx, edx
                jz      short loc_1402B2616
                sub     edx, 1
                jnz     loc_14044ED0A
                lea     eax, [rdx+1]

loc_1402B2616:                          ; CODE XREF: PoClearPowerRequest+8↑j
                                        ; PoClearPowerRequest+19C723↓j ...
                mov     edx, eax
                call    sub_1402B265C

loc_1402B261D:                          ; CODE XREF: PoClearPowerRequest+19C719↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoClearPowerRequest endp

algn_1402B2623:                         ; DATA XREF: .rdata:0000000140064938↑o
                                        ; .pdata:00000001400D0680↑o
                align 10h
; Exported entry 1762. PoSetPowerRequest

; =============== S U B R O U T I N E =======================================


                public PoSetPowerRequest
PoSetPowerRequest proc near             ; CODE XREF: sub_1403415B0+26↓p
                                        ; sub_1403415B0+5E↓p ...

; FUNCTION CHUNK AT 000000014044ED32 SIZE 00000028 BYTES

                sub     rsp, 28h
                xor     eax, eax
                test    edx, edx
                jz      short loc_1402B2646
                sub     edx, 1
                jnz     loc_14044ED32
                lea     eax, [rdx+1]

loc_1402B2646:                          ; CODE XREF: PoSetPowerRequest+8↑j
                                        ; PoSetPowerRequest+19C71B↓j ...
                mov     edx, eax
                call    sub_1402B2820

loc_1402B264D:                          ; CODE XREF: PoSetPowerRequest+19C711↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoSetPowerRequest endp

byte_1402B2653  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140064954↑o
                                        ; .pdata:00000001400D068C↑o

; =============== S U B R O U T I N E =======================================


sub_1402B265C   proc near               ; CODE XREF: PoClearPowerRequest+18↑p
                                        ; sub_1403A6C50+DF↓p ...

var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044ED5A SIZE 0000006B BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     eax, eax
                movsxd  rsi, edx
                xor     ebx, ebx
                mov     [rsp+78h+var_48], rax
                xorps   xmm0, xmm0
                movzx   ebp, bl
                mov     [rsp+78h+arg_8], bl
                mov     rdi, rcx
                movups  [rsp+78h+var_58], xmm0
                mov     r13, cr8
                mov     r14d, ebx
                cmp     esi, 5
                ja      loc_1402B27F1
                lea     edx, [rax+1]
                mov     ecx, esi
                mov     r12d, edx
                shl     r12d, cl
                test    [rdi+14h], r12d
                jz      loc_1402B27F1
                mov     r15, rsi
                cmp     [rdi+rsi*4+20h], ebx
                jz      loc_1402B27F1
                cmp     [rdi+58h], ebx
                jz      short loc_1402B26CE
                cmp     esi, 3
                cmovbe  ebp, edx

loc_1402B26CE:                          ; CODE XREF: sub_1402B265C+6A↑j
                cmp     esi, 3
                jz      loc_1402B27D7

loc_1402B26D7:                          ; CODE XREF: sub_1402B265C+18F↓j
                test    bpl, bpl
                jz      loc_1402B27C9

loc_1402B26E0:                          ; CODE XREF: sub_1402B265C+176↓j
                mov     cl, dl
                mov     [rsp+78h+arg_8], dl
                call    sub_140678398
                mov     al, cs:byte_140C24DE8
                neg     al
                sbb     cl, cl
                and     bpl, cl

loc_1402B26FB:                          ; CODE XREF: sub_1402B265C+170↓j
                lea     rcx, [rsp+78h+var_58]
                call    sub_14056560C
                mov     ecx, [rdi+rsi*4+20h]
                dec     ecx
                mov     [rdi+rsi*4+20h], ecx
                test    [rdi+18h], r12d
                jnz     loc_14044ED8C
                test    ecx, ecx
                jnz     loc_1402B2805
                add     r15, r15
                lea     rcx, dword_140C002D0
                mov     eax, [rcx+r15*8]
                dec     eax
                mov     [rcx+r15*8], eax
                test    esi, 0FFFFFFFCh
                jnz     loc_1402B27F8
                cmp     esi, 2
                jz      loc_1402B27F8

loc_1402B274A:                          ; CODE XREF: sub_1402B265C+19E↓j
                cmp     r13b, 2
                mov     edx, esi
                mov     rcx, rdi
                setnb   r9b
                xor     r8d, r8d
                call    sub_1402B2B78

loc_1402B275F:                          ; CODE XREF: sub_1402B265C+1A4↓j
                test    esi, esi
                jz      loc_14044ED5A

loc_1402B2767:                          ; CODE XREF: sub_1402B265C+19C705↓j
                                        ; sub_1402B265C+19C70F↓j ...
                mov     r15d, ebx

loc_1402B276A:                          ; CODE XREF: sub_1402B265C+1AF↓j
                                        ; sub_1402B265C+1B8↓j ...
                mov     rcx, rdi
                call    sub_1402B2A54
                lea     rcx, [rsp+78h+var_58]
                call    sub_140565664
                test    bpl, bpl
                jnz     loc_14044ED94

loc_1402B2785:                          ; CODE XREF: sub_1402B265C+19C746↓j
                cmp     [rsp+78h+arg_8], bl
                jz      short loc_1402B2793
                call    sub_1406760F8

loc_1402B2793:                          ; CODE XREF: sub_1402B265C+130↑j
                cmp     r13b, 2
                jnb     short loc_1402B27A5
                cmp     [rdi+4Eh], bl
                jz      short loc_1402B27A5
                xor     ecx, ecx
                call    sub_1402B2C60

loc_1402B27A5:                          ; CODE XREF: sub_1402B265C+13B↑j
                                        ; sub_1402B265C+140↑j
                test    r14, r14
                jnz     loc_14044EDA7

loc_1402B27AE:                          ; CODE XREF: sub_1402B265C+19A↓j
                                        ; sub_1402B265C+19C764↓j
                mov     eax, ebx
                mov     rbx, [rsp+78h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B27C9:                          ; CODE XREF: sub_1402B265C+7E↑j
                cmp     esi, 3
                jnz     loc_1402B26FB
                jmp     loc_1402B26E0
; ---------------------------------------------------------------------------

loc_1402B27D7:                          ; CODE XREF: sub_1402B265C+75↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rdi+78h], rcx
                jz      loc_1402B26D7

loc_1402B27F1:                          ; CODE XREF: sub_1402B265C+3F↑j
                                        ; sub_1402B265C+54↑j ...
                mov     ebx, 0C00000BBh
                jmp     short loc_1402B27AE
; ---------------------------------------------------------------------------

loc_1402B27F8:                          ; CODE XREF: sub_1402B265C+DF↑j
                                        ; sub_1402B265C+E8↑j
                test    eax, eax
                jz      loc_1402B274A
                jmp     loc_1402B275F
; ---------------------------------------------------------------------------

loc_1402B2805:                          ; CODE XREF: sub_1402B265C+BF↑j
                mov     r15d, ebx
                test    bpl, bpl
                jz      loc_1402B276A
                mov     bpl, bl
                jmp     loc_1402B276A
sub_1402B265C   endp

; ---------------------------------------------------------------------------
algn_1402B2819:                         ; DATA XREF: .rdata:0000000140064980↑o
                                        ; .pdata:00000001400D0698↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B2820   proc near               ; CODE XREF: PoSetPowerRequest+18↑p
                                        ; sub_1403A79C0+15↓p ...

var_48          = xmmword ptr -48h
var_28          = byte ptr -28h

; FUNCTION CHUNK AT 000000014044EDC6 SIZE 00000036 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     eax, eax
                movsxd  rsi, edx
                xorps   xmm0, xmm0
                xor     dil, dil
                movups  [rsp+68h+var_48], xmm0
                mov     [r11-38h], rax
                mov     rbp, rcx
                xor     r12b, r12b
                mov     r15, cr8
                xor     r14d, r14d
                xor     r13d, r13d
                cmp     esi, 5
                ja      loc_14044EDF2
                lea     edx, [rax+1]
                mov     ecx, esi
                mov     ebx, edx
                shl     ebx, cl
                test    [rbp+14h], ebx
                jz      loc_14044EDF2
                cmp     [rbp+58h], eax
                jz      short loc_1402B288A
                cmp     esi, 3
                movzx   edi, dil
                cmovbe  edi, edx

loc_1402B288A:                          ; CODE XREF: sub_1402B2820+5E↑j
                cmp     esi, 3
                jz      loc_1402B29BF

loc_1402B2893:                          ; CODE XREF: sub_1402B2820+1B3↓j
                test    dil, dil
                jz      loc_1402B29B1

loc_1402B289C:                          ; CODE XREF: sub_1402B2820+19A↓j
                mov     cl, dl
                mov     r12b, dl
                call    sub_140678398
                mov     al, cs:byte_140C24DE8
                neg     al
                sbb     cl, cl
                and     dil, cl

loc_1402B28B3:                          ; CODE XREF: sub_1402B2820+194↓j
                lea     rcx, [rsp+68h+var_48]
                call    sub_14056560C
                lea     rdx, ds:0[rsi*4]
                or      r10d, 0FFFFFFFFh
                mov     r8d, [rdx+rbp+20h]
                mov     rcx, rsi
                cmp     r8d, r10d
                jz      loc_14044EDC6
                lea     r9d, [r8+1]
                mov     [rdx+rbp+20h], r9d
                test    [rbp+18h], ebx
                jnz     loc_1402B2A44
                cmp     r9d, 1
                jnz     loc_1402B2A3B
                add     rcx, rcx
                lea     r9, dword_140C002D0
                mov     eax, [r9+rcx*8]
                cmp     eax, r10d
                jz      loc_14044EDD0
                inc     eax
                mov     [r9+rcx*8], eax
                test    esi, 0FFFFFFFCh
                jnz     loc_1402B29DE
                cmp     esi, 2
                jz      loc_1402B29DE

loc_1402B2928:                          ; CODE XREF: sub_1402B2820+1C1↓j
                cmp     r15b, 2
                mov     r8b, 1
                mov     edx, esi
                mov     rcx, rbp
                setnb   r9b
                call    sub_1402B2B78

loc_1402B293D:                          ; CODE XREF: sub_1402B2820+1C7↓j
                test    esi, esi
                jz      loc_1402B29EC

loc_1402B2945:                          ; CODE XREF: sub_1402B2820+1D3↓j
                                        ; sub_1402B2820+1DD↓j ...
                mov     rcx, rbp
                call    sub_1402B2A54
                xor     ebx, ebx

loc_1402B294F:                          ; CODE XREF: sub_1402B2820+19C5AB↓j
                                        ; sub_1402B2820+19C5BA↓j
                lea     rcx, [rsp+68h+var_48]
                call    sub_140565664
                test    ebx, ebx
                js      short loc_1402B2966
                test    dil, dil
                jnz     loc_14044EDDF

loc_1402B2966:                          ; CODE XREF: sub_1402B2820+13B↑j
                                        ; sub_1402B2820+19C5CD↓j
                test    r12b, r12b
                jz      short loc_1402B2970
                call    sub_1406760F8

loc_1402B2970:                          ; CODE XREF: sub_1402B2820+149↑j
                test    ebx, ebx
                js      short loc_1402B2987
                cmp     r15b, 2
                jnb     short loc_1402B2987
                cmp     byte ptr [rbp+4Eh], 0
                jz      short loc_1402B2987
                xor     ecx, ecx
                call    sub_1402B2C60

loc_1402B2987:                          ; CODE XREF: sub_1402B2820+152↑j
                                        ; sub_1402B2820+158↑j ...
                test    r14, r14
                jnz     loc_1402B2A1E

loc_1402B2990:                          ; CODE XREF: sub_1402B2820+216↓j
                                        ; sub_1402B2820+19C5D7↓j
                lea     r11, [rsp+68h+var_28]
                mov     eax, ebx
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B29B1:                          ; CODE XREF: sub_1402B2820+76↑j
                cmp     esi, 3
                jnz     loc_1402B28B3
                jmp     loc_1402B289C
; ---------------------------------------------------------------------------

loc_1402B29BF:                          ; CODE XREF: sub_1402B2820+6D↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rbp+78h], rcx
                jz      loc_1402B2893
                jmp     loc_14044EDF2
; ---------------------------------------------------------------------------

loc_1402B29DE:                          ; CODE XREF: sub_1402B2820+F9↑j
                                        ; sub_1402B2820+102↑j
                cmp     eax, 1
                jz      loc_1402B2928
                jmp     loc_1402B293D
; ---------------------------------------------------------------------------

loc_1402B29EC:                          ; CODE XREF: sub_1402B2820+11F↑j
                mov     rax, [rbp+78h]
                test    rax, rax
                jz      loc_1402B2945
                cmp     r15b, 2
                jnb     loc_1402B2945
                mov     edx, 72506F50h
                mov     rcx, rax
                mov     r14, rax
                call    ObfReferenceObjectWithTag
                mov     r13d, 1
                jmp     loc_1402B2945
; ---------------------------------------------------------------------------

loc_1402B2A1E:                          ; CODE XREF: sub_1402B2820+16A↑j
                mov     edx, r13d
                mov     rcx, r14
                call    sub_1406754C4
                mov     edx, 72506F50h
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag
                jmp     loc_1402B2990
; ---------------------------------------------------------------------------

loc_1402B2A3B:                          ; CODE XREF: sub_1402B2820+D0↑j
                test    dil, dil
                jz      loc_1402B2945

loc_1402B2A44:                          ; CODE XREF: sub_1402B2820+C6↑j
                xor     dil, dil
                jmp     loc_1402B2945
sub_1402B2820   endp

; ---------------------------------------------------------------------------
byte_1402B2A4C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400649B0↑o
                                        ; .pdata:00000001400D06A4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1402B2A54   proc near               ; CODE XREF: sub_1402B265C+111↑p
                                        ; sub_1402B2820+128↑p ...

var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_0           = byte ptr  10h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rdi
                mov     [rax+8], rcx
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                cmp     cs:byte_140C542E6, 0
                mov     rbx, rcx
                jz      loc_1402B2B4F
                mov     rdi, cs:qword_140C22BE0
                lea     rdx, qword_14000A8B8
                mov     rcx, rdi
                call    EtwEventEnabled
                test    al, al
                jz      loc_1402B2B4F
                and     [rbp+57h+var_74], 0
                lea     rax, [rbp+57h+arg_0]
                and     [rbp+57h+var_64], 0
                lea     rdx, qword_14000A8B8
                and     [rbp+57h+var_54], 0
                mov     ecx, 4
                and     [rbp+57h+var_44], 0
                xor     r9d, r9d
                and     [rbp+57h+var_34], 0
                xor     r8d, r8d
                and     [rbp+57h+var_24], 0
                and     [rbp+57h+var_14], 0
                mov     [rbp+57h+var_80], rax
                lea     rax, [rbx+24h]
                mov     [rbp+57h+var_70], rax
                lea     rax, [rbx+20h]
                mov     [rbp+57h+var_60], rax
                lea     rax, [rbx+28h]
                mov     [rbp+57h+var_50], rax
                lea     rax, [rbx+2Ch]
                mov     [rbp+57h+var_40], rax
                lea     rax, [rbx+30h]
                mov     [rbp+57h+var_30], rax
                lea     rax, [rbx+34h]
                mov     [rbp+57h+var_20], rax
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+0C0h+var_88], rax
                mov     dword ptr [rsp+0C0h+var_90], 7
                and     qword ptr [rsp+0C0h+var_98], 0
                and     [rsp+0C0h+var_A0], 0
                mov     [rbp+57h+var_68], ecx
                mov     [rbp+57h+var_58], ecx
                mov     [rbp+57h+var_48], ecx
                mov     [rbp+57h+var_38], ecx
                mov     [rbp+57h+var_28], ecx
                mov     [rbp+57h+var_18], ecx
                mov     rcx, rdi
                mov     [rbp+57h+var_78], 8
                call    EtwWriteEx

loc_1402B2B4F:                          ; CODE XREF: sub_1402B2A54+33↑j
                                        ; sub_1402B2A54+51↑j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402B2A54
sub_1402B2A54   endp

algn_1402B2B71:                         ; DATA XREF: .pdata:00000001400D06B0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B2B78   proc near               ; CODE XREF: sub_1402B265C+FE↑p
                                        ; sub_1402B2820+118↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                movsxd  r10, edx
                lea     rdx, off_140C002D8
                mov     rax, r10
                add     rax, rax
                cmp     qword ptr [rdx+rax*8], 0
                jz      short loc_1402B2BA9
                neg     r8b
                mov     dl, r9b
                sbb     al, al
                and     al, 2
                dec     al
                add     [r10+rcx+48h], al
                call    sub_1402B2BB8

loc_1402B2BA9:                          ; CODE XREF: sub_1402B2B78+19↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B2B78   endp

byte_1402B2BAF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D06BC↑o

; =============== S U B R O U T I N E =======================================


sub_1402B2BB8   proc near               ; CODE XREF: sub_1402B20E0+A7↑p
                                        ; sub_1402B2B78+2C↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014044EDFC SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     byte ptr [rcx+4Eh], 0
                mov     dil, dl
                mov     rbx, rcx
                jnz     short loc_1402B2C23
                xor     eax, eax

loc_1402B2BD0:                          ; CODE XREF: sub_1402B2BB8+26↓j
                cmp     byte ptr [rcx+rax+48h], 0
                jnz     short loc_1402B2BE2
                inc     rax
                cmp     rax, 6
                jl      short loc_1402B2BD0
                jmp     short loc_1402B2C23
; ---------------------------------------------------------------------------

loc_1402B2BE2:                          ; CODE XREF: sub_1402B2BB8+1D↑j
                mov     edx, 72506F50h
                call    ObfReferenceObjectWithTag
                mov     rcx, cs:qword_140C24ED0
                lea     rdx, qword_140C24ED0
                lea     rax, [rbx+38h]
                cmp     [rcx+8], rdx
                jnz     FatalListEntryError_12
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rcx+8], rax
                mov     cs:qword_140C24ED0, rax
                mov     byte ptr [rbx+4Eh], 1
                test    dil, dil
                jnz     short loc_1402B2C2F

loc_1402B2C23:                          ; CODE XREF: sub_1402B2BB8+14↑j
                                        ; sub_1402B2BB8+28↑j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B2C2F:                          ; CODE XREF: sub_1402B2BB8+69↑j
                cmp     cs:byte_140C24EC0, 0
                jnz     short loc_1402B2C23
                xor     edx, edx
                mov     cs:byte_140C24EC0, 1
                lea     rcx, qword_140C24E80
                call    ExQueueWorkItem
                jmp     short loc_1402B2C23
sub_1402B2BB8   endp

; ---------------------------------------------------------------------------
algn_1402B2C4F:                         ; DATA XREF: .rdata:00000001400649F0↑o
                                        ; .pdata:00000001400D06C8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B2C60   proc near               ; CODE XREF: sub_1402B265C+144↑p
                                        ; sub_1402B2820+162↑p
                                        ; DATA XREF: ...

var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044EE04 SIZE 0000006F BYTES

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+58h+var_18], rax
                xorps   xmm0, xmm0
                lea     r14, qword_140C24ED0
                xor     eax, eax
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax

loc_1402B2C99:                          ; CODE XREF: sub_1402B2C60+F3↓j
                lea     rdx, [rsp+58h+var_38]
                lea     rcx, qword_140C24DF0
                call    KeAcquireInStackQueuedSpinLock
                cmp     cs:qword_140C24ED0, r14
                jz      loc_1402B2D5F
                mov     rbx, cs:qword_140C24ED8
                mov     rax, [rbx+8]
                cmp     [rbx], r14
                jnz     loc_14044EE6C
                cmp     [rax], rbx
                jnz     loc_14044EE6C
                add     rbx, 0FFFFFFFFFFFFFFC8h
                mov     cs:qword_140C24ED8, rax
                xor     edi, edi
                mov     [rax], r14
                lea     rdx, [rsp+58h+var_20]
                sub     rdx, rbx
                lea     rcx, [rbx+48h]
                lea     r8d, [rdi+6]

loc_1402B2CF4:                          ; CODE XREF: sub_1402B2C60+A5↓j
                mov     al, [rcx]
                mov     [rdx+rcx-48h], al
                test    al, al
                jnz     short loc_1402B2D58

loc_1402B2CFE:                          ; CODE XREF: sub_1402B2C60+FD↓j
                inc     rcx
                sub     r8, 1
                jnz     short loc_1402B2CF4
                mov     [rbx+4Eh], r8b

loc_1402B2D0B:                          ; CODE XREF: sub_1402B2C60+109↓j
                lea     rcx, [rsp+58h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   esi, [rsp+58h+var_28]
                test    eax, eax
                jnz     loc_14044EE04

loc_1402B2D28:                          ; CODE XREF: sub_1402B2C60+19C1A6↓j
                                        ; sub_1402B2C60+19C1B2↓j ...
                mov     cr8, rsi
                test    rbx, rbx
                jz      short loc_1402B2D6B
                test    edi, edi
                jz      short loc_1402B2D46
                mov     r8d, [rbx+10h]
                lea     rcx, [rsp+58h+var_20]
                mov     edx, [rbx+1Ch]
                call    sub_1402B2D98

loc_1402B2D46:                          ; CODE XREF: sub_1402B2C60+D3↑j
                mov     edx, 72506F50h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                jmp     loc_1402B2C99
; ---------------------------------------------------------------------------

loc_1402B2D58:                          ; CODE XREF: sub_1402B2C60+9C↑j
                mov     byte ptr [rcx], 0
                inc     edi
                jmp     short loc_1402B2CFE
; ---------------------------------------------------------------------------

loc_1402B2D5F:                          ; CODE XREF: sub_1402B2C60+51↑j
                xor     ebx, ebx
                xor     edi, edi
                mov     cs:byte_140C24EC0, bl
                jmp     short loc_1402B2D0B
; ---------------------------------------------------------------------------

loc_1402B2D6B:                          ; CODE XREF: sub_1402B2C60+CF↑j
                mov     rcx, [rsp+58h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402B2C60
sub_1402B2C60   endp

byte_1402B2D8F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140064A20↑o
                                        ; .pdata:00000001400D06D4↑o

; =============== S U B R O U T I N E =======================================


sub_1402B2D98   proc near               ; CODE XREF: sub_1402B2220+165↑p
                                        ; sub_1402B2C60+E1↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     ebp, r8d
                lea     rbx, off_140C002D8
                mov     r14d, edx
                mov     rsi, rcx
                xor     edi, edi

loc_1402B2DC3:                          ; CODE XREF: sub_1402B2D98+43↓j
                mov     al, [rdi+rsi]
                test    al, al
                jnz     short loc_1402B2DF9

loc_1402B2DCA:                          ; CODE XREF: sub_1402B2D98+72↓j
                inc     rdi
                lea     rax, off_140C00338
                add     rbx, 10h
                cmp     rbx, rax
                jl      short loc_1402B2DC3
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B2DF9:                          ; CODE XREF: sub_1402B2D98+30↑j
                mov     rax, [rbx]
                setnle  r8b
                mov     edx, r14d
                mov     ecx, ebp
                call    sub_1404079D0
                jmp     short loc_1402B2DCA
sub_1402B2D98   endp

; ---------------------------------------------------------------------------
byte_1402B2E0C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D06E0↑o

; =============== S U B R O U T I N E =======================================


sub_1402B2E14   proc near               ; CODE XREF: sub_14020A278+217CE4↓p
                                        ; sub_14021FD10+209376↓p ...

; FUNCTION CHUNK AT 000000014044EE74 SIZE 00000011 BYTES

                test    rdx, rdx
                jz      loc_14044EE74
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1402B2E21:                          ; CODE XREF: sub_1402B2E14+14↓j
                inc     rax
                cmp     byte ptr [rdx+rax], 0
                jnz     short loc_1402B2E21
                inc     eax

loc_1402B2E2C:                          ; CODE XREF: sub_1402B2E14+19C06C↓j
                and     dword ptr [rcx+0Ch], 0
                mov     [rcx], rdx
                mov     [rcx+8], eax
                retn
sub_1402B2E14   endp

; ---------------------------------------------------------------------------
                align 8
algn_1402B2E38:                         ; DATA XREF: .pdata:00000001400D06EC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402B2E40   proc near               ; CODE XREF: sub_1402B3030+54F↓p
                                        ; sub_1402B3030+5BE↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rsi, r9
                lea     rcx, dword_140C24280
                mov     edi, r8d
                call    ExAcquireFastMutex
                cmp     edi, 1
                mov     rcx, rbx
                cmova   edi, cs:dword_140C23D6C
                or      edx, 0FFFFFFFFh
                call    sub_140677FC8
                xor     ebx, ebx
                test    rax, rax
                jz      short loc_1402B2ECF
                movsxd  r9, edi
                mov     rcx, [rax+r9*8+40h]
                test    rcx, rcx
                jz      short loc_1402B2ECF
                mov     edx, [rcx+4]
                mov     rcx, [rsp+28h+arg_28]
                mov     [rcx], edx
                cmp     edx, 4
                ja      short loc_1402B2ED6
                mov     r8d, edx
                mov     rcx, rsi
                mov     rdx, [rax+r9*8+40h]
                add     rdx, 0Ch
                call    memmove

loc_1402B2EB0:                          ; CODE XREF: sub_1402B2E40+94↓j
                                        ; sub_1402B2E40+9B↓j
                lea     rcx, dword_140C24280
                call    KeReleaseGuardedMutex
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B2ECF:                          ; CODE XREF: sub_1402B2E40+3E↑j
                                        ; sub_1402B2E40+4B↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1402B2EB0
; ---------------------------------------------------------------------------

loc_1402B2ED6:                          ; CODE XREF: sub_1402B2E40+5A↑j
                mov     ebx, 0C0000206h
                jmp     short loc_1402B2EB0
sub_1402B2E40   endp

; ---------------------------------------------------------------------------
byte_1402B2EDD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D06F8↑o

; =============== S U B R O U T I N E =======================================


sub_1402B2EE4   proc near               ; CODE XREF: sub_1403A5EF4+B9↓p
                                        ; sub_1403A9804+A2↓p ...
                sub     rsp, 28h
                mov     eax, cs:dword_140C22E24
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_1402B2F0A
                lock or cs:dword_140C22E24, ecx
                mov     ecx, 4
                call    sub_1402B45B4
                call    sub_1402B3A30

loc_1402B2F0A:                          ; CODE XREF: sub_1402B2EE4+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B2EE4   endp

byte_1402B2F10  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0704↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402B2F18   proc near               ; CODE XREF: sub_140676CF0+4B↓p
                                        ; DATA XREF: .pdata:00000001400D0710↑o

var_30          = dword ptr -30h
var_2C          = byte ptr -2Ch
var_2B          = word ptr -2Bh
var_29          = byte ptr -29h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
arg_0           = dword ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

                mov     [rsp-8+arg_18], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     ebx, ebx
                cmp     cs:byte_140C5430C, bl
                mov     [rbp+var_2B], bx
                mov     [rbp+var_29], bl
                mov     [rbp+var_24], ebx
                mov     [rbp+var_14], ebx
                mov     [rbp+arg_0], ebx
                jz      short loc_1402B2FA9
                call    RtlGetActiveConsoleId
                mov     [rbp+arg_10], eax
                mov     ecx, eax
                cmp     eax, 0FFFFFFFFh
                jz      short loc_1402B2FC0
                call    sub_140676CDC
                test    al, al
                jnz     short loc_1402B2FB7
                lea     rax, [rbp+arg_8]
                mov     [rbp+var_2B], bx
                mov     [rbp+var_20], rax
                lea     r9, [rbp+arg_10]
                lea     rax, [rbp+arg_0]
                mov     [rbp+var_29], bl
                lea     r8d, [rbx+1]
                mov     [rbp+var_10], rax
                lea     rdx, [rbp+var_30]
                mov     qword ptr [rbp-28h], 4
                lea     ecx, [rbx+5]
                mov     qword ptr [rbp-18h], 4
                mov     [rbp+arg_8], ebx
                mov     [rbp+var_30], 2
                mov     [rbp+var_2C], bl
                call    sub_140676AA0
                mov     ecx, [rbp+arg_0]
                test    eax, eax
                cmovs   ecx, ebx
                mov     ebx, ecx

loc_1402B2FA9:                          ; CODE XREF: sub_1402B2F18+25↑j
                                        ; sub_1402B2F18+A6↓j ...
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_18]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B2FB7:                          ; CODE XREF: sub_1402B2F18+3D↑j
                call    sub_1408FFCEC
                mov     ebx, eax
                jmp     short loc_1402B2FA9
; ---------------------------------------------------------------------------

loc_1402B2FC0:                          ; CODE XREF: sub_1402B2F18+34↑j
                mov     ebx, [rbp+arg_0]
                jmp     short loc_1402B2FA9
sub_1402B2F18   endp

; ---------------------------------------------------------------------------
algn_1402B2FC5:                         ; DATA XREF: .pdata:00000001400D0710↑o
                align 10h
; Exported entry 2153. RtlGetActiveConsoleId

; =============== S U B R O U T I N E =======================================


