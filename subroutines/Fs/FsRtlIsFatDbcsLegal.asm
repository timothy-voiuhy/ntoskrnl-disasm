FsRtlIsFatDbcsLegal proc near           ; CODE XREF: FsRtlIsFatDbcsLegal+121BB7↓p
                                        ; DATA XREF: .rdata:0000000140083DEC↑o ...

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082889E SIZE 000001B6 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                movzx   ebx, word ptr [rcx]
                xor     r14d, r14d
                mov     bpl, dl
                mov     sil, r14b
                test    bx, bx
                jz      loc_140706EC9
                lea     r15d, [r14+1]
                test    dl, dl
                jnz     loc_14082889E

loc_140706E09:                          ; CODE XREF: FsRtlIsFatDbcsLegal+121AF0↓j
                                        ; FsRtlIsFatDbcsLegal+121B0D↓j ...
                mov     rdi, [rcx+8]
                cmp     byte ptr [rdi], 5Ch ; '\'
                jz      loc_1408288F1

loc_140706E16:                          ; CODE XREF: FsRtlIsFatDbcsLegal+121B4B↓j
                test    r8b, r8b
                jnz     loc_140828920
                test    bpl, bpl
                jnz     loc_1408289A7

loc_140706E28:                          ; CODE XREF: FsRtlIsFatDbcsLegal+121BDE↓j
                cmp     bx, 0Ch
                ja      loc_140706EC9
                mov     r8d, r14d
                cmp     r14w, bx
                jnb     short loc_140706EA6
                lea     r10, cs:140000000h

loc_140706E42:                          ; CODE XREF: FsRtlIsFatDbcsLegal+BE↓j
                mov     eax, r8d
                movzx   r9d, byte ptr [rax+rdi]
                cmp     r9b, 80h
                jnb     loc_140828A12

loc_140706E54:                          ; CODE XREF: FsRtlIsFatDbcsLegal+121C49↓j
                                        ; FsRtlIsFatDbcsLegal+121C58↓j
                test    r9b, r9b
                js      short loc_140706E73
                movzx   edx, byte ptr [r9+r10+10FB0h]
                mov     al, bpl
                neg     al
                sbb     ecx, ecx
                and     ecx, 8
                add     ecx, r15d
                and     edx, ecx
                jz      short loc_140706EC9

loc_140706E73:                          ; CODE XREF: FsRtlIsFatDbcsLegal+87↑j
                cmp     r9b, 2Eh ; '.'
                jz      short loc_140706ECD
                cmp     r9b, 22h ; '"'
                jz      short loc_140706ECD

loc_140706E7F:                          ; CODE XREF: FsRtlIsFatDbcsLegal+122↓j
                cmp     r8d, 8
                jnb     short loc_140706EC4

loc_140706E85:                          ; CODE XREF: FsRtlIsFatDbcsLegal+F7↓j
                                        ; FsRtlIsFatDbcsLegal+121C7F↓j
                add     r8d, r15d
                movzx   eax, bx
                cmp     r8d, eax
                jb      short loc_140706E42
                cmp     r9b, 2Eh ; '.'
                ja      short loc_140706EA6
                mov     rcx, 400500000000h
                bt      rcx, r9
                jb      short loc_140706EC9

loc_140706EA6:                          ; CODE XREF: FsRtlIsFatDbcsLegal+69↑j
                                        ; FsRtlIsFatDbcsLegal+C4↑j ...
                mov     al, r15b

loc_140706EA9:                          ; CODE XREF: FsRtlIsFatDbcsLegal+FB↓j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140706EC4:                          ; CODE XREF: FsRtlIsFatDbcsLegal+B3↑j
                test    sil, sil
                jnz     short loc_140706E85

loc_140706EC9:                          ; CODE XREF: FsRtlIsFatDbcsLegal+27↑j
                                        ; FsRtlIsFatDbcsLegal+5C↑j ...
                xor     al, al
                jmp     short loc_140706EA9
; ---------------------------------------------------------------------------

loc_140706ECD:                          ; CODE XREF: FsRtlIsFatDbcsLegal+A7↑j
                                        ; FsRtlIsFatDbcsLegal+AD↑j
                test    r8d, r8d
                jz      short loc_140706EC9
                test    sil, sil
                jnz     short loc_140706EC9
                movzx   eax, bx
                sub     eax, r8d
                sub     eax, r15d
                cmp     eax, 3
                ja      short loc_140706EC9
                lea     eax, [r8-1]
                cmp     byte ptr [rax+rdi], 20h ; ' '
                jz      short loc_140706EC9
                mov     sil, r15b
                jmp     short loc_140706E7F
FsRtlIsFatDbcsLegal endp
