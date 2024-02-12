EtwActivityIdControl proc near          ; CODE XREF: IoReuseIrp+22D↓p
                                        ; IoSetActivityIdIrp+11AFA7↓p ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                sub     rsp, 38h
                and     [rsp+38h+var_38], 0
                cmp     ecx, 3
                jnz     short loc_1402156DE
                mov     rax, gs:20h
                mov     rcx, [rax+8328h]
                mov     eax, 1
                lock xadd [rcx+8], rax
                inc     rax
                mov     [rdx+8], rax
                mov     rax, [rcx]
                mov     [rdx], rax

loc_1402156D5:                          ; CODE XREF: EtwActivityIdControl:loc_140215802↓j
                                        ; EtwActivityIdControl+16A↓j
                mov     eax, [rsp+38h+var_38]

loc_1402156D8:                          ; CODE XREF: EtwActivityIdControl+E0↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402156DE:                          ; CODE XREF: EtwActivityIdControl+B↑j
                                        ; DATA XREF: .rdata:000000014004AC94↑o
;   __try { // __except at loc_140215807
                mov     r8, gs:188h
                test    dword ptr [r8+74h], 400h
                jnz     loc_140215785
                cmp     byte ptr [r8+24Ah], 1
                jz      loc_140215785
                mov     r8, [r8+0F0h]

loc_14021570A:                          ; CODE XREF: EtwActivityIdControl+E8↓j
                mov     [rsp+38h+arg_10], r8
                test    r8, r8
                jz      short loc_14021577B
                lea     rax, [r8+1710h]
                mov     [rsp+38h+var_30], rax
                mov     rax, gs:188h
                mov     [rsp+38h+arg_18], rax
                mov     rax, [rax+0B8h]
                mov     [rsp+38h+var_28], rax
                mov     r9, [rax+580h]
                test    r9, r9
                jnz     short loc_14021575C

loc_140215746:                          ; CODE XREF: EtwActivityIdControl+F4↓j
                mov     rax, [rsp+38h+var_30]

loc_14021574B:                          ; CODE XREF: EtwActivityIdControl+D9↓j
                sub     ecx, 1
                jnz     short loc_140215798
                movups  xmm0, xmmword ptr [rax]
                movdqu  xmmword ptr [rdx], xmm0
                jmp     loc_140215802
; ---------------------------------------------------------------------------

loc_14021575C:                          ; CODE XREF: EtwActivityIdControl+A4↑j
                movzx   eax, word ptr [r9+8]
                mov     r9d, 14Ch
                cmp     ax, r9w
                jnz     short loc_14021578A

loc_14021576D:                          ; CODE XREF: EtwActivityIdControl+F6↓j
                lea     rax, [r8+2F50h]
                mov     [rsp+38h+var_30], rax
                jmp     short loc_14021574B
; ---------------------------------------------------------------------------

loc_14021577B:                          ; CODE XREF: EtwActivityIdControl+72↑j
                mov     eax, 0C00000BBh
                jmp     loc_1402156D8
; ---------------------------------------------------------------------------

loc_140215785:                          ; CODE XREF: EtwActivityIdControl+4F↑j
                                        ; EtwActivityIdControl+5D↑j
                xor     r8d, r8d
                jmp     short loc_14021570A
; ---------------------------------------------------------------------------

loc_14021578A:                          ; CODE XREF: EtwActivityIdControl+CB↑j
                mov     r9d, 1C4h
                cmp     ax, r9w
                jnz     short loc_140215746
                jmp     short loc_14021576D
; ---------------------------------------------------------------------------

loc_140215798:                          ; CODE XREF: EtwActivityIdControl+AE↑j
                sub     ecx, 1
                jz      short loc_1402157FB
                sub     ecx, 2
                jz      short loc_1402157E6
                cmp     ecx, 1
                jz      short loc_1402157B0
                mov     [rsp+38h+var_38], 0C000000Dh
                jmp     short loc_140215802
; ---------------------------------------------------------------------------

loc_1402157B0:                          ; CODE XREF: EtwActivityIdControl+105↑j
                movups  xmm0, xmmword ptr [rax]
                movdqu  xmmword ptr [rdx], xmm0
                mov     rax, gs:20h
                mov     rdx, [rax+8328h]
                mov     eax, 1
                lock xadd [rdx+8], rax
                inc     rax
                mov     rcx, [rsp+38h+var_30]
                mov     [rcx+8], rax
                mov     rax, [rdx]
                mov     [rcx], rax
                jmp     short loc_140215802
; ---------------------------------------------------------------------------

loc_1402157E6:                          ; CODE XREF: EtwActivityIdControl+100↑j
                movups  xmm1, xmmword ptr [rax]
                movups  [rsp+38h+var_20], xmm1
                movups  xmm0, xmmword ptr [rdx]
                movdqu  xmmword ptr [rax], xmm0
                movdqu  xmmword ptr [rdx], xmm1
                jmp     short loc_140215802
; ---------------------------------------------------------------------------

loc_1402157FB:                          ; CODE XREF: EtwActivityIdControl+FB↑j
                movups  xmm0, xmmword ptr [rdx]
                movdqu  xmmword ptr [rax], xmm0

loc_140215802:                          ; CODE XREF: EtwActivityIdControl+B7↑j
                                        ; EtwActivityIdControl+10E↑j ...
                jmp     loc_1402156D5
;   } // starts at 1402156DE
; ---------------------------------------------------------------------------

loc_140215807:                          ; DATA XREF: .rdata:000000014004AC94↑o
;   __except(1) // owned by 1402156DE
                mov     [rsp+38h+var_38], eax
                jmp     loc_1402156D5
; } // starts at 1402156A0
EtwActivityIdControl endp
