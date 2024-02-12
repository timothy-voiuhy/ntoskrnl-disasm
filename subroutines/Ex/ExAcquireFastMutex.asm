ExAcquireFastMutex proc near            ; CODE XREF: sub_1402604A0+142↓p
                                        ; sub_1402604A0+24E↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 0000000140431B80 SIZE 00000023 BYTES

                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                mov     [rsp+48h+arg_10], edi
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_140244B92
                movzx   eax, byte ptr [rbx+318h]

loc_140244A9B:                          ; DATA XREF: .rdata:0000000140056AB0↑o
                                        ; .rdata:0000000140056AC4↑o ...
                mov     [rsp+48h+arg_0], rbp
                mov     [rsp+48h+arg_8], edi
                test    al, al
                jz      loc_140244BC4

loc_140244AAC:                          ; CODE XREF: ExAcquireFastMutex+19E↓j
                movzx   edx, al
                mov     ebp, 1
                bsf     ecx, edx
                mov     eax, ebp
                shl     al, cl
                not     al
                mov     [rsp+48h+arg_8], ecx
                and     al, dl
                lea     rdi, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jz      loc_140244BE2
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_140244B11
                mov     rcx, rsi
                lea     rax, unk_140C4F848
                shr     rcx, 27h
                and     ecx, 1FFh
                add     ecx, 0FFFFFF00h
                cmp     [rcx+rax], bpl
                jz      loc_140431B91

loc_140244B11:                          ; CODE XREF: ExAcquireFastMutex+8B↑j
                mov     eax, 0FFFFFFFFh

loc_140244B16:                          ; CODE XREF: ExAcquireFastMutex+1ED13E↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_140244B2D:                          ; CODE XREF: ExAcquireFastMutex+188↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+48h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140244B59
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_140244BB0

loc_140244B59:                          ; CODE XREF: ExAcquireFastMutex+EB↑j
                                        ; ExAcquireFastMutex+155↓j
                mov     rbx, cr8
                mov     cr8, rbp
                lock btr dword ptr [rsi], 0
                mov     rbp, [rsp+48h+arg_0]
                jnb     short loc_140244BB7

loc_140244B6D:                          ; CODE XREF: ExAcquireFastMutex+162↓j
                                        ; DATA XREF: .pdata:00000001400CC15C↑o ...
                test    rdi, rdi
                jz      short loc_140244B76
                or      byte ptr [rdi+1Ah], 1

loc_140244B76:                          ; CODE XREF: ExAcquireFastMutex+110↑j
                mov     rax, gs:188h
                mov     [rsi+8], rax
                movzx   eax, bl
                mov     [rsi+30h], eax
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140244B92:                          ; CODE XREF: ExAcquireFastMutex+2E↑j
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+48h+var_28], rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140244BB0:                          ; CODE XREF: ExAcquireFastMutex+F7↑j
                                        ; DATA XREF: .pdata:00000001400CC168↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140244B59
; ---------------------------------------------------------------------------

loc_140244BB7:                          ; CODE XREF: ExAcquireFastMutex+10B↑j
                                        ; DATA XREF: .pdata:00000001400CC174↑o ...
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F5E40
                jmp     short loc_140244B6D
; ---------------------------------------------------------------------------

loc_140244BC4:                          ; CODE XREF: ExAcquireFastMutex+46↑j
                                        ; DATA XREF: .pdata:00000001400CC180↑o ...
                cmp     [rbx+366h], dil
                jnz     short loc_140244BED
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_140431B80

loc_140244BDD:                          ; CODE XREF: ExAcquireFastMutex+1ED12C↓j
                mov     ebp, 1

loc_140244BE2:                          ; CODE XREF: ExAcquireFastMutex+78↑j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_140244B2D
; ---------------------------------------------------------------------------

loc_140244BED:                          ; CODE XREF: ExAcquireFastMutex+16B↑j
                xchg    dil, [rbx+366h]
                movzx   eax, byte ptr [rbx+318h]
                or      al, dil
                jmp     loc_140244AAC
ExAcquireFastMutex endp
