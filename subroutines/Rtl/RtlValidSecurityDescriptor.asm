RtlValidSecurityDescriptor proc near    ; CODE XREF: sub_1403F928C:loc_1403F92AE↑p
                                        ; sub_14061EFE0+245↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                cmp     byte ptr [rcx], 1
                mov     rbx, rcx
                jnz     short loc_140624435
                movzx   edi, word ptr [rcx+2]
                test    di, di
                jns     loc_14062446D
                mov     eax, [rcx+4]
                test    eax, eax
                jnz     short loc_140624424

loc_1406243D6:                          ; CODE XREF: RtlValidSecurityDescriptor+7A↓j
                                        ; RtlValidSecurityDescriptor+83↓j
                test    di, di
                jns     loc_140624473
                mov     eax, [rbx+8]
                test    eax, eax
                jnz     short loc_140624439

loc_1406243E6:                          ; CODE XREF: RtlValidSecurityDescriptor+90↓j
                                        ; RtlValidSecurityDescriptor+99↓j
                test    dil, 4
                jz      short loc_14062440E
                test    di, di
                jns     loc_140624479
                mov     eax, [rbx+10h]
                test    eax, eax
                jz      short loc_14062440E
                lea     rcx, [rbx+rax]

loc_140624400:                          ; CODE XREF: RtlValidSecurityDescriptor+CD↓j
                test    rcx, rcx
                jz      short loc_14062440E
                call    RtlValidAcl
                test    al, al
                jz      short loc_140624435

loc_14062440E:                          ; CODE XREF: RtlValidSecurityDescriptor+3A↑j
                                        ; RtlValidSecurityDescriptor+4A↑j ...
                movzx   eax, word ptr [rbx+2]
                test    al, 10h
                jnz     short loc_14062444D

loc_140624416:                          ; CODE XREF: RtlValidSecurityDescriptor+A7↓j
                                        ; RtlValidSecurityDescriptor+B0↓j ...
                mov     al, 1

loc_140624418:                          ; CODE XREF: RtlValidSecurityDescriptor+87↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140624424:                          ; CODE XREF: RtlValidSecurityDescriptor+24↑j
                add     rcx, rax

loc_140624427:                          ; CODE XREF: RtlValidSecurityDescriptor+C1↓j
                test    rcx, rcx
                jz      short loc_1406243D6
                call    RtlValidSid
                test    al, al
                jnz     short loc_1406243D6

loc_140624435:                          ; CODE XREF: RtlValidSecurityDescriptor+10↑j
                                        ; RtlValidSecurityDescriptor+5C↑j ...
                xor     al, al
                jmp     short loc_140624418
; ---------------------------------------------------------------------------

loc_140624439:                          ; CODE XREF: RtlValidSecurityDescriptor+34↑j
                lea     rcx, [rbx+rax]

loc_14062443D:                          ; CODE XREF: RtlValidSecurityDescriptor+C7↓j
                test    rcx, rcx
                jz      short loc_1406243E6
                call    RtlValidSid
                test    al, al
                jnz     short loc_1406243E6
                jmp     short loc_140624435
; ---------------------------------------------------------------------------

loc_14062444D:                          ; CODE XREF: RtlValidSecurityDescriptor+64↑j
                test    ax, ax
                jns     short loc_14062447F
                mov     eax, [rbx+0Ch]
                test    eax, eax
                jz      short loc_140624416
                lea     rcx, [rbx+rax]

loc_14062445D:                          ; CODE XREF: RtlValidSecurityDescriptor+D3↓j
                test    rcx, rcx
                jz      short loc_140624416
                call    RtlValidAcl
                test    al, al
                jnz     short loc_140624416
                jmp     short loc_140624435
; ---------------------------------------------------------------------------

loc_14062446D:                          ; CODE XREF: RtlValidSecurityDescriptor+19↑j
                mov     rcx, [rcx+8]
                jmp     short loc_140624427
; ---------------------------------------------------------------------------

loc_140624473:                          ; CODE XREF: RtlValidSecurityDescriptor+29↑j
                mov     rcx, [rbx+10h]
                jmp     short loc_14062443D
; ---------------------------------------------------------------------------

loc_140624479:                          ; CODE XREF: RtlValidSecurityDescriptor+3F↑j
                mov     rcx, [rbx+20h]
                jmp     short loc_140624400
; ---------------------------------------------------------------------------

loc_14062447F:                          ; CODE XREF: RtlValidSecurityDescriptor+A0↑j
                mov     rcx, [rbx+18h]
                jmp     short loc_14062445D
RtlValidSecurityDescriptor endp
