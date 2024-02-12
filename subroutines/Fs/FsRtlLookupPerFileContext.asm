FsRtlLookupPerFileContext proc near     ; DATA XREF: .rdata:0000000140086280↑o
                                        ; .pdata:00000001400D8948↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014048767E SIZE 0000002C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbp, [rcx]
                xor     edi, edi
                mov     r14, r8
                mov     rsi, rdx
                test    rbp, rbp
                jnz     short loc_140357E37

loc_140357E19:                          ; CODE XREF: FsRtlLookupPerFileContext+4E↓j
                xor     eax, eax

loc_140357E1B:                          ; CODE XREF: FsRtlLookupPerFileContext+A4↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140357E37:                          ; CODE XREF: FsRtlLookupPerFileContext+27↑j
                lea     rbx, [rbp+8]
                cmp     [rbx], rbx
                jz      short loc_140357E19
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockSharedEx
                test    r14, r14
                jnz     short loc_140357E96
                test    rsi, rsi
                jz      loc_14048769B
                mov     rax, [rbx]

loc_140357E6B:                          ; CODE XREF: FsRtlLookupPerFileContext+B1↓j
                cmp     rax, rbx
                jz      short loc_140357E79
                cmp     [rax+10h], rsi
                jnz     short loc_140357E9E

loc_140357E76:                          ; CODE XREF: FsRtlLookupPerFileContext+12F898↓j
                mov     rdi, rax

loc_140357E79:                          ; CODE XREF: FsRtlLookupPerFileContext+7E↑j
                                        ; FsRtlLookupPerFileContext+12F8A6↓j ...
                xor     edx, edx
                mov     rcx, rbp
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, rdi
                jmp     short loc_140357E1B
; ---------------------------------------------------------------------------

loc_140357E96:                          ; CODE XREF: FsRtlLookupPerFileContext+6D↑j
                mov     rax, [rbx]
                jmp     loc_140487691
; ---------------------------------------------------------------------------

loc_140357E9E:                          ; CODE XREF: FsRtlLookupPerFileContext+84↑j
                mov     rax, [rax]
                jmp     short loc_140357E6B
FsRtlLookupPerFileContext endp
