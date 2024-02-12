KeFlushEntireTb proc near               ; CODE XREF: sub_140A5259C+F2↓p
                                        ; DATA XREF: .rdata:00000001400A1FF8↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

; FUNCTION CHUNK AT 00000001404AB9BC SIZE 000000CF BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rdi
                sub     rsp, 30h
                mov     edx, 3
                mov     byte ptr [rax+18h], 0
                mov     byte ptr [rax+20h], 0
                lea     rax, [rax+20h]
                lea     r9, [rsp+38h+arg_10]
                mov     [rsp+38h+var_18], rax
                mov     cl, 1
                lea     r8d, [rdx-1]
                call    sub_14028F220
                cmp     [rsp+38h+arg_10], 0
                jnz     loc_1404AB9BC
                mov     ecx, 2
                call    sub_14031FEB0

loc_1403B70BB:                          ; CODE XREF: KeFlushEntireTb+F495C↓j
                cmp     cs:dword_140CF4D10, 0
                jnz     loc_1404AB9D1

loc_1403B70C8:                          ; CODE XREF: KeFlushEntireTb+F4A16↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeFlushEntireTb endp
