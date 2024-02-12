PoFxStartDevicePowerManagement proc near
                                        ; CODE XREF: sub_1403BDD20+D6↑p
                                        ; sub_1403BDE3C+E5↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AD7D8 SIZE 000000B7 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbx, [rcx+30h]
                mov     rsi, rcx
                mov     rcx, [rcx+38h]
                call    sub_1403BE0DC
                mov     rcx, [rsi+40h]
                xor     edi, edi
                test    rcx, rcx
                jnz     loc_1404AD7D8

loc_1403BDFAB:                          ; CODE XREF: PoFxStartDevicePowerManagement+EF885↓j
                or      r13, 0FFFFFFFFFFFFFFFFh
                test    rbx, rbx
                jz      short loc_1403BE033
                lea     rcx, [rbx+58h]
                call    ExAcquireSpinLockExclusive
                mov     edx, [rbx+78h]
                mov     ecx, [rsi+338h]
                movzx   r15d, al
                test    cl, 1
                jnz     loc_1404AD7FA

loc_1403BDFD3:                          ; CODE XREF: PoFxStartDevicePowerManagement+EF897↓j
                test    edx, edx
                jz      short loc_1403BE008
                mov     eax, [rsi+33Ch]
                mov     r14d, edx

loc_1403BDFE0:                          ; CODE XREF: PoFxStartDevicePowerManagement+96↓j
                mov     ebp, edi
                test    eax, eax
                jz      short loc_1403BE002

loc_1403BDFE6:                          ; CODE XREF: PoFxStartDevicePowerManagement+90↓j
                mov     r8d, 2
                mov     edx, ebp
                mov     rcx, rsi
                call    PoFxActivateComponent
                mov     eax, [rsi+33Ch]
                inc     ebp
                cmp     ebp, eax
                jb      short loc_1403BDFE6

loc_1403BE002:                          ; CODE XREF: PoFxStartDevicePowerManagement+74↑j
                sub     r14, 1
                jnz     short loc_1403BDFE0

loc_1403BE008:                          ; CODE XREF: PoFxStartDevicePowerManagement+65↑j
                                        ; PoFxStartDevicePowerManagement+EF88C↓j
                lock or dword ptr [rbx+128h], 4
                lea     rcx, [rbx+58h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AD80C

loc_1403BE027:                          ; CODE XREF: PoFxStartDevicePowerManagement+EF89E↓j
                                        ; PoFxStartDevicePowerManagement+EF8AA↓j ...
                mov     cr8, r15
                mov     rcx, rbx
                call    sub_1407B4200

loc_1403BE033:                          ; CODE XREF: PoFxStartDevicePowerManagement+42↑j
                mov     rax, gs:188h
                add     [rax+1E4h], r13w
                lea     r14, qword_140C24600
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockSharedEx
                mov     bpl, cs:byte_140CF4ED8
                mov     eax, 11h
                lock cmpxchg cs:qword_140C24600, rdi
                jnz     short loc_1403BE0CB

loc_1403BE06C:                          ; CODE XREF: PoFxStartDevicePowerManagement+163↓j
                mov     rcx, r14
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    bpl, bpl
                jnz     loc_1404AD870

loc_1403BE08B:                          ; CODE XREF: PoFxStartDevicePowerManagement+EF91A↓j
                cmp     [rsi+33Ch], edi
                jbe     short loc_1403BE0AD

loc_1403BE093:                          ; CODE XREF: PoFxStartDevicePowerManagement+13B↓j
                mov     r8d, 1
                mov     edx, edi
                mov     rcx, rsi
                call    PoFxIdleComponent
                inc     edi
                cmp     edi, [rsi+33Ch]
                jb      short loc_1403BE093

loc_1403BE0AD:                          ; CODE XREF: PoFxStartDevicePowerManagement+121↑j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403BE0CB:                          ; CODE XREF: PoFxStartDevicePowerManagement+FA↑j
                mov     rcx, r14
                call    ExfReleasePushLockShared
                jmp     short loc_1403BE06C
PoFxStartDevicePowerManagement endp
