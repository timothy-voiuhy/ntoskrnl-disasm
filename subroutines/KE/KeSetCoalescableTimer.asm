KeSetCoalescableTimer proc near         ; CODE XREF: sub_14020C310+178↑p
                                        ; sub_1402BBA78+58↑p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404534E0 SIZE 0000000F BYTES

                push    rbx
                sub     rsp, 30h
                xor     r10d, r10d
                mov     r11d, r8d
                mov     rbx, rcx
                test    r9d, r9d
                jz      short loc_1402BE23E
                mov     eax, r9d
                imul    r9, rax, 2710h
                cmp     r9, 0FC0000h
                ja      short loc_1402BE25D

loc_1402BE227:                          ; CODE XREF: KeSetCoalescableTimer+86↓j
                shr     r9d, 12h
                mov     eax, 3Fh ; '?'
                cmp     r9d, eax
                cmova   r9d, eax
                shl     r9b, 2
                mov     r10b, r9b

loc_1402BE23E:                          ; CODE XREF: KeSetCoalescableTimer+12↑j
                mov     rax, [rsp+38h+arg_20]
                mov     r9b, r10b
                mov     r8d, r11d
                mov     [rsp+38h+var_18], rax
                mov     rcx, rbx
                call    sub_1402BE300
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BE25D:                          ; CODE XREF: KeSetCoalescableTimer+25↑j
                add     r9, 0FFFFFFFFFF040000h
                test    rdx, rdx
                jns     short loc_1402BE288
                mov     r8, rdx
                sub     r8, r9
                cmp     r8, rdx
                jg      loc_1404534E0

loc_1402BE278:                          ; CODE XREF: KeSetCoalescableTimer+9D↓j
                                        ; KeSetCoalescableTimer+1952EA↓j
                test    r11d, r11d
                jnz     short loc_1402BE29F

loc_1402BE27D:                          ; CODE XREF: KeSetCoalescableTimer+C9↓j
                mov     r9d, 0FC0000h
                mov     rdx, r8
                jmp     short loc_1402BE227
; ---------------------------------------------------------------------------

loc_1402BE288:                          ; CODE XREF: KeSetCoalescableTimer+67↑j
                lea     r8, [r9+rdx]
                mov     rax, 7FFFFFFFFFFFFFFFh
                cmp     r8, rdx
                cmovl   r8, rax
                jmp     short loc_1402BE278
; ---------------------------------------------------------------------------

loc_1402BE29F:                          ; CODE XREF: KeSetCoalescableTimer+7B↑j
                mov     rax, 346DC5D63886594Bh
                imul    r9
                or      eax, 0FFFFFFFFh
                sar     rdx, 0Bh
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rcx, rdx
                add     ecx, r11d
                cmp     ecx, r11d
                cmovnb  eax, ecx
                mov     r11d, eax
                jmp     short loc_1402BE27D
KeSetCoalescableTimer endp
