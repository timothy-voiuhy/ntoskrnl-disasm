RtlClearBit     proc near               ; DATA XREF: .pdata:00000001400D6FF8↑o
                mov     rax, [rcx+8]
                btr     [rax], edx
                retn
RtlClearBit     endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14033E179:                         ; DATA XREF: .pdata:00000001400D6FF8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14033E180   proc near               ; CODE XREF: sub_140260E80+589↑p
                                        ; DATA XREF: .pdata:00000001400D7004↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14d, edx
                mov     eax, 40000h
                mov     rbp, rdx
                mov     rdi, rcx
                and     r14d, 3FFFFh
                xor     edx, edx
                sub     eax, r14d
                add     rcx, 68h ; 'h'
                mov     [r9], eax
                mov     rsi, r8
                xor     ebx, ebx
                call    ExAcquirePushLockSharedEx
                cmp     qword ptr [rdi+20h], 2000000h
                jg      short loc_14033E21C
                mov     rax, [rdi+58h]
                mov     ecx, ebp
                shr     rcx, 12h
                mov     rax, [rax+rcx*8]

loc_14033E1DB:                          ; CODE XREF: sub_14033E180+A7↓j
                mov     [rsi], rax
                test    rax, rax
                jz      short loc_14033E1F4
                mov     rcx, rax
                call    sub_140262EC4
                mov     rdx, [rsi]
                mov     ebx, r14d
                add     rbx, [rdx]

loc_14033E1F4:                          ; CODE XREF: sub_14033E180+61↑j
                xor     edx, edx
                lea     rcx, [rdi+68h]
                call    ExReleasePushLockEx
                mov     rbp, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033E21C:                          ; CODE XREF: sub_14033E180+4B↑j
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14033E230
                jmp     short loc_14033E1DB
sub_14033E180   endp

; ---------------------------------------------------------------------------
algn_14033E229:                         ; DATA XREF: .pdata:00000001400D7004↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14033E230   proc near               ; CODE XREF: sub_140262B20+19C↑p
                                        ; sub_14033E180+A2↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     rbx, [rcx+58h]
                xor     r8d, r8d
                mov     r11, rdx
                mov     rdx, [rcx+20h]
                lea     r9d, [r8+19h]

loc_14033E247:                          ; CODE XREF: sub_14033E230+2F↓j
                mov     r10d, r9d
                mov     eax, 1
                add     r9d, 7
                inc     r8d
                mov     ecx, r9d
                shl     rax, cl
                cmp     rdx, rax
                jg      short loc_14033E247
                mov     rax, r11
                mov     ecx, r10d
                sar     rax, cl
                mov     rax, [rbx+rax*8]

loc_14033E26E:                          ; CODE XREF: sub_14033E230+6D↓j
                test    rax, rax
                jz      short loc_14033E29F
                test    r8d, r8d
                jz      short loc_14033E29F
                mov     ecx, r10d
                mov     edx, 1
                shl     rdx, cl
                add     r10d, 0FFFFFFF9h
                dec     rdx
                dec     r8d
                and     r11, rdx
                mov     ecx, r10d
                mov     rdx, r11
                sar     rdx, cl
                mov     rax, [rax+rdx*8]
                jmp     short loc_14033E26E
; ---------------------------------------------------------------------------

loc_14033E29F:                          ; CODE XREF: sub_14033E230+41↑j
                                        ; sub_14033E230+46↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14033E230   endp

algn_14033E2A6:                         ; DATA XREF: .pdata:00000001400D7010↑o
                align 10h
; Exported entry 878. IoGetSiloParameters

; =============== S U B R O U T I N E =======================================


