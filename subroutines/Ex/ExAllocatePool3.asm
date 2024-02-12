ExAllocatePool3 proc near               ; CODE XREF: sub_1409D6B20+54↓p
                                        ; DATA XREF: .pdata:0000000140127D58↑o

var_38          = qword ptr -38h
var_28          = byte ptr -28h
var_24          = dword ptr -24h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                and     dword ptr [rax-24h], 0
                xor     bpl, bpl
                mov     byte ptr [rax+18h], 0
                mov     r14, r9
                mov     [rax-28h], bpl
                mov     ebx, r8d
                mov     rsi, rdx
                mov     r15, rcx
                mov     edi, 10h
                test    r8d, r8d
                jnz     short loc_1409B6391

loc_1409B637D:                          ; CODE XREF: ExAllocatePool3+9E↓j
                                        ; ExAllocatePool3+AC↓j ...
                mov     eax, 0C000000Dh

loc_1409B6382:                          ; CODE XREF: ExAllocatePool3+6E↓j
                test    r15b, 20h
                jnz     loc_1409B6483
                jmp     loc_1409B6467
; ---------------------------------------------------------------------------

loc_1409B6391:                          ; CODE XREF: ExAllocatePool3+3B↑j
                lea     rax, [rsp+58h+var_28]
                xor     edx, edx
                lea     r9, [rsp+58h+arg_10]
                mov     [rsp+58h+var_38], rax
                lea     r8, [rsp+58h+var_24]
                call    sub_1409B60D0
                test    eax, eax
                js      short loc_1409B6382
                mov     r9d, [rsp+58h+arg_20]
                xor     edx, edx
                mov     r8b, [rsp+58h+arg_10]
                lea     r10d, [rdx+1]
                test    r9d, r9d
                jz      short loc_1409B6402
                mov     r11d, 100h

loc_1409B63CE:                          ; CODE XREF: ExAllocatePool3+C0↓j
                mov     rcx, [r14]
                cmp     cl, r10b
                jnz     short loc_1409B63DB
                test    r8b, r8b
                jz      short loc_1409B63E2

loc_1409B63DB:                          ; CODE XREF: ExAllocatePool3+94↑j
                test    r11, rcx
                jz      short loc_1409B637D
                jmp     short loc_1409B63F6
; ---------------------------------------------------------------------------

loc_1409B63E2:                          ; CODE XREF: ExAllocatePool3+99↑j
                mov     edi, [r14+8]
                test    edi, 0FFFFFFCFh
                jnz     short loc_1409B637D
                cmp     edi, 30h ; '0'
                jz      short loc_1409B637D
                mov     bpl, r10b

loc_1409B63F6:                          ; CODE XREF: ExAllocatePool3+A0↑j
                add     edx, r10d
                add     r14, 10h
                cmp     edx, r9d
                jb      short loc_1409B63CE

loc_1409B6402:                          ; CODE XREF: ExAllocatePool3+86↑j
                xor     edx, edx
                cmp     [rsp+58h+var_28], dl
                cmovnz  edx, r10d
                test    r8b, r8b
                mov     r8d, ebx
                jz      short loc_1409B6422
                mov     ecx, [rsp+58h+var_24]
                mov     rdx, rsi
                call    ExAllocatePoolWithQuotaTag
                jmp     short loc_1409B6469
; ---------------------------------------------------------------------------

loc_1409B6422:                          ; CODE XREF: ExAllocatePool3+D2↑j
                test    bpl, bpl
                jz      short loc_1409B6438
                mov     ecx, [rsp+58h+var_24]
                mov     r9d, edi
                mov     rdx, rsi
                call    ExAllocatePoolWithTagPriority
                jmp     short loc_1409B6469
; ---------------------------------------------------------------------------

loc_1409B6438:                          ; CODE XREF: ExAllocatePool3+E5↑j
                mov     rax, gs:20h
                mov     dword ptr [rsp+58h+var_38], edx
                mov     rdx, rsi
                mov     rcx, [rax+0C0h]
                movzx   r9d, word ptr [rcx+92h]
                mov     ecx, [rsp+58h+var_24]
                bts     r9d, 1Fh
                call    sub_140236960
                jmp     short loc_1409B6469
; ---------------------------------------------------------------------------

loc_1409B6467:                          ; CODE XREF: ExAllocatePool3+4C↑j
                xor     eax, eax

loc_1409B6469:                          ; CODE XREF: ExAllocatePool3+E0↑j
                                        ; ExAllocatePool3+F6↑j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409B6483:                          ; CODE XREF: ExAllocatePool3+46↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
ExAllocatePool3 endp
