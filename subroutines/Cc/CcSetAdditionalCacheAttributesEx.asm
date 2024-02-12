CcSetAdditionalCacheAttributesEx proc near
                                        ; DATA XREF: .rdata:000000014007F9D0↑o
                                        ; .pdata:00000001400D6F98↑o

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047C10C SIZE 0000008F BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                mov     edi, edx
                mov     rax, [rcx+28h]
                mov     r9, rcx
                movups  [rsp+58h+var_28], xmm0
                mov     rbx, [rax+8]
                cmp     dword ptr [rbx+4], 0
                jbe     loc_14047C17C
                shr     edx, 1
                mov     ecx, edi
                shr     ecx, 2
                and     dl, 1
                and     cl, 1
                test    dword ptr [rbx+98h], 2000h
                jnz     short loc_14033DBA4
                mov     r8b, cl
                mov     rcx, r9
                call    CcSetAdditionalCacheAttributes

loc_14033DBA4:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+47↑j
                mov     rcx, rbx
                call    sub_140265960
                lea     rdx, [rsp+58h+var_28]
                lea     rcx, [rax+80h]
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [rbx+98h]
                test    dil, 1
                jnz     loc_14033DC59
                btr     eax, 17h

loc_14033DBD1:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+10D↓j
                mov     [rbx+98h], eax
                test    dil, 8
                jnz     loc_14033DC62
                bt      eax, 1Ah
                jb      loc_14047C10C

loc_14033DBEB:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+13E5C0↓j
                btr     eax, 1Ah

loc_14033DBEF:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+116↓j
                mov     ecx, 10000000h
                test    dil, 10h
                jz      short loc_14033DC4D
                or      eax, ecx

loc_14033DBFC:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+101↓j
                mov     [rbx+98h], eax
                test    dil, 20h
                jnz     short loc_14033DC53
                btr     eax, 1Bh

loc_14033DC0C:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+107↓j
                mov     [rbx+98h], eax
                test    ecx, edi
                jnz     short loc_14033DC68
                btr     eax, 0Ch

loc_14033DC1A:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+11C↓j
                lea     rcx, [rsp+58h+var_28]
                mov     [rbx+98h], eax
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+58h+var_18]
                test    eax, eax
                jnz     loc_14047C115

loc_14033DC3D:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+13E5C7↓j
                                        ; CcSetAdditionalCacheAttributesEx+13E5D3↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033DC4D:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+A8↑j
                btr     eax, 1Ch
                jmp     short loc_14033DBFC
; ---------------------------------------------------------------------------

loc_14033DC53:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+B6↑j
                bts     eax, 1Bh
                jmp     short loc_14033DC0C
; ---------------------------------------------------------------------------

loc_14033DC59:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+77↑j
                bts     eax, 17h
                jmp     loc_14033DBD1
; ---------------------------------------------------------------------------

loc_14033DC62:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+8B↑j
                bts     eax, 1Ah
                jmp     short loc_14033DBEF
; ---------------------------------------------------------------------------

loc_14033DC68:                          ; CODE XREF: CcSetAdditionalCacheAttributesEx+C4↑j
                bts     eax, 0Ch
                jmp     short loc_14033DC1A
CcSetAdditionalCacheAttributesEx endp
