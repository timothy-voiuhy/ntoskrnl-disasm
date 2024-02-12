ExAcquirePushLockSharedEx proc near     ; CODE XREF: sub_140200540+30↑p
                                        ; sub_140208D10+32↑p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014041CFC4 SIZE 00000029 BYTES

                push    rsi
                push    rdi
                sub     rsp, 38h
                xor     edi, edi
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041CFC4

loc_140245548:                          ; DATA XREF: .rdata:0000000140056DF4↑o
                                        ; .rdata:0000000140056E04↑o ...
                mov     [rsp+48h+var_18], rbx
                test    dl, 2
                jnz     loc_140245631
                mov     [rsp+48h+arg_10], edi
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_140245655
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+48h+arg_8], edi
                test    al, al
                jz      loc_14024569B

loc_140245590:                          ; CODE XREF: ExAcquirePushLockSharedEx+19D↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+48h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jz      loc_1402456B4
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_1402455E9
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_140245673

loc_1402455E9:                          ; CODE XREF: ExAcquirePushLockSharedEx+95↑j
                mov     eax, 0FFFFFFFFh

loc_1402455EE:                          ; CODE XREF: ExAcquirePushLockSharedEx+14F↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_140245605:                          ; CODE XREF: ExAcquirePushLockSharedEx+18A↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+48h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140245631
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_140245694

loc_140245631:                          ; CODE XREF: ExAcquirePushLockSharedEx+20↑j
                                        ; ExAcquirePushLockSharedEx+F3↑j ...
                mov     ecx, 11h
                xor     eax, eax
                lock cmpxchg [rsi], rcx
                jnz     short loc_140245684

loc_14024563F:                          ; CODE XREF: ExAcquirePushLockSharedEx+162↓j
                test    rdi, rdi
                jz      short loc_140245648
                or      byte ptr [rdi+1Ah], 1

loc_140245648:                          ; CODE XREF: ExAcquirePushLockSharedEx+112↑j
                mov     rbx, [rsp+48h+var_18]
                add     rsp, 38h
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
byte_140245654  db 0CCh                 ; DATA XREF: .pdata:00000001400CC2A0↑o
                                        ; .pdata:00000001400CC2AC↑o
; ---------------------------------------------------------------------------

loc_140245655:                          ; CODE XREF: ExAcquirePushLockSharedEx+47↑j
                                        ; DATA XREF: .pdata:00000001400CC2AC↑o ...
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+48h+var_28], rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140245673:                          ; CODE XREF: ExAcquirePushLockSharedEx+B3↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     loc_1402455EE
; ---------------------------------------------------------------------------

loc_140245684:                          ; CODE XREF: ExAcquirePushLockSharedEx+10D↑j
                mov     r8, rsi
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F6140
                jmp     short loc_14024563F
; ---------------------------------------------------------------------------

loc_140245694:                          ; CODE XREF: ExAcquirePushLockSharedEx+FF↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140245631
; ---------------------------------------------------------------------------

loc_14024569B:                          ; CODE XREF: ExAcquirePushLockSharedEx+5A↑j
                cmp     [rbx+366h], dil
                jnz     short loc_1402456BF
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_14041CFDC

loc_1402456B4:                          ; CODE XREF: ExAcquirePushLockSharedEx+82↑j
                                        ; ExAcquirePushLockSharedEx+1D7AB8↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_140245605
; ---------------------------------------------------------------------------

loc_1402456BF:                          ; CODE XREF: ExAcquirePushLockSharedEx+172↑j
                mov     eax, edi
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_140245590
ExAcquirePushLockSharedEx endp
