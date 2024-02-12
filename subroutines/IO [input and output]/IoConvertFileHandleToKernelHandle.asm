IoConvertFileHandleToKernelHandle proc near
                                        ; CODE XREF: sub_14066D50C+1D9↑p
                                        ; sub_140727D40+FB↑p ...

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = byte ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  20h
arg_20          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140830E3C SIZE 00000033 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rsi
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 50h
                mov     r14, [rbp+arg_20]
                mov     sil, r9b
                and     [rbp+var_8], 0
                mov     ebx, r8d
                and     [rbp+var_10], 0
                mov     rdi, rcx
                and     qword ptr [r14], 0
                test    rcx, rcx
                jz      loc_1407299F9
                mov     r8, cs:IoFileObjectType
                lea     rax, [rbp+var_10]
                and     [rbp+arg_20], 0
                mov     r9b, dl
                mov     [r11-40h], rax
                xor     edx, edx
                lea     rax, [rbp+arg_20]
                mov     [r11-48h], rax
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1407299E3
                test    sil, sil
                jnz     short loc_14072994A
                mov     eax, dword ptr [rbp+var_10+4]
                and     eax, ebx
                cmp     eax, ebx
                jnz     loc_140830E3C

loc_14072994A:                          ; CODE XREF: IoConvertFileHandleToKernelHandle+6B↑j
                mov     rax, gs:188h
                lea     r9, [rbp+var_8]
                mov     r8, cs:PsInitialSystemProcess
                mov     rdx, rdi
                mov     [rsp+50h+var_18], 0
                and     [rsp+50h+var_20], 0
                mov     rcx, [rax+0B8h]
                mov     dword ptr [rsp+50h+var_28], 200h
                mov     dword ptr [rsp+50h+var_30], ebx
                call    ObDuplicateObject
                mov     rsi, [rbp+arg_20]
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407299D9
                mov     rdi, [rbp+var_8]
                lea     rax, [rbp+arg_0]
                mov     r8, cs:IoFileObjectType
                mov     rcx, rdi
                and     [rsp+50h+var_28], 0
                xor     r9d, r9d
                and     [rbp+arg_0], 0
                xor     edx, edx
                mov     [rsp+50h+var_30], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      loc_140830E4A
                cmp     [rbp+arg_0], rsi
                jnz     loc_140830E5A
                mov     [r14], rdi

loc_1407299D0:                          ; CODE XREF: IoConvertFileHandleToKernelHandle+10759A↓j
                mov     rcx, [rbp+arg_0]
                call    PsDereferenceSiloContext

loc_1407299D9:                          ; CODE XREF: IoConvertFileHandleToKernelHandle+BB↑j
                                        ; IoConvertFileHandleToKernelHandle+107575↓j ...
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                mov     eax, ebx

loc_1407299E3:                          ; CODE XREF: IoConvertFileHandleToKernelHandle+62↑j
                                        ; IoConvertFileHandleToKernelHandle+12B↓j
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407299F9:                          ; CODE XREF: IoConvertFileHandleToKernelHandle+34↑j
                xor     eax, eax
                jmp     short loc_1407299E3
IoConvertFileHandleToKernelHandle endp
