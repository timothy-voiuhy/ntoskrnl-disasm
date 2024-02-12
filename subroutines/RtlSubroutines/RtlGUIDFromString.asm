RtlGUIDFromString proc near             ; CODE XREF: sub_14036CD08+58↑p
                                        ; RtlQueryPackageClaims+21B7FD↑p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                push    rbx
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_18], rax
                lea     r8, [rdx+4]
                mov     rbx, rdx
                lea     rax, [rdx+6]
                xorps   xmm0, xmm0
                movzx   edx, word ptr [rcx]
                lea     r9, [r11-1Ah]
                mov     rcx, [rcx+8]
                mov     [r11-30h], r9
                lea     r9, [r11-1Ch]
                mov     [r11-38h], r9
                lea     r9, [r11-1Eh]
                mov     [r11-40h], r9
                lea     r9, [r11-20h]
                mov     [r11-48h], r9
                lea     r9, [r11-22h]
                mov     [r11-50h], r9
                lea     r9, [r11-24h]
                mov     [r11-58h], r9
                lea     r9, [r11-26h]
                mov     [r11-60h], r9
                lea     r9, [r11-28h]
                mov     [r11-68h], r9
                mov     r9, rbx
                mov     [r11-70h], rax
                mov     [r11-78h], r8
                lea     r8, a08lx04x04x02x0 ; "{%08lx-%04x-%04x-%02x%02x-%02x%02x%02x%"...
                shr     edx, 1
                movups  [rsp+98h+var_28], xmm0
                call    sub_1406CD3D0
                cmp     eax, 0FFFFFFFFh
                jz      short loc_1406CD3BF
                xor     ecx, ecx
                lea     rdx, [rbx+8]
                lea     r8, [rsp+98h+var_28]

loc_1406CD390:                          ; CODE XREF: RtlGUIDFromString+B1↓j
                mov     al, [r8]
                inc     ecx
                mov     [rdx], al
                lea     r8, [r8+2]
                inc     rdx
                cmp     ecx, 8
                jb      short loc_1406CD390
                xor     eax, eax

loc_1406CD3A5:                          ; CODE XREF: RtlGUIDFromString+D4↓j
                mov     rcx, [rsp+98h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 90h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406CD3BF:                          ; CODE XREF: RtlGUIDFromString+93↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1406CD3A5
; } // starts at 1406CD2F0
RtlGUIDFromString endp
