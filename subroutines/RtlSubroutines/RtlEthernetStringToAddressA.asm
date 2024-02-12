RtlEthernetStringToAddressA proc near   ; DATA XREF: .pdata:00000001400F7E9C↑o

var_48          = dword ptr -48h
var_43          = byte ptr -43h
var_42          = byte ptr -42h
var_40          = qword ptr -40h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_40], rax
                mov     r13, r8
                lea     rsi, [rsp+68h+var_48]
                mov     r14, rdx
                mov     rbx, rcx

loc_14058C491:                          ; CODE XREF: RtlEthernetStringToAddressA+D2↓j
                xor     ebp, ebp
                xor     dil, dil
                jmp     short loc_14058C50A
; ---------------------------------------------------------------------------

loc_14058C498:                          ; CODE XREF: RtlEthernetStringToAddressA+B0↓j
                movsx   r12d, r15b
                mov     ecx, r12d
                call    __isascii
                test    eax, eax
                jz      short loc_14058C4BE
                mov     ecx, r12d
                call    isdigit
                test    eax, eax
                jz      short loc_14058C4BE
                add     dil, 0Dh
                shl     dil, 4
                jmp     short loc_14058C4FD
; ---------------------------------------------------------------------------

loc_14058C4BE:                          ; CODE XREF: RtlEthernetStringToAddressA+46↑j
                                        ; RtlEthernetStringToAddressA+52↑j
                mov     ecx, r12d
                call    __isascii
                test    eax, eax
                jz      short loc_14058C512
                mov     ecx, r12d
                call    isxdigit
                test    eax, eax
                jz      short loc_14058C512
                mov     ecx, r12d
                call    __isascii
                test    eax, eax
                jz      short loc_14058C4F0
                mov     ecx, r12d
                call    islower
                test    eax, eax
                mov     al, 61h ; 'a'
                jnz     short loc_14058C4F2

loc_14058C4F0:                          ; CODE XREF: RtlEthernetStringToAddressA+80↑j
                mov     al, 41h ; 'A'

loc_14058C4F2:                          ; CODE XREF: RtlEthernetStringToAddressA+8E↑j
                shl     dil, 4
                sub     dil, al
                add     dil, 0Ah

loc_14058C4FD:                          ; CODE XREF: RtlEthernetStringToAddressA+5C↑j
                add     dil, r15b
                cmp     ebp, 2
                jz      short loc_14058C538
                inc     rbx
                inc     ebp

loc_14058C50A:                          ; CODE XREF: RtlEthernetStringToAddressA+36↑j
                mov     r15b, [rbx]
                test    r15b, r15b
                jnz     short loc_14058C498

loc_14058C512:                          ; CODE XREF: RtlEthernetStringToAddressA+68↑j
                                        ; RtlEthernetStringToAddressA+74↑j
                mov     al, [rbx]
                cmp     al, 2Dh ; '-'
                jz      short loc_14058C51C
                cmp     al, 3Ah ; ':'
                jnz     short loc_14058C566

loc_14058C51C:                          ; CODE XREF: RtlEthernetStringToAddressA+B6↑j
                lea     rax, [rsp+68h+var_43]
                cmp     rsi, rax
                jnb     short loc_14058C538
                mov     [rsi], dil
                inc     rbx
                inc     rsi
                cmp     ebp, 2
                jz      loc_14058C491

loc_14058C538:                          ; CODE XREF: RtlEthernetStringToAddressA+A3↑j
                                        ; RtlEthernetStringToAddressA+C4↑j
                mov     [r14], rbx

loc_14058C53B:                          ; CODE XREF: RtlEthernetStringToAddressA+10C↓j
                                        ; RtlEthernetStringToAddressA+11D↓j
                mov     eax, 0C000000Dh

loc_14058C540:                          ; CODE XREF: RtlEthernetStringToAddressA+133↓j
                mov     rcx, [rsp+68h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+68h+arg_18]
                add     rsp, 30h
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

loc_14058C566:                          ; CODE XREF: RtlEthernetStringToAddressA+BA↑j
                mov     [r14], rbx
                cmp     ebp, 2
                jnz     short loc_14058C53B
                lea     rax, [rsi+1]
                mov     [rsi], dil
                lea     rcx, [rsp+68h+var_42]
                cmp     rax, rcx
                jnz     short loc_14058C53B
                mov     eax, [rsp+68h+var_48]
                mov     [r13+0], eax
                movzx   eax, word ptr [rsp+24h]
                mov     [r13+4], ax
                xor     eax, eax
                jmp     short loc_14058C540
; } // starts at 14058C460
RtlEthernetStringToAddressA endp
