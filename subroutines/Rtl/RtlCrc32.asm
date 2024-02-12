RtlCrc32        proc near               ; DATA XREF: .pdata:00000001400F7D40↑o
                sub     rsp, 28h
                mov     r8d, r8d
                lea     r9, off_140009688
                call    sub_140340CB0
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCrc32        endp

algn_140588EB9:                         ; DATA XREF: .pdata:00000001400F7D40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140588EC0   proc near               ; CODE XREF: sub_140316838+159473↑p
                                        ; DATA XREF: .pdata:00000001400F7D4C↑o

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_F8          = byte ptr -0F8h
var_F7          = byte ptr -0F7h
var_F6          = byte ptr -0F6h
var_F5          = byte ptr -0F5h
var_F4          = byte ptr -0F4h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9
                mov     [r11+18h], r8
                mov     [rsp+arg_8], edx
                mov     [r11+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     r14, r9
                mov     rbx, r8
                mov     edi, edx
                mov     rsi, rcx
                xor     ecx, ecx
                mov     [r11-90h], rcx
                mov     [r11-0B8h], rcx
                mov     [r11-0A8h], rcx
                lea     edx, [rcx+1]
                mov     [rsp+138h+var_F0], edx
                mov     [r11-88h], rcx
                mov     [r11+28h], cl
                mov     [rsp+138h+var_F7], cl
                mov     r15d, ecx
                mov     [rsp+138h+var_E0], rcx
                mov     [rsp+138h+var_EC], ecx
                mov     [r11-68h], rcx
                mov     [r11-0A0h], rcx
                mov     [rsp+138h+var_C8], ecx
                mov     [r11-70h], rcx
                test    edi, 3C010F60h
                jnz     short loc_140588F7D
                mov     eax, 80000000h
                cmp     rbx, rax
                jnb     short loc_140588F7D
                mov     r12b, dl
                mov     r13, r9
                shr     r13, 4
                cmp     r13, 2
                jnb     short loc_140588F6A
                add     r14, 10h
                mov     [r11+20h], r14
                lea     r13d, [rcx+2]

loc_140588F6A:                          ; CODE XREF: sub_140588EC0+9C↑j
                mov     rax, [rsp+138h+arg_28]
                mov     dword ptr [rax], 3
                jmp     loc_140589019
; ---------------------------------------------------------------------------

loc_140588F7D:                          ; CODE XREF: sub_140588EC0+82↑j
                                        ; sub_140588EC0+8C↑j
                mov     [rsp+138h+var_F0], ecx
                mov     rax, [rsp+138h+arg_28]
                mov     dword ptr [rax], 4
                mov     rax, 7FFFFFFFFFFFFFFFh
                cmp     rbx, rax
                jbe     short loc_140588FB4
                xor     eax, eax

loc_140588FA0:                          ; CODE XREF: sub_140588EC0+8A2↓j
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

loc_140588FB4:                          ; CODE XREF: sub_140588EC0+DC↑j
                mov     r14, rbx
                test    rbx, rbx
                cmovz   r14, rdx
                add     r14, [rsi+100h]
                and     r14, [rsi+108h]
                mov     eax, 20h ; ' '
                cmp     r14, rax
                cmovb   r14, rax
                mov     [rsp+138h+arg_18], r14
                mov     r12d, edi
                shr     r12d, 4
                and     r12b, 0E1h
                or      r12b, dl
                test    edi, 3C000100h
                jnz     short loc_140589002
                mov     r13, r14
                cmp     [rsi+148h], rcx
                jz      short loc_140589015

loc_140589002:                          ; CODE XREF: sub_140588EC0+134↑j
                or      r12b, 2
                lea     r13, [r14+10h]
                mov     r14, r13
                mov     [rsp+138h+arg_18], r13

loc_140589015:                          ; CODE XREF: sub_140588EC0+140↑j
                shr     r13, 4

loc_140589019:                          ; CODE XREF: sub_140588EC0+B8↑j
                bt      edi, 17h
                jnb     short loc_14058902E
                call    RtlGetNtGlobalFlags
                bt      eax, 0Bh
                jb      short loc_14058902E
                or      r12b, 8

loc_14058902E:                          ; CODE XREF: sub_140588EC0+15D↑j
                                        ; sub_140588EC0+168↑j
                                        ; DATA XREF: ...
;   __try { // __finally(loc_140589767)
                mov     eax, 1
                test    al, dil
                mov     edi, eax
                jnz     short loc_14058905C
                mov     dl, dil
                mov     rcx, [rsi+160h]
                call    ExAcquireResourceExclusiveLite
                and     [rsp+138h+var_C8], 0
                mov     al, dil
                mov     [rsp+138h+arg_20], al
                mov     [rsp+138h+var_F7], al

loc_14058905C:                          ; CODE XREF: sub_140588EC0+178↑j
                mov     eax, [rsi+94h]
                cmp     r13, rax
                ja      loc_1405895E6
                lea     rdi, [rsi+150h]
                mov     [rsp+138h+var_60], rdi
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_140593F1C
                mov     [rsp+138h+var_58], rax
                cmp     rdi, rax
                jz      loc_1405891B0
                lea     rbx, [rax-10h]
                mov     [rsp+138h+var_98], rbx
                cmp     dword ptr [rsi+7Ch], 0
                jz      short loc_1405890CA
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                cmp     [rbx+0Bh], cl
                jz      short loc_1405890CA
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140593848

loc_1405890CA:                          ; CODE XREF: sub_140588EC0+1E6↑j
                                        ; sub_140588EC0+1FD↑j
                movzx   ecx, word ptr [rbx+8]
                cmp     rcx, r13
                jb      loc_140589195
                mov     rdi, [rbx+10h]
                mov     [rsp+138h+var_D0], rdi
                mov     r8, [rbx+18h]
                mov     [rsp+138h+var_E8], r8
                mov     rax, [r8]
                mov     r9, [rdi+8]
                cmp     rax, r9
                jnz     short loc_14058916F
                lea     r10, [rbx+10h]
                cmp     rax, r10
                jnz     short loc_14058916F
                sub     [rsi+0C0h], rcx
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_140589155
                and     [rsp+138h+var_D8], 0
                movzx   ecx, word ptr [rbx+8]

loc_14058911B:                          ; CODE XREF: sub_140588EC0+2AD↓j
                mov     edi, [rdx+8]
                cmp     rcx, rdi
                jb      short loc_14058912E
                mov     rax, [rdx]
                test    rax, rax
                jnz     short loc_14058916A
                lea     ecx, [rdi-1]

loc_14058912E:                          ; CODE XREF: sub_140588EC0+261↑j
                mov     [rsp+138h+var_D8], rcx
                movzx   eax, word ptr [rbx+8]
                mov     [rsp+138h+var_110], rax
                mov     dword ptr [rsp+138h+var_118], ecx
                mov     r9, r10
                mov     rcx, rsi
                call    sub_140594310
                mov     rdi, [rsp+138h+var_D0]
                mov     r8, [rsp+138h+var_E8]

loc_140589155:                          ; CODE XREF: sub_140588EC0+24F↑j
                mov     [r8], rdi
                mov     [rdi+8], r8
                mov     eax, 1
                mov     [rsp+138h+var_F6], al
                jmp     loc_14058926C
; ---------------------------------------------------------------------------

loc_14058916A:                          ; CODE XREF: sub_140588EC0+269↑j
                mov     rdx, rax
                jmp     short loc_14058911B
; ---------------------------------------------------------------------------

loc_14058916F:                          ; CODE XREF: sub_140588EC0+233↑j
                                        ; sub_140588EC0+23C↑j
                lea     r8, [rbx+10h]
                and     [rsp+138h+var_110], 0
                mov     [rsp+138h+var_118], rax
                mov     rdx, rsi
                mov     ecx, 0Dh
                call    sub_1405937F4
                mov     [rsp+138h+var_F6], 0
                jmp     loc_140589748
; ---------------------------------------------------------------------------

loc_140589195:                          ; CODE XREF: sub_140588EC0+211↑j
                cmp     dword ptr [rsi+7Ch], 0
                jz      short loc_1405891B0
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                mov     [rbx+0Bh], cl
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax

loc_1405891B0:                          ; CODE XREF: sub_140588EC0+1D0↑j
                                        ; sub_140588EC0+2D9↑j
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_14058AA44
                mov     rbx, rax
                mov     [rsp+138h+var_98], rax
                test    rax, rax
                jz      loc_1405895D9
                lea     r8, [rax+10h]
                mov     rcx, [r8]
                mov     [rsp+138h+var_D8], rcx
                mov     rdi, [rax+18h]
                mov     [rsp+138h+var_E8], rdi
                mov     rax, [rdi]
                mov     r9, [rcx+8]
                cmp     rax, r9
                jnz     loc_1405895B7
                cmp     rax, r8
                jnz     loc_1405895B7
                movzx   eax, word ptr [rbx+8]
                sub     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_14058925C
                and     [rsp+138h+var_D0], 0
                movzx   ecx, word ptr [rbx+8]

loc_14058921E:                          ; CODE XREF: sub_140588EC0+471↓j
                mov     edi, [rdx+8]
                cmp     rcx, rdi
                jb      short loc_140589235
                mov     rax, [rdx]
                test    rax, rax
                jnz     loc_14058932E
                lea     ecx, [rdi-1]

loc_140589235:                          ; CODE XREF: sub_140588EC0+364↑j
                mov     [rsp+138h+var_D0], rcx
                movzx   eax, word ptr [rbx+8]
                mov     [rsp+138h+var_110], rax
                mov     dword ptr [rsp+138h+var_118], ecx
                mov     r9, r8
                mov     rcx, rsi
                call    sub_140594310
                mov     rcx, [rsp+138h+var_D8]
                mov     rdi, [rsp+138h+var_E8]

loc_14058925C:                          ; CODE XREF: sub_140588EC0+352↑j
                mov     [rdi], rcx
                mov     [rcx+8], rdi
                mov     eax, 1
                mov     [rsp+138h+var_F4], al

loc_14058926C:                          ; CODE XREF: sub_140588EC0+2A5↑j
                mov     r9b, [rbx+0Ah]
                mov     [rsp+138h+var_F8], r9b
                mov     [rsp+138h+var_F5], r9b
                mov     ecx, [rsp+138h+var_F0]
                test    ecx, ecx
                jnz     short loc_1405892F5
                test    r9b, 4
                jz      short loc_1405892F5
                and     [rsp+138h+var_C0], 0
                movzx   edi, word ptr [rbx+8]
                shl     rdi, 4
                sub     rdi, 20h ; ' '
                mov     [rsp+138h+var_C0], rdi
                test    r9b, 2
                jz      short loc_1405892B4
                cmp     rdi, 4
                jbe     short loc_1405892B4
                sub     rdi, 4
                mov     [rsp+138h+var_C0], rdi

loc_1405892B4:                          ; CODE XREF: sub_140588EC0+3E3↑j
                                        ; sub_140588EC0+3E9↑j
                lea     rcx, [rbx+20h]
                mov     r8d, 0FEEEFEEEh
                mov     rdx, rdi
                call    RtlCompareMemoryUlong
                cmp     rax, rdi
                jz      short loc_1405892EC
                lea     r8, [rax+20h]
                add     r8, rbx
                mov     rdx, rbx
                lea     rcx, aHeapFreeHeapBl ; "HEAP: Free Heap block %p modified at %p"...
                call    DbgPrint
                mov     al, cs:KdDebuggerEnabled
                test    al, al
                jz      short loc_1405892EC
                int     3               ; Trap to Debugger

loc_1405892EC:                          ; CODE XREF: sub_140588EC0+409↑j
                                        ; sub_140588EC0+429↑j
                mov     r9b, [rsp+138h+var_F8]
                mov     ecx, [rsp+138h+var_F0]

loc_1405892F5:                          ; CODE XREF: sub_140588EC0+3C0↑j
                                        ; sub_140588EC0+3C6↑j
                mov     [rsp+138h+var_90], rbx
                mov     al, [rbx+0Ah]
                mov     r10d, 1
                test    r10b, al
                jz      short loc_140589336
                and     [rsp+138h+var_110], 0
                and     [rsp+138h+var_118], 0
                xor     r9d, r9d
                mov     r8, rbx
                mov     rdx, rsi
                lea     ecx, [r10+2]
                call    sub_1405937F4
                jmp     loc_140589748
; ---------------------------------------------------------------------------

loc_14058932E:                          ; CODE XREF: sub_140588EC0+36C↑j
                mov     rdx, rax
                jmp     loc_14058921E
; ---------------------------------------------------------------------------

loc_140589336:                          ; CODE XREF: sub_140588EC0+449↑j
                mov     [rbx+0Ah], r12b
                movzx   edi, word ptr [rbx+8]
                sub     rdi, r13
                mov     [rsp+138h+var_88], rdi
                mov     [rbx+8], r13w
                mov     r12, [rsp+138h+arg_10]
                sub     r14, r12
                mov     [rsp+138h+var_50], r14
                mov     r8, r13
                shl     r8, 4
                cmp     r14, 3Fh ; '?'
                jnb     short loc_140589374
                mov     [rbx+0Fh], r14b
                jmp     short loc_14058937C
; ---------------------------------------------------------------------------

loc_140589374:                          ; CODE XREF: sub_140588EC0+4AC↑j
                mov     [r8+rbx], r14
                mov     byte ptr [rbx+0Fh], 3Fh ; '?'

loc_14058937C:                          ; CODE XREF: sub_140588EC0+4B2↑j
                mov     byte ptr [rbx+0Bh], 0
                test    rdi, rdi
                jz      loc_14058941A
                cmp     rdi, r10
                jnz     short loc_1405893BF
                add     [rbx+8], r10w
                add     r14, 10h
                mov     [rsp+138h+var_48], r14
                cmp     r14, 3Fh ; '?'
                jnb     short loc_1405893AB
                mov     [rbx+0Fh], r14b
                jmp     short loc_14058941A
; ---------------------------------------------------------------------------

loc_1405893AB:                          ; CODE XREF: sub_140588EC0+4E3↑j
                lea     rax, [r13+1]
                shl     rax, 4
                add     rax, rbx
                mov     [rax], r14
                mov     byte ptr [rbx+0Fh], 3Fh ; '?'
                jmp     short loc_14058941A
; ---------------------------------------------------------------------------

loc_1405893BF:                          ; CODE XREF: sub_140588EC0+4CC↑j
                xor     ecx, r10d
                movzx   eax, byte ptr [rbx+0Eh]
                test    al, al
                jz      short loc_1405893E2
                mov     rdx, r10
                sub     rdx, rax
                shl     rdx, 10h
                mov     rax, rbx
                and     rax, 0FFFFFFFFFFFF0000h
                add     rdx, rax
                jmp     short loc_1405893E5
; ---------------------------------------------------------------------------

loc_1405893E2:                          ; CODE XREF: sub_140588EC0+508↑j
                mov     rdx, rsi

loc_1405893E5:                          ; CODE XREF: sub_140588EC0+520↑j
                mov     [rsp+138h+var_80], rdx
                add     r8, rbx
                mov     [rsp+138h+var_108], rdi
                mov     word ptr [rsp+138h+var_110], r13w
                mov     byte ptr [rsp+138h+var_118], cl
                mov     rcx, rsi
                call    sub_140589C10
                test    al, al
                jz      loc_140589748
                mov     [rsp+138h+var_F5], 0
                mov     r10d, 1

loc_14058941A:                          ; CODE XREF: sub_140588EC0+4C3↑j
                                        ; sub_140588EC0+4E9↑j ...
                lea     r15, [rbx+10h]
                mov     [rsp+138h+var_E0], r15
                movzx   edi, word ptr [rbx+8]
                shl     rdi, 4
                mov     [rsp+138h+var_B8], rdi
                mov     al, [rbx+0Fh]
                and     al, 3Fh
                cmp     al, 3Fh ; '?'
                jnz     short loc_140589448
                add     rdi, 0FFFFFFFFFFFFFFF8h
                mov     [rsp+138h+var_B8], rdi

loc_140589448:                          ; CODE XREF: sub_140588EC0+57A↑j
                cmp     [rsp+138h+var_F0], 0
                jz      short loc_1405894B1
                cmp     dword ptr [rsi+7Ch], 0
                jz      short loc_14058946A
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                mov     [rbx+0Bh], cl
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax

loc_14058946A:                          ; CODE XREF: sub_140588EC0+593↑j
                mov     bl, [rsp+138h+arg_20]
                test    bl, bl
                jz      short loc_140589490
                mov     rcx, [rsi+160h]
                call    ExReleaseResourceLite
                xor     al, al
                mov     [rsp+138h+arg_20], al
                mov     [rsp+138h+var_F7], al
                mov     bl, al

loc_140589490:                          ; CODE XREF: sub_140588EC0+5B3↑j
                test    byte ptr [rsp+138h+arg_8], 8
                jz      loc_14058974F
                lea     r8, [rdi-8]
                xor     edx, edx
                mov     rcx, r15
                call    memset
                jmp     loc_14058974F
; ---------------------------------------------------------------------------

loc_1405894B1:                          ; CODE XREF: sub_140588EC0+58D↑j
                test    byte ptr [rsp+138h+arg_8], 8
                jz      short loc_1405894CB
                lea     r8, [rdi-8]
                xor     edx, edx
                mov     rcx, r15
                call    memset
                jmp     short loc_140589547
; ---------------------------------------------------------------------------

loc_1405894CB:                          ; CODE XREF: sub_140588EC0+5F9↑j
                mov     eax, [rsi+70h]
                test    al, 40h
                jz      short loc_140589547
                mov     rdx, r12
                and     rdx, 0FFFFFFFFFFFFFFFCh
                mov     [rsp+138h+var_B0], rdx
                mov     r8, r15
                mov     [rsp+138h+var_78], r15
                shr     rdx, 2
                mov     [rsp+138h+var_B0], rdx
                test    rdx, rdx
                jz      short loc_140589547
                test    r15b, 4
                jz      short loc_140589523
                mov     dword ptr [r15], 0BAADF00Dh
                sub     rdx, r10
                mov     [rsp+138h+var_B0], rdx
                jz      short loc_140589547
                lea     r8, [r15+4]
                mov     [rsp+138h+var_78], r8

loc_140589523:                          ; CODE XREF: sub_140588EC0+641↑j
                mov     rcx, rdx
                shr     rcx, 1
                mov     rax, 0BAADF00DBAADF00Dh
                mov     rdi, r8
                rep stosq
                test    r10b, dl
                jz      short loc_140589547
                mov     dword ptr [r8+rdx*4-4], 0BAADF00Dh

loc_140589547:                          ; CODE XREF: sub_140588EC0+609↑j
                                        ; sub_140588EC0+610↑j ...
                mov     eax, [rsi+70h]
                test    al, 20h
                jz      short loc_14058955F
                movdqa  xmm0, cs:xmmword_14001A820
                movups  xmmword ptr [r15+r12], xmm0
                or      byte ptr [rbx+0Ah], 4

loc_14058955F:                          ; CODE XREF: sub_140588EC0+68C↑j
                mov     byte ptr [rbx+0Bh], 0
                mov     al, [rbx+0Ah]
                test    al, 2
                jz      short loc_140589593
                cmp     byte ptr [rbx+0Fh], 4
                jnz     short loc_140589576
                lea     rax, [rbx-20h]
                jmp     short loc_140589585
; ---------------------------------------------------------------------------

loc_140589576:                          ; CODE XREF: sub_140588EC0+6AE↑j
                movzx   eax, word ptr [rbx+8]
                shl     rax, 4
                add     rax, 0FFFFFFFFFFFFFFF0h
                add     rax, rbx

loc_140589585:                          ; CODE XREF: sub_140588EC0+6B4↑j
                mov     [rsp+138h+var_A8], rax
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0

loc_140589593:                          ; CODE XREF: sub_140588EC0+6A8↑j
                cmp     dword ptr [rsi+7Ch], 0
                jz      loc_140589748
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                mov     [rbx+0Bh], cl
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax
                jmp     loc_140589748
; ---------------------------------------------------------------------------

loc_1405895B7:                          ; CODE XREF: sub_140588EC0+32E↑j
                                        ; sub_140588EC0+337↑j
                and     [rsp+138h+var_110], 0
                mov     [rsp+138h+var_118], rax
                mov     rdx, rsi
                mov     ecx, 0Dh
                call    sub_1405937F4
                mov     [rsp+138h+var_F4], 0
                jmp     loc_140589748
; ---------------------------------------------------------------------------

loc_1405895D9:                          ; CODE XREF: sub_140588EC0+309↑j
                mov     [rsp+138h+var_EC], 0C0000017h
                jmp     loc_140589740
; ---------------------------------------------------------------------------

loc_1405895E6:                          ; CODE XREF: sub_140588EC0+1A5↑j
                mov     eax, [rsi+70h]
                test    al, 2
                jz      loc_140589738
                add     r14, 30h ; '0'
                mov     [rsp+138h+arg_18], r14
                lea     rax, [r14+8]
                mov     [rsp+138h+arg_18], rax
                lea     rcx, [rax+0FFFh]
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     rdx, [rsi+240h]
                sub     rdx, [rsi+298h]
                lea     r9, [rsi+178h]
                mov     r8, rsi
                call    sub_14029CE7C
                test    eax, eax
                jnz     short loc_140589645
                mov     [rsp+138h+var_EC], 0C000012Dh
                jmp     loc_140589740
; ---------------------------------------------------------------------------

loc_140589645:                          ; CODE XREF: sub_140588EC0+776↑j
                and     dword ptr [rsp+138h+var_E8], 0
                mov     ecx, edi
                call    sub_1402D2900
                btr     eax, 1Fh
                mov     dword ptr [rsp+138h+var_E8], eax
                mov     r8d, eax
                and     r8d, 0Fh
                shl     r8, 0Ch
                mov     [rsp+138h+var_70], r8
                lea     r9, [rsp+138h+var_A0]
                lea     rdx, [rsp+138h+arg_18]
                call    sub_1403F7E44
                mov     rdi, rax
                mov     [rsp+138h+var_68], rax
                test    rax, rax
                jnz     short loc_1405896A7
                xor     r15d, r15d
                mov     [rsp+138h+var_E0], r15
                lea     eax, [rdi+1]
                add     [rsi+278h], eax
                jmp     loc_140589748
; ---------------------------------------------------------------------------

loc_1405896A7:                          ; CODE XREF: sub_140588EC0+7CF↑j
                mov     rcx, [rsp+138h+arg_18]
                movzx   eax, cx
                sub     ax, bx
                mov     [rdi+38h], ax
                or      r12b, 2
                mov     [rdi+3Ah], r12b
                mov     [rdi+20h], rcx
                mov     rax, [rsp+138h+var_A0]
                mov     [rdi+28h], rax
                mov     byte ptr [rdi+3Fh], 4
                add     [rsi+250h], rcx
                cmp     dword ptr [rsi+7Ch], 0
                jz      short loc_1405896F7
                mov     cl, [rdi+3Ah]
                xor     cl, [rdi+39h]
                xor     cl, [rdi+38h]
                mov     [rdi+3Bh], cl
                mov     eax, [rsi+88h]
                xor     [rdi+38h], eax

loc_1405896F7:                          ; CODE XREF: sub_140588EC0+820↑j
                lea     r8, [rsi+110h]
                mov     rax, [r8+8]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058971A
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_140589732
; ---------------------------------------------------------------------------

loc_14058971A:                          ; CODE XREF: sub_140588EC0+848↑j
                and     [rsp+138h+var_110], 0
                mov     [rsp+138h+var_118], rcx
                xor     r9d, r9d
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_140589732:                          ; CODE XREF: sub_140588EC0+858↑j
                lea     r15, [rdi+40h]
                jmp     short loc_140589743
; ---------------------------------------------------------------------------

loc_140589738:                          ; CODE XREF: sub_140588EC0+72B↑j
                mov     [rsp+138h+var_EC], 0C0000023h

loc_140589740:                          ; CODE XREF: sub_140588EC0+721↑j
                                        ; sub_140588EC0+780↑j
                xor     r15d, r15d

loc_140589743:                          ; CODE XREF: sub_140588EC0+876↑j
                mov     [rsp+138h+var_E0], r15

loc_140589748:                          ; CODE XREF: sub_140588EC0+2D0↑j
                                        ; sub_140588EC0+469↑j ...
                mov     bl, [rsp+138h+arg_20]
;   } // starts at 14058902E

loc_14058974F:                          ; CODE XREF: sub_140588EC0+5D8↑j
                                        ; sub_140588EC0+5EC↑j
                                        ; DATA XREF: ...
                test    bl, bl
                jz      short loc_14058975F
                mov     rcx, [rsi+160h]
                call    ExReleaseResourceLite

loc_14058975F:                          ; CODE XREF: sub_140588EC0+891↑j
                mov     rax, r15
                jmp     loc_140588FA0
; } // starts at 140588EC0
; ---------------------------------------------------------------------------

loc_140589767:                          ; DATA XREF: .rdata:00000001400C05A4↑o
                                        ; .pdata:00000001400F7D4C↑o ...
;   __finally // owned by 14058902E
                push    rbp
                sub     rsp, 40h
                mov     rbp, rdx
                cmp     byte ptr [rbp+41h], 0
                jz      short loc_14058978A
                mov     rcx, [rbp+140h]
                mov     rcx, [rcx+160h]
                call    ExReleaseResourceLite
                nop

loc_14058978A:                          ; CODE XREF: sub_140588EC0+8B4↑j
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140588EC0   endp

algn_140589791:                         ; DATA XREF: .pdata:00000001400F7D58↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140589798   proc near               ; CODE XREF: sub_140316838+15950B↑p
                                        ; DATA XREF: .pdata:00000001400F7D64↑o

var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_18], rax
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+0D8h+var_B8]
                mov     r8d, 98h
                call    memset
                and     [rsp+0D8h+var_B0], 0
                lea     rax, RtlRaiseException
                and     [rsp+0D8h+var_B4], 0
                lea     rcx, [rsp+0D8h+var_B8]
                mov     [rsp+0D8h+var_A8], rax
                mov     [rsp+0D8h+var_B8], 0C0000017h
                mov     [rsp+0D8h+var_A0], 1
                mov     [rsp+0D8h+var_98], rbx
                call    RtlRaiseException
                mov     rcx, [rsp+0D8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0D0h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140589798
sub_140589798   endp

algn_140589818:                         ; DATA XREF: .pdata:00000001400F7D64↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140589820   proc near               ; CODE XREF: sub_14058A474+96↓p
                                        ; sub_14058AA44+41↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                movzx   r9d, word ptr [rdx+0Ch]
                mov     rbx, rdx
                movzx   eax, word ptr [rcx+8Ch]
                mov     r15, r8
                xor     r9, rax
                mov     rbp, rdx
                shl     r9, 4
                mov     rsi, rcx
                sub     rbx, r9
                cmp     rbx, rdx
                jz      loc_1405899CB
                mov     ecx, [rcx+7Ch]
                mov     eax, ecx
                shr     eax, 14h
                and     al, [rsi+8Ah]
                xor     al, [rbx+0Ah]
                test    al, 1
                jnz     loc_1405899CB
                test    ecx, ecx
                jz      short loc_1405898A2
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                cmp     [rbx+0Bh], cl
                jz      short loc_1405898A2
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140593848

loc_1405898A2:                          ; CODE XREF: sub_140589820+5E↑j
                                        ; sub_140589820+75↑j
                mov     r14, [rbx+18h]
                lea     r8, [rbx+10h]
                mov     rdi, [r8]
                mov     rax, [r14]
                mov     r9, [rdi+8]
                cmp     rax, r9
                jnz     loc_1405899B3
                cmp     rax, r8
                jnz     loc_1405899B3
                movzx   eax, word ptr [rbx+8]
                sub     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_140589918
                movzx   r9d, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_1405898F9
; ---------------------------------------------------------------------------

loc_1405898E7:                          ; CODE XREF: sub_140589820+DC↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_1405899A9
                mov     rdx, rax
                mov     eax, [rax+8]

loc_1405898F9:                          ; CODE XREF: sub_140589820+C5↑j
                cmp     r9, rax
                jnb     short loc_1405898E7
                mov     rcx, r9

loc_140589901:                          ; CODE XREF: sub_140589820+18E↓j
                mov     [rsp+58h+var_30], r9
                mov     r9, r8
                mov     dword ptr [rsp+58h+var_38], ecx
                mov     r8b, 1
                mov     rcx, rsi
                call    sub_140594310

loc_140589918:                          ; CODE XREF: sub_140589820+BB↑j
                mov     [r14], rdi
                mov     [rdi+8], r14
                mov     al, [rbx+0Ah]
                test    al, 4
                jz      short loc_140589977
                movzx   edi, word ptr [rbx+8]
                shl     rdi, 4
                sub     rdi, 20h ; ' '
                test    al, 2
                jz      short loc_140589940
                cmp     rdi, 4
                jbe     short loc_140589940
                sub     rdi, 4

loc_140589940:                          ; CODE XREF: sub_140589820+114↑j
                                        ; sub_140589820+11A↑j
                lea     rcx, [rbx+20h]
                mov     r8d, 0FEEEFEEEh
                mov     rdx, rdi
                call    RtlCompareMemoryUlong
                cmp     rax, rdi
                jz      short loc_140589977
                lea     r8, [rbx+20h]
                mov     rdx, rbx
                add     r8, rax
                lea     rcx, aHeapFreeHeapBl ; "HEAP: Free Heap block %p modified at %p"...
                call    DbgPrint
                cmp     cs:KdDebuggerEnabled, 0
                jz      short loc_140589977
                int     3               ; Trap to Debugger

loc_140589977:                          ; CODE XREF: sub_140589820+104↑j
                                        ; sub_140589820+135↑j ...
                movzx   eax, word ptr [rbx+8]
                mov     rbp, rbx
                mov     byte ptr [rbx+0Ah], 0
                mov     byte ptr [rbx+0Fh], 0
                add     [r15], rax
                movzx   eax, word ptr [r15]
                mov     [rbx+8], ax
                movzx   ecx, word ptr [r15]
                xor     cx, [rsi+8Ch]
                mov     rax, [r15]
                add     rax, rax
                mov     [rbx+rax*8+0Ch], cx
                jmp     short loc_1405899CB
; ---------------------------------------------------------------------------

loc_1405899A9:                          ; CODE XREF: sub_140589820+CD↑j
                mov     ecx, [rdx+8]
                dec     ecx
                jmp     loc_140589901
; ---------------------------------------------------------------------------

loc_1405899B3:                          ; CODE XREF: sub_140589820+97↑j
                                        ; sub_140589820+A0↑j
                and     [rsp+58h+var_30], 0
                mov     rdx, rsi
                mov     ecx, 0Dh
                mov     [rsp+58h+var_38], rax
                call    sub_1405937F4

loc_1405899CB:                          ; CODE XREF: sub_140589820+3D↑j
                                        ; sub_140589820+56↑j ...
                mov     rbx, [r15]
                shl     rbx, 4
                add     rbx, rbp
                cmp     dword ptr [rsi+7Ch], 0
                jz      short loc_140589A29
                mov     eax, [rbx+8]
                xorps   xmm0, xmm0
                mov     edx, [rsi+88h]
                xor     edx, eax
                mov     ecx, edx
                shr     ecx, 10h
                movups  [rsp+58h+var_28], xmm0
                mov     dword ptr [rsp+58h+var_28+8], eax
                mov     eax, edx
                shr     eax, 8
                xor     cl, al
                mov     dword ptr [rsp+58h+var_28+8], edx
                xor     cl, dl
                shr     edx, 18h
                cmp     dl, cl
                jz      short loc_140589A29
                and     [rsp+58h+var_30], 0
                mov     r8, rbx
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                lea     ecx, [r9+3]

loc_140589A21:                          ; CODE XREF: sub_140589820+277↓j
                mov     rdx, rsi
                call    sub_1405937F4

loc_140589A29:                          ; CODE XREF: sub_140589820+1B9↑j
                                        ; sub_140589820+1E9↑j
                mov     ecx, [rsi+7Ch]
                mov     eax, ecx
                shr     eax, 14h
                and     al, [rsi+8Ah]
                xor     al, [rbx+0Ah]
                test    al, 1
                jnz     loc_140589B77
                test    ecx, ecx
                jz      short loc_140589A68
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                cmp     [rbx+0Bh], cl
                jz      short loc_140589A68
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140593848

loc_140589A68:                          ; CODE XREF: sub_140589820+224↑j
                                        ; sub_140589820+23B↑j
                mov     r14, [rbx+18h]
                lea     r10, [rbx+10h]
                mov     rdi, [r10]
                mov     rax, [r14]
                mov     r9, [rdi+8]
                cmp     rax, r9
                jnz     short loc_140589A84
                cmp     rax, r10
                jz      short loc_140589A99

loc_140589A84:                          ; CODE XREF: sub_140589820+25D↑j
                and     [rsp+58h+var_30], 0
                mov     r8, r10
                mov     [rsp+58h+var_38], rax
                mov     ecx, 0Dh
                jmp     short loc_140589A21
; ---------------------------------------------------------------------------

loc_140589A99:                          ; CODE XREF: sub_140589820+262↑j
                movzx   eax, word ptr [rbx+8]
                sub     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_140589AEB
                movzx   ecx, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_140589ACB
; ---------------------------------------------------------------------------

loc_140589AB9:                          ; CODE XREF: sub_140589820+2AE↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_140589B94
                mov     rdx, rax
                mov     eax, [rax+8]

loc_140589ACB:                          ; CODE XREF: sub_140589820+297↑j
                cmp     rcx, rax
                jnb     short loc_140589AB9
                mov     r8, rcx

loc_140589AD3:                          ; CODE XREF: sub_140589820+37B↓j
                mov     [rsp+58h+var_30], rcx
                mov     r9, r10
                mov     dword ptr [rsp+58h+var_38], r8d
                mov     rcx, rsi
                mov     r8b, 1
                call    sub_140594310

loc_140589AEB:                          ; CODE XREF: sub_140589820+28E↑j
                mov     [r14], rdi
                mov     [rdi+8], r14
                mov     al, [rbx+0Ah]
                test    al, 4
                jz      short loc_140589B4A
                movzx   edi, word ptr [rbx+8]
                shl     rdi, 4
                sub     rdi, 20h ; ' '
                test    al, 2
                jz      short loc_140589B13
                cmp     rdi, 4
                jbe     short loc_140589B13
                sub     rdi, 4

loc_140589B13:                          ; CODE XREF: sub_140589820+2E7↑j
                                        ; sub_140589820+2ED↑j
                lea     r14, [rbx+20h]
                mov     r8d, 0FEEEFEEEh
                mov     rcx, r14
                mov     rdx, rdi
                call    RtlCompareMemoryUlong
                cmp     rax, rdi
                jz      short loc_140589B4A
                lea     r8, [rax+r14]
                mov     rdx, rbx
                lea     rcx, aHeapFreeHeapBl ; "HEAP: Free Heap block %p modified at %p"...
                call    DbgPrint
                cmp     cs:KdDebuggerEnabled, 0
                jz      short loc_140589B4A
                int     3               ; Trap to Debugger

loc_140589B4A:                          ; CODE XREF: sub_140589820+2D7↑j
                                        ; sub_140589820+30B↑j ...
                mov     byte ptr [rbp+0Ah], 0
                mov     byte ptr [rbp+0Fh], 0
                movzx   eax, word ptr [rbx+8]
                add     [r15], rax
                movzx   eax, word ptr [r15]
                mov     [rbp+8], ax
                movzx   ecx, word ptr [r15]
                xor     cx, [rsi+8Ch]
                mov     rax, [r15]
                add     rax, rax
                mov     [rbp+rax*8+0Ch], cx

loc_140589B77:                          ; CODE XREF: sub_140589820+21C↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rax, rbp
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140589B94:                          ; CODE XREF: sub_140589820+29F↑j
                mov     r8d, [rdx+8]
                dec     r8d
                jmp     loc_140589AD3
sub_140589820   endp

; ---------------------------------------------------------------------------
byte_140589BA0  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7D70↑o

; =============== S U B R O U T I N E =======================================


sub_140589BA8   proc near               ; CODE XREF: RtlCreateHeap+DE43F↓p
                                        ; DATA XREF: .pdata:00000001400F7D7C↑o
                push    rbx
                sub     rsp, 20h
                mov     eax, [rcx+78h]
                mov     rbx, rcx
                test    al, 2
                jnz     short loc_140589C01
                test    dword ptr [rcx+70h], 4000000h
                jnz     short loc_140589C01
                and     dword ptr [rcx+88h], 0
                mov     byte ptr [rcx+8Ah], 10h
                mov     eax, [rcx+88h]
                mov     [rcx+7Ch], eax
                mov     ecx, 1
                call    sub_1402D2900
                or      [rbx+88h], eax
                mov     ecx, 1
                call    sub_1402D2900
                and     word ptr [rbx+8Eh], 0
                mov     [rbx+8Ch], ax

loc_140589C01:                          ; CODE XREF: sub_140589BA8+E↑j
                                        ; sub_140589BA8+17↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140589BA8   endp

algn_140589C08:                         ; DATA XREF: .pdata:00000001400F7D7C↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140589C10   proc near               ; CODE XREF: sub_140588EC0+542↑p
                                        ; DATA XREF: .pdata:00000001400F7D88↑o

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_28          = dword ptr -28h
var_18          = dword ptr -18h
var_8           = dword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_20          = byte ptr  50h
arg_28          = word ptr  58h
arg_30          = qword ptr  60h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                mov     [rsp-28h+arg_10], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                movzx   eax, [rbp+arg_28]
                xor     r15d, r15d
                mov     [r8+0Fh], r15b
                mov     rsi, rcx
                mov     [r8+0Ah], r9b
                mov     rbx, r8
                xor     ax, [rcx+8Ch]
                mov     [r8+0Ch], ax
                mov     rcx, [rdx+28h]
                cmp     rcx, rdx
                jnz     short loc_140589C5E
                xor     dil, dil
                jmp     short loc_140589C8E
; ---------------------------------------------------------------------------

loc_140589C5E:                          ; CODE XREF: sub_140589C10+47↑j
                mov     rdi, rbx
                sub     rdi, rdx
                shr     rdi, 10h
                inc     rdi
                cmp     rdi, 0FEh
                jb      short loc_140589C8E
                and     [rsp+70h+var_48], r15
                mov     r9, rdx
                and     [rsp+70h+var_50], r15
                mov     rdx, rcx
                mov     ecx, 3
                call    sub_1405937F4

loc_140589C8E:                          ; CODE XREF: sub_140589C10+4C↑j
                                        ; sub_140589C10+62↑j
                mov     r12, [rbp+arg_30]
                mov     [rbx+0Eh], dil
                mov     rdi, r12
                shl     rdi, 4
                movzx   r14d, r12w
                add     rdi, rbx
                mov     [rbx+0Bh], r15b
                mov     [rbx+8], r14w

loc_140589CAD:                          ; CODE XREF: sub_140589C10+126↓j
                mov     ecx, [rsi+7Ch]
                mov     eax, ecx
                shr     eax, 14h
                and     al, [rsi+8Ah]
                xor     al, [rdi+0Ah]
                test    al, 1
                jnz     loc_14058A0AC
                test    ecx, ecx
                jz      short loc_140589CEC
                mov     eax, [rsi+88h]
                xor     [rdi+8], eax
                mov     cl, [rdi+0Ah]
                xor     cl, [rdi+9]
                xor     cl, [rdi+8]
                cmp     [rdi+0Bh], cl
                jz      short loc_140589CEC
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140593848

loc_140589CEC:                          ; CODE XREF: sub_140589C10+B8↑j
                                        ; sub_140589C10+CF↑j
                mov     rcx, [rdi+18h]
                lea     r10, [rdi+10h]
                mov     r13, [r10]
                mov     [rbp+arg_30], rcx
                mov     rax, [rcx]
                mov     r9, [r13+8]
                cmp     rax, r9
                jnz     short loc_140589D0C
                cmp     rax, r10
                jz      short loc_140589D3B

loc_140589D0C:                          ; CODE XREF: sub_140589C10+F5↑j
                and     [rsp+70h+var_48], 0
                mov     r8, r10
                mov     rdx, rsi
                mov     [rsp+70h+var_50], rax
                mov     ecx, 0Dh
                call    sub_1405937F4
                test    r15d, r15d
                jnz     loc_14058A0A5
                mov     r15d, 1
                jmp     loc_140589CAD
; ---------------------------------------------------------------------------

loc_140589D3B:                          ; CODE XREF: sub_140589C10+FA↑j
                movzx   eax, word ptr [rdi+8]
                sub     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_140589D8E
                movzx   r8d, word ptr [rdi+8]
                mov     eax, [rdx+8]
                jmp     short loc_140589D6E
; ---------------------------------------------------------------------------

loc_140589D5C:                          ; CODE XREF: sub_140589C10+161↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_140589E63
                mov     rdx, rax
                mov     eax, [rax+8]

loc_140589D6E:                          ; CODE XREF: sub_140589C10+14A↑j
                cmp     r8, rax
                jnb     short loc_140589D5C
                mov     rcx, r8

loc_140589D76:                          ; CODE XREF: sub_140589C10+258↓j
                mov     [rsp+70h+var_48], r8
                mov     r9, r10
                mov     dword ptr [rsp+70h+var_50], ecx
                mov     rcx, rsi
                call    sub_140594310
                mov     rcx, [rbp+arg_30]

loc_140589D8E:                          ; CODE XREF: sub_140589C10+140↑j
                mov     [rcx], r13
                mov     r15d, 0FEEEFEEEh
                mov     [r13+8], rcx
                mov     r13b, [rbp+arg_20]
                test    r13b, r13b
                jz      short loc_140589DFA
                mov     al, [rdi+0Ah]
                test    al, 4
                jz      short loc_140589DFA
                movzx   r14d, word ptr [rdi+8]
                shl     r14, 4
                sub     r14, 20h ; ' '
                test    al, 2
                jz      short loc_140589DC6
                cmp     r14, 4
                jbe     short loc_140589DC6
                sub     r14, 4

loc_140589DC6:                          ; CODE XREF: sub_140589C10+1AA↑j
                                        ; sub_140589C10+1B0↑j
                lea     rcx, [rdi+20h]
                mov     r8d, r15d
                mov     rdx, r14
                call    RtlCompareMemoryUlong
                cmp     rax, r14
                jz      short loc_140589DFA
                lea     r8, [rdi+20h]
                mov     rdx, rdi
                add     r8, rax
                lea     rcx, aHeapFreeHeapBl ; "HEAP: Free Heap block %p modified at %p"...
                call    DbgPrint
                cmp     cs:KdDebuggerEnabled, 0
                jz      short loc_140589DFA
                int     3               ; Trap to Debugger

loc_140589DFA:                          ; CODE XREF: sub_140589C10+192↑j
                                        ; sub_140589C10+199↑j ...
                mov     al, [rdi+0Ah]
                mov     [rbx+0Ah], al
                movzx   eax, word ptr [rdi+8]
                add     r12, rax
                cmp     r12, 0FF00h
                ja      loc_14058A092
                movzx   r14d, r12w
                add     r12, r12
                mov     [rbx+8], r14w
                movzx   eax, r14w
                xor     ax, [rsi+8Ch]
                mov     [rbx+r12*8+0Ch], ax
                mov     byte ptr [rbx+0Fh], 0
                test    r13b, r13b
                jnz     loc_140589F59
                mov     [rbx+0Ah], r13b
                lea     rdi, [rsi+150h]
                cmp     qword ptr [rsi+138h], 0
                jz      short loc_140589E6D
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_140589E70
; ---------------------------------------------------------------------------

loc_140589E63:                          ; CODE XREF: sub_140589C10+152↑j
                mov     ecx, [rdx+8]
                dec     ecx
                jmp     loc_140589D76
; ---------------------------------------------------------------------------

loc_140589E6D:                          ; CODE XREF: sub_140589C10+241↑j
                mov     r8, [rdi]

loc_140589E70:                          ; CODE XREF: sub_140589C10+251↑j
                cmp     rdi, r8
                jz      short loc_140589EAE
                mov     ecx, [rsi+7Ch]

loc_140589E78:                          ; CODE XREF: sub_140589C10+29C↓j
                test    ecx, ecx
                jz      short loc_140589E99
                mov     eax, [r8-8]
                mov     ecx, [rsi+7Ch]
                mov     [rbp+var_38], eax
                test    ecx, eax
                jz      short loc_140589E93
                xor     eax, [rsi+88h]
                mov     [rbp+var_38], eax

loc_140589E93:                          ; CODE XREF: sub_140589C10+278↑j
                movzx   eax, word ptr [rbp+var_38]
                jmp     short loc_140589E9E
; ---------------------------------------------------------------------------

loc_140589E99:                          ; CODE XREF: sub_140589C10+26A↑j
                movzx   eax, word ptr [r8-8]

loc_140589E9E:                          ; CODE XREF: sub_140589C10+287↑j
                movzx   eax, ax
                cmp     r14, rax
                jbe     short loc_140589EAE
                mov     r8, [r8]
                cmp     rdi, r8
                jnz     short loc_140589E78

loc_140589EAE:                          ; CODE XREF: sub_140589C10+263↑j
                                        ; sub_140589C10+294↑j
                mov     rax, [r8+8]
                lea     rdi, [rbx+10h]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_140589ECE
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_140589EE6
; ---------------------------------------------------------------------------

loc_140589ECE:                          ; CODE XREF: sub_140589C10+2AC↑j
                and     [rsp+70h+var_48], 0
                xor     edx, edx
                mov     [rsp+70h+var_50], rcx
                xor     r9d, r9d
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_140589EE6:                          ; CODE XREF: sub_140589C10+2BC↑j
                movzx   eax, word ptr [rbx+8]
                add     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_140589F35
                movzx   ecx, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_140589F18
; ---------------------------------------------------------------------------

loc_140589F06:                          ; CODE XREF: sub_140589C10+30B↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_14058A086
                mov     rdx, rax
                mov     eax, [rax+8]

loc_140589F18:                          ; CODE XREF: sub_140589C10+2F4↑j
                cmp     rcx, rax
                jnb     short loc_140589F06

loc_140589F1D:                          ; CODE XREF: sub_140589C10+471↓j
                                        ; sub_140589C10+592↓j
                mov     r8, rcx

loc_140589F20:                          ; CODE XREF: sub_140589C10+47D↓j
                mov     [rsp+70h+var_48], rcx
                mov     r9, rdi
                mov     rcx, rsi
                mov     dword ptr [rsp+70h+var_50], r8d
                call    sub_140594040

loc_140589F35:                          ; CODE XREF: sub_140589C10+2EB↑j
                                        ; sub_140589C10+44F↓j ...
                cmp     dword ptr [rsi+7Ch], 0
                jz      loc_14058A304
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                mov     [rbx+0Bh], cl
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax
                jmp     loc_14058A304
; ---------------------------------------------------------------------------

loc_140589F59:                          ; CODE XREF: sub_140589C10+228↑j
                and     byte ptr [rbx+0Ah], 0F0h
                mov     eax, [rsi+70h]
                test    al, 40h
                jz      short loc_140589FB0
                mov     rdx, r14
                lea     r8, [rbx+20h]
                shl     rdx, 4
                sub     rdx, 20h ; ' '
                shr     rdx, 2
                test    rdx, rdx
                jz      short loc_140589FAC
                test    r8b, 4
                jz      short loc_140589F8C
                dec     rdx
                mov     [r8], r15d
                add     r8, 4

loc_140589F8C:                          ; CODE XREF: sub_140589C10+370↑j
                mov     rcx, rdx
                mov     rax, 0FEEEFEEEFEEEFEEEh
                shr     rcx, 1
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jz      short loc_140589FAC
                mov     [r8+rdx*4-4], r15d

loc_140589FAC:                          ; CODE XREF: sub_140589C10+36A↑j
                                        ; sub_140589C10+395↑j
                or      byte ptr [rbx+0Ah], 4

loc_140589FB0:                          ; CODE XREF: sub_140589C10+352↑j
                cmp     qword ptr [rsi+138h], 0
                lea     rdi, [rsi+150h]
                jz      short loc_140589FD1
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_140589FD4
; ---------------------------------------------------------------------------

loc_140589FD1:                          ; CODE XREF: sub_140589C10+3AF↑j
                mov     r8, [rdi]

loc_140589FD4:                          ; CODE XREF: sub_140589C10+3BF↑j
                cmp     rdi, r8
                jz      short loc_14058A012
                mov     ecx, [rsi+7Ch]

loc_140589FDC:                          ; CODE XREF: sub_140589C10+400↓j
                test    ecx, ecx
                jz      short loc_140589FFD
                mov     eax, [r8-8]
                mov     ecx, [rsi+7Ch]
                mov     [rbp+var_28], eax
                test    ecx, eax
                jz      short loc_140589FF7
                xor     eax, [rsi+88h]
                mov     [rbp+var_28], eax

loc_140589FF7:                          ; CODE XREF: sub_140589C10+3DC↑j
                movzx   eax, word ptr [rbp+var_28]
                jmp     short loc_14058A002
; ---------------------------------------------------------------------------

loc_140589FFD:                          ; CODE XREF: sub_140589C10+3CE↑j
                movzx   eax, word ptr [r8-8]

loc_14058A002:                          ; CODE XREF: sub_140589C10+3EB↑j
                movzx   eax, ax
                cmp     r14, rax
                jbe     short loc_14058A012
                mov     r8, [r8]
                cmp     rdi, r8
                jnz     short loc_140589FDC

loc_14058A012:                          ; CODE XREF: sub_140589C10+3C7↑j
                                        ; sub_140589C10+3F8↑j
                mov     rax, [r8+8]
                lea     rdi, [rbx+10h]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058A032
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_14058A04A
; ---------------------------------------------------------------------------

loc_14058A032:                          ; CODE XREF: sub_140589C10+410↑j
                and     [rsp+70h+var_48], 0
                xor     edx, edx
                mov     [rsp+70h+var_50], rcx
                xor     r9d, r9d
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058A04A:                          ; CODE XREF: sub_140589C10+420↑j
                movzx   eax, word ptr [rbx+8]
                add     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      loc_140589F35
                movzx   ecx, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_14058A07C
; ---------------------------------------------------------------------------

loc_14058A06E:                          ; CODE XREF: sub_140589C10+46F↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      short loc_14058A086
                mov     rdx, rax
                mov     eax, [rax+8]

loc_14058A07C:                          ; CODE XREF: sub_140589C10+45C↑j
                cmp     rcx, rax
                jnb     short loc_14058A06E
                jmp     loc_140589F1D
; ---------------------------------------------------------------------------

loc_14058A086:                          ; CODE XREF: sub_140589C10+2FC↑j
                                        ; sub_140589C10+464↑j ...
                mov     r8d, [rdx+8]
                dec     r8d
                jmp     loc_140589F20
; ---------------------------------------------------------------------------

loc_14058A092:                          ; CODE XREF: sub_140589C10+1FE↑j
                mov     r8, r12
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14058B73C
                jmp     loc_14058A304
; ---------------------------------------------------------------------------

loc_14058A0A5:                          ; CODE XREF: sub_140589C10+11A↑j
                xor     al, al
                jmp     loc_14058A306
; ---------------------------------------------------------------------------

loc_14058A0AC:                          ; CODE XREF: sub_140589C10+B0↑j
                movzx   eax, r14w
                xor     ax, [rsi+8Ch]
                cmp     [rbp+arg_20], 0
                mov     [rdi+0Ch], ax
                mov     byte ptr [rbx+0Fh], 0
                jnz     loc_14058A1A7
                mov     byte ptr [rbx+0Ah], 0
                lea     rdi, [rsi+150h]
                cmp     qword ptr [rsi+138h], 0
                jz      short loc_14058A0EE
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_14058A0F1
; ---------------------------------------------------------------------------

loc_14058A0EE:                          ; CODE XREF: sub_140589C10+4CC↑j
                mov     r8, [rdi]

loc_14058A0F1:                          ; CODE XREF: sub_140589C10+4DC↑j
                cmp     rdi, r8
                jz      short loc_14058A12F
                mov     ecx, [rsi+7Ch]

loc_14058A0F9:                          ; CODE XREF: sub_140589C10+51D↓j
                test    ecx, ecx
                jz      short loc_14058A11A
                mov     eax, [r8-8]
                mov     ecx, [rsi+7Ch]
                mov     [rbp+var_18], eax
                test    eax, ecx
                jz      short loc_14058A114
                xor     eax, [rsi+88h]
                mov     [rbp+var_18], eax

loc_14058A114:                          ; CODE XREF: sub_140589C10+4F9↑j
                movzx   eax, word ptr [rbp+var_18]
                jmp     short loc_14058A11F
; ---------------------------------------------------------------------------

loc_14058A11A:                          ; CODE XREF: sub_140589C10+4EB↑j
                movzx   eax, word ptr [r8-8]

loc_14058A11F:                          ; CODE XREF: sub_140589C10+508↑j
                movzx   eax, ax
                cmp     r14, rax
                jbe     short loc_14058A12F
                mov     r8, [r8]
                cmp     rdi, r8
                jnz     short loc_14058A0F9

loc_14058A12F:                          ; CODE XREF: sub_140589C10+4E4↑j
                                        ; sub_140589C10+515↑j
                mov     rax, [r8+8]
                lea     rdi, [rbx+10h]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058A14F
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_14058A167
; ---------------------------------------------------------------------------

loc_14058A14F:                          ; CODE XREF: sub_140589C10+52D↑j
                and     [rsp+70h+var_48], 0
                xor     edx, edx
                mov     [rsp+70h+var_50], rcx
                xor     r9d, r9d
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058A167:                          ; CODE XREF: sub_140589C10+53D↑j
                movzx   eax, word ptr [rbx+8]
                add     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      loc_140589F35
                movzx   ecx, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_14058A19D
; ---------------------------------------------------------------------------

loc_14058A18B:                          ; CODE XREF: sub_140589C10+590↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_14058A086
                mov     rdx, rax
                mov     eax, [rax+8]

loc_14058A19D:                          ; CODE XREF: sub_140589C10+579↑j
                cmp     rcx, rax
                jnb     short loc_14058A18B
                jmp     loc_140589F1D
; ---------------------------------------------------------------------------

loc_14058A1A7:                          ; CODE XREF: sub_140589C10+4B3↑j
                and     byte ptr [rbx+0Ah], 0F0h
                mov     eax, [rsi+70h]
                test    al, 40h
                jz      short loc_14058A204
                mov     rdx, r14
                lea     r8, [rbx+20h]
                shl     rdx, 4
                sub     rdx, 20h ; ' '
                shr     rdx, 2
                test    rdx, rdx
                jz      short loc_14058A200
                mov     r15d, 0FEEEFEEEh
                test    r8b, 4
                jz      short loc_14058A1E0
                dec     rdx
                mov     [r8], r15d
                add     r8, 4

loc_14058A1E0:                          ; CODE XREF: sub_140589C10+5C4↑j
                mov     rcx, rdx
                mov     rax, 0FEEEFEEEFEEEFEEEh
                shr     rcx, 1
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jz      short loc_14058A200
                mov     [r8+rdx*4-4], r15d

loc_14058A200:                          ; CODE XREF: sub_140589C10+5B8↑j
                                        ; sub_140589C10+5E9↑j
                or      byte ptr [rbx+0Ah], 4

loc_14058A204:                          ; CODE XREF: sub_140589C10+5A0↑j
                cmp     qword ptr [rsi+138h], 0
                lea     rdi, [rsi+150h]
                jz      short loc_14058A225
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_14058A228
; ---------------------------------------------------------------------------

loc_14058A225:                          ; CODE XREF: sub_140589C10+603↑j
                mov     r8, [rdi]

loc_14058A228:                          ; CODE XREF: sub_140589C10+613↑j
                cmp     rdi, r8
                jz      short loc_14058A266
                mov     ecx, [rsi+7Ch]

loc_14058A230:                          ; CODE XREF: sub_140589C10+654↓j
                test    ecx, ecx
                jz      short loc_14058A251
                mov     eax, [r8-8]
                mov     ecx, [rsi+7Ch]
                mov     [rbp+var_8], eax
                test    eax, ecx
                jz      short loc_14058A24B
                xor     eax, [rsi+88h]
                mov     [rbp+var_8], eax

loc_14058A24B:                          ; CODE XREF: sub_140589C10+630↑j
                movzx   eax, word ptr [rbp+var_8]
                jmp     short loc_14058A256
; ---------------------------------------------------------------------------

loc_14058A251:                          ; CODE XREF: sub_140589C10+622↑j
                movzx   eax, word ptr [r8-8]

loc_14058A256:                          ; CODE XREF: sub_140589C10+63F↑j
                movzx   eax, ax
                cmp     r14, rax
                jbe     short loc_14058A266
                mov     r8, [r8]
                cmp     rdi, r8
                jnz     short loc_14058A230

loc_14058A266:                          ; CODE XREF: sub_140589C10+61B↑j
                                        ; sub_140589C10+64C↑j
                mov     rax, [r8+8]
                lea     rdi, [rbx+10h]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058A286
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_14058A29E
; ---------------------------------------------------------------------------

loc_14058A286:                          ; CODE XREF: sub_140589C10+664↑j
                and     [rsp+70h+var_48], 0
                xor     edx, edx
                mov     [rsp+70h+var_50], rcx
                xor     r9d, r9d
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058A29E:                          ; CODE XREF: sub_140589C10+674↑j
                movzx   eax, word ptr [rbx+8]
                add     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_14058A2E9
                movzx   ecx, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_14058A2CC
; ---------------------------------------------------------------------------

loc_14058A2BE:                          ; CODE XREF: sub_140589C10+6BF↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      short loc_14058A325
                mov     rdx, rax
                mov     eax, [rax+8]

loc_14058A2CC:                          ; CODE XREF: sub_140589C10+6AC↑j
                cmp     rcx, rax
                jnb     short loc_14058A2BE
                mov     r8, rcx

loc_14058A2D4:                          ; CODE XREF: sub_140589C10+71C↓j
                mov     [rsp+70h+var_48], rcx
                mov     r9, rdi
                mov     rcx, rsi
                mov     dword ptr [rsp+70h+var_50], r8d
                call    sub_140594040

loc_14058A2E9:                          ; CODE XREF: sub_140589C10+6A3↑j
                cmp     dword ptr [rsi+7Ch], 0
                jz      short loc_14058A304
                mov     dl, [rbx+0Ah]
                xor     dl, [rbx+9]
                xor     dl, [rbx+8]
                mov     [rbx+0Bh], dl
                mov     ecx, [rsi+88h]
                xor     [rbx+8], ecx

loc_14058A304:                          ; CODE XREF: sub_140589C10+329↑j
                                        ; sub_140589C10+344↑j ...
                mov     al, 1

loc_14058A306:                          ; CODE XREF: sub_140589C10+497↑j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058A325:                          ; CODE XREF: sub_140589C10+6B4↑j
                mov     r8d, [rdx+8]
                dec     r8d
                jmp     short loc_14058A2D4
sub_140589C10   endp

; ---------------------------------------------------------------------------
byte_14058A32E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7D88↑o

; =============== S U B R O U T I N E =======================================


sub_14058A334   proc near               ; CODE XREF: sub_14058A474+258↓p
                                        ; sub_14058A474+56E↓p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
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
                push    r14
                sub     rsp, 30h
                mov     [r8+28h], r9
                lea     rbx, [r8-10h]
                mov     rbp, rdx
                mov     byte ptr [rbx+0Fh], 3
                lea     rax, [r8+30h]
                mov     r14, r8
                mov     [r8+20h], rax
                mov     rdi, rcx
                mov     dword ptr [rbx+8], 10004h
                mov     rdx, [rdx+28h]
                cmp     rdx, rbp
                jnz     short loc_14058A37F
                xor     sil, sil
                jmp     short loc_14058A3B1
; ---------------------------------------------------------------------------

loc_14058A37F:                          ; CODE XREF: sub_14058A334+44↑j
                mov     rsi, rbx
                sub     rsi, rbp
                shr     rsi, 10h
                inc     rsi
                cmp     rsi, 0FEh
                jb      short loc_14058A3B1
                and     [rsp+38h+var_10], 0
                mov     r9, rbp
                and     [rsp+38h+var_18], 0
                mov     r8, rbx
                mov     ecx, 3
                call    sub_1405937F4

loc_14058A3B1:                          ; CODE XREF: sub_14058A334+49↑j
                                        ; sub_14058A334+5F↑j
                cmp     cs:dword_140CF9F48, 1
                mov     [rbx+0Eh], sil
                mov     rsi, [rsp+38h+arg_20]
                jl      short loc_14058A3DA
                cmp     rsi, rbx
                jbe     short loc_14058A3DD
                lea     rcx, aPheapEntryLast ; "((PHEAP_ENTRY)LastKnownEntry <= Entry)"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                align 2

loc_14058A3DA:                          ; CODE XREF: sub_14058A334+8D↑j
                cmp     rsi, rbx

loc_14058A3DD:                          ; CODE XREF: sub_14058A334+92↑j
                jz      short loc_14058A3EA
                movzx   eax, word ptr [rdi+8Ch]
                mov     [rbx+0Ch], ax

loc_14058A3EA:                          ; CODE XREF: sub_14058A334:loc_14058A3DD↑j
                cmp     dword ptr [rdi+7Ch], 0
                jz      short loc_14058A405
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                mov     [rbx+0Bh], cl
                mov     eax, [rdi+88h]
                xor     [rbx+8], eax

loc_14058A405:                          ; CODE XREF: sub_14058A334+BA↑j
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14058BA80
                inc     dword ptr [rbp+54h]
                mov     rax, [r14+28h]
                shr     rax, 0Ch
                add     [rbp+50h], eax
                mov     rax, [r14+28h]
                sub     [rdi+240h], rax
                inc     dword ptr [rdi+25Ch]
                mov     rax, [r14+28h]
                cmp     rax, 0FF000h
                jb      short loc_14058A442
                add     [rdi+248h], rax

loc_14058A442:                          ; CODE XREF: sub_14058A334+105↑j
                mov     rax, [rsp+38h+arg_28]
                sub     rbx, rsi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                sar     rbx, 4
                mov     [rax], rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058A334   endp

byte_14058A46D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7D94↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14058A474   proc near               ; CODE XREF: sub_14058AF24+178↓p
                                        ; DATA XREF: .pdata:00000001400F7DA0↑o

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h
arg_18          = byte ptr  58h

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_18], r9b
                mov     [rsp-38h+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                mov     rax, [rcx+168h]
                xor     edi, edi
                xor     rax, cs:qword_140C54310
                mov     rsi, rdx
                mov     rbx, rcx
                mov     [rbp+var_10], rdi
                mov     [rbp+var_28], rdi
                mov     r14b, dil
                mov     [rbp+arg_18], dil
                jnz     loc_14058AA1F
                cmp     r8, [rcx+0B0h]
                jb      loc_14058AA1F
                mov     r9, [rcx+0C0h]
                add     r9, r8
                cmp     r9, [rcx+0B8h]
                jb      loc_14058AA19
                mov     ecx, [rcx+2B0h]
                mov     rdx, [rbx+240h]
                add     ecx, 4
                shr     rdx, cl
                cmp     r9, rdx
                jb      loc_14058AA19
                lea     r8, [rbp+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_140589820
                mov     r13, rax
                movzx   eax, byte ptr [rsi+0Eh]
                test    al, al
                jz      short loc_14058A533
                and     rsi, 0FFFFFFFFFFFF0000h
                mov     ecx, eax
                shl     rcx, 10h
                sub     rsi, rcx
                add     rsi, 10000h
                jmp     short loc_14058A536
; ---------------------------------------------------------------------------

loc_14058A533:                          ; CODE XREF: sub_14058A474+A4↑j
                mov     rsi, rbx

loc_14058A536:                          ; CODE XREF: sub_14058A474+BD↑j
                mov     r12, [rbp+arg_10]
                mov     r9d, 1
                mov     r15, r12
                shl     r15, 4
                add     r15, r13
                cmp     byte ptr [r15+0Fh], 3
                jnz     short loc_14058A5C1
                lea     rdx, [r15+10h]
                call    sub_14058BBD8
                mov     rcx, [r15+38h]
                mov     rax, [r15+30h]
                mov     [rbp+var_28], rax
                mov     [rbp+var_20], rcx
                or      ecx, 0FFFFFFFFh
                add     [rsi+54h], ecx
                mov     rax, [r15+38h]
                shr     rax, 0Ch
                sub     [rsi+50h], eax
                mov     rax, [r15+38h]
                add     [rbx+240h], rax
                add     [rbx+25Ch], ecx
                mov     rax, [r15+38h]
                cmp     rax, 0FF000h
                jb      short loc_14058A5A3
                sub     [rbx+248h], rax
                mov     rax, [r15+38h]

loc_14058A5A3:                          ; CODE XREF: sub_14058A474+122↑j
                mov     r9d, 1
                shr     rax, 4
                add     r12, 40h ; '@'
                mov     [rbp+arg_18], r9b
                add     r12, rax
                mov     r14b, r9b
                mov     [rbp+arg_10], r12
                jmp     short loc_14058A5C5
; ---------------------------------------------------------------------------

loc_14058A5C1:                          ; CODE XREF: sub_14058A474+DB↑j
                mov     [rbp+var_20], rdi

loc_14058A5C5:                          ; CODE XREF: sub_14058A474+14B↑j
                movzx   eax, word ptr [r13+0Ch]
                cmp     [rbx+8Ch], ax
                jnz     loc_14058A820
                lea     r8, [rsi+60h]
                mov     [rbp+var_30], r13
                mov     rdx, [r8]
                jmp     short loc_14058A5FC
; ---------------------------------------------------------------------------

loc_14058A5E4:                          ; CODE XREF: sub_14058A474+18B↓j
                lea     rcx, [rdx-10h]
                mov     rax, [rcx+28h]
                add     rax, [rcx+20h]
                mov     [rbp+var_18], rcx
                cmp     rax, r13
                jz      short loc_14058A608
                mov     rdx, [rdx]

loc_14058A5FC:                          ; CODE XREF: sub_14058A474+16E↑j
                cmp     r8, rdx
                jnz     short loc_14058A5E4
                mov     rcx, rdi
                mov     [rbp+var_18], rcx

loc_14058A608:                          ; CODE XREF: sub_14058A474+183↑j
                mov     edx, cs:dword_140CF9F48
                cmp     edx, r9d
                jl      short loc_14058A62A
                test    rcx, rcx
                jnz     short loc_14058A62A
                lea     rcx, aUcrblockNull ; "(UCRBlock != NULL)"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                align 2

loc_14058A62A:                          ; CODE XREF: sub_14058A474+19D↑j
                                        ; sub_14058A474+1A2↑j
                mov     r15, r12
                shl     r15, 4
                test    r14b, r14b
                jnz     short loc_14058A644
                lea     rcx, [r15+r13]
                mov     [rbp+var_10], rcx
                lea     rax, [rcx-20h]
                jmp     short loc_14058A64C
; ---------------------------------------------------------------------------

loc_14058A644:                          ; CODE XREF: sub_14058A474+1C0↑j
                lea     rax, [r15+r13]
                mov     [rbp+var_10], rax

loc_14058A64C:                          ; CODE XREF: sub_14058A474+1CE↑j
                and     rax, 0FFFFFFFFFFFFF000h
                sub     rax, r13
                mov     [rbp+arg_0], rax
                jnz     short loc_14058A682
                cmp     edx, r9d
                jl      short loc_14058A677
                test    r14b, r14b
                jz      short loc_14058A677
                lea     rcx, aTrailingucr ; "(!TrailingUCR)"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058A677:                          ; CODE XREF: sub_14058A474+1EA↑j
                                        ; sub_14058A474+1EF↑j ...
                mov     r8, r12

loc_14058A67A:                          ; CODE XREF: sub_14058A474+577↓j
                mov     rdx, r13
                jmp     loc_14058AA1C
; ---------------------------------------------------------------------------

loc_14058A682:                          ; CODE XREF: sub_14058A474+1E5↑j
                mov     r9d, 4000h
                lea     r8, [rbp+arg_0]
                lea     rdx, [rbp+var_30]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwFreeVirtualMemory
                test    eax, eax
                jns     short loc_14058A6D7
                mov     edx, 3
                mov     rcx, rbx
                call    sub_14058BFB4
                test    r14b, r14b

loc_14058A6AD:                          ; CODE XREF: sub_14058A474+45A↓j
                jz      short loc_14058A677
                mov     r8, [rbp+var_28]
                lea     rax, [rbp+arg_10]
                mov     r9, [rbp+var_20]
                add     r8, 0FFFFFFFFFFFFFFD0h
                mov     [rsp+60h+var_38], rax
                mov     rdx, rsi
                mov     [rsp+60h+var_40], r13
                call    sub_14058A334
                mov     r12, [rbp+arg_10]
                jmp     short loc_14058A677
; ---------------------------------------------------------------------------

loc_14058A6D7:                          ; CODE XREF: sub_14058A474+227↑j
                mov     r13, [rbp+var_18]
                mov     r12d, 1
                add     [rbx+264h], r12d
                mov     rax, [r13+28h]
                cmp     rax, 0FF000h
                jb      short loc_14058A6FB
                sub     [rbx+248h], rax

loc_14058A6FB:                          ; CODE XREF: sub_14058A474+27E↑j
                mov     rdx, r13
                call    sub_14058BBD8
                mov     rax, [rbp+arg_0]
                mov     rdx, r13
                add     [r13+28h], rax
                mov     rcx, rbx
                call    sub_14058BA80
                mov     rax, [rbp+arg_0]
                shr     rax, 0Ch
                add     [rsi+50h], eax
                mov     rcx, [rbp+arg_0]
                sub     [rbx+240h], rcx
                mov     rax, [r13+28h]
                cmp     rax, 0FF000h
                jb      short loc_14058A73F
                add     [rbx+248h], rax

loc_14058A73F:                          ; CODE XREF: sub_14058A474+2C2↑j
                test    r14b, r14b
                jnz     loc_14058AA24
                mov     r14, [rbp+var_30]
                movzx   eax, word ptr [rbx+8Ch]
                add     r14, rcx
                mov     [r14+0Ch], ax
                mov     rcx, [rbp+var_30]
                add     rcx, [rbp+arg_0]
                cmp     [rbp+var_10], rcx
                jz      loc_14058A7F8
                mov     [r14+0Fh], dil
                mov     [r14+0Ah], dil
                sub     r15, [rbp+arg_0]
                shr     r15, 4
                cmp     cs:dword_140CF9F48, r12d
                mov     [r14+8], r15w
                jl      short loc_14058A7A3
                cmp     r15w, r12w
                ja      short loc_14058A7A3
                lea     rcx, aLongFreeentryS ; "((LONG)FreeEntry->Size > 1)"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058A7A3:                          ; CODE XREF: sub_14058A474+315↑j
                                        ; sub_14058A474+31B↑j
                mov     [r14+0Bh], dil
                mov     rdx, [rsi+28h]
                cmp     rdx, rsi
                jz      short loc_14058A7E8
                mov     r12, r14
                sub     r12, rsi
                shr     r12, 10h
                inc     r12
                cmp     r12, 0FEh
                jb      short loc_14058A7E5
                mov     [rsp+60h+var_38], rdi
                mov     r9, rsi
                mov     r8, r14
                mov     [rsp+60h+var_40], rdi
                mov     ecx, 3
                call    sub_1405937F4
                movzx   r15d, word ptr [r14+8]

loc_14058A7E5:                          ; CODE XREF: sub_14058A474+350↑j
                mov     dil, r12b

loc_14058A7E8:                          ; CODE XREF: sub_14058A474+33A↑j
                mov     [r14+0Eh], dil
                mov     rdx, r14
                movzx   r8d, r15w
                jmp     loc_14058AA1C
; ---------------------------------------------------------------------------

loc_14058A7F8:                          ; CODE XREF: sub_14058A474+2F3↑j
                cmp     [rbx+7Ch], edi
                jz      loc_14058AA24
                mov     cl, [r14+0Ah]
                xor     cl, [r14+9]
                xor     cl, [r14+8]
                mov     [r14+0Bh], cl
                mov     eax, [rbx+88h]
                xor     [r14+8], eax
                jmp     loc_14058AA24
; ---------------------------------------------------------------------------

loc_14058A820:                          ; CODE XREF: sub_14058A474+15D↑j
                lea     rcx, [r13+103Fh]
                mov     r8, 0FFFFFFFFFFFFF000h
                and     rcx, r8
                lea     rax, [r13+50h]
                mov     [rbp+var_30], rcx
                cmp     rcx, rax
                jnz     short loc_14058A849
                add     rcx, 1000h
                mov     [rbp+var_30], rcx

loc_14058A849:                          ; CODE XREF: sub_14058A474+3C8↑j
                test    r14b, r14b
                mov     r14, r12
                jnz     short loc_14058A85E
                shl     r14, 4
                lea     rax, [r13-20h]
                add     rax, r14
                jmp     short loc_14058A866
; ---------------------------------------------------------------------------

loc_14058A85E:                          ; CODE XREF: sub_14058A474+3DB↑j
                shl     r14, 4
                lea     rax, [r14+r13]

loc_14058A866:                          ; CODE XREF: sub_14058A474+3E8↑j
                and     rax, r8
                cmp     rax, rcx
                jb      loc_14058A9F0
                sub     rax, rcx
                mov     [rbp+arg_0], rax
                cmp     byte ptr [r15+0Fh], 3
                jz      short loc_14058A896
                test    rax, rax
                jz      loc_14058A677
                cmp     rax, [rbx+0B0h]
                jb      loc_14058A677

loc_14058A896:                          ; CODE XREF: sub_14058A474+40A↑j
                test    rax, rax
                jz      short loc_14058A8D3
                add     [rbx+264h], r9d
                lea     r8, [rbp+arg_0]
                mov     r9d, 4000h
                lea     rdx, [rbp+var_30]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwFreeVirtualMemory
                test    eax, eax
                jns     short loc_14058A8D3
                mov     edx, 3
                mov     rcx, rbx
                call    sub_14058BFB4
                cmp     [rbp+arg_18], dil
                jmp     loc_14058A6AD
; ---------------------------------------------------------------------------

loc_14058A8D3:                          ; CODE XREF: sub_14058A474+425↑j
                                        ; sub_14058A474+447↑j
                cmp     [rbp+arg_18], dil
                jnz     loc_14058A9C2
                mov     r15, [rbp+arg_0]
                add     r15, [rbp+var_30]
                movzx   eax, word ptr [rbx+8Ch]
                mov     [r15+0Ch], ax
                lea     rax, [r14+r13]
                mov     rcx, [rbp+var_30]
                add     rcx, [rbp+arg_0]
                cmp     rax, rcx
                jz      loc_14058A9A3
                mov     [r15+0Fh], dil
                mov     r12d, 1
                mov     [r15+0Ah], dil
                sub     r14, [rbp+arg_0]
                sub     r14, [rbp+var_30]
                add     r14, r13
                shr     r14, 4
                cmp     cs:dword_140CF9F48, r12d
                mov     [r15+8], r14w
                jl      short loc_14058A949
                cmp     r14w, r12w
                ja      short loc_14058A949
                lea     rcx, aLongFreeentryS_0 ; "(LONG)FreeEntry->Size > 1"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058A949:                          ; CODE XREF: sub_14058A474+4BB↑j
                                        ; sub_14058A474+4C1↑j
                mov     [r15+0Bh], dil
                mov     rdx, [rsi+28h]
                cmp     rdx, rsi
                jz      short loc_14058A98E
                mov     r12, r15
                sub     r12, rsi
                shr     r12, 10h
                inc     r12
                cmp     r12, 0FEh
                jb      short loc_14058A98B
                mov     [rsp+60h+var_38], rdi
                mov     r9, rsi
                mov     r8, r15
                mov     [rsp+60h+var_40], rdi
                mov     ecx, 3
                call    sub_1405937F4
                movzx   r14d, word ptr [r15+8]

loc_14058A98B:                          ; CODE XREF: sub_14058A474+4F6↑j
                mov     dil, r12b

loc_14058A98E:                          ; CODE XREF: sub_14058A474+4E0↑j
                movzx   r8d, r14w
                mov     rdx, r15
                mov     rcx, rbx
                mov     [r15+0Eh], dil
                call    sub_14058B73C
                jmp     short loc_14058A9C2
; ---------------------------------------------------------------------------

loc_14058A9A3:                          ; CODE XREF: sub_14058A474+48C↑j
                cmp     [rbx+7Ch], edi
                jz      short loc_14058A9C2
                mov     cl, [r15+0Ah]
                xor     cl, [r15+9]
                xor     cl, [r15+8]
                mov     [r15+0Bh], cl
                mov     eax, [rbx+88h]
                xor     [r15+8], eax

loc_14058A9C2:                          ; CODE XREF: sub_14058A474+463↑j
                                        ; sub_14058A474+52D↑j ...
                mov     r8, [rbp+var_30]
                lea     rax, [rbp+var_10]
                mov     r9, [rbp+arg_0]
                add     r8, 0FFFFFFFFFFFFFFD0h
                mov     [rsp+60h+var_38], rax
                mov     rdx, rsi
                mov     rcx, rbx
                mov     [rsp+60h+var_40], r13
                call    sub_14058A334
                mov     r8, [rbp+var_10]
                jmp     loc_14058A67A
; ---------------------------------------------------------------------------

loc_14058A9F0:                          ; CODE XREF: sub_14058A474+3F8↑j
                cmp     cs:dword_140CF9F48, r9d
                jl      loc_14058A677
                cmp     [rbp+arg_18], dil
                jz      loc_14058A677
                lea     rcx, aTrailingucr ; "(!TrailingUCR)"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058AA19:                          ; CODE XREF: sub_14058A474+6A↑j
                                        ; sub_14058A474+86↑j
                mov     rdx, rsi

loc_14058AA1C:                          ; CODE XREF: sub_14058A474+209↑j
                                        ; sub_14058A474+37F↑j
                mov     rcx, rbx

loc_14058AA1F:                          ; CODE XREF: sub_14058A474+46↑j
                                        ; sub_14058A474+53↑j
                call    sub_14058B73C

loc_14058AA24:                          ; CODE XREF: sub_14058A474+2CE↑j
                                        ; sub_14058A474+387↑j ...
                mov     rbx, [rsp+60h+arg_8]
                add     rsp, 60h
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
sub_14058A474   endp

byte_14058AA3D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7DA0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14058AA44   proc near               ; CODE XREF: sub_140588EC0+2F6↑p
                                        ; DATA XREF: .pdata:00000001400F7DAC↑o

var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                lea     rax, [rdx+0FFFh]
                mov     rsi, rdx
                and     eax, 0FFFFF000h
                lea     rdx, [rbp+arg_18]
                mov     [rbp+arg_18], rax
                mov     rbx, rcx
                call    sub_14058ACC8
                test    rax, rax
                jz      short loc_14058AAD1
                shr     [rbp+arg_18], 4
                lea     r8, [rbp+arg_18]
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140589820
                mov     r8, [rbp+arg_18]
                mov     rdx, rax
                mov     rcx, rbx
                mov     rdi, rax
                call    sub_14058B73C
                cmp     dword ptr [rbx+7Ch], 0
                jz      loc_14058ACB2
                mov     ecx, [rbx+88h]
                xor     [rdi+8], ecx
                mov     dl, [rdi+0Ah]
                xor     dl, [rdi+9]
                xor     dl, [rdi+8]
                cmp     [rdi+0Bh], dl
                jz      loc_14058ACB2
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140593848
                jmp     loc_14058ACB2
; ---------------------------------------------------------------------------

loc_14058AAD1:                          ; CODE XREF: sub_14058AA44+30↑j
                mov     eax, [rbx+70h]
                test    al, 2
                jz      loc_14058ACB0
                mov     rax, [rbx+0A0h]
                lea     rdi, [rsi+2000h]
                and     [rbp+arg_10], 0
                lea     r9, [rbp+arg_8]
                cmp     rdi, rax
                mov     dword ptr [rsp+50h+var_28], 4
                mov     rcx, rdi
                mov     [rsp+50h+var_30], 2000h
                cmovbe  rcx, rax
                lea     rdx, [rbp+arg_10]
                add     rcx, 0FFFFh
                mov     eax, 0FD0000h
                and     rcx, 0FFFFFFFFFFFF0000h
                cmp     rcx, rax
                cmovnb  rcx, rax
                or      r15, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+arg_8], rcx
                xor     r8d, r8d
                mov     rcx, r15
                call    ZwAllocateVirtualMemory
                test    eax, eax
                jns     short loc_14058AB93

loc_14058AB42:                          ; CODE XREF: sub_14058AA44+13A↓j
                mov     rcx, [rbp+arg_8]
                cmp     rcx, rdi
                jz      short loc_14058AB84
                shr     rcx, 1
                lea     r9, [rbp+arg_8]
                cmp     rcx, rdi
                mov     dword ptr [rsp+50h+var_28], 4
                lea     rdx, [rbp+arg_10]
                mov     [rsp+50h+var_30], 2000h
                cmovb   rcx, rdi
                xor     r8d, r8d
                mov     [rbp+arg_8], rcx
                mov     rcx, r15
                call    ZwAllocateVirtualMemory
                test    eax, eax
                js      short loc_14058AB42
                mov     rcx, [rbp+arg_8]

loc_14058AB84:                          ; CODE XREF: sub_14058AA44+105↑j
                test    eax, eax
                jns     short loc_14058AB97
                inc     dword ptr [rbx+278h]
                jmp     loc_14058ACB0
; ---------------------------------------------------------------------------

loc_14058AB93:                          ; CODE XREF: sub_14058AA44+FC↑j
                mov     rcx, [rbp+arg_8]

loc_14058AB97:                          ; CODE XREF: sub_14058AA44+142↑j
                add     [rbx+0A0h], rcx
                lea     r9, [rbx+178h]
                mov     rax, [rbx+0A8h]
                lea     rcx, [rsi+1000h]
                mov     rdx, [rbx+240h]
                cmp     rcx, rax
                mov     r8, rbx
                cmovbe  rcx, rax
                sub     rdx, [rbx+298h]
                add     rcx, 0FFFh
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     [rbp+var_10], rcx
                call    sub_14029CE7C
                test    eax, eax
                jz      loc_14058AC9A
                mov     dword ptr [rsp+50h+var_28], 4
                lea     r9, [rbp+var_10]
                xor     r8d, r8d
                mov     [rsp+50h+var_30], 1000h
                lea     rdx, [rbp+arg_10]
                mov     rcx, r15
                call    ZwAllocateVirtualMemory
                mov     edi, eax
                test    eax, eax
                js      loc_14058AC9A
                mov     rdx, [rbp+arg_10]
                mov     rcx, rbx
                mov     r9, [rbp+arg_8]
                mov     r8, [rbp+var_10]
                add     r9, 0FFFFFFFFFFFFF000h
                add     r8, rdx
                add     r9, rdx
                mov     [rsp+50h+var_18], r9
                mov     [rsp+50h+var_20], r8
                mov     r8d, 70h ; 'p'
                mov     [rsp+50h+var_28], rdx
                mov     [rsp+50h+var_30], 2
                call    sub_14058B490
                test    al, al
                mov     ecx, 0C0000017h
                cmovz   edi, ecx
                test    edi, edi
                js      short loc_14058AC9A
                cmp     dword ptr [rbx+7Ch], 0
                mov     rax, [rbp+arg_10]
                mov     rdx, [rax+40h]
                jz      short loc_14058AC90
                mov     eax, [rbx+88h]
                xor     [rdx+8], eax
                mov     cl, [rdx+0Ah]
                xor     cl, [rdx+9]
                xor     cl, [rdx+8]
                cmp     [rdx+0Bh], cl
                jz      short loc_14058AC90
                mov     rcx, rbx
                call    sub_140593848

loc_14058AC90:                          ; CODE XREF: sub_14058AA44+22B↑j
                                        ; sub_14058AA44+242↑j
                mov     rax, [rbp+arg_10]
                mov     rdi, [rax+40h]
                jmp     short loc_14058ACB2
; ---------------------------------------------------------------------------

loc_14058AC9A:                          ; CODE XREF: sub_14058AA44+1A0↑j
                                        ; sub_14058AA44+1CD↑j ...
                mov     r9d, 8000h
                lea     r8, [rbp+arg_8]
                lea     rdx, [rbp+arg_10]
                mov     rcx, r15
                call    ZwFreeVirtualMemory

loc_14058ACB0:                          ; CODE XREF: sub_14058AA44+92↑j
                                        ; sub_14058AA44+14A↑j
                xor     edi, edi

loc_14058ACB2:                          ; CODE XREF: sub_14058AA44+5C↑j
                                        ; sub_14058AA44+77↑j ...
                mov     rax, rdi
                add     rsp, 50h
                pop     r15
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058AA44   endp

algn_14058ACC1:                         ; DATA XREF: .pdata:00000001400F7DAC↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14058ACC8   proc near               ; CODE XREF: sub_14058AA44+28↑p
                                        ; DATA XREF: .pdata:00000001400F7DB8↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, rdx
                mov     rbx, rcx
                mov     rdx, [rdx]
                call    sub_140593F98
                lea     r8, [rbx+0F0h]
                mov     r15, rax
                cmp     rax, r8
                jz      loc_14058ADF2
                cmp     cs:dword_140CF9F48, 1
                jl      short loc_14058AD25
                mov     rcx, [r14]
                cmp     [rax+28h], rcx
                jnb     short loc_14058AD25
                lea     rcx, aUcrblockSizeSi ; "(UCRBlock->Size >= *Size)"
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058AD25:                          ; CODE XREF: sub_14058ACC8+40↑j
                                        ; sub_14058ACC8+49↑j
                lea     rdi, [rax-10h]
                xor     ebp, ebp
                movzx   eax, byte ptr [rdi+0Eh]
                test    al, al
                jz      short loc_14058AD4D
                shl     rax, 10h
                mov     rsi, rdi
                and     rsi, 0FFFFFFFFFFFF0000h
                sub     rsi, rax
                add     rsi, 10000h
                jmp     short loc_14058AD50
; ---------------------------------------------------------------------------

loc_14058AD4D:                          ; CODE XREF: sub_14058ACC8+69↑j
                mov     rsi, rbx

loc_14058AD50:                          ; CODE XREF: sub_14058ACC8+83↑j
                mov     rax, [r15+20h]
                mov     [rsp+48h+arg_0], rax
                mov     rax, [rbx+168h]
                xor     rax, cs:qword_140C54310
                jz      short loc_14058AD7B
                mov     r8, r14
                lea     rdx, [rsp+48h+arg_0]
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     short loc_14058ADE8
; ---------------------------------------------------------------------------

loc_14058AD7B:                          ; CODE XREF: sub_14058ACC8+9F↑j
                mov     rcx, [r14]
                lea     r9, [rbx+178h]
                add     rcx, 0FFFh
                mov     r8, rbx
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     [r14], rcx
                mov     rdx, [rbx+240h]
                sub     rdx, [rbx+298h]
                call    sub_14029CE7C
                test    eax, eax
                jnz     short loc_14058ADB7
                mov     eax, 0C000012Dh
                jmp     short loc_14058ADDB
; ---------------------------------------------------------------------------

loc_14058ADB7:                          ; CODE XREF: sub_14058ACC8+E6↑j
                mov     dword ptr [rsp+48h+var_20], 4
                lea     rdx, [rsp+48h+arg_0]
                mov     r9, r14
                mov     dword ptr [rsp+48h+var_28], 1000h
                xor     r8d, r8d
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwAllocateVirtualMemory

loc_14058ADDB:                          ; CODE XREF: sub_14058ACC8+ED↑j
                mov     edx, 2
                mov     rcx, rbx
                call    sub_14058BFB4

loc_14058ADE8:                          ; CODE XREF: sub_14058ACC8+B1↑j
                test    eax, eax
                jns     short loc_14058AE0E
                inc     dword ptr [rbx+278h]

loc_14058ADF2:                          ; CODE XREF: sub_14058ACC8+33↑j
                xor     eax, eax

loc_14058ADF4:                          ; CODE XREF: sub_14058ACC8+250↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14058AE0E:                          ; CODE XREF: sub_14058ACC8+122↑j
                cmp     [rbx+7Ch], ebp
                jz      short loc_14058AE35
                mov     eax, [rbx+88h]
                xor     [rdi+8], eax
                mov     cl, [rdi+0Ah]
                xor     cl, [rdi+9]
                xor     cl, [rdi+8]
                cmp     [rdi+0Bh], cl
                jz      short loc_14058AE35
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140593848

loc_14058AE35:                          ; CODE XREF: sub_14058ACC8+149↑j
                                        ; sub_14058ACC8+160↑j
                mov     rdx, r15
                mov     [rdi+0Ah], bpl
                mov     [rdi+0Fh], bpl
                call    sub_14058BBD8
                or      ecx, 0FFFFFFFFh
                add     [rsi+54h], ecx
                mov     rax, [r15+28h]
                shr     rax, 0Ch
                sub     [rsi+50h], eax
                mov     rax, [r15+28h]
                add     [rbx+240h], rax
                inc     dword ptr [rbx+260h]
                add     [rbx+25Ch], ecx
                mov     r9, [r15+28h]
                cmp     r9, 0FF000h
                jb      short loc_14058AE85
                sub     [rbx+248h], r9
                mov     r9, [r15+28h]

loc_14058AE85:                          ; CODE XREF: sub_14058ACC8+1B0↑j
                mov     rdx, [r14]
                cmp     r9, rdx
                ja      short loc_14058AEAA
                mov     rcx, [r15+20h]
                add     rcx, r9
                cmp     rcx, [rsi+48h]
                jz      short loc_14058AEAA
                movzx   eax, word ptr [rdi+8]
                shl     rax, 4
                add     rax, rdx
                mov     [r14], rax
                jmp     short loc_14058AED1
; ---------------------------------------------------------------------------

loc_14058AEAA:                          ; CODE XREF: sub_14058ACC8+1C3↑j
                                        ; sub_14058ACC8+1D0↑j
                mov     r8, [r15+20h]
                sub     r9, rdx
                add     rdx, 0FFFFFFFFFFFFFFD0h
                mov     [rsp+48h+var_20], r14
                add     r8, rdx
                mov     [rsp+48h+var_28], rdi
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14058A334
                shl     qword ptr [r14], 4

loc_14058AED1:                          ; CODE XREF: sub_14058ACC8+1E0↑j
                mov     [rdi+0Bh], bpl
                mov     rdx, [rsi+28h]
                cmp     rdx, rsi
                jz      short loc_14058AF11
                mov     rbx, rdi
                sub     rbx, rsi
                shr     rbx, 10h
                inc     rbx
                cmp     rbx, 0FEh
                jb      short loc_14058AF0E
                mov     [rsp+48h+var_20], rbp
                mov     r9, rsi
                mov     r8, rdi
                mov     [rsp+48h+var_28], rbp
                mov     ecx, 3
                call    sub_1405937F4

loc_14058AF0E:                          ; CODE XREF: sub_14058ACC8+22A↑j
                mov     bpl, bl

loc_14058AF11:                          ; CODE XREF: sub_14058ACC8+214↑j
                mov     [rdi+0Eh], bpl
                mov     rax, rdi
                jmp     loc_14058ADF4
sub_14058ACC8   endp

; ---------------------------------------------------------------------------
byte_14058AF1D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7DB8↑o

; =============== S U B R O U T I N E =======================================


sub_14058AF24   proc near               ; CODE XREF: sub_140316754+15943F↑p
                                        ; DATA XREF: .pdata:00000001400F7DC4↑o

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = byte ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_40          = dword ptr -40h
var_30          = dword ptr -30h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+8], rcx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rdi, r8
                mov     rbx, rcx
                xor     r12d, r12d
                mov     [rax+20h], r12
                mov     r15b, r12b
                mov     [rax-78h], r12b
                mov     [rax-58h], r12
                cmp     rcx, r8
                jnz     short loc_14058AF97
                mov     [rax-80h], r12
                mov     [rsp+0A8h+var_88], r12
                xor     r9d, r9d
                mov     rdx, rcx
                lea     ecx, [r12+9]
                call    sub_1405937F4
                xor     eax, eax

loc_14058AF7E:                          ; CODE XREF: sub_14058AF24+504↓j
                mov     rbx, [rsp+0A8h+arg_8]
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058AF97:                          ; CODE XREF: sub_14058AF24+3D↑j
                or      edx, [rcx+74h]
                mov     r14d, edx
                and     r14d, 3C010F60h

loc_14058AFA4:                          ; DATA XREF: .rdata:00000001400C0560↑o
;   __try { // __finally(loc_14058B42D)
                test    dl, 1
                jnz     short loc_14058B004
                mov     dl, 1
                mov     rcx, [rcx+160h]
                call    ExAcquireResourceExclusiveLite
                mov     r15b, 1
                mov     [rsp+0A8h+var_78], r15b
                cmp     [rbx+7Ch], r12d
                jz      short loc_14058AFE7
                mov     eax, [rbx+88h]
                xor     [rdi+8], eax
                mov     cl, [rdi+0Ah]
                xor     cl, [rdi+9]
                xor     cl, [rdi+8]
                cmp     [rdi+0Bh], cl
                jz      short loc_14058AFE7
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140593848

loc_14058AFE7:                          ; CODE XREF: sub_14058AF24+9F↑j
                                        ; sub_14058AF24+B6↑j
                movzx   edx, word ptr [rdi+8]
                mov     rcx, [rbx+138h]

loc_14058AFF2:                          ; CODE XREF: sub_14058AF24+DE↓j
                mov     eax, [rcx+8]
                cmp     rdx, rax
                jb      short loc_14058B031
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_14058B031
                jmp     short loc_14058AFF2
; ---------------------------------------------------------------------------

loc_14058B004:                          ; CODE XREF: sub_14058AF24+83↑j
                cmp     [rcx+7Ch], r12d
                jz      short loc_14058B031
                mov     eax, [rcx+88h]
                xor     [r8+8], eax
                mov     cl, [r8+0Ah]
                xor     cl, [r8+9]
                xor     cl, [r8+8]
                cmp     [r8+0Bh], cl
                jz      short loc_14058B031
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140593848

loc_14058B031:                          ; CODE XREF: sub_14058AF24+D4↑j
                                        ; sub_14058AF24+DC↑j ...
                mov     al, [rdi+0Ah]
                test    al, 8
                jz      short loc_14058B03D
                and     al, 0F7h
                mov     [rdi+0Ah], al

loc_14058B03D:                          ; CODE XREF: sub_14058AF24+112↑j
                cmp     byte ptr [rdi+0Fh], 4
                jz      loc_14058B37A
                movzx   eax, word ptr [rdi+8]
                mov     [rsp+0A8h+arg_18], rax
                lea     r8, [rsp+0A8h+arg_18]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140589820
                mov     rsi, rax
                mov     [rsp+0A8h+arg_10], rax
                mov     r8, [rsp+0A8h+arg_18]
                cmp     r8, [rbx+0B0h]
                jb      short loc_14058B0A6
                mov     rax, [rbx+0C0h]
                lea     rcx, [r8+rax]
                cmp     rcx, [rbx+0B8h]
                jb      short loc_14058B0A6
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14058A474
                jmp     loc_14058B36D
; ---------------------------------------------------------------------------

loc_14058B0A6:                          ; CODE XREF: sub_14058AF24+15C↑j
                                        ; sub_14058AF24+170↑j
                cmp     r8, 0FF00h
                ja      loc_14058B362
                test    r14d, r14d
                movzx   r14d, r8w
                jnz     loc_14058B1C1
                mov     [rsi+0Ah], r12b
                mov     [rsi+0Fh], r12b
                lea     rdi, [rbx+150h]
                cmp     [rbx+138h], r12
                jz      short loc_14058B0E8
                mov     edx, r14d
                mov     rcx, rbx
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_14058B0EB
; ---------------------------------------------------------------------------

loc_14058B0E8:                          ; CODE XREF: sub_14058AF24+1B2↑j
                mov     r8, [rdi]

loc_14058B0EB:                          ; CODE XREF: sub_14058AF24+1C2↑j
                                        ; sub_14058AF24+20F↓j
                cmp     rdi, r8
                jz      short loc_14058B135
                cmp     [rbx+7Ch], r12d
                jz      short loc_14058B123
                mov     ecx, [r8-8]
                mov     [rsp+0A8h+var_40], ecx
                test    [rbx+7Ch], ecx
                jz      short loc_14058B10F
                mov     eax, [rbx+88h]
                xor     eax, ecx
                mov     [rsp+0A8h+var_40], eax

loc_14058B10F:                          ; CODE XREF: sub_14058AF24+1DD↑j
                movzx   eax, word ptr [rsp+0A8h+var_40]
                mov     rsi, [rsp+0A8h+arg_10]
                mov     r15b, [rsp+0A8h+var_78]
                jmp     short loc_14058B128
; ---------------------------------------------------------------------------

loc_14058B123:                          ; CODE XREF: sub_14058AF24+1D0↑j
                movzx   eax, word ptr [r8-8]

loc_14058B128:                          ; CODE XREF: sub_14058AF24+1FD↑j
                movzx   eax, ax
                cmp     r14, rax
                jbe     short loc_14058B135
                mov     r8, [r8]
                jmp     short loc_14058B0EB
; ---------------------------------------------------------------------------

loc_14058B135:                          ; CODE XREF: sub_14058AF24+1CA↑j
                                        ; sub_14058AF24+20A↑j
                lea     rdi, [rsi+10h]
                mov     rax, [r8+8]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058B155
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_14058B16C
; ---------------------------------------------------------------------------

loc_14058B155:                          ; CODE XREF: sub_14058AF24+21F↑j
                mov     [rsp+0A8h+var_80], r12
                mov     [rsp+0A8h+var_88], rcx
                xor     r9d, r9d
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058B16C:                          ; CODE XREF: sub_14058AF24+22F↑j
                movzx   eax, word ptr [rsi+8]
                add     [rbx+0C0h], rax
                mov     rdx, [rbx+138h]
                test    rdx, rdx
                jz      loc_14058B340
                mov     [rsp+0A8h+var_70], r12
                movzx   ecx, word ptr [rsi+8]

loc_14058B190:                          ; CODE XREF: sub_14058AF24+29B↓j
                mov     r8d, [rdx+8]
                cmp     rcx, r8
                jnb     short loc_14058B1A6
                mov     rax, rcx
                mov     [rsp+0A8h+var_70], rcx
                jmp     loc_14058B32C
; ---------------------------------------------------------------------------

loc_14058B1A6:                          ; CODE XREF: sub_14058AF24+273↑j
                mov     rax, [rdx]
                test    rax, rax
                jnz     short loc_14058B1BC
                lea     eax, [r8-1]
                mov     [rsp+0A8h+var_70], rax
                jmp     loc_14058B32C
; ---------------------------------------------------------------------------

loc_14058B1BC:                          ; CODE XREF: sub_14058AF24+288↑j
                mov     rdx, rax
                jmp     short loc_14058B190
; ---------------------------------------------------------------------------

loc_14058B1C1:                          ; CODE XREF: sub_14058AF24+196↑j
                mov     al, [rsi+0Ah]
                and     al, 0F0h
                mov     [rsi+0Ah], al
                mov     [rsi+0Fh], r12b
                mov     eax, [rbx+70h]
                test    al, 40h
                jz      short loc_14058B244
                mov     rdx, r14
                shl     rdx, 4
                sub     rdx, 20h ; ' '
                mov     [rsp+0A8h+var_68], rdx
                lea     r8, [rsi+20h]
                mov     [rsp+0A8h+var_50], r8
                shr     rdx, 2
                mov     [rsp+0A8h+var_68], rdx
                test    rdx, rdx
                jz      short loc_14058B240
                test    r8b, 4
                jz      short loc_14058B21C
                mov     dword ptr [r8], 0FEEEFEEEh
                sub     rdx, 1
                mov     [rsp+0A8h+var_68], rdx
                jz      short loc_14058B240
                add     r8, 4
                mov     [rsp+0A8h+var_50], r8

loc_14058B21C:                          ; CODE XREF: sub_14058AF24+2DB↑j
                mov     rcx, rdx
                shr     rcx, 1
                mov     rax, 0FEEEFEEEFEEEFEEEh
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jz      short loc_14058B240
                mov     dword ptr [r8+rdx*4-4], 0FEEEFEEEh

loc_14058B240:                          ; CODE XREF: sub_14058AF24+2D5↑j
                                        ; sub_14058AF24+2ED↑j ...
                or      byte ptr [rsi+0Ah], 4

loc_14058B244:                          ; CODE XREF: sub_14058AF24+2AE↑j
                lea     rdi, [rbx+150h]
                cmp     [rbx+138h], r12
                jz      short loc_14058B264
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_140593F1C
                mov     r8, rax
                jmp     short loc_14058B267
; ---------------------------------------------------------------------------

loc_14058B264:                          ; CODE XREF: sub_14058AF24+32E↑j
                mov     r8, [rdi]

loc_14058B267:                          ; CODE XREF: sub_14058AF24+33E↑j
                                        ; sub_14058AF24+38B↓j
                cmp     rdi, r8
                jz      short loc_14058B2B1
                cmp     [rbx+7Ch], r12d
                jz      short loc_14058B29F
                mov     ecx, [r8-8]
                mov     [rsp+0A8h+var_30], ecx
                test    [rbx+7Ch], ecx
                jz      short loc_14058B28B
                mov     eax, [rbx+88h]
                xor     eax, ecx
                mov     [rsp+0A8h+var_30], eax

loc_14058B28B:                          ; CODE XREF: sub_14058AF24+359↑j
                movzx   eax, word ptr [rsp+0A8h+var_30]
                mov     rsi, [rsp+0A8h+arg_10]
                mov     r15b, [rsp+0A8h+var_78]
                jmp     short loc_14058B2A4
; ---------------------------------------------------------------------------

loc_14058B29F:                          ; CODE XREF: sub_14058AF24+34C↑j
                movzx   eax, word ptr [r8-8]

loc_14058B2A4:                          ; CODE XREF: sub_14058AF24+379↑j
                movzx   eax, ax
                cmp     r14, rax
                jbe     short loc_14058B2B1
                mov     r8, [r8]
                jmp     short loc_14058B267
; ---------------------------------------------------------------------------

loc_14058B2B1:                          ; CODE XREF: sub_14058AF24+346↑j
                                        ; sub_14058AF24+386↑j
                lea     rdi, [rsi+10h]
                mov     rax, [r8+8]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058B2D1
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_14058B2E8
; ---------------------------------------------------------------------------

loc_14058B2D1:                          ; CODE XREF: sub_14058AF24+39B↑j
                mov     [rsp+0A8h+var_80], r12
                mov     [rsp+0A8h+var_88], rcx
                xor     r9d, r9d
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058B2E8:                          ; CODE XREF: sub_14058AF24+3AB↑j
                movzx   eax, word ptr [rsi+8]
                add     [rbx+0C0h], rax
                mov     rdx, [rbx+138h]
                test    rdx, rdx
                jz      short loc_14058B340
                mov     [rsp+0A8h+var_60], r12
                movzx   ecx, word ptr [rsi+8]

loc_14058B308:                          ; CODE XREF: sub_14058AF24+43C↓j
                mov     r8d, [rdx+8]
                cmp     rcx, r8
                jnb     short loc_14058B31B
                mov     rax, rcx
                mov     [rsp+0A8h+var_60], rcx
                jmp     short loc_14058B32C
; ---------------------------------------------------------------------------

loc_14058B31B:                          ; CODE XREF: sub_14058AF24+3EB↑j
                mov     rax, [rdx]
                test    rax, rax
                jnz     short loc_14058B35D
                lea     eax, [r8-1]
                mov     [rsp+0A8h+var_60], rax

loc_14058B32C:                          ; CODE XREF: sub_14058AF24+27D↑j
                                        ; sub_14058AF24+293↑j ...
                mov     [rsp+0A8h+var_80], rcx
                mov     dword ptr [rsp+0A8h+var_88], eax
                mov     r9, rdi
                mov     rcx, rbx
                call    sub_140594040

loc_14058B340:                          ; CODE XREF: sub_14058AF24+25D↑j
                                        ; sub_14058AF24+3D9↑j
                cmp     [rbx+7Ch], r12d
                jz      short loc_14058B36D
                mov     cl, [rsi+0Ah]
                xor     cl, [rsi+9]
                xor     cl, [rsi+8]
                mov     [rsi+0Bh], cl
                mov     eax, [rbx+88h]
                xor     [rsi+8], eax
                jmp     short loc_14058B36D
; ---------------------------------------------------------------------------

loc_14058B35D:                          ; CODE XREF: sub_14058AF24+3FD↑j
                mov     rdx, rax
                jmp     short loc_14058B308
; ---------------------------------------------------------------------------

loc_14058B362:                          ; CODE XREF: sub_14058AF24+189↑j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14058B73C

loc_14058B36D:                          ; CODE XREF: sub_14058AF24+17D↑j
                                        ; sub_14058AF24+420↑j ...
                mov     [rsp+0A8h+arg_10], r12
                jmp     loc_14058B412
; ---------------------------------------------------------------------------

loc_14058B37A:                          ; CODE XREF: sub_14058AF24+11D↑j
                lea     r8, [rdi-30h]
                mov     rcx, [r8+20h]
                mov     rax, r8
                and     rax, 0FFFFFFFFFFFF0000h
                mov     [rsp+0A8h+var_58], rax
                sub     [rbx+250h], rcx
                mov     rax, [r8]
                mov     rcx, [r8+8]
                mov     rdx, [rcx]
                mov     r9, [rax+8]
                cmp     rdx, r9
                jnz     short loc_14058B3B8
                cmp     rdx, r8
                jnz     short loc_14058B3B8
                mov     [rcx], rax
                mov     [rax+8], rcx
                jmp     short loc_14058B3CC
; ---------------------------------------------------------------------------

loc_14058B3B8:                          ; CODE XREF: sub_14058AF24+484↑j
                                        ; sub_14058AF24+489↑j
                mov     [rsp+0A8h+var_80], r12
                mov     [rsp+0A8h+var_88], rdx
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058B3CC:                          ; CODE XREF: sub_14058AF24+492↑j
                mov     [rsp+0A8h+arg_10], r12
                test    r15b, r15b
                jz      short loc_14058B3ED
                mov     rcx, [rbx+160h]
                call    ExReleaseResourceLite
                mov     r15b, r12b
                mov     [rsp+0A8h+var_78], r12b

loc_14058B3ED:                          ; CODE XREF: sub_14058AF24+4B3↑j
                mov     [rsp+0A8h+arg_18], r12
                mov     r9d, 8000h
                lea     r8, [rsp+0A8h+arg_18]
                lea     rdx, [rsp+0A8h+var_58]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwFreeVirtualMemory
                nop
;   } // starts at 14058AFA4

loc_14058B412:                          ; CODE XREF: sub_14058AF24+451↑j
                                        ; DATA XREF: .rdata:00000001400C0560↑o
                test    r15b, r15b
                jz      short loc_14058B423
                mov     rcx, [rbx+160h]
                call    ExReleaseResourceLite

loc_14058B423:                          ; CODE XREF: sub_14058AF24+4F1↑j
                mov     eax, 1
                jmp     loc_14058AF7E
; } // starts at 14058AF24
; ---------------------------------------------------------------------------

loc_14058B42D:                          ; DATA XREF: .rdata:00000001400C0560↑o
                                        ; .pdata:00000001400F7DC4↑o ...
;   __finally // owned by 14058AFA4
                push    rbp
                push    rdi
                sub     rsp, 38h
                mov     rbp, rdx
                mov     rdx, [rbp+0C0h]
                test    rdx, rdx
                jz      short loc_14058B465
                mov     rdi, [rbp+0B0h]
                cmp     dword ptr [rdi+7Ch], 0
                jz      short loc_14058B465
                mov     cl, [rdx+0Ah]
                xor     cl, [rdx+9]
                xor     cl, [rdx+8]
                mov     [rdx+0Bh], cl
                mov     eax, [rdi+88h]
                xor     [rdx+8], eax

loc_14058B465:                          ; CODE XREF: sub_14058AF24+51D↑j
                                        ; sub_14058AF24+52A↑j
                cmp     byte ptr [rbp+30h], 0
                jz      short loc_14058B47F
                mov     rcx, [rbp+0B0h]
                mov     rcx, [rcx+160h]
                call    ExReleaseResourceLite
                nop

loc_14058B47F:                          ; CODE XREF: sub_14058AF24+545↑j
                add     rsp, 38h
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058AF24   endp

algn_14058B487:                         ; DATA XREF: .pdata:00000001400F7DD0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14058B490   proc near               ; CODE XREF: sub_14058AA44+20C↑p
                                        ; RtlCreateHeap+DE532↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

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
                mov     rbp, [rsp+68h+arg_38]
                mov     rbx, rcx
                mov     r12, [rsp+68h+arg_28]
                mov     rax, rbp
                and     qword ptr [r11-38h], 0
                sub     rax, r12
                mov     ecx, 0FFFFF000h
                mov     rdi, rdx
                cmp     rax, rcx
                ja      loc_14058B638
                cqo
                lea     r14, [r8+0Fh]
                mov     r8, [r11+38h]
                mov     r15d, 1000h
                idiv    r15
                and     r14, 0FFFFFFFFFFFFFFF0h
                mov     r13, rax
                lea     rsi, [r14+rdi]
                sar     r14, 4
                lea     rcx, [rsi+50h]
                cmp     rcx, r8
                jb      loc_14058B593
                cmp     rcx, rbp
                jnb     loc_14058B638
                mov     rdx, [rbx+240h]
                lea     r9, [rbx+178h]
                sub     rdx, [rbx+298h]
                mov     rcx, rsi
                sub     rcx, r8
                mov     r8, rbx
                add     rcx, 100Fh
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     [r11-38h], rcx
                call    sub_14029CE7C
                test    eax, eax
                jz      loc_14058B632
                mov     dword ptr [rsp+68h+var_40], 4
                lea     r9, [rsp+68h+var_38]
                xor     r8d, r8d
                mov     dword ptr [rsp+68h+var_48], r15d
                lea     rdx, [rsp+68h+arg_30]
                or      rcx, 0FFFFFFFFFFFFFFFFh
                call    ZwAllocateVirtualMemory
                test    eax, eax
                js      loc_14058B632
                mov     r8, [rsp+68h+arg_30]
                add     r8, [rsp+68h+var_38]
                mov     [rsp+68h+arg_30], r8

loc_14058B593:                          ; CODE XREF: sub_14058B490+74↑j
                mov     [rdi+8], r14w
                sub     rbp, r8
                mov     word ptr [rdi+0Ah], 1
                mov     rax, rbp
                cqo
                mov     byte ptr [rdi+0Fh], 1
                movzx   ecx, word ptr [rbx+8Ch]
                xor     r14d, r14d
                idiv    r15
                mov     [rdi+0Ch], cx
                mov     ecx, [rsp+68h+arg_20]
                mov     r15, rax
                mov     [rdi+28h], rbx
                mov     eax, r13d
                mov     [rdi+14h], ecx
                shl     eax, 0Ch
                mov     ecx, eax
                add     rax, r12
                mov     [rdi+48h], rax
                lea     rax, [rdi+60h]
                mov     dword ptr [rdi+10h], 0FFEEFFEEh
                mov     [rdi+30h], r12
                mov     [rdi+40h], rsi
                mov     [rdi+38h], r13d
                mov     [rdi+50h], r14d
                add     [rbx+240h], rcx
                add     [rbx+238h], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                cmp     [rdi+28h], rdi
                setnz   al
                mov     [rdi+0Eh], al
                movzx   ecx, word ptr [rbx+8Ch]
                xor     cx, [rdi+8]
                mov     [rsi+0Ch], cx
                mov     rdx, [rdi+28h]
                cmp     rdx, rdi
                jnz     short loc_14058B659
                mov     bpl, r14b
                jmp     short loc_14058B691
; ---------------------------------------------------------------------------

loc_14058B632:                          ; CODE XREF: sub_14058B490+BA↑j
                                        ; sub_14058B490+E8↑j
                inc     dword ptr [rbx+278h]

loc_14058B638:                          ; CODE XREF: sub_14058B490+45↑j
                                        ; sub_14058B490+7D↑j
                xor     al, al

loc_14058B63A:                          ; CODE XREF: sub_14058B490+2A0↓j
                lea     r11, [rsp+68h+var_28]
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

loc_14058B659:                          ; CODE XREF: sub_14058B490+19B↑j
                mov     rbp, rsi
                sub     rbp, rdi
                shr     rbp, 10h
                inc     rbp
                cmp     rbp, 0FEh
                jb      short loc_14058B691
                mov     [rsp+68h+var_40], r14
                mov     r9, rdi
                mov     r8, rsi
                mov     [rsp+68h+var_48], r14
                mov     ecx, 3
                call    sub_1405937F4
                mov     r8, [rsp+68h+arg_30]

loc_14058B691:                          ; CODE XREF: sub_14058B490+1A0↑j
                                        ; sub_14058B490+1DD↑j
                lea     rax, [rsp+68h+var_38]
                shl     r15d, 0Ch
                mov     [rsp+68h+var_40], rax
                add     r8, 0FFFFFFFFFFFFFFD0h
                mov     r9d, r15d
                mov     rdx, rdi
                mov     rcx, rbx
                mov     [rsp+68h+var_48], rsi
                mov     [rsi+0Eh], bpl
                call    sub_14058A334
                cmp     [rbx+7Ch], r14d
                jz      short loc_14058B6D5
                mov     cl, [rdi+0Ah]
                xor     cl, [rdi+9]
                xor     cl, [rdi+8]
                mov     [rdi+0Bh], cl
                mov     eax, [rbx+88h]
                xor     [rdi+8], eax

loc_14058B6D5:                          ; CODE XREF: sub_14058B490+22E↑j
                mov     r8, [rsp+68h+var_38]
                test    r8, r8
                jz      short loc_14058B6EA
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_14058B73C

loc_14058B6EA:                          ; CODE XREF: sub_14058B490+24D↑j
                lea     r8, [rbx+120h]
                add     rdi, 18h
                mov     rax, [r8+8]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058B711
                mov     [rdi], r8
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     [r8+8], rdi
                jmp     short loc_14058B728
; ---------------------------------------------------------------------------

loc_14058B711:                          ; CODE XREF: sub_14058B490+26F↑j
                xor     edx, edx
                mov     [rsp+68h+var_40], r14
                mov     [rsp+68h+var_48], rcx
                xor     r9d, r9d
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058B728:                          ; CODE XREF: sub_14058B490+27F↑j
                inc     dword ptr [rbx+258h]
                mov     al, 1
                jmp     loc_14058B63A
sub_14058B490   endp

; ---------------------------------------------------------------------------
byte_14058B735  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7DDC↑o

; =============== S U B R O U T I N E =======================================


sub_14058B73C   proc near               ; CODE XREF: sub_140589C10+48B↑p
                                        ; sub_14058A474+528↑p ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_30          = dword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

                test    r8, r8
                jz      locret_14058BA76
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rbx, rdx
                xor     r9d, r9d
                movzx   edx, word ptr [rdx+0Ch]
                mov     r15, r8
                xor     dx, [rcx+8Ch]
                mov     rsi, rcx
                jnz     short loc_14058B7AD
                cmp     cs:dword_140CF9F48, 1
                jl      short loc_14058B7AD
                test    byte ptr [rbx+0Ah], 8
                jnz     short loc_14058B7AD
                lea     rax, [rbx+0FFFh]
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rax, rbx
                jz      short loc_14058B7AD
                lea     rcx, aFreeblockFlags ; "((FreeBlock->Flags & HEAP_ENTRY_DECOMMI"...
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058B7AD:                          ; CODE XREF: sub_14058B73C+3C↑j
                                        ; sub_14058B73C+45↑j ...
                movzx   eax, byte ptr [rbx+0Eh]
                test    al, al
                jz      short loc_14058B7CF
                shl     rax, 10h
                mov     rbp, rbx
                and     rbp, 0FFFFFFFFFFFF0000h
                sub     rbp, rax
                add     rbp, 10000h
                jmp     short loc_14058B7D2
; ---------------------------------------------------------------------------

loc_14058B7CF:                          ; CODE XREF: sub_14058B73C+77↑j
                mov     rbp, rsi

loc_14058B7D2:                          ; CODE XREF: sub_14058B73C+91↑j
                mov     al, [rbx+0Ah]
                lea     r14, [rcx+150h]
                mov     [rsp+68h+arg_10], al
                mov     edi, 0FF00h

loc_14058B7E8:                          ; CODE XREF: sub_14058B73C+2CB↓j
                cmp     r15, rdi
                jbe     short loc_14058B801
                cmp     r15, 0FF01h
                mov     r12d, 0FEF0h
                cmovnz  r12w, di
                jmp     short loc_14058B805
; ---------------------------------------------------------------------------

loc_14058B801:                          ; CODE XREF: sub_14058B73C+AF↑j
                movzx   r12d, r15w

loc_14058B805:                          ; CODE XREF: sub_14058B73C+C3↑j
                movzx   eax, al
                cmp     r15, rdi
                mov     ecx, r9d
                cmovbe  ecx, eax
                mov     [rbx+0Ah], cl
                movzx   eax, word ptr [rsi+8Ch]
                xor     ax, dx
                mov     [rbx+0Ch], ax
                mov     rdx, [rbp+28h]
                cmp     rdx, rbp
                jnz     short loc_14058B830
                mov     dil, r9b
                jmp     short loc_14058B863
; ---------------------------------------------------------------------------

loc_14058B830:                          ; CODE XREF: sub_14058B73C+ED↑j
                mov     rdi, rbx
                sub     rdi, rbp
                shr     rdi, 10h
                inc     rdi
                cmp     rdi, 0FEh
                jb      short loc_14058B863
                mov     [rsp+68h+var_40], r9
                mov     r8, rbx
                mov     [rsp+68h+var_48], r9
                mov     ecx, 3
                mov     r9, rbp
                call    sub_1405937F4
                xor     r9d, r9d

loc_14058B863:                          ; CODE XREF: sub_14058B73C+F2↑j
                                        ; sub_14058B73C+108↑j
                and     byte ptr [rbx+0Ah], 0F0h
                mov     [rbx+0Eh], dil
                mov     [rbx+8], r12w
                mov     [rbx+0Bh], r9b
                mov     [rbx+0Fh], r9b
                mov     eax, [rsi+70h]
                movzx   r13d, r12w
                test    al, 40h
                jz      short loc_14058B8D7
                mov     edx, r13d
                lea     r8, [rbx+20h]
                shl     rdx, 4
                sub     rdx, 20h ; ' '
                shr     rdx, 2
                test    rdx, rdx
                jz      short loc_14058B8D3
                test    r8b, 4
                jz      short loc_14058B8AF
                dec     rdx
                mov     dword ptr [r8], 0FEEEFEEEh
                add     r8, 4

loc_14058B8AF:                          ; CODE XREF: sub_14058B73C+163↑j
                mov     rcx, rdx
                mov     rax, 0FEEEFEEEFEEEFEEEh
                shr     rcx, 1
                mov     rdi, r8
                rep stosq
                test    dl, 1
                jz      short loc_14058B8D3
                mov     dword ptr [r8+rdx*4-4], 0FEEEFEEEh

loc_14058B8D3:                          ; CODE XREF: sub_14058B73C+15D↑j
                                        ; sub_14058B73C+18C↑j
                or      byte ptr [rbx+0Ah], 4

loc_14058B8D7:                          ; CODE XREF: sub_14058B73C+145↑j
                cmp     [rsi+138h], r9
                jz      short loc_14058B8F3
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_140593F1C
                mov     r8, rax
                xor     r9d, r9d
                jmp     short loc_14058B8F6
; ---------------------------------------------------------------------------

loc_14058B8F3:                          ; CODE XREF: sub_14058B73C+1A2↑j
                mov     r8, [r14]

loc_14058B8F6:                          ; CODE XREF: sub_14058B73C+1B5↑j
                cmp     r14, r8
                jz      short loc_14058B937
                mov     ecx, [rsi+7Ch]

loc_14058B8FE:                          ; CODE XREF: sub_14058B73C+1F9↓j
                test    ecx, ecx
                jz      short loc_14058B922
                mov     eax, [r8-8]
                mov     ecx, [rsi+7Ch]
                mov     [rsp+68h+var_30], eax
                test    eax, ecx
                jz      short loc_14058B91B
                xor     eax, [rsi+88h]
                mov     [rsp+68h+var_30], eax

loc_14058B91B:                          ; CODE XREF: sub_14058B73C+1D3↑j
                movzx   eax, word ptr [rsp+68h+var_30]
                jmp     short loc_14058B927
; ---------------------------------------------------------------------------

loc_14058B922:                          ; CODE XREF: sub_14058B73C+1C4↑j
                movzx   eax, word ptr [r8-8]

loc_14058B927:                          ; CODE XREF: sub_14058B73C+1E4↑j
                movzx   eax, ax
                cmp     r13, rax
                jbe     short loc_14058B937
                mov     r8, [r8]
                cmp     r14, r8
                jnz     short loc_14058B8FE

loc_14058B937:                          ; CODE XREF: sub_14058B73C+1BD↑j
                                        ; sub_14058B73C+1F1↑j
                mov     rax, [r8+8]
                lea     r14, [rbx+10h]
                mov     rcx, [rax]
                cmp     rcx, r8
                jnz     short loc_14058B957
                mov     [r14], r8
                mov     [r14+8], rax
                mov     [rax], r14
                mov     [r8+8], r14
                jmp     short loc_14058B971
; ---------------------------------------------------------------------------

loc_14058B957:                          ; CODE XREF: sub_14058B73C+209↑j
                mov     [rsp+68h+var_40], r9
                xor     edx, edx
                mov     [rsp+68h+var_48], rcx
                xor     r9d, r9d
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4
                xor     r9d, r9d

loc_14058B971:                          ; CODE XREF: sub_14058B73C+219↑j
                movzx   eax, word ptr [rbx+8]
                add     [rsi+0C0h], rax
                mov     rdx, [rsi+138h]
                test    rdx, rdx
                jz      short loc_14058B9C2
                movzx   edi, word ptr [rbx+8]
                mov     eax, [rdx+8]
                jmp     short loc_14058B9A3
; ---------------------------------------------------------------------------

loc_14058B991:                          ; CODE XREF: sub_14058B73C+26A↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_14058BA4F
                mov     rdx, rax
                mov     eax, [rax+8]

loc_14058B9A3:                          ; CODE XREF: sub_14058B73C+253↑j
                cmp     rdi, rax
                jnb     short loc_14058B991
                mov     rcx, rdi

loc_14058B9AB:                          ; CODE XREF: sub_14058B73C+318↓j
                mov     [rsp+68h+var_40], rdi
                mov     r9, r14
                mov     dword ptr [rsp+68h+var_48], ecx
                mov     rcx, rsi
                call    sub_140594040
                xor     r9d, r9d

loc_14058B9C2:                          ; CODE XREF: sub_14058B73C+24A↑j
                cmp     [rsi+7Ch], r9d
                jz      short loc_14058B9DD
                mov     cl, [rbx+0Ah]
                xor     cl, [rbx+9]
                xor     cl, [rbx+8]
                mov     [rbx+0Bh], cl
                mov     eax, [rsi+88h]
                xor     [rbx+8], eax

loc_14058B9DD:                          ; CODE XREF: sub_14058B73C+28A↑j
                sub     r15, r13
                movzx   edx, r12w
                shl     r13, 4
                add     rbx, r13
                cmp     rbx, [rbp+48h]
                jnb     short loc_14058BA59
                mov     al, [rsp+68h+arg_10]
                lea     r14, [rsi+150h]
                mov     edi, 0FF00h
                test    r15, r15
                jnz     loc_14058B7E8
                movzx   eax, word ptr [rsi+8Ch]
                xor     ax, r12w
                mov     [rbx+0Ch], ax
                test    r12w, r12w
                jnz     short loc_14058BA59
                cmp     cs:dword_140CF9F48, 1
                jl      short loc_14058BA59
                lea     rax, [rbx+0FFFh]
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rax, rbx
                jz      short loc_14058BA59
                lea     rcx, aRoundUpToPower ; "ROUND_UP_TO_POWER2(FreeBlock, PAGE_SIZE"...
                call    DbgPrint
                call    sub_140593B6C
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058BA4F:                          ; CODE XREF: sub_14058B73C+25B↑j
                mov     ecx, [rdx+8]
                dec     ecx
                jmp     loc_14058B9AB
; ---------------------------------------------------------------------------

loc_14058BA59:                          ; CODE XREF: sub_14058B73C+2B3↑j
                                        ; sub_14058B73C+2E4↑j ...
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi

locret_14058BA76:                       ; CODE XREF: sub_14058B73C+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058B73C   endp

algn_14058BA78:                         ; DATA XREF: .pdata:00000001400F7DE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14058BA80   proc near               ; CODE XREF: sub_14058A334+D7↑p
                                        ; sub_14058A474+29D↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rbx, rdx
                mov     rdi, rcx
                mov     rdx, [rdx+28h]
                test    rdx, rdx
                jz      short loc_14058BAD5
                call    sub_140593F98
                mov     rdx, [rax+8]
                mov     rcx, [rdx]
                cmp     rcx, rax
                jnz     short loc_14058BABA
                mov     [rbx], rax
                mov     [rbx+8], rdx
                mov     [rdx], rbx
                mov     [rax+8], rbx
                jmp     short loc_14058BAD5
; ---------------------------------------------------------------------------

loc_14058BABA:                          ; CODE XREF: sub_14058BA80+28↑j
                and     [rsp+38h+var_10], 0
                xor     edx, edx
                mov     [rsp+38h+var_18], rcx
                xor     r9d, r9d
                mov     r8, rax
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058BAD5:                          ; CODE XREF: sub_14058BA80+17↑j
                                        ; sub_14058BA80+38↑j
                lea     rcx, [rbx-10h]
                movzx   eax, byte ptr [rcx+0Eh]
                test    al, al
                jz      short loc_14058BAF8
                shl     rax, 10h
                and     rcx, 0FFFFFFFFFFFF0000h
                sub     rcx, rax
                add     rcx, 10000h
                jmp     short loc_14058BAFB
; ---------------------------------------------------------------------------

loc_14058BAF8:                          ; CODE XREF: sub_14058BA80+5F↑j
                mov     rcx, rdi

loc_14058BAFB:                          ; CODE XREF: sub_14058BA80+76↑j
                lea     r8, [rcx+60h]
                add     rbx, 10h
                mov     rax, [r8]
                mov     r9, [rax+8]
                cmp     r9, r8
                jnz     short loc_14058BB1F
                mov     [rbx], rax
                mov     [rbx+8], r8
                mov     [rax+8], rbx
                mov     [r8], rbx
                jmp     short loc_14058BB35
; ---------------------------------------------------------------------------

loc_14058BB1F:                          ; CODE XREF: sub_14058BA80+8D↑j
                and     [rsp+38h+var_10], 0
                xor     edx, edx
                and     [rsp+38h+var_18], 0
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058BB35:                          ; CODE XREF: sub_14058BA80+9D↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058BA80   endp

algn_14058BB41:                         ; DATA XREF: .pdata:00000001400F7DF4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14058BB48   proc near               ; CODE XREF: sub_140316754+159299↑p
                                        ; sub_14058BDE8+68↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h

; __unwind { // __C_specific_handler
                sub     rsp, 48h

loc_14058BB4C:                          ; DATA XREF: .rdata:00000001400C0710↑o
;   __try { // __except at loc_14058BBA4
                test    dl, 0Fh
                jnz     short loc_14058BB7C
                add     rdx, 0FFFFFFFFFFFFFFF0h
                prefetchw byte ptr [rdx]
                cmp     byte ptr [rdx+0Fh], 5
                jnz     short loc_14058BB69
                movzx   eax, byte ptr [rdx+0Eh]
                shl     rax, 4
                sub     rdx, rax

loc_14058BB69:                          ; CODE XREF: sub_14058BB48+14↑j
                test    byte ptr [rdx+0Fh], 3Fh
                jnz     short loc_14058BB9D
                mov     r8, rdx
                mov     rdx, rcx
                mov     ecx, 8
                jmp     short loc_14058BB87
; ---------------------------------------------------------------------------

loc_14058BB7C:                          ; CODE XREF: sub_14058BB48+7↑j
                mov     r8, rdx
                mov     rdx, rcx
                mov     ecx, 9

loc_14058BB87:                          ; CODE XREF: sub_14058BB48+32↑j
                and     [rsp+48h+var_20], 0
                and     [rsp+48h+var_28], 0
                xor     r9d, r9d
                call    sub_1405937F4
                xor     edx, edx

loc_14058BB9D:                          ; CODE XREF: sub_14058BB48+25↑j
                mov     [rsp+48h+var_18], rdx
                jmp     short loc_14058BBAB
;   } // starts at 14058BB4C
; ---------------------------------------------------------------------------

loc_14058BBA4:                          ; DATA XREF: .rdata:00000001400C0710↑o
;   __except(loc_14058BBB4) // owned by 14058BB4C
                xor     edx, edx
                mov     [rsp+48h+var_18], rdx

loc_14058BBAB:                          ; CODE XREF: sub_14058BB48+5A↑j
                mov     rax, rdx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 4
; } // starts at 14058BB48

loc_14058BBB4:                          ; DATA XREF: .rdata:00000001400C0710↑o
                                        ; .pdata:00000001400F7E00↑o ...
;   __except filter // owned by 14058BB4C
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                mov     rdx, rcx
                mov     rax, [rcx]
                mov     ecx, [rax]
                call    sub_1405936DC
                nop
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058BB48   endp

algn_14058BBD2:                         ; DATA XREF: .pdata:00000001400F7E0C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14058BBD8   proc near               ; CODE XREF: sub_14058A474+E1↑p
                                        ; sub_14058A474+28A↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                push    rbx
                sub     rsp, 30h
                lea     r8, [rdx+10h]
                mov     rbx, rdx
                mov     rax, [r8]
                mov     rcx, [r8+8]
                mov     r9, [rax+8]
                mov     rdx, [rcx]
                cmp     rdx, r9
                jnz     short loc_14058BC06
                cmp     rdx, r8
                jnz     short loc_14058BC06
                mov     [rcx], rax
                mov     [rax+8], rcx
                jmp     short loc_14058BC1B
; ---------------------------------------------------------------------------

loc_14058BC06:                          ; CODE XREF: sub_14058BBD8+1E↑j
                                        ; sub_14058BBD8+23↑j
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rdx
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058BC1B:                          ; CODE XREF: sub_14058BBD8+2C↑j
                cmp     qword ptr [rbx+28h], 0
                jz      short loc_14058BC5B
                mov     rax, [rbx]
                mov     rcx, [rbx+8]
                mov     r9, [rax+8]
                mov     rdx, [rcx]
                cmp     rdx, r9
                jnz     short loc_14058BC43
                cmp     rdx, rbx
                jnz     short loc_14058BC43
                mov     [rcx], rax
                mov     [rax+8], rcx
                jmp     short loc_14058BC5B
; ---------------------------------------------------------------------------

loc_14058BC43:                          ; CODE XREF: sub_14058BBD8+5B↑j
                                        ; sub_14058BBD8+60↑j
                and     [rsp+38h+var_10], 0
                mov     r8, rbx
                mov     [rsp+38h+var_18], rdx
                xor     edx, edx
                lea     ecx, [rdx+0Dh]
                call    sub_1405937F4

loc_14058BC5B:                          ; CODE XREF: sub_14058BBD8+48↑j
                                        ; sub_14058BBD8+69↑j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058BBD8   endp

algn_14058BC62:                         ; DATA XREF: .pdata:00000001400F7E18↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14058BC68   proc near               ; CODE XREF: sub_140316838+1594A5↑p
                                        ; DATA XREF: .pdata:00000001400F7E24↑o

var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = word ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                movzx   ebp, [rsp+48h+arg_20]
                mov     rdi, rcx
                movzx   ecx, byte ptr [r8-1]
                xor     r15b, r15b
                mov     rbx, r8
                lea     rsi, [r8+rbp]
                cmp     cl, 4
                jnz     short loc_14058BD18
                mov     eax, [rdi+74h]
                or      eax, edx
                test    al, 1
                jnz     short loc_14058BCB6
                mov     rcx, [rdi+160h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     r15b, 1

loc_14058BCB6:                          ; CODE XREF: sub_14058BC68+3B↑j
                cmp     dword ptr [rdi+7Ch], 0
                jz      short loc_14058BCDF
                mov     eax, [rdi+88h]
                xor     [rbx-8], eax
                mov     cl, [rbx-6]
                xor     cl, [rbx-7]
                xor     cl, [rbx-8]
                cmp     [rbx-5], cl
                jz      short loc_14058BCDF
                lea     rdx, [rbx-10h]
                mov     rcx, rdi
                call    sub_140593848

loc_14058BCDF:                          ; CODE XREF: sub_14058BC68+52↑j
                                        ; sub_14058BC68+69↑j
                add     [rbx-8], bp
                movzx   r8d, bp
                movzx   edx, word ptr [rbx-8]
                shr     r8w, 4
                mov     [rbx-2], r8b
                cmp     dword ptr [rdi+7Ch], 0
                jz      short loc_14058BD0F
                mov     cl, [rbx-6]
                xor     cl, [rbx-7]
                xor     cl, [rbx-8]
                mov     [rbx-5], cl
                mov     eax, [rdi+88h]
                xor     [rbx-8], eax

loc_14058BD0F:                          ; CODE XREF: sub_14058BC68+90↑j
                mov     [rsi-2], r8b
                jmp     loc_14058BDA2
; ---------------------------------------------------------------------------

loc_14058BD18:                          ; CODE XREF: sub_14058BC68+32↑j
                cmp     cl, 5
                jnz     short loc_14058BD2E
                movzx   edx, word ptr [rdi+8Ch]
                movzx   eax, word ptr [r8-4]
                xor     rdx, rax
                jmp     short loc_14058BD8A
; ---------------------------------------------------------------------------

loc_14058BD2E:                          ; CODE XREF: sub_14058BC68+B3↑j
                test    cl, 40h
                jz      short loc_14058BD44
                mov     rax, rcx
                and     eax, 3Fh
                add     rax, rax
                movzx   edx, word ptr [r8+rax*8-4]
                jmp     short loc_14058BD8A
; ---------------------------------------------------------------------------

loc_14058BD44:                          ; CODE XREF: sub_14058BC68+C9↑j
                mov     al, cl
                and     al, 3Fh
                cmp     al, 3Fh ; '?'
                jz      short loc_14058BD54
                mov     rdx, rcx
                and     edx, 3Fh
                jmp     short loc_14058BD8A
; ---------------------------------------------------------------------------

loc_14058BD54:                          ; CODE XREF: sub_14058BC68+E2↑j
                cmp     dword ptr [rdi+7Ch], 0
                jz      short loc_14058BD7A
                mov     eax, [r8-8]
                mov     ecx, eax
                mov     [rsp+48h+var_20], eax
                test    [rdi+7Ch], eax
                jz      short loc_14058BD73
                xor     ecx, [rdi+88h]
                mov     [rsp+48h+var_20], ecx

loc_14058BD73:                          ; CODE XREF: sub_14058BC68+FF↑j
                movzx   eax, word ptr [rsp+48h+var_20]
                jmp     short loc_14058BD7F
; ---------------------------------------------------------------------------

loc_14058BD7A:                          ; CODE XREF: sub_14058BC68+F0↑j
                movzx   eax, word ptr [r8-8]

loc_14058BD7F:                          ; CODE XREF: sub_14058BC68+110↑j
                movzx   eax, ax
                add     rax, rax
                mov     rdx, [r8+rax*8-10h]

loc_14058BD8A:                          ; CODE XREF: sub_14058BC68+C4↑j
                                        ; sub_14058BC68+DA↑j ...
                movzx   ecx, bp
                shr     cx, 4
                mov     [rsi-2], cl
                mov     al, [r8-1]
                and     al, 0C0h
                or      al, cl
                or      al, 40h
                mov     [r8-1], al

loc_14058BDA2:                          ; CODE XREF: sub_14058BC68+AB↑j
                mov     ecx, [rsp+48h+arg_28]
                add     dx, bp
                mov     byte ptr [rsi-1], 5
                mov     [rsi-4], dx
                mov     [rsi-8], ecx
                test    r15b, r15b
                jz      short loc_14058BDC5
                mov     rcx, [rdi+160h]
                call    ExReleaseResourceLite

loc_14058BDC5:                          ; CODE XREF: sub_14058BC68+14F↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rax, rsi
                mov     rsi, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058BC68   endp

algn_14058BDE2:                         ; DATA XREF: .pdata:00000001400F7E24↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14058BDE8   proc near               ; CODE XREF: RtlSizeHeap+32↑p
                                        ; DATA XREF: .pdata:00000001400F7E30↑o

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = dword ptr -28h
var_18          = dword ptr -18h
var_8           = dword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                cmp     dword ptr [rcx+10h], 0CCDDCCDDh
                mov     rsi, r8
                mov     rbx, rcx
                jnz     short loc_14058BE46
                add     rcx, 40h ; '@'
                xor     r9d, r9d
                mov     rdx, r8
                call    sub_1405959CC
                mov     r14, rax
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14058BE3E
                and     [rsp+60h+var_38], r9
                lea     ecx, [rax+0Ah]
                and     [rsp+60h+var_40], r9
                mov     r8, rsi
                mov     rdx, rbx
                call    sub_1405937F4

loc_14058BE3E:                          ; CODE XREF: sub_14058BDE8+3C↑j
                mov     rax, r14
                jmp     loc_14058BF97
; ---------------------------------------------------------------------------

loc_14058BE46:                          ; CODE XREF: sub_14058BDE8+24↑j
                mov     eax, [rcx+78h]
                test    al, 1
                jz      short loc_14058BE5A
                mov     rdx, rsi
                call    sub_14058BB48
                mov     rcx, rax
                jmp     short loc_14058BEA6
; ---------------------------------------------------------------------------

loc_14058BE5A:                          ; CODE XREF: sub_14058BDE8+63↑j
                test    sil, 0Fh
                jnz     short loc_14058BE88
                lea     rcx, [r8-10h]
                prefetchw byte ptr [rcx]
                cmp     byte ptr [rcx+0Fh], 5
                jnz     short loc_14058BE78
                movzx   eax, byte ptr [rcx+0Eh]
                shl     rax, 4
                sub     rcx, rax

loc_14058BE78:                          ; CODE XREF: sub_14058BDE8+83↑j
                test    byte ptr [rcx+0Fh], 3Fh
                jnz     short loc_14058BEA6
                mov     r8, rcx
                mov     ecx, 8
                jmp     short loc_14058BE8D
; ---------------------------------------------------------------------------

loc_14058BE88:                          ; CODE XREF: sub_14058BDE8+76↑j
                mov     ecx, 9

loc_14058BE8D:                          ; CODE XREF: sub_14058BDE8+9E↑j
                and     [rsp+60h+var_38], 0
                xor     r9d, r9d
                and     [rsp+60h+var_40], 0
                mov     rdx, rbx
                call    sub_1405937F4
                xor     ecx, ecx

loc_14058BEA6:                          ; CODE XREF: sub_14058BDE8+70↑j
                                        ; sub_14058BDE8+94↑j
                test    rcx, rcx
                jnz     short loc_14058BEB4
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     loc_14058BF97
; ---------------------------------------------------------------------------

loc_14058BEB4:                          ; CODE XREF: sub_14058BDE8+C1↑j
                mov     dl, [rcx+0Fh]
                mov     r8d, [rbx+7Ch]
                cmp     dl, 4
                jnz     short loc_14058BEF2
                test    r8d, r8d
                jz      short loc_14058BEDF
                mov     eax, [rcx+8]
                mov     [rbp+var_28], eax
                test    [rbx+7Ch], eax
                jz      short loc_14058BED9
                xor     eax, [rbx+88h]
                mov     [rbp+var_28], eax

loc_14058BED9:                          ; CODE XREF: sub_14058BDE8+E6↑j
                movzx   eax, word ptr [rbp+var_28]
                jmp     short loc_14058BEE3
; ---------------------------------------------------------------------------

loc_14058BEDF:                          ; CODE XREF: sub_14058BDE8+DB↑j
                movzx   eax, word ptr [rcx+8]

loc_14058BEE3:                          ; CODE XREF: sub_14058BDE8+F5↑j
                mov     rdx, [rcx-10h]
                movzx   eax, ax
                sub     rdx, rax
                jmp     loc_14058BF94
; ---------------------------------------------------------------------------

loc_14058BEF2:                          ; CODE XREF: sub_14058BDE8+D6↑j
                test    r8d, r8d
                jz      short loc_14058BF19
                mov     eax, [rcx+8]
                mov     r8d, [rbx+7Ch]
                mov     [rbp+var_18], eax
                test    eax, r8d
                jz      short loc_14058BF0F
                xor     eax, [rbx+88h]
                mov     [rbp+var_18], eax

loc_14058BF0F:                          ; CODE XREF: sub_14058BDE8+11C↑j
                movzx   r9d, word ptr [rbp+var_18]
                mov     dl, [rcx+0Fh]
                jmp     short loc_14058BF1E
; ---------------------------------------------------------------------------

loc_14058BF19:                          ; CODE XREF: sub_14058BDE8+10D↑j
                movzx   r9d, word ptr [rcx+8]

loc_14058BF1E:                          ; CODE XREF: sub_14058BDE8+12F↑j
                cmp     dl, 5
                jnz     short loc_14058BF34
                movzx   r8d, word ptr [rbx+8Ch]
                movzx   eax, word ptr [rcx+0Ch]
                xor     r8, rax
                jmp     short loc_14058BF89
; ---------------------------------------------------------------------------

loc_14058BF34:                          ; CODE XREF: sub_14058BDE8+139↑j
                test    dl, 40h
                jz      short loc_14058BF4A
                movzx   eax, dl
                and     eax, 3Fh
                add     rax, rax
                movzx   r8d, word ptr [rcx+rax*8+0Ch]
                jmp     short loc_14058BF89
; ---------------------------------------------------------------------------

loc_14058BF4A:                          ; CODE XREF: sub_14058BDE8+14F↑j
                mov     al, dl
                and     al, 3Fh
                cmp     al, 3Fh ; '?'
                jz      short loc_14058BF5C
                movzx   r8d, dl
                and     r8d, 3Fh
                jmp     short loc_14058BF89
; ---------------------------------------------------------------------------

loc_14058BF5C:                          ; CODE XREF: sub_14058BDE8+168↑j
                test    r8d, r8d
                jz      short loc_14058BF7B
                mov     eax, [rcx+8]
                mov     [rbp+var_8], eax
                test    [rbx+7Ch], eax
                jz      short loc_14058BF75
                xor     eax, [rbx+88h]
                mov     [rbp+var_8], eax

loc_14058BF75:                          ; CODE XREF: sub_14058BDE8+182↑j
                movzx   eax, word ptr [rbp+var_8]
                jmp     short loc_14058BF7F
; ---------------------------------------------------------------------------

loc_14058BF7B:                          ; CODE XREF: sub_14058BDE8+177↑j
                movzx   eax, word ptr [rcx+8]

loc_14058BF7F:                          ; CODE XREF: sub_14058BDE8+191↑j
                movzx   eax, ax
                add     rax, rax
                mov     r8, [rcx+rax*8]

loc_14058BF89:                          ; CODE XREF: sub_14058BDE8+14A↑j
                                        ; sub_14058BDE8+160↑j ...
                movzx   edx, r9w
                shl     rdx, 4
                sub     rdx, r8

loc_14058BF94:                          ; CODE XREF: sub_14058BDE8+105↑j
                mov     rax, rdx

loc_14058BF97:                          ; CODE XREF: sub_14058BDE8+59↑j
                                        ; sub_14058BDE8+C7↑j
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     r14, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14058BDE8   endp

byte_14058BFAE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7E30↑o

; =============== S U B R O U T I N E =======================================


sub_14058BFB4   proc near               ; CODE XREF: sub_14058A474+231↑p
                                        ; sub_14058A474+451↑p ...
                sub     edx, 1
                jz      short loc_14058BFD3
                sub     edx, 1
                jz      short loc_14058BFCB
                cmp     edx, 1
                jnz     short locret_14058BFDF
                inc     dword ptr [rcx+274h]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058BFCB:                          ; CODE XREF: sub_14058BFB4+8↑j
                inc     dword ptr [rcx+270h]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14058BFD3:                          ; CODE XREF: sub_14058BFB4+3↑j
                inc     dword ptr [rcx+268h]
                inc     dword ptr [rcx+26Ch]

locret_14058BFDF:                       ; CODE XREF: sub_14058BFB4+D↑j
                retn
sub_14058BFB4   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14058BFE1:                         ; DATA XREF: .pdata:00000001400F7E3C↑o
                align 10h
; Exported entry 2405. RtlSubtreeSuccessor

; =============== S U B R O U T I N E =======================================


