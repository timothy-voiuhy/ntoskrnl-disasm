KeQueryDpcWatchdogInformation proc near ; CODE XREF: sub_1403A0B00+10312F↓p
                                        ; DATA XREF: .pdata:00000001400D5C0C↑o
                mov     rax, gs:20h
                mov     r8, rcx
                mov     rdx, cr8
                cmp     dl, 2
                jb      short loc_140326249
                xor     ecx, ecx
                xorps   xmm0, xmm0
                movups  xmmword ptr [r8], xmm0
                mov     [r8+10h], ecx
                mov     ecx, [rax+7EA0h]
                test    ecx, ecx
                jnz     short loc_14032622A

loc_14032621C:                          ; CODE XREF: KeQueryDpcWatchdogInformation+47↓j
                mov     ecx, [rax+7BE8h]
                test    ecx, ecx
                jnz     short loc_140326239

loc_140326226:                          ; CODE XREF: KeQueryDpcWatchdogInformation+57↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032622A:                          ; CODE XREF: KeQueryDpcWatchdogInformation+2A↑j
                mov     [r8], ecx
                sub     ecx, [rax+7E9Ch]
                mov     [r8+4], ecx
                jmp     short loc_14032621C
; ---------------------------------------------------------------------------

loc_140326239:                          ; CODE XREF: KeQueryDpcWatchdogInformation+34↑j
                mov     [r8+8], ecx
                sub     ecx, [rax+7BECh]
                mov     [r8+0Ch], ecx
                jmp     short loc_140326226
; ---------------------------------------------------------------------------

loc_140326249:                          ; CODE XREF: KeQueryDpcWatchdogInformation+13↑j
                mov     eax, 0C0000001h
                retn
KeQueryDpcWatchdogInformation endp
