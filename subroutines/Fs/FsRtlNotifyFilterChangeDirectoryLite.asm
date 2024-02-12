FsRtlNotifyFilterChangeDirectoryLite proc near
                                        ; DATA XREF: .rdata:000000014007FCC0↑o
                                        ; .pdata:0000000140104D00↑o

var_68          = dword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407E8125 SIZE 00000055 BYTES
; FUNCTION CHUNK AT 0000000140825B04 SIZE 0000002B BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r12d, r9d
                mov     r13, rdx
                mov     r15, rcx
                mov     rdi, [rsp+88h+arg_28]
                xor     esi, esi
                cmp     [rdx], rdx
                jnz     short loc_1406F446A
                test    rdi, rdi
                jz      loc_1406F470B

loc_1406F446A:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2F↑j
                cmp     [rcx], rsi
                jz      loc_1406F471C

loc_1406F4473:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+310↓j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1316E2↓j
                mov     rbx, gs:188h
                mov     rax, [r15]
                cmp     rbx, [rax+38h]
                jz      short loc_1406F4497
                mov     rcx, rax
                call    ExAcquireFastMutexUnsafe
                mov     rax, [r15]
                mov     [rax+38h], rbx
                mov     rax, [r15]

loc_1406F4497:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+53↑j
                mov     r9d, 1
                add     [rax+40h], r9d

loc_1406F44A1:                          ; DATA XREF: .rdata:000000014007FCAC↑o
;   __try { // __finally(loc_1407E8125)
                test    rdi, rdi
                jz      loc_1406F4671
                mov     r14, [rdi+0B8h]
                mov     [rsp+88h+var_50], r14
                mov     [rdi+30h], esi
                mov     [rdi+38h], rsi
                mov     rax, [r14+30h]
                test    dword ptr [rax+50h], 4000h
                jnz     loc_1406F467B
                mov     rdx, [rsp+88h+arg_10]
                mov     rcx, r13
                call    sub_1406F4754
                mov     rbx, rax
                mov     [rsp+88h+var_58], rax
                test    rax, rax
                jz      short loc_1406F455D
                movzx   eax, word ptr [rax+48h]
                test    al, 4
                jnz     loc_1406F467B
                test    al, 20h
                jnz     loc_1406F46C1
                movzx   ecx, ax
                and     cx, 8
                test    al, 2
                jnz     loc_1406F46CE

loc_1406F450E:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2A1↓j
                mov     r8d, [rbx+68h]
                test    r8d, r8d
                jnz     loc_1406F464F

loc_1406F451B:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+213↓j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+222↓j
                mov     [rdi+38h], rbx
                or      [r14+3], r9b
                lea     rax, [rdi+0A8h]
                lea     rcx, [rbx+30h]
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_1406F46D9
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                lock add [rbx+70h], r9d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033E2D8
                jmp     loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F455D:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+B9↑j
                mov     edx, 80h
                lea     ecx, [rdx-6Fh]
                mov     r8d, 4E725346h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+88h+var_58], rax
                xor     edx, edx
                mov     r8d, 80h
                mov     rcx, rax
                call    memset
                or      word ptr [rbx+48h], 40h
                mov     rax, [r15]
                mov     [rbx], rax
                mov     rax, [rsp+88h+arg_10]
                mov     [rbx+8], rax
                mov     rax, [rsp+88h+arg_30]
                mov     [rbx+10h], rax
                mov     rax, [rsp+88h+arg_38]
                mov     [rbx+18h], rax
                mov     [rsp+88h+arg_38], rsi
                mov     rax, [rsp+88h+arg_40]
                mov     [rbx+40h], rax
                lea     rax, [rbx+30h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     r9d, 1
                test    r9b, r12b
                jnz     short loc_1406F4648

loc_1406F45E1:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+21D↓j
                test    r12b, 4
                jnz     loc_1406F46B3

loc_1406F45EB:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+28C↓j
                mov     eax, [rsp+88h+arg_20]
                mov     [rbx+4Ch], eax
                test    r12b, 2
                jnz     short loc_1406F4602
                mov     eax, [r14+8]
                mov     [rbx+60h], eax

loc_1406F4602:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+1C9↑j
                mov     rax, [rdi+98h]
                mov     [rsp+88h+var_48], rax
                mov     rax, [rax+220h]
                mov     [rbx+78h], rax
                lea     rax, [rbx+20h]
                mov     rcx, [r13+8]
                cmp     [rcx], r13
                jnz     loc_1406F46D9
                mov     [rax], r13
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [r13+8], rax
                mov     [rbx+70h], r9d
                mov     r14, [rdi+0B8h]
                jmp     loc_1406F451B
; ---------------------------------------------------------------------------

loc_1406F4648:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+1AF↑j
                or      [rbx+48h], r9w
                jmp     short loc_1406F45E1
; ---------------------------------------------------------------------------

loc_1406F464F:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+E5↑j
                test    cx, cx
                jnz     loc_1406F451B
                and     qword ptr [rbx+68h], 0
                mov     [rsp+88h+var_68], esi
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406F4230
                jmp     short loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F4671:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+74↑j
                mov     rcx, r13
                call    sub_14088EC44
                jmp     short loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F467B:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+98↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+C1↑j
                or      [r14+3], r9b
                mov     dword ptr [rdi+30h], 10Bh
                jmp     short loc_1406F46A6
; ---------------------------------------------------------------------------

loc_1406F4688:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2A7↓j
                mov     ecx, 0FFFDh
                and     ax, cx
                mov     [rbx+48h], ax
                mov     rax, [rdi+0B8h]
                or      [rax+3], r9b
                mov     dword ptr [rdi+30h], 10Ch

loc_1406F46A6:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+256↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+29C↓j
                mov     dl, r9b
                mov     rcx, rdi
                call    IofCompleteRequest
                jmp     short loc_1406F46E0
; ---------------------------------------------------------------------------

loc_1406F46B3:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+1B5↑j
                mov     eax, 80h
                or      [rbx+48h], ax
                jmp     loc_1406F45EB
; ---------------------------------------------------------------------------

loc_1406F46C1:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+C9↑j
                or      [r14+3], r9b
                mov     dword ptr [rdi+30h], 0C0000056h
                jmp     short loc_1406F46A6
; ---------------------------------------------------------------------------

loc_1406F46CE:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+D8↑j
                test    cx, cx
                jnz     loc_1406F450E
                jmp     short loc_1406F4688
; ---------------------------------------------------------------------------

loc_1406F46D9:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+105↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1F4↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
;   } // starts at 1406F44A1
; ---------------------------------------------------------------------------

loc_1406F46E0:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+128↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+23F↑j ...
                mov     rax, [r15]
                dec     dword ptr [rax+40h]
                mov     rax, [r15]
                cmp     [rax+40h], esi
                jnz     short loc_1406F46FA
                mov     [rax+38h], rsi
                mov     rcx, [r15]
                call    ExReleaseFastMutexUnsafe

loc_1406F46FA:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+2BC↑j
                mov     rbx, [rsp+88h+arg_38]
                test    rbx, rbx
                jnz     loc_140825B17

loc_1406F470B:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+34↑j
                                        ; FsRtlNotifyFilterChangeDirectoryLite+1316FA↓j
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406F471C:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectoryLite+3D↑j
                mov     [rsp+88h+arg_8], rsi
                lea     rcx, [rsp+88h+arg_8]
                call    FsRtlNotifyInitializeSync
                mov     rcx, [rsp+88h+arg_8]
                xor     eax, eax
                lock cmpxchg [r15], rcx
                jz      loc_1406F4473
                jmp     loc_140825B04
; } // starts at 1406F4430
FsRtlNotifyFilterChangeDirectoryLite endp
