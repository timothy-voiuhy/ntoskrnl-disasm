FsRtlLookupPerStreamContextInternal proc near
                                        ; DATA XREF: .rdata:00000001400569F4↑o
                                        ; .pdata:00000001400CC144↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140431B1E SIZE 00000061 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                movzx   eax, byte ptr [rcx+7]
                mov     rbp, r8
                and     al, 0F0h
                mov     rsi, rdx
                mov     rbx, rcx
                cmp     al, 10h
                jb      loc_140431B1E
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                add     rcx, 48h ; 'H'
                xor     edx, edx
                call    ExAcquirePushLockSharedEx

loc_1402449C6:                          ; CODE XREF: FsRtlLookupPerStreamContextInternal+1ED1A8↓j
                mov     rax, [rbx+38h]
                lea     rcx, [rbx+38h]
                xor     edi, edi
                test    rbp, rbp
                jnz     loc_140431B2D
                test    rsi, rsi
                jz      loc_140431B64
                cmp     rax, rcx
                jz      short loc_1402449F4

loc_1402449E7:                          ; CODE XREF: FsRtlLookupPerStreamContextInternal+1ED1D9↓j
                cmp     [rax+10h], rsi
                jnz     loc_140431B53

loc_1402449F1:                          ; CODE XREF: FsRtlLookupPerStreamContextInternal+1ED1C0↓j
                mov     rdi, rax

loc_1402449F4:                          ; CODE XREF: FsRtlLookupPerStreamContextInternal+65↑j
                                        ; FsRtlLookupPerStreamContextInternal+1ED1B0↓j ...
                movzx   eax, byte ptr [rbx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_140431B70
                lea     rcx, [rbx+48h]
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rdx, gs:188h
                add     word ptr [rdx+1E4h], 1
                jz      short loc_140244A39

loc_140244A20:                          ; CODE XREF: FsRtlLookupPerStreamContextInternal+C3↓j
                                        ; FsRtlLookupPerStreamContextInternal+CD↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rdi
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140244A39:                          ; CODE XREF: FsRtlLookupPerStreamContextInternal+9E↑j
                lea     rcx, [rdx+98h]
                cmp     [rcx], rcx
                jz      short loc_140244A20
                cmp     word ptr [rdx+1E6h], 0
                jnz     short loc_140244A20
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140244A20
FsRtlLookupPerStreamContextInternal endp
