ProbeForRead    proc near               ; DATA XREF: .pdata:0000000140104A3C↑o
                sub     rsp, 28h
                test    rdx, rdx
                jz      short loc_1406ED899
                dec     r8d
                test    rcx, r8
                jnz     short loc_1406ED89F
                lea     rax, [rcx+rdx]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_1406ED8A5
                cmp     rax, rcx
                jb      short loc_1406ED8A5

loc_1406ED899:                          ; CODE XREF: ProbeForRead+7↑j
                                        ; ProbeForRead+37↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ED89F:                          ; CODE XREF: ProbeForRead+F↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ED8A5:                          ; CODE XREF: ProbeForRead+22↑j
                                        ; ProbeForRead+27↑j
                mov     eax, [rdx]
                jmp     short loc_1406ED899
ProbeForRead    endp

; ---------------------------------------------------------------------------
algn_1406ED8A9:                         ; DATA XREF: .pdata:0000000140104A3C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406ED8B0   proc near               ; DATA XREF: .rdata:000000014007E8C8↑o
                                        ; .pdata:0000000140104A48↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140824846 SIZE 000000D6 BYTES

; __unwind { // __C_specific_handler
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r14, rdx
                mov     r12, rcx
                and     [rsp+68h+arg_8], 0
                mov     rax, gs:188h
                mov     r15b, [rax+232h]
                test    rdx, rdx
                jnz     loc_140824846

loc_1406ED8E1:                          ; CODE XREF: sub_1406ED8B0+136F99↓j
                                        ; sub_1406ED8B0+136FB4↓j
                mov     r8, cs:ExEventObjectType
                and     [rsp+68h+arg_10], 0
                and     [rsp+68h+var_40], 0
                lea     rax, [rsp+68h+arg_10]
                mov     [rsp+68h+var_48], rax
                mov     r9b, r15b
                mov     edx, 2
                mov     rcx, r12
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     rsi, [rsp+68h+arg_10]
                mov     [rsp+68h+var_38], rsi
                mov     dword ptr [rsp+68h+arg_10], eax
                test    eax, eax
                js      loc_14082486E
                xor     r8d, r8d
                lea     edx, [r8+1]
                mov     rcx, rsi
                call    KePulseEvent
                mov     [rsp+68h+arg_8], eax

loc_1406ED945:                          ; CODE XREF: sub_1406ED8B0+136FC3↓j
                                        ; sub_1406ED8B0+136FD3↓j ...
                test    edi, edi
                js      short loc_1406ED952
                test    r14, r14
                jnz     loc_1408248EE

loc_1406ED952:                          ; CODE XREF: sub_1406ED8B0+97↑j
                                        ; sub_1406ED8B0+13704A↓j ...
                test    rsi, rsi
                jz      short loc_1406ED95F
                mov     rcx, rsi
                call    PsDereferenceSiloContext

loc_1406ED95F:                          ; CODE XREF: sub_1406ED8B0+A5↑j
                mov     eax, edi

loc_1406ED961:                          ; CODE XREF: sub_1406ED8B0:loc_140824869↓j
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406ED8B0
sub_1406ED8B0   endp

algn_1406ED96F:                         ; DATA XREF: .rdata:000000014007E8C8↑o
                                        ; .pdata:0000000140104A48↑o
                align 20h
; Exported entry 573. FsRtlSetEcpListIntoIrp
; Exported entry 996. IoSetIrpExtraCreateParameter

; =============== S U B R O U T I N E =======================================


