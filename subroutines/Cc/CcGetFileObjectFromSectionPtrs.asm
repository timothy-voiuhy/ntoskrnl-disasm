CcGetFileObjectFromSectionPtrs proc near
                                        ; DATA XREF: .pdata:00000001400F0DEC↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rcx
                lea     rdx, [rsp+48h+var_28]
                xorps   xmm0, xmm0
                lea     rcx, qword_140CDB640
                xor     eax, eax
                xor     edi, edi
                movups  [rsp+48h+var_28], xmm0
                mov     [rsp+48h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, [rbx+8]
                test    rax, rax
                jz      short loc_1404E9D78
                mov     rdi, [rax+60h]
                and     rdi, 0FFFFFFFFFFFFFFF0h
                bts     dword ptr [rax+98h], 14h

loc_1404E9D78:                          ; CODE XREF: CcGetFileObjectFromSectionPtrs+36↑j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jz      short loc_1404E9DDE
                test    al, 1
                jz      short loc_1404E9DDE
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404E9DDE
                cmp     bl, 0Fh
                ja      short loc_1404E9DDE
                cmp     al, 2
                jb      short loc_1404E9DDE
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     r9, [rax+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, byte ptr [rsp+48h+var_18]
                inc     ecx
                shl     rdx, cl
                movzx   edx, dx
                not     edx
                and     r8d, edx
                mov     [r9+14h], r8d
                jnz     short loc_1404E9DDE
                mov     rcx, rax
                call    sub_1403F2EC4

loc_1404E9DDE:                          ; CODE XREF: CcGetFileObjectFromSectionPtrs+5F↑j
                                        ; CcGetFileObjectFromSectionPtrs+63↑j ...
                mov     cr8, rbx
                mov     rbx, [rsp+48h+arg_0]
                mov     rax, rdi
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcGetFileObjectFromSectionPtrs endp
