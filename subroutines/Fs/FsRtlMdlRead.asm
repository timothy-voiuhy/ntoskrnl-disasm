FsRtlMdlRead    proc near               ; CODE XREF: FsRtlMdlReadEx+3B↑p
                                        ; DATA XREF: .pdata:00000001401070F4↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     edi, r9d
                mov     esi, r8d
                mov     rbp, rdx
                mov     rbx, rcx
                call    IoGetRelatedDeviceObject
                mov     rcx, rax
                mov     r10, [rax+8]
                mov     r11, [r10+50h]
                test    r11, r11
                jz      short loc_14071F48A
                cmp     dword ptr [r11], 80h
                jbe     short loc_14071F48A
                mov     rax, [r11+80h]
                test    rax, rax
                jz      short loc_14071F48A
                mov     [rsp+48h+var_18], rcx
                mov     r9d, edi
                mov     rcx, [rsp+48h+arg_28]
                mov     r8d, esi
                mov     [rsp+48h+var_20], rcx
                mov     rdx, rbp
                mov     rcx, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rcx
                mov     rcx, rbx
                call    sub_1404079D0

loc_14071F474:                          ; CODE XREF: FsRtlMdlRead+8C↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14071F48A:                          ; CODE XREF: FsRtlMdlRead+33↑j
                                        ; FsRtlMdlRead+3C↑j ...
                xor     al, al
                jmp     short loc_14071F474
FsRtlMdlRead    endp

; ---------------------------------------------------------------------------
algn_14071F48E:                         ; DATA XREF: .pdata:00000001401070F4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14071F4A0   proc near               ; CODE XREF: sub_1405D8688+212541↓p
                                        ; DATA XREF: .pdata:0000000140107100↑o ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_20          = qword ptr -20h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E8AF0 SIZE 00000034 BYTES

; __unwind { // __C_specific_handler
                push    rbx
                sub     rsp, 60h
                mov     r10, r8
                mov     r9d, edx
                mov     rbx, rcx
                and     [rsp+68h+var_20], 0
                mov     rax, gs:188h
                mov     r8b, [rax+232h]
                test    r8b, r8b
                jz      short loc_14071F4E5

loc_14071F4CA:                          ; DATA XREF: .rdata:0000000140088FF0↑o
;   __try { // __except at loc_14071F4E3
                mov     rdx, 7FFFFFFF0000h
                cmp     rcx, rdx
                cmovb   rdx, rcx
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_14071F4E5
;   } // starts at 14071F4CA
; ---------------------------------------------------------------------------

loc_14071F4E3:                          ; DATA XREF: .rdata:0000000140088FF0↑o
;   __except(1) // owned by 14071F4CA
                jmp     short loc_14071F524
; ---------------------------------------------------------------------------

loc_14071F4E5:                          ; CODE XREF: sub_14071F4A0+28↑j
                                        ; sub_14071F4A0+41↑j
                lea     rax, [rsp+68h+var_20]
                mov     [rsp+68h+var_38], rax
                and     [rsp+68h+var_40], 0
                mov     [rsp+68h+var_48], r9d
                xor     r9d, r9d
                mov     rdx, cs:qword_140CFC6C8
                mov     rcx, r10
                call    ObOpenObjectByName
                mov     [rsp+68h+arg_18], eax

loc_14071F513:                          ; DATA XREF: .rdata:0000000140089000↑o
;   __try { // __except at loc_14071F51D
                mov     rcx, [rsp+68h+var_20]
                mov     [rbx], rcx
                jmp     short loc_14071F524
;   } // starts at 14071F513
; ---------------------------------------------------------------------------

loc_14071F51D:                          ; DATA XREF: .rdata:0000000140089000↑o
;   __except(loc_1407E8AF0) // owned by 14071F513
                mov     eax, [rsp+68h+arg_18]

loc_14071F524:                          ; CODE XREF: sub_14071F4A0:loc_14071F4E3↑j
                                        ; sub_14071F4A0+7B↑j
                add     rsp, 60h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14071F4A0
sub_14071F4A0   endp

algn_14071F52B:                         ; DATA XREF: .pdata:0000000140107100↑o
                align 20h
; Exported entry 1653. ObGetObjectSecurity

; =============== S U B R O U T I N E =======================================


