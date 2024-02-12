FsRtlUninitializeOplock proc near       ; DATA XREF: .pdata:00000001400D73DC↑o

var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = word ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041B0DA SIZE 00000021 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rdi, [rcx]
                xor     r14d, r14d
                test    rdi, rdi
                jnz     short loc_14034207D

loc_140342062:                          ; CODE XREF: FsRtlUninitializeOplock+366↓j
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034207D:                          ; CODE XREF: FsRtlUninitializeOplock+20↑j
                mov     [rsp+68h+arg_0], rdi
                mov     [rcx], r14
                mov     rcx, [rdi+98h]
                call    ExAcquireFastMutexUnsafe
                nop

loc_140342092:                          ; DATA XREF: .rdata:00000001400808FC↑o
;   __try { // __finally(loc_14041B0DA)
                mov     r15d, 7

loc_140342098:                          ; CODE XREF: FsRtlUninitializeOplock+174↓j
                lea     rax, [rdi+58h]
                mov     rbx, [rax]
                cmp     rbx, rax
                jnz     loc_14034214E
                mov     r12d, 1
                lea     r13d, [r12+17h]

loc_1403420B3:                          ; CODE XREF: FsRtlUninitializeOplock+21B↓j
                lea     rcx, [rdi+28h]
                mov     rax, [rcx]
                cmp     rax, rcx
                jnz     loc_1403421B9

loc_1403420C3:                          ; CODE XREF: FsRtlUninitializeOplock:loc_1403422EE↓j
                lea     rax, [rdi+38h]
                mov     rbx, [rax]
                cmp     rbx, rax
                jnz     loc_140342260

loc_1403420D3:                          ; CODE XREF: FsRtlUninitializeOplock+2EC↓j
                lea     rax, [rdi+48h]
                mov     rbx, [rax]
                cmp     rbx, rax
                jnz     loc_1403422F3
                mov     rsi, [rdi]
                test    rsi, rsi
                jz      loc_140342376
                mov     rbx, [rsi+0B8h]
                mov     rcx, r15
                call    KeAcquireQueuedSpinLock
                mov     [rsi+45h], al
                mov     rax, r14
                xchg    rax, [rsi+68h]
                mov     dl, [rsi+45h]
                mov     rcx, r15
                call    KeReleaseQueuedSpinLock
                cmp     dword ptr [rbx+18h], 90240h
                jnz     loc_140342331
                mov     rcx, [rsi+18h]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rcx], xmm0
                mov     [rcx+10h], rax
                mov     dword ptr [rcx], 180001h
                mov     eax, [rdi+90h]
                shr     eax, 0Ch
                and     eax, r15d
                mov     [rcx+4], eax
                mov     [rsi+38h], r13
                jmp     loc_140342339
; ---------------------------------------------------------------------------

loc_14034214E:                          ; CODE XREF: FsRtlUninitializeOplock+62↑j
                mov     rcx, [rbx]
                cmp     [rbx+8], rax
                jnz     loc_1403422C6
                cmp     [rcx+8], rbx
                jnz     loc_1403422C6
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     rsi, [rbx+10h]
                test    rsi, rsi
                jz      short loc_14034219A
                mov     rcx, r15
                call    KeAcquireQueuedSpinLock
                mov     [rsi+45h], al
                mov     rax, r14
                xchg    rax, [rsi+68h]
                mov     dl, [rsi+45h]
                mov     rcx, r15
                call    KeReleaseQueuedSpinLock
                mov     [rsi+38h], r14
                mov     rsi, [rbx+10h]

loc_14034219A:                          ; CODE XREF: FsRtlUninitializeOplock+133↑j
                mov     rax, [rbx+18h]
                mov     rdx, rsi
                mov     rcx, [rbx+20h]
                call    sub_1404079D0
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_140342098
; ---------------------------------------------------------------------------

loc_1403421B9:                          ; CODE XREF: FsRtlUninitializeOplock+7D↑j
                lea     rbx, [rax-0A8h]
                mov     rsi, [rbx+0B8h]
                mov     rdx, [rax]
                cmp     [rax+8], rcx
                jnz     loc_1403422C6
                cmp     [rdx+8], rax
                jnz     loc_1403422C6
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     rcx, r15
                call    KeAcquireQueuedSpinLock
                mov     [rbx+45h], al
                mov     rax, r14
                xchg    rax, [rbx+68h]
                mov     dl, [rbx+45h]
                mov     rcx, r15
                call    KeReleaseQueuedSpinLock
                mov     rcx, [rsi+30h]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                cmp     dword ptr [rsi+18h], 90240h
                jnz     short loc_140342244
                mov     rcx, [rbx+18h]
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rcx], xmm0
                mov     [rcx+10h], rax
                mov     dword ptr [rcx], 180001h
                mov     eax, [rdi+90h]
                shr     eax, 0Ch
                and     eax, r15d
                mov     [rcx+4], eax
                mov     [rbx+38h], r13
                jmp     short loc_14034224C
; ---------------------------------------------------------------------------

loc_140342244:                          ; CODE XREF: FsRtlUninitializeOplock+1D7↑j
                mov     qword ptr [rbx+38h], 8

loc_14034224C:                          ; CODE XREF: FsRtlUninitializeOplock+202↑j
                mov     [rbx+30h], r14d
                mov     dl, r12b
                mov     rcx, rbx
                call    IofCompleteRequest
                jmp     loc_1403420B3
; ---------------------------------------------------------------------------

loc_140342260:                          ; CODE XREF: FsRtlUninitializeOplock+8D↑j
                test    dword ptr [rdi+90h], 10000h
                jz      short loc_1403422CD
                lea     r10, [rbx+38h]
                cmp     [r10], r14
                jz      short loc_1403422CD
                mov     rcx, rbx
                call    sub_14021B14C
                mov     rcx, [r10]
                mov     rax, [r10+8]
                cmp     [rcx+8], r10
                jnz     short loc_1403422C6
                cmp     [rax], r10
                jnz     short loc_1403422C6
                mov     [rax], rcx
                mov     [rcx+8], rax
                lea     rax, [rdi+78h]
                cmp     [rax], rax
                jnz     short loc_1403422A9
                and     dword ptr [rdi+90h], 0FFFCFFFFh

loc_1403422A9:                          ; CODE XREF: FsRtlUninitializeOplock+25D↑j
                cmp     [rbx+28h], r14
                jz      short loc_1403422BA
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403755C0

loc_1403422BA:                          ; CODE XREF: FsRtlUninitializeOplock+26D↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_1403422EE
; ---------------------------------------------------------------------------

loc_1403422C6:                          ; CODE XREF: FsRtlUninitializeOplock+115↑j
                                        ; FsRtlUninitializeOplock+11F↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1403422CD:                          ; CODE XREF: FsRtlUninitializeOplock+22A↑j
                                        ; FsRtlUninitializeOplock+233↑j
                mov     [rsp+68h+var_38], r14w
                mov     [rsp+68h+var_40], r14d
                mov     [rsp+68h+var_48], r14d
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1403F0DB0

loc_1403422EE:                          ; CODE XREF: FsRtlUninitializeOplock+284↑j
                jmp     loc_1403420C3
; ---------------------------------------------------------------------------

loc_1403422F3:                          ; CODE XREF: FsRtlUninitializeOplock+9D↑j
                mov     rcx, rbx
                call    sub_14021B14C
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14037A1D4
                mov     rcx, [rbx+18h]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403755C0
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_1403420D3
; ---------------------------------------------------------------------------

loc_140342331:                          ; CODE XREF: FsRtlUninitializeOplock+DA↑j
                mov     qword ptr [rsi+38h], 8

loc_140342339:                          ; CODE XREF: FsRtlUninitializeOplock+109↑j
                mov     [rsi+30h], r14d
                mov     dl, r12b
                mov     rcx, rsi
                call    IofCompleteRequest
                mov     [rdi], r14
                mov     rcx, [rdi+8]
                test    rcx, rcx
                jz      short loc_14034235E
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag

loc_14034235E:                          ; CODE XREF: FsRtlUninitializeOplock+312↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14037A1D4
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1403755C0
                nop
;   } // starts at 140342092

loc_140342376:                          ; CODE XREF: FsRtlUninitializeOplock+A9↑j
                                        ; DATA XREF: .rdata:00000001400808FC↑o
                mov     rcx, [rdi+98h]
                call    ExReleaseFastMutexUnsafe
                mov     rcx, [rdi+88h]
                test    rcx, rcx
                jnz     short loc_1403423AB

loc_14034238E:                          ; CODE XREF: FsRtlUninitializeOplock+372↓j
                xor     edx, edx
                mov     rcx, [rdi+98h]
                call    ExFreePoolWithTag
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                jmp     loc_140342062
; ---------------------------------------------------------------------------

loc_1403423AB:                          ; CODE XREF: FsRtlUninitializeOplock+34C↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_14034238E
; } // starts at 140342040
FsRtlUninitializeOplock endp
