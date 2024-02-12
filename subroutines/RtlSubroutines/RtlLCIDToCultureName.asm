RtlLCIDToCultureName proc near          ; CODE XREF: sub_1403A866C+D3616↑p
                                        ; sub_14073A3A0+B5CB6↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rsi, rdx
                mov     edi, ecx
                test    ecx, ecx
                jz      short loc_14091785F
                test    rdx, rdx
                jz      short loc_14091785F
                cmp     ecx, 1000h
                jz      short loc_14091785F
                lea     rcx, aRtlmuiReusingL ; "!!! RTLMUI: Reusing LocaleBuffer !!!"
                call    DbgPrint
                lea     r9d, [rbx+2]
                movzx   ecx, di
                lea     r8d, [rbx+40h]
                lea     rdx, unk_140CF74A0
                call    sub_14033D1DC
                test    eax, eax
                jle     short loc_14091785F
                lea     rdx, unk_140CF74A0
                mov     rcx, rsi
                call    RtlInitUnicodeString
                mov     bl, 1

loc_14091785F:                          ; CODE XREF: RtlLCIDToCultureName+18↑j
                                        ; RtlLCIDToCultureName+1D↑j ...
                mov     rsi, [rsp+28h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlLCIDToCultureName endp
