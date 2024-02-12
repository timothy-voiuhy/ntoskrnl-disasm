CcPreparePinWrite proc near             ; DATA XREF: .rdata:000000014006E5E8↑o
                                        ; .pdata:000000014010218C↑o

var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407E73A3 SIZE 00000025 BYTES
; FUNCTION CHUNK AT 0000000140817C9E SIZE 00000014 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r12b, r9b
                mov     edi, r8d
                mov     r14, rdx
                mov     r15, rcx
                and     qword ptr [r11-38h], 0
                xor     r10d, r10d
                mov     [r11-40h], r10
                mov     rax, [rdx]
                mov     [rsp+0A8h+var_48], rax
                and     [r11-50h], r10
                lea     rsi, [r11-50h]
                mov     [rsp+0A8h+arg_8], r8d
                mov     [r11-58h], r10b
                mov     r13d, [rsp+0A8h+arg_20]
                test    r13b, 20h
                jz      short loc_1406A0A97
                mov     rax, [rsp+0A8h+arg_30]
                mov     [rsp+0A8h+var_88], rax
                mov     r9, [rsp+0A8h+arg_28]
                call    sub_1402F2DFC
                mov     al, 1

loc_1406A0A79:                          ; CODE XREF: CcPreparePinWrite+1C6↓j
                lea     r11, [rsp+0A8h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A0A97:                          ; CODE XREF: CcPreparePinWrite+5B↑j
                                        ; DATA XREF: .rdata:000000014006E5D4↑o
;   __try { // __finally(loc_1407E73A3)
                mov     bl, 1

loc_1406A0A99:                          ; CODE XREF: CcPreparePinWrite+F9↓j
                mov     r8, [rsp+0A8h+var_50]
                test    r8, r8
                jnz     loc_1406A0B56

loc_1406A0AA7:                          ; CODE XREF: CcPreparePinWrite+1AC↓j
                lea     rax, [rsp+0A8h+var_40]
                mov     [rsp+0A8h+var_68], rax
                lea     rax, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_70], rax
                mov     [rsp+0A8h+var_78], rsi
                mov     [rsp+0A8h+var_80], r13d
                mov     byte ptr [rsp+0A8h+var_88], bl
                xor     r9d, r9d
                mov     r8d, edi
                lea     rdx, [rsp+0A8h+var_48]
                mov     rcx, r15
                call    sub_1402720A0
                test    al, al
                jz      loc_1406A0BB1
                mov     r10, [rsp+0A8h+var_40]
                mov     rdx, r10
                mov     rax, [rsp+0A8h+var_48]
                sub     rdx, rax
                mov     ecx, edi
                cmp     rdx, rcx
                jl      short loc_1406A0A99
                lea     rax, [rsp+0A8h+var_50]
                cmp     rsi, rax
                jnz     short loc_1406A0B15
                mov     rcx, [rsp+0A8h+var_38]
                mov     rax, [rsp+0A8h+arg_30]
                mov     [rax], rcx

loc_1406A0B15:                          ; CODE XREF: CcPreparePinWrite+103↑j
                test    r12b, r12b
                jz      short loc_1406A0B34
                mov     r8d, [rsp+0A8h+arg_8]
                xor     edx, edx
                mov     rcx, [rsp+0A8h+arg_30]
                mov     rcx, [rcx]
                call    memset

loc_1406A0B34:                          ; CODE XREF: CcPreparePinWrite+118↑j
                xor     edx, edx
                mov     rcx, [rsp+0A8h+var_50]
                call    CcSetDirtyPinnedData
                mov     rcx, [rsp+0A8h+var_50]
                mov     rax, [rsp+0A8h+arg_28]
                mov     [rax], rcx
                mov     [rsp+0A8h+var_58], bl
                jmp     short loc_1406A0BBC
; ---------------------------------------------------------------------------

loc_1406A0B56:                          ; CODE XREF: CcPreparePinWrite+A1↑j
                lea     rcx, [rsp+0A8h+var_50]
                cmp     rsi, rcx
                jnz     short loc_1406A0B92
                mov     edx, edi
                mov     rcx, r14
                call    sub_14077C03C
                mov     [rsp+0A8h+var_50], rax
                lea     rsi, [rax+10h]
                mov     [rsp+0A8h+var_30], rsi
                mov     rcx, [rsp+0A8h+var_38]
                mov     rax, [rsp+0A8h+arg_30]
                mov     [rax], rcx
                mov     r10, [rsp+0A8h+var_40]
                mov     rax, [rsp+0A8h+var_48]

loc_1406A0B92:                          ; CODE XREF: CcPreparePinWrite+15E↑j
                sub     eax, r10d
                add     edi, eax
                mov     [rsp+0A8h+arg_10], edi
                mov     [rsp+0A8h+var_48], r10
                add     rsi, 8
                mov     [rsp+0A8h+var_30], rsi
                jmp     loc_1406A0AA7
; ---------------------------------------------------------------------------

loc_1406A0BB1:                          ; CODE XREF: CcPreparePinWrite+DE↑j
                xor     bl, bl
                mov     [rsp+0A8h+var_58], bl
                mov     rcx, [rsp+0A8h+var_50]
;   } // starts at 1406A0A97

loc_1406A0BBC:                          ; CODE XREF: CcPreparePinWrite+154↑j
                                        ; DATA XREF: .rdata:000000014006E5D4↑o
                test    bl, bl
                jz      loc_140817C9E

loc_1406A0BC4:                          ; CODE XREF: CcPreparePinWrite+1772A1↓j
                                        ; CcPreparePinWrite+1772AD↓j
                mov     al, bl
                jmp     loc_1406A0A79
; } // starts at 1406A0A00
CcPreparePinWrite endp
