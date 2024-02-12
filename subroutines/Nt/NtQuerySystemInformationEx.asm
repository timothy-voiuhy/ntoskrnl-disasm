NtQuerySystemInformationEx proc near    ; DATA XREF: .rdata:000000014008226C↑o
                                        ; .pdata:0000000140105474↑o ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408275CE SIZE 00000053 BYTES

; __unwind { // __C_specific_handler
                sub     rsp, 38h
                mov     r11, rdx
                mov     r10d, ecx
                test    rdx, rdx
                jz      loc_140827617
                test    r8d, r8d
                jz      loc_140827617
                cmp     ecx, 79h ; 'y'
                jle     loc_1406FEFED
                mov     eax, 0B4h
                cmp     ecx, eax
                jle     loc_1406FF043
                sub     ecx, 0B5h
                jnz     loc_1406FF00E

loc_1406FEF7E:                          ; CODE XREF: NtQuerySystemInformationEx+D1↓j
                                        ; NtQuerySystemInformationEx+DF↓j ...
                mov     edx, 7

loc_1406FEF83:                          ; CODE XREF: NtQuerySystemInformationEx+C9↓j
                                        ; NtQuerySystemInformationEx+F7↓j
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 0
                jz      short loc_1406FEFCA

loc_1406FEF95:                          ; DATA XREF: .rdata:0000000140082258↑o
;   __try { // __except at loc_1406FEFC8
                test    r11, rdx
                jnz     short loc_1406FEFC1
                mov     ecx, r8d
                add     rcx, r11
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                ja      short loc_1406FEFB4
                cmp     rcx, r11
                jnb     short loc_1406FEFC6

loc_1406FEFB4:                          ; CODE XREF: NtQuerySystemInformationEx+6D↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1406FEFC6
; ---------------------------------------------------------------------------

loc_1406FEFC1:                          ; CODE XREF: NtQuerySystemInformationEx+58↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1406FEFC6:                          ; CODE XREF: NtQuerySystemInformationEx+72↑j
                                        ; NtQuerySystemInformationEx+7F↑j
                jmp     short loc_1406FEFCA
;   } // starts at 1406FEF95
; ---------------------------------------------------------------------------

loc_1406FEFC8:                          ; DATA XREF: .rdata:0000000140082258↑o
;   __except(1) // owned by 1406FEF95
                jmp     short loc_1406FEFE7
; ---------------------------------------------------------------------------

loc_1406FEFCA:                          ; CODE XREF: NtQuerySystemInformationEx+53↑j
                                        ; NtQuerySystemInformationEx:loc_1406FEFC6↑j
                mov     rax, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], rax
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], eax
                mov     rdx, r11
                mov     ecx, r10d
                call    sub_14060DA00

loc_1406FEFE7:                          ; CODE XREF: NtQuerySystemInformationEx:loc_1406FEFC8↑j
                                        ; NtQuerySystemInformationEx+EA↓j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406FEFED:                          ; CODE XREF: NtQuerySystemInformationEx+1F↑j
                jz      short loc_1406FF032
                cmp     r10d, 49h ; 'I'
                jle     short loc_1406FF02C
                sub     ecx, 53h ; 'S'
                jz      short loc_1406FF032
                sub     ecx, 11h
                jz      short loc_1406FF032
                sub     ecx, 7
                jnz     short loc_1406FF03C

loc_1406FF004:                          ; CODE XREF: NtQuerySystemInformationEx+DA↓j
                                        ; NtQuerySystemInformationEx:loc_1406FF043↓j ...
                mov     edx, 3
                jmp     loc_1406FEF83
; ---------------------------------------------------------------------------

loc_1406FF00E:                          ; CODE XREF: NtQuerySystemInformationEx+38↑j
                sub     ecx, 1Ch
                jz      loc_1406FEF7E
                sub     ecx, 1
                jz      short loc_1406FF004
                cmp     ecx, 1
                jz      loc_1406FEF7E

loc_1406FF025:                          ; CODE XREF: NtQuerySystemInformationEx+101↓j
                                        ; NtQuerySystemInformationEx+1286BA↓j ...
                mov     eax, 0C0000003h
                jmp     short loc_1406FEFE7
; ---------------------------------------------------------------------------

loc_1406FF02C:                          ; CODE XREF: NtQuerySystemInformationEx+B3↑j
                jnz     loc_1408275CE

loc_1406FF032:                          ; CODE XREF: NtQuerySystemInformationEx:loc_1406FEFED↑j
                                        ; NtQuerySystemInformationEx+B8↑j ...
                mov     edx, 1
                jmp     loc_1406FEF83
; ---------------------------------------------------------------------------

loc_1406FF03C:                          ; CODE XREF: NtQuerySystemInformationEx+C2↑j
                cmp     ecx, 1
                jz      short loc_1406FF032
                jmp     short loc_1406FF025
; ---------------------------------------------------------------------------

loc_1406FF043:                          ; CODE XREF: NtQuerySystemInformationEx+2C↑j
                jz      short loc_1406FF004
                sub     ecx, 8Dh
                jz      short loc_1406FF032
                sub     ecx, 13h
                jz      short loc_1406FF032
                sub     ecx, 5
                jz      loc_1406FEF7E
                sub     ecx, 0Ah
                jz      loc_1406FEF7E
                jmp     loc_140827605
; } // starts at 1406FEF40
NtQuerySystemInformationEx endp
