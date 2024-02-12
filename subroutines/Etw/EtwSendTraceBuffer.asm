EtwSendTraceBuffer proc near            ; CODE XREF: sub_1404FDDE0+E6↑p
                                        ; DATA XREF: .pdata:00000001400F9420↑o

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                xor     esi, esi
                movzx   r14d, cx
                mov     [rax+8], sil
                mov     r15, r9
                mov     ebp, r8d
                mov     rdi, rdx
                call    sub_1402B95B0
                mov     r10, [rax+360h]
                cmp     r14d, [r10+10h]
                jb      short loc_1405A6217
                mov     eax, 0C0000008h
                jmp     loc_1405A631F
; ---------------------------------------------------------------------------

loc_1405A6217:                          ; CODE XREF: EtwSendTraceBuffer+3B↑j
                mov     rdx, cs:qword_140CFB008
                lea     r9, [rsp+48h+arg_0]
                xor     r8d, r8d
                mov     ecx, r14d
                call    sub_1402BCC68
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1405A6240
                mov     eax, 0C0000296h
                jmp     loc_1405A631F
; ---------------------------------------------------------------------------

loc_1405A6240:                          ; CODE XREF: EtwSendTraceBuffer+64↑j
                cmp     [rax+150h], esi
                jnz     short loc_1405A6252
                mov     esi, 0C0000302h
                jmp     loc_1405A6309
; ---------------------------------------------------------------------------

loc_1405A6252:                          ; CODE XREF: EtwSendTraceBuffer+76↑j
                test    dword ptr [rax+0Ch], 40000h
                jnz     short loc_1405A6265
                mov     esi, 0C0000008h
                jmp     loc_1405A6309
; ---------------------------------------------------------------------------

loc_1405A6265:                          ; CODE XREF: EtwSendTraceBuffer+89↑j
                test    ebp, ebp
                jz      short loc_1405A6271
                lock xadd [rax+100h], ebp

loc_1405A6271:                          ; CODE XREF: EtwSendTraceBuffer+97↑j
                mov     ecx, [rdi+30h]
                mov     eax, 5
                mov     [rdi+4], ecx
                add     ecx, [rdi]
                test    byte ptr [rdi+34h], 20h
                mov     [rdi+8], ecx
                mov     dword ptr [rdi+2Ch], 3
                mov     [rdi+36h], ax
                jnz     short loc_1405A629A
                movzx   eax, byte ptr [rdi+28h]
                mov     [rdi+28h], ax

loc_1405A629A:                          ; CODE XREF: EtwSendTraceBuffer+C0↑j
                mov     rax, [rsp+48h+arg_20]
                mov     rcx, rbx
                mov     [rdi+40h], rax
                mov     [rdi+38h], r15
                call    sub_140214CB8
                mov     [rdi+10h], rax

loc_1405A62B3:                          ; CODE XREF: EtwSendTraceBuffer+FA↓j
                mov     rcx, [rbx+90h]
                mov     [rdi+20h], rcx
                mov     rax, rcx
                lock cmpxchg [rbx+90h], rdi
                jnz     short loc_1405A62B3
                test    rcx, rcx
                jnz     short loc_1405A6309
                call    KeGetEffectiveIrql
                cmp     al, 2
                ja      short loc_1405A62ED
                lea     rcx, [rbx+1F0h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     short loc_1405A6309
; ---------------------------------------------------------------------------

loc_1405A62ED:                          ; CODE XREF: EtwSendTraceBuffer+108↑j
                lock bts dword ptr [rbx+344h], 8
                jb      short loc_1405A6309
                lea     rcx, [rbx+248h]
                xor     r8d, r8d
                xor     edx, edx
                call    KeInsertQueueDpc

loc_1405A6309:                          ; CODE XREF: EtwSendTraceBuffer+7D↑j
                                        ; EtwSendTraceBuffer+90↑j ...
                mov     r8b, [rsp+48h+arg_0]
                mov     ecx, r14d
                mov     rdx, cs:qword_140CFB008
                call    sub_14037A298
                mov     eax, esi

loc_1405A631F:                          ; CODE XREF: EtwSendTraceBuffer+42↑j
                                        ; EtwSendTraceBuffer+6B↑j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EtwSendTraceBuffer endp
