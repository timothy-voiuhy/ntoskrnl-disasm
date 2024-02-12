CcSetDirtyPinnedData proc near          ; CODE XREF: sub_1402F2C28+137↑p
                                        ; sub_1402F736C+16D7FF↓p ...

var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404639B8 SIZE 00000308 BYTES

                push    rbp
                push    rdi
                push    r13
                sub     rsp, 80h
                xor     eax, eax
                mov     rdi, rcx
                mov     [rsp+98h+var_40], rax
                xorps   xmm0, xmm0
                movzx   eax, word ptr [rcx]
                mov     r13, rdx
                mov     ecx, 2FDh
                movups  [rsp+98h+var_50], xmm0
                lea     edx, [rcx-3]
                cmp     ax, cx
                jnz     loc_1402F35B7

loc_1402F3035:                          ; CODE XREF: CcSetDirtyPinnedData+5BA↓j
                                        ; DATA XREF: .rdata:000000014006E690↑o ...
                mov     [rsp+98h+arg_8], rbx
                xor     ebp, ebp
                mov     [rsp+98h+var_28], r12
                lea     r12, [rsp+98h+var_60]
                mov     [rsp+98h+var_38], r15
                mov     rbx, rdi
                mov     [rsp+98h+var_60], rdi
                mov     [rsp+98h+var_58], rbp
                cmp     ax, dx
                jz      loc_1402F35C5

loc_1402F3064:                          ; CODE XREF: CcSetDirtyPinnedData+5CD↓j
                mov     rbx, [rbx+0B0h]
                mov     [rsp+98h+var_20], rsi
                mov     [rsp+98h+var_30], r14
                mov     r15, [rbx+210h]
                mov     [rsp+98h+var_68], r15
                cmp     [rbx+0A8h], rbp
                jz      loc_1402F3182
                mov     rax, [rbx+60h]
                and     rax, 0FFFFFFFFFFFFFFF0h
                mov     r14, [rax+28h]
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404639D7

loc_1402F30B5:                          ; CODE XREF: CcSetDirtyPinnedData+1709D9↓j
                                        ; CcSetDirtyPinnedData+1709E3↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140463A1C
                mov     rsi, gs:20h
                mov     [rsp+98h+arg_0], ebp
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_140463A32

loc_1402F30E2:                          ; CODE XREF: CcSetDirtyPinnedData+170A36↓j
                                        ; CcSetDirtyPinnedData+170A45↓j ...
                lock bts cs:dword_140C4C800, 1Fh
                jb      loc_1402F34B4

loc_1402F30F1:                          ; CODE XREF: CcSetDirtyPinnedData+4DB↓j
                mov     edx, cs:dword_140C4C800
                mov     ecx, edx
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     loc_140463A80

loc_1402F3109:                          ; CODE XREF: CcSetDirtyPinnedData+170A2D↓j
                                        ; CcSetDirtyPinnedData+170ABA↓j
                mov     rax, [r14]
                test    rax, rax
                jz      loc_140463ABF
                movzx   edx, word ptr [rax+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     edx, 3FFh
                mov     rsi, [rax+rdx*8]

loc_1402F312A:                          ; CODE XREF: CcSetDirtyPinnedData+170AC6↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_140463ACB
                mov     cs:dword_140C4C800, ebp

loc_1402F313D:                          ; CODE XREF: CcSetDirtyPinnedData+170AE0↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140463AE5

loc_1402F3156:                          ; CODE XREF: CcSetDirtyPinnedData+170AE9↓j
                                        ; CcSetDirtyPinnedData+170AF8↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140463B09

loc_1402F3164:                          ; CODE XREF: CcSetDirtyPinnedData+170B0B↓j
                                        ; CcSetDirtyPinnedData+170B17↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                mov     rax, [rsi+0B0h]
                mov     r15, [rsp+98h+var_68]
                cmp     r15, [rax+8]
                jnz     loc_140463B73

loc_1402F3182:                          ; CODE XREF: CcSetDirtyPinnedData+88↑j
                mov     ecx, [rbx+98h]
                bt      ecx, 18h
                jnb     short loc_1402F31A3
                mov     rax, [rbx+0F0h]
                cmp     qword ptr [rax+88h], 0FFFFFFFFFFFFFFFFh
                jz      loc_1402F3591

loc_1402F31A3:                          ; CODE XREF: CcSetDirtyPinnedData+18C↑j
                                        ; CcSetDirtyPinnedData+5B2↓j
                bt      ecx, 9
                jnb     loc_1402F353F
                mov     rax, [r12]
                test    rax, rax
                jz      loc_1402F33AA
                mov     esi, 1

loc_1402F31BF:                          ; CODE XREF: CcSetDirtyPinnedData+170C9D↓j
                mov     [rsp+98h+var_60], rax
                lea     r9, qword_140C4C740
                lea     r12, [r12+8]
                mov     r8, 0FFFF800000000000h
                test    al, 1
                jnz     loc_140463CA2
                mov     r14, [rax+0B0h]
                mov     [rsp+98h+arg_18], ebp
                mov     rbx, gs:188h
                lea     rdi, [r14+118h]
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_1402F33D3
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+98h+arg_10], ebp
                test    al, al
                jz      loc_1402F3557

loc_1402F3230:                          ; CODE XREF: CcSetDirtyPinnedData+58C↓j
                movzx   edx, al
                mov     eax, esi
                bsf     ecx, edx
                shl     al, cl
                not     al
                mov     [rsp+98h+arg_10], ecx
                and     al, dl
                lea     rsi, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jz      loc_1402F3573
                cmp     rdi, r8
                jb      short loc_1402F3285
                mov     rax, rdi
                shr     rax, 27h
                and     eax, 1FFh
                add     eax, 0FFFFFF00h
                cmp     byte ptr [rax+r9+3108h], 1
                jz      loc_140463BA2

loc_1402F3285:                          ; CODE XREF: CcSetDirtyPinnedData+263↑j
                mov     eax, 0FFFFFFFFh

loc_1402F328A:                          ; CODE XREF: CcSetDirtyPinnedData+170BAF↓j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1402F32A1:                          ; CODE XREF: CcSetDirtyPinnedData+579↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+98h+arg_18]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_1402F32D4
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     loc_1402F3516

loc_1402F32D4:                          ; CODE XREF: CcSetDirtyPinnedData+2C2↑j
                                        ; CcSetDirtyPinnedData+51B↓j
                mov     rbx, cr8
                mov     eax, 1
                mov     cr8, rax
                lock btr dword ptr [rdi], 0
                jnb     loc_1402F3520

loc_1402F32EC:                          ; CODE XREF: CcSetDirtyPinnedData+52B↓j
                test    rsi, rsi
                jz      short loc_1402F32F5
                or      byte ptr [rsi+1Ah], 1

loc_1402F32F5:                          ; CODE XREF: CcSetDirtyPinnedData+2EF↑j
                mov     rax, gs:188h
                mov     [rdi+8], rax
                movzx   eax, bl
                mov     rbx, [rsp+98h+var_60]
                mov     [rdi+30h], eax
                cmp     [rbx+2], bpl
                jz      loc_1402F33F1

loc_1402F3317:                          ; CODE XREF: CcSetDirtyPinnedData+468↓j
                                        ; CcSetDirtyPinnedData+170C24↓j
                mov     esi, 1

loc_1402F331C:                          ; CODE XREF: CcSetDirtyPinnedData+4AF↓j
                test    r13, r13
                jz      short loc_1402F3361
                mov     rcx, [rbx+28h]
                mov     rax, [r13+0]
                test    rcx, rcx
                jz      loc_1402F3509
                cmp     rax, rcx
                jl      loc_1402F3509

loc_1402F333B:                          ; CODE XREF: CcSetDirtyPinnedData+511↓j
                mov     rcx, [rbx+30h]
                test    rcx, rcx
                jz      short loc_1402F3349
                cmp     rax, rcx
                jle     short loc_1402F3351

loc_1402F3349:                          ; CODE XREF: CcSetDirtyPinnedData+342↑j
                mov     [rbx+30h], rax
                mov     rax, [r13+0]

loc_1402F3351:                          ; CODE XREF: CcSetDirtyPinnedData+347↑j
                cmp     rax, [r14+100h]
                jle     short loc_1402F3361
                mov     [r14+100h], rax

loc_1402F3361:                          ; CODE XREF: CcSetDirtyPinnedData+31F↑j
                                        ; CcSetDirtyPinnedData+358↑j
                mov     rax, [rbx+20h]
                cmp     rax, [r14+30h]
                jg      loc_140463C29

loc_1402F336F:                          ; CODE XREF: CcSetDirtyPinnedData+170C2D↓j
                movzx   ebx, byte ptr [rdi+30h]
                xor     eax, eax
                mov     [rdi+8], rbp
                lock cmpxchg [rdi], esi
                jnz     loc_1402F3530

loc_1402F3383:                          ; CODE XREF: CcSetDirtyPinnedData+53A↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140463C32

loc_1402F3391:                          ; CODE XREF: CcSetDirtyPinnedData+170C34↓j
                                        ; CcSetDirtyPinnedData+170C40↓j ...
                mov     cr8, rbx
                mov     rcx, rdi
                call    sub_140243660
                mov     rax, [r12]
                test    rax, rax
                jnz     loc_140463C98

loc_1402F33AA:                          ; CODE XREF: CcSetDirtyPinnedData+1B4↑j
                                        ; CcSetDirtyPinnedData+552↓j
                mov     r14, [rsp+98h+var_30]
                mov     rsi, [rsp+98h+var_20]
                mov     r12, [rsp+98h+var_28]
                mov     rbx, [rsp+98h+arg_8]
                mov     r15, [rsp+98h+var_38]
                add     rsp, 80h
                pop     r13
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
byte_1402F33D2  db 0CCh                 ; DATA XREF: .pdata:00000001400D3278↑o
                                        ; .pdata:00000001400D3284↑o
; ---------------------------------------------------------------------------

loc_1402F33D3:                          ; CODE XREF: CcSetDirtyPinnedData+214↑j
                                        ; DATA XREF: .pdata:00000001400D3284↑o ...
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rdi
                mov     rdx, rbx
                mov     [rsp+98h+var_78], rbp
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1402F33F1:                          ; CODE XREF: CcSetDirtyPinnedData+311↑j
                mov     esi, [rbx+4]
                shr     esi, 0Ch
                mov     byte ptr [rbx+2], 1
                test    r13, r13
                jz      short loc_1402F3410
                mov     rax, [r13+0]
                mov     [rbx+28h], rax
                mov     rax, [r13+0]
                mov     [rbx+30h], rax

loc_1402F3410:                          ; CODE XREF: CcSetDirtyPinnedData+3FE↑j
                lea     rcx, [r15+80h]
                lea     rdx, [rsp+98h+var_50]
                call    KeAcquireInStackQueuedSpinLock
                cmp     [r14+70h], ebp
                jz      loc_1402F34E0

loc_1402F342B:                          ; CODE XREF: CcSetDirtyPinnedData+4E9↓j
                                        ; CcSetDirtyPinnedData+504↓j
                mov     r9d, esi
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r14
                call    sub_140288780
                lea     rcx, [rsp+98h+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   r15d, byte ptr [rsp+98h+var_40]
                test    eax, eax
                jnz     loc_140463BB4

loc_1402F3459:                          ; CODE XREF: CcSetDirtyPinnedData+170BB6↓j
                                        ; CcSetDirtyPinnedData+170BC2↓j ...
                mov     cr8, r15
                test    dword ptr [r14+98h], 10000000h
                jz      loc_1402F3317
                mov     rax, gs:188h
                shl     esi, 0Ch
                mov     rcx, [rax+220h]
                mov     eax, esi
                mov     rdx, [rcx+8B8h]
                test    rdx, rdx
                jz      loc_140463C1F
                test    esi, esi
                jz      short loc_1402F349D
                lock xadd [rdx+8], rax

loc_1402F349D:                          ; CODE XREF: CcSetDirtyPinnedData+495↑j
                mov     esi, 1
                mov     eax, esi
                lock xadd [rdx+18h], rax
                mov     rbx, [rsp+98h+var_60]
                jmp     loc_1402F331C
; ---------------------------------------------------------------------------

loc_1402F34B4:                          ; CODE XREF: CcSetDirtyPinnedData+EB↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_140463A59

loc_1402F34C4:                          ; CODE XREF: CcSetDirtyPinnedData+170A5D↓j
                                        ; CcSetDirtyPinnedData+170A6C↓j ...
                movzx   edx, r15b
                lea     rcx, dword_140C4C800
                call    sub_14028EAE0
                mov     [rsp+98h+arg_0], eax
                jmp     loc_1402F30F1
; ---------------------------------------------------------------------------

loc_1402F34E0:                          ; CODE XREF: CcSetDirtyPinnedData+425↑j
                mov     eax, [r14+98h]
                test    al, 2
                jnz     loc_1402F342B
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r15
                call    sub_1402F9FDC
                mov     rcx, r14
                call    sub_1402FA068
                jmp     loc_1402F342B
; ---------------------------------------------------------------------------

loc_1402F3509:                          ; CODE XREF: CcSetDirtyPinnedData+32C↑j
                                        ; CcSetDirtyPinnedData+335↑j
                mov     [rbx+28h], rax
                mov     rax, [r13+0]
                jmp     loc_1402F333B
; ---------------------------------------------------------------------------

loc_1402F3516:                          ; CODE XREF: CcSetDirtyPinnedData+2CE↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_1402F32D4
; ---------------------------------------------------------------------------

loc_1402F3520:                          ; CODE XREF: CcSetDirtyPinnedData+2E6↑j
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5E40
                jmp     loc_1402F32EC
; ---------------------------------------------------------------------------

loc_1402F3530:                          ; CODE XREF: CcSetDirtyPinnedData+37D↑j
                mov     edx, eax
                mov     rcx, rdi
                call    sub_1402F424C
                jmp     loc_1402F3383
; ---------------------------------------------------------------------------

loc_1402F353F:                          ; CODE XREF: CcSetDirtyPinnedData+1A7↑j
                mov     r8d, [rdi+4]
                lea     rdx, [rdi+8]
                xor     r9d, r9d
                mov     rcx, rbx
                call    sub_1402889E0
                jmp     loc_1402F33AA
; ---------------------------------------------------------------------------

loc_1402F3557:                          ; CODE XREF: CcSetDirtyPinnedData+22A↑j
                cmp     [rbx+366h], bpl
                jnz     short loc_1402F357E
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                mov     rsi, rbp
                jnz     loc_140463B91

loc_1402F3573:                          ; CODE XREF: CcSetDirtyPinnedData+25A↑j
                                        ; CcSetDirtyPinnedData+170B9D↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_1402F32A1
; ---------------------------------------------------------------------------

loc_1402F357E:                          ; CODE XREF: CcSetDirtyPinnedData+55E↑j
                mov     eax, ebp
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_1402F3230
; ---------------------------------------------------------------------------

loc_1402F3591:                          ; CODE XREF: CcSetDirtyPinnedData+19D↑j
                mov     rdx, 0FFFFF78000000320h
                mov     rdx, [rdx]
                mov     rax, [rbx+0F0h]
                mov     [rax+88h], rdx
                mov     ecx, [rbx+98h]
                jmp     loc_1402F31A3
; ---------------------------------------------------------------------------

loc_1402F35B7:                          ; CODE XREF: CcSetDirtyPinnedData+2F↑j
                                        ; DATA XREF: .pdata:00000001400D3290↑o ...
                cmp     ax, dx
                jz      loc_1402F3035
                jmp     loc_1404639B8
; ---------------------------------------------------------------------------

loc_1402F35C5:                          ; CODE XREF: CcSetDirtyPinnedData+5E↑j
                                        ; DATA XREF: .pdata:00000001400D329C↑o ...
                mov     rbx, [rdi+10h]
                lea     r12, [rdi+10h]
                jmp     loc_1402F3064
CcSetDirtyPinnedData endp
