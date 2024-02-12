ExDisownFastResource proc near          ; DATA XREF: .rdata:0000000140099B84↑o
                                        ; .pdata:00000001400DC32C↑o

var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = byte ptr  40h
arg_8           = dword ptr  48h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 000000014049CDC2 SIZE 000002F6 BYTES

                mov     [rsp-38h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                xor     r10d, r10d
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+var_8], r10
                movups  [rbp+var_30], xmm0
                mov     [rbp+var_20], rax
                mov     rbx, rdx
                mov     r13, gs:188h
                mov     rdi, rcx
                test    byte ptr [rcx+1Ah], 1
                mov     r12d, r10d
                mov     [rbp+arg_8], r10d
                mov     r14b, r10b
                mov     [rbp+arg_0], r10b
                jz      loc_14049CDC2
                mov     rax, cr8
                mov     rcx, gs:188h
                lea     edx, [r10+2]
                cmp     al, dl
                ja      loc_14049CDDC
                cmp     al, 1
                jnb     short loc_14038F6F5
                test    dword ptr [rcx+74h], 400h
                jnz     short loc_14038F6F5
                cmp     [rcx+1E4h], r10d
                jz      loc_14049CDF5

loc_14038F6F5:                          ; CODE XREF: ExDisownFastResource+6D↑j
                                        ; ExDisownFastResource+76↑j
                mov     r9, [rbx+20h]
                cmp     r9, rcx
                jnz     loc_14049CE0F
                mov     rax, [rbx+18h]
                cmp     rax, rdi
                jnz     loc_14049CE27
                test    byte ptr [rbx+11h], 1
                jnz     loc_14049CE42
                mov     r15, cr8
                mov     cr8, rdx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049CE5C

loc_14038F72F:                          ; CODE XREF: ExDisownFastResource+10D7EE↓j
                                        ; ExDisownFastResource+10D7F8↓j ...
                mov     al, [rdi+1Ah]
                test    al, al
                js      loc_14049CE9E

loc_14038F73A:                          ; CODE XREF: ExDisownFastResource+10D83B↓j
                or      byte ptr [rbx+11h], 1
                lea     rdx, [r13+638h]
                lea     rcx, [rbp+var_18]
                mov     [rbp+var_10], rdx
                mov     [rbp+var_18], r10
                call    sub_14024B3F0
                lea     rax, [r13+640h]
                mov     rsi, [rax]

loc_14038F760:                          ; CODE XREF: ExDisownFastResource+2B2↓j
                cmp     rsi, rax
                jz      loc_14038F89E
                cmp     [rsi+18h], rdi
                jnz     loc_14038F91F
                xor     r8d, r8d
                test    rsi, rsi
                jz      loc_14038F8A1
                cmp     [rbx+12h], r8b
                jz      loc_14049CECB
                lea     r14, [rbx+28h]
                mov     qword ptr [rbp+var_30], r8
                lea     rdx, [rdi+60h]
                lea     rcx, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], rdx
                cmp     [r14], r14
                jnz     loc_14049CF17
                call    sub_14024B3F0
                dec     dword ptr [rdi+40h]
                lea     rax, [rbx+38h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14038F927
                cmp     [rcx], rax
                jnz     loc_14038F927
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                lea     rcx, [rbp+var_30]
                mov     [rax], r12
                mov     [rax+8], r12
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     [rbx+12h], r12b
                mov     rcx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rcx+8], rbx
                jnz     loc_14038F927
                cmp     [rax], rbx
                jnz     loc_14038F927
                mov     [rax], rcx
                add     rsi, 28h ; '('
                mov     [rcx+8], rax
                mov     [rbx], r12
                mov     [rbx+8], r12
                mov     [r14], r12
                mov     [r14+8], r12
                movzx   r12d, byte ptr [rbx+10h]
                mov     byte ptr [rbx+10h], 0
                mov     rax, [rsi+8]
                cmp     [rax], rsi
                jnz     loc_14038F927
                mov     r14b, [rbp+arg_0]
                mov     [rbx], rsi
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     [rsi+8], rbx

loc_14038F842:                          ; CODE XREF: ExDisownFastResource+28B↓j
                                        ; ExDisownFastResource+10D8A2↓j ...
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, [rbp+arg_8]
                test    eax, eax
                jnz     loc_14038F900

loc_14038F856:                          ; CODE XREF: ExDisownFastResource+298↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049D052

loc_14038F864:                          ; CODE XREF: ExDisownFastResource+10D9E4↓j
                                        ; ExDisownFastResource+10D9F0↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                test    r14b, r14b
                jnz     loc_14038F90D

loc_14038F875:                          ; CODE XREF: ExDisownFastResource+2AA↓j
                test    r12d, r12d
                jz      short loc_14038F885
                mov     edx, r12d
                mov     rcx, rdi
                call    sub_14031D1B0

loc_14038F885:                          ; CODE XREF: ExDisownFastResource+208↑j
                mov     rbx, [rsp+60h+arg_10]
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14038F89E:                          ; CODE XREF: ExDisownFastResource+F3↑j
                xor     r8d, r8d

loc_14038F8A1:                          ; CODE XREF: ExDisownFastResource+109↑j
                cmp     [rbx+12h], r8b
                jz      loc_14049CF82
                lea     rax, [rbx+28h]
                cmp     [rax], rax
                jnz     loc_14049CFF6
                movzx   ecx, byte ptr [rbx+10h]
                mov     r14b, 1
                mov     [rbx+12h], r8b
                mov     rdx, [rbx]
                mov     [rbp+arg_8], ecx
                mov     rcx, [rbx+8]
                cmp     [rdx+8], rbx
                jnz     short loc_14038F927
                cmp     [rcx], rbx
                jnz     short loc_14038F927
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     [rbx], r8
                mov     [rbx+8], r8
                mov     [rax], r8
                mov     [rax+8], r8

loc_14038F8ED:                          ; CODE XREF: ExDisownFastResource+10D981↓j
                                        ; ExDisownFastResource+10D9DD↓j
                mov     r9, rbx
                mov     r8b, r14b
                mov     rcx, r13
                call    sub_14038F98C
                jmp     loc_14038F842
; ---------------------------------------------------------------------------

loc_14038F900:                          ; CODE XREF: ExDisownFastResource+1E0↑j
                mov     rdx, rax
                call    sub_14038F934
                jmp     loc_14038F856
; ---------------------------------------------------------------------------

loc_14038F90D:                          ; CODE XREF: ExDisownFastResource+1FF↑j
                mov     edx, 746C6644h
                mov     rcx, r13
                call    ObfReferenceObjectWithTag
                jmp     loc_14038F875
; ---------------------------------------------------------------------------

loc_14038F91F:                          ; CODE XREF: ExDisownFastResource+FD↑j
                mov     rsi, [rsi]
                jmp     loc_14038F760
; ---------------------------------------------------------------------------

loc_14038F927:                          ; CODE XREF: ExDisownFastResource+14D↑j
                                        ; ExDisownFastResource+156↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
ExDisownFastResource endp
