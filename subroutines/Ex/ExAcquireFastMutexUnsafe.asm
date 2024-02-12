ExAcquireFastMutexUnsafe proc near      ; CODE XREF: sub_14021A330+9D↑p
                                        ; FsRtlCheckOplockEx2+B44↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 0000000140428430 SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     rbp, gs:188h
                xor     edi, edi
                mov     [rsp+48h+arg_10], edi
                mov     rsi, rcx
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_14021DBE7
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+48h+arg_8], edi
                test    al, al
                jz      loc_14021DC19

loc_14021DB24:                          ; CODE XREF: ExAcquireFastMutexUnsafe+17E↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+48h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jz      loc_14021DC32
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_14021DB7D
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_140428441

loc_14021DB7D:                          ; CODE XREF: ExAcquireFastMutexUnsafe+89↑j
                mov     eax, 0FFFFFFFFh

loc_14021DB82:                          ; CODE XREF: ExAcquireFastMutexUnsafe+20A97E↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_14021DB99:                          ; CODE XREF: ExAcquireFastMutexUnsafe+168↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+48h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_14021DBC5
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_14021DC05

loc_14021DBC5:                          ; CODE XREF: ExAcquireFastMutexUnsafe+E7↑j
                                        ; ExAcquireFastMutexUnsafe+13A↓j
                lock btr dword ptr [rsi], 0
                jnb     short loc_14021DC0C

loc_14021DBCC:                          ; CODE XREF: ExAcquireFastMutexUnsafe+147↓j
                test    rdi, rdi
                jz      short loc_14021DBD5
                or      byte ptr [rdi+1Ah], 1

loc_14021DBD5:                          ; CODE XREF: ExAcquireFastMutexUnsafe+FF↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     [rsi+8], rbp
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021DBE7:                          ; CODE XREF: ExAcquireFastMutexUnsafe+3B↑j
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+48h+var_28], rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14021DC05:                          ; CODE XREF: ExAcquireFastMutexUnsafe+F3↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14021DBC5
; ---------------------------------------------------------------------------

loc_14021DC0C:                          ; CODE XREF: ExAcquireFastMutexUnsafe+FA↑j
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F5E40
                jmp     short loc_14021DBCC
; ---------------------------------------------------------------------------

loc_14021DC19:                          ; CODE XREF: ExAcquireFastMutexUnsafe+4E↑j
                cmp     [rbx+366h], dil
                jnz     short loc_14021DC3D
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_140428430

loc_14021DC32:                          ; CODE XREF: ExAcquireFastMutexUnsafe+76↑j
                                        ; ExAcquireFastMutexUnsafe+20A96C↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_14021DB99
; ---------------------------------------------------------------------------

loc_14021DC3D:                          ; CODE XREF: ExAcquireFastMutexUnsafe+150↑j
                xchg    dil, [rbx+366h]
                movzx   eax, byte ptr [rbx+318h]
                or      al, dil
                jmp     loc_14021DB24
ExAcquireFastMutexUnsafe endp
