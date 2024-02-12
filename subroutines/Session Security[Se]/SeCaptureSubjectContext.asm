SeCaptureSubjectContext proc near       ; CODE XREF: sub_140218580+767↑p
                                        ; RtlCheckTokenMembershipEx+BC↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140807490 SIZE 00000059 BYTES

                mov     r11, rsp
                push    rbx
                push    rdi
                sub     rsp, 48h
                mov     rax, gs:188h
                mov     rbx, rcx
                mov     rcx, gs:188h

loc_1406518EE:                          ; DATA XREF: .rdata:00000001400585BC↑o
                                        ; .rdata:00000001400585D0↑o ...
                mov     [r11+20h], rbp
                mov     [r11-18h], rsi
                mov     rsi, [rax+0B8h]
                mov     [r11-20h], r14
                xor     r14d, r14d
                mov     [rsp+58h+arg_8], 0
                mov     [rsp+58h+arg_0], 0
                mov     rax, [rsi+440h]
                mov     [rbx+18h], rax
                test    rcx, rcx
                jz      loc_140807490
                lea     rax, [rbx+8]
                mov     [r11-30h], r14
                lea     r9, [r11+8]
                mov     [r11-38h], rax
                lea     r8, [r11+10h]
                xor     edx, edx
                call    sub_140652700

loc_14065193D:                          ; CODE XREF: SeCaptureSubjectContext+1B5BC3↓j
                lea     rbp, [rsi+4B8h]
                mov     [rbx], rax
                mov     rcx, rbp
                call    sub_14024C570
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14065197F

loc_140651957:                          ; CODE XREF: SeCaptureSubjectContext+102↓j
                mov     r14, [rsp+58h+var_20]
                mov     rsi, [rsp+58h+var_18]
                mov     rbp, [rsp+58h+arg_18]
                mov     [rbx+10h], rdi
                cmp     cs:dword_140D2D010, 0
                jnz     loc_140807498

loc_140651977:                          ; CODE XREF: SeCaptureSubjectContext+1B5BEF↓j
                                        ; SeCaptureSubjectContext+1B5C0D↓j ...
                add     rsp, 48h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14065197F:                          ; CODE XREF: SeCaptureSubjectContext+85↑j
                                        ; DATA XREF: .pdata:00000001400FF558↑o ...
                mov     [rsp+58h+var_28], r15
                mov     r15, gs:188h
                dec     word ptr [r15+1E4h]
                add     rsi, 438h
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                mov     rcx, rbp
                call    sub_14021AEA8
                mov     rdi, rax
                mov     eax, 11h
                lock cmpxchg [rsi], r14
                jnz     short loc_1406519D4

loc_1406519BD:                          ; CODE XREF: SeCaptureSubjectContext+10C↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     r15, [rsp+58h+var_28]
                jmp     short loc_140651957
; ---------------------------------------------------------------------------

loc_1406519D4:                          ; CODE XREF: SeCaptureSubjectContext+EB↑j
                                        ; DATA XREF: .pdata:00000001400FF564↑o ...
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     short loc_1406519BD
SeCaptureSubjectContext endp
