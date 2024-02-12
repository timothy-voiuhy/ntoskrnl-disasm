IoQueryInformationByName proc near      ; CODE XREF: NtQueryInformationByName+17↓p
                                        ; DATA XREF: .rdata:0000000140042D20↑o ...

var_288         = dword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = dword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_248         = dword ptr -248h
var_238         = dword ptr -238h
var_228         = dword ptr -228h
var_218         = qword ptr -218h
var_208         = dword ptr -208h
var_202         = word ptr -202h
var_1F4         = dword ptr -1F4h
var_1F0         = dword ptr -1F0h
var_1D8         = qword ptr -1D8h
var_1BF         = byte ptr -1BFh
var_1B8         = qword ptr -1B8h
var_1B0         = dword ptr -1B0h
var_1A8         = xmmword ptr -1A8h
var_198         = xmmword ptr -198h
var_188         = qword ptr -188h
var_180         = dword ptr -180h
var_17C         = dword ptr -17Ch
var_178         = byte ptr -178h
var_168         = byte ptr -168h
var_158         = byte ptr -158h
var_48          = qword ptr -48h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407EA932 SIZE 00000093 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 270h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+2A8h+var_48], rax
                mov     r13d, r9d
                mov     r14, r8
                mov     r15, rdx
                mov     [rsp+2A8h+var_260], rcx
                mov     [rsp+2A8h+var_258], rdx
                mov     rsi, [rsp+2A8h+arg_30]
                xor     edx, edx
                mov     r8d, 110h
                lea     rcx, [rsp+2A8h+var_158]
                call    memset
                xor     ebx, ebx
                mov     r12b, bl
                mov     rax, gs:188h
                test    [rsp+2A8h+arg_28], 100h
                mov     ecx, ebx
                movzx   eax, byte ptr [rax+232h]
                cmovz   ecx, eax
                mov     [rsp+2A8h+var_268], ecx
                mov     rdx, gs:188h
                mov     edi, [rsp+2A8h+arg_20]
                mov     dword ptr [rsp+2A8h+var_280], edi
                mov     [rsp+2A8h+var_288], r13d
                mov     r9, r14
                mov     r8, r15
                call    sub_140641C70
                test    eax, eax
                js      loc_1405D7848
                cmp     edi, 4Bh ; 'K'
                jz      loc_1407EA932

loc_1405D7673:                          ; CODE XREF: IoQueryInformationByName+213376↓j
                                        ; IoQueryInformationByName+213384↓j
                lea     eax, [rdi-44h]
                test    eax, 0FFFFFFFCh
                jnz     loc_1407EA9BB
                cmp     edi, 45h ; 'E'
                jz      loc_1407EA9BB
                xor     edx, edx
                mov     r8d, 0E0h
                lea     rcx, [rsp+2A8h+var_248]
                call    memset
                mov     [rsp+2A8h+var_248], 0E00008h
                mov     eax, 7
                mov     [rsp+2A8h+var_202], ax
                mov     [rsp+2A8h+var_1F0], 1
                mov     [rsp+2A8h+var_208], 204000h
                mov     [rsp+2A8h+var_1BF], 1
                mov     [rsp+2A8h+var_178], 1
                lea     rax, [rsp+2A8h+var_158]
                mov     [rsp+2A8h+var_1B8], rax
                mov     rax, [rsp+2A8h+var_260]
                mov     [rsp+2A8h+var_218], rax
                mov     [rsp+2A8h+var_1B0], 20h ; ' '
                mov     [rsp+2A8h+var_180], edi
                mov     [rsp+2A8h+var_17C], r13d
                xorps   xmm0, xmm0
                movups  [rsp+2A8h+var_1A8], xmm0
                movups  [rsp+2A8h+var_198], xmm0
                mov     edi, 28h ; '('
                mov     word ptr [rsp+2A8h+var_1A8], di
                lea     eax, [rdi-27h]
                mov     [rsp+2A8h+var_188], rax
                test    r12b, r12b
                jnz     loc_1407EA949

loc_1405D7742:                          ; CODE XREF: IoQueryInformationByName+213390↓j
                test    rsi, rsi
                jz      short loc_1405D7780
                mov     rcx, [rsi+8]
                test    rcx, rcx
                jz      short loc_1405D775D
                call    sub_1405EC8C0
                test    eax, eax
                js      loc_1405D7848

loc_1405D775D:                          ; CODE XREF: IoQueryInformationByName+18E↑j
                movsx   r8, word ptr [rsi]
                cmp     r8, rdi
                cmova   r8, rdi
                mov     rdx, rsi
                lea     rcx, [rsp+2A8h+var_1A8]
                call    memmove
                mov     rax, [rsp+2A8h+var_188]

loc_1405D7780:                          ; CODE XREF: IoQueryInformationByName+185↑j
                cmp     rax, 1
                jz      loc_1407EA955

loc_1405D778A:                          ; CODE XREF: IoQueryInformationByName+2133A2↓j
                mov     rax, 7FFFFFFEFFFFh
                cmp     r14, rax
                jbe     loc_1407EA967
                mov     [rsp+2A8h+var_1D8], r14

loc_1405D77A5:                          ; CODE XREF: IoQueryInformationByName+2133B7↓j
                mov     rax, gs:188h
                inc     qword ptr [rax+390h]
                inc     dword ptr gs:2EE4h
                lea     rax, [rsp+2A8h+var_168]
                mov     [rsp+2A8h+var_270], rax
                mov     rax, [rsp+2A8h+var_188]
                mov     [rsp+2A8h+var_278], rax
                lea     rax, [rsp+2A8h+var_248]
                mov     [rsp+2A8h+var_280], rax
                mov     [rsp+2A8h+var_288], 80h
                xor     r9d, r9d
                mov     r8b, byte ptr [rsp+2A8h+var_268]
                mov     rdx, cs:IoFileObjectType
                mov     rcx, [rsp+2A8h+var_260]
                call    ObOpenObjectByNameEx
                mov     edi, eax
                lea     rcx, [rsp+2A8h+var_248]
                call    sub_140641024
                cmp     [rsp+2A8h+var_228], 0BEAA0251h
                cmovz   edi, [rsp+2A8h+var_238]
                mov     rsi, [rsp+2A8h+var_1D8]
                cmp     r14, rsi
                jnz     loc_1407EA981

loc_1405D782F:                          ; CODE XREF: IoQueryInformationByName+2133F6↓j
                                        ; DATA XREF: .rdata:0000000140042CE8↑o
;   __try { // __except at loc_1405D7844
                mov     [r15], edi
                test    edi, edi
                cmovns  ebx, [rsp+2A8h+var_17C]
                mov     eax, ebx
                mov     [r15+8], rax
                jmp     short loc_1405D7846
;   } // starts at 1405D782F
; ---------------------------------------------------------------------------

loc_1405D7844:                          ; DATA XREF: .rdata:0000000140042CE8↑o
;   __except(1) // owned by 1405D782F
                mov     edi, eax

loc_1405D7846:                          ; CODE XREF: IoQueryInformationByName+282↑j
                mov     eax, edi

loc_1405D7848:                          ; CODE XREF: IoQueryInformationByName+A4↑j
                                        ; IoQueryInformationByName+197↑j ...
                mov     rcx, [rsp+2A8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 270h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405D75C0
IoQueryInformationByName endp
