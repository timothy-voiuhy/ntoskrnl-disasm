CcPinRead       proc near               ; DATA XREF: .pdata:00000001400FFD50↑o

var_98          = byte ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_68          = byte ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407E6DA0 SIZE 00000040 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+18h], r8d
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r15d, r9d
                mov     r12, rdx
                mov     r13, rcx
                xor     ecx, ecx
                mov     [r11-50h], rcx
                mov     [r11+8], rcx
                mov     rax, [rdx]
                mov     [r11+10h], rax
                mov     [r11-60h], rcx
                lea     rax, [r11-60h]
                mov     [r11-58h], rax
                mov     [rsp+0B8h+var_68], cl
                mov     eax, r9d
                and     eax, 1
                lea     eax, ds:8118h[rax*4]
                inc     dword ptr gs:[rax]
                mov     rax, gs:188h
                mov     [rax+54Ch], ecx
                mov     rax, [r13+28h]
                mov     r14, [rax+8]

loc_14065CFEA:                          ; DATA XREF: .rdata:000000014005D7A4↑o
;   __try { // __finally(loc_1407E6DA0)
                mov     rbx, [rsp+0B8h+arg_28]
                mov     esi, [r11+18h]
                mov     rax, [r11+8]
                mov     rdi, [r11-58h]

loc_14065CFFE:                          ; CODE XREF: CcPinRead+F5↓j
                mov     r8, [rsp+0B8h+var_60]
                test    r8, r8
                jnz     loc_14065D0AF

loc_14065D00C:                          ; CODE XREF: CcPinRead+184↓j
                test    dword ptr [r14+98h], 200h
                jz      loc_14065D109
                xor     r9d, r9d

loc_14065D020:                          ; CODE XREF: CcPinRead+18C↓j
                lea     rax, [rsp+0B8h+arg_0]
                mov     [rsp+0B8h+var_78], rax
                lea     rax, [rsp+0B8h+var_50]
                mov     [rsp+0B8h+var_80], rax
                mov     [rsp+0B8h+var_88], rdi
                mov     [rsp+0B8h+var_90], r15d
                mov     [rsp+0B8h+var_98], 0
                mov     r8d, esi
                lea     rdx, [rsp+0B8h+arg_8]
                mov     rcx, r13
                call    sub_1402720A0
                test    al, al
                jz      short loc_14065D0A0
                mov     rax, [rsp+0B8h+arg_0]
                mov     rdx, rax
                sub     rdx, [rsp+0B8h+arg_8]
                mov     ecx, esi
                cmp     rdx, rcx
                jl      short loc_14065CFFE
                mov     rcx, [rsp+0B8h+arg_20]
                mov     rax, [rsp+0B8h+var_60]
                mov     [rcx], rax
                lea     rax, [rsp+0B8h+var_60]
                cmp     rdi, rax
                jnz     short loc_14065D099
                mov     rax, [rsp+0B8h+var_50]
                mov     [rbx], rax

loc_14065D099:                          ; CODE XREF: CcPinRead+10F↑j
                mov     [rsp+0B8h+var_68], 1
                jmp     short loc_14065D111
; ---------------------------------------------------------------------------

loc_14065D0A0:                          ; CODE XREF: CcPinRead+DB↑j
                inc     dword ptr gs:8154h
                mov     [rsp+0B8h+var_68], 0
                jmp     short loc_14065D111
; ---------------------------------------------------------------------------

loc_14065D0AF:                          ; CODE XREF: CcPinRead+86↑j
                lea     rcx, [rsp+0B8h+var_60]
                cmp     rdi, rcx
                jnz     short loc_14065D0E1
                mov     edx, esi
                mov     rcx, r12
                call    sub_14077C03C
                mov     [rsp+0B8h+var_60], rax
                lea     rdi, [rax+10h]
                mov     [rsp+0B8h+var_58], rdi
                mov     rax, [rsp+0B8h+var_50]
                mov     [rbx], rax
                mov     rax, [rsp+0B8h+arg_0]

loc_14065D0E1:                          ; CODE XREF: CcPinRead+137↑j
                mov     ecx, dword ptr [rsp+0B8h+arg_8]
                sub     ecx, eax
                add     esi, ecx
                mov     [rsp+0B8h+arg_10], esi
                mov     [rsp+0B8h+arg_8], rax
                add     rdi, 8
                mov     [rsp+0B8h+var_58], rdi
                jmp     loc_14065D00C
; ---------------------------------------------------------------------------

loc_14065D109:                          ; CODE XREF: CcPinRead+97↑j
                mov     r9b, 1
                jmp     loc_14065D020
;   } // starts at 14065CFEA
; ---------------------------------------------------------------------------

loc_14065D111:                          ; CODE XREF: CcPinRead+11E↑j
                                        ; CcPinRead+12D↑j
                                        ; DATA XREF: ...
                mov     rax, gs:188h
                mov     ecx, [rax+54Ch]
                add     gs:8158h, ecx
                movzx   ebx, [rsp+0B8h+var_68]
                test    bl, bl
                jz      short loc_14065D148

loc_14065D131:                          ; CODE XREF: CcPinRead+1D0↓j
                                        ; CcPinRead+1D7↓j
                movzx   eax, bl
                add     rsp, 80h
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

loc_14065D148:                          ; CODE XREF: CcPinRead+1AF↑j
                mov     rcx, [rsp+0B8h+var_60]
                test    rcx, rcx
                jz      short loc_14065D131
                call    CcUnpinData
                jmp     short loc_14065D131
; } // starts at 14065CF80
CcPinRead       endp

; ---------------------------------------------------------------------------
algn_14065D159:                         ; DATA XREF: .pdata:00000001400FFD50↑o
                align 20h
; Exported entry  68. CcPinMappedData

; =============== S U B R O U T I N E =======================================


