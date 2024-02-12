KeFlushQueuedDpcs proc near             ; CODE XREF: sub_140212F08:loc_140212F27↑p
                                        ; sub_1404EC050+60↓p ...

var_190         = dword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = word ptr -178h
var_176         = dword ptr -176h
var_172         = word ptr -172h
var_170         = byte ptr -170h
var_168         = qword ptr -168h
var_C0          = byte ptr -0C0h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047C828 SIZE 00000013 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rdi
                push    rbp
                lea     rbp, [rsp-0B0h]
                sub     rsp, 1B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0B0h+var_10], rax
                xor     edx, edx
                lea     rcx, [rsp+1B0h+var_170]
                mov     r8d, 0A8h
                call    memset
                xor     edi, edi
                lea     rcx, [rbp+0B0h+var_C0]
                xor     edx, edx
                mov     [rsp+1B0h+var_176], edi
                mov     r8d, 0A8h
                mov     [rsp+1B0h+var_172], di
                mov     [rsp+1B0h+var_190], edi
                call    memset
                lea     rdx, [rbp+0B0h+var_C0]
                lea     rcx, [rsp+1B0h+var_170]
                call    sub_14033F010
                mov     rax, [rsp+1B0h+var_168]
                mov     [rsp+1B0h+var_180], rax
                lea     rax, [rsp+1B0h+var_170]
                mov     [rsp+1B0h+var_188], rax
                mov     [rsp+1B0h+var_178], di

loc_14033EF9F:                          ; CODE XREF: KeFlushQueuedDpcs+A9↓j
                                        ; KeFlushQueuedDpcs+13D916↓j
                lea     rdx, [rsp+1B0h+var_188]
                lea     rcx, [rsp+1B0h+var_190]
                call    KeEnumerateNextProcessor
                test    eax, eax
                jnz     short loc_14033EFD0
                mov     eax, [rsp+1B0h+var_190]
                lea     rcx, qword_140CFDCC0
                mov     rcx, [rcx+rax*8]
                mov     eax, [rcx+312Ch]
                test    eax, eax
                jz      short loc_14033EF9F
                jmp     loc_14047C828
; ---------------------------------------------------------------------------

loc_14033EFD0:                          ; CODE XREF: KeFlushQueuedDpcs+90↑j
                mov     r9d, 2
                lea     rdx, sub_14035BC20
                xor     r8d, r8d
                lea     rcx, [rbp+0B0h+var_C0]
                call    sub_1402BA410
                mov     rcx, [rbp+0B0h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rdi, [rsp+1B0h+arg_0]
                add     rsp, 1B0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14033EF20
KeFlushQueuedDpcs endp
