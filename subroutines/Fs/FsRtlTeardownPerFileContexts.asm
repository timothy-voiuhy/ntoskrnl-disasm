FsRtlTeardownPerFileContexts proc near  ; DATA XREF: .pdata:000000014010518C↑o

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407E83FD SIZE 00000030 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                xchg    rbx, [rcx]
                mov     [rsp+38h+arg_8], rbx
                test    rbx, rbx
                jnz     short loc_1406FA79F

loc_1406FA78E:                          ; CODE XREF: FsRtlTeardownPerFileContexts+EF↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406FA79F:                          ; CODE XREF: FsRtlTeardownPerFileContexts+1C↑j
                lea     rdi, [rbx+8]
                cmp     [rdi], rdi
                jz      loc_1406FA852
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                mov     [rsp+38h+var_18], 1

loc_1406FA7CB:                          ; CODE XREF: FsRtlTeardownPerFileContexts+C1↓j
                                        ; DATA XREF: .rdata:0000000140081418↑o
;   __try { // __finally(loc_1407E83FD)
                mov     rsi, [rdi]
                cmp     rsi, rdi
                jz      short loc_1406FA83A
                mov     rax, [rsi]
                cmp     [rsi+8], rdi
                jnz     short loc_1406FA833
                cmp     [rax+8], rsi
                jnz     short loc_1406FA833
                mov     [rdi], rax
                mov     [rax+8], rdi
                xor     edx, edx
                mov     rcx, rbx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     [rsp+38h+var_18], 0
                mov     rax, [rsi+20h]
                mov     rcx, rsi
                call    sub_1404079D0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                mov     [rsp+38h+var_18], 1
                jmp     short loc_1406FA7CB
; ---------------------------------------------------------------------------

loc_1406FA833:                          ; CODE XREF: FsRtlTeardownPerFileContexts+6A↑j
                                        ; FsRtlTeardownPerFileContexts+70↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
;   } // starts at 1406FA7CB
; ---------------------------------------------------------------------------

loc_1406FA83A:                          ; CODE XREF: FsRtlTeardownPerFileContexts+61↑j
                                        ; DATA XREF: .rdata:0000000140081418↑o
                xor     edx, edx
                mov     rcx, rbx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1406FA852:                          ; CODE XREF: FsRtlTeardownPerFileContexts+36↑j
                mov     edx, 63665346h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_1406FA78E
; } // starts at 1406FA770
FsRtlTeardownPerFileContexts endp
