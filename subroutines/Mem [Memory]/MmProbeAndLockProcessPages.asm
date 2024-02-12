MmProbeAndLockProcessPages proc near    ; CODE XREF: sub_1403457D8+62↑p
                                        ; DATA XREF: .pdata:000000014010188C↑o

var_68          = dword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h

; FUNCTION CHUNK AT 00000001407E7317 SIZE 00000022 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 68h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_30], rax
                mov     r14b, r8b
                mov     r10, rdx
                mov     rsi, rcx
                xorps   xmm0, xmm0
                movups  [rsp+88h+var_60], xmm0
                movups  [rsp+88h+var_50], xmm0
                movups  [rsp+88h+var_40], xmm0
                xor     ebx, ebx
                mov     [rsp+88h+var_68], ebx
                lea     edx, [rbx+1]
                mov     edi, edx
                test    r9d, r9d
                cmovz   edi, r9d
                mov     rax, gs:188h
                cmp     r10, [rax+0B8h]
                jz      short loc_14068F39E
                mov     ebx, edx
                mov     [rsp+88h+var_68], edx
                lea     r8, [rsp+88h+var_60]
                xor     edx, edx
                mov     rcx, r10
                call    sub_1402D3C90
                nop

loc_14068F39E:                          ; CODE XREF: MmProbeAndLockProcessPages+56↑j
                                        ; DATA XREF: .rdata:000000014006A814↑o
;   __try { // __finally(loc_1407E7317)
                mov     r8d, edi
                mov     dl, r14b
                mov     rcx, rsi
                call    MmProbeAndLockPages
                nop
;   } // starts at 14068F39E

loc_14068F3AD:                          ; DATA XREF: .rdata:000000014006A814↑o
                test    ebx, ebx
                jz      short loc_14068F3BD
                xor     edx, edx
                lea     rcx, [rsp+88h+var_60]
                call    sub_14021E230

loc_14068F3BD:                          ; CODE XREF: MmProbeAndLockProcessPages+7F↑j
                mov     rcx, [rsp+88h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 68h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14068F330
MmProbeAndLockProcessPages endp
