IoReserveKsrPersistentMemory proc near  ; DATA XREF: .pdata:000000014011CE8C↑o

var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_38], rax
                mov     rax, [rbp+4Fh+arg_20]
                xor     ebx, ebx
                xorps   xmm0, xmm0
                mov     [rbp+4Fh+var_50], rax
                mov     [rbp+4Fh+var_68], rbx
                mov     rsi, rdx
                mov     [rbp+4Fh+var_60], rbx
                movups  [rbp+4Fh+var_48], xmm0
                mov     [rbp+4Fh+var_90], ebx
                mov     [rbp+4Fh+var_70], r8
                mov     [rbp+4Fh+var_78], rcx
                mov     rax, cr8
                test    al, al
                jz      short loc_14089D7F7
                mov     rax, cr8
                movzx   r8d, al
                lea     edx, [rbx+1]
                xor     r9d, r9d
                mov     [rsp+0C0h+var_A0], rbx
                mov     ecx, 121h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D7F7:                          ; CODE XREF: IoReserveKsrPersistentMemory+57↑j
                test    rsi, rsi
                jz      loc_14089D938
                mov     rax, [rdx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      short loc_14089D820
                test    dword ptr [rcx+18Ch], 20000h
                jz      loc_14089D934

loc_14089D820:                          ; CODE XREF: IoReserveKsrPersistentMemory+8E↑j
                movzx   edx, word ptr [rdx+2]
                mov     rcx, rsi
                call    sub_1403CC478
                mov     rcx, [rsi+8]
                mov     edi, 2
                test    rcx, rcx
                jz      short loc_14089D868
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rsi+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], bx
                jz      short loc_14089D868
                mov     edx, edi
                call    sub_1403CC478
                mov     rcx, [rsi+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089D868:                          ; CODE XREF: IoReserveKsrPersistentMemory+B8↑j
                                        ; IoReserveKsrPersistentMemory+CE↑j
                mov     rax, [rsi+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14089D91B
                mov     edx, 310h
                lea     r14, [rcx+28h]
                call    sub_1403CC478
                cmp     [r14], bx
                jz      short loc_14089D8A7
                mov     edx, edi
                mov     rcx, r14
                call    sub_1403CC478
                movzx   edx, word ptr [r14]
                mov     rcx, [r14+8]
                call    sub_1403CC478

loc_14089D8A7:                          ; CODE XREF: IoReserveKsrPersistentMemory+10E↑j
                mov     rcx, [rsi+138h]
                mov     rax, [rcx+28h]
                cmp     [rax+38h], bx
                jz      short loc_14089D8E2
                mov     edx, edi
                lea     rcx, [rax+38h]
                call    sub_1403CC478
                mov     rax, [rsi+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rcx, [rsi+138h]

loc_14089D8E2:                          ; CODE XREF: IoReserveKsrPersistentMemory+136↑j
                mov     rax, [rcx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_14089D91B
                add     rcx, 38h ; '8'
                cmp     [rcx], bx
                jz      short loc_14089D91B
                mov     edx, edi
                call    sub_1403CC478
                mov     rax, [rsi+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14089D91B:                          ; CODE XREF: IoReserveKsrPersistentMemory+F6↑j
                                        ; IoReserveKsrPersistentMemory+16D↑j ...
                xor     r9d, r9d
                mov     [rsp+0C0h+var_A0], rbx
                mov     r8, rsi
                mov     rdx, rdi
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089D934:                          ; CODE XREF: IoReserveKsrPersistentMemory+9A↑j
                mov     rcx, [rbp+4Fh+var_78]

loc_14089D938:                          ; CODE XREF: IoReserveKsrPersistentMemory+7A↑j
                cmp     cs:byte_140C43080, bl
                mov     r14, rbx
                mov     r15, rbx
                mov     [rbp+4Fh+var_88], rbx
                mov     [rbp+4Fh+var_80], ebx
                mov     r13, rbx
                mov     [rbp+4Fh+var_8C], ebx
                jnz     short loc_14089D95D
                mov     edi, 0C00000BBh
                jmp     loc_14089DBE5
; ---------------------------------------------------------------------------

loc_14089D95D:                          ; CODE XREF: IoReserveKsrPersistentMemory+1D1↑j
                test    r9d, r9d
                jz      short loc_14089D96C
                mov     edi, 0C00000F2h
                jmp     loc_14089DBE5
; ---------------------------------------------------------------------------

loc_14089D96C:                          ; CODE XREF: IoReserveKsrPersistentMemory+1E0↑j
                lea     rdx, [rbp+4Fh+var_48]
                call    sub_14089DF14
                mov     edi, eax
                test    eax, eax
                js      loc_14089DBE5
                test    rsi, rsi
                jz      short loc_14089D9A8
                lea     r8, [rbp+4Fh+var_88]
                mov     rcx, rsi
                lea     rdx, [rbp+4Fh+var_8C]
                call    sub_14089DCC4
                mov     r15, [rbp+4Fh+var_88]
                mov     edi, eax
                test    eax, eax
                js      loc_14089DBAF
                mov     eax, [rbp+4Fh+var_8C]
                mov     [rbp+4Fh+var_80], eax

loc_14089D9A8:                          ; CODE XREF: IoReserveKsrPersistentMemory+202↑j
                mov     rcx, [rbp+4Fh+var_78]
                lea     r8, [rbp+4Fh+var_60]
                mov     r12d, 1
                xor     r9d, r9d
                mov     rdx, rsi
                mov     dword ptr [rsp+0C0h+var_A0], r12d
                call    sub_14089E0D8
                cmp     eax, 0C0000034h
                mov     edi, eax
                cmovz   edi, ebx
                test    edi, edi
                js      loc_14089DBAF
                mov     rax, [rbp+4Fh+var_70]
                mov     r8, rbx
                add     rax, 1007h
                mov     dword ptr [rsp+0C0h+var_98], 14h
                and     rax, 0FFFFFFFFFFFFF000h
                mov     dword ptr [rsp+0C0h+var_A0], r12d
                mov     r9, rax
                mov     [rbp+4Fh+var_88], rax
                or      rdx, 0FFFFFFFFFFFFFFFFh
                mov     rcx, rbx
                call    MmAllocatePagesForMdlEx
                mov     [rbp+4Fh+var_78], rax
                test    rax, rax
                jnz     short loc_14089DA1E

loc_14089DA14:                          ; CODE XREF: IoReserveKsrPersistentMemory+2C1↓j
                                        ; IoReserveKsrPersistentMemory+335↓j ...
                mov     edi, 0C000009Ah
                jmp     loc_14089DBAF
; ---------------------------------------------------------------------------

loc_14089DA1E:                          ; CODE XREF: IoReserveKsrPersistentMemory+292↑j
                mov     dword ptr [rsp+0C0h+var_98], 40000020h
                xor     r9d, r9d
                mov     r8d, r12d
                mov     dword ptr [rsp+0C0h+var_A0], ebx
                xor     edx, edx
                mov     rcx, rax
                call    MmMapLockedPagesSpecifyCache
                mov     [rbp+4Fh+var_58], rax
                test    rax, rax
                jz      short loc_14089DA14
                mov     r8, [rbp+4Fh+var_88]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     eax, [rbp+4Fh+var_80]
                mov     ecx, 200h
                mov     r8d, 61706E50h
                lea     eax, ds:10h[rax*2]
                mov     edx, eax
                mov     [rbp+4Fh+var_8C], eax
                call    ExAllocatePoolWithTag
                mov     [rbp+4Fh+var_88], rax
                test    rax, rax
                jz      loc_14089DBAF
                mov     r8d, [rbp+4Fh+var_8C]
                xor     edx, edx
                mov     rcx, rax
                mov     rdi, rax
                call    memset
                mov     rax, [rbp+4Fh+var_70]
                mov     edx, 38h ; '8'
                mov     ecx, 200h
                mov     [rdi+8], rax
                mov     r8d, 61706E50h
                mov     [rdi], r12w
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, rax
                jz      loc_14089DA14
                mov     [rax], rbx
                mov     [rax+10h], rbx
                mov     [rax+18h], rbx
                mov     [rax+20h], rbx
                mov     rax, [rbp+4Fh+var_58]
                mov     [r14+28h], rax
                mov     rax, [rbp+4Fh+var_78]
                mov     [r14+8], rax
                mov     [r14+30h], rdi
                movups  xmm0, [rbp+4Fh+var_48]
                movdqu  xmmword ptr [r14+10h], xmm0
                test    rsi, rsi
                jz      short loc_14089DB0A
                mov     eax, [rbp+4Fh+var_80]
                lea     rcx, [rdi+10h]
                add     eax, eax
                mov     rdx, r15
                mov     r8d, eax
                mov     [rdi+4], eax
                call    memmove
                mov     r12d, 2

loc_14089DB0A:                          ; CODE XREF: IoReserveKsrPersistentMemory+36B↑j
                mov     rdi, [rbp+4Fh+var_78]
                lea     r9, [rbp+4Fh+var_90]
                mov     rcx, rdi
                mov     [r14], r12d
                xor     r8d, r8d
                xor     edx, edx
                call    cs:KsrMdlToMemoryRuns
                nop     dword ptr [rax+rax+00h]
                mov     edx, [rbp+4Fh+var_90]
                mov     ecx, 200h
                shl     rdx, 3
                mov     r8d, 61706E50h
                call    ExAllocatePoolWithTag
                mov     r13, rax
                test    rax, rax
                jz      loc_14089DA14
                mov     r8d, [rbp+4Fh+var_90]
                lea     r9, [rbp+4Fh+var_90]
                mov     rdx, rax
                mov     rcx, rdi
                call    cs:KsrMdlToMemoryRuns
                nop     dword ptr [rax+rax+00h]
                mov     edi, eax
                test    eax, eax
                js      short loc_14089DBAF
                mov     r9, [rbp+4Fh+var_88]
                lea     rax, [rbp+4Fh+var_68]
                mov     r8d, [rbp+4Fh+var_90]
                lea     rcx, [rbp+4Fh+var_48]
                mov     [rsp+0C0h+var_98], rax
                mov     rdx, r13
                mov     eax, [rbp+4Fh+var_8C]
                mov     dword ptr [rsp+0C0h+var_A0], eax
                call    cs:KsrPersistMemoryWithMetadata
                nop     dword ptr [rax+rax+00h]
                mov     edi, eax
                test    eax, eax
                js      short loc_14089DBAF
                mov     rax, [rbp+4Fh+var_68]
                mov     [r14+20h], rax
                mov     rax, [rbp+4Fh+var_50]
                mov     [rax], r14
                mov     r14, rbx

loc_14089DBAF:                          ; CODE XREF: IoReserveKsrPersistentMemory+21C↑j
                                        ; IoReserveKsrPersistentMemory+252↑j ...
                test    r15, r15
                jz      short loc_14089DBC1
                mov     edx, 61706E50h
                mov     rcx, r15
                call    ExFreePoolWithTag

loc_14089DBC1:                          ; CODE XREF: IoReserveKsrPersistentMemory+432↑j
                test    r14, r14
                jz      short loc_14089DBD3
                mov     edx, 61706E50h
                mov     rcx, r14
                call    ExFreePoolWithTag

loc_14089DBD3:                          ; CODE XREF: IoReserveKsrPersistentMemory+444↑j
                test    r13, r13
                jz      short loc_14089DBE5
                mov     edx, 61706E50h
                mov     rcx, r13
                call    ExFreePoolWithTag

loc_14089DBE5:                          ; CODE XREF: IoReserveKsrPersistentMemory+1D8↑j
                                        ; IoReserveKsrPersistentMemory+1E7↑j ...
                mov     eax, edi
                mov     rcx, [rbp+4Fh+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0C0h+arg_18]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14089D780
IoReserveKsrPersistentMemory endp
