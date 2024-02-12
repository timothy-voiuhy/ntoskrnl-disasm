ntoskrnl_3      proc near               ; DATA XREF: .pdata:00000001400FA038↑o

arg_10          = dword ptr  18h

                sub     rsp, 28h
                mov     r9d, r8d
                test    r8b, 2
                jz      short loc_1405B62FC
                mov     [rsp+28h+arg_10], 1
                lea     r8, [rsp+28h+arg_10]
                jmp     short loc_1405B62FF
; ---------------------------------------------------------------------------

loc_1405B62FC:                          ; CODE XREF: ntoskrnl_3+B↑j
                xor     r8d, r8d

loc_1405B62FF:                          ; CODE XREF: ntoskrnl_3+1A↑j
                call    ntoskrnl_4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_3      endp

algn_1405B630A:                         ; DATA XREF: .pdata:00000001400FA038↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405B6310   proc near               ; CODE XREF: sub_14099A220+D37B↓p
                                        ; DATA XREF: .pdata:00000001400FA044↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     rbx, rcx
                mov     rdx, [rcx]
                mov     r8d, 53577254h
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1405B6347
                mov     eax, 0C000009Ah
                jmp     short loc_1405B635A
; ---------------------------------------------------------------------------

loc_1405B6347:                          ; CODE XREF: sub_1405B6310+2E↑j
                mov     r8, [rbx]
                mov     rdx, rbx
                mov     rcx, rdi
                call    memmove
                xor     eax, eax
                mov     [rsi], rdi

loc_1405B635A:                          ; CODE XREF: sub_1405B6310+35↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B6310   endp

byte_1405B636B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA044↑o

; =============== S U B R O U T I N E =======================================


sub_1405B6374   proc near               ; CODE XREF: sub_1402573D0:loc_140437BF9↑p
                                        ; DATA XREF: .pdata:00000001400FA050↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                cmp     cs:byte_140C2498C, 0
                mov     rax, rbx
                jz      short loc_1405B63D0
                mov     rdi, cs:qword_140C16930
                lea     rsi, qword_140C16930
                jmp     short loc_1405B63C8
; ---------------------------------------------------------------------------

loc_1405B63A3:                          ; CODE XREF: sub_1405B6374+57↓j
                lea     rcx, [rdi-108h]
                mov     rdi, [rdi]
                cmp     qword ptr [rcx+100h], 0
                jz      short loc_1405B63BC
                call    sub_140515F68

loc_1405B63BC:                          ; CODE XREF: sub_1405B6374+41↑j
                test    rax, rax
                jz      short loc_1405B63C8
                cmp     rax, rbx
                cmovb   rbx, rax

loc_1405B63C8:                          ; CODE XREF: sub_1405B6374+2D↑j
                                        ; sub_1405B6374+4B↑j
                cmp     rdi, rsi
                jnz     short loc_1405B63A3
                mov     rax, rbx

loc_1405B63D0:                          ; CODE XREF: sub_1405B6374+1D↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B6374   endp

algn_1405B63E1:                         ; DATA XREF: .pdata:00000001400FA050↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1405B63E8   proc near               ; CODE XREF: sub_14067A140+195DB8↓p
                                        ; DATA XREF: .pdata:00000001400FA05C↑o

var_A0          = qword ptr -0A0h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = byte ptr  20h
arg_18          = dword ptr  28h

                mov     [rsp-8+arg_8], rdx
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 88h
                mov     rax, gs:188h
                xor     r13d, r13d
                or      rcx, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+57h+var_90], r13
                mov     r12d, r13d
                mov     [rbp+57h+var_50], rax
                mov     r15d, r13d
                add     [rax+1E4h], cx
                mov     rbx, gs:188h
                mov     [rbp+57h+var_74], r13d
                add     [rbx+1E6h], cx
                lea     r8d, [r13+1]
                add     [rbx+31Ah], r8b
                cmp     [rbx+31Ah], r8b
                jz      short loc_1405B6479
                mov     rax, cr8
                movzx   r9d, al
                lea     r8, qword_140C16940
                mov     rdx, rbx
                mov     [rsp+0C0h+var_A0], r13
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B6479:                          ; CODE XREF: sub_1405B63E8+6D↑j
                mov     cl, [rbx+318h]
                lea     rsi, qword_140C16940
                mov     [rbp+57h+var_78], r13d
                mov     r14d, 0FFFFFFFFh
                test    cl, cl
                jnz     short loc_1405B64AE
                cmp     [rbx+366h], r13b
                jz      short loc_1405B64DF
                mov     eax, r13d
                xchg    al, [rbx+366h]
                mov     cl, [rbx+318h]
                or      cl, al

loc_1405B64AE:                          ; CODE XREF: sub_1405B63E8+AA↑j
                movzx   edx, cl
                mov     eax, r8d
                bsf     ecx, edx
                shl     al, cl
                not     al
                mov     [rbp+57h+var_78], ecx
                and     al, dl
                lea     rdi, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jnz     short loc_1405B64FB

loc_1405B64D7:                          ; CODE XREF: sub_1405B63E8+104↓j
                                        ; sub_1405B63E8+111↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     short loc_1405B6559
; ---------------------------------------------------------------------------

loc_1405B64DF:                          ; CODE XREF: sub_1405B63E8+B3↑j
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                mov     rdi, r13
                jz      short loc_1405B64D7
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1403F8778
                jmp     short loc_1405B64D7
; ---------------------------------------------------------------------------

loc_1405B64FB:                          ; CODE XREF: sub_1405B63E8+ED↑j
                lea     rsi, qword_140C16940
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_1405B653F
                mov     rcx, rsi
                lea     rax, unk_140C4F848
                shr     rcx, 27h
                and     ecx, 1FFh
                add     ecx, 0FFFFFF00h
                cmp     [rcx+rax], r8b
                jnz     short loc_1405B653F
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     short loc_1405B6542
; ---------------------------------------------------------------------------

loc_1405B653F:                          ; CODE XREF: sub_1405B63E8+127↑j
                                        ; sub_1405B63E8+147↑j
                mov     eax, r14d

loc_1405B6542:                          ; CODE XREF: sub_1405B63E8+155↑j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_1405B6559:                          ; CODE XREF: sub_1405B63E8+F5↑j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_74]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     ecx, 1
                add     [rbx+1E6h], cx
                jnz     short loc_1405B658D
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B658D
                call    KiCheckForKernelApcDelivery

loc_1405B658D:                          ; CODE XREF: sub_1405B63E8+192↑j
                                        ; sub_1405B63E8+19E↑j
                lock bts qword ptr [rsi], 0
                jnb     short loc_1405B65A3
                mov     r8, rsi
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F5F10

loc_1405B65A3:                          ; CODE XREF: sub_1405B63E8+1AB↑j
                test    rdi, rdi
                jz      short loc_1405B65B0
                mov     eax, 1
                or      [rdi+1Ah], al

loc_1405B65B0:                          ; CODE XREF: sub_1405B63E8+1BE↑j
                mov     rbx, cs:qword_140C16930
                lea     rdi, qword_140C16930
                cmp     rbx, rdi
                jz      short loc_1405B65FC

loc_1405B65C3:                          ; CODE XREF: sub_1405B63E8+20D↓j
                mov     rcx, [rbx-8]
                test    rcx, rcx
                jz      short loc_1405B65EF
                lea     r8, [rbp+57h+var_90]
                mov     [rbp+57h+var_90], r13
                xor     edx, edx
                call    sub_14038A99C
                mov     rax, [rbp+57h+var_90]
                add     rax, 1Fh
                add     r12, rax
                and     r12, 0FFFFFFFFFFFFFFF8h
                cmp     r12, r14
                ja      short loc_1405B662C

loc_1405B65EF:                          ; CODE XREF: sub_1405B63E8+1E2↑j
                mov     rbx, [rbx]
                cmp     rbx, rdi
                jnz     short loc_1405B65C3
                test    r12, r12
                jnz     short loc_1405B6602

loc_1405B65FC:                          ; CODE XREF: sub_1405B63E8+1D9↑j
                mov     r12d, 40h ; '@'

loc_1405B6602:                          ; CODE XREF: sub_1405B63E8+212↑j
                mov     r8d, 734C6B57h
                mov     rdx, r12
                mov     ecx, 9
                call    ExAllocatePoolWithQuotaTag
                mov     [rbp+57h+var_80], rax
                mov     r15, rax
                test    rax, rax
                jnz     short loc_1405B6637
                mov     r14d, 0C000009Ah
                jmp     loc_1405B67B2
; ---------------------------------------------------------------------------

loc_1405B662C:                          ; CODE XREF: sub_1405B63E8+205↑j
                mov     r14d, 0C0000023h
                jmp     loc_1405B67B2
; ---------------------------------------------------------------------------

loc_1405B6637:                          ; CODE XREF: sub_1405B63E8+237↑j
                mov     r8, r12
                xor     edx, edx
                mov     rcx, rax
                mov     r14d, r13d
                mov     rdi, rax
                call    memset
                mov     rax, cs:qword_140C16930
                mov     rbx, r13
                mov     [rbp+57h+var_90], rbx
                mov     r15, r12
                jmp     loc_1405B678B
; ---------------------------------------------------------------------------

loc_1405B6660:                          ; CODE XREF: sub_1405B63E8+3B1↓j
                cmp     r15, 40h ; '@'
                jb      loc_1405B6807
                lea     r13, [rax-108h]
                lea     rax, [r13+40h]
                mov     rcx, rax
                mov     [rbp+57h+var_60], rax
                call    KeAcquireSpinLockRaiseToDpc
                mov     ecx, [r13+0F0h]
                mov     [rbp+57h+arg_10], al
                mov     rax, [r13+100h]
                mov     [rbp+57h+var_58], rax
                mov     [rbp+57h+var_70], ecx
                test    rax, rax
                jnz     short loc_1405B66A3
                xor     r13d, r13d
                jmp     short loc_1405B66AE
; ---------------------------------------------------------------------------

loc_1405B66A3:                          ; CODE XREF: sub_1405B63E8+2B4↑j
                mov     rcx, r13
                call    sub_140515F68
                mov     r13, rax

loc_1405B66AE:                          ; CODE XREF: sub_1405B63E8+2B9↑j
                mov     rcx, [rbp+57h+var_60]
                call    KeReleaseSpinLockFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jz      short loc_1405B6718
                mov     edx, 1
                test    dl, cl
                jz      short loc_1405B6718
                mov     rcx, cr8
                cmp     cl, 0Fh
                ja      short loc_1405B6718
                movzx   eax, [rbp+57h+arg_10]
                cmp     al, 0Fh
                ja      short loc_1405B6718
                cmp     cl, 2
                jb      short loc_1405B6718
                mov     r10, gs:20h
                lea     ecx, [rdx+rax]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B6714
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B6714:                          ; CODE XREF: sub_1405B63E8+322↑j
                mov     rbx, [rbp+57h+var_90]

loc_1405B6718:                          ; CODE XREF: sub_1405B63E8+2D7↑j
                                        ; sub_1405B63E8+2E0↑j ...
                movzx   eax, [rbp+57h+arg_10]
                mov     cr8, rax
                test    r13, r13
                jz      short loc_1405B6784
                mov     rcx, [rbp+57h+var_58]
                lea     rdx, [rdi+18h]
                mov     rax, 0FFFFF78000000008h
                lea     r8, [rbp+57h+var_90]
                mov     rax, [rax]
                sub     r13, rax
                mov     eax, [rbp+57h+var_70]
                mov     [rdi+10h], eax
                lea     rax, [r15-18h]
                mov     [rbp+57h+var_90], rax
                mov     [rdi+8], r13
                call    sub_14038A99C
                xor     r13d, r13d
                mov     r14d, eax
                test    eax, eax
                js      short loc_1405B67AE
                mov     rbx, [rbp+57h+var_90]
                add     rbx, 1Fh
                and     rbx, 0FFFFFFFFFFFFFFF8h
                mov     [rbp+57h+var_90], rbx
                cmp     r15, rbx
                jb      loc_1405B6807
                sub     r15, rbx
                mov     [rdi], rbx
                add     rdi, rbx

loc_1405B6784:                          ; CODE XREF: sub_1405B63E8+33B↑j
                mov     rax, [rbp+57h+var_68]
                mov     rax, [rax]

loc_1405B678B:                          ; CODE XREF: sub_1405B63E8+273↑j
                lea     rcx, qword_140C16930
                mov     [rbp+57h+var_68], rax
                cmp     rax, rcx
                jnz     loc_1405B6660
                sub     rdi, rbx
                mov     [rdi], r13
                test    rbx, rbx
                jnz     short loc_1405B67AE
                mov     [rdi+8], r13

loc_1405B67AE:                          ; CODE XREF: sub_1405B63E8+378↑j
                                        ; sub_1405B63E8+3C0↑j ...
                mov     r15, [rbp+57h+var_80]

loc_1405B67B2:                          ; CODE XREF: sub_1405B63E8+23F↑j
                                        ; sub_1405B63E8+24A↑j
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rax, rdi
                lock xadd cs:qword_140C16940, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405B67D0
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_1405B67D0:                          ; CODE XREF: sub_1405B63E8+3DE↑j
                mov     rbx, gs:188h
                mov     rcx, rsi
                mov     [rbp+57h+var_88], r13d
                call    sub_140245330
                mov     r10d, 1
                cmp     eax, r10d
                jnz     short loc_1405B680F
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r9d, eax
                mov     r10d, 1
                jmp     short loc_1405B6815
; ---------------------------------------------------------------------------

loc_1405B6807:                          ; CODE XREF: sub_1405B63E8+27C↑j
                                        ; sub_1405B63E8+38D↑j
                mov     r14d, 0C0000023h
                jmp     short loc_1405B67AE
; ---------------------------------------------------------------------------

loc_1405B680F:                          ; CODE XREF: sub_1405B63E8+406↑j
                mov     r9d, 0FFFFFFFFh

loc_1405B6815:                          ; CODE XREF: sub_1405B63E8+41D↑j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r10b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rsi
                movsx   edx, byte ptr [rbx+366h]
                mov     r11, 7FFFFFFFFFFFFFFCh
                mov     r13b, [rbx+31Ah]
                or      edx, ecx
                and     r8, r11
                xor     edx, 3Fh
                jmp     short loc_1405B6894
; ---------------------------------------------------------------------------

loc_1405B684F:                          ; CODE XREF: sub_1405B63E8+4B2↓j
                lea     rdi, [rcx+rcx*2]
                mov     eax, r10d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rdi+1Ah], r10b
                jz      short loc_1405B6894
                mov     eax, [rdi+20h]
                test    r10b, al
                jnz     short loc_1405B6894
                mov     rax, [rdi+20h]
                and     rax, r11
                cmp     rax, r8
                jnz     short loc_1405B6894
                cmp     [rdi+28h], r9d
                jnz     short loc_1405B6894
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jnz     short loc_1405B68C3

loc_1405B6894:                          ; CODE XREF: sub_1405B63E8+465↑j
                                        ; sub_1405B63E8+483↑j ...
                bsr     ecx, edx
                mov     [rbp+57h+arg_18], ecx
                jnz     short loc_1405B684F

loc_1405B689C:                          ; CODE XREF: sub_1405B63E8+4DE↓j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1405B6943
                and     [rsp+0C0h+var_A0], 0
                mov     r8, rsi
                mov     r9d, r9d
                mov     rdx, rbx
                mov     ecx, 162h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B68C3:                          ; CODE XREF: sub_1405B63E8+4AA↑j
                test    rdi, rdi
                jz      short loc_1405B689C
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1405B68EA
                mov     rcx, rdi
                call    sub_14031EC80
                mov     r10d, 1

loc_1405B68EA:                          ; CODE XREF: sub_1405B63E8+4F2↑j
                mov     ecx, [rdi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rbp+57h+var_88], eax
                mov     [rdi+58h], ecx
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r13b, r10b
                jnz     short loc_1405B6994
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1405B6943:                          ; CODE XREF: sub_1405B63E8+4BB↑j
                                        ; sub_1405B63E8+5BA↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_88]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     ecx, 1
                add     [rbx+1E6h], cx
                jnz     short loc_1405B6977
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B6977
                call    KiCheckForKernelApcDelivery

loc_1405B6977:                          ; CODE XREF: sub_1405B63E8+57C↑j
                                        ; sub_1405B63E8+588↑j
                mov     rcx, [rbp+57h+var_50]
                call    sub_14021E1F0
                test    r14d, r14d
                jns     short loc_1405B69A4
                test    r15, r15
                jz      short loc_1405B69B2
                mov     rcx, r15
                call    sub_14023C050
                jmp     short loc_1405B69B2
; ---------------------------------------------------------------------------

loc_1405B6994:                          ; CODE XREF: sub_1405B63E8+549↑j
                mov     ecx, edx
                mov     eax, r10d
                shl     al, cl
                lock or [rbx+366h], al
                jmp     short loc_1405B6943
; ---------------------------------------------------------------------------

loc_1405B69A4:                          ; CODE XREF: sub_1405B63E8+59B↑j
                mov     rax, [rbp+57h+arg_0]
                mov     [rax], r15
                mov     rax, [rbp+57h+arg_8]
                mov     [rax], r12d

loc_1405B69B2:                          ; CODE XREF: sub_1405B63E8+5A0↑j
                                        ; sub_1405B63E8+5AA↑j
                mov     eax, r14d
                add     rsp, 88h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B63E8   endp

algn_1405B69CA:                         ; DATA XREF: .pdata:00000001400FA05C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1405B69D0   proc near               ; CODE XREF: sub_140256A10+1E0E30↑p
                                        ; DATA XREF: .pdata:00000001400FA068↑o
                mov     r10, cs:qword_140C192A8
                test    r10, r10
                jz      short locret_1405B6A2B
                cmp     cl, 10h
                sbb     al, al
                and     al, cl
                cmp     cl, 10h
                movzx   r8d, al
                sbb     r9b, r9b
                and     r9b, dl
                lea     rdx, qword_1400052B0
                lea     rax, [r8+r8*2]
                mov     cl, [rdx+rax*8]
                cmp     r9b, cl
                sbb     r11b, r11b
                cmp     r9b, cl
                sbb     al, al
                and     al, r9b
                movzx   ecx, al
                and     r11b, r8b
                jz      short loc_1405B6A27
                movzx   r8d, r11b

loc_1405B6A18:                          ; CODE XREF: sub_1405B69D0+55↓j
                movzx   eax, byte ptr [rdx]
                lea     rdx, [rdx+18h]
                add     ecx, eax
                sub     r8, 1
                jnz     short loc_1405B6A18

loc_1405B6A27:                          ; CODE XREF: sub_1405B69D0+42↑j
                inc     dword ptr [r10+rcx*4]

locret_1405B6A2B:                       ; CODE XREF: sub_1405B69D0+A↑j
                retn
sub_1405B69D0   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1405B6A2D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA068↑o

; =============== S U B R O U T I N E =======================================


sub_1405B6A34   proc near               ; CODE XREF: sub_140582728+19D↑p
                                        ; DATA XREF: .pdata:00000001400FA074↑o

var_58          = qword ptr -58h
var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+10h], edx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rbp, rcx
                xor     esi, esi
                add     rcx, 40h ; '@'
                mov     [rax-48h], rsi
                mov     [rax+8], esi
                mov     r14, r9
                mov     rbx, r8
                call    KeAcquireSpinLockAtDpcLevel
                lea     r13, [rbp+140h]
                mov     rcx, rbp
                mov     r9, r13
                lea     r8, [rsp+78h+arg_0]
                lea     rdx, [rsp+78h+var_48]
                call    sub_14035A8D8
                mov     r12b, al
                test    al, al
                jz      loc_1405B6B60
                mov     ecx, [rsp+78h+arg_0]
                mov     edi, esi
                cmp     ecx, 1
                jz      short loc_1405B6ACD
                add     ecx, 0FFFFFFFEh
                cmp     ecx, 1
                ja      short loc_1405B6AE4
                mov     rcx, [rsp+78h+arg_20]
                sub     rcx, [rsp+78h+var_48]
                mov     rdi, rcx
                sub     rdi, rbx
                test    rdi, rdi
                jle     short loc_1405B6AE4
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    rbx, rbx
                cmovg   rdi, rcx
                jmp     short loc_1405B6AE4
; ---------------------------------------------------------------------------

loc_1405B6ACD:                          ; CODE XREF: sub_1405B6A34+6A↑j
                mov     rdi, [rsp+78h+var_48]
                sub     rdi, [rsp+78h+arg_20]
                add     rdi, rbx
                add     rdi, r14
                cmovs   rdi, r14

loc_1405B6AE4:                          ; CODE XREF: sub_1405B6A34+72↑j
                                        ; sub_1405B6A34+8A↑j ...
                mov     ecx, [rbp+0F0h]
                mov     edx, [rbp+0F4h]
                test    ecx, ecx
                jz      short loc_1405B6B23
                mov     eax, ecx
                sub     eax, edx
                test    edx, edx
                cmovz   eax, ecx
                mov     ecx, eax
                mov     eax, 0D1B71759h
                mul     [rsp+78h+arg_8]
                shr     edx, 0Dh
                lea     eax, [rcx+rdx]
                cmp     eax, ecx
                jb      short loc_1405B6B23
                mov     ecx, eax
                mov     [rbp+0F0h], eax
                mov     [rbp+0F4h], edx

loc_1405B6B23:                          ; CODE XREF: sub_1405B6A34+BE↑j
                                        ; sub_1405B6A34+DF↑j
                mov     bl, [rbp+130h]
                lea     r10, [rbp+0A0h]
                mov     r9d, [r13+0]
                and     bl, 1
                mov     al, bl
                mov     [rbp+138h], rdi
                neg     al
                mov     rdx, rdi
                sbb     r11, r11
                and     r11, r10
                test    bl, bl
                mov     [rsp+78h+var_58], r11
                cmovz   esi, ecx
                mov     rcx, rbp
                mov     r8d, esi
                call    KeSetCoalescableTimer

loc_1405B6B60:                          ; CODE XREF: sub_1405B6A34+58↑j
                lea     rcx, [rbp+40h]
                call    KeReleaseSpinLockFromDpcLevel
                mov     rbx, [rsp+78h+arg_10]
                mov     al, r12b
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
sub_1405B6A34   endp

byte_1405B6B85  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA074↑o

; =============== S U B R O U T I N E =======================================


sub_1405B6B8C   proc near               ; CODE XREF: sub_1409C8D50:loc_1409C8DA9↓p
                                        ; DATA XREF: .pdata:00000001400FA080↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                xor     ebp, ebp
                lea     rcx, qword_140C168D8
                mov     cs:word_140C1202C, bp
                call    KeAcquireSpinLockRaiseToDpc
                mov     rdx, cs:qword_140C16910
                movzx   ebx, al
                lea     rax, qword_140C16910
                jmp     short loc_1405B6BD3
; ---------------------------------------------------------------------------

loc_1405B6BC9:                          ; CODE XREF: sub_1405B6B8C+4A↓j
                mov     dword ptr [rdx-30h], 0FFFF0000h
                mov     rdx, [rdx]

loc_1405B6BD3:                          ; CODE XREF: sub_1405B6B8C+3B↑j
                cmp     rdx, rax
                jnz     short loc_1405B6BC9
                lea     rcx, qword_140C168D8
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1405B6C3A
                test    al, 1
                jz      short loc_1405B6C3A
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B6C3A
                cmp     bl, 0Fh
                ja      short loc_1405B6C3A
                cmp     al, 2
                jb      short loc_1405B6C3A
                mov     r10, gs:20h
                lea     ecx, [rbx+1]
                mov     rdx, rdi
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B6C3A
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B6C3A:                          ; CODE XREF: sub_1405B6B8C+64↑j
                                        ; sub_1405B6B8C+68↑j ...
                mov     cr8, rbx
                lea     rcx, qword_140C16900
                call    KeAcquireSpinLockRaiseToDpc
                mov     rdx, cs:qword_140C168F0
                movzx   ebx, al
                lea     rax, qword_140C168F0
                jmp     short loc_1405B6C67
; ---------------------------------------------------------------------------

loc_1405B6C5D:                          ; CODE XREF: sub_1405B6B8C+DE↓j
                mov     dword ptr [rdx-30h], 0FFFF0000h
                mov     rdx, [rdx]

loc_1405B6C67:                          ; CODE XREF: sub_1405B6B8C+CF↑j
                cmp     rdx, rax
                jnz     short loc_1405B6C5D
                lea     rcx, qword_140C16900
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B6CC6
                test    al, 1
                jz      short loc_1405B6CC6
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B6CC6
                cmp     bl, 0Fh
                ja      short loc_1405B6CC6
                cmp     al, 2
                jb      short loc_1405B6CC6
                mov     r9, gs:20h
                lea     ecx, [rbx+1]
                shl     rdi, cl
                movzx   eax, di
                not     eax
                mov     r8, [r9+84B8h]
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B6CC6
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B6CC6:                          ; CODE XREF: sub_1405B6B8C+F4↑j
                                        ; sub_1405B6B8C+F8↑j ...
                mov     cr8, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B6B8C   endp

algn_1405B6CE1:                         ; DATA XREF: .pdata:00000001400FA080↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1405B6CE8   proc near               ; CODE XREF: sub_14023C050+1F2978↑p
                                        ; sub_1402E909C+177B37↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                test    cs:dword_140C2A6E0, 800h
                mov     rbx, rdx
                mov     rdi, rcx
                jz      short loc_1405B6D0D
                call    sub_1409E3528
                test    eax, eax
                jnz     short loc_1405B6D3F

loc_1405B6D0D:                          ; CODE XREF: sub_1405B6CE8+1A↑j
                lea     r9, qword_140C168D8
                mov     rdx, rbx
                lea     r8, qword_140C16910
                mov     rcx, rdi
                call    sub_1405B6D54
                lea     r9, qword_140C16900
                mov     rdx, rbx
                lea     r8, qword_140C168F0
                mov     rcx, rdi
                call    sub_1405B6D54

loc_1405B6D3F:                          ; CODE XREF: sub_1405B6CE8+23↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B6CE8   endp

byte_1405B6D4B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA08C↑o

; =============== S U B R O U T I N E =======================================


sub_1405B6D54   proc near               ; CODE XREF: sub_1405B6CE8+39↑p
                                        ; sub_1405B6CE8+52↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, rcx
                lea     r12, [rcx+rdx]
                mov     rcx, r9
                mov     rbp, r9
                mov     r14, r8
                mov     r15, rdx
                call    KeAcquireSpinLockRaiseToDpc
                mov     rbx, [r14]
                movzx   edi, al
                jmp     short loc_1405B6DBB
; ---------------------------------------------------------------------------

loc_1405B6D91:                          ; CODE XREF: sub_1405B6D54+6A↓j
                lea     rax, [rbx-40h]
                cmp     rax, rsi
                jb      short loc_1405B6DB8
                cmp     rax, r12
                jnb     short loc_1405B6DB8
                mov     r9, rsi
                mov     [rsp+48h+var_28], r15
                lea     r8, aExExfreepoolPI_0 ; "EX: ExFreePool( %p, %Ix ) contains a lo"...
                xor     edx, edx
                xor     ecx, ecx
                call    DbgPrintEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B6DB8:                          ; CODE XREF: sub_1405B6D54+44↑j
                                        ; sub_1405B6D54+49↑j
                mov     rbx, [rbx]

loc_1405B6DBB:                          ; CODE XREF: sub_1405B6D54+3B↑j
                cmp     rbx, r14
                jnz     short loc_1405B6D91
                mov     rcx, rbp
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1405B6E1C
                test    al, 1
                jz      short loc_1405B6E1C
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B6E1C
                cmp     dil, 0Fh
                ja      short loc_1405B6E1C
                cmp     al, 2
                jb      short loc_1405B6E1C
                mov     r10, gs:20h
                lea     ecx, [rdi+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405B6E1C
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405B6E1C:                          ; CODE XREF: sub_1405B6D54+7C↑j
                                        ; sub_1405B6D54+80↑j ...
                mov     cr8, rdi
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B6D54   endp

byte_1405B6E40  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400FA098↑o
; Exported entry 219. ExExtendZone

; =============== S U B R O U T I N E =======================================


