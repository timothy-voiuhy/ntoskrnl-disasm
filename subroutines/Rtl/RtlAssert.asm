RtlAssert       proc near               ; CODE XREF: sub_140754980+E9B4D↓p
                                        ; sub_140754980+E9BE4↓p ...

var_538         = qword ptr -538h
var_530         = qword ptr -530h
var_528         = dword ptr -528h
var_518         = byte ptr -518h
var_508         = byte ptr -508h
var_38          = qword ptr -38h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r15
                sub     rsp, 530h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+558h+var_38], rax
                mov     rdi, rcx
                mov     rbx, r9
                lea     rcx, [rsp+558h+var_508]
                mov     ebp, r8d
                mov     rsi, rdx
                call    RtlCaptureContext
                mov     r15, 0FFFFF780000002D4h

loc_140588BE0:                          ; CODE XREF: RtlAssert+BD↓j
                                        ; RtlAssert+D0↓j ...
                mov     [rsp+558h+var_528], ebp
                lea     r9, qword_140412E80
                test    rbx, rbx
                mov     [rsp+558h+var_530], rsi
                lea     r8, aAssertionFaile ; "\n*** Assertion failed: %s%s\n***   Sou"...
                mov     [rsp+558h+var_538], rdi
                cmovnz  r9, rbx
                xor     edx, edx
                lea     ecx, [rdx+65h]
                call    DbgPrintEx
                mov     al, [r15]
                and     al, 3
                cmp     al, 3
                jnz     loc_140588CA2
                mov     r8d, 2
                lea     rdx, [rsp+558h+var_518]
                lea     rcx, aBreakRepeatedl ; "Break repeatedly, break Once, Ignore, t"...
                call    DbgPrompt
                test    eax, eax
                jz      short loc_140588C9C
                movsx   ecx, [rsp+558h+var_518]
                cmp     ecx, 62h ; 'b'
                jg      short loc_140588C4B
                jz      short loc_140588C75
                sub     ecx, 42h ; 'B'
                jz      short loc_140588C75
                sub     ecx, 7
                jmp     short loc_140588C4E
; ---------------------------------------------------------------------------

loc_140588C4B:                          ; CODE XREF: RtlAssert+9D↑j
                sub     ecx, 69h ; 'i'

loc_140588C4E:                          ; CODE XREF: RtlAssert+A9↑j
                jz      short loc_140588CA2
                sub     ecx, 6
                jz      short loc_140588C75
                sub     ecx, 1
                jz      short loc_140588C9D
                cmp     ecx, 4
                jnz     short loc_140588BE0
                mov     edx, 0C0000001h
                mov     rcx, 0FFFFFFFFFFFFFFFEh
                call    sub_1403FA640
                jmp     loc_140588BE0
; ---------------------------------------------------------------------------

loc_140588C75:                          ; CODE XREF: RtlAssert+9F↑j
                                        ; RtlAssert+A4↑j ...
                xor     edx, edx
                lea     r9, [rsp+558h+var_508]
                lea     r8, aExecuteCxrPToD ; "Execute '.cxr %p' to dump context\n"
                lea     ecx, [rdx+65h]
                call    DbgPrintEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------
                mov     al, [rsp+558h+var_518]
                sub     al, 4Fh ; 'O'
                test    al, 0DFh
                jnz     loc_140588BE0
                jmp     short loc_140588CA2
; ---------------------------------------------------------------------------

loc_140588C9C:                          ; CODE XREF: RtlAssert+93↑j
                int     3               ; Trap to Debugger

loc_140588C9D:                          ; CODE XREF: RtlAssert+B8↑j
                call    sub_140916640

loc_140588CA2:                          ; CODE XREF: RtlAssert+74↑j
                                        ; RtlAssert:loc_140588C4E↑j ...
                mov     rcx, [rsp+558h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 530h
                pop     r15
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140588BA0
RtlAssert       endp

algn_140588CC1:                         ; DATA XREF: .pdata:00000001400F7CEC↑o
                align 10h
; Exported entry 2157. RtlGetCallersAddress

; =============== S U B R O U T I N E =======================================


