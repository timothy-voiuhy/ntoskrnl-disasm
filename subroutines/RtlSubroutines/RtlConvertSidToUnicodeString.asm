RtlConvertSidToUnicodeString proc near  ; CODE XREF: sub_1405BAB8C+DF↑p
                                        ; sub_1406D3894+11A↑p ...

var_260         = dword ptr -260h
var_25C         = dword ptr -25Ch
var_258         = xmmword ptr -258h
var_240         = byte ptr -240h
var_238         = byte ptr -238h
var_234         = byte ptr -234h
var_44          = byte ptr -44h
var_42          = byte ptr -42h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820248 SIZE 0000007C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-150h]
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+180h+var_40], rax
                mov     r15, rcx
                xorps   xmm0, xmm0
                mov     rcx, rdx
                mov     r12b, r8b
                movups  [rsp+280h+var_258], xmm0
                mov     rsi, rdx
                call    RtlValidSid
                cmp     al, 1
                jnz     loc_1408202BA
                cmp     [rsi], al
                jnz     loc_1408202BA
                mov     r14d, 100h
                lea     r8, aS1         ; "S-1-"
                mov     edx, r14d
                lea     rcx, [rsp+280h+var_240]
                call    wcscpy_s
                xor     edi, edi
                lea     rbx, [rsp+280h+var_238]
                cmp     [rsi+2], dil
                jnz     loc_140820248
                cmp     [rsi+3], dil
                jnz     loc_140820248
                movzx   ecx, byte ptr [rsi+4]
                lea     r9, [rsp+280h+var_238]
                movzx   eax, byte ptr [rsi+5]
                lea     edx, [rdi+0Ah]
                shl     eax, 10h
                lea     r8d, [r14-4]
                shl     ecx, 18h
                add     ecx, eax
                movzx   eax, byte ptr [rsi+6]
                shl     eax, 8
                add     ecx, eax
                movzx   eax, byte ptr [rsi+7]
                add     ecx, eax
                call    RtlIntegerToUnicode

loc_1406D657E:                          ; CODE XREF: RtlConvertSidToUnicodeString+149DEB↓j
                test    eax, eax
                js      loc_1406D660F
                mov     r14b, dil
                mov     r13d, 2
                cmp     [rsi+1], dil
                jbe     short loc_1406D65EF
                jmp     short loc_1406D659F
; ---------------------------------------------------------------------------

loc_1406D6597:                          ; CODE XREF: RtlConvertSidToUnicodeString+E9↓j
                cmp     [rbx], di
                jz      short loc_1406D65AB
                add     rbx, r13

loc_1406D659F:                          ; CODE XREF: RtlConvertSidToUnicodeString+D5↑j
                                        ; RtlConvertSidToUnicodeString+12D↓j
                lea     rax, [rbp+180h+var_44]
                cmp     rbx, rax
                jb      short loc_1406D6597

loc_1406D65AB:                          ; CODE XREF: RtlConvertSidToUnicodeString+DA↑j
                lea     rcx, [rsp+280h+var_240]
                mov     eax, 2Dh ; '-'
                mov     [rbx], ax
                mov     r8d, 100h
                add     rbx, r13
                mov     edx, 0Ah
                mov     rax, rbx
                mov     r9, rbx
                sub     rax, rcx
                sar     rax, 1
                sub     r8d, eax
                movzx   eax, r14b
                mov     ecx, [rsi+rax*4+8]
                call    RtlIntegerToUnicode
                test    eax, eax
                js      short loc_1406D660F
                inc     r14b
                cmp     r14b, [rsi+1]
                jb      short loc_1406D659F

loc_1406D65EF:                          ; CODE XREF: RtlConvertSidToUnicodeString+D3↑j
                test    r12b, r12b
                jz      short loc_1406D6642
                lea     rdx, [rsp+280h+var_240]
                mov     rcx, r15
                call    RtlCreateUnicodeString
                neg     al
                sbb     edi, edi
                not     edi
                and     edi, 0C0000017h

loc_1406D660D:                          ; CODE XREF: RtlConvertSidToUnicodeString+1CD↓j
                                        ; RtlConvertSidToUnicodeString+149DF5↓j
                mov     eax, edi

loc_1406D660F:                          ; CODE XREF: RtlConvertSidToUnicodeString+C0↑j
                                        ; RtlConvertSidToUnicodeString+124↑j ...
                mov     rcx, [rbp+180h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+280h+arg_10]
                add     rsp, 250h
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

loc_1406D663A:                          ; CODE XREF: RtlConvertSidToUnicodeString+18C↓j
                cmp     [rbx], di
                jz      short loc_1406D664E
                add     rbx, r13

loc_1406D6642:                          ; CODE XREF: RtlConvertSidToUnicodeString+132↑j
                lea     rax, [rbp+180h+var_42]
                cmp     rbx, rax
                jb      short loc_1406D663A

loc_1406D664E:                          ; CODE XREF: RtlConvertSidToUnicodeString+17D↑j
                lea     rax, [rsp+280h+var_240]
                sub     rbx, rax
                movzx   eax, word ptr [r15+2]
                sar     rbx, 1
                add     ebx, ebx
                cmp     ebx, eax
                jnb     loc_1408202B0
                mov     word ptr [rsp+280h+var_258], bx
                lea     rax, [rsp+280h+var_240]
                add     bx, r13w
                mov     qword ptr [rsp+280h+var_258+8], rax
                lea     rdx, [rsp+280h+var_258]
                mov     word ptr [rsp+280h+var_258+2], bx
                mov     rcx, r15
                call    RtlCopyUnicodeString
                jmp     loc_1406D660D
; } // starts at 1406D64C0
RtlConvertSidToUnicodeString endp
