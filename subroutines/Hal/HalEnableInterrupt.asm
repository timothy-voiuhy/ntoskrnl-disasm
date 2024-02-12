HalEnableInterrupt proc near            ; CODE XREF: sub_14037789C+C7↑p
                                        ; DATA XREF: .rdata:0000000140092488↑o ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = dword ptr  8
arg_4           = dword ptr  0Ch
arg_8           = byte ptr  10h

; FUNCTION CHUNK AT 0000000140493C68 SIZE 000000A7 BYTES

                mov     rax, rsp
                mov     [rax+18h], rbx
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 60h
                and     dword ptr [rax-24h], 0
                mov     rbx, rcx
                and     qword ptr [rax+10h], 0
                cmp     dword ptr [rcx], 1
                jnz     loc_140493C68
                or      [rsp+68h+arg_0], 0FFFFFFFFh
                mov     edi, [rcx+8]
                mov     dword ptr [rax-28h], 1
                lea     rax, [rcx+20h]
                mov     [rsp+68h+var_20], rax
                lea     rax, [rcx+30h]
                mov     [rsp+68h+var_18], rax
                mov     [rsp+68h+arg_4], 1
                test    edi, edi
                jz      short loc_140377C72
                cmp     edi, 3
                jnz     loc_140493C68
                xor     ebx, ebx

loc_140377C5D:                          ; CODE XREF: HalEnableInterrupt+E8↓j
                                        ; HalEnableInterrupt+11C083↓j ...
                lea     r11, [rsp+68h+var_8]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140377C72:                          ; CODE XREF: HalEnableInterrupt+50↑j
                mov     esi, [rcx+40h]
                lea     rdx, [rsp+68h+arg_8]
                mov     ecx, esi
                call    sub_14037902C
                test    eax, eax
                js      loc_140493C88
                lea     rcx, qword_140C49D80
                call    sub_140378FF0
                mov     edx, [rbx+14h]
                lea     rcx, [rsp+68h+arg_8]
                mov     r9d, [rbx+18h]
                mov     r8b, [rbx+10h]
                movzx   edi, al
                lea     rax, [rsp+68h+arg_0]
                mov     [rsp+68h+var_38], rax
                lea     rax, [rsp+68h+var_28]
                mov     [rsp+68h+var_40], rax
                mov     [rsp+68h+var_48], edx
                mov     edx, [rbx+0Ch]
                call    sub_1403A3AE8
                lea     rcx, qword_140C49D80
                mov     ebx, eax
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140493CAB

loc_140377CE4:                          ; CODE XREF: HalEnableInterrupt+11C0AD↓j
                                        ; HalEnableInterrupt+11C0B9↓j ...
                mov     cr8, rdi
                jmp     loc_140377C5D
HalEnableInterrupt endp
