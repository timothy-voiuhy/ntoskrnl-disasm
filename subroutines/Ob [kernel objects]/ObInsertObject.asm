ObInsertObject  proc near               ; CODE XREF: FsRtlCreateSectionForDataScan+1A4↑p
                                        ; sub_14030D258+7A7↑p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_20], rax
                and     [rsp+48h+var_28], 0
                call    sub_14061EFE0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObInsertObject  endp

algn_14067E458:                         ; DATA XREF: .pdata:0000000140101148↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14067E460   proc near               ; CODE XREF: FsRtlCreateSectionForDataScan+127↑p
                                        ; DATA XREF: .pdata:0000000140101154↑o
                sub     rsp, 28h
                call    sub_140267410
                mov     rcx, rax
                call    sub_14026F920
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14067E460   endp

algn_14067E477:                         ; DATA XREF: .pdata:0000000140101154↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14067E480   proc near               ; CODE XREF: sub_14078DA60+12↓p
                                        ; DATA XREF: .rdata:0000000140065FDC↑o ...

var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014081199A SIZE 00000029 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    r14
                sub     rsp, 70h
                mov     edi, r9d
                mov     r9, r8
                mov     r10, rdx
                mov     r14, rcx
                and     qword ptr [rax-18h], 0
                and     qword ptr [rax-20h], 0
                mov     ecx, edi
                call    sub_1402B77AC
                test    al, al
                jz      loc_14081199A
                test    r9, r9
                jnz     loc_1408119A4
                mov     ebx, edi
                and     ebx, 2
                test    r10, r10
                jnz     loc_14067E5EE

loc_14067E4D1:                          ; CODE XREF: sub_14067E480+170↓j
                and     [rsp+78h+var_28], 0
                mov     rax, gs:188h
                mov     sil, [rax+232h]
                test    sil, sil
                jz      loc_1408119AE

loc_14067E4EF:                          ; DATA XREF: .rdata:0000000140065FB8↑o
;   __try { // __except at loc_14067E51D
                mov     rdx, 7FFFFFFF0000h
                mov     rcx, rdx
                cmp     r14, rdx
                cmovb   rcx, r14
                mov     rax, [rcx]
                mov     [rcx], rax
                test    r10, r10
                jz      short loc_14067E51B
                cmp     r10, rdx
                cmovb   rdx, r10
                mov     eax, [rdx]
                mov     [rsp+78h+var_28], eax

loc_14067E51B:                          ; CODE XREF: sub_14067E480+8C↑j
                jmp     short loc_14067E522
;   } // starts at 14067E4EF
; ---------------------------------------------------------------------------

loc_14067E51D:                          ; DATA XREF: .rdata:0000000140065FB8↑o
;   __except(1) // owned by 14067E4EF
                jmp     loc_14067E5D6
; ---------------------------------------------------------------------------

loc_14067E522:                          ; CODE XREF: sub_14067E480:loc_14067E51B↑j
                                        ; sub_14067E480+193531↓j ...
                test    ebx, ebx
                jnz     loc_14067E5FD

loc_14067E52A:                          ; CODE XREF: sub_14067E480+18B↓j
                mov     rdx, cs:qword_140CFC7A8
                and     [rsp+78h+var_30], 0
                lea     rax, [rsp+78h+var_20]
                mov     [rsp+78h+var_38], rax
                and     [rsp+78h+var_40], 0
                and     dword ptr [rsp+78h+var_48], 0
                mov     dword ptr [rsp+78h+var_50], 0A8h
                mov     r9b, sil
                xor     r8d, r8d
                mov     cl, sil
                call    sub_14061EDD0
                mov     ecx, eax
                test    eax, eax
                js      short loc_14067E5D4
                xor     r8d, r8d
                xor     edx, edx
                test    ebx, ebx
                mov     rbx, [rsp+78h+var_20]
                mov     rcx, rbx
                jnz     loc_14067E613
                mov     r9d, edi
                call    KeInitializeTimer2

loc_14067E584:                          ; CODE XREF: sub_14067E480+1A1↓j
                and     qword ptr [rbx+88h], 0
                mov     [rbx+0A0h], edi
                lea     rax, [rsp+78h+var_18]
                mov     [rsp+78h+var_48], rax
                and     [rsp+78h+var_50], 0
                and     [rsp+78h+var_58], 0
                xor     r9d, r9d
                mov     r8d, [rsp+78h+arg_20]
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14061EFE0
                mov     ecx, eax
                mov     [rsp+78h+var_28], eax
                test    eax, eax
                js      short loc_14067E5D4

loc_14067E5C6:                          ; DATA XREF: .rdata:0000000140065FC8↑o
;   __try { // __except at loc_14067E5D0
                mov     rax, [rsp+78h+var_18]
                mov     [r14], rax
                jmp     short loc_14067E5D4
;   } // starts at 14067E5C6
; ---------------------------------------------------------------------------

loc_14067E5D0:                          ; DATA XREF: .rdata:0000000140065FC8↑o
;   __except(1) // owned by 14067E5C6
                mov     ecx, [rsp+78h+var_28]

loc_14067E5D4:                          ; CODE XREF: sub_14067E480+E5↑j
                                        ; sub_14067E480+144↑j ...
                mov     eax, ecx

loc_14067E5D6:                          ; CODE XREF: sub_14067E480:loc_14067E51D↑j
                                        ; sub_14067E480+17B↓j ...
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14067E5EE:                          ; CODE XREF: sub_14067E480+4B↑j
                test    ebx, ebx
                jnz     loc_14067E4D1
                mov     eax, 0C00000F0h
                jmp     short loc_14067E5D6
; ---------------------------------------------------------------------------

loc_14067E5FD:                          ; CODE XREF: sub_14067E480+A4↑j
                mov     dl, sil
                mov     ecx, [rsp+78h+var_28]
                call    sub_140771568
                test    eax, eax
                jns     loc_14067E52A
                jmp     short loc_14067E5D6
; ---------------------------------------------------------------------------

loc_14067E613:                          ; CODE XREF: sub_14067E480+F6↑j
                mov     [rsp+78h+var_58], edi
                lea     r9, [rsp+78h+var_28]
                call    sub_140381360
                jmp     loc_14067E584
; } // starts at 14067E480
sub_14067E480   endp

; ---------------------------------------------------------------------------
algn_14067E626:                         ; DATA XREF: .rdata:0000000140065FDC↑o
                                        ; .pdata:0000000140101160↑o
                align 10h
; Exported entry 1642. ObCreateObject

; =============== S U B R O U T I N E =======================================


