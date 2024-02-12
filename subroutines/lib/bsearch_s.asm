bsearch_s       proc near               ; CODE XREF: sub_1402A9F34+AD↑p
                                        ; sub_14058F708+A3↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                lea     rdi, [r8-1]
                xor     r14d, r14d
                imul    rdi, r9
                mov     rbp, r9
                mov     rsi, r8
                add     rdi, rdx
                mov     rbx, rdx
                mov     r13, rcx
                test    rdx, rdx
                jnz     short loc_1403D2215
                test    r8, r8
                jnz     loc_1403D22B1

loc_1403D2215:                          ; CODE XREF: bsearch_s+3A↑j
                test    rbp, rbp
                jz      loc_1403D22B1
                cmp     [rsp+48h+arg_20], r14
                jz      loc_1403D22B1
                mov     rcx, [rsp+48h+arg_20]
                call    sub_140407980
                jmp     short loc_1403D227D
; ---------------------------------------------------------------------------

loc_1403D2235:                          ; CODE XREF: bsearch_s+B0↓j
                mov     r15, rsi
                shr     r15, 1
                jz      short loc_1403D2289
                mov     rax, [rsp+48h+arg_20]
                test    sil, 1
                mov     rcx, [rsp+48h+arg_28]
                lea     rsi, [r15-1]
                cmovnz  rsi, r15
                mov     rdx, r13
                mov     r14, rsi
                imul    r14, rbp
                add     r14, rbx
                mov     r8, r14
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                jz      short loc_1403D2284
                jns     short loc_1403D2276
                mov     rdi, r14
                sub     rdi, rbp
                jmp     short loc_1403D227D
; ---------------------------------------------------------------------------

loc_1403D2276:                          ; CODE XREF: bsearch_s+9C↑j
                lea     rbx, [r14+rbp]
                mov     rsi, r15

loc_1403D227D:                          ; CODE XREF: bsearch_s+63↑j
                                        ; bsearch_s+A4↑j
                cmp     rbx, rdi
                jbe     short loc_1403D2235
                jmp     short loc_1403D22C5
; ---------------------------------------------------------------------------

loc_1403D2284:                          ; CODE XREF: bsearch_s+9A↑j
                mov     rax, r14
                jmp     short loc_1403D22C7
; ---------------------------------------------------------------------------

loc_1403D2289:                          ; CODE XREF: bsearch_s+6B↑j
                xor     r14d, r14d
                test    rsi, rsi
                jz      short loc_1403D22C5
                mov     rax, [rsp+48h+arg_20]
                mov     r8, rbx
                mov     rcx, [rsp+48h+arg_28]
                mov     rdx, r13
                call    rax
                nop     dword ptr [rax]
                test    eax, eax
                cmovnz  rbx, r14
                mov     rax, rbx
                jmp     short loc_1403D22C7
; ---------------------------------------------------------------------------

loc_1403D22B1:                          ; CODE XREF: bsearch_s+3F↑j
                                        ; bsearch_s+48↑j ...
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r14
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D22C5:                          ; CODE XREF: bsearch_s+B2↑j
                                        ; bsearch_s+BF↑j
                xor     eax, eax

loc_1403D22C7:                          ; CODE XREF: bsearch_s+B7↑j
                                        ; bsearch_s+DF↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
bsearch_s       endp

algn_1403D22E7:                         ; DATA XREF: .pdata:00000001400E07D8↑o
                align 10h
; [0000000C BYTES: COLLAPSED FUNCTION __isascii. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1403D22FD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E07E4↑o
; Exported entry 3011. isdigit
; [0000001D BYTES: COLLAPSED FUNCTION isdigit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
algn_1403D232E:                         ; DATA XREF: .pdata:00000001400E07F0↑o
                align 20h
; Exported entry 3012. islower
; [0000001D BYTES: COLLAPSED FUNCTION islower. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
byte_1403D235E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E07FC↑o
; Exported entry 3013. isprint
; [0000001F BYTES: COLLAPSED FUNCTION isprint. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
algn_1403D2390:                         ; DATA XREF: .pdata:00000001400E0808↑o
                align 20h
; Exported entry 3014. isspace
; [0000001D BYTES: COLLAPSED FUNCTION isspace. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
byte_1403D23BE  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0814↑o
; Exported entry 3015. isupper
; [0000001D BYTES: COLLAPSED FUNCTION isupper. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
algn_1403D23EE:                         ; DATA XREF: .pdata:00000001400E0820↑o
                align 20h
; Exported entry 3019. isxdigit
; [0000001F BYTES: COLLAPSED FUNCTION isxdigit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
byte_1403D2420  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400E082C↑o
; Exported entry 3016. iswalnum

; =============== S U B R O U T I N E =======================================


