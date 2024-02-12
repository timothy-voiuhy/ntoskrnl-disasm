FsRtlInsertPerStreamContext proc near   ; DATA XREF: .rdata:000000014007EB30↑o
                                        ; .pdata:00000001400D6D64↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047B0BE SIZE 0000002F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14047B0E3
                test    byte ptr [rcx+6], 2
                jz      loc_14047B0E3
                mov     al, [rcx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_14047B0BE
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                add     rcx, 48h ; 'H'
                call    ExAcquirePushLockExclusiveEx

loc_14033AF80:                          ; CODE XREF: FsRtlInsertPerStreamContext+140198↓j
                lea     rax, [rbx+38h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_14047B0CD
                mov     [rdi+8], rax
                mov     [rdi], rcx
                mov     [rcx+8], rdi
                mov     [rax], rdi
                mov     al, [rbx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_14047B0D4
                xor     edx, edx
                lea     rcx, [rbx+48h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14033AFC5:                          ; CODE XREF: FsRtlInsertPerStreamContext+1401AE↓j
                xor     eax, eax

loc_14033AFC7:                          ; CODE XREF: FsRtlInsertPerStreamContext+1401B8↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInsertPerStreamContext endp
