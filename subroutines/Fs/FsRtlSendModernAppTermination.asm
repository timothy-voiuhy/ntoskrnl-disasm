FsRtlSendModernAppTermination proc near ; CODE XREF: sub_140309C5C+9B↑p
                                        ; sub_140A3CC14+C2B↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001404AE590 SIZE 00000019 BYTES

; __unwind { // __GSHandlerCheck
                sub     rsp, 68h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                xor     r9d, r9d
                test    rcx, rcx
                jz      loc_1404AE590
                test    edx, edx
                jz      loc_1404AE590

loc_1403C06E7:                          ; CODE XREF: FsRtlSendModernAppTermination+EDEE4↓j
                cmp     edx, 1000h
                ja      short loc_1403C0738
                test    r8d, r8d
                jz      short loc_1403C0746
                cmp     r8d, 1
                jnz     short loc_1403C073F
                mov     rax, cs:qword_140020778

loc_1403C0701:                          ; CODE XREF: FsRtlSendModernAppTermination+8D↓j
                mov     [rsp+68h+var_38], r9d
                mov     r8d, edx
                mov     rdx, rcx
                mov     [rsp+68h+var_40], r9d
                lea     rcx, [rsp+68h+var_20]
                mov     [rsp+68h+var_20], rax
                mov     [rsp+68h+var_48], r9
                call    ZwUpdateWnfStateData

loc_1403C0725:                          ; CODE XREF: FsRtlSendModernAppTermination+7D↓j
                                        ; FsRtlSendModernAppTermination+84↓j
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403C0738:                          ; CODE XREF: FsRtlSendModernAppTermination+2D↑j
                mov     eax, 80000005h
                jmp     short loc_1403C0725
; ---------------------------------------------------------------------------

loc_1403C073F:                          ; CODE XREF: FsRtlSendModernAppTermination+38↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1403C0725
; ---------------------------------------------------------------------------

loc_1403C0746:                          ; CODE XREF: FsRtlSendModernAppTermination+32↑j
                mov     rax, cs:qword_14002E0C0
                jmp     short loc_1403C0701
; } // starts at 1403C06C0
FsRtlSendModernAppTermination endp
