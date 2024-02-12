FsRtlCreateSectionForDataScan proc near ; DATA XREF: .rdata:0000000140065F5C↑o
                                        ; .pdata:00000001400D0B84↑o

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_20          = dword ptr  50h
arg_28          = qword ptr  58h
arg_38          = dword ptr  68h
arg_40          = dword ptr  70h

; FUNCTION CHUNK AT 0000000140450A3C SIZE 00000077 BYTES

                mov     r11, rsp
                mov     [r11+18h], rbx
                mov     [r11+20h], rsi
                mov     [r11+10h], rdx
                mov     [r11+8], rcx
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                xor     edi, edi
                mov     rsi, r9
                test    [rbp+arg_38], 0FFFFFFF9h
                mov     r12, r8
                mov     r13, rdx
                mov     [rbp+var_10], rdi
                mov     [rbp+var_18], rdi
                mov     [rbp+var_8], rdi
                mov     [rbp+var_20], edi
                mov     [rbp+var_1C], edi
                jnz     loc_140450AA9
                cmp     [rbp+arg_38], edi
                jz      loc_140450AA9
                mov     r15d, [rbp+arg_40]
                mov     eax, r15d
                btr     eax, 17h
                cmp     eax, 8000000h
                jnz     loc_140450A9F
                cmp     [r9+28h], rdi
                jz      loc_140450A3C
                mov     rax, gs:188h
                lea     ecx, [rdi+1]
                mov     [rax+4C0h], rcx
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     edx, [rbp+arg_38]
                lea     rax, [rbp+var_1C]
                mov     r8d, ecx
                mov     [r11-78h], rax
                mov     rcx, rsi
                lea     r9, [rbp+var_20]
                call    sub_14068F9D8
                mov     ebx, eax
                test    eax, eax
                js      loc_140450A46
                lea     rdx, [rbp+var_10]
                mov     rcx, rsi
                call    FsRtlGetFileSize
                mov     edi, eax
                xor     eax, eax
                test    edi, edi
                js      short loc_1402B750D
                mov     rbx, [rbp+var_10]
                test    rbx, rbx
                jz      loc_140450A6B
                mov     r13d, [rbp+var_20]

loc_1402B74A1:                          ; CODE XREF: FsRtlCreateSectionForDataScan+1996C7↓j
                mov     r9d, [rbp+arg_38]
                lea     rcx, [rbp+var_18]
                mov     rdx, [rbp+arg_28]
                mov     r8, rbx
                mov     [rsp+70h+var_28], eax
                mov     [rsp+70h+var_30], rax
                mov     [rsp+70h+var_38], r13d
                mov     [rsp+70h+var_40], rsi
                mov     [rsp+70h+var_48], rax
                mov     dword ptr [rsp+70h+var_50], r15d
                call    sub_1406C0704
                mov     edi, eax
                cmp     eax, 0C0000054h
                jz      loc_140450A75
                test    eax, eax
                js      short loc_1402B7509
                mov     rcx, [rbp+var_18]
                call    sub_14067E460
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402B7509
                mov     rcx, rax
                call    sub_1402D49E8
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag

loc_1402B7509:                          ; CODE XREF: FsRtlCreateSectionForDataScan+121↑j
                                        ; FsRtlCreateSectionForDataScan+132↑j
                mov     r13, [rbp+arg_8]

loc_1402B750D:                          ; CODE XREF: FsRtlCreateSectionForDataScan+CE↑j
                                        ; FsRtlCreateSectionForDataScan+1996B0↓j
                mov     rcx, rsi
                call    FsRtlReleaseFile
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, gs:188h
                and     qword ptr [rax+4C0h], 0
                test    edi, edi
                js      short loc_1402B758F
                mov     rbx, [rbp+var_18]
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     r8d, [rbp+arg_20]
                lea     rax, [rbp+var_8]
                mov     [rsp+70h+var_48], rax
                xor     r9d, r9d
                and     [rsp+70h+var_50], 0
                xor     edx, edx
                mov     rcx, rbx
                call    ObInsertObject
                mov     edi, eax
                test    eax, eax
                js      loc_140450A8C
                mov     rax, [rbp+arg_0]
                mov     rcx, [rbp+var_8]
                mov     [rax], rcx
                mov     [r13+0], rbx
                test    r12, r12
                jz      short loc_1402B758F
                mov     rcx, [rbp+var_10]
                mov     [r12], rcx

loc_1402B758F:                          ; CODE XREF: FsRtlCreateSectionForDataScan+176↑j
                                        ; FsRtlCreateSectionForDataScan+1C5↑j ...
                mov     eax, edi

loc_1402B7591:                          ; CODE XREF: FsRtlCreateSectionForDataScan+199681↓j
                                        ; FsRtlCreateSectionForDataScan+1996A6↓j ...
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCreateSectionForDataScan endp
