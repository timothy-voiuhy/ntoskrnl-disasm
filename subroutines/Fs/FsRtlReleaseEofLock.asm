FsRtlReleaseEofLock proc near           ; DATA XREF: .rdata:000000014006E3C4↑o
                                        ; .rdata:000000014006E3DC↑o ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404637B6 SIZE 000000DA BYTES

                mov     r11, rsp
                mov     [r11+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r15
                sub     rsp, 60h
                xor     r12d, r12d
                mov     [rsp+88h+var_58], rdx
                lea     rax, [r11-50h]
                mov     [r11+20h], r12d
                mov     [r11-48h], rax
                mov     rdi, rcx
                lea     rax, [r11-50h]
                mov     [r11+8], r12d
                mov     [r11-50h], rax
                mov     r15d, r12d
                mov     rbx, gs:188h
                mov     rax, rdx
                mov     rax, [rcx+18h]
                mov     rsi, [rax+30h]
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_1402F2514
                movzx   ecx, byte ptr [rbx+318h]

loc_1402F233D:                          ; DATA XREF: .rdata:000000014006E3C4↑o
                                        ; .rdata:000000014006E3DC↑o ...
                mov     [r11-30h], rbp
                mov     [r11-38h], r14
                mov     [r11+18h], r12d
                test    cl, cl
                jz      loc_1404637B6

loc_1402F2351:                          ; CODE XREF: FsRtlReleaseEofLock+171501↓j
                movzx   edx, cl
                mov     r14d, 1
                bsf     ecx, edx
                mov     eax, r14d
                shl     al, cl
                not     al
                mov     [rsp+88h+arg_10], ecx
                and     al, dl
                lea     rbp, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rbp, 5
                add     rbp, [rbx+320h]
                jz      loc_1404637F6
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_1402F23BB
                mov     rcx, rsi
                lea     rax, unk_140C4F848
                shr     rcx, 27h
                and     ecx, 1FFh
                add     ecx, 0FFFFFF00h
                cmp     [rcx+rax], r14b
                jz      loc_140463801

loc_1402F23BB:                          ; CODE XREF: FsRtlReleaseEofLock+C5↑j
                mov     eax, 0FFFFFFFFh

loc_1402F23C0:                          ; CODE XREF: FsRtlReleaseEofLock+17153E↓j
                mov     [rbp+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rbp+20h], rax

loc_1402F23D7:                          ; CODE XREF: FsRtlReleaseEofLock+17152C↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+88h+arg_18]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_1402F240A
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     loc_1402F2600

loc_1402F240A:                          ; CODE XREF: FsRtlReleaseEofLock+128↑j
                                        ; FsRtlReleaseEofLock+335↓j
                mov     rbx, cr8
                mov     cr8, r14
                lock btr dword ptr [rsi], 0
                jnb     loc_1402F2651

loc_1402F241D:                          ; CODE XREF: FsRtlReleaseEofLock+38C↓j
                test    rbp, rbp
                jz      short loc_1402F2426
                or      byte ptr [rbp+1Ah], 1

loc_1402F2426:                          ; CODE XREF: FsRtlReleaseEofLock+150↑j
                mov     rax, gs:188h
                mov     rbp, [rsp+88h+var_30]
                mov     [rsi+8], rax
                movzx   eax, bl
                mov     [rsi+30h], eax
                mov     rax, [rsp+88h+var_58]
                test    rax, rax
                jz      short loc_1402F2450

loc_1402F2448:                          ; DATA XREF: .pdata:00000001400D31D0↑o
                                        ; .pdata:00000001400D31DC↑o
                mov     rax, [rsp+88h+var_58]
                lock inc dword ptr [rax]

loc_1402F2450:                          ; CODE XREF: FsRtlReleaseEofLock+176↑j
                mov     eax, 0FFFFh
                add     [rdi+26h], ax
                jnz     loc_140463813
                mov     rax, [rdi+18h]
                mov     rbx, [rax+28h]
                cmp     [rdi+24h], r12b
                jnz     loc_1402F2661

loc_1402F2471:                          ; CODE XREF: FsRtlReleaseEofLock+3A5↓j
                mov     rcx, [rdi+8]
                lea     rax, [rdi+8]
                cmp     rcx, rax
                jnz     loc_1402F2532

loc_1402F2482:                          ; CODE XREF: FsRtlReleaseEofLock+2CC↓j
                mov     [rdi], r12
                mov     eax, r12d
                mov     [rdi+26h], r12w

loc_1402F248D:                          ; CODE XREF: FsRtlReleaseEofLock+2E2↓j
                mov     [rdi+20h], eax
                mov     rax, [rsp+88h+arg_8]
                mov     [rsp+88h+arg_8], rax
                mov     rax, [rsp+88h+arg_8]
                test    rax, rax
                jz      short loc_1402F24B8
                mov     rax, [rsp+88h+arg_8]
                lock inc dword ptr [rax]

loc_1402F24B8:                          ; CODE XREF: FsRtlReleaseEofLock+1DB↑j
                mov     rax, [rdi+18h]
                mov     rbx, [rax+30h]
                xor     eax, eax
                movzx   edi, byte ptr [rbx+30h]
                mov     [rbx+8], r12
                lock cmpxchg [rbx], r14d
                jnz     loc_1402F267A

loc_1402F24D5:                          ; CODE XREF: FsRtlReleaseEofLock+3B4↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140463829

loc_1402F24E3:                          ; CODE XREF: FsRtlReleaseEofLock+17155B↓j
                                        ; FsRtlReleaseEofLock+171567↓j ...
                mov     cr8, rdi
                mov     rcx, rbx
                call    sub_140243660
                mov     rbx, [rsp+88h+var_50]
                lea     rax, [rsp+88h+var_50]
                cmp     rbx, rax
                jnz     loc_1402F25C0

loc_1402F2502:                          ; CODE XREF: FsRtlReleaseEofLock+328↓j
                                        ; FsRtlReleaseEofLock+171554↓j
                mov     r14, [rsp+88h+var_38]
                add     rsp, 60h
                pop     r15
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_1402F2513:                         ; DATA XREF: .pdata:00000001400D31DC↑o
                                        ; .pdata:00000001400D31E8↑o
                align 4

loc_1402F2514:                          ; CODE XREF: FsRtlReleaseEofLock+60↑j
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+88h+var_68], r12
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1402F2532:                          ; CODE XREF: FsRtlReleaseEofLock+1AC↑j
                                        ; FsRtlReleaseEofLock+2C7↓j
                                        ; DATA XREF: ...
                mov     rdx, rcx
                mov     rcx, [rcx]
                mov     r8, [rdx+28h]
                test    r8, r8
                jns     loc_1402F260A

loc_1402F2545:                          ; CODE XREF: FsRtlReleaseEofLock+33D↓j
                test    r15, r15
                jnz     short loc_1402F2594
                mov     r8, [rdx+8]
                cmp     [rcx+8], rdx
                jnz     loc_1402F2689
                cmp     [r8], rdx
                jnz     loc_1402F2689
                mov     [r8], rcx
                lea     r9, [rsp+88h+var_50]
                mov     [rcx+8], r8
                mov     r8, [rsp+88h+var_50]
                cmp     [r8+8], r9
                jnz     loc_1402F2689
                mov     [rdx], r8
                lea     r9, [rsp+88h+var_50]
                mov     [rdx+8], r9
                mov     r15, rdx
                mov     [r8+8], rdx
                mov     [rsp+88h+var_50], rdx

loc_1402F2594:                          ; CODE XREF: FsRtlReleaseEofLock+278↑j
                                        ; FsRtlReleaseEofLock+37C↓j
                cmp     rcx, rax
                jnz     short loc_1402F2532
                test    r15, r15
                jz      loc_1402F2482
                mov     rax, [r15+30h]
                mov     [rdi], rax
                mov     [rdi+26h], r14w
                mov     eax, [r15+38h]
                jmp     loc_1402F248D
; ---------------------------------------------------------------------------
                align 20h

loc_1402F25C0:                          ; CODE XREF: FsRtlReleaseEofLock+22C↑j
                                        ; FsRtlReleaseEofLock+32E↓j
                mov     rcx, rbx
                mov     [rsp+88h+var_60], r12d
                mov     rbx, [rbx]
                lea     r8, [rsp+88h+arg_0]
                xor     r9d, r9d
                mov     byte ptr [rsp+88h+var_68], 1
                xor     edx, edx
                mov     eax, [rcx+38h]
                add     rcx, 10h
                mov     [rsp+88h+arg_0], eax
                call    sub_1402F42B8
                lea     rax, [rsp+88h+var_50]
                cmp     rbx, rax
                jz      loc_1402F2502
                jmp     short loc_1402F25C0
; ---------------------------------------------------------------------------

loc_1402F2600:                          ; CODE XREF: FsRtlReleaseEofLock+134↑j
                                        ; DATA XREF: .pdata:00000001400D31F4↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     loc_1402F240A
; ---------------------------------------------------------------------------

loc_1402F260A:                          ; CODE XREF: FsRtlReleaseEofLock+26F↑j
                                        ; DATA XREF: .pdata:00000001400D3200↑o ...
                cmp     r8, rbx
                jg      loc_1402F2545
                mov     r8, [rdx+8]
                cmp     [rcx+8], rdx
                jnz     short loc_1402F2689
                cmp     [r8], rdx
                jnz     short loc_1402F2689
                mov     [r8], rcx
                lea     r9, [rsp+88h+var_50]
                mov     [rcx+8], r8
                mov     r8, [rsp+88h+var_48]
                cmp     [r8], r9
                jnz     short loc_1402F2689
                mov     [rdx+8], r8
                lea     r9, [rsp+88h+var_50]
                mov     [rdx], r9
                mov     [r8], rdx
                mov     [rsp+88h+var_48], rdx
                jmp     loc_1402F2594
; ---------------------------------------------------------------------------

loc_1402F2651:                          ; CODE XREF: FsRtlReleaseEofLock+147↑j
                                        ; DATA XREF: .pdata:00000001400D320C↑o ...
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402F5E40
                jmp     loc_1402F241D
; ---------------------------------------------------------------------------

loc_1402F2661:                          ; CODE XREF: FsRtlReleaseEofLock+19B↑j
                                        ; DATA XREF: .pdata:00000001400D3218↑o ...
                mov     rcx, [rdi]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dl, 1
                call    sub_140248280
                mov     [rdi+24h], r12b
                jmp     loc_1402F2471
; ---------------------------------------------------------------------------

loc_1402F267A:                          ; CODE XREF: FsRtlReleaseEofLock+1FF↑j
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     loc_1402F24D5
; ---------------------------------------------------------------------------

loc_1402F2689:                          ; CODE XREF: FsRtlReleaseEofLock+282↑j
                                        ; FsRtlReleaseEofLock+28B↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
FsRtlReleaseEofLock endp
