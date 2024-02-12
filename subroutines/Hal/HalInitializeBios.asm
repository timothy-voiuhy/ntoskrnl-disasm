HalInitializeBios proc near             ; CODE XREF: sub_14099D840+279↓p
                                        ; sub_140A3C054+59C↓p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B00AE SIZE 00000038 BYTES

                mov     [rsp+arg_0], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     edi, ecx
                mov     [rsp+48h+arg_8], 0A0000h
                mov     rcx, [rdx+0D8h]
                mov     rsi, rdx
                test    rcx, rcx
                jz      short loc_1403C4D0A
                call    _strupr
                lea     rdx, aNovga     ; "NOVGA"
                mov     rcx, rax
                call    strstr
                test    rax, rax
                jnz     loc_1403C4E93

loc_1403C4D0A:                          ; CODE XREF: HalInitializeBios+2B↑j
                cmp     edi, 0FFFFFFFFh
                jz      loc_1403C4EF4
                mov     ebp, 830h
                mov     r8d, 206C6148h
                mov     edx, ebp
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_1403C4E93
                and     qword ptr [rax], 0
                lea     r9, [rdi+30h]
                and     qword ptr [rax+20h], 0
                xor     edx, edx
                and     dword ptr [rax+2Ch], 0
                mov     [rax+8], bp
                xor     r8d, r8d
                mov     dword ptr [rax+28h], 100000h
                lea     eax, [rbp-2Eh]
                mov     ebp, 0F0h
                mov     [rdi+0Ah], ax
                lea     r11d, [rbp+10h]

loc_1403C4D67:                          ; CODE XREF: HalInitializeBios+C6↓j
                lea     eax, [rdx-0A0h]
                mov     rcx, r8
                cmp     eax, 1Fh
                cmovbe  rcx, rbp
                inc     edx
                inc     r8
                mov     [r9], rcx
                lea     r9, [r9+8]
                cmp     edx, r11d
                jb      short loc_1403C4D67
                add     rsi, 20h ; ' '
                mov     rcx, [rsi]
                cmp     rcx, rsi
                jz      short loc_1403C4DAF
                mov     r9d, 0FFh

loc_1403C4D9A:                          ; CODE XREF: HalInitializeBios+ED↓j
                mov     rdx, [rcx+18h]
                cmp     rdx, r11
                jb      loc_1403C4EA8

loc_1403C4DA7:                          ; CODE XREF: HalInitializeBios+1FF↓j
                                        ; HalInitializeBios+21B↓j ...
                mov     rcx, [rcx]
                cmp     rcx, rsi
                jnz     short loc_1403C4D9A

loc_1403C4DAF:                          ; CODE XREF: HalInitializeBios+D2↑j
                xor     r9d, r9d
                mov     [rsp+48h+var_20], 40000020h
                and     [rsp+48h+var_28], 0
                xor     edx, edx
                mov     rcx, rdi
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                mov     cs:qword_140C4BE40, rax
                test    rax, rax
                jz      loc_1403C4E89
                mov     rcx, [rsp+48h+arg_8]
                mov     esi, 20000h
                mov     edx, esi
                mov     r8d, 204h
                call    MmMapIoSpaceEx
                mov     rbp, rax
                test    rax, rax
                jz      loc_1404B00C1
                mov     edx, 2000h
                call    sub_14037CD18
                test    rax, rax
                jz      loc_1404B00AE
                mov     rdx, cs:qword_140C4BE40
                lea     r8, [rbp-0A0000h]
                mov     r9, rax
                mov     cs:qword_140C4BE48, r8
                call    sub_1403C4F60
                mov     r14d, 800h
                mov     r8d, 4
                mov     edx, r14d
                xor     ecx, ecx
                call    MmMapIoSpaceEx
                mov     r15, rax
                test    rax, rax
                jz      loc_1404B00AE
                xor     edx, edx
                xor     ecx, ecx
                call    sub_140397B30
                mov     rcx, rax
                mov     rdx, r15
                mov     r8d, r14d
                call    memmove
                mov     edx, r14d
                mov     rcx, r15
                call    MmUnmapVideoDisplay
                lea     rax, sub_1404B6F50
                mov     cs:byte_140C50644, 1
                mov     cs:qword_140C005E8, rax

loc_1403C4E89:                          ; CODE XREF: HalInitializeBios+117↑j
                                        ; HalInitializeBios+EB40B↓j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1403C4E93:                          ; CODE XREF: HalInitializeBios+44↑j
                                        ; HalInitializeBios+70↑j ...
                mov     rbp, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403C4EA8:                          ; CODE XREF: HalInitializeBios+E1↑j
                movsxd  rax, dword ptr [rcx+10h]
                cmp     eax, 23h ; '#'
                ja      short loc_1403C4EC5
                mov     r8, 0BC0400040h
                bt      r8, rax
                jb      loc_1403C4DA7

loc_1403C4EC5:                          ; CODE XREF: HalInitializeBios+1EF↑j
                lea     r8, [rdx-1]
                mov     eax, edx
                add     r8, [rcx+20h]
                cmp     r8, r9
                mov     edx, edx
                cmova   r8, r9
                cmp     rax, r8
                ja      loc_1403C4DA7

loc_1403C4EE1:                          ; CODE XREF: HalInitializeBios+22D↓j
                inc     eax
                mov     [rdi+rdx*8+30h], rbp
                mov     edx, eax
                cmp     rdx, r8
                jbe     short loc_1403C4EE1
                jmp     loc_1403C4DA7
; ---------------------------------------------------------------------------

loc_1403C4EF4:                          ; CODE XREF: HalInitializeBios+4D↑j
                mov     rax, [rsi+0F0h]
                test    byte ptr [rax+0A40h], 4
                jnz     short loc_1403C4E93
                and     cs:qword_140C4BE40, 0
                lea     rax, sub_1404B6F50
                and     cs:qword_140C4BE48, 0
                mov     r9d, 20000h
                xor     r8d, r8d
                mov     cs:qword_140C005E8, rax
                xor     edx, edx
                mov     cs:byte_140C50644, 1
                call    sub_1403C4F60
                xor     edx, edx
                xor     ecx, ecx
                call    sub_140397B30
                mov     rcx, rax
                xor     edx, edx
                mov     r8d, 800h
                call    memmove
                jmp     loc_1403C4E93
HalInitializeBios endp
