FsRtlGetNextMcbEntry proc near          ; DATA XREF: .pdata:00000001400F1248↑o

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 50h
                xor     esi, esi
                lea     rax, [r11-18h]
                mov     rbx, r9
                mov     [r11-28h], rsi
                mov     rdi, r8
                mov     [r11-20h], rsi
                lea     r9, [r11-20h]
                mov     [r11-18h], rsi
                lea     r8, [r11-28h]
                mov     [r11-38h], rax
                call    FsRtlGetNextLargeMcbEntry
                test    al, al
                jz      short loc_1404EF39E
                mov     ecx, [rsp+58h+var_28]
                mov     rdx, [rsp+58h+arg_20]
                mov     [rdi], ecx
                mov     rcx, [rsp+58h+var_20]
                cmp     ecx, 0FFFFFFFFh
                cmovz   ecx, esi
                mov     [rbx], ecx
                mov     ecx, [rsp+58h+var_18]
                mov     [rdx], ecx

loc_1404EF39E:                          ; CODE XREF: FsRtlGetNextMcbEntry+3B↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlGetNextMcbEntry endp
