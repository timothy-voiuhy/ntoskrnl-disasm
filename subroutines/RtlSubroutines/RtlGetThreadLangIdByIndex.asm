RtlGetThreadLangIdByIndex proc near     ; DATA XREF: .rdata:00000001400808A0↑o
                                        ; .pdata:00000001400D73B8↑o

var_38          = word ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = word ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047D77C SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 50h
                mov     r11, r9
                mov     rbx, r8
                mov     r9d, edx
                xor     r10d, r10d
                mov     [rax-34h], r10d
                mov     [rax-38h], r10w
                mov     [rax-30h], r10d
                xor     eax, eax
                mov     [rsp+58h+var_2C], eax
                mov     [rsp+58h+var_28], ax
                test    ecx, ecx
                jnz     loc_14047D77C
                test    rbx, rbx
                jz      loc_14047D77C

loc_140341D51:                          ; DATA XREF: .rdata:000000014008088C↑o
;   __try { // __except at loc_140341E4E
                mov     rcx, gs:188h
                lea     r8d, [r10+1]
                test    dword ptr [rcx+74h], 400h
                jnz     short loc_140341DA9
                cmp     [rcx+24Ah], r8b
                jz      short loc_140341DA9
                mov     rcx, [rcx+0F0h]

loc_140341D77:                          ; CODE XREF: RtlGetThreadLangIdByIndex+9C↓j
                mov     [rsp+58h+var_20], rcx
                mov     rcx, [rcx+17D0h]
                mov     [rsp+58h+var_18], rcx
                test    rcx, rcx
                jnz     short loc_140341DAE

loc_140341D8D:                          ; CODE XREF: RtlGetThreadLangIdByIndex+D7↓j
                                        ; RtlGetThreadLangIdByIndex+E4↓j ...
                movzx   eax, [rsp+58h+var_38]
                mov     [rbx], eax
                test    r11, r11
                jz      loc_140341E4C
                mov     eax, [rsp+58h+var_30]
                mov     [r11], eax
                jmp     loc_140341E4C
; ---------------------------------------------------------------------------

loc_140341DA9:                          ; CODE XREF: RtlGetThreadLangIdByIndex+55↑j
                                        ; RtlGetThreadLangIdByIndex+5E↑j
                mov     rcx, r10
                jmp     short loc_140341D77
; ---------------------------------------------------------------------------

loc_140341DAE:                          ; CODE XREF: RtlGetThreadLangIdByIndex+7B↑j
                test    cl, 3
                jz      short loc_140341DB8
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140341DB8:                          ; CODE XREF: RtlGetThreadLangIdByIndex+A1↑j
                lea     rax, [rcx+40h]
                mov     rdi, 7FFFFFFF0000h
                cmp     rax, rdi
                ja      short loc_140341DD0
                cmp     rax, rcx
                jnb     short loc_140341DDB

loc_140341DD0:                          ; CODE XREF: RtlGetThreadLangIdByIndex+B9↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_140341DDB:                          ; CODE XREF: RtlGetThreadLangIdByIndex+BE↑j
                mov     rdx, [rcx+18h]
                mov     [rsp+58h+var_10], rdx
                test    rdx, rdx
                jz      short loc_140341D8D
                movzx   eax, word ptr [rcx+4]
                mov     [rsp+58h+var_30], eax
                cmp     r9d, eax
                jnb     short loc_140341D8D
                test    r8b, dl
                jz      short loc_140341E00
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140341E00:                          ; CODE XREF: RtlGetThreadLangIdByIndex+E9↑j
                lea     rcx, [r9+r9*2]
                lea     r9, [rdx+rcx*2]
                lea     rax, [r9+6]
                cmp     rax, rdi
                ja      short loc_140341E16
                cmp     rax, r9
                jnb     short loc_140341E21

loc_140341E16:                          ; CODE XREF: RtlGetThreadLangIdByIndex+FF↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_140341E21:                          ; CODE XREF: RtlGetThreadLangIdByIndex+104↑j
                mov     eax, [r9]
                mov     [rsp+58h+var_2C], eax
                movzx   eax, word ptr [r9+4]
                cmp     r8w, word ptr [rsp+58h+var_2C]
                jz      short loc_140341E42
                mov     [rsp+58h+var_34], 0C00000E5h
                jmp     loc_140341D8D
; ---------------------------------------------------------------------------

loc_140341E42:                          ; CODE XREF: RtlGetThreadLangIdByIndex+123↑j
                mov     [rsp+58h+var_38], ax
                jmp     loc_140341D8D
; ---------------------------------------------------------------------------

loc_140341E4C:                          ; CODE XREF: RtlGetThreadLangIdByIndex+87↑j
                                        ; RtlGetThreadLangIdByIndex+94↑j
                jmp     short loc_140341E55
;   } // starts at 140341D51
; ---------------------------------------------------------------------------

loc_140341E4E:                          ; DATA XREF: .rdata:000000014008088C↑o
;   __except(1) // owned by 140341D51
                mov     [rsp+58h+var_34], eax
                xor     r10d, r10d

loc_140341E55:                          ; CODE XREF: RtlGetThreadLangIdByIndex:loc_140341E4C↑j
                mov     eax, [rsp+58h+var_34]
                test    eax, eax
                jnz     short loc_140341E6F
                mov     ecx, 0C0000225h
                cmp     [rsp+58h+var_38], r10w
                cmovz   eax, ecx
                mov     [rsp+58h+var_34], eax

loc_140341E6F:                          ; CODE XREF: RtlGetThreadLangIdByIndex+14B↑j
                mov     eax, [rsp+58h+var_34]

loc_140341E73:                          ; CODE XREF: RtlGetThreadLangIdByIndex+13BA71↓j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140341D10
RtlGetThreadLangIdByIndex endp
