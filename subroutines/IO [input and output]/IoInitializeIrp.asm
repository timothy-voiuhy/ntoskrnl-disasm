IoInitializeIrp proc near               ; CODE XREF: IoInitializeIrpEx+1A↓p
                                        ; sub_1405001C0+C2↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047B0EE SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     eax, cs:dword_140C2A6E0
                mov     rbx, rcx
                movsx   rdi, r8b
                movzx   esi, dx
                test    al, 10h
                jnz     loc_14047B0EE

loc_14033B007:                          ; CODE XREF: IoInitializeIrp+140119↓j
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rbx
                call    memset
                mov     [rbx+2], si
                mov     eax, 6
                mov     rsi, [rsp+28h+arg_8]
                mov     [rbx], ax
                lea     eax, [rdi+1]
                mov     [rbx+43h], al
                mov     [rbx+42h], dil
                mov     rax, gs:188h
                mov     cl, [rax+24Ah]
                lea     rax, [rbx+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, ds:1Ah[rdi*8]
                add     rax, rdi
                mov     [rbx+46h], cl
                lea     rax, [rbx+rax*8]
                mov     [rbx+0B8h], rax
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoInitializeIrp endp
