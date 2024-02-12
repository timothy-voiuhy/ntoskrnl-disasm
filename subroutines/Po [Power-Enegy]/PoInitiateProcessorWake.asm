PoInitiateProcessorWake proc near       ; DATA XREF: .pdata:00000001400F618C↑o

var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = byte ptr -0D8h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_28], rax
                mov     ebx, ecx
                xor     edx, edx
                lea     rcx, [rsp+118h+var_D8]
                mov     r8d, 0A8h
                call    memset
                mov     ecx, ebx
                call    sub_14023DAD0
                mov     rbp, rax
                mov     rdi, [rax+8000h]
                lea     rsi, [rax+8040h]
                mov     r11d, [rsi]
                shr     r11d, 18h
                xor     ebx, ebx
                mov     r14, [rdi+1E8h]
                jmp     loc_140565803
; ---------------------------------------------------------------------------

loc_140565778:                          ; CODE XREF: PoInitiateProcessorWake+F7↓j
                lea     eax, [r11-1]
                cmp     al, 5
                jbe     short loc_14056578A
                cmp     r11b, 9
                jb      loc_140565887

loc_14056578A:                          ; CODE XREF: PoInitiateProcessorWake+6E↑j
                cmp     r11b, 2
                jnz     short loc_140565799
                mov     r11d, [rsi]
                shr     r11d, 18h
                jmp     short loc_140565801
; ---------------------------------------------------------------------------

loc_140565799:                          ; CODE XREF: PoInitiateProcessorWake+7E↑j
                lea     eax, [r11-4]
                test    al, 0FDh
                jz      short loc_1405657EC
                cmp     r11b, 5
                jnz     short loc_140565801
                mov     r8b, r11b
                mov     dl, 7
                mov     rcx, rsi
                call    sub_140567338
                mov     r11b, al
                cmp     al, 5
                jnz     short loc_140565801
                lea     rdx, [rdi+48h]
                lea     rcx, [rsp+118h+var_D8]
                call    KeCopyAffinityEx
                lea     rcx, [rsp+118h+var_D8]
                call    KeIsEmptyAffinityEx
                test    eax, eax
                jnz     loc_140565887
                lea     rdx, [rsp+118h+var_D8]
                xor     ecx, ecx
                call    HalRequestIpi
                jmp     loc_140565887
; ---------------------------------------------------------------------------

loc_1405657EC:                          ; CODE XREF: PoInitiateProcessorWake+8F↑j
                mov     r8b, r11b
                mov     dl, 8
                mov     rcx, rsi
                call    sub_140567338
                cmp     al, r11b
                jz      short loc_14056580F
                mov     r11b, al

loc_140565801:                          ; CODE XREF: PoInitiateProcessorWake+87↑j
                                        ; PoInitiateProcessorWake+95↑j ...
                pause

loc_140565803:                          ; CODE XREF: PoInitiateProcessorWake+63↑j
                cmp     r11b, 1
                jnz     loc_140565778
                jmp     short loc_140565887
; ---------------------------------------------------------------------------

loc_14056580F:                          ; CODE XREF: PoInitiateProcessorWake+EC↑j
                cmp     [rbp+8031h], bl
                jnz     short loc_14056581B
                mov     bl, 1
                jmp     short loc_140565887
; ---------------------------------------------------------------------------

loc_14056581B:                          ; CODE XREF: PoInitiateProcessorWake+105↑j
                mov     rax, cs:qword_140CFC778
                xorps   xmm0, xmm0
                movups  [rsp+118h+var_F8], xmm0
                mov     qword ptr [rsp+118h+var_F8+8], rax
                movups  [rsp+118h+var_E8], xmm0
                mov     qword ptr [rsp+118h+var_E8], rbp

loc_140565839:                          ; CODE XREF: PoInitiateProcessorWake+14F↓j
                mov     rax, [rdi+1D8h]
                mov     rcx, r14
                call    sub_1404079D0
                test    al, al
                jnz     short loc_140565861
                mov     eax, [rsi]
                shr     eax, 18h
                cmp     al, 8
                jnz     short loc_140565887
                lea     rcx, [rsp+118h+var_F8]
                call    sub_140567198
                jmp     short loc_140565839
; ---------------------------------------------------------------------------

loc_140565861:                          ; CODE XREF: PoInitiateProcessorWake+13A↑j
                mov     rax, [rdi+38h]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_140565876
                xor     ecx, ecx
                call    KeQueryPerformanceCounter
                xchg    rax, [rdi+38h]

loc_140565876:                          ; CODE XREF: PoInitiateProcessorWake+159↑j
                mov     rax, [rdi+1E0h]
                mov     rcx, r14
                call    sub_1404079D0
                mov     bl, al

loc_140565887:                          ; CODE XREF: PoInitiateProcessorWake+74↑j
                                        ; PoInitiateProcessorWake+C5↑j ...
                mov     al, bl
                mov     rcx, [rsp+118h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+118h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140565710
PoInitiateProcessorWake endp
