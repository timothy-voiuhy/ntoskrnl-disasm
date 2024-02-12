MmAdvanceMdl    proc near               ; DATA XREF: .pdata:00000001400F486C↑o

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
                push    r15
                mov     r8, rcx
                cmp     edx, [rcx+28h]
                jb      short loc_1405312C9
                mov     eax, 0C00000F0h
                jmp     loc_14053141F
; ---------------------------------------------------------------------------

loc_1405312C9:                          ; CODE XREF: MmAdvanceMdl+1D↑j
                xor     ebp, ebp
                mov     edi, 0FFFh
                mov     r10d, ebp
                lea     r14d, [rbp+1]
                mov     cs:byte_140C4EBD4, r14b
                mov     ebx, [rcx+2Ch]
                mov     r9d, [rcx+28h]
                mov     ecx, [rcx+20h]
                add     ecx, ebx
                and     rcx, rdi
                lea     r11, [r9+0FFFh]
                add     r11, rcx
                shr     r11, 0Ch
                test    ebx, ebx
                jz      short loc_140531354
                movzx   ecx, word ptr [r8+0Ah]
                lea     r10d, [rdi+1]
                mov     eax, r10d
                and     cx, r14w
                sub     eax, ebx
                cmp     edx, eax
                jnb     short loc_140531337
                sub     r9d, edx
                lea     eax, [rbx+rdx]
                mov     [r8+28h], r9d
                mov     [r8+2Ch], eax
                test    cx, cx
                jz      loc_14053141D
                mov     eax, edx
                add     [r8+18h], rax
                jmp     loc_14053141D
; ---------------------------------------------------------------------------

loc_140531337:                          ; CODE XREF: MmAdvanceMdl+73↑j
                add     [r8+20h], r10
                sub     r9d, eax
                sub     edx, eax
                mov     [r8+2Ch], ebp
                mov     [r8+28h], r9d
                test    cx, cx
                jz      short loc_140531351
                add     [r8+18h], rax

loc_140531351:                          ; CODE XREF: MmAdvanceMdl+AB↑j
                mov     r10d, r14d

loc_140531354:                          ; CODE XREF: MmAdvanceMdl+5D↑j
                test    edx, edx
                jz      short loc_140531385
                mov     eax, edx
                sub     r9d, edx
                and     eax, edi
                mov     [r8+28h], r9d
                mov     [r8+2Ch], eax
                mov     ecx, edx
                shr     ecx, 0Ch
                mov     eax, ecx
                add     r10d, ecx
                shl     rax, 0Ch
                add     [r8+20h], rax
                test    [r8+0Ah], r14b
                jz      short loc_140531385
                mov     eax, edx
                add     [r8+18h], rax

loc_140531385:                          ; CODE XREF: MmAdvanceMdl+B6↑j
                                        ; MmAdvanceMdl+DD↑j
                test    r10d, r10d
                jz      loc_14053141D
                mov     r15d, 200h
                test    [r8+0Ah], r15w
                jz      short loc_1405313B2
                lea     rcx, [r8+30h]
                lea     rcx, [rcx+r11*8]

loc_1405313A3:                          ; CODE XREF: MmAdvanceMdl+110↓j
                mov     rax, [rcx]
                add     r11, r14
                lea     rcx, [rcx+8]
                test    rax, rax
                jns     short loc_1405313A3

loc_1405313B2:                          ; CODE XREF: MmAdvanceMdl+F9↑j
                test    r10d, r10d
                jz      short loc_140531409
                mov     r9d, r10d

loc_1405313BA:                          ; CODE XREF: MmAdvanceMdl+167↓j
                mov     rdi, [r8+30h]
                lea     rax, [r8+30h]
                test    r11, r11
                jz      short loc_140531404
                mov     edx, r14d

loc_1405313CA:                          ; CODE XREF: MmAdvanceMdl+162↓j
                mov     r10d, edx
                cmp     r10, r11
                jz      short loc_1405313E5
                mov     rcx, [rax+8]
                mov     rsi, 7FFFFFFFFFFFFFFFh
                and     rcx, rsi
                jmp     short loc_1405313F5
; ---------------------------------------------------------------------------

loc_1405313E5:                          ; CODE XREF: MmAdvanceMdl+130↑j
                mov     rsi, 8000000000000000h
                mov     rcx, rdi
                or      rcx, rsi

loc_1405313F5:                          ; CODE XREF: MmAdvanceMdl+143↑j
                mov     [rax], rcx
                add     edx, r14d
                add     rax, 8
                cmp     r10, r11
                jb      short loc_1405313CA

loc_140531404:                          ; CODE XREF: MmAdvanceMdl+125↑j
                sub     r9, r14
                jnz     short loc_1405313BA

loc_140531409:                          ; CODE XREF: MmAdvanceMdl+115↑j
                movzx   eax, word ptr [r8+0Ah]
                test    r15w, ax
                jnz     short loc_14053141D
                or      ax, r15w
                mov     [r8+0Ah], ax

loc_14053141D:                          ; CODE XREF: MmAdvanceMdl+86↑j
                                        ; MmAdvanceMdl+92↑j ...
                xor     eax, eax

loc_14053141F:                          ; CODE XREF: MmAdvanceMdl+24↑j
                mov     rbx, [rsp+10h+arg_0]
                mov     rbp, [rsp+10h+arg_8]
                mov     rsi, [rsp+10h+arg_10]
                mov     rdi, [rsp+10h+arg_18]
                pop     r15
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAdvanceMdl    endp

algn_140531439:                         ; DATA XREF: .pdata:00000001400F486C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140531440   proc near               ; CODE XREF: sub_140234BA0+1F7FE9↑p
                                        ; sub_14030E6E8+15E875↑p ...

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                mov     r9, [rcx+10h]
                xor     eax, eax
                test    r9, r9
                xorps   xmm0, xmm0
                movups  [rsp+48h+var_28], xmm0
                cmovz   r9, cs:PsInitialSystemProcess
                mov     rsi, r8
                mov     [r11-18h], rax
                mov     rbp, rdx
                mov     rdi, rcx
                mov     rbx, [r9+608h]
                test    rbx, rbx
                jz      loc_14053154A
                lea     rcx, [rbx+18h]
                lea     rdx, [r11-28h]
                call    KeAcquireInStackQueuedSpinLock

loc_140531497:                          ; CODE XREF: sub_140531440+63↓j
                mov     rbx, [rbx]

loc_14053149A:                          ; CODE XREF: sub_140531440+6B↓j
                test    rbx, rbx
                jz      short loc_1405314D3
                cmp     rdi, [rbx+18h]
                jb      short loc_140531497
                jbe     short loc_1405314AD
                mov     rbx, [rbx+8]
                jmp     short loc_14053149A
; ---------------------------------------------------------------------------

loc_1405314AD:                          ; CODE XREF: sub_140531440+65↑j
                test    rbx, rbx
                jz      short loc_1405314D3
                test    rbp, rbp
                jnz     short loc_1405314BC
                test    rsi, rsi
                jz      short loc_1405314D3

loc_1405314BC:                          ; CODE XREF: sub_140531440+75↑j
                xorps   xmm0, xmm0
                mov     [rbx+48h], rbp
                mov     [rbx+50h], rsi
                movups  xmmword ptr [rbx+58h], xmm0
                movups  xmmword ptr [rbx+68h], xmm0
                movups  xmmword ptr [rbx+78h], xmm0

loc_1405314D3:                          ; CODE XREF: sub_140531440+5D↑j
                                        ; sub_140531440+70↑j ...
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+48h+var_18]
                test    eax, eax
                jz      short loc_14053153A
                test    al, 1
                jz      short loc_14053153A
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14053153A
                cmp     dil, 0Fh
                ja      short loc_14053153A
                cmp     al, 2
                jb      short loc_14053153A
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+48h+var_18]
                inc     ecx
                shl     rdx, cl
                movzx   edx, dx
                not     edx
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_14053153A
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14053153A:                          ; CODE XREF: sub_140531440+AA↑j
                                        ; sub_140531440+AE↑j ...
                mov     cr8, rdi
                test    rbx, rbx
                jz      short loc_14053154A
                mov     eax, 1
                jmp     short loc_14053154C
; ---------------------------------------------------------------------------

loc_14053154A:                          ; CODE XREF: sub_140531440+44↑j
                                        ; sub_140531440+101↑j
                xor     eax, eax

loc_14053154C:                          ; CODE XREF: sub_140531440+108↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140531440   endp

algn_140531562:                         ; DATA XREF: .pdata:00000001400F4878↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140531568   proc near               ; CODE XREF: sub_1405A2D10+7B↓p
                                        ; sub_1405A2DB0+3F↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
var_18          = byte ptr -18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  [rsp+68h+var_38], xmm0
                mov     [r11-28h], rax
                mov     ebx, edx
                mov     eax, cs:dword_140CFC4EC
                mov     rsi, rcx
                test    al, 1
                jz      loc_14053178B
                mov     rbp, [rcx+10h]
                test    rbp, rbp
                cmovz   rbp, cs:PsInitialSystemProcess
                mov     rdi, [rbp+608h]
                test    rdi, rdi
                jz      loc_14053178B
                lea     rcx, [rdi+18h]
                lea     rdx, [r11-38h]
                call    KeAcquireInStackQueuedSpinLock
                test    ebx, ebx
                jz      loc_140531662
                mov     rbx, [rdi]
                jmp     short loc_1405315F0
; ---------------------------------------------------------------------------

loc_1405315DF:                          ; CODE XREF: sub_140531568+8B↓j
                cmp     rsi, [rbx+18h]
                jb      short loc_1405315ED
                jbe     short loc_140531623
                mov     rbx, [rbx+8]
                jmp     short loc_1405315F0
; ---------------------------------------------------------------------------

loc_1405315ED:                          ; CODE XREF: sub_140531568+7B↑j
                mov     rbx, [rbx]

loc_1405315F0:                          ; CODE XREF: sub_140531568+75↑j
                                        ; sub_140531568+83↑j
                test    rbx, rbx
                jnz     short loc_1405315DF

loc_1405315F5:                          ; CODE XREF: sub_140531568+BE↓j
                cmp     dword ptr [rdi+20h], 0
                jz      loc_140531721
                mov     rax, [rbp+608h]
                mov     edx, 8
                mov     r9, [rbp+500h]
                mov     r8, rsi
                mov     [rsp+68h+var_48], rax
                lea     ecx, [rdx+6Eh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140531623:                          ; CODE XREF: sub_140531568+7D↑j
                test    rbx, rbx
                jz      short loc_1405315F5
                mov     edx, 1
                mov     rcx, rbx
                call    sub_1405311A8
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     rdx, rbx
                and     [rbx+18h], rax
                mov     rcx, rdi
                call    RtlAvlRemoveNode
                mov     r12, [rsi+30h]
                lea     r15, [rdi+8]
                lea     rbp, sub_140530E80
                jmp     loc_1405316E2
; ---------------------------------------------------------------------------

loc_140531662:                          ; CODE XREF: sub_140531568+6C↑j
                mov     rbx, [rdi+8]
                test    rbx, rbx
                jz      short loc_140531685
                mov     rcx, [rsi+30h]

loc_14053166F:                          ; CODE XREF: sub_140531568+11B↓j
                cmp     rcx, [rbx+40h]
                jb      short loc_14053167D
                jbe     short loc_1405316B3
                mov     rbx, [rbx+8]
                jmp     short loc_140531680
; ---------------------------------------------------------------------------

loc_14053167D:                          ; CODE XREF: sub_140531568+10B↑j
                mov     rbx, [rbx]

loc_140531680:                          ; CODE XREF: sub_140531568+113↑j
                test    rbx, rbx
                jnz     short loc_14053166F

loc_140531685:                          ; CODE XREF: sub_140531568+101↑j
                                        ; sub_140531568+14E↓j
                cmp     dword ptr [rdi+20h], 0
                jz      loc_140531721
                mov     rax, [rbp+608h]
                mov     edx, 9
                mov     r9, [rbp+500h]
                mov     r8, rsi
                mov     [rsp+68h+var_48], rax
                lea     ecx, [rdx+6Dh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405316B3:                          ; CODE XREF: sub_140531568+10D↑j
                test    rbx, rbx
                jz      short loc_140531685
                mov     edx, 1
                mov     [rbx+18h], rsi
                mov     rcx, rbx
                call    sub_1405311A8
                mov     rdx, rbx
                lea     rcx, [rdi+8]
                call    RtlAvlRemoveNode
                mov     r15, rdi
                lea     rbp, sub_140530EA0
                mov     r12, rsi

loc_1405316E2:                          ; CODE XREF: sub_140531568+F5↑j
                mov     r14, [r15]
                xor     r8b, r8b
                test    r14, r14
                jz      short loc_140531713

loc_1405316ED:                          ; CODE XREF: sub_140531568+250↓j
                mov     rdx, r14
                mov     rcx, r12
                mov     rax, rbp
                call    sub_1404079D0
                test    eax, eax
                jle     loc_1405317AB
                mov     rax, [r14+8]
                test    rax, rax
                jnz     loc_1405317B5
                mov     r8b, 1

loc_140531713:                          ; CODE XREF: sub_140531568+183↑j
                                        ; sub_140531568+258↓j
                mov     r9, rbx
                mov     rdx, r14
                mov     rcx, r15
                call    RtlAvlInsertNodeEx

loc_140531721:                          ; CODE XREF: sub_140531568+91↑j
                                        ; sub_140531568+121↑j
                lea     rcx, [rsp+68h+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, [rsp+68h+var_28]
                test    eax, eax
                jz      short loc_140531787
                test    al, 1
                jz      short loc_140531787
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140531787
                cmp     bl, 0Fh
                ja      short loc_140531787
                cmp     al, 2
                jb      short loc_140531787
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [r10+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, [rsp+68h+var_28]
                inc     ecx
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140531787
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140531787:                          ; CODE XREF: sub_140531568+1D0↑j
                                        ; sub_140531568+1D4↑j ...
                mov     cr8, rbx

loc_14053178B:                          ; CODE XREF: sub_140531568+38↑j
                                        ; sub_140531568+57↑j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405317AB:                          ; CODE XREF: sub_140531568+195↑j
                jns     short loc_1405317C5
                mov     rax, [r14]
                test    rax, rax
                jz      short loc_1405317BD

loc_1405317B5:                          ; CODE XREF: sub_140531568+1A2↑j
                mov     r14, rax
                jmp     loc_1405316ED
; ---------------------------------------------------------------------------

loc_1405317BD:                          ; CODE XREF: sub_140531568+24B↑j
                xor     r8b, r8b
                jmp     loc_140531713
; ---------------------------------------------------------------------------

loc_1405317C5:                          ; CODE XREF: sub_140531568:loc_1405317AB↑j
                mov     rax, [rdi+10h]
                mov     r9, rsi
                mov     r8, r14
                mov     [rsp+68h+var_48], rax
                mov     edx, 2
                mov     ecx, 0D9h
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_140531568   endp

byte_1405317E4  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400F4884↑o

; =============== S U B R O U T I N E =======================================


sub_1405317EC   proc near               ; CODE XREF: sub_1402335C0+9C1↑p
                                        ; sub_140370A80+FA↑p ...

var_48          = dword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_10], rax
                mov     r10, r9
                mov     eax, 278h
                movzx   r9d, r8w
                mov     ebx, 1
                not     r9w
                mov     r11, rcx
                and     r9w, bx
                xor     ecx, ecx
                or      r9w, ax
                mov     eax, r8d
                and     eax, 1Eh
                cmp     al, 1Ah
                jnz     short loc_140531841
                mov     rcx, rdx
                mov     rax, 0FFFFFFFFFFFFh
                and     rcx, rax
                shl     rcx, 4

loc_140531841:                          ; CODE XREF: sub_1405317EC+3F↑j
                and     [rsp+68h+var_14], 0
                mov     eax, r8d
                shr     rax, 1
                mov     r8d, 20000001h
                and     eax, 0Fh
                mov     [rsp+68h+var_30], r11
                or      rax, rcx
                mov     [rsp+68h+var_28], r10
                mov     [rsp+68h+var_38], rax
                lea     rcx, [rsp+68h+var_20]
                lea     rax, [rsp+68h+var_38]
                mov     [rsp+68h+var_18], 18h
                mov     edx, ebx
                mov     [rsp+68h+var_20], rax
                mov     [rsp+68h+var_48], 11401B02h
                call    sub_1402B8C20
                mov     rcx, [rsp+68h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405317EC
sub_1405317EC   endp

algn_1405318A1:                         ; DATA XREF: .pdata:00000001400F4890↑o
                align 10h
; Exported entry 1398. MmAllocateContiguousMemory

; =============== S U B R O U T I N E =======================================


