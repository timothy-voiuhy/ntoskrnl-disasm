RtlLoadString   proc near               ; DATA XREF: .pdata:0000000140121E84↑o

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_30], rax
                movzx   r12d, dx
                mov     rdi, rcx
                mov     rax, [rsp+0B8h+arg_20]
                mov     [rsp+0B8h+var_58], rax
                mov     r13, [rsp+0B8h+arg_28]
                mov     r14, [rsp+0B8h+arg_30]
                mov     r15, [rsp+0B8h+arg_38]
                xor     ecx, ecx
                mov     [r11-60h], rcx
                mov     [r11-68h], rcx
                mov     sil, r9b
                lea     edx, [rcx+1]
                and     sil, dl
                test    rdi, rdi
                jz      loc_1409130C0
                test    rax, rax
                jz      loc_1409130C0
                test    r9d, 0FFFFFFFEh
                jnz     loc_1409130C0
                test    sil, sil
                jz      short loc_140912F44
                test    r14, r14
                jnz     short loc_140912F3A
                test    r15, r15
                jz      short loc_140912F44

loc_140912F3A:                          ; CODE XREF: RtlLoadString+93↑j
                mov     eax, 0C00000BBh
                jmp     loc_1409130C5
; ---------------------------------------------------------------------------

loc_140912F44:                          ; CODE XREF: RtlLoadString+8E↑j
                                        ; RtlLoadString+98↑j
                cmp     r8d, 0FFFFh
                jbe     short loc_140912F8F

loc_140912F4D:                          ; DATA XREF: .rdata:00000001400C0124↑o
;   __try { // __except at loc_140912F8A
                cmp     [r8], cx
                jz      short loc_140912F7A
                mov     edx, 2
                mov     rcx, r8
                call    sub_1403A8208
                movzx   r8d, ax
                mov     [rsp+0B8h+var_70], r8d
                xor     ecx, ecx
                test    r8d, r8d
                jnz     short loc_140912F83
                mov     eax, 0C000000Dh
                jmp     loc_1409130C5
; ---------------------------------------------------------------------------

loc_140912F7A:                          ; CODE XREF: RtlLoadString+B1↑j
                mov     r8d, ecx
                mov     [rsp+0B8h+var_70], ecx
                jmp     short loc_140912F88
; ---------------------------------------------------------------------------

loc_140912F83:                          ; CODE XREF: RtlLoadString+CE↑j
                mov     edx, 1

loc_140912F88:                          ; CODE XREF: RtlLoadString+E1↑j
                jmp     short loc_140912F8F
;   } // starts at 140912F4D
; ---------------------------------------------------------------------------

loc_140912F8A:                          ; DATA XREF: .rdata:00000001400C0124↑o
;   __except(1) // owned by 140912F4D
                jmp     loc_1409130C5
; ---------------------------------------------------------------------------

loc_140912F8F:                          ; CODE XREF: RtlLoadString+AB↑j
                                        ; RtlLoadString:loc_140912F88↑j
                mov     [rsp+0B8h+var_50], 6
                mov     ebx, r12d
                mov     eax, r12d
                shr     eax, 4
                add     eax, edx
                mov     [rsp+0B8h+var_48], rax
                mov     eax, r8d
                mov     [rsp+0B8h+var_40], rax
                mov     [rsp+0B8h+var_38], r12
                mov     [rsp+0B8h+var_78], rcx
                mov     r9d, edx
                mov     r8d, 4
                mov     rcx, rdi
                lea     rdx, [rsp+0B8h+var_50]
                test    sil, sil
                jnz     short loc_140913011
                mov     [rsp+0B8h+var_80], r15
                mov     [rsp+0B8h+var_88], r14
                lea     rax, [rsp+0B8h+var_78]
                mov     [rsp+0B8h+var_90], rax
                lea     rax, [rsp+0B8h+var_68]
                mov     [rsp+0B8h+var_98], rax
                call    LdrResSearchResource
                mov     edx, eax
                xor     r14d, r14d
                test    eax, eax
                js      short loc_140913044
                cmp     [rsp+0B8h+var_78], 0FFFFh
                jbe     short loc_140913044
                mov     edx, 0C000007Bh
                jmp     short loc_140913044
; ---------------------------------------------------------------------------

loc_140913011:                          ; CODE XREF: RtlLoadString+131↑j
                lea     rax, [rsp+0B8h+var_60]
                mov     [rsp+0B8h+var_98], rax
                call    sub_1406F1074
                mov     edx, eax
                xor     r14d, r14d
                test    eax, eax
                js      loc_1409130BC
                xor     r9d, r9d
                lea     r8, [rsp+0B8h+var_68]
                mov     rdx, [rsp+0B8h+var_60]
                mov     rcx, rdi
                call    sub_1406F0D4C
                mov     edx, eax

loc_140913044:                          ; CODE XREF: RtlLoadString+15D↑j
                                        ; RtlLoadString+168↑j ...
                test    edx, edx
                js      short loc_1409130BC
                mov     r9, [rsp+0B8h+var_68]
                test    r9, r9
                jz      short loc_1409130BC
                movzx   ecx, r14w
                and     ebx, 0Fh
                shr     [rsp+0B8h+var_78], 1
                mov     r10d, 1

loc_140913064:                          ; CODE XREF: RtlLoadString+1E5↓j
                movzx   eax, cx
                movzx   r8d, word ptr [r9+rax*2]
                lea     eax, [r10+r8]
                add     cx, ax
                test    sil, sil
                jnz     short loc_140913082
                movzx   eax, cx
                cmp     rax, [rsp+0B8h+var_78]
                ja      short loc_140913089

loc_140913082:                          ; CODE XREF: RtlLoadString+1D6↑j
                sub     ebx, r10d
                jns     short loc_140913064
                jmp     short loc_140913090
; ---------------------------------------------------------------------------

loc_140913089:                          ; CODE XREF: RtlLoadString+1E0↑j
                mov     edx, 0C000007Bh
                jmp     short loc_1409130BC
; ---------------------------------------------------------------------------

loc_140913090:                          ; CODE XREF: RtlLoadString+1E7↑j
                test    cx, cx
                jz      short loc_14091309F
                test    r8w, r8w
                jz      short loc_14091309F
                sub     cx, r8w

loc_14091309F:                          ; CODE XREF: RtlLoadString+1F3↑j
                                        ; RtlLoadString+1F9↑j
                                        ; DATA XREF: ...
;   __try { // __except at loc_1409130BA
                movzx   eax, cx
                lea     rcx, [r9+rax*2]
                mov     rax, [rsp+0B8h+var_58]
                mov     [rax], rcx
                test    r13, r13
                jz      short loc_1409130B8
                mov     [r13+0], r8w

loc_1409130B8:                          ; CODE XREF: RtlLoadString+211↑j
                jmp     short loc_1409130BC
;   } // starts at 14091309F
; ---------------------------------------------------------------------------

loc_1409130BA:                          ; DATA XREF: .rdata:00000001400C0134↑o
;   __except(1) // owned by 14091309F
                mov     edx, eax

loc_1409130BC:                          ; CODE XREF: RtlLoadString+187↑j
                                        ; RtlLoadString+1A6↑j ...
                mov     eax, edx
                jmp     short loc_1409130C5
; ---------------------------------------------------------------------------

loc_1409130C0:                          ; CODE XREF: RtlLoadString+6F↑j
                                        ; RtlLoadString+78↑j ...
                mov     eax, 0C000000Dh

loc_1409130C5:                          ; CODE XREF: RtlLoadString+9F↑j
                                        ; RtlLoadString+D5↑j ...
                mov     rcx, [rsp+0B8h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140912EA0
RtlLoadString   endp

byte_1409130F3  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140121E84↑o

; =============== S U B R O U T I N E =======================================


sub_1409130FC   proc near               ; CODE XREF: sub_140913234+20↓p
                                        ; DATA XREF: .pdata:0000000140121E90↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, r9
                mov     rbx, rcx
                test    rdx, rdx
                jz      short loc_14091312E
                cmp     rdx, r8
                jnz     loc_14091320F
                test    rcx, rcx
                jz      loc_14091320F

loc_14091312E:                          ; CODE XREF: sub_1409130FC+1E↑j
                cmp     r8, 1000000h
                sbb     eax, eax
                and     eax, 0FFFFF072h
                add     eax, 254Fh
                mov     ecx, eax
                lea     r9, [rax+rax*2]
                shl     r9, 3
                lea     rdi, [r9+2F0h]
                cmp     r8, rdi
                jbe     loc_14091320F
                test    rbx, rbx
                jz      loc_14091320F
                cmp     rdx, r8
                jnz     loc_14091320F
                lea     rax, [rbx+r8]
                mov     [rbx+2D0h], ecx
                lea     rcx, [rbx+2D8h]
                mov     [rbx+0A8h], rax
                mov     r8, r9
                mov     [rbx+0B8h], rax
                xor     edx, edx
                mov     byte ptr [rbx+80h], 1
                mov     [rbx+88h], rbx
                call    memset
                lea     rcx, [rdi+0Fh]
                mov     esi, 20h ; ' '
                and     rcx, 0FFFFFFFFFFFFFFF0h
                lea     rdi, [rbx+0D0h]
                add     rcx, rbx
                mov     [rbx+0A0h], rcx
                mov     [rbx+78h], rcx

loc_1409131C6:                          ; CODE XREF: sub_1409130FC+DA↓j
                mov     rcx, rdi
                call    InitializeSListHead
                add     rdi, 10h
                sub     rsi, 1
                jnz     short loc_1409131C6
                and     [rbx], rsi
                xor     edx, edx
                mov     [rbx+8], sil
                cmp     [rbx+2D0h], edx
                jbe     short loc_140913208

loc_1409131E9:                          ; CODE XREF: sub_1409130FC+10A↓j
                lea     rcx, [rdx+rdx*2]
                inc     edx
                and     qword ptr [rbx+rcx*8+2E0h], 0
                mov     byte ptr [rbx+rcx*8+2E8h], 0
                cmp     edx, [rbx+2D0h]
                jb      short loc_1409131E9

loc_140913208:                          ; CODE XREF: sub_1409130FC+EB↑j
                mov     [r14], rbx
                xor     eax, eax
                jmp     short loc_140913214
; ---------------------------------------------------------------------------

loc_14091320F:                          ; CODE XREF: sub_1409130FC+23↑j
                                        ; sub_1409130FC+2C↑j ...
                mov     eax, 0C000000Dh

loc_140913214:                          ; CODE XREF: sub_1409130FC+111↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409130FC   endp

byte_14091322B  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140121E90↑o

; =============== S U B R O U T I N E =======================================


sub_140913234   proc near               ; CODE XREF: sub_140586024+1E↑p
                                        ; DATA XREF: .pdata:0000000140121E9C↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_18          = qword ptr  20h

                sub     rsp, 38h
                and     [rsp+38h+arg_18], 0
                cmp     cs:qword_140C1DC90, 0
                jz      short loc_14091324F

loc_140913248:                          ; CODE XREF: sub_140913234+6F↓j
                mov     eax, 0C000020Ah
                jmp     short loc_1409132A7
; ---------------------------------------------------------------------------

loc_14091324F:                          ; CODE XREF: sub_140913234+12↑j
                lea     r9, [rsp+38h+arg_18]
                call    sub_1409130FC
                mov     edx, eax
                test    eax, eax
                js      short loc_1409132A5
                mov     rcx, [rsp+38h+arg_18]
                xor     eax, eax
                lock cmpxchg cs:qword_140C1DC90, rcx
                jz      short loc_1409132A5
                mov     rcx, [rsp+38h+arg_18]
                lea     r8, [rsp+38h+var_18]
                mov     [rsp+38h+var_10], rcx
                lea     rdx, [rsp+38h+var_10]
                mov     r9d, 8000h
                mov     rax, [rcx+0B8h]
                sub     rax, rcx
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+38h+var_18], rax
                call    NtFreeVirtualMemory
                jmp     short loc_140913248
; ---------------------------------------------------------------------------

loc_1409132A5:                          ; CODE XREF: sub_140913234+29↑j
                                        ; sub_140913234+3B↑j
                mov     eax, edx

loc_1409132A7:                          ; CODE XREF: sub_140913234+19↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140913234   endp

byte_1409132AD  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140121E9C↑o

; =============== S U B R O U T I N E =======================================


sub_1409132B4   proc near               ; CODE XREF: PfxFindPrefix+4F↓p
                                        ; PfxInsertPrefix+78↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   edi, word ptr [rcx]
                mov     r13d, 5Ch ; '\'
                movzx   esi, word ptr [rdx]
                mov     r14, rdx
                mov     rbp, rcx
                lea     r15d, [r13-5Bh]
                cmp     di, r15w
                jnz     short loc_140913308
                mov     rax, [rcx+8]
                cmp     [rax], r13b
                jnz     short loc_140913308
                cmp     si, r15w
                jbe     short loc_140913308
                mov     rax, [rdx+8]
                cmp     [rax], r13b
                jz      loc_1409133F9

loc_140913308:                          ; CODE XREF: sub_1409132B4+36↑j
                                        ; sub_1409132B4+3F↑j ...
                mov     rdx, [rdx+8]
                mov     eax, edi
                mov     rcx, [rcx+8]
                cmp     di, si
                cmovnb  eax, esi
                mov     r8d, eax
                mov     ebx, eax
                call    RtlCompareMemory
                mov     r9, rax
                cmp     eax, ebx
                jnb     loc_1409133EB
                mov     r15, [rbp+8]
                xor     edx, edx
                mov     r12, [r14+8]
                mov     r11d, edx
                mov     eax, r9d
                mov     ebx, edx
                movzx   ecx, byte ptr [rax+r15]
                movzx   ebp, byte ptr [rax+r12]
                cmp     cl, r13b
                cmovnz  r11d, ecx
                cmp     bpl, r13b
                mov     r8b, r11b
                cmovnz  ebx, ebp
                cmp     cs:NlsMbCodePageTag, dl
                mov     al, bl
                jz      short loc_1409133DE
                lea     r10, unk_140D2FA20
                cmp     cl, r13b
                jnz     short loc_1409133AE
                mov     r10d, edx
                test    r9d, r9d
                jz      short loc_14091339C
                lea     r8, unk_140D2FA20

loc_14091337E:                          ; CODE XREF: sub_1409132B4+E6↓j
                mov     eax, r10d
                movzx   ecx, byte ptr [rax+r15]
                movzx   eax, word ptr [r8+rcx*2]
                neg     ax
                sbb     ecx, ecx
                neg     ecx
                inc     ecx
                add     r10d, ecx
                cmp     r10d, r9d
                jb      short loc_14091337E

loc_14091339C:                          ; CODE XREF: sub_1409132B4+C1↑j
                cmp     r10d, r9d
                movzx   r8d, r11b
                lea     r10, unk_140D2FA20
                cmovnz  r8d, r13d

loc_1409133AE:                          ; CODE XREF: sub_1409132B4+B9↑j
                mov     al, bl
                cmp     bpl, r13b
                jnz     short loc_1409133DE
                test    r9d, r9d
                jz      short loc_1409133D4

loc_1409133BA:                          ; CODE XREF: sub_1409132B4+11E↓j
                movzx   ecx, byte ptr [rdx+r12]
                movzx   eax, word ptr [r10+rcx*2]
                neg     ax
                sbb     ecx, ecx
                neg     ecx
                inc     ecx
                add     edx, ecx
                cmp     edx, r9d
                jb      short loc_1409133BA

loc_1409133D4:                          ; CODE XREF: sub_1409132B4+104↑j
                cmp     edx, r9d
                movzx   eax, bl
                cmovnz  eax, r13d

loc_1409133DE:                          ; CODE XREF: sub_1409132B4+AD↑j
                                        ; sub_1409132B4+FF↑j
                cmp     r8b, al
                jb      short loc_1409133FE
                ja      short loc_140913404
                mov     r15d, 1

loc_1409133EB:                          ; CODE XREF: sub_1409132B4+73↑j
                cmp     edi, esi
                jnb     short loc_140913402
                mov     rcx, [r14+8]
                cmp     [rdi+rcx], r13b
                jnz     short loc_1409133FE

loc_1409133F9:                          ; CODE XREF: sub_1409132B4+4E↑j
                mov     eax, r15d
                jmp     short loc_140913410
; ---------------------------------------------------------------------------

loc_1409133FE:                          ; CODE XREF: sub_1409132B4+12D↑j
                                        ; sub_1409132B4+143↑j
                xor     eax, eax
                jmp     short loc_140913410
; ---------------------------------------------------------------------------

loc_140913402:                          ; CODE XREF: sub_1409132B4+139↑j
                jbe     short loc_14091340B

loc_140913404:                          ; CODE XREF: sub_1409132B4+12F↑j
                mov     eax, 3
                jmp     short loc_140913410
; ---------------------------------------------------------------------------

loc_14091340B:                          ; CODE XREF: sub_1409132B4:loc_140913402↑j
                mov     eax, 2

loc_140913410:                          ; CODE XREF: sub_1409132B4+148↑j
                                        ; sub_1409132B4+14C↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409132B4   endp

byte_14091342E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140121EA8↑o

; =============== S U B R O U T I N E =======================================


sub_140913434   proc near               ; CODE XREF: PfxFindPrefix+25↓p
                                        ; PfxInsertPrefix+24↓p
                                        ; DATA XREF: ...
                movzx   edx, word ptr [rcx]
                xor     r11d, r11d
                dec     edx
                cmp     cs:NlsMbCodePageTag, r11b
                lea     r8d, [r11+1]
                jz      short loc_14091348E
                mov     r9d, r11d
                test    edx, edx
                jz      short loc_1409134B0
                mov     r10, [rcx+8]

loc_140913454:                          ; CODE XREF: sub_140913434+56↓j
                mov     eax, r9d
                movzx   ecx, byte ptr [rax+r10]
                lea     rax, unk_140D2FA20
                cmp     [rax+rcx*2], r11w
                jz      short loc_140913471
                mov     eax, 2
                jmp     short loc_140913484
; ---------------------------------------------------------------------------

loc_140913471:                          ; CODE XREF: sub_140913434+34↑j
                lea     eax, [r8+1]
                cmp     cl, 5Ch ; '\'
                cmovnz  eax, r8d
                mov     r8d, eax
                mov     eax, 1

loc_140913484:                          ; CODE XREF: sub_140913434+3B↑j
                add     r9d, eax
                cmp     r9d, edx
                jb      short loc_140913454
                jmp     short loc_1409134B0
; ---------------------------------------------------------------------------

loc_14091348E:                          ; CODE XREF: sub_140913434+13↑j
                test    edx, edx
                jz      short loc_1409134B0
                mov     rax, [rcx+8]
                mov     r9d, edx

loc_140913499:                          ; CODE XREF: sub_140913434+7A↓j
                cmp     byte ptr [rax], 5Ch ; '\'
                lea     edx, [r8+1]
                cmovnz  edx, r8d
                inc     rax
                mov     r8d, edx
                sub     r9, 1
                jnz     short loc_140913499

loc_1409134B0:                          ; CODE XREF: sub_140913434+1A↑j
                                        ; sub_140913434+58↑j ...
                mov     eax, r8d
                retn
sub_140913434   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1409134B5:                         ; DATA XREF: .pdata:0000000140121EB4↑o
                align 20h
; Exported entry 1694. PfxFindPrefix

; =============== S U B R O U T I N E =======================================


