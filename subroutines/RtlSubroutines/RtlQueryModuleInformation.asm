RtlQueryModuleInformation proc near     ; DATA XREF: .rdata:000000014009CAA4↑o
                                        ; .pdata:000000014010BD38↑o

var_178         = dword ptr -178h
var_168         = byte ptr -168h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408521CE SIZE 00000054 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 170h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+198h+var_38], rax
                mov     r14, r8
                mov     ebp, edx
                mov     r15, rcx
                mov     esi, 130h
                mov     r8d, esi
                lea     rcx, [rsp+198h+var_168]
                xor     edx, edx
                call    memset
                xor     edi, edi
                cmp     ebp, 110h
                jnz     loc_1408521CE
                mov     al, r14b
                and     al, 7
                neg     al
                sbb     eax, eax
                and     eax, 0C00000F1h

loc_140786F83:                          ; CODE XREF: RtlQueryModuleInformation+CB2CC↓j
                test    eax, eax
                js      loc_1407870AC

loc_140786F8B:                          ; CODE XREF: RtlQueryModuleInformation+CB2C1↓j
                lea     rbx, [rsp+198h+var_168]
                mov     r12d, 80000000h

loc_140786F96:                          ; CODE XREF: RtlQueryModuleInformation+1EB↓j
                lea     r9, [rsp+198h+var_178]
                mov     [rsp+198h+var_178], edi
                mov     r8d, esi
                mov     rdx, rbx
                mov     ecx, 0Bh
                call    ZwQuerySystemInformation
                mov     esi, eax
                lea     ecx, [rax+r12]
                test    r12d, ecx
                jz      loc_140787110

loc_140786FBE:                          ; CODE XREF: RtlQueryModuleInformation+1F5↓j
                test    r14, r14
                jz      loc_140787120
                test    eax, eax
                js      loc_1407870D9
                mov     eax, [rbx]
                mov     r8d, eax
                imul    r8d, ebp
                cmp     [r15], r8d
                jb      loc_140787146
                test    eax, eax
                jz      loc_140787093
                mov     r9d, 80h

loc_140786FEF:                          ; CODE XREF: RtlQueryModuleInformation+16D↓j
                cmp     ebp, 8
                jz      loc_14085220B
                cmp     ebp, 110h
                jnz     loc_140787089
                mov     eax, edi
                imul    rdx, rax, 110h
                imul    rcx, rax, 128h
                add     rdx, r14
                mov     rax, [rcx+rbx+18h]
                mov     [rdx], rax
                mov     eax, [rcx+rbx+20h]
                mov     [rdx+8], eax
                movzx   eax, word ptr [rcx+rbx+2Eh]
                mov     [rdx+0Ch], ax
                lea     rax, [rcx+30h]
                add     rdx, 0Eh
                mov     ecx, 2
                add     rax, rbx

loc_14078703F:                          ; CODE XREF: RtlQueryModuleInformation+167↓j
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rdx+10h], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rdx+20h], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [rdx+30h], xmm1
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [rdx+40h], xmm0
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [rdx+50h], xmm1
                movups  xmm0, xmmword ptr [rax+60h]
                movups  xmmword ptr [rdx+60h], xmm0
                add     rdx, r9
                movups  xmm1, xmmword ptr [rax+70h]
                add     rax, r9
                movups  xmmword ptr [rdx-10h], xmm1
                sub     rcx, 1
                jnz     short loc_14078703F

loc_140787089:                          ; CODE XREF: RtlQueryModuleInformation+DE↑j
                                        ; RtlQueryModuleInformation+CB2FD↓j
                inc     edi
                cmp     edi, [rbx]
                jb      loc_140786FEF

loc_140787093:                          ; CODE XREF: RtlQueryModuleInformation+C3↑j
                                        ; RtlQueryModuleInformation+221↓j ...
                mov     [r15], r8d

loc_140787096:                          ; CODE XREF: RtlQueryModuleInformation+1FB↓j
                lea     rax, [rsp+198h+var_168]
                cmp     rbx, rax
                jz      short loc_1407870AA
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1407870AA:                          ; CODE XREF: RtlQueryModuleInformation+17E↑j
                mov     eax, esi

loc_1407870AC:                          ; CODE XREF: RtlQueryModuleInformation+65↑j
                                        ; RtlQueryModuleInformation+CB2B8↓j ...
                mov     rcx, [rsp+198h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+198h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407870D9:                          ; CODE XREF: RtlQueryModuleInformation+A9↑j
                lea     rax, [rsp+198h+var_168]
                cmp     rbx, rax
                jnz     loc_1408521F1

loc_1407870E7:                          ; CODE XREF: RtlQueryModuleInformation+CB2DC↓j
                mov     edx, [rsp+198h+var_178]
                mov     ecx, 9
                mov     r8d, 546C7452h
                call    ExAllocatePoolWithQuotaTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140852201
                mov     esi, [rsp+198h+var_178]
                jmp     loc_140786F96
; ---------------------------------------------------------------------------

loc_140787110:                          ; CODE XREF: RtlQueryModuleInformation+98↑j
                cmp     eax, 0C0000004h
                jz      loc_140786FBE
                jmp     loc_140787096
; ---------------------------------------------------------------------------

loc_140787120:                          ; CODE XREF: RtlQueryModuleInformation+A1↑j
                mov     ecx, [rsp+198h+var_178]
                mov     rax, 0DD67C8A60DD67C8Bh
                add     ecx, 0FFFFFFF8h
                mov     esi, edi
                mul     rcx
                mov     r8, rdx
                shr     r8, 8
                imul    r8d, ebp
                jmp     loc_140787093
; ---------------------------------------------------------------------------

loc_140787146:                          ; CODE XREF: RtlQueryModuleInformation+BB↑j
                mov     esi, 0C0000023h
                jmp     loc_140787093
; } // starts at 140786F20
RtlQueryModuleInformation endp
