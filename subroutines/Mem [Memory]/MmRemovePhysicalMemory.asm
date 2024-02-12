MmRemovePhysicalMemory proc near        ; CODE XREF: sub_14095EF64+3E↓p
                                        ; DATA XREF: .pdata:000000014011E65C↑o

var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 60h
                mov     rbx, [rdx]
                mov     r14, rdx
                mov     rdx, [rcx]
                shr     rbx, 0Ch
                mov     [rax+8], rdx
                mov     ecx, [rax+8]
                test    ecx, 0FFFh
                setnz   sil
                test    cl, 1
                setnz   al
                and     sil, al
                jz      short loc_1408C7A9A
                and     ecx, 0FFFFFFFEh
                mov     dword ptr [rsp+68h+arg_0], ecx
                mov     rdx, [rsp+68h+arg_0]

loc_1408C7A9A:                          ; CODE XREF: MmRemovePhysicalMemory+3C↑j
                shr     rdx, 0Ch
                mov     [rsp+68h+arg_0], rdx
                lea     r8, [rdx+rbx]
                cmp     rdx, r8
                jb      short loc_1408C7AB6
                mov     eax, 0C00000EFh
                jmp     loc_1408C7B4A
; ---------------------------------------------------------------------------

loc_1408C7AB6:                          ; CODE XREF: MmRemovePhysicalMemory+5A↑j
                test    sil, sil
                jz      short loc_1408C7AC5
                mov     r8, rbx
                call    sub_14052ED98
                jmp     short loc_1408C7B09
; ---------------------------------------------------------------------------

loc_1408C7AC5:                          ; CODE XREF: MmRemovePhysicalMemory+69↑j
                lea     rax, [rsp+68h+arg_0]
                dec     r8
                mov     [rsp+68h+var_18], rax
                lea     rcx, unk_140C50C00
                and     [rsp+68h+var_20], 0
                mov     eax, 80000000h
                mov     [rsp+68h+var_28], 0C100000h
                xor     r9d, r9d
                mov     [rsp+68h+var_30], eax
                mov     [rsp+68h+var_38], eax
                mov     [rsp+68h+var_40], 1
                mov     [rsp+68h+var_48], rbx
                call    sub_1402D80F0

loc_1408C7B09:                          ; CODE XREF: MmRemovePhysicalMemory+73↑j
                test    eax, eax
                js      short loc_1408C7B4A
                mov     rcx, [rsp+68h+arg_0]
                mov     r8d, 10h
                mov     rdx, rbx
                call    sub_1408C766C
                mov     edi, eax
                test    eax, eax
                js      short loc_1408C7B2F
                shl     rbx, 0Ch
                mov     [r14], rbx
                jmp     short loc_1408C7B48
; ---------------------------------------------------------------------------

loc_1408C7B2F:                          ; CODE XREF: MmRemovePhysicalMemory+D4↑j
                mov     rcx, [rsp+68h+arg_0]
                mov     rdx, rbx
                test    sil, sil
                jz      short loc_1408C7B43
                call    sub_14052F1C8
                jmp     short loc_1408C7B48
; ---------------------------------------------------------------------------

loc_1408C7B43:                          ; CODE XREF: MmRemovePhysicalMemory+EA↑j
                call    sub_1402E8438

loc_1408C7B48:                          ; CODE XREF: MmRemovePhysicalMemory+DD↑j
                                        ; MmRemovePhysicalMemory+F1↑j
                mov     eax, edi

loc_1408C7B4A:                          ; CODE XREF: MmRemovePhysicalMemory+61↑j
                                        ; MmRemovePhysicalMemory+BB↑j
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmRemovePhysicalMemory endp
