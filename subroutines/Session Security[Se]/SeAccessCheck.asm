SeAccessCheck   proc near               ; CODE XREF: sub_14024A710+157↓p
                                        ; sub_14024A710+1B3↓p ...

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = byte ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

                sub     rsp, 68h
                mov     rax, [rsp+68h+arg_48]
                mov     [rsp+68h+var_10], 0
                mov     [rsp+68h+var_18], rax
                mov     rax, [rsp+68h+arg_40]
                mov     [rsp+68h+var_20], rax
                movzx   eax, [rsp+68h+arg_38]
                mov     [rsp+68h+var_28], al
                mov     rax, [rsp+68h+arg_30]
                mov     [rsp+68h+var_30], rax
                mov     rax, [rsp+68h+arg_28]
                mov     [rsp+68h+var_38], rax
                mov     eax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_40], eax
                mov     [rsp+68h+var_48], r9d
                movzx   r9d, r8b
                mov     r8, rdx
                xor     edx, edx
                call    sub_140248760
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAccessCheck   endp

algn_14021DD0D:                         ; DATA XREF: .pdata:00000001400CA950↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14021DD20   proc near               ; CODE XREF: sub_1406344C0+E↓p
                                        ; DATA XREF: .rdata:00000001400514E0↑o ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = byte ptr -108h
var_107         = byte ptr -107h
var_106         = byte ptr -106h
var_104         = dword ptr -104h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_78          = byte ptr -78h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140428454 SIZE 000000AA BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_48], rax
                mov     esi, r9d
                mov     [rsp+138h+var_104], r9d
                mov     rdi, r8
                mov     [rsp+138h+var_C0], r8
                mov     rbx, rcx
                mov     [rsp+138h+var_E8], rcx
                mov     [rsp+138h+var_B8], rcx
                mov     rax, [rsp+138h+arg_20]
                mov     [rsp+138h+var_100], rax
                xorps   xmm0, xmm0
                movups  [rsp+138h+var_D0], xmm0
                xorps   xmm1, xmm1
                xor     eax, eax
                movups  [rsp+138h+var_B0], xmm1
                movups  [rsp+138h+var_A0], xmm1
                movups  [rsp+138h+var_90], xmm1
                mov     [r11-80h], rax
                mov     r15d, eax
                mov     r14d, eax
                mov     [rsp+138h+var_F8], rax
                xor     r12b, r12b
                mov     [rsp+138h+var_108], r12b
                mov     [rsp+138h+var_107], al
                xor     r13b, r13b
                movups  xmmword ptr [r11-78h], xmm0
                movups  xmmword ptr [r11-68h], xmm0
                movups  xmmword ptr [r11-58h], xmm0
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_D8], rax
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_E0], rax
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                cmp     cs:dword_140C5097C, r14d
                jz      short loc_14021DE5A
                lea     rcx, unk_140D23580
                call    ExIsResourceAcquiredSharedLite
                test    eax, eax
                jnz     short loc_14021DE5A
                mov     qword ptr [rsp+138h+var_B0], rbx
                mov     qword ptr [rsp+138h+var_B0+8], rdi
                mov     dword ptr [rsp+138h+var_A0], esi
                mov     rax, [rsp+138h+var_100]
                mov     qword ptr [rsp+138h+var_A0+8], rax
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_110], rax
                mov     [rsp+138h+var_118], rbx
                lea     r9d, [r14+30h]
                lea     rdx, [rsp+138h+var_B0]
                lea     ecx, [r14+2Fh]
                call    sub_14065399C
                mov     esi, eax
                test    eax, eax
                js      loc_140428454
                mov     [rsp+138h+var_107], 1

loc_14021DE5A:                          ; CODE XREF: sub_14021DD20+D1↑j
                                        ; sub_14021DD20+E1↑j
                lea     rcx, [rsp+138h+var_78]
                call    sub_14063A890
                mov     r13b, 1
                call    sub_14064A3A0
                mov     r15, [rbx+8]
                mov     [rsp+138h+var_F0], r15
                test    r13b, r15b
                jnz     loc_140428468
                mov     eax, [rbx+30h]
                test    al, 2
                jnz     short loc_14021DE99
                mov     rcx, r15
                call    sub_140646FA0
                movzx   r12d, r13b
                mov     [rsp+138h+var_108], r13b

loc_14021DE99:                          ; CODE XREF: sub_14021DD20+166↑j
                                        ; sub_14021DD20+20A751↓j
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140638C00
                mov     esi, eax
                test    eax, eax
                js      loc_14021DF9F
                cmp     cs:byte_140C0F3DD, r14b
                jz      short loc_14021DEC7
                test    dword ptr [r15+0B8h], 1000000h
                jnz     loc_140428476

loc_14021DEC7:                          ; CODE XREF: sub_14021DD20+194↑j
                mov     rcx, r15
                call    sub_1406374AC
                mov     r14, rax
                mov     [rsp+138h+var_F8], rax

loc_14021DED7:                          ; CODE XREF: sub_14021DD20+20A765↓j
                                        ; sub_14021DD20+20A775↓j
                test    r14, r14
                jz      loc_14042849A
                test    r12b, r12b
                jz      short loc_14021DEF5
                mov     rcx, r15
                call    sub_140646FD0
                xor     r12b, r12b
                mov     [rsp+138h+var_108], r12b

loc_14021DEF5:                          ; CODE XREF: sub_14021DD20+1C3↑j
                call    sub_14064A360
                lea     rcx, [rsp+138h+var_78]
                call    sub_14063A63C
                xor     r13b, r13b
                mov     [rsp+138h+var_106], r13b
                mov     edx, [rsp+138h+var_104]
                mov     rcx, [rsp+138h+var_100]
                cmp     edx, 10h
                jbe     loc_14021E02C
                lea     r9, [rdi+10h]
                mov     r10, [r14+8]
                movzx   ebx, word ptr [r14]
                add     ebx, 2
                lea     eax, [rbx+10h]
                mov     [rcx], eax
                lea     rcx, [rdx-10h]
                mov     eax, ebx
                cmp     rax, rcx
                ja      loc_1404284A4
                xor     eax, eax
                mov     esi, eax

loc_14021DF48:                          ; CODE XREF: sub_14021DD20+20A78F↓j
                add     ebx, 0FFFFFFFEh

loc_14021DF4B:                          ; DATA XREF: .rdata:00000001400514C8↑o
;   __try { // __except at loc_14021DF7F
                mov     edi, ebx
                mov     r8d, ebx
                mov     rdx, r10
                mov     rcx, r9
                call    memmove
                shr     rdi, 1
                mov     rcx, [rsp+138h+var_C0]
                lea     rax, [rcx+10h]
                xor     edx, edx
                mov     [rax+rdi*2], dx
                mov     [rcx], bx
                mov     [rcx+2], bx
                mov     [rcx+8], rax
                mov     rbx, [rsp+138h+var_E8]
                jmp     short loc_14021DF9F
;   } // starts at 14021DF4B
; ---------------------------------------------------------------------------

loc_14021DF7F:                          ; DATA XREF: .rdata:00000001400514C8↑o
;   __except(1) // owned by 14021DF4B
                mov     esi, eax
                mov     r15, [rsp+138h+var_F0]
                mov     r14, [rsp+138h+var_F8]
                movzx   r12d, [rsp+138h+var_108]
                movzx   r13d, [rsp+138h+var_106]
                mov     rbx, [rsp+138h+var_B8]

loc_14021DF9F:                          ; CODE XREF: sub_14021DD20+187↑j
                                        ; sub_14021DD20+25D↑j ...
                test    r12b, r12b
                jnz     loc_1404284BF

loc_14021DFA8:                          ; CODE XREF: sub_14021DD20+20A7A8↓j
                test    r13b, r13b
                jnz     loc_1404284CD

loc_14021DFB1:                          ; CODE XREF: sub_14021DD20+20A7B5↓j
                                        ; sub_14021DD20+20A7C9↓j
                cmp     [rsp+138h+var_107], 0
                jz      short loc_14021DFDA
                lea     rax, [rsp+138h+var_E0]
                mov     [rsp+138h+var_118], rax
                lea     r9, [rsp+138h+var_B0]
                mov     r8d, esi
                mov     rdx, rbx
                mov     ecx, 30h ; '0'
                call    sub_140653740

loc_14021DFDA:                          ; CODE XREF: sub_14021DD20+296↑j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     qword ptr [rsp+138h+var_D0+8], 0
                jnz     loc_1404284EE
                test    r14, r14
                jz      short loc_14021E006
                mov     edx, 624E4D43h
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14021E006:                          ; CODE XREF: sub_14021DD20+2D7↑j
                                        ; sub_14021DD20+20A7D9↓j
                mov     eax, esi
                mov     rcx, [rsp+138h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14021E02C:                          ; CODE XREF: sub_14021DD20+1FB↑j
                movzx   eax, word ptr [r14]
                add     eax, 12h
                mov     [rcx], eax
                mov     esi, 0C0000004h
                jmp     loc_14021DF9F
; } // starts at 14021DD20
sub_14021DD20   endp

; ---------------------------------------------------------------------------
byte_14021E03F  db 11h dup(0CCh)        ; DATA XREF: .rdata:00000001400514E0↑o
                                        ; .pdata:00000001400CA95C↑o
; Exported entry 2018. RtlClearBits

; =============== S U B R O U T I N E =======================================


