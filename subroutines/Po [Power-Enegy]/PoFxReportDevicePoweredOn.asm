PoFxReportDevicePoweredOn proc near     ; DATA XREF: .rdata:000000014009C394↑o
                                        ; .pdata:00000001400DD19C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A1F28 SIZE 00000050 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, [rcx+30h]
                mov     rbx, rcx
                prefetchw byte ptr [rcx+20h]
                mov     eax, [rcx+20h]

loc_14039CBB6:                          ; CODE XREF: PoFxReportDevicePoweredOn+30↓j
                mov     edx, eax
                and     edx, 0FFFFFFFDh
                lock cmpxchg [rcx+20h], edx
                jnz     short loc_14039CBB6
                test    al, 2
                jz      short loc_14039CBEC
                call    sub_14039D424
                mov     rcx, [rbx+38h]
                mov     r9d, eax
                mov     r8b, 1
                mov     edx, 1
                call    sub_14039D130
                mov     edx, 1
                mov     rcx, rsi
                call    sub_14039CCFC

loc_14039CBEC:                          ; CODE XREF: PoFxReportDevicePoweredOn+34↑j
                lea     r14, [rsi+58h]
                mov     rcx, r14
                call    ExAcquireSpinLockExclusive
                xor     edi, edi
                xor     ebp, ebp
                xchg    edi, [rsi+7Ch]
                mov     r15b, al
                test    edi, edi
                jle     short loc_14039CC82
                mov     rcx, [rbx+30h]
                mov     edx, [rcx+78h]
                cmp     edi, edx
                jg      loc_1404A1F28
                lock and dword ptr [rbx+20h], 0FFFFF7FEh
                mov     rax, [rbx+30h]
                sub     edx, edi
                mov     [rax+78h], edx
                mov     rdx, [rbx+30h]
                prefetchw byte ptr [rdx+128h]
                mov     eax, [rdx+128h]

loc_14039CC37:                          ; CODE XREF: PoFxReportDevicePoweredOn+B1↓j
                mov     ecx, eax
                lock cmpxchg [rdx+128h], ecx
                jnz     short loc_14039CC37
                test    al, 4
                jz      short loc_14039CC77
                mov     eax, [rbx+33Ch]
                mov     ebp, edi

loc_14039CC4F:                          ; CODE XREF: PoFxReportDevicePoweredOn+E5↓j
                xor     esi, esi
                test    eax, eax
                jz      short loc_14039CC71

loc_14039CC55:                          ; CODE XREF: PoFxReportDevicePoweredOn+DF↓j
                mov     r8d, 2
                mov     edx, esi
                mov     rcx, rbx
                call    PoFxIdleComponent
                mov     eax, [rbx+33Ch]
                inc     esi
                cmp     esi, eax
                jb      short loc_14039CC55

loc_14039CC71:                          ; CODE XREF: PoFxReportDevicePoweredOn+C3↑j
                sub     rbp, 1
                jnz     short loc_14039CC4F

loc_14039CC77:                          ; CODE XREF: PoFxReportDevicePoweredOn+B5↑j
                mov     rax, [rbx+30h]
                mov     rbp, [rax+118h]

loc_14039CC82:                          ; CODE XREF: PoFxReportDevicePoweredOn+74↑j
                mov     dl, r15b
                mov     rcx, r14
                call    ExReleaseSpinLockExclusive
                cmp     cs:dword_140CF4D20, 0
                jnz     short loc_14039CCE0
                mov     eax, [rbx+338h]
                test    al, al
                js      short loc_14039CCE0

loc_14039CCA0:                          ; CODE XREF: PoFxReportDevicePoweredOn+1053B9↓j
                                        ; PoFxReportDevicePoweredOn+1053E3↓j
                test    edi, edi
                jz      short loc_14039CCBE

loc_14039CCA4:                          ; CODE XREF: PoFxReportDevicePoweredOn+14E↓j
                                        ; PoFxReportDevicePoweredOn+163↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039CCBE:                          ; CODE XREF: PoFxReportDevicePoweredOn+112↑j
                prefetchw byte ptr [rbx+20h]
                mov     eax, [rbx+20h]

loc_14039CCC5:                          ; CODE XREF: PoFxReportDevicePoweredOn+13C↓j
                mov     ecx, eax
                lock cmpxchg [rbx+20h], ecx
                jnz     short loc_14039CCC5
                mov     rcx, rbx
                bt      eax, 0Dh
                jb      short loc_14039CCEC
                xor     edx, edx
                call    sub_1402BCFD4
                jmp     short loc_14039CCA4
; ---------------------------------------------------------------------------

loc_14039CCE0:                          ; CODE XREF: PoFxReportDevicePoweredOn+104↑j
                                        ; PoFxReportDevicePoweredOn+10E↑j
                prefetchw byte ptr [rbx+20h]
                mov     eax, [rbx+20h]
                jmp     loc_1404A1F3C
; ---------------------------------------------------------------------------

loc_14039CCEC:                          ; CODE XREF: PoFxReportDevicePoweredOn+145↑j
                xor     edx, edx
                call    sub_14056A9F4
                jmp     short loc_14039CCA4
PoFxReportDevicePoweredOn endp
