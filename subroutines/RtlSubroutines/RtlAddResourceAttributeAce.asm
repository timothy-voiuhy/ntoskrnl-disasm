RtlAddResourceAttributeAce proc near    ; DATA XREF: .pdata:0000000140121F44↑o

var_150         = dword ptr -150h
var_14C         = dword ptr -14Ch
var_148         = qword ptr -148h
var_140         = dword ptr -140h
var_138         = byte ptr -138h
var_134         = word ptr -134h
var_130         = byte ptr -130h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-78h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+70h+var_30], rax
                mov     r14, [rbp+70h+arg_20]
                xor     eax, eax
                mov     r15, [rbp+70h+arg_28]
                mov     ebx, edx
                mov     r12, [rbp+70h+arg_30]
                mov     rsi, rcx
                mov     dword ptr [rsp+170h+var_148], r8d
                lea     rcx, [rsp+170h+var_130]
                xor     edx, edx
                mov     qword ptr [rsp+170h+var_140], rax
                mov     r8d, 100h
                mov     dword ptr [rsp+170h+var_138], eax
                mov     edi, eax
                mov     [rsp+170h+var_134], 100h
                mov     r13d, r9d
                call    memset
                mov     [rsp+170h+var_14C], 100h
                test    r12, r12
                jnz     short loc_140913DE0

loc_140913DD6:                          ; CODE XREF: RtlAddResourceAttributeAce+D4↓j
                                        ; RtlAddResourceAttributeAce+119↓j ...
                mov     ebx, 0C000000Dh
                jmp     loc_140914049
; ---------------------------------------------------------------------------

loc_140913DE0:                          ; CODE XREF: RtlAddResourceAttributeAce+84↑j
                and     [r12], edi
                test    rsi, rsi
                jnz     short loc_140913DF3
                mov     ebx, 0C0000077h
                jmp     loc_140914049
; ---------------------------------------------------------------------------

loc_140913DF3:                          ; CODE XREF: RtlAddResourceAttributeAce+97↑j
                mov     rcx, r14
                call    RtlValidSid
                xor     r9d, r9d
                test    al, al
                jnz     short loc_140913E0C
                mov     ebx, 0C0000078h
                jmp     loc_140914049
; ---------------------------------------------------------------------------

loc_140913E0C:                          ; CODE XREF: RtlAddResourceAttributeAce+B0↑j
                mov     ecx, [r14+2]
                sub     ecx, dword ptr [rsp+170h+var_138]
                jnz     short loc_140913E22
                movzx   ecx, word ptr [r14+6]
                movzx   eax, [rsp+170h+var_134]
                sub     ecx, eax

loc_140913E22:                          ; CODE XREF: RtlAddResourceAttributeAce+C4↑j
                test    ecx, ecx
                jnz     short loc_140913DD6
                cmp     byte ptr [r14+1], 1
                jnz     loc_14091402B
                cmp     [r14+8], r9d
                jnz     loc_14091402B
                movzx   ecx, byte ptr [rsi]
                mov     eax, 4
                cmp     cl, al
                ja      loc_140914024
                cmp     ebx, eax
                ja      loc_140914024
                movzx   eax, bl
                mov     edx, ecx
                cmp     cl, al
                cmovbe  edx, eax
                test    dword ptr [rsp+170h+var_148], 0FFFFFFE0h
                mov     dword ptr [rsp+170h+var_138], edx
                jnz     loc_140913DD6
                test    r13d, r13d
                jnz     loc_140913DD6
                mov     rcx, r15
                call    sub_1409146F8
                test    al, al
                jz      loc_140913DD6
                cmp     dword ptr [r15+4], 1
                jnz     loc_140913DD6
                mov     rcx, [r15+8]
                lea     r8, [rsp+170h+var_14C]
                lea     rdx, [rsp+170h+var_130]
                lea     rdi, [rsp+170h+var_130]
                call    sub_140914210
                mov     ebx, eax
                cmp     eax, 0C0000023h
                jnz     short loc_140913EED
                mov     edx, [rsp+170h+var_14C]
                mov     ecx, 208h
                mov     r8d, 62507452h
                call    ExAllocatePoolWithQuotaTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140913EDA
                mov     ebx, 0C0000017h
                jmp     loc_140914049
; ---------------------------------------------------------------------------

loc_140913EDA:                          ; CODE XREF: RtlAddResourceAttributeAce+17E↑j
                mov     rcx, [r15+8]
                lea     r8, [rsp+170h+var_14C]
                mov     rdx, rax
                call    sub_140914210
                mov     ebx, eax

loc_140913EED:                          ; CODE XREF: RtlAddResourceAttributeAce+162↑j
                test    ebx, ebx
                js      loc_140914030
                mov     rcx, rsi
                call    RtlValidAcl
                test    al, al
                jnz     short loc_140913F0B

loc_140913F01:                          ; CODE XREF: RtlAddResourceAttributeAce+1CD↓j
                mov     ebx, 0C0000077h
                jmp     loc_140914030
; ---------------------------------------------------------------------------

loc_140913F0B:                          ; CODE XREF: RtlAddResourceAttributeAce+1AF↑j
                lea     rdx, [rsp+170h+var_140]
                mov     rcx, rsi
                call    RtlFirstFreeAce
                xor     r9d, r9d
                test    al, al
                jz      short loc_140913F01
                movzx   ecx, byte ptr [r14+1]
                mov     r13d, [rsp+170h+var_14C]
                add     cx, 4
                shl     cx, 2
                mov     word ptr [rsp+170h+var_150], cx
                cmp     r13d, 0FFFFh
                ja      loc_14091401D
                lea     r8, [rsp+170h+var_150]
                movzx   edx, r13w
                call    sub_140345604
                test    eax, eax
                js      loc_14091401D
                lea     ecx, [r9+8]
                mov     r8d, r9d
                mov     [r12], ecx
                lea     rdx, [rsi+8]
                cmp     r9w, [rsi+4]
                jnb     short loc_140913F8E

loc_140913F6F:                          ; CODE XREF: RtlAddResourceAttributeAce+23C↓j
                movzx   ecx, word ptr [rdx+2]
                inc     r8d
                add     ecx, [r12]
                mov     [r12], ecx
                movzx   eax, word ptr [rdx+2]
                add     rdx, rax
                movzx   eax, word ptr [rsi+4]
                cmp     r8d, eax
                jb      short loc_140913F6F

loc_140913F8E:                          ; CODE XREF: RtlAddResourceAttributeAce+21D↑j
                movzx   r8d, word ptr [rsp+170h+var_150]
                mov     r15, qword ptr [rsp+170h+var_140]
                lea     edx, [rcx+r8]
                mov     [r12], edx
                test    r15, r15
                jz      short loc_14091400C
                movzx   ecx, word ptr [rsi+2]
                lea     rax, [r15+r8]
                add     rcx, rsi
                cmp     rax, rcx
                ja      short loc_14091400C
                mov     eax, dword ptr [rsp+170h+var_148]
                lea     rdx, [r15+8]
                mov     [r15+2], r8w
                mov     r8, r14
                mov     [r15+1], al
                mov     byte ptr [r15], 12h
                mov     [r15+4], r9d
                movzx   ecx, byte ptr [r14+1]
                lea     ecx, ds:8[rcx*4]
                call    RtlCopySid
                movzx   eax, byte ptr [r14+1]
                mov     r8, r13
                add     rax, 4
                mov     rdx, rdi
                lea     rcx, [r15+rax*4]
                call    memmove
                mov     eax, 1
                add     [rsi+4], ax
                mov     eax, dword ptr [rsp+170h+var_138]
                mov     [rsi], al
                jmp     short loc_140914030
; ---------------------------------------------------------------------------

loc_14091400C:                          ; CODE XREF: RtlAddResourceAttributeAce+254↑j
                                        ; RtlAddResourceAttributeAce+264↑j
                lea     eax, [rdx+3]
                mov     ebx, 0C0000099h
                and     eax, 0FFFFFFFCh
                mov     [r12], eax
                jmp     short loc_140914030
; ---------------------------------------------------------------------------

loc_14091401D:                          ; CODE XREF: RtlAddResourceAttributeAce+1ED↑j
                                        ; RtlAddResourceAttributeAce+203↑j
                mov     ebx, 0C0000095h
                jmp     short loc_140914030
; ---------------------------------------------------------------------------

loc_140914024:                          ; CODE XREF: RtlAddResourceAttributeAce+F5↑j
                                        ; RtlAddResourceAttributeAce+FD↑j
                mov     ebx, 0C0000059h
                jmp     short loc_140914049
; ---------------------------------------------------------------------------

loc_14091402B:                          ; CODE XREF: RtlAddResourceAttributeAce+DB↑j
                                        ; RtlAddResourceAttributeAce+E5↑j
                mov     ebx, 0C000000Dh

loc_140914030:                          ; CODE XREF: RtlAddResourceAttributeAce+19F↑j
                                        ; RtlAddResourceAttributeAce+1B6↑j ...
                test    rdi, rdi
                jz      short loc_140914049
                lea     rax, [rsp+170h+var_130]
                cmp     rdi, rax
                jz      short loc_140914049
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_140914049:                          ; CODE XREF: RtlAddResourceAttributeAce+8B↑j
                                        ; RtlAddResourceAttributeAce+9E↑j ...
                mov     eax, ebx
                mov     rcx, [rbp+70h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+170h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140913D50
RtlAddResourceAttributeAce endp
