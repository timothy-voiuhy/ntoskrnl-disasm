ntoskrnl_17     proc near               ; CODE XREF: sub_1403C0010+EE3D3↑p
                                        ; sub_140A3C054+3F0↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    PsGetHostSilo
                mov     rcx, rax
                call    sub_140206CF0
                add     rax, 430h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_17     endp

byte_140722F0D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140107718↑o

; =============== S U B R O U T I N E =======================================


sub_140722F14   proc near               ; CODE XREF: sub_14039EACC+1F↑p
                                        ; DATA XREF: .pdata:0000000140107724↑o
                mov     [rcx+558h], rdx
                lock or dword ptr [rcx+464h], 10000h
                retn
sub_140722F14   endp

; ---------------------------------------------------------------------------
                align 8
algn_140722F28:                         ; DATA XREF: .pdata:0000000140107724↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140722F30   proc near               ; CODE XREF: sub_1403CA5F4:loc_1403CA62D↑p
                                        ; sub_140537D20+35↑p ...
                movzx   ecx, cs:word_140CFB000
                mov     eax, cs:dword_140C4DD7C
                lea     ecx, [rcx+rax*2]
                lea     ecx, [rcx+1Bh]
                lea     rax, [rcx+rcx*2]
                shl     rax, 3
                retn
sub_140722F30   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140722F4D  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140107730↑o

; =============== S U B R O U T I N E =======================================


sub_140722F54   proc near               ; CODE XREF: sub_140998090:loc_140998112↓p
                                        ; DATA XREF: .pdata:000000014010773C↑o
                sub     rsp, 28h
                xor     edx, edx
                lea     rcx, byte_140C24120
                mov     r8d, 80h
                call    memset
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140722F54   endp

algn_140722F72:                         ; DATA XREF: .pdata:000000014010773C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140722F78   proc near               ; CODE XREF: sub_14039E234:loc_14039E387↑p
                                        ; DATA XREF: .pdata:0000000140107748↑o
                mov     rax, cs:qword_140C4DC60
                add     rax, 1000h
                retn
sub_140722F78   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140722F87:                         ; DATA XREF: .pdata:0000000140107748↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140722F90   proc near               ; CODE XREF: sub_1402B0230+399↑p
                                        ; DATA XREF: .pdata:0000000140107754↑o
                mov     rax, cs:qword_140D2D078
                mov     cs:qword_140D2D218, rax
                retn
sub_140722F90   endp

; ---------------------------------------------------------------------------
                align 20h
byte_140722FA0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140107754↑o

; =============== S U B R O U T I N E =======================================


sub_140722FA8   proc near               ; CODE XREF: sub_140A4D668+A3↓p
                                        ; DATA XREF: .pdata:0000000140107760↑o
                xor     eax, eax
                mov     [rcx], rax
                retn
sub_140722FA8   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140722FAF  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140107760↑o

; =============== S U B R O U T I N E =======================================


sub_140722FB8   proc near               ; CODE XREF: sub_140A3E134+4B↓p
                                        ; DATA XREF: .pdata:000000014010776C↑o
                or      dword ptr [rcx+18h], 0FFFFFFFFh
                xor     eax, eax
                retn
sub_140722FB8   endp

; ---------------------------------------------------------------------------
                align 20h
byte_140722FC0  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010776C↑o

; =============== S U B R O U T I N E =======================================


sub_140722FC8   proc near               ; CODE XREF: sub_140A64AAC+2C↓p
                                        ; DATA XREF: .pdata:0000000140107778↑o
                mov     al, 1
                retn
sub_140722FC8   endp

; ---------------------------------------------------------------------------
                align 4
byte_140722FCC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140107778↑o

; =============== S U B R O U T I N E =======================================


sub_140722FD4   proc near               ; CODE XREF: sub_140A6DA44+A8↓p
                                        ; DATA XREF: .pdata:0000000140107784↑o
                mov     [rcx+1588h], rdx
                retn
sub_140722FD4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140722FDD  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140107784↑o

; =============== S U B R O U T I N E =======================================


sub_140722FE4   proc near               ; CODE XREF: sub_140998090+60↓p
                                        ; DATA XREF: .pdata:0000000140107790↑o
                and     cs:dword_140C4C410, 0
                retn
sub_140722FE4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140722FED  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140107790↑o

; =============== S U B R O U T I N E =======================================


sub_140722FF4   proc near               ; CODE XREF: sub_140A56050+248↓p
                                        ; DATA XREF: .pdata:000000014010779C↑o
                mov     cs:dword_140C4EB3C, ecx
                retn
sub_140722FF4   endp

; ---------------------------------------------------------------------------
                align 4
byte_140722FFC  db 14h dup(0CCh)        ; DATA XREF: .pdata:000000014010779C↑o
; Exported entry 944. IoRegisterPlugPlayNotification

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

