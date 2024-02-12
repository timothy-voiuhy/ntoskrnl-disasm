RtlDestroyAtomTable proc near           ; CODE XREF: sub_14034D4EC+4↑p
                                        ; DATA XREF: .rdata:0000000140082C74↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140827E44 SIZE 0000000A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     rdi, rcx
                mov     eax, ebx
                lock xadd [rcx+4], eax
                add     eax, ebx
                jnz     loc_1407018A6
                call    sub_140663974
                test    al, al
                jz      loc_140827E44
                xor     ebp, ebp
                lea     r14, [rdi+20h]
                cmp     [rdi+1Ch], ebp
                jbe     short loc_140701855

loc_14070183B:                          ; CODE XREF: RtlDestroyAtomTable+63↓j
                mov     rsi, [r14]
                and     qword ptr [r14], 0
                lea     r14, [r14+8]

loc_140701846:                          ; CODE XREF: RtlDestroyAtomTable+F4↓j
                mov     r15, rsi
                test    rsi, rsi
                jnz     short loc_1407018C8
                inc     ebp
                cmp     ebp, [rdi+1Ch]
                jb      short loc_14070183B

loc_140701855:                          ; CODE XREF: RtlDestroyAtomTable+49↑j
                and     dword ptr [rdi], 0
                lea     rsi, [rdi+8]
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      loc_140701907

loc_14070186D:                          ; CODE XREF: RtlDestroyAtomTable+11F↓j
                mov     rcx, rsi
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     rbx, [rdi+10h]
                mov     rcx, rbx
                call    sub_140701C58
                mov     rcx, rbx
                call    sub_140701AAC
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rdi], xmm0
                mov     rcx, rdi
                movups  xmmword ptr [rdi+10h], xmm0
                mov     [rdi+20h], rax
                call    sub_140701A1C

loc_1407018A6:                          ; CODE XREF: RtlDestroyAtomTable+2D↑j
                xor     eax, eax

loc_1407018A8:                          ; CODE XREF: RtlDestroyAtomTable+126659↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407018C8:                          ; CODE XREF: RtlDestroyAtomTable+5C↑j
                mov     rsi, [rsi]
                lea     r12, [r15+10h]
                and     qword ptr [r15], 0

loc_1407018D3:                          ; CODE XREF: RtlDestroyAtomTable+115↓j
                mov     rcx, [r12]
                cmp     rcx, r12
                jnz     short loc_1407018E9
                mov     rcx, r15
                call    sub_140701A1C
                jmp     loc_140701846
; ---------------------------------------------------------------------------

loc_1407018E9:                          ; CODE XREF: RtlDestroyAtomTable+EA↑j
                cmp     [rcx+8], r12
                jnz     short loc_140701914
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_140701914
                mov     [r12], rax
                mov     [rax+8], r12
                call    sub_140701A1C
                jmp     short loc_1407018D3
; ---------------------------------------------------------------------------

loc_140701907:                          ; CODE XREF: RtlDestroyAtomTable+77↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_14070186D
; ---------------------------------------------------------------------------

loc_140701914:                          ; CODE XREF: RtlDestroyAtomTable+FD↑j
                                        ; RtlDestroyAtomTable+106↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlDestroyAtomTable endp
