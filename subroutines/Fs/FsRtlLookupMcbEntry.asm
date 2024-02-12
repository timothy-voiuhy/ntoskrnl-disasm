FsRtlLookupMcbEntry proc near           ; DATA XREF: .pdata:00000001400F12A8↑o

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 50h
                xor     esi, esi
                mov     edx, edx
                mov     rax, r9
                mov     [r11+20h], rsi
                neg     rax
                mov     [r11-18h], rsi
                mov     rbx, r9
                lea     rax, [r11-18h]
                sbb     r9, r9
                mov     rdi, r8
                and     r9, rax
                lea     r8, [r11+20h]
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-28h], rax
                mov     [r11-30h], rsi
                mov     [r11-38h], rsi
                call    FsRtlLookupLargeMcbEntry
                test    al, al
                jz      short loc_1404EF64B
                mov     rcx, [rsp+58h+arg_18]
                cmp     ecx, 0FFFFFFFFh
                cmovz   ecx, esi
                mov     [rdi], ecx
                test    rbx, rbx
                jz      short loc_1404EF64B
                mov     ecx, [rsp+58h+var_18]
                mov     [rbx], ecx

loc_1404EF64B:                          ; CODE XREF: FsRtlLookupMcbEntry+51↑j
                                        ; FsRtlLookupMcbEntry+63↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlLookupMcbEntry endp
