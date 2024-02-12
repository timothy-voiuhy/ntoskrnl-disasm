ntoskrnl_13     proc near               ; DATA XREF: .pdata:00000001401069E0↑o
                sub     rsp, 28h
                call    sub_1407199E8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_13     endp

byte_1407199DF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001401069E0↑o

; =============== S U B R O U T I N E =======================================


sub_1407199E8   proc near               ; CODE XREF: ntoskrnl_16+5D↑p
                                        ; ntoskrnl_13+4↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                test    rcx, rcx
                jz      short locret_140719A26
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, rcx
                cmp     [rcx], ebx
                jbe     short loc_140719A12

loc_140719A00:                          ; CODE XREF: sub_1407199E8+28↓j
                mov     ecx, ebx
                mov     rcx, [rdi+rcx*8+8]
                call    PsDereferenceSiloContext
                inc     ebx
                cmp     ebx, [rdi]
                jb      short loc_140719A00

loc_140719A12:                          ; CODE XREF: sub_1407199E8+16↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi

locret_140719A26:                       ; CODE XREF: sub_1407199E8+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407199E8   endp

algn_140719A28:                         ; DATA XREF: .pdata:00000001401069EC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140719A30   proc near               ; CODE XREF: sub_14036E6AC+5C↑p
                                        ; ntoskrnl_16+42↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                mov     [rsp+38h+var_18], rdx
                xor     ecx, ecx
                mov     [rsp+38h+var_10], r8
                call    sub_14067926C
                lea     r8, [rsp+38h+var_18]
                mov     rcx, rbx
                call    sub_140719AB8
                xor     ecx, ecx
                mov     ebx, eax
                call    sub_140679140
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140719A30   endp

algn_140719A69:                         ; DATA XREF: .pdata:00000001401069F8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140719A70   proc near               ; CODE XREF: sub_140719AB8+25↓p
                                        ; DATA XREF: .pdata:0000000140106A04↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, [rdx]
                mov     rdi, rdx
                mov     rdx, [rdx+8]
                mov     rbx, rcx
                call    sub_1404079D0
                test    eax, eax
                js      short loc_140719A97
                cmp     qword ptr [rbx+8], 0
                jnz     short loc_140719AA3

loc_140719A97:                          ; CODE XREF: sub_140719A70+1E↑j
                                        ; sub_140719A70+3E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140719AA3:                          ; CODE XREF: sub_140719A70+25↑j
                mov     r8, rdi
                mov     rcx, rbx
                call    sub_140719AB8
                jmp     short loc_140719A97
sub_140719A70   endp

; ---------------------------------------------------------------------------
byte_140719AB0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106A04↑o

; =============== S U B R O U T I N E =======================================


sub_140719AB8   proc near               ; CODE XREF: sub_140719A30+22↑p
                                        ; sub_140719A70+39↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx+8]
                mov     rdi, r8
                xor     eax, eax

loc_140719ACB:                          ; CODE XREF: sub_140719AB8+2A↓j
                test    rbx, rbx
                jz      short loc_140719AE4
                test    eax, eax
                js      short loc_140719AE4
                mov     rcx, rbx
                mov     rdx, rdi
                mov     rbx, [rbx]
                call    sub_140719A70
                jmp     short loc_140719ACB
; ---------------------------------------------------------------------------

loc_140719AE4:                          ; CODE XREF: sub_140719AB8+16↑j
                                        ; sub_140719AB8+1A↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140719AB8   endp

byte_140719AF0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106A10↑o

; =============== S U B R O U T I N E =======================================


sub_140719AF8   proc near               ; CODE XREF: sub_1405FA578:loc_1405FA946↑p
                                        ; DoScreenSave:loc_1405FC17A↑p ...
                push    rbx
                sub     rsp, 20h
                mov     edx, 78h ; 'x'
                mov     r8d, 77554D43h
                lea     ecx, [rdx-77h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140719B58
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+78h]
                call    memset
                and     qword ptr [rbx+10h], 0
                lea     rcx, [rbx+20h]
                and     qword ptr [rbx+18h], 0
                and     qword ptr [rbx+30h], 0
                and     qword ptr [rbx+38h], 0
                and     dword ptr [rbx+40h], 0
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                mov     dword ptr [rbx+44h], 0Eh

loc_140719B58:                          ; CODE XREF: sub_140719AF8+1F↑j
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140719AF8   endp

algn_140719B62:                         ; DATA XREF: .pdata:0000000140106A1C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140719B70   proc near               ; DATA XREF: .pdata:0000000140106A28↑o
                                        ; sub_1406D247C+AD↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_0], rcx
                push    rdi
                sub     rsp, 20h
                mov     edi, r8d
                mov     rbx, rcx
                mov     ecx, [rcx+0Ch]
                mov     eax, [rbx+8]
                sub     eax, ecx
                cmp     eax, r8d
                jb      short loc_140719BB7

loc_140719B92:                          ; DATA XREF: .rdata:00000001400879F0↑o
;   __try { // __except at loc_140719BA2
                mov     r8d, edi
                add     rcx, [rbx]
                call    memmove
                add     [rbx+0Ch], edi
                jmp     short loc_140719BAB
;   } // starts at 140719B92
; ---------------------------------------------------------------------------

loc_140719BA2:                          ; DATA XREF: .rdata:00000001400879F0↑o
;   __except(1) // owned by 140719B92
                mov     rax, [rsp+28h+arg_0]
                mov     byte ptr [rax+1Dh], 1

loc_140719BAB:                          ; CODE XREF: sub_140719B70+30↑j
                                        ; sub_140719B70+4B↓j
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140719BB7:                          ; CODE XREF: sub_140719B70+20↑j
                mov     byte ptr [rbx+1Ch], 1
                jmp     short loc_140719BAB
; } // starts at 140719B70
sub_140719B70   endp

; ---------------------------------------------------------------------------
byte_140719BBD  db 13h dup(0CCh)        ; DATA XREF: .pdata:0000000140106A28↑o

; =============== S U B R O U T I N E =======================================


sub_140719BD0   proc near               ; DATA XREF: .pdata:0000000140106A34↑o
                                        ; sub_140A726B4+10A↓o
                mov     ecx, [rdx+8]
                xor     eax, eax
                mov     edx, [r8+8]
                cmp     ecx, edx
                jl      short locret_140719BE2
                setle   al
                inc     eax

locret_140719BE2:                       ; CODE XREF: sub_140719BD0+B↑j
                retn
sub_140719BD0   endp

; ---------------------------------------------------------------------------
                align 4
byte_140719BE4  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106A34↑o

; =============== S U B R O U T I N E =======================================


sub_140719BEC   proc near               ; CODE XREF: sub_14062B550+1FD↑p
                                        ; sub_14062B550+1D6FB0↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014082D818 SIZE 0000001C BYTES

                sub     rsp, 38h
                and     [rsp+38h+arg_8], 0
                and     [rsp+38h+arg_10], 0
                bt      edx, 8
                jnb     short loc_140719C08

loc_140719C00:                          ; CODE XREF: sub_140719BEC+47↓j
                xor     eax, eax

loc_140719C02:                          ; CODE XREF: sub_140719BEC+113C36↓j
                                        ; sub_140719BEC+113C43↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140719C08:                          ; CODE XREF: sub_140719BEC+12↑j
                mov     r9d, 4
                lea     rax, [rsp+38h+arg_10]
                lea     r8, [rsp+38h+arg_8]
                mov     [rsp+38h+var_18], rax
                lea     edx, [r9+4]
                call    ZwQueryKey
                test    eax, eax
                js      loc_14082D81D
                test    byte ptr [rsp+38h+arg_8], 1
                jnz     short loc_140719C00
                jmp     loc_14082D818
sub_140719BEC   endp

; ---------------------------------------------------------------------------
algn_140719C3A:                         ; DATA XREF: .rdata:0000000140087A2C↑o
                                        ; .pdata:0000000140106A40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140719C40   proc near               ; CODE XREF: sub_14067EC44+139E↑p
                                        ; sub_14067EC44+142E↑p
                                        ; DATA XREF: ...
                test    rdx, rdx
                jz      short loc_140719C63
                mov     rax, [rdx+568h]

loc_140719C4C:                          ; CODE XREF: sub_140719C40+2A↓j
                lock inc dword ptr [rax+200h]
                lock inc dword ptr [rax+204h]
                mov     [rcx+568h], rax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140719C63:                          ; CODE XREF: sub_140719C40+3↑j
                lea     rax, unk_140C53900
                jmp     short loc_140719C4C
sub_140719C40   endp

; ---------------------------------------------------------------------------
byte_140719C6C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106A4C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140719C74   proc near               ; CODE XREF: sub_14064A9E0+C95↑p
                                        ; DATA XREF: .rdata:0000000140087B8C↑o ...

var_B8          = byte ptr -0B8h
var_B0          = qword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = word ptr -64h
var_62          = word ptr -62h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = xmmword ptr -58h
arg_0           = qword ptr  10h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014082D834 SIZE 000000AD BYTES

                mov     rax, rsp
                mov     [rax+8], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 98h
                xor     r10d, r10d
                movaps  xmmword ptr [rax-58h], xmm6
                lea     r15, [rcx-30h]
                mov     [rbp+57h+var_70], r10
                movzx   eax, byte ptr [r15+1Ah]
                mov     rsi, rcx
                mov     [rbp+57h+var_68], r10d
                lea     rcx, cs:140000000h
                mov     [rbp+57h+var_64], r10w
                lea     edi, [r10+40h]
                mov     [rbp+57h+arg_8], edi
                mov     [rbp+57h+var_5C], r10d
                test    al, 2
                jz      loc_14082D834
                and     eax, 3
                mov     r9, r15
                movzx   eax, byte ptr [rax+rcx+0C25E20h]
                sub     r9, rax

loc_140719CDD:                          ; CODE XREF: sub_140719C74+113BC3↓j
                test    r9, r9
                jz      short loc_140719CFA
                mov     rax, [r9]
                cmp     [rax+130h], r10
                jz      short loc_140719CFA
                mov     eax, 4
                cmp     [r9+8], ax
                jz      short loc_140719D17

loc_140719CFA:                          ; CODE XREF: sub_140719C74+6C↑j
                                        ; sub_140719C74+78↑j ...
                movaps  xmm6, [rsp+0D0h+var_58+8]
                add     rsp, 98h
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
; ---------------------------------------------------------------------------

loc_140719D17:                          ; CODE XREF: sub_140719C74+84↑j
                mov     rax, [r9+10h]
                cmp     word ptr [rax+2], 3Ah ; ':'
                jnz     short loc_140719CFA
                movzx   ecx, word ptr [rax]
                call    sub_14021DA60
                lea     ecx, [rax-41h]
                cmp     cx, 19h
                ja      short loc_140719CFA
                movzx   eax, ax
                xorps   xmm0, xmm0
                sub     eax, edi
                mov     [rbp+57h+var_62], r10w
                mov     [rsi+18h], eax
                mov     r12b, r10b
                mov     rax, [r9]
                mov     r13b, r10b
                mov     [rbp+57h+arg_10], rax
                movdqu  [rbp+57h+var_80], xmm0
                mov     [rbp+57h+var_60], 0FFFF1234h
                call    PsGetCurrentSilo
                mov     rcx, rax
                call    sub_14030E730
                mov     rcx, rax
                mov     [rbp+57h+arg_18], rax
                mov     rbx, rax
                call    ObfReferenceObject
                movups  xmm6, xmmword ptr [rsi+8]
                movaps  [rbp+57h+var_A0], xmm6
                call    sub_1402B95B0
                mov     rsi, rax
                xor     r9d, r9d

loc_140719D8B:                          ; CODE XREF: sub_140719C74+113C2F↓j
                mov     r8d, 8
                mov     edx, 0FFFEh
                movdqa  xmm0, xmm6
                mov     r14, rbx
                psrldq  xmm0, 8
                movd    ecx, xmm0
                test    cl, 7
                jnz     loc_14082D85B
                mov     rax, [rsi]
                mov     rcx, [rax]
                test    rcx, rcx
                jz      loc_14082D85B
                movd    edi, xmm6
                mov     word ptr [rbp+57h+var_A0], di
                cmp     di, r8w
                jb      loc_14082D85F
                mov     rax, cs:qword_140984E58
                movdqa  xmm0, xmm6
                psrldq  xmm0, 8
                movq    rbx, xmm0
                mov     qword ptr [rbp+57h+var_A0+8], rbx
                cmp     [rbx], rax
                jz      loc_14082D83C

loc_140719DF2:                          ; CODE XREF: sub_140719C74+250↓j
                                        ; sub_140719C74+113BE2↓j ...
                cmp     word ptr [rbx], 5Ch ; '\'
                jnz     short loc_140719E0B
                add     rbx, 2
                add     di, dx
                mov     qword ptr [rbp+57h+var_A0+8], rbx
                mov     word ptr [rbp+57h+var_A0], di
                movaps  xmm6, [rbp+57h+var_A0]

loc_140719E0B:                          ; CODE XREF: sub_140719C74+182↑j
                movdqa  [rbp+57h+var_90], xmm6
                test    di, di
                jz      short loc_140719E30

loc_140719E15:                          ; CODE XREF: sub_140719C74+1B2↓j
                cmp     word ptr [rbx], 5Ch ; '\'
                jz      short loc_140719E28
                add     rbx, 2
                add     di, dx
                mov     word ptr [rbp+57h+var_A0], di
                jnz     short loc_140719E15

loc_140719E28:                          ; CODE XREF: sub_140719C74+1A5↑j
                mov     qword ptr [rbp+57h+var_A0+8], rbx
                movaps  xmm6, [rbp+57h+var_A0]

loc_140719E30:                          ; CODE XREF: sub_140719C74+19F↑j
                sub     word ptr [rbp+57h+var_90], di
                jz      loc_140719FC6
                cmp     r14, [rbp+57h+arg_10]
                jz      loc_14082D868
                mov     r12b, r9b
                mov     r13b, r9b

loc_140719E4A:                          ; CODE XREF: sub_140719C74+113BFA↓j
                lea     rax, [rbp+57h+var_80]
                xor     r8d, r8d
                mov     [rsp+28h], rax
                lea     rdx, [rbp+57h+var_90]
                mov     byte ptr [rsp+0D0h+var_B0], r9b
                mov     rcx, r14
                xor     r9d, r9d
                call    sub_1405E8B3C
                mov     r8, rax
                cmp     r14, [rbp+57h+arg_10]
                jz      loc_14082D873
                mov     r13b, byte ptr [rbp+57h+var_62+1]
                mov     r12b, byte ptr [rbp+57h+var_62]

loc_140719E7F:                          ; CODE XREF: sub_140719C74+113C07↓j
                xor     r9d, r9d
                lea     r10, cs:140000000h
                test    r8, r8
                jz      short loc_140719ED6
                add     rax, 0FFFFFFFFFFFFFFD0h
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [r8-18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     rax, ds:rva qword_140CFCE60[r10+rdx*8]
                cmp     rax, cs:qword_140C259E0
                jnz     short loc_140719EC9
                mov     r14, r8
                mov     edx, 0FFFEh
                jmp     loc_140719DF2
; ---------------------------------------------------------------------------

loc_140719EC9:                          ; CODE XREF: sub_140719C74+246↑j
                cmp     rax, cs:qword_140C259E8
                jz      loc_14082D880

loc_140719ED6:                          ; CODE XREF: sub_140719C74+218↑j
                                        ; sub_140719C74+113C10↓j ...
                movzx   eax, byte ptr [r15+1Ah]
                and     eax, 3
                movzx   eax, byte ptr [rax+r10+0C25E20h]
                sub     r15, rax
                mov     rax, [r15]
                mov     r15d, 1
                mov     ebx, r15d
                mov     rdi, [rax+130h]
                test    r8, r8
                jz      short loc_140719F75
                lea     rax, [r8-30h]
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [r8-18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                mov     rax, cs:IoDeviceObjectType
                cmp     ds:rva qword_140CFCE60[r10+rdx*8], rax
                jnz     short loc_140719F75
                mov     eax, [r8+48h]
                cmp     eax, 13h
                ja      loc_14082D8BA
                cmp     eax, 12h
                jnb     loc_14082D8CD
                cmp     eax, 2
                jb      loc_140719FE5
                cmp     eax, 3
                jbe     loc_14082D8B0
                lea     ebx, [r15+5]
                cmp     eax, ebx
                jbe     loc_140719FE5
                cmp     eax, 9
                ja      short loc_140719FDD
                mov     ebx, [r8+34h]
                not     ebx
                and     ebx, r15d
                add     ebx, 2

loc_140719F75:                          ; CODE XREF: sub_140719C74+28C↑j
                                        ; sub_140719C74+2BA↑j ...
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                xor     edx, edx
                lea     rcx, [rsi+78h]
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rbp+57h+arg_0]
                mov     eax, r15d
                mov     ecx, [rcx+18h]
                dec     ecx
                shl     eax, cl
                mov     [rcx+rdi+20h], bl
                or      [rdi+1Ch], eax
                cmp     rdi, [rsi]
                jnz     short loc_140719FEA
                or      [rsi+8], eax

loc_140719FAD:                          ; CODE XREF: sub_140719C74+37B↓j
                xor     edx, edx
                lea     rcx, [rsi+78h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_140245770

loc_140719FC6:                          ; CODE XREF: sub_140719C74+1C0↑j
                lea     rcx, [rbp+57h+var_80]
                call    sub_14021C224
                mov     rcx, [rbp+57h+arg_18]
                call    PsDereferenceSiloContext
                jmp     loc_140719CFA
; ---------------------------------------------------------------------------

loc_140719FDD:                          ; CODE XREF: sub_140719C74+2F3↑j
                cmp     eax, 10h
                jmp     loc_14082D8C7
; ---------------------------------------------------------------------------

loc_140719FE5:                          ; CODE XREF: sub_140719C74+2D5↑j
                                        ; sub_140719C74+2EA↑j ...
                mov     ebx, r9d
                jmp     short loc_140719F75
; ---------------------------------------------------------------------------

loc_140719FEA:                          ; CODE XREF: sub_140719C74+334↑j
                add     [rsi+rcx*4+0Ch], r15d
                jmp     short loc_140719FAD
sub_140719C74   endp

; ---------------------------------------------------------------------------
algn_140719FF1:                         ; DATA XREF: .rdata:0000000140087B8C↑o
                                        ; .pdata:0000000140106A58↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140719FF8   proc near               ; CODE XREF: sub_14068296C+45↑p
                                        ; DATA XREF: .pdata:0000000140106A64↑o
                push    rbx
                sub     rsp, 20h
                mov     [rdx+10h], rcx
                mov     rbx, rdx
                mov     rcx, rdx
                call    sub_140605E78
                and     qword ptr [rbx+10h], 0
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140719FF8   endp

byte_14071A01B  db 15h dup(0CCh)        ; DATA XREF: .pdata:0000000140106A64↑o
; Exported entry 2438. RtlUnicodeToUTF8N

; =============== S U B R O U T I N E =======================================


