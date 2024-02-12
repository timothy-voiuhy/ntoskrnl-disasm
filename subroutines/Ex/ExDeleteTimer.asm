ExDeleteTimer   proc near               ; CODE XREF: sub_14067BFD0+1E↓p
                                        ; sub_1406DD1C8+128↓p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044F968 SIZE 0000001D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rdi, r9
                mov     sil, r8b
                mov     bpl, dl
                mov     rbx, rcx
                call    sub_1402B52B4
                test    rdi, rdi
                jnz     short loc_1402B5344

loc_1402B530A:                          ; CODE XREF: ExDeleteTimer+BC↓j
                lea     rax, sub_14035AF40
                mov     [rsp+48h+var_10], rbx
                lea     r9, [rsp+48h+var_18]
                mov     [rsp+48h+var_18], rax
                mov     r8b, sil
                mov     dl, bpl
                mov     rcx, rbx
                call    sub_1402B69A0
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402B5344:                          ; CODE XREF: ExDeleteTimer+28↑j
                mov     eax, [rdi]
                test    eax, eax
                jnz     loc_14044F968
                mov     rax, cs:qword_140CFC808
                mov     rdx, [rdi+8]
                mov     ecx, eax
                xor     rdx, cs:qword_140CFCA10
                bswap   rdx
                xor     rdx, rbx
                ror     rdx, cl
                xor     rdx, rax
                mov     [rbx+88h], rdx
                mov     rax, cs:qword_140CFC808
                mov     rdx, [rdi+10h]
                mov     ecx, eax
                xor     rdx, cs:qword_140CFCA10
                bswap   rdx
                xor     rdx, rbx
                ror     rdx, cl
                xor     rdx, rax
                mov     [rbx+90h], rdx
                jmp     loc_1402B530A
ExDeleteTimer   endp

; ---------------------------------------------------------------------------
algn_1402B53A1:                         ; DATA XREF: .rdata:000000014006571C↑o
                                        ; .pdata:00000001400D09F8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B53A8   proc near               ; CODE XREF: sub_140232930+1F9491↓p
                                        ; sub_1405646F4+125↓p ...

arg_8           = qword ptr  10h

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                and     byte ptr [rcx+519h], 0BFh
                lea     rbx, [rdx+28h]
                mov     rdi, rcx
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx], rcx
                jnz     short loc_1402B53E8

loc_1402B53CC:                          ; CODE XREF: sub_1402B53A8+48↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, rdi
                call    sub_140245770
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402B53E8:                          ; CODE XREF: sub_1402B53A8+22↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_1402B53CC
sub_1402B53A8   endp

; ---------------------------------------------------------------------------
algn_1402B53F2:                         ; DATA XREF: .pdata:00000001400D0A04↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B53F8   proc near               ; CODE XREF: sub_14067C5D8+C0↓p
                                        ; sub_14067C6B0+B2↓p ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_18          = byte ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h
arg_48          = dword ptr  50h
arg_50          = qword ptr  58h

                mov     r11, rsp
                sub     rsp, 78h
                and     [rsp+78h+var_10], 0
                mov     rax, [rsp+78h+arg_50]
                mov     [rsp+78h+var_18], 0
                mov     [r11-20h], rax
                mov     eax, [rsp+78h+arg_48]
                mov     [rsp+78h+var_28], eax
                mov     eax, [rsp+78h+arg_40]
                mov     [rsp+78h+var_30], eax
                mov     rax, [rsp+78h+arg_38]
                mov     [r11-38h], rax
                mov     eax, [rsp+78h+arg_30]
                mov     [rsp+78h+var_40], eax
                mov     eax, [rsp+78h+arg_28]
                mov     [rsp+78h+var_48], eax
                mov     rax, [rsp+78h+arg_20]
                mov     [r11-50h], rax
                mov     [r11-58h], r9
                mov     r9, r8
                mov     r8d, 1
                call    sub_14067CCA8
                add     rsp, 78h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B53F8   endp

algn_1402B5471:                         ; DATA XREF: .pdata:00000001400D0A10↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B5478   proc near               ; CODE XREF: sub_14067DAAC+35↓p
                                        ; DATA XREF: .rdata:0000000140065A5C↑o ...

; FUNCTION CHUNK AT 000000014044F986 SIZE 0000006B BYTES

                sub     rsp, 28h
                mov     r11, rdx
                call    sub_1402A8F08
                mov     r10, rax
                test    rax, rax
                jnz     loc_14044F986

loc_1402B5490:                          ; CODE XREF: sub_1402B5478+19A574↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B5478   endp

algn_1402B5496:                         ; DATA XREF: .rdata:0000000140065A5C↑o
                                        ; .pdata:00000001400D0A1C↑o
                align 20h
; Exported entry 239. ExInitializeLookasideListEx

; =============== S U B R O U T I N E =======================================


