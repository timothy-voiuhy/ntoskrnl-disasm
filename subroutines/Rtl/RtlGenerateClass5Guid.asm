RtlGenerateClass5Guid proc near         ; CODE XREF: sub_140A5E884+10E↓p
                                        ; DATA XREF: .rdata:00000001400A3DFC↑o ...

var_A0          = qword ptr -0A0h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_38          = qword ptr -38h

; FUNCTION CHUNK AT 000000014085807C SIZE 00000027 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                and     [rbp+57h+var_68], 0
                xor     edi, edi
                and     [rbp+57h+var_80], 0
                xorps   xmm0, xmm0
                and     [rbp+57h+var_70], 0
                mov     rsi, r9
                and     [rbp+57h+var_78], 0
                mov     r12d, r8d
                mov     r15, rdx
                mov     r14, rcx
                movups  [rbp+57h+var_60], xmm0
                test    rcx, rcx
                jz      loc_14085807C
                test    r9, r9
                jz      loc_140858086
                test    rdx, rdx
                jz      loc_140858090

loc_1407AB9D7:                          ; CODE XREF: RtlGenerateClass5Guid+AC723↓j
                xor     r9d, r9d
                lea     r8, aMicrosoftPrimi_0 ; "Microsoft Primitive Provider"
                lea     rdx, aSha1      ; "SHA1"
                lea     rcx, [rbp+57h+var_70]
                call    sub_1407ABB70
                mov     ebx, eax
                test    eax, eax
                js      loc_1407ABB1B
                mov     rcx, [rbp+57h+var_70]
                lea     rax, [rbp+57h+var_68]
                lea     r8, [rbp+57h+var_80]
                mov     [rsp+0C0h+var_A0], rax
                lea     rdx, aObjectlength ; "ObjectLength"
                call    sub_1406ACD34
                mov     ebx, eax
                test    eax, eax
                js      loc_1407ABB1B
                mov     edx, [rbp+57h+var_80]
                mov     ecx, 1
                mov     r8d, 64697547h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                mov     eax, 0C000009Ah
                test    rdi, rdi
                cmovz   ebx, eax
                test    ebx, ebx
                js      loc_1407ABB1B
                mov     r9d, [rbp+57h+var_80]
                lea     rdx, [rbp+57h+var_78]
                mov     rcx, [rbp+57h+var_70]
                mov     r8, rdi
                call    sub_1406ACE88
                mov     ebx, eax
                test    eax, eax
                js      loc_1407ABB1B
                movups  xmm0, xmmword ptr [r14]
                mov     eax, [r14]
                lea     rdx, [rbp+57h+var_60]
                mov     rcx, [rbp+57h+var_78]
                mov     r8d, 10h
                bswap   eax
                movdqu  [rbp+57h+var_60], xmm0
                mov     dword ptr [rbp+57h+var_60], eax
                movzx   eax, word ptr [r14+4]
                ror     ax, 8
                mov     word ptr [rbp+57h+var_60+4], ax
                movzx   eax, word ptr [r14+6]
                ror     ax, 8
                mov     word ptr [rbp+57h+var_60+6], ax
                call    sub_1406ACF1C
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407ABB1B
                mov     rcx, [rbp+57h+var_78]
                mov     r8d, r12d
                mov     rdx, r15
                call    sub_1406ACF1C
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407ABB1B
                mov     rcx, [rbp+57h+var_78]
                lea     rdx, [rbp+57h+var_50]
                mov     r8d, 14h
                call    sub_1406ACE14
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407ABB1B
                movups  xmm0, [rbp+57h+var_50]
                mov     ecx, 0FFFh
                movdqu  xmmword ptr [rsi], xmm0
                mov     eax, [rsi]
                bswap   eax
                mov     [rsi], eax
                movzx   eax, word ptr [rsi+4]
                ror     ax, 8
                mov     [rsi+4], ax
                movzx   eax, word ptr [rsi+6]
                ror     ax, 8
                and     ax, cx
                mov     ecx, 5000h
                or      ax, cx
                mov     [rsi+6], ax
                mov     al, [rsi+8]
                and     al, 3Fh
                or      al, 80h
                mov     [rsi+8], al

loc_1407ABB1B:                          ; CODE XREF: RtlGenerateClass5Guid+85↑j
                                        ; RtlGenerateClass5Guid+AC↑j ...
                mov     rcx, [rbp+57h+var_78]
                test    rcx, rcx
                jz      short loc_1407ABB29
                call    sub_1406ACDC0

loc_1407ABB29:                          ; CODE XREF: RtlGenerateClass5Guid+1B2↑j
                mov     rcx, [rbp+57h+var_70]
                test    rcx, rcx
                jz      short loc_1407ABB37
                call    sub_1403B8164

loc_1407ABB37:                          ; CODE XREF: RtlGenerateClass5Guid+1C0↑j
                test    rdi, rdi
                jz      short loc_1407ABB46
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_1407ABB46:                          ; CODE XREF: RtlGenerateClass5Guid+1CA↑j
                mov     eax, ebx

loc_1407ABB48:                          ; CODE XREF: RtlGenerateClass5Guid+AC711↓j
                                        ; RtlGenerateClass5Guid+AC71B↓j ...
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407AB970
RtlGenerateClass5Guid endp
