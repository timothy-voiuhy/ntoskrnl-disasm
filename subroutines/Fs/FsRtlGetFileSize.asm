FsRtlGetFileSize proc near              ; CODE XREF: FsRtlCreateSectionForDataScan+C3↑p
                                        ; sub_14068E6B0+2C1↑p ...

var_60          = qword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_10          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140814050 SIZE 000000E4 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-28h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                xor     eax, eax
                mov     r15, rdx
                movups  [rbp+var_50], xmm0
                mov     [rbp+var_18], rax
                mov     rsi, rcx
                movups  [rbp+var_28], xmm1
                call    IoGetRelatedDeviceObject
                mov     rdi, rax
                mov     rcx, [rax+8]
                mov     rax, [rcx+50h]
                test    rax, rax
                jz      loc_140814050
                mov     rax, [rax+28h]
                test    rax, rax
                jz      loc_140814050
                lea     r9, [rbp+var_50]
                mov     [rsp+80h+var_60], rdi
                lea     r8, [rbp+var_28]
                mov     dl, 1
                mov     rcx, rsi
                call    sub_1404079D0
                test    al, al
                jz      loc_140814050

loc_1406904D3:                          ; CODE XREF: FsRtlGetFileSize+183CDF↓j
                mov     eax, dword ptr [rbp+var_50]
                test    eax, eax
                js      short loc_1406904E7
                cmp     byte ptr [rbp+var_18+5], 0
                jnz     short loc_14069050B
                mov     rcx, qword ptr [rbp+var_28+8]
                mov     [r15], rcx

loc_1406904E7:                          ; CODE XREF: FsRtlGetFileSize+88↑j
                                        ; FsRtlGetFileSize+C0↓j ...
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_10]
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069050B:                          ; CODE XREF: FsRtlGetFileSize+8E↑j
                mov     eax, 0C00000BAh
                jmp     short loc_1406904E7
; } // starts at 140690450
FsRtlGetFileSize endp
