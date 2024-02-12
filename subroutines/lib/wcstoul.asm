wcstoul         proc near               ; CODE XREF: sub_14038167C+25↑p
                                        ; sub_140767F48+43↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                and     [rsp+38h+var_10], 0
                mov     r9d, r8d
                mov     r8, rdx
                mov     [rsp+38h+var_18], 1
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D3EBC
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
wcstoul         endp

byte_1403D416C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0AD8↑o

; =============== S U B R O U T I N E =======================================


sub_1403D4174   proc near               ; CODE XREF: wctomb+26↓p
                                        ; sub_1403D4274+A↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_8           = dword ptr  10h
arg_18          = word ptr  20h

                mov     [rsp+arg_18], r9w
                push    rbx
                sub     rsp, 30h
                mov     rax, r8
                mov     r10, rdx
                mov     rbx, rcx
                test    rdx, rdx
                jnz     short loc_1403D419F
                test    rax, rax
                jz      short loc_1403D419F
                test    rcx, rcx
                jz      loc_1403D421C
                and     [rcx], edx
                jmp     short loc_1403D421C
; ---------------------------------------------------------------------------

loc_1403D419F:                          ; CODE XREF: sub_1403D4174+17↑j
                                        ; sub_1403D4174+1C↑j
                test    rbx, rbx
                jz      short loc_1403D41A7
                or      dword ptr [rcx], 0FFFFFFFFh

loc_1403D41A7:                          ; CODE XREF: sub_1403D4174+2E↑j
                cmp     rax, 7FFFFFFFh
                jbe     short loc_1403D41CB
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h
                jmp     short loc_1403D421E
; ---------------------------------------------------------------------------

loc_1403D41CB:                          ; CODE XREF: sub_1403D4174+39↑j
                test    r10, r10
                jnz     short loc_1403D41DF
                test    rbx, rbx
                jz      short loc_1403D421C
                mov     eax, cs:dword_140C0F1A0
                mov     [rcx], eax
                jmp     short loc_1403D421C
; ---------------------------------------------------------------------------

loc_1403D41DF:                          ; CODE XREF: sub_1403D4174+5A↑j
                and     [rsp+38h+arg_8], 0
                lea     r9, [rsp+38h+arg_18]
                lea     r8, [rsp+38h+arg_8]
                mov     dword ptr [rsp+38h+var_18], 2
                mov     edx, eax
                mov     rcx, r10
                call    RtlUnicodeToMultiByteN
                test    eax, eax
                jns     short loc_1403D4211
                mov     eax, 2Ah ; '*'
                mov     cs:dword_140C130C8, eax
                jmp     short loc_1403D421E
; ---------------------------------------------------------------------------

loc_1403D4211:                          ; CODE XREF: sub_1403D4174+8E↑j
                test    rbx, rbx
                jz      short loc_1403D421C
                mov     eax, [rsp+38h+arg_8]
                mov     [rbx], eax

loc_1403D421C:                          ; CODE XREF: sub_1403D4174+21↑j
                                        ; sub_1403D4174+29↑j ...
                xor     eax, eax

loc_1403D421E:                          ; CODE XREF: sub_1403D4174+55↑j
                                        ; sub_1403D4174+9B↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D4174   endp

algn_1403D4225:                         ; DATA XREF: .pdata:00000001400E0AE4↑o
                align 10h
; Exported entry 3088. wctomb
; [0000003B BYTES: COLLAPSED FUNCTION wctomb. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D426B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0AF0↑o

; =============== S U B R O U T I N E =======================================


sub_1403D4274   proc near               ; CODE XREF: sub_1403D500C+299↓p
                                        ; sub_1403D500C+587↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                call    sub_1403D4174
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D4274   endp

algn_1403D4289:                         ; DATA XREF: .pdata:00000001400E0AFC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403D4290   proc near               ; CODE XREF: sub_1403A7DB0+130↑p
                                        ; sub_1403A7DB0+22F↑p ...
                movzx   eax, word ptr [rcx]
                mov     r9, rdx
                test    ax, ax
                jz      short loc_1403D42CA
                movzx   r10d, word ptr [rdx]

loc_1403D429F:                          ; CODE XREF: sub_1403D4290+38↓j
                mov     r8, r9
                test    r10w, r10w
                jz      short loc_1403D42BE
                movzx   edx, r10w

loc_1403D42AC:                          ; CODE XREF: sub_1403D4290+2C↓j
                cmp     dx, ax
                jz      short loc_1403D42CE
                add     r8, 2
                movzx   edx, word ptr [r8]
                test    dx, dx
                jnz     short loc_1403D42AC

loc_1403D42BE:                          ; CODE XREF: sub_1403D4290+16↑j
                add     rcx, 2
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jnz     short loc_1403D429F

loc_1403D42CA:                          ; CODE XREF: sub_1403D4290+9↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403D42CE:                          ; CODE XREF: sub_1403D4290+1F↑j
                mov     rax, rcx
                retn
sub_1403D4290   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D42D3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B08↑o
; [0000002A BYTES: COLLAPSED FUNCTION _wcstoi64. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D4306  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B14↑o

; =============== S U B R O U T I N E =======================================


sub_1403D430C   proc near               ; CODE XREF: _wcstoi64+1F↑p
                                        ; sub_1407B77E0+138↓p ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14d, r9d
                mov     r15, r8
                mov     r12, rdx
                test    r8, r8
                jz      short loc_1403D4336
                mov     [r8], rdx

loc_1403D4336:                          ; CODE XREF: sub_1403D430C+25↑j
                test    r12, r12
                jz      loc_1403D4547
                test    r14d, r14d
                jz      short loc_1403D4351
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D4547

loc_1403D4351:                          ; CODE XREF: sub_1403D430C+36↑j
                movzx   ebp, word ptr [rdx]
                lea     rbx, [rdx+2]
                xor     esi, esi
                movzx   ecx, bp
                lea     edi, [rsi+8]
                jmp     short loc_1403D4371
; ---------------------------------------------------------------------------

loc_1403D4362:                          ; CODE XREF: sub_1403D430C+60↓j
                                        ; sub_1403D430C+71↓j
                movzx   ecx, word ptr [rbx]
                add     rbx, 2
                cmp     cx, bp
                jz      short loc_1403D4362
                movzx   ebp, cx

loc_1403D4371:                          ; CODE XREF: sub_1403D430C+54↑j
                xor     r8d, r8d
                mov     edx, edi
                call    _iswctype_l
                test    eax, eax
                jnz     short loc_1403D4362
                mov     edi, [rsp+68h+arg_20]
                cmp     bp, 2Dh ; '-'
                jnz     short loc_1403D4391
                or      edi, 2
                jmp     short loc_1403D4397
; ---------------------------------------------------------------------------

loc_1403D4391:                          ; CODE XREF: sub_1403D430C+7E↑j
                cmp     bp, 2Bh ; '+'
                jnz     short loc_1403D439E

loc_1403D4397:                          ; CODE XREF: sub_1403D430C+83↑j
                movzx   ebp, word ptr [rbx]
                add     rbx, 2

loc_1403D439E:                          ; CODE XREF: sub_1403D430C+89↑j
                test    r14d, r14d
                jz      short loc_1403D43BD
                lea     eax, [r14-2]
                cmp     eax, 22h ; '"'
                jbe     short loc_1403D43BD
                test    r15, r15
                jz      loc_1403D455C
                mov     [r15], r12
                jmp     loc_1403D455C
; ---------------------------------------------------------------------------

loc_1403D43BD:                          ; CODE XREF: sub_1403D430C+95↑j
                                        ; sub_1403D430C+9E↑j
                mov     r13d, 0FFDFh
                test    r14d, r14d
                jnz     short loc_1403D43F7
                movzx   ecx, bp
                call    sub_1403D5E04
                test    eax, eax
                jz      short loc_1403D43DC
                mov     r14d, 0Ah
                jmp     short loc_1403D441E
; ---------------------------------------------------------------------------

loc_1403D43DC:                          ; CODE XREF: sub_1403D430C+C6↑j
                movzx   eax, word ptr [rbx]
                sub     ax, 58h ; 'X'
                test    r13w, ax
                jz      short loc_1403D43F1
                mov     r14d, 8
                jmp     short loc_1403D441E
; ---------------------------------------------------------------------------

loc_1403D43F1:                          ; CODE XREF: sub_1403D430C+DB↑j
                mov     r14d, 10h

loc_1403D43F7:                          ; CODE XREF: sub_1403D430C+BA↑j
                cmp     r14d, 10h
                jnz     short loc_1403D441E
                movzx   ecx, bp
                call    sub_1403D5E04
                test    eax, eax
                jnz     short loc_1403D441E
                movzx   eax, word ptr [rbx]
                sub     ax, 58h ; 'X'
                test    r13w, ax
                jnz     short loc_1403D441E
                movzx   ebp, word ptr [rbx+2]
                add     rbx, 4

loc_1403D441E:                          ; CODE XREF: sub_1403D430C+CE↑j
                                        ; sub_1403D430C+E3↑j ...
                movsxd  rcx, r14d
                xor     edx, edx
                or      rax, 0FFFFFFFFFFFFFFFFh
                movsxd  r12, r14d
                div     rcx
                mov     [rsp+68h+arg_10], rdx
                mov     r13, rax

loc_1403D4438:                          ; CODE XREF: sub_1403D430C+1B1↓j
                movzx   ecx, bp
                call    sub_1403D5E04
                mov     ecx, eax
                cmp     eax, 0FFFFFFFFh
                jnz     short loc_1403D446D
                lea     eax, [rbp-41h]
                cmp     ax, 19h
                jbe     short loc_1403D4459
                lea     eax, [rbp-61h]
                cmp     ax, 19h
                ja      short loc_1403D4490

loc_1403D4459:                          ; CODE XREF: sub_1403D430C+142↑j
                movzx   eax, bp
                sub     bp, 61h ; 'a'
                cmp     bp, 19h
                lea     ecx, [rax-20h]
                cmova   ecx, eax
                sub     ecx, 37h ; '7'

loc_1403D446D:                          ; CODE XREF: sub_1403D430C+139↑j
                cmp     ecx, r14d
                jnb     short loc_1403D4490
                or      edi, 8
                cmp     rsi, r13
                jb      short loc_1403D44AD
                jnz     short loc_1403D4488
                mov     edx, ecx
                cmp     rdx, [rsp+68h+arg_10]
                jbe     short loc_1403D44AF

loc_1403D4488:                          ; CODE XREF: sub_1403D430C+16E↑j
                or      edi, 4
                test    r15, r15
                jnz     short loc_1403D44B6

loc_1403D4490:                          ; CODE XREF: sub_1403D430C+14B↑j
                                        ; sub_1403D430C+164↑j
                mov     r12, [rsp+68h+arg_8]
                sub     rbx, 2
                test    dil, 8
                jnz     short loc_1403D44C2
                test    r15, r15
                cmovnz  rbx, r12
                xor     esi, esi
                jmp     loc_1403D452F
; ---------------------------------------------------------------------------

loc_1403D44AD:                          ; CODE XREF: sub_1403D430C+16C↑j
                mov     edx, ecx

loc_1403D44AF:                          ; CODE XREF: sub_1403D430C+17A↑j
                imul    rsi, r12
                add     rsi, rdx

loc_1403D44B6:                          ; CODE XREF: sub_1403D430C+182↑j
                movzx   ebp, word ptr [rbx]
                add     rbx, 2
                jmp     loc_1403D4438
; ---------------------------------------------------------------------------

loc_1403D44C2:                          ; CODE XREF: sub_1403D430C+191↑j
                mov     rcx, 7FFFFFFFFFFFFFFFh
                test    dil, 4
                jnz     short loc_1403D44F4
                test    dil, 1
                jnz     short loc_1403D452F
                test    dil, 2
                jz      short loc_1403D44EF
                mov     rax, 8000000000000000h
                cmp     rsi, rax
                ja      short loc_1403D44F4
                jmp     short loc_1403D452F
; ---------------------------------------------------------------------------

loc_1403D44EF:                          ; CODE XREF: sub_1403D430C+1D0↑j
                cmp     rsi, rcx
                jbe     short loc_1403D452F

loc_1403D44F4:                          ; CODE XREF: sub_1403D430C+1C4↑j
                                        ; sub_1403D430C+1DF↑j
                mov     rax, [rsp+68h+arg_28]
                test    rax, rax
                jnz     short loc_1403D450D
                mov     cs:dword_140C130C8, 22h ; '"'
                jmp     short loc_1403D4513
; ---------------------------------------------------------------------------

loc_1403D450D:                          ; CODE XREF: sub_1403D430C+1F3↑j
                mov     dword ptr [rax], 22h ; '"'

loc_1403D4513:                          ; CODE XREF: sub_1403D430C+1FF↑j
                test    dil, 1
                jz      short loc_1403D451F
                or      rsi, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1403D452F
; ---------------------------------------------------------------------------

loc_1403D451F:                          ; CODE XREF: sub_1403D430C+20B↑j
                mov     al, dil
                and     al, 2
                neg     al
                sbb     rsi, rsi
                neg     rsi
                add     rsi, rcx

loc_1403D452F:                          ; CODE XREF: sub_1403D430C+19C↑j
                                        ; sub_1403D430C+1CA↑j ...
                test    r15, r15
                jz      short loc_1403D4537
                mov     [r15], rbx

loc_1403D4537:                          ; CODE XREF: sub_1403D430C+226↑j
                mov     rax, rsi
                neg     rax
                and     dil, 2
                cmovz   rax, rsi
                jmp     short loc_1403D455E
; ---------------------------------------------------------------------------

loc_1403D4547:                          ; CODE XREF: sub_1403D430C+2D↑j
                                        ; sub_1403D430C+3F↑j
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access

loc_1403D455C:                          ; CODE XREF: sub_1403D430C+A3↑j
                                        ; sub_1403D430C+AC↑j
                xor     eax, eax

loc_1403D455E:                          ; CODE XREF: sub_1403D430C+239↑j
                mov     rbx, [rsp+68h+arg_0]
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
sub_1403D430C   endp

byte_1403D4574  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B20↑o
; [00000028 BYTES: COLLAPSED FUNCTION _iswctype_l. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1403D45A5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B2C↑o

; =============== S U B R O U T I N E =======================================


sub_1403D45AC   proc near               ; CODE XREF: RtlIpv6StringToAddressW+82↑p
                                        ; RtlIpv6StringToAddressW+9A↑p ...
                mov     eax, 100h
                cmp     cx, ax
                jnb     short loc_1403D45CB
                mov     rax, cs:off_140C00008
                movzx   ecx, cx
                movzx   eax, word ptr [rax+rcx*2]
                movzx   ecx, dx
                and     eax, ecx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D45CB:                          ; CODE XREF: sub_1403D45AC+8↑j
                xor     eax, eax
                retn
sub_1403D45AC   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D45CF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B38↑o
; [00000008 BYTES: COLLAPSED FUNCTION _flsbuf. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D45E1:                         ; DATA XREF: .pdata:00000001400E0B44↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3C0h

sub_1403D45E8   proc near               ; CODE XREF: sub_1403D0CD0+77↑p
                                        ; _snwprintf+76↑p ...

var_4A0         = qword ptr -4A0h
var_490         = dword ptr -490h
var_48C         = dword ptr -48Ch
var_488         = dword ptr -488h
var_484         = dword ptr -484h
var_480         = word ptr -480h
var_47C         = dword ptr -47Ch
var_478         = dword ptr -478h
var_474         = byte ptr -474h
var_473         = byte ptr -473h
var_470         = word ptr -470h
var_46E         = word ptr -46Eh
var_46C         = dword ptr -46Ch
var_468         = qword ptr -468h
var_460         = qword ptr -460h
var_458         = dword ptr -458h
var_450         = qword ptr -450h
var_440         = word ptr -440h
var_241         = byte ptr -241h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-390h]
                sub     rsp, 490h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3C0h+var_40], rax
                xor     eax, eax
                mov     [rsp+4C0h+var_460], rcx
                mov     r15, rdx
                mov     [rsp+4C0h+var_458], eax
                mov     r14, rcx
                mov     [rsp+4C0h+var_46C], eax
                xor     edx, edx
                mov     [rsp+4C0h+var_484], eax
                lea     rcx, [rbp+3C0h+var_440]
                mov     [rsp+4C0h+var_488], eax
                mov     r8d, 400h
                mov     [rsp+4C0h+var_490], eax
                mov     edi, eax
                mov     [rsp+4C0h+var_468], r9
                mov     r12d, eax
                mov     ebx, eax
                mov     rsi, r9
                call    memset
                xor     r10d, r10d
                mov     [rsp+4C0h+var_480], r10w
                mov     [rsp+4C0h+var_47C], r10d
                test    r14, r14
                jz      loc_1403D4E8A
                test    r15, r15
                jz      loc_1403D4E8A
                movzx   r9d, word ptr [r15]
                mov     r14d, r10d
                mov     [rsp+4C0h+var_48C], r10d
                mov     r13d, r10d
                mov     r8d, r10d
                test    r9w, r9w
                jz      loc_1403D4E85
                lea     r11d, [rbx+20h]

loc_1403D4699:                          ; CODE XREF: sub_1403D45E8+897↓j
                add     r15, 2
                mov     [rsp+4C0h+var_450], r15
                test    r14d, r14d
                js      loc_1403D4E85
                movzx   eax, r9w
                sub     ax, r11w
                cmp     ax, 5Ah ; 'Z'
                ja      short loc_1403D46CE
                movzx   eax, r9w
                lea     rcx, qword_14000E9A0
                movsx   ecx, byte ptr [rax+rcx-20h]
                and     ecx, 0Fh
                jmp     short loc_1403D46D1
; ---------------------------------------------------------------------------

loc_1403D46CE:                          ; CODE XREF: sub_1403D45E8+CF↑j
                mov     ecx, r10d

loc_1403D46D1:                          ; CODE XREF: sub_1403D45E8+E4↑j
                lea     eax, [r8+rcx*8]
                movzx   edx, r9w
                movsxd  rcx, eax
                lea     rax, qword_14000E9A0
                movsx   r8d, byte ptr [rcx+rax]
                sar     r8d, 4
                mov     [rsp+4C0h+var_478], r8d
                mov     ecx, r8d
                test    r8d, r8d
                jz      loc_1403D4D5C
                sub     ecx, 1
                jz      loc_1403D4E40
                sub     ecx, 1
                jz      loc_1403D4E01
                sub     ecx, 1
                jz      loc_1403D4DC7
                sub     ecx, 1
                jz      loc_1403D4DBA
                sub     ecx, 1
                jz      loc_1403D4D7C
                sub     ecx, 1
                jz      loc_1403D4C80
                cmp     ecx, 1
                jnz     loc_1403D4E72
                cmp     edx, 69h ; 'i'
                ja      loc_1403D48FB
                jz      short loc_1403D4778
                sub     edx, 43h ; 'C'
                jz      loc_1403D488C
                sub     edx, 10h
                jz      loc_1403D4824
                sub     edx, 5
                jz      loc_1403D4975
                sub     edx, 2
                jz      short loc_1403D47A8
                sub     edx, 9
                jz      loc_1403D4897
                cmp     edx, ecx
                jnz     loc_1403D4B06

loc_1403D4778:                          ; CODE XREF: sub_1403D45E8+15D↑j
                or      edi, 40h

loc_1403D477B:                          ; CODE XREF: sub_1403D45E8+336↓j
                mov     r10d, 0Ah

loc_1403D4781:                          ; CODE XREF: sub_1403D45E8+3BC↓j
                                        ; sub_1403D45E8+3CC↓j
                mov     edx, 200h

loc_1403D4786:                          ; CODE XREF: sub_1403D45E8+3D9↓j
                add     rsi, 8
                mov     [rsp+4C0h+var_468], rsi
                bt      edi, 0Fh
                jb      short loc_1403D479F
                bt      edi, 0Ch
                jnb     loc_1403D49C6

loc_1403D479F:                          ; CODE XREF: sub_1403D45E8+1AB↑j
                mov     rax, [rsi-8]
                jmp     loc_1403D49F3
; ---------------------------------------------------------------------------

loc_1403D47A8:                          ; CODE XREF: sub_1403D45E8+17D↑j
                mov     rcx, [rsi]
                add     rsi, 8
                mov     [rsp+4C0h+var_468], rsi
                test    rcx, rcx
                jz      short loc_1403D4808
                mov     rbx, [rcx+8]
                test    rbx, rbx
                jz      short loc_1403D4808
                movzx   eax, word ptr [rcx]
                cmp     [rcx+2], ax
                jb      loc_1403D4E8A
                mov     r13d, eax
                bt      edi, 0Bh
                jnb     short loc_1403D47FE
                not     eax
                test    al, 1
                jz      loc_1403D4E8A
                mov     eax, ebx
                not     eax
                test    al, 1
                jz      loc_1403D4E8A
                shr     r13d, 1
                mov     [rsp+4C0h+var_47C], 1
                jmp     loc_1403D4B06
; ---------------------------------------------------------------------------

loc_1403D47FE:                          ; CODE XREF: sub_1403D45E8+1EE↑j
                mov     [rsp+4C0h+var_47C], r10d
                jmp     loc_1403D4B06
; ---------------------------------------------------------------------------

loc_1403D4808:                          ; CODE XREF: sub_1403D45E8+1CF↑j
                                        ; sub_1403D45E8+1D8↑j
                lea     rdx, aNull_0    ; "(null)"
                or      r13, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rdx

loc_1403D4816:                          ; CODE XREF: sub_1403D45E8+235↓j
                inc     r13
                cmp     [rdx+r13], r10b
                jnz     short loc_1403D4816
                jmp     loc_1403D4B06
; ---------------------------------------------------------------------------

loc_1403D4824:                          ; CODE XREF: sub_1403D45E8+16B↑j
                test    edi, 830h
                jnz     short loc_1403D482F
                or      edi, r11d

loc_1403D482F:                          ; CODE XREF: sub_1403D45E8+242↑j
                                        ; sub_1403D45E8+32D↓j
                mov     rbx, [rsi]
                cmp     r12d, 0FFFFFFFFh
                mov     ecx, r12d
                mov     eax, 7FFFFFFFh
                cmovz   ecx, eax
                add     rsi, 8
                mov     [rsp+4C0h+var_468], rsi
                test    r11b, dil
                jz      loc_1403D4932
                mov     rax, rbx
                test    rbx, rbx
                jnz     short loc_1403D4868
                lea     rdx, aNull_0    ; "(null)"
                mov     rbx, rdx
                mov     rax, rdx

loc_1403D4868:                          ; CODE XREF: sub_1403D45E8+271↑j
                mov     r13d, r10d
                test    ecx, ecx
                jle     loc_1403D4B06

loc_1403D4873:                          ; CODE XREF: sub_1403D45E8+29D↓j
                cmp     [rax], r10b
                jz      loc_1403D4B06
                inc     rax
                inc     r13d
                cmp     r13d, ecx
                jl      short loc_1403D4873
                jmp     loc_1403D4B06
; ---------------------------------------------------------------------------

loc_1403D488C:                          ; CODE XREF: sub_1403D45E8+162↑j
                test    edi, 830h
                jnz     short loc_1403D4897
                or      edi, r11d

loc_1403D4897:                          ; CODE XREF: sub_1403D45E8+182↑j
                                        ; sub_1403D45E8+2AA↑j
                movzx   eax, word ptr [rsi]
                add     rsi, 8
                mov     [rsp+4C0h+var_480], ax
                mov     [rsp+4C0h+var_47C], 1
                mov     [rsp+4C0h+var_468], rsi
                test    r11b, dil
                jz      short loc_1403D48E8
                movsxd  r8, cs:dword_140C0F1A0
                lea     rdx, [rsp+4C0h+var_474]
                lea     rcx, [rbp+3C0h+var_440]
                mov     [rsp+4C0h+var_474], al
                mov     [rsp+4C0h+var_473], r10b
                call    mbtowc
                xor     r10d, r10d
                lea     r11d, [r10+20h]
                test    eax, eax
                jns     short loc_1403D48EC
                mov     [rsp+4C0h+var_490], 1
                jmp     short loc_1403D48EC
; ---------------------------------------------------------------------------

loc_1403D48E8:                          ; CODE XREF: sub_1403D45E8+2CB↑j
                mov     [rbp+3C0h+var_440], ax

loc_1403D48EC:                          ; CODE XREF: sub_1403D45E8+2F4↑j
                                        ; sub_1403D45E8+2FE↑j
                lea     rbx, [rbp+3C0h+var_440]
                mov     r13d, 1
                jmp     loc_1403D4B06
; ---------------------------------------------------------------------------

loc_1403D48FB:                          ; CODE XREF: sub_1403D45E8+157↑j
                sub     edx, 6Eh ; 'n'
                jz      loc_1403D4AC3
                sub     edx, 1
                jz      loc_1403D49A9
                sub     edx, 1
                jz      short loc_1403D496B
                sub     edx, 3
                jz      loc_1403D482F
                sub     edx, 2
                jz      loc_1403D477B
                cmp     edx, 3
                jnz     loc_1403D4B06
                lea     eax, [rdx+24h]
                jmp     short loc_1403D497A
; ---------------------------------------------------------------------------

loc_1403D4932:                          ; CODE XREF: sub_1403D45E8+265↑j
                test    rbx, rbx
                mov     [rsp+4C0h+var_47C], 1
                lea     rax, aNull_1    ; "(null)"
                cmovnz  rax, rbx
                mov     rbx, rax
                jmp     short loc_1403D4959
; ---------------------------------------------------------------------------

loc_1403D494D:                          ; CODE XREF: sub_1403D45E8+373↓j
                dec     ecx
                cmp     [rax], r10w
                jz      short loc_1403D495D
                add     rax, 2

loc_1403D4959:                          ; CODE XREF: sub_1403D45E8+363↑j
                test    ecx, ecx
                jnz     short loc_1403D494D

loc_1403D495D:                          ; CODE XREF: sub_1403D45E8+36B↑j
                sub     rax, rbx
                sar     rax, 1
                mov     r13d, eax
                jmp     loc_1403D4B06
; ---------------------------------------------------------------------------

loc_1403D496B:                          ; CODE XREF: sub_1403D45E8+328↑j
                mov     r12d, 10h
                bts     edi, 0Fh

loc_1403D4975:                          ; CODE XREF: sub_1403D45E8+174↑j
                mov     eax, 7

loc_1403D497A:                          ; CODE XREF: sub_1403D45E8+348↑j
                mov     [rsp+4C0h+var_458], eax
                test    dil, dil
                jns     short loc_1403D499E
                mov     ecx, 30h ; '0'
                mov     [rsp+4C0h+var_488], 2
                add     ax, 51h ; 'Q'
                mov     [rsp+4C0h+var_470], cx
                mov     [rsp+4C0h+var_46E], ax

loc_1403D499E:                          ; CODE XREF: sub_1403D45E8+399↑j
                mov     r10d, 10h
                jmp     loc_1403D4781
; ---------------------------------------------------------------------------

loc_1403D49A9:                          ; CODE XREF: sub_1403D45E8+31F↑j
                mov     eax, 8
                mov     r10d, eax
                test    dil, dil
                jns     loc_1403D4781
                mov     edx, 200h
                or      edi, edx
                jmp     loc_1403D4786
; ---------------------------------------------------------------------------

loc_1403D49C6:                          ; CODE XREF: sub_1403D45E8+1B1↑j
                mov     eax, edi
                mov     ecx, 20h ; ' '
                and     eax, 40h
                test    cl, dil
                jz      short loc_1403D49E6
                test    eax, eax
                jz      short loc_1403D49E0
                movsx   rax, word ptr [rsi-8]
                jmp     short loc_1403D49F3
; ---------------------------------------------------------------------------

loc_1403D49E0:                          ; CODE XREF: sub_1403D45E8+3EF↑j
                movzx   eax, word ptr [rsi-8]
                jmp     short loc_1403D49F3
; ---------------------------------------------------------------------------

loc_1403D49E6:                          ; CODE XREF: sub_1403D45E8+3EB↑j
                test    eax, eax
                jz      short loc_1403D49F0
                movsxd  rax, dword ptr [rsi-8]
                jmp     short loc_1403D49F3
; ---------------------------------------------------------------------------

loc_1403D49F0:                          ; CODE XREF: sub_1403D45E8+400↑j
                mov     eax, [rsi-8]

loc_1403D49F3:                          ; CODE XREF: sub_1403D45E8+1BB↑j
                                        ; sub_1403D45E8+3F6↑j ...
                test    dil, 40h
                jz      short loc_1403D4A05
                test    rax, rax
                jns     short loc_1403D4A05
                neg     rax
                bts     edi, 8

loc_1403D4A05:                          ; CODE XREF: sub_1403D45E8+40F↑j
                                        ; sub_1403D45E8+414↑j
                test    edi, 9000h
                mov     r8d, eax
                cmovnz  r8, rax
                test    r12d, r12d
                jns     short loc_1403D4A1F
                mov     r12d, 1
                jmp     short loc_1403D4A29
; ---------------------------------------------------------------------------

loc_1403D4A1F:                          ; CODE XREF: sub_1403D45E8+42D↑j
                and     edi, 0FFFFFFF7h
                cmp     r12d, edx
                cmovg   r12d, edx

loc_1403D4A29:                          ; CODE XREF: sub_1403D45E8+435↑j
                mov     r11d, [rsp+4C0h+var_458]
                lea     rbx, [rbp+3C0h+var_241]
                mov     rax, r8
                neg     rax
                sbb     ecx, ecx
                and     ecx, [rsp+4C0h+var_488]
                mov     [rsp+4C0h+var_488], ecx
                mov     r9d, ecx

loc_1403D4A48:                          ; CODE XREF: sub_1403D45E8+48D↓j
                mov     ecx, r12d
                dec     r12d
                test    ecx, ecx
                jg      short loc_1403D4A57
                test    r8, r8
                jz      short loc_1403D4A77

loc_1403D4A57:                          ; CODE XREF: sub_1403D45E8+468↑j
                xor     edx, edx
                mov     rax, r8
                div     r10
                mov     r8, rax
                lea     eax, [rdx+30h]
                cmp     eax, 39h ; '9'
                jle     short loc_1403D4A70
                lea     eax, [r11+30h]
                add     eax, edx

loc_1403D4A70:                          ; CODE XREF: sub_1403D45E8+480↑j
                mov     [rbx], al
                dec     rbx
                jmp     short loc_1403D4A48
; ---------------------------------------------------------------------------

loc_1403D4A77:                          ; CODE XREF: sub_1403D45E8+46D↑j
                lea     r13, [rbp+3C0h+var_241]
                mov     [rsp+4C0h+var_484], r12d
                sub     r13d, ebx
                mov     ecx, 200h
                inc     rbx
                mov     r11, rsi
                test    ecx, edi
                jz      short loc_1403D4AFD
                xor     r10d, r10d
                lea     eax, [r10+30h]
                test    r13d, r13d
                jz      short loc_1403D4AAF
                mov     [rsp+4C0h+var_468], rsi
                mov     [rsp+4C0h+var_488], r9d
                cmp     [rbx], al
                jz      short loc_1403D4B00

loc_1403D4AAF:                          ; CODE XREF: sub_1403D45E8+4B7↑j
                dec     rbx
                mov     [rsp+4C0h+var_468], r11
                inc     r13d
                mov     [rsp+4C0h+var_488], r9d
                mov     [rbx], al
                jmp     short loc_1403D4B00
; ---------------------------------------------------------------------------

loc_1403D4AC3:                          ; CODE XREF: sub_1403D45E8+316↑j
                add     rsi, 8
                mov     [rsp+4C0h+var_468], rsi
                mov     rsi, [rsi-8]
                call    _get_printf_count_output
                xor     r10d, r10d
                test    eax, eax
                jz      loc_1403D4E8A
                lea     r11d, [r10+20h]
                test    r11b, dil
                jz      short loc_1403D4AEF
                mov     [rsi], r14w
                jmp     short loc_1403D4AF2
; ---------------------------------------------------------------------------

loc_1403D4AEF:                          ; CODE XREF: sub_1403D45E8+4FF↑j
                mov     [rsi], r14d

loc_1403D4AF2:                          ; CODE XREF: sub_1403D45E8+505↑j
                mov     eax, 1
                mov     [rsp+4C0h+var_490], eax
                jmp     short loc_1403D4B0A
; ---------------------------------------------------------------------------

loc_1403D4AFD:                          ; CODE XREF: sub_1403D45E8+4AB↑j
                xor     r10d, r10d

loc_1403D4B00:                          ; CODE XREF: sub_1403D45E8+4C5↑j
                                        ; sub_1403D45E8+4D9↑j
                mov     r11d, 20h ; ' '

loc_1403D4B06:                          ; CODE XREF: sub_1403D45E8+18A↑j
                                        ; sub_1403D45E8+211↑j ...
                mov     eax, [rsp+4C0h+var_490]

loc_1403D4B0A:                          ; CODE XREF: sub_1403D45E8+513↑j
                test    eax, eax
                jnz     loc_1403D4E6D
                test    dil, 40h
                jz      short loc_1403D4B50
                bt      edi, 8
                jnb     short loc_1403D4B25
                mov     eax, 2Dh ; '-'
                jmp     short loc_1403D4B30
; ---------------------------------------------------------------------------

loc_1403D4B25:                          ; CODE XREF: sub_1403D45E8+534↑j
                test    dil, 1
                jz      short loc_1403D4B42
                mov     eax, 2Bh ; '+'

loc_1403D4B30:                          ; CODE XREF: sub_1403D45E8+53B↑j
                mov     [rsp+4C0h+var_470], ax

loc_1403D4B35:                          ; CODE XREF: sub_1403D45E8+566↓j
                mov     r14d, 1
                mov     [rsp+4C0h+var_488], r14d
                jmp     short loc_1403D4B55
; ---------------------------------------------------------------------------

loc_1403D4B42:                          ; CODE XREF: sub_1403D45E8+541↑j
                test    dil, 2
                jz      short loc_1403D4B50
                mov     [rsp+4C0h+var_470], r11w
                jmp     short loc_1403D4B35
; ---------------------------------------------------------------------------

loc_1403D4B50:                          ; CODE XREF: sub_1403D45E8+52E↑j
                                        ; sub_1403D45E8+55E↑j
                mov     r14d, [rsp+4C0h+var_488]

loc_1403D4B55:                          ; CODE XREF: sub_1403D45E8+558↑j
                mov     r12d, [rsp+4C0h+var_46C]
                mov     esi, edi
                sub     r12d, r13d
                sub     r12d, r14d
                and     esi, 0Ch
                jnz     short loc_1403D4B7C
                mov     r8, [rsp+4C0h+var_460]
                lea     r9, [rsp+4C0h+var_48C]
                mov     ecx, r11d
                mov     edx, r12d
                call    write_multi_char

loc_1403D4B7C:                          ; CODE XREF: sub_1403D45E8+57D↑j
                mov     r8, [rsp+4C0h+var_460]
                lea     r9, [rsp+4C0h+var_48C]
                mov     edx, r14d
                lea     rcx, [rsp+4C0h+var_470]
                call    write_string
                cmp     esi, 8
                mov     rsi, [rsp+4C0h+var_460]
                jnz     short loc_1403D4BB2
                mov     ecx, 30h ; '0'
                lea     r9, [rsp+4C0h+var_48C]
                mov     r8, rsi
                mov     edx, r12d
                call    write_multi_char

loc_1403D4BB2:                          ; CODE XREF: sub_1403D45E8+5B3↑j
                cmp     [rsp+4C0h+var_47C], 0
                jnz     short loc_1403D4C2B
                test    r13d, r13d
                jle     short loc_1403D4C2B
                mov     r15, rbx
                mov     esi, r13d

loc_1403D4BC4:                          ; CODE XREF: sub_1403D45E8+620↓j
                movsxd  r8, cs:dword_140C0F1A0
                lea     rcx, [rsp+4C0h+var_480]
                mov     rdx, r15
                dec     esi
                call    mbtowc
                movsxd  r14, eax
                cmp     r14d, 2
                jnz     short loc_1403D4BE5
                dec     esi

loc_1403D4BE5:                          ; CODE XREF: sub_1403D45E8+5F9↑j
                xor     r10d, r10d
                test    eax, eax
                jle     short loc_1403D4C16
                mov     rdx, [rsp+4C0h+var_460]
                lea     r8, [rsp+4C0h+var_48C]
                movzx   ecx, [rsp+4C0h+var_480]
                call    write_char
                xor     r10d, r10d
                add     r15, r14
                test    esi, esi
                jg      short loc_1403D4BC4
                mov     r15, [rsp+4C0h+var_450]
                mov     rsi, [rsp+4C0h+var_460]
                jmp     short loc_1403D4C41
; ---------------------------------------------------------------------------

loc_1403D4C16:                          ; CODE XREF: sub_1403D45E8+602↑j
                mov     r15, [rsp+4C0h+var_450]
                or      r14d, 0FFFFFFFFh
                mov     rsi, [rsp+4C0h+var_460]
                mov     [rsp+4C0h+var_48C], r14d
                jmp     short loc_1403D4C46
; ---------------------------------------------------------------------------

loc_1403D4C2B:                          ; CODE XREF: sub_1403D45E8+5CF↑j
                                        ; sub_1403D45E8+5D4↑j
                lea     r9, [rsp+4C0h+var_48C]
                mov     r8, rsi
                mov     edx, r13d
                mov     rcx, rbx
                call    write_string
                xor     r10d, r10d

loc_1403D4C41:                          ; CODE XREF: sub_1403D45E8+62C↑j
                mov     r14d, [rsp+4C0h+var_48C]

loc_1403D4C46:                          ; CODE XREF: sub_1403D45E8+641↑j
                test    r14d, r14d
                js      loc_1403D4E62
                test    dil, 4
                jz      loc_1403D4E62
                mov     ecx, 20h ; ' '
                lea     r9, [rsp+4C0h+var_48C]
                mov     r8, rsi
                mov     edx, r12d
                call    write_multi_char
                mov     r12d, [rsp+4C0h+var_484]

loc_1403D4C73:                          ; CODE XREF: sub_1403D45E8+78F↓j
                mov     r14d, [rsp+4C0h+var_48C]
                xor     r10d, r10d
                jmp     loc_1403D4E67
; ---------------------------------------------------------------------------

loc_1403D4C80:                          ; CODE XREF: sub_1403D45E8+145↑j
                mov     ecx, 49h ; 'I'
                cmp     edx, ecx
                jz      short loc_1403D4CAF
                cmp     edx, 68h ; 'h'
                jz      short loc_1403D4D08
                lea     eax, [rcx+21h]
                cmp     edx, eax
                jz      short loc_1403D4CB4
                lea     eax, [rcx+23h]
                cmp     edx, eax
                jz      short loc_1403D4CE2
                cmp     edx, 74h ; 't'
                jz      short loc_1403D4CAF
                cmp     edx, 77h ; 'w'
                jz      short loc_1403D4CD9
                cmp     edx, 7Ah ; 'z'
                jnz     loc_1403D4E72

loc_1403D4CAF:                          ; CODE XREF: sub_1403D45E8+69F↑j
                                        ; sub_1403D45E8+6B7↑j
                mov     eax, 6Ah ; 'j'

loc_1403D4CB4:                          ; CODE XREF: sub_1403D45E8+6AB↑j
                bts     edi, 0Fh
                cmp     r9w, cx
                jnz     short loc_1403D4D2B
                movzx   eax, word ptr [r15]
                cmp     ax, 36h ; '6'
                jnz     short loc_1403D4D10
                cmp     word ptr [r15+2], 34h ; '4'
                jnz     short loc_1403D4D10
                add     r15, 4
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4CD9:                          ; CODE XREF: sub_1403D45E8+6BC↑j
                bts     edi, 0Bh
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4CE2:                          ; CODE XREF: sub_1403D45E8+6B2↑j
                movzx   ecx, word ptr [r15]
                mov     edx, eax
                cmp     cx, dx
                jnz     short loc_1403D4CF1
                add     r15, 2

loc_1403D4CF1:                          ; CODE XREF: sub_1403D45E8+703↑j
                cmp     cx, dx
                mov     eax, 1000h
                mov     ecx, 10h
                cmovnz  eax, ecx
                or      edi, eax
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4D08:                          ; CODE XREF: sub_1403D45E8+6A4↑j
                or      edi, r11d
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4D10:                          ; CODE XREF: sub_1403D45E8+6DE↑j
                                        ; sub_1403D45E8+6E6↑j
                cmp     ax, 33h ; '3'
                jnz     short loc_1403D4D35
                cmp     word ptr [r15+2], 32h ; '2'
                jnz     short loc_1403D4D35
                add     r15, 4
                btr     edi, 0Fh
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4D2B:                          ; CODE XREF: sub_1403D45E8+6D4↑j
                cmp     r9w, ax
                jz      loc_1403D4E72

loc_1403D4D35:                          ; CODE XREF: sub_1403D45E8+72C↑j
                                        ; sub_1403D45E8+734↑j
                movzx   eax, word ptr [r15]
                sub     ax, 58h ; 'X'
                cmp     ax, r11w
                ja      short loc_1403D4D57
                mov     rcx, 120821001h
                bt      rcx, rax
                jb      loc_1403D4E72

loc_1403D4D57:                          ; CODE XREF: sub_1403D45E8+759↑j
                mov     [rsp+4C0h+var_478], r10d

loc_1403D4D5C:                          ; CODE XREF: sub_1403D45E8+10F↑j
                mov     rdx, [rsp+4C0h+var_460]
                lea     r8, [rsp+4C0h+var_48C]
                movzx   ecx, r9w
                mov     [rsp+4C0h+var_47C], 1
                call    write_char
                jmp     loc_1403D4C73
; ---------------------------------------------------------------------------

loc_1403D4D7C:                          ; CODE XREF: sub_1403D45E8+13C↑j
                cmp     r9w, 2Ah ; '*'
                jnz     short loc_1403D4DA3
                mov     r12d, [rsi]
                add     rsi, 8
                mov     [rsp+4C0h+var_468], rsi
                mov     [rsp+4C0h+var_484], r12d
                test    r12d, r12d
                jns     loc_1403D4E72
                or      r12d, 0FFFFFFFFh
                jmp     short loc_1403D4DB0
; ---------------------------------------------------------------------------

loc_1403D4DA3:                          ; CODE XREF: sub_1403D45E8+799↑j
                lea     r12d, [r12+r12*4]
                lea     r12d, [r12-18h]
                lea     r12d, [rdx+r12*2]

loc_1403D4DB0:                          ; CODE XREF: sub_1403D45E8+7B9↑j
                mov     [rsp+4C0h+var_484], r12d
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4DBA:                          ; CODE XREF: sub_1403D45E8+133↑j
                mov     r12d, r10d
                mov     [rsp+4C0h+var_484], r10d
                jmp     loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4DC7:                          ; CODE XREF: sub_1403D45E8+12A↑j
                cmp     r9w, 2Ah ; '*'
                jnz     short loc_1403D4DEE
                mov     eax, [rsi]
                add     rsi, 8
                mov     ecx, edi
                mov     [rsp+4C0h+var_468], rsi
                or      ecx, 4
                test    eax, eax
                cdq
                cmovns  ecx, edi
                mov     edi, ecx
                mov     ecx, eax
                xor     ecx, edx
                sub     ecx, edx
                jmp     short loc_1403D4DFB
; ---------------------------------------------------------------------------

loc_1403D4DEE:                          ; CODE XREF: sub_1403D45E8+7E4↑j
                mov     ecx, [rsp+4C0h+var_46C]
                lea     ecx, [rcx+rcx*4]
                lea     ecx, [rcx-18h]
                lea     ecx, [rdx+rcx*2]

loc_1403D4DFB:                          ; CODE XREF: sub_1403D45E8+804↑j
                mov     [rsp+4C0h+var_46C], ecx
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E01:                          ; CODE XREF: sub_1403D45E8+121↑j
                cmp     edx, r11d
                jz      short loc_1403D4E3B
                cmp     edx, 23h ; '#'
                jz      short loc_1403D4E35
                mov     eax, 2Bh ; '+'
                cmp     edx, eax
                jz      short loc_1403D4E30
                mov     eax, 2Dh ; '-'
                cmp     edx, eax
                jz      short loc_1403D4E2B
                mov     eax, 30h ; '0'
                cmp     edx, eax
                jnz     short loc_1403D4E72
                or      edi, 8
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E2B:                          ; CODE XREF: sub_1403D45E8+833↑j
                or      edi, 4
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E30:                          ; CODE XREF: sub_1403D45E8+82A↑j
                or      edi, 1
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E35:                          ; CODE XREF: sub_1403D45E8+821↑j
                bts     edi, 7
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E3B:                          ; CODE XREF: sub_1403D45E8+81C↑j
                or      edi, 2
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E40:                          ; CODE XREF: sub_1403D45E8+118↑j
                or      r12d, 0FFFFFFFFh
                mov     [rsp+4C0h+var_490], r10d
                mov     [rsp+4C0h+var_484], r12d
                mov     edi, r10d
                mov     [rsp+4C0h+var_46C], r10d
                mov     [rsp+4C0h+var_488], r10d
                mov     [rsp+4C0h+var_47C], r10d
                jmp     short loc_1403D4E72
; ---------------------------------------------------------------------------

loc_1403D4E62:                          ; CODE XREF: sub_1403D45E8+661↑j
                                        ; sub_1403D45E8+66B↑j
                mov     r12d, [rsp+4C0h+var_484]

loc_1403D4E67:                          ; CODE XREF: sub_1403D45E8+693↑j
                mov     r11d, 20h ; ' '

loc_1403D4E6D:                          ; CODE XREF: sub_1403D45E8+524↑j
                mov     r8d, [rsp+4C0h+var_478]

loc_1403D4E72:                          ; CODE XREF: sub_1403D45E8+14E↑j
                                        ; sub_1403D45E8+6C1↑j ...
                movzx   r9d, word ptr [r15]
                mov     rsi, [rsp+4C0h+var_468]
                test    r9w, r9w
                jnz     loc_1403D4699

loc_1403D4E85:                          ; CODE XREF: sub_1403D45E8+A7↑j
                                        ; sub_1403D45E8+BD↑j
                mov     eax, r14d
                jmp     short loc_1403D4EA1
; ---------------------------------------------------------------------------

loc_1403D4E8A:                          ; CODE XREF: sub_1403D45E8+82↑j
                                        ; sub_1403D45E8+8B↑j ...
                xor     r9d, r9d
                mov     [rsp+4C0h+var_4A0], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D4EA1:                          ; CODE XREF: sub_1403D45E8+8A0↑j
                mov     rcx, [rbp+3C0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+4C0h+arg_10]
                add     rsp, 490h
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
; } // starts at 1403D45E8
sub_1403D45E8   endp

byte_1403D4ECC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B50↑o
; [0000004C BYTES: COLLAPSED FUNCTION write_char. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D4F20  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B5C↑o
; [00000052 BYTES: COLLAPSED FUNCTION write_multi_char. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D4F7A:                         ; DATA XREF: .pdata:00000001400E0B68↑o
                align 20h
; [00000086 BYTES: COLLAPSED FUNCTION write_string. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D5006  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0B74↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1B0h

sub_1403D500C   proc near               ; CODE XREF: sub_1403D0DF0+65↑p
                                        ; _snprintf+64↑p ...

var_290         = qword ptr -290h
var_280         = dword ptr -280h
var_27C         = dword ptr -27Ch
var_278         = byte ptr -278h
var_277         = byte ptr -277h
var_274         = dword ptr -274h
var_270         = dword ptr -270h
var_26C         = dword ptr -26Ch
var_268         = dword ptr -268h
var_264         = dword ptr -264h
var_260         = dword ptr -260h
var_25C         = dword ptr -25Ch
var_258         = qword ptr -258h
var_250         = dword ptr -250h
var_240         = byte ptr -240h
var_41          = byte ptr -41h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-180h]
                sub     rsp, 280h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1B0h+var_38], rax
                xor     eax, eax
                mov     [rsp+2B0h+var_258], rcx
                mov     r12, rdx
                mov     [rsp+2B0h+var_25C], eax
                mov     r15, rcx
                mov     [rsp+2B0h+var_268], eax
                xor     edx, edx
                mov     [rsp+2B0h+var_274], eax
                lea     rcx, [rsp+2B0h+var_240]
                mov     [rsp+2B0h+var_280], eax
                mov     r8d, 200h
                mov     [rsp+2B0h+var_260], eax
                mov     edi, eax
                mov     esi, eax
                mov     r14d, eax
                mov     ebx, eax
                mov     r13, r9
                call    memset
                xor     r10d, r10d
                mov     [rsp+2B0h+var_26C], r10d
                test    r15, r15
                jz      loc_1403D57FF
                test    r12, r12
                jz      loc_1403D57FF
                mov     r9b, [r12]
                mov     r15d, r10d
                mov     [rsp+2B0h+var_27C], r10d
                mov     r8d, r10d
                mov     [rsp+2B0h+var_270], r10d
                test    r9b, r9b
                jz      loc_1403D5719
                lea     rcx, qword_14000E9A0
                lea     r11d, [rbx+10h]

loc_1403D50BD:                          ; CODE XREF: sub_1403D500C+707↓j
                inc     r12
                test    r15d, r15d
                js      loc_1403D5719
                lea     eax, [r9-20h]
                cmp     al, 5Ah ; 'Z'
                ja      short loc_1403D50DF
                movsx   rax, r9b
                movsx   ecx, byte ptr [rax+rcx-20h]
                and     ecx, 0Fh
                jmp     short loc_1403D50E2
; ---------------------------------------------------------------------------

loc_1403D50DF:                          ; CODE XREF: sub_1403D500C+C3↑j
                mov     ecx, r10d

loc_1403D50E2:                          ; CODE XREF: sub_1403D500C+D1↑j
                lea     eax, [r8+rcx*8]
                movsx   edx, r9b
                movsxd  rcx, eax
                lea     rax, qword_14000E9A0
                movsx   r8d, byte ptr [rcx+rax]
                sar     r8d, 4
                mov     [rsp+2B0h+var_264], r8d
                mov     ecx, r8d
                test    r8d, r8d
                jz      loc_1403D56DB
                sub     ecx, 1
                jz      loc_1403D57D9
                sub     ecx, 1
                jz      loc_1403D578E
                sub     ecx, 1
                jz      loc_1403D5755
                sub     ecx, 1
                jz      loc_1403D574B
                sub     ecx, 1
                jz      loc_1403D5721
                sub     ecx, 1
                jz      loc_1403D5626
                cmp     ecx, 1
                jnz     loc_1403D5705
                cmp     edx, 69h ; 'i'
                jg      loc_1403D52D5
                jz      short loc_1403D5189
                sub     edx, 43h ; 'C'
                jz      loc_1403D5278
                sub     edx, r11d
                jz      loc_1403D5228
                sub     edx, 5
                jz      loc_1403D5357
                sub     edx, 2
                jz      short loc_1403D51B4
                sub     edx, 9
                jz      loc_1403D5284
                cmp     edx, ecx
                jnz     loc_1403D54BD

loc_1403D5189:                          ; CODE XREF: sub_1403D500C+14A↑j
                or      edi, 40h

loc_1403D518C:                          ; CODE XREF: sub_1403D500C+2EC↓j
                mov     r10d, 0Ah

loc_1403D5192:                          ; CODE XREF: sub_1403D500C+36D↓j
                                        ; sub_1403D500C+37B↓j
                mov     edx, 200h

loc_1403D5197:                          ; CODE XREF: sub_1403D500C+388↓j
                add     r13, 8
                bt      edi, 0Fh
                jb      short loc_1403D51AB
                bt      edi, 0Ch
                jnb     loc_1403D5399

loc_1403D51AB:                          ; CODE XREF: sub_1403D500C+193↑j
                mov     rax, [r13-8]
                jmp     loc_1403D53C4
; ---------------------------------------------------------------------------

loc_1403D51B4:                          ; CODE XREF: sub_1403D500C+16A↑j
                mov     rdx, [r13+0]
                add     r13, 8
                test    rdx, rdx
                jz      short loc_1403D5208
                mov     rbx, [rdx+8]
                test    rbx, rbx
                jz      short loc_1403D5208
                movzx   eax, word ptr [rdx]
                cmp     [rdx+2], ax
                jb      loc_1403D57FF
                mov     ecx, eax
                bt      edi, 0Bh
                jnb     short loc_1403D5201
                not     eax
                test    al, 1
                jz      loc_1403D57FF
                mov     eax, ebx
                not     eax
                test    al, 1
                jz      loc_1403D57FF
                mov     [rsp+2B0h+var_26C], 1
                shr     ecx, 1
                jmp     short loc_1403D521F
; ---------------------------------------------------------------------------

loc_1403D5201:                          ; CODE XREF: sub_1403D500C+1D1↑j
                mov     [rsp+2B0h+var_26C], r10d
                jmp     short loc_1403D521F
; ---------------------------------------------------------------------------

loc_1403D5208:                          ; CODE XREF: sub_1403D500C+1B3↑j
                                        ; sub_1403D500C+1BC↑j
                lea     rax, aNull_0    ; "(null)"
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     rbx, rax

loc_1403D5216:                          ; CODE XREF: sub_1403D500C+211↓j
                inc     rcx
                cmp     [rax+rcx], r10b
                jnz     short loc_1403D5216

loc_1403D521F:                          ; CODE XREF: sub_1403D500C+1F3↑j
                                        ; sub_1403D500C+1FA↑j
                mov     [rsp+2B0h+var_270], ecx
                jmp     loc_1403D54BD
; ---------------------------------------------------------------------------

loc_1403D5228:                          ; CODE XREF: sub_1403D500C+158↑j
                test    edi, 830h
                jnz     short loc_1403D5234
                bts     edi, 0Bh

loc_1403D5234:                          ; CODE XREF: sub_1403D500C+222↑j
                                        ; sub_1403D500C+2E3↓j
                mov     rbx, [r13+0]
                cmp     esi, 0FFFFFFFFh
                mov     ecx, esi
                mov     eax, 7FFFFFFFh
                cmovz   ecx, eax
                add     r13, 8
                test    edi, 810h
                jz      loc_1403D5324
                mov     rax, rbx
                test    rbx, rbx
                jnz     short loc_1403D526B
                lea     rbx, aNull_1    ; "(null)"
                lea     rax, aNull_1    ; "(null)"

loc_1403D526B:                          ; CODE XREF: sub_1403D500C+24F↑j
                mov     [rsp+2B0h+var_26C], 1
                jmp     loc_1403D5318
; ---------------------------------------------------------------------------

loc_1403D5278:                          ; CODE XREF: sub_1403D500C+14F↑j
                test    edi, 830h
                jnz     short loc_1403D5284
                bts     edi, 0Bh

loc_1403D5284:                          ; CODE XREF: sub_1403D500C+16F↑j
                                        ; sub_1403D500C+272↑j
                add     r13, 8
                test    edi, 810h
                jz      short loc_1403D52BB
                movzx   r9d, word ptr [r13-8]
                lea     rdx, [rsp+2B0h+var_240]
                mov     r8d, 200h
                lea     rcx, [rsp+2B0h+var_270]
                call    sub_1403D4274
                xor     r10d, r10d
                test    eax, eax
                jz      short loc_1403D52CB
                mov     [rsp+2B0h+var_260], 1
                jmp     short loc_1403D52CB
; ---------------------------------------------------------------------------

loc_1403D52BB:                          ; CODE XREF: sub_1403D500C+282↑j
                mov     al, [r13-8]
                mov     [rsp+2B0h+var_240], al
                mov     [rsp+2B0h+var_270], 1

loc_1403D52CB:                          ; CODE XREF: sub_1403D500C+2A3↑j
                                        ; sub_1403D500C+2AD↑j
                lea     rbx, [rsp+2B0h+var_240]
                jmp     loc_1403D54BD
; ---------------------------------------------------------------------------

loc_1403D52D5:                          ; CODE XREF: sub_1403D500C+144↑j
                sub     edx, 6Eh ; 'n'
                jz      loc_1403D5485
                sub     edx, 1
                jz      loc_1403D537E
                sub     edx, 1
                jz      short loc_1403D5350
                sub     edx, 3
                jz      loc_1403D5234
                sub     edx, 2
                jz      loc_1403D518C
                cmp     edx, 3
                jnz     loc_1403D54BD
                lea     eax, [rdx+24h]
                jmp     short loc_1403D535C
; ---------------------------------------------------------------------------

loc_1403D530C:                          ; CODE XREF: sub_1403D500C+30E↓j
                dec     ecx
                cmp     [rax], r10w
                jz      short loc_1403D531C
                add     rax, 2

loc_1403D5318:                          ; CODE XREF: sub_1403D500C+267↑j
                test    ecx, ecx
                jnz     short loc_1403D530C

loc_1403D531C:                          ; CODE XREF: sub_1403D500C+306↑j
                sub     rax, rbx
                sar     rax, 1
                jmp     short loc_1403D5347
; ---------------------------------------------------------------------------

loc_1403D5324:                          ; CODE XREF: sub_1403D500C+243↑j
                test    rbx, rbx
                lea     rax, aNull_0    ; "(null)"
                cmovnz  rax, rbx
                mov     rbx, rax
                jmp     short loc_1403D5341
; ---------------------------------------------------------------------------

loc_1403D5337:                          ; CODE XREF: sub_1403D500C+337↓j
                dec     ecx
                cmp     [rax], r10b
                jz      short loc_1403D5345
                inc     rax

loc_1403D5341:                          ; CODE XREF: sub_1403D500C+329↑j
                test    ecx, ecx
                jnz     short loc_1403D5337

loc_1403D5345:                          ; CODE XREF: sub_1403D500C+330↑j
                sub     eax, ebx

loc_1403D5347:                          ; CODE XREF: sub_1403D500C+316↑j
                mov     [rsp+2B0h+var_270], eax
                jmp     loc_1403D54BD
; ---------------------------------------------------------------------------

loc_1403D5350:                          ; CODE XREF: sub_1403D500C+2DE↑j
                mov     esi, r11d
                bts     edi, 0Fh

loc_1403D5357:                          ; CODE XREF: sub_1403D500C+161↑j
                mov     eax, 7

loc_1403D535C:                          ; CODE XREF: sub_1403D500C+2FE↑j
                mov     [rsp+2B0h+var_25C], eax
                test    dil, dil
                jns     short loc_1403D5376
                add     al, 51h ; 'Q'
                mov     [rsp+2B0h+var_278], 30h ; '0'
                mov     [rsp+2B0h+var_277], al
                mov     r14d, 2

loc_1403D5376:                          ; CODE XREF: sub_1403D500C+357↑j
                mov     r10, r11
                jmp     loc_1403D5192
; ---------------------------------------------------------------------------

loc_1403D537E:                          ; CODE XREF: sub_1403D500C+2D5↑j
                mov     r10d, 8
                test    dil, dil
                jns     loc_1403D5192
                mov     edx, 200h
                or      edi, edx
                jmp     loc_1403D5197
; ---------------------------------------------------------------------------

loc_1403D5399:                          ; CODE XREF: sub_1403D500C+199↑j
                mov     eax, edi
                and     eax, 40h
                test    dil, 20h
                jz      short loc_1403D53B6
                test    eax, eax
                jz      short loc_1403D53AF
                movsx   rax, word ptr [r13-8]
                jmp     short loc_1403D53C4
; ---------------------------------------------------------------------------

loc_1403D53AF:                          ; CODE XREF: sub_1403D500C+39A↑j
                movzx   eax, word ptr [r13-8]
                jmp     short loc_1403D53C4
; ---------------------------------------------------------------------------

loc_1403D53B6:                          ; CODE XREF: sub_1403D500C+396↑j
                test    eax, eax
                jz      short loc_1403D53C0
                movsxd  rax, dword ptr [r13-8]
                jmp     short loc_1403D53C4
; ---------------------------------------------------------------------------

loc_1403D53C0:                          ; CODE XREF: sub_1403D500C+3AC↑j
                mov     eax, [r13-8]

loc_1403D53C4:                          ; CODE XREF: sub_1403D500C+1A3↑j
                                        ; sub_1403D500C+3A1↑j ...
                test    dil, 40h
                jz      short loc_1403D53D6
                test    rax, rax
                jns     short loc_1403D53D6
                neg     rax
                bts     edi, 8

loc_1403D53D6:                          ; CODE XREF: sub_1403D500C+3BC↑j
                                        ; sub_1403D500C+3C1↑j
                test    edi, 9000h
                mov     r8d, eax
                cmovnz  r8, rax
                test    esi, esi
                jns     short loc_1403D53EE
                mov     esi, 1
                jmp     short loc_1403D53F6
; ---------------------------------------------------------------------------

loc_1403D53EE:                          ; CODE XREF: sub_1403D500C+3D9↑j
                and     edi, 0FFFFFFF7h
                cmp     esi, edx
                cmovg   esi, edx

loc_1403D53F6:                          ; CODE XREF: sub_1403D500C+3E0↑j
                mov     rax, r8
                lea     rbx, [rbp+1B0h+var_41]
                neg     rax
                sbb     ecx, ecx
                and     ecx, r14d
                mov     r14d, [rsp+2B0h+var_25C]
                mov     [rsp+2B0h+var_280], ecx
                mov     r9d, ecx

loc_1403D5414:                          ; CODE XREF: sub_1403D500C+433↓j
                mov     ecx, esi
                dec     esi
                test    ecx, ecx
                jg      short loc_1403D5421
                test    r8, r8
                jz      short loc_1403D5441

loc_1403D5421:                          ; CODE XREF: sub_1403D500C+40E↑j
                xor     edx, edx
                mov     rax, r8
                div     r10
                mov     r8, rax
                lea     eax, [rdx+30h]
                cmp     eax, 39h ; '9'
                jle     short loc_1403D543A
                lea     eax, [r14+30h]
                add     eax, edx

loc_1403D543A:                          ; CODE XREF: sub_1403D500C+426↑j
                mov     [rbx], al
                dec     rbx
                jmp     short loc_1403D5414
; ---------------------------------------------------------------------------

loc_1403D5441:                          ; CODE XREF: sub_1403D500C+413↑j
                lea     rax, [rbp+1B0h+var_41]
                mov     [rsp+2B0h+var_274], esi
                sub     eax, ebx
                mov     r14d, r9d
                inc     rbx
                mov     [rsp+2B0h+var_270], eax
                bt      edi, 9
                jnb     short loc_1403D54BA
                xor     r10d, r10d
                test    eax, eax
                jz      short loc_1403D546F
                cmp     byte ptr [rbx], 30h ; '0'
                mov     [rsp+2B0h+var_280], r9d
                jz      short loc_1403D54BD

loc_1403D546F:                          ; CODE XREF: sub_1403D500C+457↑j
                dec     rbx
                mov     [rsp+2B0h+var_280], r9d
                inc     eax
                mov     r14d, r9d
                mov     [rsp+2B0h+var_270], eax
                mov     byte ptr [rbx], 30h ; '0'
                jmp     short loc_1403D54BD
; ---------------------------------------------------------------------------

loc_1403D5485:                          ; CODE XREF: sub_1403D500C+2CC↑j
                mov     rsi, [r13+0]
                add     r13, 8
                call    _get_printf_count_output
                xor     r10d, r10d
                test    eax, eax
                jz      loc_1403D57FF
                test    dil, 20h
                jz      short loc_1403D54A9
                mov     [rsi], r15w
                jmp     short loc_1403D54AC
; ---------------------------------------------------------------------------

loc_1403D54A9:                          ; CODE XREF: sub_1403D500C+495↑j
                mov     [rsi], r15d

loc_1403D54AC:                          ; CODE XREF: sub_1403D500C+49B↑j
                mov     esi, [rsp+2B0h+var_274]
                mov     [rsp+2B0h+var_260], 1
                jmp     short loc_1403D54BD
; ---------------------------------------------------------------------------

loc_1403D54BA:                          ; CODE XREF: sub_1403D500C+450↑j
                xor     r10d, r10d

loc_1403D54BD:                          ; CODE XREF: sub_1403D500C+177↑j
                                        ; sub_1403D500C+217↑j ...
                cmp     [rsp+2B0h+var_260], r10d
                jnz     loc_1403D56FA
                test    dil, 40h
                jz      short loc_1403D5500
                bt      edi, 8
                jnb     short loc_1403D54DB
                mov     [rsp+2B0h+var_278], 2Dh ; '-'
                jmp     short loc_1403D54E6
; ---------------------------------------------------------------------------

loc_1403D54DB:                          ; CODE XREF: sub_1403D500C+4C6↑j
                test    dil, 1
                jz      short loc_1403D54F3
                mov     [rsp+2B0h+var_278], 2Bh ; '+'

loc_1403D54E6:                          ; CODE XREF: sub_1403D500C+4CD↑j
                                        ; sub_1403D500C+4F2↓j
                mov     r15d, 1
                mov     [rsp+2B0h+var_280], r15d
                jmp     short loc_1403D5505
; ---------------------------------------------------------------------------

loc_1403D54F3:                          ; CODE XREF: sub_1403D500C+4D3↑j
                test    dil, 2
                jz      short loc_1403D5500
                mov     [rsp+2B0h+var_278], 20h ; ' '
                jmp     short loc_1403D54E6
; ---------------------------------------------------------------------------

loc_1403D5500:                          ; CODE XREF: sub_1403D500C+4C0↑j
                                        ; sub_1403D500C+4EB↑j
                mov     r15d, [rsp+2B0h+var_280]

loc_1403D5505:                          ; CODE XREF: sub_1403D500C+4E5↑j
                mov     r14d, [rsp+2B0h+var_268]
                mov     esi, edi
                sub     r14d, [rsp+2B0h+var_270]
                sub     r14d, r15d
                and     esi, 0Ch
                jnz     short loc_1403D552D
                mov     r8, [rsp+2B0h+var_258]
                lea     r9, [rsp+2B0h+var_27C]
                mov     edx, r14d
                mov     cl, 20h ; ' '
                call    write_multi_char_0

loc_1403D552D:                          ; CODE XREF: sub_1403D500C+50B↑j
                mov     r8, [rsp+2B0h+var_258]
                lea     r9, [rsp+2B0h+var_27C]
                mov     edx, r15d
                lea     rcx, [rsp+2B0h+var_278]
                call    write_string_0
                mov     r15, [rsp+2B0h+var_258]
                cmp     esi, 8
                jnz     short loc_1403D5560
                lea     r9, [rsp+2B0h+var_27C]
                mov     r8, r15
                mov     edx, r14d
                mov     cl, 30h ; '0'
                call    write_multi_char_0

loc_1403D5560:                          ; CODE XREF: sub_1403D500C+540↑j
                cmp     [rsp+2B0h+var_26C], 0
                mov     esi, [rsp+2B0h+var_270]
                jz      short loc_1403D55D1
                test    esi, esi
                jle     short loc_1403D55D1
                and     [rsp+2B0h+var_250], 0
                mov     r15, rbx

loc_1403D5577:                          ; CODE XREF: sub_1403D500C+5B6↓j
                movzx   r9d, word ptr [r15]
                lea     rdx, [rbp+1B0h+var_40]
                mov     r8d, 6
                lea     rcx, [rsp+2B0h+var_250]
                lea     r15, [r15+2]
                dec     esi
                call    sub_1403D4274
                xor     r10d, r10d
                test    eax, eax
                jnz     short loc_1403D55C6
                mov     edx, [rsp+2B0h+var_250]
                test    edx, edx
                jz      short loc_1403D55C6
                mov     r8, [rsp+2B0h+var_258]
                lea     r9, [rsp+2B0h+var_27C]
                lea     rcx, [rbp+1B0h+var_40]
                call    write_string_0
                xor     r10d, r10d
                test    esi, esi
                jnz     short loc_1403D5577
                jmp     short loc_1403D55E6
; ---------------------------------------------------------------------------

loc_1403D55C6:                          ; CODE XREF: sub_1403D500C+591↑j
                                        ; sub_1403D500C+599↑j
                or      r15d, 0FFFFFFFFh
                mov     [rsp+2B0h+var_27C], r15d
                jmp     short loc_1403D55EB
; ---------------------------------------------------------------------------

loc_1403D55D1:                          ; CODE XREF: sub_1403D500C+55D↑j
                                        ; sub_1403D500C+561↑j
                lea     r9, [rsp+2B0h+var_27C]
                mov     r8, r15
                mov     edx, esi
                mov     rcx, rbx
                call    write_string_0
                xor     r10d, r10d

loc_1403D55E6:                          ; CODE XREF: sub_1403D500C+5B8↑j
                mov     r15d, [rsp+2B0h+var_27C]

loc_1403D55EB:                          ; CODE XREF: sub_1403D500C+5C3↑j
                test    r15d, r15d
                js      short loc_1403D5618
                test    dil, 4
                jz      short loc_1403D5618
                mov     r8, [rsp+2B0h+var_258]
                lea     r9, [rsp+2B0h+var_27C]
                mov     edx, r14d
                mov     cl, 20h ; ' '
                call    write_multi_char_0
                mov     esi, [rsp+2B0h+var_274]
                mov     r14d, [rsp+2B0h+var_280]
                jmp     loc_1403D56F2
; ---------------------------------------------------------------------------

loc_1403D5618:                          ; CODE XREF: sub_1403D500C+5E2↑j
                                        ; sub_1403D500C+5E8↑j
                mov     esi, [rsp+2B0h+var_274]
                mov     r14d, [rsp+2B0h+var_280]
                jmp     loc_1403D56FA
; ---------------------------------------------------------------------------

loc_1403D5626:                          ; CODE XREF: sub_1403D500C+132↑j
                cmp     r9b, 49h ; 'I'
                jz      short loc_1403D5655
                cmp     r9b, 68h ; 'h'
                jz      short loc_1403D569B
                cmp     r9b, 6Ah ; 'j'
                jz      short loc_1403D5655
                mov     dl, 6Ch ; 'l'
                cmp     r9b, dl
                jz      short loc_1403D5681
                cmp     r9b, 74h ; 't'
                jz      short loc_1403D5655
                cmp     r9b, 77h ; 'w'
                jz      short loc_1403D5678
                cmp     r9b, 7Ah ; 'z'
                jnz     loc_1403D5705

loc_1403D5655:                          ; CODE XREF: sub_1403D500C+61E↑j
                                        ; sub_1403D500C+62A↑j ...
                bts     edi, 0Fh
                cmp     r9b, 49h ; 'I'
                jnz     short loc_1403D56B6
                mov     al, [r12]
                cmp     al, 36h ; '6'
                jnz     short loc_1403D56A0
                cmp     byte ptr [r12+1], 34h ; '4'
                jnz     short loc_1403D56A0
                add     r12, 2
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D5678:                          ; CODE XREF: sub_1403D500C+63D↑j
                bts     edi, 0Bh
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D5681:                          ; CODE XREF: sub_1403D500C+631↑j
                mov     cl, [r12]
                cmp     cl, dl
                jnz     short loc_1403D568C
                inc     r12

loc_1403D568C:                          ; CODE XREF: sub_1403D500C+67B↑j
                cmp     cl, dl
                mov     eax, 1000h
                cmovnz  eax, r11d
                or      edi, eax
                jmp     short loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D569B:                          ; CODE XREF: sub_1403D500C+624↑j
                or      edi, 20h
                jmp     short loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D56A0:                          ; CODE XREF: sub_1403D500C+659↑j
                                        ; sub_1403D500C+661↑j
                cmp     al, 33h ; '3'
                jnz     short loc_1403D56BC
                cmp     byte ptr [r12+1], 32h ; '2'
                jnz     short loc_1403D56BC
                add     r12, 2
                btr     edi, 0Fh
                jmp     short loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D56B6:                          ; CODE XREF: sub_1403D500C+651↑j
                cmp     r9b, 6Ah ; 'j'
                jz      short loc_1403D5705

loc_1403D56BC:                          ; CODE XREF: sub_1403D500C+696↑j
                                        ; sub_1403D500C+69E↑j
                mov     al, [r12]
                sub     al, 58h ; 'X'
                cmp     al, 20h ; ' '
                ja      short loc_1403D56D6
                mov     rcx, 120821001h
                bt      rcx, rax
                jb      short loc_1403D5705

loc_1403D56D6:                          ; CODE XREF: sub_1403D500C+6B8↑j
                mov     [rsp+2B0h+var_264], r10d

loc_1403D56DB:                          ; CODE XREF: sub_1403D500C+FC↑j
                mov     rdx, [rsp+2B0h+var_258]
                lea     r8, [rsp+2B0h+var_27C]
                mov     cl, r9b
                mov     [rsp+2B0h+var_26C], r10d
                call    write_char_0

loc_1403D56F2:                          ; CODE XREF: sub_1403D500C+607↑j
                mov     r15d, [rsp+2B0h+var_27C]
                xor     r10d, r10d

loc_1403D56FA:                          ; CODE XREF: sub_1403D500C+4B6↑j
                                        ; sub_1403D500C+615↑j
                mov     r8d, [rsp+2B0h+var_264]
                mov     r11d, 10h

loc_1403D5705:                          ; CODE XREF: sub_1403D500C+13B↑j
                                        ; sub_1403D500C+643↑j ...
                mov     r9b, [r12]
                lea     rcx, qword_14000E9A0
                test    r9b, r9b
                jnz     loc_1403D50BD

loc_1403D5719:                          ; CODE XREF: sub_1403D500C+A0↑j
                                        ; sub_1403D500C+B7↑j
                mov     eax, r15d
                jmp     loc_1403D5816
; ---------------------------------------------------------------------------

loc_1403D5721:                          ; CODE XREF: sub_1403D500C+129↑j
                cmp     r9b, 2Ah ; '*'
                jnz     short loc_1403D573C
                mov     esi, [r13+0]
                add     r13, 8
                mov     [rsp+2B0h+var_274], esi
                test    esi, esi
                jns     short loc_1403D5705
                or      esi, 0FFFFFFFFh
                jmp     short loc_1403D5745
; ---------------------------------------------------------------------------

loc_1403D573C:                          ; CODE XREF: sub_1403D500C+719↑j
                lea     esi, [rsi+rsi*4]
                lea     esi, [rsi-18h]
                lea     esi, [rdx+rsi*2]

loc_1403D5745:                          ; CODE XREF: sub_1403D500C+72E↑j
                mov     [rsp+2B0h+var_274], esi
                jmp     short loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D574B:                          ; CODE XREF: sub_1403D500C+120↑j
                mov     esi, r10d
                mov     [rsp+2B0h+var_274], r10d
                jmp     short loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D5755:                          ; CODE XREF: sub_1403D500C+117↑j
                cmp     r9b, 2Ah ; '*'
                jnz     short loc_1403D5778
                mov     eax, [r13+0]
                add     r13, 8
                mov     ecx, edi
                or      ecx, 4
                test    eax, eax
                cdq
                cmovns  ecx, edi
                mov     edi, ecx
                mov     ecx, eax
                xor     ecx, edx
                sub     ecx, edx
                jmp     short loc_1403D5785
; ---------------------------------------------------------------------------

loc_1403D5778:                          ; CODE XREF: sub_1403D500C+74D↑j
                mov     ecx, [rsp+2B0h+var_268]
                lea     ecx, [rcx+rcx*4]
                lea     ecx, [rcx-18h]
                lea     ecx, [rdx+rcx*2]

loc_1403D5785:                          ; CODE XREF: sub_1403D500C+76A↑j
                mov     [rsp+2B0h+var_268], ecx
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D578E:                          ; CODE XREF: sub_1403D500C+10E↑j
                cmp     r9b, 20h ; ' '
                jz      short loc_1403D57D1
                cmp     r9b, 23h ; '#'
                jz      short loc_1403D57C8
                cmp     r9b, 2Bh ; '+'
                jz      short loc_1403D57C0
                cmp     r9b, 2Dh ; '-'
                jz      short loc_1403D57B8
                cmp     r9b, 30h ; '0'
                jnz     loc_1403D5705
                or      edi, 8
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D57B8:                          ; CODE XREF: sub_1403D500C+798↑j
                or      edi, 4
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D57C0:                          ; CODE XREF: sub_1403D500C+792↑j
                or      edi, 1
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D57C8:                          ; CODE XREF: sub_1403D500C+78C↑j
                bts     edi, 7
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D57D1:                          ; CODE XREF: sub_1403D500C+786↑j
                or      edi, 2
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D57D9:                          ; CODE XREF: sub_1403D500C+105↑j
                or      esi, 0FFFFFFFFh
                mov     [rsp+2B0h+var_260], r10d
                mov     [rsp+2B0h+var_274], esi
                mov     r14d, r10d
                mov     [rsp+2B0h+var_268], r10d
                mov     edi, r10d
                mov     [rsp+2B0h+var_280], r10d
                mov     [rsp+2B0h+var_26C], r10d
                jmp     loc_1403D5705
; ---------------------------------------------------------------------------

loc_1403D57FF:                          ; CODE XREF: sub_1403D500C+7A↑j
                                        ; sub_1403D500C+83↑j ...
                xor     r9d, r9d
                mov     [rsp+2B0h+var_290], r10
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D5816:                          ; CODE XREF: sub_1403D500C+710↑j
                mov     rcx, [rbp+1B0h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+2B0h+arg_10]
                add     rsp, 280h
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
; } // starts at 1403D500C
sub_1403D500C   endp

algn_1403D5841:                         ; DATA XREF: .pdata:00000001400E0B80↑o
                align 8
; [00000049 BYTES: COLLAPSED FUNCTION write_char_0. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D5891:                         ; DATA XREF: .pdata:00000001400E0B8C↑o
                align 8
; [00000052 BYTES: COLLAPSED FUNCTION write_multi_char_0. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D58EA:                         ; DATA XREF: .pdata:00000001400E0B98↑o
                align 10h
; [00000081 BYTES: COLLAPSED FUNCTION write_string_0. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D5971:                         ; DATA XREF: .pdata:00000001400E0BA4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403D5978   proc near               ; CODE XREF: sub_1403D0EB0+4E↑p
                                        ; sub_1403D0EB0+5F↑p ...
                mov     rax, cs:off_140C00000 ; "         (((((                  H"
                retn
sub_1403D5978   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403D5981:                         ; DATA XREF: .pdata:00000001400E0BB0↑o
                align 8
; [0000002F BYTES: COLLAPSED FUNCTION _mbstrlen. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D59B7:                         ; DATA XREF: .pdata:00000001400E0BBC↑o
                align 20h
; [0000001E BYTES: COLLAPSED FUNCTION __GSHandlerCheck. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D59DE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0BC8↑o

; =============== S U B R O U T I N E =======================================


sub_1403D59E4   proc near               ; CODE XREF: __GSHandlerCheck+E↑p
                                        ; __GSHandlerCheck_SEH+3D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     eax, [r8]
                mov     r9, rcx
                mov     r11d, eax
                mov     r10, rcx
                and     r11d, 0FFFFFFF8h
                test    al, 4
                jz      short loc_1403D5A0F
                mov     eax, [r8+8]
                movsxd  r10, dword ptr [r8+4]
                neg     eax
                add     r10, rcx
                movsxd  rcx, eax
                and     r10, rcx

loc_1403D5A0F:                          ; CODE XREF: sub_1403D59E4+16↑j
                movsxd  rax, r11d
                mov     r8, [rax+r10]
                mov     rax, [rdx+10h]
                mov     ecx, [rax+8]
                mov     rax, [rdx+8]
                movzx   edx, byte ptr [rcx+rax+3]
                test    dl, 0Fh
                jz      short loc_1403D5A33
                mov     eax, edx
                and     eax, 0FFFFFFF0h
                add     r9, rax

loc_1403D5A33:                          ; CODE XREF: sub_1403D59E4+45↑j
                xor     r9, r8
                mov     rcx, r9
                call    __security_check_cookie
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D59E4   endp

byte_1403D5A44  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0BD4↑o

; =============== S U B R O U T I N E =======================================


sub_1403D5A4C   proc near               ; CODE XREF: sub_1403D5B80+ED↓p
                                        ; sub_1403D5CBC+F5↓p
                                        ; DATA XREF: ...

var_38          = byte ptr -38h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                push    rbx
                sub     rsp, 50h
                movsd   xmm0, [rsp+58h+arg_20]
                mov     ebx, ecx
                movsd   xmm1, [rsp+58h+arg_28]
                mov     edx, 0FFC0h
                and     dword ptr [rax-34h], 0
                mov     [rax-38h], ecx
                mov     rcx, [rsp+58h+arg_30]
                movsd   qword ptr [rax-20h], xmm0
                movsd   qword ptr [rax-18h], xmm1
                movsd   qword ptr [rax-28h], xmm3
                mov     [rax-30h], r8
                call    _ctrlfp
                lea     rcx, [rsp+58h+var_38]
                call    PsGetHostSilo
                test    eax, eax
                jnz     short loc_1403D5AA9
                mov     ecx, ebx
                call    sub_1403D63D4

loc_1403D5AA9:                          ; CODE XREF: sub_1403D5A4C+54↑j
                movsd   xmm0, [rsp+58h+var_18]
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D5A4C   endp

byte_1403D5AB6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0BE0↑o

; =============== S U B R O U T I N E =======================================


sub_1403D5ABC   proc near               ; CODE XREF: sub_1403D5B80+5E↓p
                                        ; sub_1403D5CBC+5D↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebx, ecx
                mov     rsi, rdx
                and     ebx, 1Fh
                mov     edi, ecx
                test    cl, 8
                jz      short loc_1403D5AEE
                test    sil, sil
                jns     short loc_1403D5AEE
                mov     ecx, 1
                call    sub_1403D64A8
                and     ebx, 0FFFFFFF7h
                jmp     short loc_1403D5B45
; ---------------------------------------------------------------------------

loc_1403D5AEE:                          ; CODE XREF: sub_1403D5ABC+1C↑j
                                        ; sub_1403D5ABC+21↑j
                mov     ecx, 4
                test    cl, dil
                jz      short loc_1403D5B09
                bt      rsi, 9
                jnb     short loc_1403D5B09
                call    sub_1403D64A8
                and     ebx, 0FFFFFFFBh
                jmp     short loc_1403D5B45
; ---------------------------------------------------------------------------

loc_1403D5B09:                          ; CODE XREF: sub_1403D5ABC+3A↑j
                                        ; sub_1403D5ABC+41↑j
                test    dil, 1
                jz      short loc_1403D5B25
                bt      rsi, 0Ah
                jnb     short loc_1403D5B25
                mov     ecx, 8
                call    sub_1403D64A8
                and     ebx, 0FFFFFFFEh
                jmp     short loc_1403D5B45
; ---------------------------------------------------------------------------

loc_1403D5B25:                          ; CODE XREF: sub_1403D5ABC+51↑j
                                        ; sub_1403D5ABC+58↑j
                test    dil, 2
                jz      short loc_1403D5B45
                bt      rsi, 0Bh
                jnb     short loc_1403D5B45
                test    dil, 10h
                jz      short loc_1403D5B42
                mov     ecx, 10h
                call    sub_1403D64A8

loc_1403D5B42:                          ; CODE XREF: sub_1403D5ABC+7A↑j
                and     ebx, 0FFFFFFFDh

loc_1403D5B45:                          ; CODE XREF: sub_1403D5ABC+30↑j
                                        ; sub_1403D5ABC+4B↑j ...
                test    dil, 10h
                jz      short loc_1403D5B5F
                bt      rsi, 0Ch
                jnb     short loc_1403D5B5F
                mov     ecx, 20h ; ' '
                call    sub_1403D64A8
                and     ebx, 0FFFFFFEFh

loc_1403D5B5F:                          ; CODE XREF: sub_1403D5ABC+8D↑j
                                        ; sub_1403D5ABC+94↑j
                mov     rsi, [rsp+28h+arg_8]
                xor     eax, eax
                test    ebx, ebx
                mov     rbx, [rsp+28h+arg_0]
                setz    al
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D5ABC   endp

algn_1403D5B77:                         ; DATA XREF: .pdata:00000001400E0BEC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=2Fh

sub_1403D5B80   proc near               ; CODE XREF: sqrt+89↑p
                                        ; DATA XREF: .pdata:00000001400E0BF8↑o

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_B8          = byte ptr -0B8h
var_80          = qword ptr -80h
var_70          = dword ptr -70h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
arg_20          = dword ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = dword ptr  50h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rax-37h]
                sub     rsp, 0F0h
                movaps  xmmword ptr [rax-38h], xmm6
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+2Fh+var_40], rax
                mov     esi, edx
                mov     r14, rcx
                mov     edx, 0FFC0h
                mov     ecx, 1F80h
                mov     edi, r9d
                mov     rbx, r8
                call    _ctrlfp
                mov     ecx, [rbp+2Fh+arg_20]
                mov     [rsp+110h+var_D0], rax
                mov     [rsp+50h], rbx
                movsd   xmm0, qword ptr [rsp+50h]
                mov     rdx, [rsp+110h+var_D0]
                movsd   [rsp+110h+var_C8], xmm0
                call    sub_1403D5ABC
                movsd   xmm6, [rbp+2Fh+arg_38]
                test    eax, eax
                jnz     short loc_1403D5C37
                xor     edx, edx
                lea     r8d, [rax+70h]
                lea     rcx, [rsp+60h]
                call    memset
                cmp     [rbp+2Fh+arg_40], 2
                jnz     short loc_1403D5C0E
                movsd   [rbp+2Fh+var_80], xmm6
                mov     [rbp+2Fh+var_70], 3

loc_1403D5C0E:                          ; CODE XREF: sub_1403D5B80+80↑j
                mov     r8d, [rbp+2Fh+arg_20]
                lea     rax, [rsp+110h+var_C8]
                mov     [rsp+110h+var_E8], rax
                lea     rdx, [rsp+110h+var_D0]
                lea     rax, [rbp+2Fh+arg_30]
                mov     r9d, esi
                lea     rcx, [rsp+60h]
                mov     [rsp+110h+var_F0], rax
                call    _raise_exc

loc_1403D5C37:                          ; CODE XREF: sub_1403D5B80+6A↑j
                cmp     cs:dword_140C0F1A8, 0
                jnz     short loc_1403D5C74
                test    edi, edi
                jz      short loc_1403D5C74
                mov     rax, [rsp+110h+var_D0]
                mov     r8, r14
                movsd   xmm0, [rsp+110h+var_C8]
                mov     ecx, edi
                movsd   xmm3, [rbp+2Fh+arg_30]
                mov     edx, [rbp+2Fh+arg_28]
                mov     [rsp+30h], rax
                movsd   [rsp+110h+var_E8], xmm0
                movsd   [rsp+110h+var_F0], xmm6
                call    sub_1403D5A4C
                jmp     short loc_1403D5C90
; ---------------------------------------------------------------------------

loc_1403D5C74:                          ; CODE XREF: sub_1403D5B80+BE↑j
                                        ; sub_1403D5B80+C2↑j
                mov     ecx, edi
                call    sub_1403D63D4
                mov     rcx, [rsp+110h+var_D0]
                mov     edx, 0FFC0h
                call    _ctrlfp
                movsd   xmm0, [rsp+110h+var_C8]

loc_1403D5C90:                          ; CODE XREF: sub_1403D5B80+F2↑j
                mov     rcx, [rbp+2Fh+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                movaps  xmm6, [rsp+110h+var_38+8]
                add     rsp, 0F0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D5B80
sub_1403D5B80   endp

byte_1403D5CB3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0BF8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=2Fh

sub_1403D5CBC   proc near               ; CODE XREF: sqrtf+6E↑p
                                        ; DATA XREF: .pdata:00000001400E0C04↑o

var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_D8          = dword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_B8          = byte ptr -0B8h
var_80          = dword ptr -80h
var_70          = dword ptr -70h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
arg_20          = dword ptr  30h
arg_28          = dword ptr  38h
arg_30          = dword ptr  40h
arg_38          = dword ptr  48h
arg_40          = dword ptr  50h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rax-37h]
                sub     rsp, 0F0h
                movaps  xmmword ptr [rax-38h], xmm6
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+2Fh+var_40], rax
                mov     esi, edx
                mov     r14, rcx
                mov     edx, 0FFC0h
                mov     ecx, 1F80h
                mov     edi, r9d
                mov     rbx, r8
                call    _ctrlfp
                mov     ecx, [rbp+2Fh+arg_20]
                mov     qword ptr [rsp+110h+var_C8], rax
                mov     [rsp+50h], ebx
                movss   xmm0, dword ptr [rsp+50h]
                mov     rdx, qword ptr [rsp+110h+var_C8]
                movss   dword ptr [rsp+110h+var_D0], xmm0
                call    sub_1403D5ABC
                movss   xmm6, [rbp+2Fh+arg_38]
                test    eax, eax
                jnz     short loc_1403D5D72
                xor     edx, edx
                lea     r8d, [rax+70h]
                lea     rcx, [rsp+60h]
                call    memset
                cmp     [rbp+2Fh+arg_40], 2
                jnz     short loc_1403D5D49
                movss   [rbp+2Fh+var_80], xmm6
                mov     [rbp+2Fh+var_70], 1

loc_1403D5D49:                          ; CODE XREF: sub_1403D5CBC+7F↑j
                mov     r8d, [rbp+2Fh+arg_20]
                lea     rax, [rsp+110h+var_D0]
                mov     [rsp+110h+var_E8], rax
                lea     rdx, [rsp+110h+var_C8]
                lea     rax, [rbp+2Fh+arg_30]
                mov     r9d, esi
                lea     rcx, [rsp+60h]
                mov     [rsp+110h+var_F0], rax
                call    _raise_excf

loc_1403D5D72:                          ; CODE XREF: sub_1403D5CBC+69↑j
                cmp     cs:dword_140C0F1A8, 0
                jnz     short loc_1403D5DBC
                test    edi, edi
                jz      short loc_1403D5DBC
                movss   xmm0, dword ptr [rsp+110h+var_D0]
                mov     r8, r14
                movss   xmm3, [rbp+2Fh+arg_30]
                mov     ecx, edi
                mov     rax, qword ptr [rsp+110h+var_C8]
                mov     edx, [rbp+2Fh+arg_28]
                mov     [rsp+30h], rax
                cvtps2pd xmm0, xmm0
                cvtps2pd xmm1, xmm6
                movsd   [rsp+110h+var_E8], xmm0
                cvtps2pd xmm3, xmm3
                movsd   [rsp+110h+var_F0], xmm1
                call    sub_1403D5A4C
                cvtsd2ss xmm0, xmm0
                jmp     short loc_1403D5DD8
; ---------------------------------------------------------------------------

loc_1403D5DBC:                          ; CODE XREF: sub_1403D5CBC+BD↑j
                                        ; sub_1403D5CBC+C1↑j
                mov     ecx, edi
                call    sub_1403D63D4
                mov     rcx, qword ptr [rsp+110h+var_C8]
                mov     edx, 0FFC0h
                call    _ctrlfp
                movss   xmm0, dword ptr [rsp+110h+var_D0]

loc_1403D5DD8:                          ; CODE XREF: sub_1403D5CBC+FE↑j
                mov     rcx, [rbp+2Fh+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                movaps  xmm6, [rsp+110h+var_38+8]
                add     rsp, 0F0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D5CBC
sub_1403D5CBC   endp

byte_1403D5DFB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0C04↑o

; =============== S U B R O U T I N E =======================================


sub_1403D5E04   proc near               ; CODE XREF: sub_1403D3EBC+95↑p
                                        ; sub_1403D3EBC+CA↑p ...
                mov     edx, 30h ; '0'
                cmp     cx, dx
                jb      loc_1403D5FA1
                cmp     cx, 3Ah ; ':'
                jnb     short loc_1403D5E1F

loc_1403D5E18:                          ; CODE XREF: sub_1403D5E04+3D↓j
                                        ; sub_1403D5E04+53↓j ...
                movzx   eax, cx
                sub     eax, edx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D5E1F:                          ; CODE XREF: sub_1403D5E04+12↑j
                mov     edx, 0FF10h
                cmp     cx, dx
                jnb     loc_1403D5F93
                mov     edx, 660h
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      short loc_1403D5E18
                mov     edx, 6F0h
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      short loc_1403D5E18
                mov     edx, 966h
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      short loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      short loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      short loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                mov     edx, 0C66h
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                mov     edx, 0E50h
                cmp     cx, dx
                jb      loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                lea     edx, [rax+76h]
                cmp     cx, dx
                jb      short loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                lea     edx, [rax+46h]
                cmp     cx, dx
                jb      short loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                mov     edx, 1040h
                cmp     cx, dx
                jb      short loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                mov     edx, 17E0h
                cmp     cx, dx
                jb      short loc_1403D5FA1
                lea     eax, [rdx+0Ah]
                cmp     cx, ax
                jb      loc_1403D5E18
                lea     edx, [rax+26h]
                movzx   eax, cx
                sub     ax, dx
                cmp     ax, 9
                ja      short loc_1403D5FA1
                jmp     loc_1403D5E18
; ---------------------------------------------------------------------------

loc_1403D5F93:                          ; CODE XREF: sub_1403D5E04+23↑j
                mov     eax, 0FF1Ah
                cmp     cx, ax
                jb      loc_1403D5E18

loc_1403D5FA1:                          ; CODE XREF: sub_1403D5E04+8↑j
                                        ; sub_1403D5E04+31↑j ...
                or      eax, 0FFFFFFFFh
                retn
sub_1403D5E04   endp

; ---------------------------------------------------------------------------
                align 2
byte_1403D5FA6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0C10↑o
; [00000018 BYTES: COLLAPSED FUNCTION _get_printf_count_output. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1403D5FC5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0C1C↑o

; =============== S U B R O U T I N E =======================================


sub_1403D5FCC   proc near               ; CODE XREF: write_char:loc_1403D4EF7↑p
                                        ; DATA XREF: .pdata:00000001400E0C28↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                test    rdx, rdx
                jnz     short loc_1403D5FEE
                and     [rsp+38h+var_18], rdx
                xor     r9d, r9d
                xor     r8d, r8d
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 0FFFFh
                jmp     short loc_1403D600B
; ---------------------------------------------------------------------------

loc_1403D5FEE:                          ; CODE XREF: sub_1403D5FCC+7↑j
                add     dword ptr [rdx+8], 0FFFFFFFEh
                js      short loc_1403D6003
                mov     rax, [rdx]
                mov     [rax], cx
                movzx   eax, cx
                add     qword ptr [rdx], 2
                jmp     short loc_1403D600B
; ---------------------------------------------------------------------------

loc_1403D6003:                          ; CODE XREF: sub_1403D5FCC+26↑j
                movzx   ecx, cx
                call    _flswbuf

loc_1403D600B:                          ; CODE XREF: sub_1403D5FCC+20↑j
                                        ; sub_1403D5FCC+35↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D5FCC   endp

algn_1403D6011:                         ; DATA XREF: .pdata:00000001400E0C28↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403D6020   proc near               ; CODE XREF: sub_1403D6110+1D0↓p
                                        ; DATA XREF: .pdata:00000001400E0C34↑o ...

var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = byte ptr -0ACh
var_A8          = byte ptr -0A8h
var_28          = qword ptr -28h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_28], rax
                mov     edi, edx
                mov     esi, r8d
                xor     edx, edx
                mov     ebx, ecx
                lea     rcx, [rsp+0E8h+var_AC]
                mov     rbp, r9
                lea     r8d, [rdx+7Ch]
                call    memset
                and     [rsp+0E8h+var_C0], 0
                lea     rax, sub_1403D6020
                and     edi, 1
                mov     [rsp+0E8h+var_B8], rax
                mov     [rsp+0E8h+var_C8], ebx
                mov     [rsp+0E8h+var_C4], edi
                test    rbp, rbp
                jz      short loc_1403D60A5
                mov     eax, 0Fh
                cmp     esi, eax
                cmova   esi, eax
                mov     [rsp+0E8h+var_B0], esi
                test    esi, esi
                jz      short loc_1403D60AA
                mov     r8d, esi
                lea     rcx, [rsp+0E8h+var_A8]
                shl     r8, 3
                mov     rdx, rbp
                call    memmove
                jmp     short loc_1403D60AA
; ---------------------------------------------------------------------------

loc_1403D60A5:                          ; CODE XREF: sub_1403D6020+5B↑j
                and     [rsp+0E8h+var_B0], 0

loc_1403D60AA:                          ; CODE XREF: sub_1403D6020+6D↑j
                                        ; sub_1403D6020+83↑j
                lea     rcx, [rsp+0E8h+var_C8]
                call    RtlRaiseException
                mov     rcx, [rsp+0E8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E8h+arg_18]
                add     rsp, 0D0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403D6020
sub_1403D6020   endp

algn_1403D60D8:                         ; DATA XREF: .pdata:00000001400E0C34↑o
                align 20h
; [00000028 BYTES: COLLAPSED FUNCTION _raise_exc. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D6108:                         ; DATA XREF: .pdata:00000001400E0C40↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403D6110   proc near               ; CODE XREF: _raise_exc+1D↑p
                                        ; _raise_excf+20↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                mov     [rax+8], rcx
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     esi, r9d
                and     [rcx+4], ebp
                mov     rdi, rdx
                and     [rcx+8], ebp
                mov     rbx, rcx
                and     [rcx+0Ch], ebp
                test    r8b, 10h
                jz      short loc_1403D614B
                or      dword ptr [rcx+4], 1
                mov     ebp, 0C000008Fh

loc_1403D614B:                          ; CODE XREF: sub_1403D6110+30↑j
                test    r8b, 2
                jz      short loc_1403D615A
                or      dword ptr [rcx+4], 2
                mov     ebp, 0C0000093h

loc_1403D615A:                          ; CODE XREF: sub_1403D6110+3F↑j
                test    r8b, 1
                jz      short loc_1403D6169
                or      dword ptr [rcx+4], 4
                mov     ebp, 0C0000091h

loc_1403D6169:                          ; CODE XREF: sub_1403D6110+4E↑j
                test    r8b, 4
                jz      short loc_1403D6178
                or      dword ptr [rcx+4], 8
                mov     ebp, 0C000008Eh

loc_1403D6178:                          ; CODE XREF: sub_1403D6110+5D↑j
                test    r8b, 8
                jz      short loc_1403D6187
                or      dword ptr [rcx+4], 10h
                mov     ebp, 0C0000090h

loc_1403D6187:                          ; CODE XREF: sub_1403D6110+6C↑j
                mov     rax, [rdx]
                shr     rax, 7
                shl     eax, 4
                not     eax
                xor     eax, [rcx+8]
                and     eax, 10h
                xor     [rcx+8], eax
                mov     eax, [rcx+8]
                mov     rcx, [rdx]
                shr     rcx, 9
                shl     ecx, 3
                not     ecx
                xor     ecx, eax
                and     ecx, 8
                xor     ecx, eax
                mov     [rbx+8], ecx
                mov     rax, [rdx]
                shr     rax, 0Ah
                shl     eax, 2
                not     eax
                xor     eax, ecx
                and     eax, 4
                xor     eax, ecx
                mov     [rbx+8], eax
                mov     rcx, [rdx]
                shr     rcx, 0Bh
                add     ecx, ecx
                not     ecx
                xor     ecx, eax
                and     ecx, 2
                xor     ecx, eax
                mov     [rbx+8], ecx
                mov     eax, [rdx]
                shr     rax, 0Ch
                not     eax
                xor     eax, ecx
                and     eax, 1
                xor     eax, ecx
                mov     [rbx+8], eax
                call    _statfp
                test    al, 1
                jz      short loc_1403D61FF
                or      dword ptr [rbx+0Ch], 10h

loc_1403D61FF:                          ; CODE XREF: sub_1403D6110+E9↑j
                test    al, 4
                jz      short loc_1403D6207
                or      dword ptr [rbx+0Ch], 8

loc_1403D6207:                          ; CODE XREF: sub_1403D6110+F1↑j
                test    al, 8
                jz      short loc_1403D620F
                or      dword ptr [rbx+0Ch], 4

loc_1403D620F:                          ; CODE XREF: sub_1403D6110+F9↑j
                test    al, 10h
                jz      short loc_1403D6217
                or      dword ptr [rbx+0Ch], 2

loc_1403D6217:                          ; CODE XREF: sub_1403D6110+101↑j
                test    al, 20h
                jz      short loc_1403D621F
                or      dword ptr [rbx+0Ch], 1

loc_1403D621F:                          ; CODE XREF: sub_1403D6110+109↑j
                mov     eax, [rdi]
                mov     ecx, 6000h
                and     rax, rcx
                jz      short loc_1403D625B
                cmp     rax, 2000h
                jz      short loc_1403D6251
                cmp     rax, 4000h
                jz      short loc_1403D6245
                cmp     rax, rcx
                jnz     short loc_1403D625E
                or      dword ptr [rbx], 3
                jmp     short loc_1403D625E
; ---------------------------------------------------------------------------

loc_1403D6245:                          ; CODE XREF: sub_1403D6110+129↑j
                mov     eax, [rbx]
                and     eax, 0FFFFFFFEh
                or      eax, 2

loc_1403D624D:                          ; CODE XREF: sub_1403D6110+149↓j
                mov     [rbx], eax
                jmp     short loc_1403D625E
; ---------------------------------------------------------------------------

loc_1403D6251:                          ; CODE XREF: sub_1403D6110+121↑j
                mov     eax, [rbx]
                and     eax, 0FFFFFFFDh
                or      eax, 1
                jmp     short loc_1403D624D
; ---------------------------------------------------------------------------

loc_1403D625B:                          ; CODE XREF: sub_1403D6110+119↑j
                and     dword ptr [rbx], 0FFFFFFFCh

loc_1403D625E:                          ; CODE XREF: sub_1403D6110+12E↑j
                                        ; sub_1403D6110+133↑j ...
                shl     esi, 5
                xor     esi, [rbx]
                and     esi, 1FFE0h
                xor     [rbx], esi
                cmp     [rsp+28h+arg_30], 0
                mov     eax, [rbx+20h]
                mov     rsi, [rsp+28h+arg_28]
                jz      short loc_1403D62A3
                mov     edx, 0FFFFFFE1h
                and     eax, edx
                or      eax, 1
                mov     [rbx+20h], eax
                mov     rax, [rsp+28h+arg_20]
                mov     ecx, [rax]
                mov     [rbx+10h], ecx
                mov     eax, [rbx+60h]
                and     eax, edx
                or      eax, 1
                mov     [rbx+60h], eax
                mov     eax, [rsi]
                mov     [rbx+50h], eax
                jmp     short loc_1403D62CE
; ---------------------------------------------------------------------------

loc_1403D62A3:                          ; CODE XREF: sub_1403D6110+168↑j
                mov     edx, 0FFFFFFE3h
                and     eax, edx
                or      eax, 3
                mov     [rbx+20h], eax
                mov     rax, [rsp+28h+arg_20]
                mov     rcx, [rax]
                mov     [rbx+10h], rcx
                mov     eax, [rbx+60h]
                and     eax, edx
                or      eax, 3
                mov     [rbx+60h], eax
                mov     rax, [rsi]
                mov     [rbx+50h], rax

loc_1403D62CE:                          ; CODE XREF: sub_1403D6110+191↑j
                call    _clrfp
                xor     edx, edx
                lea     r9, [rsp+28h+arg_0]
                mov     ecx, ebp
                lea     r8d, [rdx+1]
                call    sub_1403D6020
                mov     rcx, [rsp+28h+arg_0]
                mov     eax, [rcx+8]
                test    al, 10h
                jz      short loc_1403D62F9
                btr     qword ptr [rdi], 7
                mov     eax, [rcx+8]

loc_1403D62F9:                          ; CODE XREF: sub_1403D6110+1DF↑j
                test    al, 8
                jz      short loc_1403D6305
                btr     qword ptr [rdi], 9
                mov     eax, [rcx+8]

loc_1403D6305:                          ; CODE XREF: sub_1403D6110+1EB↑j
                test    al, 4
                jz      short loc_1403D6311
                btr     qword ptr [rdi], 0Ah
                mov     eax, [rcx+8]

loc_1403D6311:                          ; CODE XREF: sub_1403D6110+1F7↑j
                test    al, 2
                jz      short loc_1403D631D
                btr     qword ptr [rdi], 0Bh
                mov     eax, [rcx+8]

loc_1403D631D:                          ; CODE XREF: sub_1403D6110+203↑j
                test    al, 1
                jz      short loc_1403D6326
                btr     qword ptr [rdi], 0Ch

loc_1403D6326:                          ; CODE XREF: sub_1403D6110+20F↑j
                mov     eax, [rcx]
                and     eax, 3
                jz      short loc_1403D6366
                sub     eax, 1
                jz      short loc_1403D6357
                sub     eax, 1
                jz      short loc_1403D6345
                cmp     eax, 1
                jnz     short loc_1403D636D
                or      qword ptr [rdi], 6000h
                jmp     short loc_1403D636D
; ---------------------------------------------------------------------------

loc_1403D6345:                          ; CODE XREF: sub_1403D6110+225↑j
                mov     rax, [rdi]
                btr     rax, 0Dh
                bts     rax, 0Eh

loc_1403D6352:                          ; CODE XREF: sub_1403D6110+254↓j
                mov     [rdi], rax
                jmp     short loc_1403D636D
; ---------------------------------------------------------------------------

loc_1403D6357:                          ; CODE XREF: sub_1403D6110+220↑j
                mov     rax, [rdi]
                btr     rax, 0Eh
                bts     rax, 0Dh
                jmp     short loc_1403D6352
; ---------------------------------------------------------------------------

loc_1403D6366:                          ; CODE XREF: sub_1403D6110+21B↑j
                and     qword ptr [rdi], 0FFFFFFFFFFFF9FFFh

loc_1403D636D:                          ; CODE XREF: sub_1403D6110+22A↑j
                                        ; sub_1403D6110+233↑j ...
                cmp     [rsp+28h+arg_30], 0
                jz      short loc_1403D637B
                mov     eax, [rcx+50h]
                mov     [rsi], eax
                jmp     short loc_1403D6382
; ---------------------------------------------------------------------------

loc_1403D637B:                          ; CODE XREF: sub_1403D6110+262↑j
                mov     rax, [rcx+50h]
                mov     [rsi], rax

loc_1403D6382:                          ; CODE XREF: sub_1403D6110+269↑j
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D6110   endp

algn_1403D6398:                         ; DATA XREF: .pdata:00000001400E0C4C↑o
                align 20h
; [0000002B BYTES: COLLAPSED FUNCTION _raise_excf. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D63CB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0C58↑o

; =============== S U B R O U T I N E =======================================


sub_1403D63D4   proc near               ; CODE XREF: sub_1403D5A4C+58↑p
                                        ; sub_1403D5B80+F6↑p ...
                cmp     ecx, 1
                jz      short loc_1403D63ED
                lea     eax, [rcx-2]
                cmp     eax, 1
                ja      short locret_1403D63F7
                mov     cs:dword_140C130C8, 22h ; '"'
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403D63ED:                          ; CODE XREF: sub_1403D63D4+3↑j
                mov     cs:dword_140C130C8, 21h ; '!'

locret_1403D63F7:                       ; CODE XREF: sub_1403D63D4+B↑j
                retn
sub_1403D63D4   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403D63F9:                         ; DATA XREF: .pdata:00000001400E0C64↑o
                align 20h
; [0000001E BYTES: COLLAPSED FUNCTION _clrfp. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D641E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0C70↑o
; [0000007D BYTES: COLLAPSED FUNCTION _ctrlfp. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D64A1:                         ; DATA XREF: .pdata:00000001400E0C7C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403D64A8   proc near               ; CODE XREF: sub_1403D5ABC+28↑p
                                        ; sub_1403D5ABC+43↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    _get_fpsr
                and     ebx, 3Fh
                or      eax, ebx
                mov     ecx, eax
                call    _set_fpsr
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D64A8   endp

algn_1403D64C9:                         ; DATA XREF: .pdata:00000001400E0C88↑o
                align 10h
; [00000012 BYTES: COLLAPSED FUNCTION _statfp. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D64E2:                         ; DATA XREF: .pdata:00000001400E0C94↑o
                align 8
; [0000000A BYTES: COLLAPSED FUNCTION _flswbuf. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D64F3:                         ; DATA XREF: .pdata:00000001400E0CA0↑o
                align 20h
; [0000000A BYTES: COLLAPSED FUNCTION _set_fpsr. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION _fclrf. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D651E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0CB8↑o
; Exported entry 3058. swprintf_s

; =============== S U B R O U T I N E =======================================


