ExAcquireAutoExpandPushLockShared proc near
                                        ; CODE XREF: sub_14054D1AC+11↓p
                                        ; sub_14054D208+30↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 00000001404718B8 SIZE 0000003C BYTES

                push    rbx
                push    rbp
                push    rsi
                sub     rsp, 30h
                xor     esi, esi
                mov     ebp, edx
                mov     rbx, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_1404718B8

loc_14031E5EB:                          ; DATA XREF: .rdata:0000000140078E2C↑o
                                        ; .rdata:0000000140078E3C↑o ...
                mov     [rsp+48h+arg_0], rdi
                and     ebp, 2
                jnz     loc_14031E6D4
                mov     [rsp+48h+arg_10], esi
                mov     rdi, gs:188h
                dec     word ptr [rdi+1E6h]
                inc     byte ptr [rdi+31Ah]
                cmp     byte ptr [rdi+31Ah], 1
                jnz     loc_14031E713
                movzx   eax, byte ptr [rdi+318h]
                mov     [rsp+48h+arg_8], esi
                test    al, al
                jz      loc_14031E752

loc_14031E633:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+1C7↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+48h+arg_8], eax
                mov     [rdi+318h], cl
                lea     rsi, [rax+rax*2]
                shl     rsi, 5
                add     rsi, [rdi+320h]
                jz      loc_14031E76B
                mov     rax, 0FFFF800000000000h
                cmp     rbx, rax
                jb      short loc_14031E68C
                mov     rax, rbx
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_1404718E2

loc_14031E68C:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+98↑j
                mov     eax, 0FFFFFFFFh

loc_14031E691:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+15331F↓j
                mov     [rsi+28h], eax
                mov     rax, rbx
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_14031E6A8:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+1A1↓j
                dec     byte ptr [rdi+31Ah]
                lea     r8, [rsp+48h+arg_10]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1402456E0
                add     word ptr [rdi+1E6h], 1
                jnz     short loc_14031E6D4
                add     rdi, 98h
                cmp     [rdi], rdi
                jnz     short loc_14031E74B

loc_14031E6D4:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+23↑j
                                        ; ExAcquireAutoExpandPushLockShared+F6↑j ...
                mov     eax, [rbx+8]
                test    al, 1
                jnz     short loc_14031E731
                mov     ecx, 11h
                xor     eax, eax
                lock cmpxchg [rbx], rcx
                jnz     loc_14031E776

loc_14031E6ED:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+1B4↓j
                or      rbx, 1

loc_14031E6F1:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+179↓j
                test    ebp, ebp
                jnz     short loc_14031E6F9
                or      rbx, 2

loc_14031E6F9:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+123↑j
                test    rsi, rsi
                jz      short loc_14031E702
                or      byte ptr [rsi+1Ah], 1

loc_14031E702:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+12C↑j
                mov     rdi, [rsp+48h+arg_0]
                mov     rax, rbx
                add     rsp, 30h
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14031E712  db 0CCh                 ; DATA XREF: .pdata:00000001400D53A8↑o
                                        ; .pdata:00000001400D53B4↑o
; ---------------------------------------------------------------------------

loc_14031E713:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+4A↑j
                                        ; DATA XREF: .pdata:00000001400D53B4↑o ...
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rbx
                mov     rdx, rdi
                mov     [rsp+48h+var_28], rsi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14031E731:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+109↑j
                mov     ecx, eax
                mov     r8, rbx
                mov     eax, 0FFFFFFF8h
                mov     rdx, rsi
                and     rcx, rax
                call    sub_140390AC0
                mov     rbx, rax
                jmp     short loc_14031E6F1
; ---------------------------------------------------------------------------

loc_14031E74B:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+102↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14031E6D4
; ---------------------------------------------------------------------------

loc_14031E752:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+5D↑j
                cmp     [rdi+366h], sil
                jnz     short loc_14031E789
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_1404718D1

loc_14031E76B:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+85↑j
                                        ; ExAcquireAutoExpandPushLockShared+15330D↓j
                lock bts dword ptr [rdi+78h], 10h
                jmp     loc_14031E6A8
; ---------------------------------------------------------------------------

loc_14031E776:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+117↑j
                mov     r8, rbx
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402F6140
                jmp     loc_14031E6ED
; ---------------------------------------------------------------------------

loc_14031E789:                          ; CODE XREF: ExAcquireAutoExpandPushLockShared+189↑j
                mov     eax, esi
                xchg    al, [rdi+366h]
                or      al, [rdi+318h]
                jmp     loc_14031E633
ExAcquireAutoExpandPushLockShared endp
