NtTraceControl  proc near               ; CODE XREF: sub_1407976E0+10E↓p
                                        ; sub_140797928+DA↓p ...

var_78          = qword ptr -78h
var_68          = word ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = dword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_0], ecx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r12, rdx
                mov     r14d, ecx
                mov     [rsp+98h+var_64], ecx
                xor     edi, edi
                mov     esi, edi
                mov     [rsp+98h+var_50], rdi
                mov     [rsp+98h+var_60], edi
                mov     rax, gs:188h
                movzx   ebx, byte ptr [rax+232h]
                call    sub_1405AA9C4
                mov     r15, rax
                xor     r13b, r13b
                test    bl, bl
                jz      loc_14060C9EA

loc_14060C927:                          ; DATA XREF: .rdata:000000014004B254↑o
;   __try { // __except at loc_14060C9DA
                mov     r13d, r14d
                shr     r13d, 1Fh
                mov     eax, r14d
                btr     eax, 1Fh
                test    r13b, r13b
                cmovz   eax, r14d
                mov     r14d, eax
                mov     [rsp+98h+var_64], eax
                mov     rbx, 7FFFFFFF0000h
                test    r12, r12
                jz      short loc_14060C978
                mov     eax, [rsp+98h+arg_10]
                test    eax, eax
                jz      short loc_14060C97F
                lea     rcx, [r12+rax]
                cmp     rcx, rbx
                ja      short loc_14060C96B
                cmp     rcx, r12
                jnb     short loc_14060C97F

loc_14060C96B:                          ; CODE XREF: NtTraceControl+94↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_14060C97F
; ---------------------------------------------------------------------------

loc_14060C978:                          ; CODE XREF: NtTraceControl+80↑j
                mov     [rsp+98h+arg_10], edi

loc_14060C97F:                          ; CODE XREF: NtTraceControl+8B↑j
                                        ; NtTraceControl+99↑j ...
                mov     rax, [rsp+98h+arg_18]
                test    rax, rax
                jz      short loc_14060C9A3
                mov     edx, [rsp+98h+arg_20]
                mov     r8d, 1
                mov     rcx, rax
                call    ProbeForWrite
                jmp     short loc_14060C9AA
; ---------------------------------------------------------------------------

loc_14060C9A3:                          ; CODE XREF: NtTraceControl+BA↑j
                mov     [rsp+98h+arg_20], edi

loc_14060C9AA:                          ; CODE XREF: NtTraceControl+D1↑j
                mov     rax, [rsp+98h+arg_28]
                test    rax, rax
                jz      short loc_14060C9CC
                cmp     rax, rbx
                cmovb   rbx, rax
                mov     eax, [rbx]
                mov     [rbx], eax
                mov     [rsp+98h+arg_0], r14d
                jmp     short loc_14060C9EA
; ---------------------------------------------------------------------------

loc_14060C9CC:                          ; CODE XREF: NtTraceControl+E5↑j
                mov     edi, 0C000000Dh
                mov     [rsp+98h+var_58], edi
                jmp     loc_14060D225
;   } // starts at 14060C927
; ---------------------------------------------------------------------------

loc_14060C9DA:                          ; DATA XREF: .rdata:000000014004B254↑o
;   __except(1) // owned by 14060C927
                mov     edi, eax
                mov     [rsp+98h+var_58], eax
                mov     rsi, [rsp+98h+var_50]
                jmp     loc_14060D225
; ---------------------------------------------------------------------------

loc_14060C9EA:                          ; CODE XREF: NtTraceControl+51↑j
                                        ; NtTraceControl+FA↑j
                cmp     r14d, 1Bh
                ja      short loc_14060CA0C
                mov     eax, 8005000h
                bt      eax, r14d
                jnb     short loc_14060CA0C
                mov     r14d, [rsp+98h+arg_20]
                mov     ebx, [rsp+98h+arg_10]
                jmp     short loc_14060CA82
; ---------------------------------------------------------------------------

loc_14060CA0C:                          ; CODE XREF: NtTraceControl+11E↑j
                                        ; NtTraceControl+129↑j
                mov     ebx, [rsp+98h+arg_10]
                mov     r14d, [rsp+98h+arg_20]
                test    ebx, ebx
                jnz     short loc_14060CA24
                test    r14d, r14d
                jz      short loc_14060CA82

loc_14060CA24:                          ; CODE XREF: NtTraceControl+14D↑j
                mov     edx, r14d
                cmp     ebx, r14d
                cmova   edx, ebx
                mov     ecx, 9
                mov     r8d, 50777445h
                call    ExAllocatePoolWithQuotaTag
                mov     rsi, rax
                mov     [rsp+98h+var_50], rax
                test    rax, rax
                jnz     short loc_14060CA54
                mov     edi, 0C0000017h
                jmp     loc_14060D225
; ---------------------------------------------------------------------------

loc_14060CA54:                          ; CODE XREF: NtTraceControl+178↑j
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rsi
                call    memset
                test    r12, r12
                jz      short loc_14060CA82

loc_14060CA66:                          ; DATA XREF: .rdata:000000014004B264↑o
;   __try { // __except at loc_14060CA76
                mov     r8, rbx
                mov     rdx, r12
                mov     rcx, rsi
                call    memmove
                jmp     short loc_14060CA82
;   } // starts at 14060CA66
; ---------------------------------------------------------------------------

loc_14060CA76:                          ; DATA XREF: .rdata:000000014004B264↑o
;   __except(1) // owned by 14060CA66
                mov     edi, eax
                mov     rsi, [rsp+98h+var_50]
                jmp     loc_14060D225
; ---------------------------------------------------------------------------

loc_14060CA82:                          ; CODE XREF: NtTraceControl+13A↑j
                                        ; NtTraceControl+152↑j ...
                mov     r9d, [rsp+98h+var_64]
                dec     r9d             ; switch 43 cases
                cmp     r9d, 2Ah
                ja      def_14060CAA6   ; jumptable 000000014060CAA6 default case, cases 8-10,29
                lea     r10, cs:140000000h
                mov     eax, ds:(jpt_14060CAA6 - 140000000h)[r10+r9*4]
                add     rax, r10
                jmp     rax             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14060CAAC:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                mov     r8d, r14d       ; jumptable 000000014060CAA6 cases 1-7
                mov     edx, ebx
                mov     rcx, rsi
                call    sub_1406D3E08
                mov     edi, eax
                test    eax, eax
                js      loc_14060D1AE
                cmp     r9d, 6
                ja      loc_14060CB9D
                mov     ecx, [r10+r9*4+60D2F4h]
                add     rcx, r10
                jmp     rcx
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------
                mov     rcx, [rsi+50h]
                and     rcx, 0FFFFFFFFFFFFFFFEh
                movzx   eax, r13b
                or      rcx, rax
                mov     [rsi+50h], rcx
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_14072078C
                mov     edi, eax
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1406B3BFC
                mov     edi, eax
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1406D3C40
                mov     edi, eax
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140792228
                mov     edi, eax
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140718D2C
                mov     edi, eax
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1409362A4
                mov     edi, eax
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1403F85F4
                mov     edi, eax

loc_14060CB9D:                          ; CODE XREF: NtTraceControl+1F7↑j
                mov     [rsp+98h+var_60], 0B0h
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CBAA:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 0A0h       ; jumptable 000000014060CAA6 case 15
                jnz     loc_14060CD53
                lea     eax, [r14-0A0h]
                cmp     eax, 0FF60h
                ja      loc_14060CD53
                lea     rax, [rsp+98h+var_60]
                mov     [rsp+98h+var_78], rax
                movzx   r9d, r13b
                mov     r8d, r14d
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_14060BF10
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CBEB:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 26
                jnz     loc_14060CD53
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_14071EEA8
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CC06:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                test    ebx, ebx        ; jumptable 000000014060CAA6 case 16
                jnz     loc_14060CD53
                lea     eax, [r14-48h]
                cmp     eax, 0FFB8h
                ja      loc_14060CD53
                lea     r9, [rsp+98h+var_60]
                movzx   r8d, r13b
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1406B2350
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CC38:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 48h ; 'H'  ; jumptable 000000014060CAA6 case 17
                jb      loc_14060CD53
                cmp     r14d, 48h ; 'H'
                jnz     loc_14060CD53
                cmp     [rsi+4], ebx
                jnz     loc_14060CD53
                cmp     dword ptr [rsi], 3
                jnz     short loc_14060CC7C
                cmp     ebx, 78h ; 'x'
                jb      loc_14060CD53
                mov     r8b, 1
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1406AFFC8
                mov     edi, eax
                mov     [rsp+98h+var_60], r14d
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CC7C:                          ; CODE XREF: NtTraceControl+387↑j
                mov     r8b, 1
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1406AF8C4
                mov     edi, eax
                mov     [rsp+98h+var_60], 48h ; 'H'
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CC99:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 48h ; 'H'  ; jumptable 000000014060CAA6 case 18
                jb      loc_14060CD53
                cmp     [rsi+4], ebx
                jnz     loc_14060CD53
                call    PsGetCurrentThreadProcessId
                mov     [rsi+24h], eax
                mov     rcx, rsi
                call    sub_1406B3F48
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CCC2:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 19
                jnz     loc_14060CD53
                mov     [rsp+98h+var_5C], edi
                lea     r8, [rsp+98h+var_5C]
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_1406B3E4C
                mov     edi, eax
                mov     eax, [rsp+98h+var_5C]
                mov     [rsp+98h+var_60], eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CCEE:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 60h ; '`'  ; jumptable 000000014060CAA6 case 11
                jnz     short loc_14060CD53
                cmp     r14d, ebx
                jnz     short loc_14060CD53
                mov     rcx, rsi
                call    sub_140718EE8
                mov     edi, eax
                mov     [rsp+98h+var_60], ebx
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CD0B:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 14
                jnz     short loc_14060CD53
                test    r14d, r14d
                jnz     short loc_14060CD53

loc_14060CD15:                          ; DATA XREF: .rdata:000000014004B274↑o
;   __try { // __except at loc_14060CD32
                mov     ecx, [r12]
                call    sub_1402FC650
                mov     [rsp+98h+var_48], rax
;   } // starts at 14060CD15

loc_14060CD23:                          ; DATA XREF: .rdata:000000014004B274↑o
                mov     rcx, rax
                call    sub_140718E68
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CD32:                          ; DATA XREF: .rdata:000000014004B274↑o
;   __except(1) // owned by 14060CD15
                mov     edi, eax
                mov     ebx, [rsp+98h+arg_0]
                mov     rsi, [rsp+98h+var_50]
                mov     rcx, [rsp+98h+arg_18]
                jmp     loc_14060D1BA
; ---------------------------------------------------------------------------

loc_14060CD4D:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     r14d, 10h       ; jumptable 000000014060CAA6 case 12
                jz      short loc_14060CD5D

loc_14060CD53:                          ; CODE XREF: NtTraceControl+2E0↑j
                                        ; NtTraceControl+2F2↑j ...
                mov     edi, 0C000000Dh
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CD5D:                          ; CODE XREF: NtTraceControl+481↑j
                                        ; DATA XREF: .rdata:000000014004B284↑o
;   __try { // __except at loc_14060CD73
                mov     rcx, [rsp+98h+arg_18]
                call    sub_140215818
                mov     ebx, [rsp+98h+var_64]
                jmp     loc_14060D1BA
;   } // starts at 14060CD5D
; ---------------------------------------------------------------------------

loc_14060CD73:                          ; DATA XREF: .rdata:000000014004B284↑o
;   __except(1) // owned by 14060CD5D
                mov     edi, eax
                mov     ebx, [rsp+98h+arg_0]
                mov     rsi, [rsp+98h+var_50]
                mov     rcx, [rsp+98h+arg_18]
                jmp     loc_14060D1BA
; ---------------------------------------------------------------------------

loc_14060CD8E:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 30h ; '0'  ; jumptable 000000014060CAA6 case 13
                jnz     short loc_14060CD53
                test    r14d, r14d
                jnz     short loc_14060CD53
                mov     rcx, rsi
                call    sub_140788070
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CDA7:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                test    ebx, ebx        ; jumptable 000000014060CAA6 case 20
                jnz     short loc_14060CD53
                test    r14d, r14d
                jnz     short loc_14060CD53
                call    sub_1405A5890
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CDBC:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                mov     [rsp+98h+var_60], r14d ; jumptable 000000014060CAA6 case 21
                lea     r8, [rsp+98h+var_60]
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140936128
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CDD8:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 10h        ; jumptable 000000014060CAA6 case 22
                jnz     loc_14060CD53
                mov     [rsp+98h+var_60], r14d
                lea     r9, [rsp+98h+var_60]
                mov     r8, rsi
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_14072DD98
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CE00:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                mov     [rsp+98h+var_60], r14d ; jumptable 000000014060CAA6 case 32
                lea     r8, [rsp+98h+var_60]
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140936088
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CE1C:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 10h        ; jumptable 000000014060CAA6 case 33
                jnz     loc_14060CD53
                mov     [rsp+98h+var_60], r14d
                lea     r9, [rsp+98h+var_60]
                mov     r8, rsi
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140935E14
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CE44:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 34
                jnz     loc_14060CD53
                mov     [rsp+98h+var_60], r14d
                lea     r9, [rsp+98h+var_60]
                mov     r8, rsi
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140935D38
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CE6C:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                mov     [rsp+98h+var_60], r14d ; jumptable 000000014060CAA6 case 23
                lea     r8, [rsp+98h+var_60]
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_140729E98
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CE88:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                test    ebx, ebx        ; jumptable 000000014060CAA6 case 24
                jnz     loc_14060CD53
                test    r14d, r14d
                jnz     loc_14060CD53
                mov     rcx, r15
                call    sub_1407D3B60
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CEA8:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 4          ; jumptable 000000014060CAA6 case 25
                jnz     loc_14060CD53
                cmp     r14d, 10h
                jnz     loc_14060CD53
                mov     edx, [rsi]
                mov     r8, rsi
                mov     rcx, r15
                call    sub_140936390
                mov     edi, eax
                mov     [rsp+98h+var_60], r14d
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CED4:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 4          ; jumptable 000000014060CAA6 case 27
                jnz     loc_14060CD53

loc_14060CEDD:                          ; DATA XREF: .rdata:000000014004B294↑o
;   __try { // __except at loc_14060CEFF
                mov     ecx, [r12]
                mov     [rsp+98h+var_40], rcx
;   } // starts at 14060CEDD

loc_14060CEE6:                          ; DATA XREF: .rdata:000000014004B294↑o
                test    rcx, rcx
                jz      loc_14060CD53
                movzx   edx, r13b
                call    sub_1406B1FD8
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CEFF:                          ; DATA XREF: .rdata:000000014004B294↑o
;   __except(1) // owned by 14060CEDD
                mov     edi, eax
                mov     ebx, [rsp+98h+arg_0]
                mov     rsi, [rsp+98h+var_50]
                mov     rcx, [rsp+98h+arg_18]
                jmp     loc_14060D1BA
; ---------------------------------------------------------------------------

loc_14060CF1A:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 28
                jb      loc_14060CD53
                mov     edx, [rsi+4]
                mov     ecx, edx
                shl     rcx, 4
                add     rcx, 8
                mov     eax, ebx
                cmp     rcx, rax
                jnz     loc_14060CD53
                lea     rax, [rsi+8]
                test    edx, edx
                cmovnz  rdi, rax
                mov     r9, rdi
                mov     r8d, edx
                mov     edx, [rsi]
                mov     rcx, r15
                call    sub_140935AA0
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CF5C:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 18h        ; jumptable 000000014060CAA6 case 30
                jnz     loc_14060CD53
                lea     eax, [r14-78h]
                cmp     eax, 0FF88h
                ja      loc_14060CD53
                lea     r8, [rsp+98h+var_60]
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_140607D1C
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CF8B:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 10h        ; jumptable 000000014060CAA6 case 31
                jnz     loc_14060CD53
                test    r14d, r14d
                jnz     loc_14060CD53
                mov     rcx, rsi
                call    sub_140936214
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CFAC:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 10h        ; jumptable 000000014060CAA6 case 35
                jnz     loc_14060CD53
                test    r14d, r14d
                jnz     loc_14060CD53
                mov     rcx, rsi
                call    sub_1405ADB34
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CFCD:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 36
                jnz     loc_14060CD53
                cmp     r14d, 10h
                jnz     loc_14060CD53
                mov     [rsp+98h+var_60], r14d
                mov     rdx, rsi
                mov     rcx, rsi
                call    sub_1405AD664
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060CFF7:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 0Ch        ; jumptable 000000014060CAA6 case 37
                jb      loc_14060CD53
                movzx   r8d, word ptr [rsi+8]
                cmp     r8d, 10h
                jbe     short loc_14060D015
                mov     edi, 0C000000Dh
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D015:                          ; CODE XREF: NtTraceControl+739↑j
                mov     edx, [rsi+4]
                lea     eax, [rdx-1]
                cmp     eax, 3
                ja      short loc_14060D02A
                mov     edi, 0C000000Dh
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D02A:                          ; CODE XREF: NtTraceControl+74E↑j
                test    r8w, r8w
                jnz     short loc_14060D03E
                test    edx, edx
                jnz     loc_14060CD53
                test    r8w, r8w
                jz      short loc_14060D04C

loc_14060D03E:                          ; CODE XREF: NtTraceControl+75E↑j
                test    edx, edx
                jnz     short loc_14060D04C
                mov     edi, 0C000000Dh
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D04C:                          ; CODE XREF: NtTraceControl+76C↑j
                                        ; NtTraceControl+770↑j
                mov     rcx, r8
                shl     rcx, 4
                add     rcx, 0Ch
                mov     eax, ebx
                cmp     rcx, rax
                jnz     loc_14060CD53
                lea     rax, [rsi+0Ch]
                test    r8w, r8w
                cmovnz  rdi, rax
                mov     r9, rdi
                mov     ecx, [rsi]
                call    sub_140940D24
                mov     edi, eax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D07F:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 38
                jb      loc_14060CD53
                test    bl, 7
                jnz     loc_14060CD53
                cmp     r14d, 2
                jb      loc_14060CD53
                shr     ebx, 3
                mov     [rsp+98h+var_68], di
                lea     r8, [rsp+98h+var_68]
                mov     edx, ebx
                mov     rcx, rsi
                call    sub_140940870
                mov     edi, eax
                test    eax, eax
                jnz     loc_14060D1AE
                mov     [rsp+98h+var_60], 2
                movzx   eax, [rsp+98h+var_68]
                mov     [rsi], ax
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D0D1:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 2          ; jumptable 000000014060CAA6 case 39
                jb      loc_14060CD53
                cmp     r14d, 8
                jb      loc_14060CD53
                call    sub_1405AA9C4
                mov     rcx, rax
                mov     r9, rsi
                lea     r8, [rsi+4]
                movzx   edx, word ptr [rsi]
                call    sub_140940A68
                mov     edi, eax
                test    eax, eax
                jnz     loc_14060D1AE
                mov     [rsp+98h+var_60], 8
                jmp     loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D112:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 40
                jb      loc_14060CD53
                cmp     r14d, 2
                jb      loc_14060CD53
                mov     rdx, rsi
                mov     rcx, [rsi]
                call    sub_1409409EC
                mov     edi, eax
                test    eax, eax
                jnz     short loc_14060D1AE
                mov     [rsp+98h+var_60], 2
                jmp     short loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D140:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                cmp     ebx, 8          ; jumptable 000000014060CAA6 case 41
                jb      loc_14060CD53
                movzx   r8d, byte ptr [rsi+4]
                mov     edx, [rsi]
                mov     rcx, r15
                call    sub_140942500
                mov     edi, eax
                jmp     short loc_14060D1AE
; ---------------------------------------------------------------------------

loc_14060D15C:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                mov     ebx, [rsp+98h+var_64] ; jumptable 000000014060CAA6 case 42
                mov     rcx, [rsp+98h+arg_18]
                cmp     r14d, 4
                jb      short loc_14060D17E
                mov     eax, [r15+10h]
                mov     [rsi], eax
                mov     [rsp+98h+var_60], 4
                jmp     short loc_14060D1BA
; ---------------------------------------------------------------------------

loc_14060D17E:                          ; CODE XREF: NtTraceControl+89C↑j
                                        ; NtTraceControl+8C5↓j
                mov     edi, 0C000000Dh
                jmp     short loc_14060D1BA
; ---------------------------------------------------------------------------

loc_14060D185:                          ; CODE XREF: NtTraceControl+1D6↑j
                                        ; DATA XREF: NtTraceControl:jpt_14060CAA6↓o
                mov     ebx, [rsp+98h+var_64] ; jumptable 000000014060CAA6 case 43
                mov     rcx, [rsp+98h+arg_18]
                cmp     r14d, 4
                jb      short loc_14060D17E
                mov     eax, cs:dword_140D2D05C
                mov     [rsi], eax
                mov     [rsp+98h+var_60], 4
                jmp     short loc_14060D1BA
; ---------------------------------------------------------------------------

def_14060CAA6:                          ; CODE XREF: NtTraceControl+1BE↑j
                                        ; NtTraceControl+1D6↑j
                                        ; DATA XREF: ...
                mov     edi, 0C0000010h ; jumptable 000000014060CAA6 default case, cases 8-10,29

loc_14060D1AE:                          ; CODE XREF: NtTraceControl+1ED↑j
                                        ; NtTraceControl+236↑j ...
                mov     rcx, [rsp+98h+arg_18]
                mov     ebx, [rsp+98h+var_64]

loc_14060D1BA:                          ; CODE XREF: NtTraceControl+478↑j
                                        ; NtTraceControl+49E↑j ...
;   __try { // __except at loc_14060D21E
                test    edi, edi
                js      short loc_14060D1E1
                mov     eax, [rsp+98h+var_60]
                test    eax, eax
                jz      short loc_14060D1D1
                mov     r8d, eax
                mov     rdx, rsi
                call    memmove

loc_14060D1D1:                          ; CODE XREF: NtTraceControl+8F4↑j
                mov     eax, [rsp+98h+var_60]
                mov     rcx, [rsp+98h+arg_28]
                mov     [rcx], eax
                jmp     short loc_14060D1E9
; ---------------------------------------------------------------------------

loc_14060D1E1:                          ; CODE XREF: NtTraceControl+8EC↑j
                mov     rcx, [rsp+98h+arg_28]

loc_14060D1E9:                          ; CODE XREF: NtTraceControl+90F↑j
                cmp     edi, 0C0000023h
                jnz     short loc_14060D201
                lea     eax, [rbx-0Fh]
                cmp     eax, 1
                jbe     short loc_14060D216
                lea     eax, [rbx-15h]
                cmp     eax, 1
                jbe     short loc_14060D216

loc_14060D201:                          ; CODE XREF: NtTraceControl+91F↑j
                cmp     ebx, 28h ; '('
                ja      short loc_14060D21C
                mov     rdx, 1D700880000h
                bt      rdx, rbx
                jnb     short loc_14060D21C

loc_14060D216:                          ; CODE XREF: NtTraceControl+927↑j
                                        ; NtTraceControl+92F↑j
                mov     eax, [rsp+98h+var_60]
                mov     [rcx], eax

loc_14060D21C:                          ; CODE XREF: NtTraceControl+934↑j
                                        ; NtTraceControl+944↑j
                jmp     short loc_14060D225
;   } // starts at 14060D1BA
; ---------------------------------------------------------------------------

loc_14060D21E:                          ; DATA XREF: .rdata:000000014004B2A4↑o
;   __except(1) // owned by 14060D1BA
                mov     edi, eax
                mov     rsi, [rsp+98h+var_50]

loc_14060D225:                          ; CODE XREF: NtTraceControl+105↑j
                                        ; NtTraceControl+115↑j ...
                test    rsi, rsi
                jz      short loc_14060D234
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_14060D234:                          ; CODE XREF: NtTraceControl+958↑j
                mov     eax, edi
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8
jpt_14060CAA6   dd offset loc_14060CAAC - 140000000h
                                        ; DATA XREF: NtTraceControl+1CB↑r
                dd offset loc_14060CAAC - 140000000h ; jump table for switch statement
                dd offset loc_14060CAAC - 140000000h
                dd offset loc_14060CAAC - 140000000h
                dd offset loc_14060CAAC - 140000000h
                dd offset loc_14060CAAC - 140000000h
                dd offset loc_14060CAAC - 140000000h
                dd offset def_14060CAA6 - 140000000h
                dd offset def_14060CAA6 - 140000000h
                dd offset def_14060CAA6 - 140000000h
                dd offset loc_14060CCEE - 140000000h
                dd offset loc_14060CD4D - 140000000h
                dd offset loc_14060CD8E - 140000000h
                dd offset loc_14060CD0B - 140000000h
                dd offset loc_14060CBAA - 140000000h
                dd offset loc_14060CC06 - 140000000h
                dd offset loc_14060CC38 - 140000000h
                dd offset loc_14060CC99 - 140000000h
                dd offset loc_14060CCC2 - 140000000h
                dd offset loc_14060CDA7 - 140000000h
                dd offset loc_14060CDBC - 140000000h
                dd offset loc_14060CDD8 - 140000000h
                dd offset loc_14060CE6C - 140000000h
                dd offset loc_14060CE88 - 140000000h
                dd offset loc_14060CEA8 - 140000000h
                dd offset loc_14060CBEB - 140000000h
                dd offset loc_14060CED4 - 140000000h
                dd offset loc_14060CF1A - 140000000h
                dd offset def_14060CAA6 - 140000000h
                dd offset loc_14060CF5C - 140000000h
                dd offset loc_14060CF8B - 140000000h
                dd offset loc_14060CE00 - 140000000h
                dd offset loc_14060CE1C - 140000000h
                dd offset loc_14060CE44 - 140000000h
                dd offset loc_14060CFAC - 140000000h
                dd offset loc_14060CFCD - 140000000h
                dd offset loc_14060CFF7 - 140000000h
                dd offset loc_14060D07F - 140000000h
                dd offset loc_14060D0D1 - 140000000h
                dd offset loc_14060D112 - 140000000h
                dd offset loc_14060D140 - 140000000h
                dd offset loc_14060D15C - 140000000h
                dd offset loc_14060D185 - 140000000h
                dd 60CADEh
                dq 60CB280060CB0Bh, 60CB5C0060CB42h, 60CB900060CB76h
; } // starts at 14060C8D0
NtTraceControl  endp

algn_14060D310:                         ; DATA XREF: .pdata:00000001400FD2E4↑o
                align 20h
; Exported entry 1603. NtQueryVolumeInformationFile

; =============== S U B R O U T I N E =======================================


