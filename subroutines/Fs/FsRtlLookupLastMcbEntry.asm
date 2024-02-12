FsRtlLookupLastMcbEntry proc near       ; DATA XREF: .pdata:00000001400F129C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, r8
                mov     rdi, rdx
                xor     esi, esi
                lea     r8, [rax-18h]
                lea     rdx, [rax+20h]
                mov     [rax+20h], rsi
                mov     [rax-18h], rsi
                call    FsRtlLookupLastLargeMcbEntry
                test    al, al
                jz      short loc_1404EF5C4
                mov     ecx, [rsp+38h+arg_18]
                mov     [rdi], ecx
                mov     rcx, [rsp+38h+var_18]
                cmp     ecx, 0FFFFFFFFh
                cmovz   ecx, esi
                mov     [rbx], ecx

loc_1404EF5C4:                          ; CODE XREF: FsRtlLookupLastMcbEntry+2F↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlLookupLastMcbEntry endp
