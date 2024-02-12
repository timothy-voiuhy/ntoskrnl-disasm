ExAcquireFastResourceExclusive proc near
                                        ; CODE XREF: sub_14038E344+25↑p
                                        ; DATA XREF: .rdata:0000000140099AD0↑o ...

var_60          = qword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 000000014049C746 SIZE 000001D3 BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                xor     eax, eax
                xor     r14d, r14d
                xorps   xmm0, xmm0
                mov     [rbp+var_40], rax
                mov     al, r8b
                mov     r13b, r8b
                neg     al
                mov     rbx, rdx
                lea     r11d, [r14+2]
                mov     rsi, rcx
                sbb     r8b, r8b
                mov     edi, r14d
                add     r8b, r11b
                movups  [rbp+var_38], xmm0
                movups  [rbp+var_28], xmm0
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_50], xmm0
                mov     r10, gs:188h
                test    byte ptr [rcx+1Ah], 1
                mov     [rbp+arg_0], r10
                jz      loc_14049C746
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, r8b
                ja      loc_14049C760
                cmp     cl, r11b
                jnb     loc_14049C77A

loc_14038EC3F:                          ; CODE XREF: ExAcquireFastResourceExclusive+10DBD7↓j
                movzx   eax, byte ptr [rdx+0C0h]
                test    r11b, al
                jnz     loc_14049C7A7
                cmp     cl, 1
                jnb     short loc_14038EC6A
                test    dword ptr [rdx+74h], 400h
                jnz     short loc_14038EC6A
                cmp     [rdx+1E4h], r14d
                jz      loc_14049C7C1

loc_14038EC6A:                          ; CODE XREF: ExAcquireFastResourceExclusive+A2↑j
                                        ; ExAcquireFastResourceExclusive+AB↑j
                mov     r9, [rbx+20h]
                cmp     r9, rdx
                jnz     loc_14049C7DB
                mov     r9, [rbx+18h]
                test    r9, r9
                jnz     loc_14049C7F3
                or      byte ptr [rbx+11h], 4
                mov     [rbx+18h], rsi
                mov     r15, cr8
                mov     cr8, r11
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14049C809

loc_14038ECA6:                          ; CODE XREF: ExAcquireFastResourceExclusive+10DC5B↓j
                                        ; ExAcquireFastResourceExclusive+10DC65↓j ...
                mov     al, [rsi+1Ah]
                test    al, al
                js      loc_14038EE6D

loc_14038ECB1:                          ; CODE XREF: ExAcquireFastResourceExclusive+2D1↓j
                mov     r8d, r14d
                test    r13b, r13b
                mov     rcx, rsi
                setz    r8b
                xor     edx, edx
                call    sub_140244C10
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14038ED08
                movzx   ecx, byte ptr [rax+18h]
                mov     rdx, rax
                shl     rcx, 4
                sub     rdx, rcx
                mov     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rcx, [rdx+320h]
                imul    rcx
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                add     dl, dl
                or      dl, 1
                mov     [rbx+10h], dl

loc_14038ED08:                          ; CODE XREF: ExAcquireFastResourceExclusive+11B↑j
                lea     rdx, [rsi+60h]
                mov     qword ptr [rbp+var_50], r14
                lea     rcx, [rbp+var_50]
                mov     qword ptr [rbp+var_50+8], rdx
                call    sub_14024B3F0
                mov     rcx, rsi
                call    sub_1402481A0
                mov     r14b, al
                test    al, al
                jz      loc_14038EDBE
                lea     rdx, [rsi+30h]
                mov     r9, [rdx+8]
                lea     r8, [rbx+38h]
                cmp     [r9], rdx
                jnz     loc_14049C8AE
                mov     [r8], rdx
                lea     rcx, [rbp+var_50]
                mov     [r8+8], r9
                mov     [r9], r8
                mov     [rdx+8], r8
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rcx, [rbp+arg_0]
                mov     r9, rbx
                xor     r8d, r8d
                call    sub_14038F98C

loc_14038ED6B:                          ; CODE XREF: ExAcquireFastResourceExclusive+314↓j
                mov     r11d, 2

loc_14038ED71:                          ; CODE XREF: ExAcquireFastResourceExclusive+2F9↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049C84A

loc_14038ED7F:                          ; CODE XREF: ExAcquireFastResourceExclusive+10DC9C↓j
                                        ; ExAcquireFastResourceExclusive+10DCA8↓j ...
                movzx   eax, r15b
                mov     cr8, rax

loc_14038ED87:                          ; CODE XREF: ExAcquireFastResourceExclusive+2B8↓j
                test    rdi, rdi
                jz      short loc_14038ED99
                test    r14b, r14b
                jz      loc_14038EEC9
                or      byte ptr [rdi+1Ah], 1

loc_14038ED99:                          ; CODE XREF: ExAcquireFastResourceExclusive+1DA↑j
                                        ; ExAcquireFastResourceExclusive+324↓j
                lea     r11, [rsp+80h+var_s0]
                mov     al, r14b
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14038EDBE:                          ; CODE XREF: ExAcquireFastResourceExclusive+17A↑j
                test    r13b, r13b
                jz      loc_14038EEAE
                test    rdi, rdi
                jz      short loc_14038EDD4
                mov     rcx, rdi
                call    sub_1402F6340

loc_14038EDD4:                          ; CODE XREF: ExAcquireFastResourceExclusive+21A↑j
                lea     rax, [rsi+30h]
                mov     rcx, [rax+8]
                lea     rdx, [rbx+38h]
                cmp     [rcx], rax
                jnz     loc_14049C8AE
                mov     [rdx+8], rcx
                lea     r8, [rbp+var_38]
                mov     [rdx], rax
                mov     [rcx], rdx
                mov     rcx, rsi
                mov     [rax+8], rdx
                mov     rdx, [rbp+arg_0]
                mov     byte ptr [rbx+13h], 1
                call    sub_14034B130
                lea     rcx, [rbp+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rcx, [rbp+arg_0]
                mov     r9, rbx
                xor     r8d, r8d
                call    sub_14038F98C
                mov     edx, cs:dword_140CFC660
                test    edx, edx
                jnz     loc_14049C8B5

loc_14038EE31:                          ; CODE XREF: ExAcquireFastResourceExclusive+10DD08↓j
                                        ; ExAcquireFastResourceExclusive+10DD14↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                xor     r9d, r9d
                lea     rdx, [rbp+var_38]
                mov     r8d, 10224h
                mov     rcx, rsi
                call    sub_14023C8E0
                mov     byte ptr [rbx+13h], 0
                test    rdi, rdi
                jz      short loc_14038EE65
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140244C10

loc_14038EE65:                          ; CODE XREF: ExAcquireFastResourceExclusive+2A5↑j
                mov     r14b, 1
                jmp     loc_14038ED87
; ---------------------------------------------------------------------------

loc_14038EE6D:                          ; CODE XREF: ExAcquireFastResourceExclusive+FB↑j
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, r10
                call    sub_14038F608
                test    rax, rax
                jz      loc_14038ECB1
                mov     rcx, [rax+30h]
                add     rax, 28h ; '('
                cmp     [rcx], rax
                jnz     loc_14049C8AE
                mov     [rbx], rax
                mov     r14b, 1
                mov     [rbx+8], rcx
                mov     [rcx], rbx
                mov     [rax+8], rbx
                jmp     loc_14038ED71
; ---------------------------------------------------------------------------

loc_14038EEAE:                          ; CODE XREF: ExAcquireFastResourceExclusive+211↑j
                and     byte ptr [rbx+11h], 0FAh
                lea     rcx, [rbp+var_50]
                and     qword ptr [rbx+18h], 0
                mov     byte ptr [rbx+10h], 0
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     loc_14038ED6B
; ---------------------------------------------------------------------------

loc_14038EEC9:                          ; CODE XREF: ExAcquireFastResourceExclusive+1DF↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14031D1B0
                jmp     loc_14038ED99
ExAcquireFastResourceExclusive endp
