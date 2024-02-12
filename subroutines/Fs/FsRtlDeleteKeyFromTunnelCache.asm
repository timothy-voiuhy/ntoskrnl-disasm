FsRtlDeleteKeyFromTunnelCache proc near ; DATA XREF: .pdata:00000001401044E4↑o

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+20h], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                mov     [rsp+38h+arg_10], 1
                cmp     cs:dword_140D2D040, ebx
                mov     rsi, rdx
                mov     rdi, rcx
                jz      short loc_1406E62A8
                lea     rax, [r11-18h]
                mov     [r11-10h], rax
                lea     rax, [r11-18h]
                mov     [r11-18h], rax
                call    ExAcquireFastMutex
                mov     rax, [rdi+38h]
                jmp     short loc_1406E624B
; ---------------------------------------------------------------------------

loc_1406E6244:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+56↓j
                mov     rbx, rax

loc_1406E6247:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+54↓j
                mov     rax, [rax+8]

loc_1406E624B:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+42↑j
                                        ; FsRtlDeleteKeyFromTunnelCache+61↓j
                test    rax, rax
                jz      short loc_1406E6263
                cmp     [rax+30h], rsi
                ja      short loc_1406E6247
                jnb     short loc_1406E6244
                test    rbx, rbx
                jnz     short loc_1406E6268
                mov     rax, [rax+10h]
                jmp     short loc_1406E624B
; ---------------------------------------------------------------------------

loc_1406E6263:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+4E↑j
                test    rbx, rbx
                jz      short loc_1406E6296

loc_1406E6268:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+5B↑j
                                        ; FsRtlDeleteKeyFromTunnelCache+94↓j
                mov     rcx, rbx
                call    RtlRealSuccessor
                mov     rbp, rax
                cmp     [rbx+30h], rsi
                jnz     short loc_1406E6296
                lea     r9, [rsp+38h+arg_10]
                mov     rdx, rbx
                lea     r8, [rsp+38h+var_18]
                mov     rcx, rdi
                call    sub_1403265D4
                mov     rbx, rbp
                test    rbp, rbp
                jnz     short loc_1406E6268

loc_1406E6296:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+66↑j
                                        ; FsRtlDeleteKeyFromTunnelCache+77↑j
                mov     rcx, rdi
                call    KeReleaseGuardedMutex
                lea     rcx, [rsp+38h+var_18]
                call    sub_140326670

loc_1406E62A8:                          ; CODE XREF: FsRtlDeleteKeyFromTunnelCache+27↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlDeleteKeyFromTunnelCache endp
