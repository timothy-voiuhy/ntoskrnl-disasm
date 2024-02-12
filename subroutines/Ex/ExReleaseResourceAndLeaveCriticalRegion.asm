ExReleaseResourceAndLeaveCriticalRegion proc near
                                        ; DATA XREF: .rdata:0000000140057440↑o
                                        ; .rdata:0000000140057450↑o ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140433180 SIZE 0000007B BYTES

                push    rbx
                sub     rsp, 50h
                movzx   eax, word ptr [rcx+1Ah]
                mov     rbx, rcx
                movzx   edx, al
                and     dl, 41h
                cmp     dl, 1
                jz      loc_140247B79
                and     ax, 1
                jnz     loc_140247B3B

loc_140247A96:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+E4↓j
                                        ; ExReleaseResourceAndLeaveCriticalRegion+F1↓j ...
                mov     [rsp+58h+arg_0], rdi
                test    ax, ax
                jnz     loc_1404331BC
                mov     rdi, gs:188h
                lea     rcx, [rbx+60h]
                xorps   xmm0, xmm0
                lea     rdx, [rsp+58h+var_28]
                xor     eax, eax
                movups  [rsp+58h+var_28], xmm0
                mov     [rsp+58h+var_18], rax
                call    KeAcquireInStackQueuedSpinLock
                mov     r8, gs:188h
                mov     rcx, rbx
                call    sub_140247BA0
                test    al, al
                jnz     loc_1404331CA

loc_140247AE3:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+1EB762↓j
                                        ; ExReleaseResourceAndLeaveCriticalRegion+1EB76B↓j
                movzx   eax, byte ptr [rbx+1Ah]
                lea     r8, [rsp+58h+var_28]
                mov     rdx, rdi
                test    al, al
                jns     short loc_140247B34
                call    sub_140247BC0

loc_140247AF8:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+C9↓j
                                        ; ExReleaseResourceAndLeaveCriticalRegion+1EB755↓j
                mov     rcx, gs:188h
                add     word ptr [rcx+1E4h], 1
                jz      short loc_140247B17

loc_140247B0B:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+B1↓j
                                        ; ExReleaseResourceAndLeaveCriticalRegion+BB↓j ...
                mov     rdi, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_140247B16  db 0CCh                 ; DATA XREF: .pdata:00000001400CC558↑o
                                        ; .pdata:00000001400CC564↑o
; ---------------------------------------------------------------------------

loc_140247B17:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+99↑j
                                        ; DATA XREF: .pdata:00000001400CC564↑o ...
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jz      short loc_140247B0B
                cmp     word ptr [rcx+1E6h], 0
                jnz     short loc_140247B0B
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140247B0B
; ---------------------------------------------------------------------------

loc_140247B34:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+81↑j
                call    sub_140245FC0
                jmp     short loc_140247AF8
; ---------------------------------------------------------------------------

loc_140247B3B:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+20↑j
                                        ; DATA XREF: .pdata:00000001400CC570↑o ...
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, 2
                ja      loc_140433180
                cmp     cl, 1
                jnb     loc_140247A96
                test    dword ptr [rdx+74h], 400h
                jnz     loc_140247A96
                cmp     dword ptr [rdx+1E4h], 0
                jnz     loc_140247A96
                jmp     loc_14043319E
; ---------------------------------------------------------------------------

loc_140247B79:                          ; CODE XREF: ExReleaseResourceAndLeaveCriticalRegion+16↑j
                xor     r9d, r9d
                mov     [rsp+58h+var_38], 0
                mov     r8, rbx
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseResourceAndLeaveCriticalRegion endp
