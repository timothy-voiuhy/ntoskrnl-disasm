CcPinMappedData proc near               ; DATA XREF: .pdata:00000001400FFD5C↑o

var_88          = byte ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407E6DF0 SIZE 0000002F BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+20h], rsi
                mov     [r11+18h], r8d
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r13d, r9d
                mov     r12, rdx
                mov     rsi, rcx
                xor     ecx, ecx
                mov     [r11-38h], rcx
                mov     [r11+10h], rcx
                mov     rax, [rdx]
                mov     [r11-48h], rax
                mov     [r11-50h], rcx
                lea     rax, [r11-50h]
                mov     [r11-40h], rax
                mov     [rsp+0A8h+var_58], cl
                mov     rbx, [rsp+0A8h+arg_20]
                mov     rax, [rbx]
                test    al, 1
                jz      loc_14065D30F
                dec     rax
                mov     [rbx], rax
                mov     rax, [rsi+28h]
                mov     r14, [rax+8]
                inc     dword ptr gs:8114h

loc_14065D1D2:                          ; DATA XREF: .rdata:000000014005D89C↑o
;   __try { // __finally(loc_1407E6DF0)
                mov     rcx, [rbx]
                mov     eax, 2FDh
                cmp     [rcx], ax
                jz      loc_14065D2CB
                mov     edi, [r11+18h]
                mov     rax, [r11+10h]
                mov     r15, [r11-40h]

loc_14065D1EF:                          ; CODE XREF: CcPinMappedData+100↓j
                mov     r8, [rsp+0A8h+var_50]
                test    r8, r8
                jnz     short loc_14065D277

loc_14065D1F9:                          ; CODE XREF: CcPinMappedData+15E↓j
                test    dword ptr [r14+98h], 200h
                jz      loc_14065D2C3
                xor     r9d, r9d

loc_14065D20D:                          ; CODE XREF: CcPinMappedData+166↓j
                lea     rax, [rsp+0A8h+arg_8]
                mov     [rsp+0A8h+var_68], rax
                lea     rax, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_70], rax
                mov     [rsp+0A8h+var_78], r15
                mov     [rsp+0A8h+var_80], r13d
                mov     [rsp+0A8h+var_88], 0
                mov     r8d, edi
                lea     rdx, [rsp+0A8h+var_48]
                mov     rcx, rsi
                call    sub_1402720A0
                test    al, al
                jz      loc_14065D2E0
                mov     rax, [rsp+0A8h+arg_8]
                mov     rdx, rax
                sub     rdx, [rsp+0A8h+var_48]
                mov     ecx, edi
                cmp     rdx, rcx
                jl      short loc_14065D1EF
                mov     rcx, [rbx]
                call    sub_140273460
                mov     rax, [rsp+0A8h+var_50]
                mov     [rbx], rax

loc_14065D272:                          ; CODE XREF: CcPinMappedData+17E↓j
                mov     dil, 1
                jmp     short loc_14065D2E3
; ---------------------------------------------------------------------------

loc_14065D277:                          ; CODE XREF: CcPinMappedData+97↑j
                lea     rcx, [rsp+0A8h+var_50]
                cmp     r15, rcx
                jnz     short loc_14065D2A1
                mov     edx, edi
                mov     rcx, r12
                call    sub_14077C03C
                mov     [rsp+0A8h+var_50], rax
                lea     r15, [rax+10h]
                mov     [rsp+0A8h+var_40], r15
                mov     rax, [rsp+0A8h+arg_8]

loc_14065D2A1:                          ; CODE XREF: CcPinMappedData+11F↑j
                mov     ecx, dword ptr [rsp+0A8h+var_48]
                sub     ecx, eax
                add     edi, ecx
                mov     [rsp+0A8h+arg_10], edi
                mov     [rsp+0A8h+var_48], rax
                add     r15, 8
                mov     [rsp+0A8h+var_40], r15
                jmp     loc_14065D1F9
; ---------------------------------------------------------------------------

loc_14065D2C3:                          ; CODE XREF: CcPinMappedData+A4↑j
                mov     r9b, 1
                jmp     loc_14065D20D
; ---------------------------------------------------------------------------

loc_14065D2CB:                          ; CODE XREF: CcPinMappedData+7D↑j
                and     r13b, 1
                add     rcx, 48h ; 'H'
                movzx   edx, r13b
                call    ExAcquireSharedStarveExclusive
                test    al, al
                jnz     short loc_14065D272

loc_14065D2E0:                          ; CODE XREF: CcPinMappedData+E5↑j
                xor     dil, dil

loc_14065D2E3:                          ; CODE XREF: CcPinMappedData+115↑j
                mov     [rsp+0A8h+var_58], dil
;   } // starts at 14065D1D2

loc_14065D2E8:                          ; DATA XREF: .rdata:000000014005D89C↑o
                test    dil, dil
                jz      short loc_14065D313

loc_14065D2ED:                          ; CODE XREF: CcPinMappedData+1BE↓j
                                        ; CcPinMappedData+1C5↓j
                movzx   eax, dil

loc_14065D2F1:                          ; CODE XREF: CcPinMappedData+1B1↓j
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

loc_14065D30F:                          ; CODE XREF: CcPinMappedData+56↑j
                mov     al, 1
                jmp     short loc_14065D2F1
; ---------------------------------------------------------------------------

loc_14065D313:                          ; CODE XREF: CcPinMappedData+18B↑j
                inc     qword ptr [rbx]
                mov     rcx, [rsp+0A8h+var_50]
                test    rcx, rcx
                jz      short loc_14065D2ED
                call    CcUnpinData
                jmp     short loc_14065D2ED
; } // starts at 14065D160
CcPinMappedData endp
