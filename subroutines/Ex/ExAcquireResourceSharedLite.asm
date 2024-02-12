ExAcquireResourceSharedLite proc near   ; CODE XREF: sub_140202824+3B↑p
                                        ; sub_140205874+86↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041D0FE SIZE 0000009C BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                test    dl, dl
                movzx   edi, dl
                setz    cl
                inc     cl
                movzx   eax, word ptr [rbx+1Ah]
                movzx   r8d, al
                and     r8b, 41h
                cmp     r8b, 1
                jz      short loc_1402469FA
                and     ax, 1
                jnz     short loc_1402469B0

loc_14024698F:                          ; CODE XREF: ExAcquireResourceSharedLite+7F↓j
                                        ; ExAcquireResourceSharedLite+89↓j ...
                test    ax, ax
                jnz     loc_140246A18
                movzx   edx, dil
                mov     rcx, rbx
                call    sub_140246A60
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402469B0:                          ; CODE XREF: ExAcquireResourceSharedLite+2D↑j
                mov     rdx, cr8
                mov     r8, gs:188h
                cmp     dl, cl
                ja      loc_14041D0FE
                cmp     dl, 2
                jnb     loc_14041D11C

loc_1402469CE:                          ; CODE XREF: ExAcquireResourceSharedLite+1D67CA↓j
                test    byte ptr [r8+0C0h], 2
                jnz     loc_14041D14E
                cmp     dl, 1
                jnb     short loc_14024698F
                test    dword ptr [r8+74h], 400h
                jnz     short loc_14024698F
                cmp     dword ptr [r8+1E4h], 0
                jnz     short loc_14024698F
                jmp     loc_14041D16C
; ---------------------------------------------------------------------------

loc_1402469FA:                          ; CODE XREF: ExAcquireResourceSharedLite+27↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                mov     r8, rbx
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140246A18:                          ; CODE XREF: ExAcquireResourceSharedLite+32↑j
                                        ; DATA XREF: .rdata:000000014005731C↑o ...
                mov     [rsp+38h+arg_0], rsi
                call    sub_14038FABC
                movzx   r8d, dil
                mov     rdx, rax
                mov     rcx, rbx
                mov     rsi, rax
                call    ExAcquireFastResourceShared
                movzx   ebx, al
                test    al, al
                jz      loc_14041D18A

loc_140246A3F:                          ; CODE XREF: ExAcquireResourceSharedLite+1D6835↓j
                mov     rsi, [rsp+38h+arg_0]
                movzx   eax, bl
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
algn_140246A52:                         ; DATA XREF: .pdata:00000001400CC4E0↑o
                                        ; .pdata:00000001400CC4EC↑o ...
                align 20h
ExAcquireResourceSharedLite endp
