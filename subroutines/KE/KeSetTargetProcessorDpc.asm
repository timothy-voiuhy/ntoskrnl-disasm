KeSetTargetProcessorDpc proc near       ; DATA XREF: .pdata:00000001400F39CC↑o

arg_0           = qword ptr  8
arg_8           = word ptr  10h
arg_A           = byte ptr  12h
arg_B           = byte ptr  13h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140CFC47E, 0
                mov     rsi, rcx
                movsx   edi, dl
                jz      short loc_140519EFA
                movzx   ebx, cs:word_140CFB014
                dec     bx
                jmp     short loc_140519EFC
; ---------------------------------------------------------------------------

loc_140519EFA:                          ; CODE XREF: KeSetTargetProcessorDpc+1C↑j
                xor     ebx, ebx

loc_140519EFC:                          ; CODE XREF: KeSetTargetProcessorDpc+28↑j
                movzx   ecx, bx
                call    KeQueryActiveProcessorCountEx
                cmp     edi, eax
                jnb     short loc_140519F24
                lea     rdx, [rsp+28h+arg_8]
                mov     [rsp+28h+arg_8], bx
                mov     rcx, rsi
                mov     [rsp+28h+arg_A], dil
                mov     [rsp+28h+arg_B], 0
                call    KeSetTargetProcessorDpcEx

loc_140519F24:                          ; CODE XREF: KeSetTargetProcessorDpc+36↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSetTargetProcessorDpc endp
