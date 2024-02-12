RtlUpperChar    proc near               ; CODE XREF: RtlEqualString+75↑p
                                        ; RtlEqualString+7F↑p ...
                push    rbx
                sub     rsp, 20h
                mov     bl, cl
                xor     ecx, ecx
                call    sub_140630C90
                lea     eax, [rbx-61h]
                cmp     al, 19h
                jbe     short loc_14062FD0F

loc_14062FD06:                          ; CODE XREF: RtlUpperChar+22↓j
                mov     al, bl
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14062FD0F:                          ; CODE XREF: RtlUpperChar+14↑j
                xor     bl, 20h
                jmp     short loc_14062FD06
RtlUpperChar    endp

; ---------------------------------------------------------------------------
byte_14062FD14  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400FE628↑o

; =============== S U B R O U T I N E =======================================


sub_14062FD1C   proc near               ; CODE XREF: sub_1405FB660+1EF↑p
                                        ; sub_1405FC440+10C↑p ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = byte ptr  8
arg_4           = dword ptr  0Ch
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+20h], rbx
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                or      dword ptr [rax+8], 0FFFFFFFFh
                mov     r13, r9
                movzx   ebp, word ptr [rdx+2]
                xor     eax, eax
                mov     r12, [rsp+68h+arg_20]
                dec     ebp
                xor     r15d, r15d
                mov     [rsp+68h+arg_4], eax
                mov     rsi, rcx

loc_14062FD5B:                          ; CODE XREF: sub_14062FD1C+FE↓j
                mov     rax, [rsi+8]
                lea     r8, [rsp+68h+arg_0]
                mov     ebx, ebp
                mov     rcx, rsi
                sub     ebx, r15d
                shr     ebx, 1
                add     ebx, r15d
                mov     edi, [rdx+rbx*4+4]
                mov     edx, edi
                call    sub_1404079D0
                mov     r14, rax
                test    rax, rax
                jz      loc_14062FF6F
                movzx   r9d, word ptr [rax+2]
                mov     r8, r13
                mov     rdx, [rsp+68h+arg_10]
                dec     r9d
                mov     [rsp+68h+var_40], r12
                mov     rcx, rsi
                mov     [rsp+68h+var_48], rax
                call    sub_140630400
                cmp     eax, 2
                jz      loc_14062FF6F
                test    eax, eax
                jz      loc_14062FEB9
                jns     loc_14062FEEE
                mov     rdx, [rsp+68h+arg_10]
                xor     r9d, r9d
                mov     [rsp+68h+var_40], r12
                mov     r8, r13
                mov     rcx, rsi
                mov     [rsp+68h+var_48], r14
                call    sub_140630400
                cmp     eax, 2
                jz      loc_14062FF6F
                test    eax, eax
                jns     loc_14062FEB9
                mov     ebp, ebx

loc_14062FDF7:                          ; CODE XREF: sub_14062FD1C+1D5↓j
                mov     r8, [rsi+10h]
                lea     rdx, [rsp+68h+arg_0]
                mov     eax, ebp
                mov     rcx, rsi
                sub     eax, r15d
                cmp     eax, 1
                mov     rax, r8
                jbe     short loc_14062FE1F
                call    sub_1404079D0
                mov     rdx, [rsp+68h+arg_8]
                jmp     loc_14062FD5B
; ---------------------------------------------------------------------------

loc_14062FE1F:                          ; CODE XREF: sub_14062FD1C+F2↑j
                call    sub_1404079D0
                mov     rcx, [rsp+68h+arg_8]
                lea     r8, [rsp+68h+arg_0]
                mov     eax, r15d
                mov     edi, [rcx+rax*4+4]
                mov     edx, edi
                mov     rax, [rsi+8]
                mov     rcx, rsi
                call    sub_1404079D0
                mov     r14, rax
                test    rax, rax
                jz      loc_14062FF6F
                movzx   r9d, word ptr [rax+2]
                mov     r8, r13
                mov     rbx, [rsp+68h+arg_10]
                dec     r9d
                mov     rdx, rbx
                mov     [rsp+68h+var_40], r12
                mov     rcx, rsi
                mov     [rsp+68h+var_48], rax
                call    sub_140630400
                cmp     eax, 2
                jz      loc_14062FF6F
                test    eax, eax
                jz      loc_14062FF67
                mov     rcx, rsi
                jns     short loc_14062FEF6
                mov     [rsp+68h+var_40], r12
                xor     r9d, r9d
                mov     r8, r13
                mov     [rsp+68h+var_48], r14
                mov     rdx, rbx
                call    sub_140630400
                cmp     eax, 2
                jz      loc_14062FF6F
                mov     ebx, r15d
                test    eax, eax
                js      loc_14062FF5F

loc_14062FEB9:                          ; CODE XREF: sub_14062FD1C+9C↑j
                                        ; sub_14062FD1C+D3↑j ...
                mov     [r12], edi
                test    r14, r14
                jz      short loc_14062FED3
                mov     rax, [rsi+10h]
                lea     rdx, [rsp+68h+arg_0]
                mov     rcx, rsi
                call    sub_1404079D0

loc_14062FED3:                          ; CODE XREF: sub_14062FD1C+1A4↑j
                mov     eax, ebx
                mov     rbx, [rsp+68h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14062FEEE:                          ; CODE XREF: sub_14062FD1C+A2↑j
                mov     r15d, ebx
                jmp     loc_14062FDF7
; ---------------------------------------------------------------------------

loc_14062FEF6:                          ; CODE XREF: sub_14062FD1C+16F↑j
                mov     rax, [rsi+10h]
                lea     rdx, [rsp+68h+arg_0]
                call    sub_1404079D0
                mov     rcx, [rsp+68h+arg_8]
                lea     r8, [rsp+68h+arg_0]
                mov     eax, ebp
                mov     edi, [rcx+rax*4+4]
                mov     edx, edi
                mov     rax, [rsi+8]
                mov     rcx, rsi
                call    sub_1404079D0
                mov     r14, rax
                test    rax, rax
                jz      short loc_14062FF6F
                movzx   r9d, word ptr [rax+2]
                mov     r8, r13
                dec     r9d
                mov     [rsp+68h+var_40], r12
                mov     rdx, rbx
                mov     [rsp+68h+var_48], rax
                mov     rcx, rsi
                call    sub_140630400
                cmp     eax, 2
                jz      short loc_14062FF6F
                mov     ebx, ebp
                test    eax, eax
                jz      loc_14062FEB9
                js      loc_14062FEB9

loc_14062FF5F:                          ; CODE XREF: sub_14062FD1C+197↑j
                                        ; sub_14062FD1C+258↓j
                or      edi, 0FFFFFFFFh
                jmp     loc_14062FEB9
; ---------------------------------------------------------------------------

loc_14062FF67:                          ; CODE XREF: sub_14062FD1C+166↑j
                mov     ebx, r15d
                jmp     loc_14062FEB9
; ---------------------------------------------------------------------------

loc_14062FF6F:                          ; CODE XREF: sub_14062FD1C+66↑j
                                        ; sub_14062FD1C+94↑j ...
                mov     ebx, 80000000h
                jmp     short loc_14062FF5F
sub_14062FD1C   endp

; ---------------------------------------------------------------------------
algn_14062FF76:                         ; DATA XREF: .pdata:00000001400FE634↑o
                align 20h
; Exported entry 2136. RtlFindUnicodeSubstring

; =============== S U B R O U T I N E =======================================


