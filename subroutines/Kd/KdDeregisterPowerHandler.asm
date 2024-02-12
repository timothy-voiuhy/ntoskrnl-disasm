KdDeregisterPowerHandler proc near      ; DATA XREF: .pdata:00000001400F3108↑o

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
                mov     r14, rcx
                mov     rbx, cr8
                mov     r15d, 0Fh
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1405109FC
                test    al, 1
                jz      short loc_1405109FC
                cmp     bl, r15b
                ja      short loc_1405109FC
                mov     rax, gs:20h
                mov     rdx, rbp
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 0FFFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405109FC:                          ; CODE XREF: KdDeregisterPowerHandler+35↑j
                                        ; KdDeregisterPowerHandler+39↑j ...
                lea     rcx, qword_140CF4390
                call    KeAcquireSpinLockAtDpcLevel
                mov     rax, cs:qword_140C40710
                lea     rdx, qword_140C40710
                xor     esi, esi
                xor     dil, dil
                cmp     rax, rdx
                jz      short loc_140510A33

loc_140510A20:                          ; CODE XREF: KdDeregisterPowerHandler+A1↓j
                mov     rcx, [rax]
                mov     rsi, rax
                cmp     r14, rax
                jz      short loc_140510AA3
                mov     rax, rcx
                cmp     rcx, rdx
                jnz     short loc_140510A20

loc_140510A33:                          ; CODE XREF: KdDeregisterPowerHandler+8E↑j
                                        ; KdDeregisterPowerHandler+12C↓j
                lea     rcx, qword_140CF4390
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140510A90
                test    al, 1
                jz      short loc_140510A90
                mov     rax, cr8
                cmp     al, r15b
                ja      short loc_140510A90
                cmp     bl, r15b
                ja      short loc_140510A90
                cmp     al, 2
                jb      short loc_140510A90
                mov     r9, gs:20h
                movzx   ecx, bl
                inc     ecx
                shl     rbp, cl
                mov     r8, [r9+84B8h]
                movzx   eax, bp
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_140510A90
                mov     rcx, r9
                call    sub_1403F2EC4

loc_140510A90:                          ; CODE XREF: KdDeregisterPowerHandler+B7↑j
                                        ; KdDeregisterPowerHandler+BB↑j ...
                movzx   eax, bl
                mov     cr8, rax
                test    dil, dil
                jnz     short loc_140510AC8
                mov     eax, 0C0000225h
                jmp     short loc_140510AD7
; ---------------------------------------------------------------------------

loc_140510AA3:                          ; CODE XREF: KdDeregisterPowerHandler+99↑j
                mov     rdx, [rax+8]
                cmp     [rcx+8], rax
                jnz     short loc_140510AC1
                cmp     [rdx], rax
                jnz     short loc_140510AC1
                mov     [rdx], rcx
                mov     dil, 1
                mov     [rcx+8], rdx
                jmp     loc_140510A33
; ---------------------------------------------------------------------------

loc_140510AC1:                          ; CODE XREF: KdDeregisterPowerHandler+11B↑j
                                        ; KdDeregisterPowerHandler+120↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140510AC8:                          ; CODE XREF: KdDeregisterPowerHandler+10A↑j
                mov     edx, 6F49644Bh
                mov     rcx, rsi
                call    ExFreePoolWithTag
                xor     eax, eax

loc_140510AD7:                          ; CODE XREF: KdDeregisterPowerHandler+111↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KdDeregisterPowerHandler endp
