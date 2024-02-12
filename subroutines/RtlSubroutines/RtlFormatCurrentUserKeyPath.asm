RtlFormatCurrentUserKeyPath proc near   ; CODE XREF: sub_14062CC80+21A↑p
                                        ; RtlOpenCurrentUser+36↓p ...

var_A0          = qword ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = word ptr -88h
var_86          = word ptr -86h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_70          = qword ptr -70h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 000000014081F3BC SIZE 0000000E BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                lea     rbp, [rax-5Fh]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     esi, esi
                lea     rax, [rbp+57h+var_8C]
                mov     rbx, rcx
                mov     [rbp+57h+var_8C], esi
                lea     r8, [rbp+57h+var_70]
                mov     [rbp+57h+var_90], esi
                mov     [rbp+57h+var_84], esi
                lea     r9d, [rsi+58h]
                mov     [rsp+0C0h+var_A0], rax
                lea     edx, [rsi+1]
                lea     rcx, [rsi-6]
                call    ZwQueryInformationToken
                test    eax, eax
                js      short loc_1406D4D03
                mov     rcx, [rbp+57h+var_70]
                lea     rdx, [rbp+57h+var_90]
                call    sub_1406D68BC
                test    eax, eax
                js      short loc_1406D4D03
                mov     edi, [rbp+57h+var_90]
                mov     [rbx], si
                lea     eax, [rdi+22h]
                movzx   ecx, ax
                mov     [rbx+2], cx
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jz      short loc_1406D4D29
                lea     rdx, aRegistryUser ; "\\REGISTRY\\USER\\"
                mov     rcx, rbx
                call    RtlAppendUnicodeToString
                movzx   edx, word ptr [rbx]
                lea     rcx, [rbp+57h+var_88]
                mov     rax, [rbx+8]
                xor     r8d, r8d
                shr     rdx, 1
                mov     [rbp+57h+var_86], di
                mov     [rbp+57h+var_88], si
                lea     rdx, [rax+rdx*2]
                mov     [rbp+57h+var_80], rdx
                mov     rdx, [rbp+57h+var_70]
                call    RtlConvertSidToUnicodeString
                mov     edi, eax
                test    eax, eax
                js      loc_14081F3BC
                movzx   eax, [rbp+57h+var_88]
                add     [rbx], ax

loc_1406D4D01:                          ; CODE XREF: RtlFormatCurrentUserKeyPath+14A795↓j
                mov     eax, edi

loc_1406D4D03:                          ; CODE XREF: RtlFormatCurrentUserKeyPath+56↑j
                                        ; RtlFormatCurrentUserKeyPath+67↑j ...
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_s0]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rdi, [r11+28h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D4D29:                          ; CODE XREF: RtlFormatCurrentUserKeyPath+85↑j
                mov     eax, 0C0000017h
                jmp     short loc_1406D4D03
; } // starts at 1406D4C30
RtlFormatCurrentUserKeyPath endp
