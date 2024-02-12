ExTryAcquireAutoExpandPushLockShared proc near
                                        ; DATA XREF: .rdata:0000000140099EB8↑o
                                        ; .pdata:00000001400DC4D0↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049D93E SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     esi, esi
                mov     ebp, edx
                xor     ebx, ebx
                mov     rdi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14049D93E
                and     ebp, 2
                jnz     short loc_1403909BC
                xor     edx, edx
                lea     r8d, [rsi+1]
                call    sub_140244C10
                mov     rsi, rax

loc_1403909BC:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+2C↑j
                mov     ecx, [rdi+8]
                test    cl, 1
                jnz     short loc_140390A0D
                mov     ecx, 11h
                xor     eax, eax
                lock cmpxchg [rdi], rcx
                jnz     short loc_140390A1F

loc_1403909D2:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+A9↓j
                mov     rbx, rdi
                or      rbx, 1

loc_1403909D9:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+9D↓j
                                        ; ExTryAcquireAutoExpandPushLockShared+AB↓j
                test    ebp, ebp
                jnz     short loc_1403909E6
                test    rbx, rbx
                jz      short loc_1403909E6
                or      rbx, 2

loc_1403909E6:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+5B↑j
                                        ; ExTryAcquireAutoExpandPushLockShared+60↑j
                test    rsi, rsi
                jz      short loc_1403909F4
                test    rbx, rbx
                jz      short loc_140390A2D
                or      byte ptr [rsi+1Ah], 1

loc_1403909F4:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+69↑j
                                        ; ExTryAcquireAutoExpandPushLockShared+B8↓j
                mov     rbp, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140390A0D:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+42↑j
                mov     eax, 0FFFFFFF8h
                and     rcx, rax
                call    sub_140390A40
                mov     rbx, rax
                jmp     short loc_1403909D9
; ---------------------------------------------------------------------------

loc_140390A1F:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+50↑j
                mov     rcx, rdi
                call    ExfTryAcquirePushLockShared
                test    al, al
                jnz     short loc_1403909D2
                jmp     short loc_1403909D9
; ---------------------------------------------------------------------------

loc_140390A2D:                          ; CODE XREF: ExTryAcquireAutoExpandPushLockShared+6E↑j
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14031D1B0
                jmp     short loc_1403909F4
ExTryAcquireAutoExpandPushLockShared endp
