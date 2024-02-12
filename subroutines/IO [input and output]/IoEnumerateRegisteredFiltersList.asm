IoEnumerateRegisteredFiltersList proc near
                                        ; DATA XREF: .rdata:0000000140094044↑o
                                        ; .pdata:000000014010A4D8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140846F36 SIZE 00000027 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                xor     ebx, ebx
                mov     rdi, r8
                mov     esi, edx
                mov     r14, rcx
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, unk_140C459A0
                call    ExAcquireResourceExclusiveLite
                test    al, al
                jz      loc_140846F36

loc_14076B1F9:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+DBDA8↓j
                mov     rax, cs:qword_140C45AF0
                lea     rbp, qword_140C45AF0
                shr     esi, 3

loc_14076B20A:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+D4↓j
                cmp     rax, rbp
                jnz     short loc_14076B27F
                cmp     esi, ebx
                mov     [rdi], ebx
                mov     rbx, cs:qword_140C45AF0
                sbb     edi, edi
                and     edi, 0C0000023h
                test    esi, esi
                jz      short loc_14076B247

loc_14076B226:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+95↓j
                cmp     rbx, rbp
                jz      short loc_14076B247
                mov     rcx, [rbx+10h]
                call    ObfReferenceObject
                mov     rax, [rbx+10h]
                mov     [r14], rax
                add     r14, 8
                mov     rbx, [rbx]
                add     esi, 0FFFFFFFFh
                jnz     short loc_14076B226

loc_14076B247:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+74↑j
                                        ; IoEnumerateRegisteredFiltersList+79↑j
                lea     rcx, unk_140C459A0
                call    ExReleaseResourceLite

loc_14076B253:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+DBD94↓j
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14076B27F:                          ; CODE XREF: IoEnumerateRegisteredFiltersList+5D↑j
                mov     rax, [rax]
                inc     ebx
                jmp     short loc_14076B20A
IoEnumerateRegisteredFiltersList endp
