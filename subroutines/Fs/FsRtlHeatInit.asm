FsRtlHeatInit   proc near               ; DATA XREF: .pdata:000000014011C3C4↑o

var_D0          = qword ptr -0D0h
var_C0          = byte ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_30          = qword ptr -30h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-37h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                and     [rbp+57h+var_9C], 0
                lea     r9, [rbp+57h+var_B8]
                and     [rbp+57h+var_AC], 0
                xor     eax, eax
                mov     [rcx], rax
                mov     r14, r8
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_C0], 0
                mov     [rbp+57h+var_B8], rax
                lea     r8, [rbp+57h+var_BC]
                lea     rax, aRegistryMachin_101 ; "\\Registry\\Machine\\System\\CurrentCon"...
                mov     [rbp+57h+var_BC], 5Ch ; '\'
                mov     [rbp+57h+var_98], rax
                mov     rsi, rdx
                lea     rax, aEnabled   ; "Enabled"
                mov     [rbp+57h+var_A0], 820080h
                mov     [rbp+57h+var_A8], rax
                lea     rdx, [rbp+57h+var_B0]
                lea     rax, [rbp+57h+var_C0]
                mov     [rbp+57h+var_B0], 10000Eh
                mov     rdi, rcx
                mov     [rsp+0F0h+var_D0], rax
                lea     rcx, [rbp+57h+var_A0]
                call    sub_14088EAA0
                test    eax, eax
                js      short loc_14088E684
                mov     rbx, [rbp+57h+var_B8]
                mov     eax, [rbx+8]
                cmp     dword ptr [rax+rbx], 0
                jnz     short loc_14088E684
                mov     edi, 0C0000001h
                jmp     short loc_14088E6DE
; ---------------------------------------------------------------------------

loc_14088E684:                          ; CODE XREF: FsRtlHeatInit+8E↑j
                                        ; FsRtlHeatInit+9B↑j
                lea     rax, aMeasuredoperat ; "MeasuredOperations"
                mov     [rbp+57h+var_B0], 260024h
                mov     [rbp+57h+var_A8], rax
                lea     r9, [rbp+57h+var_B8]
                lea     rax, [rbp+57h+var_C0]
                lea     r8, [rbp+57h+var_BC]
                mov     [rsp+0F0h+var_D0], rax
                lea     rdx, [rbp+57h+var_B0]
                lea     rcx, [rbp+57h+var_A0]
                call    sub_14088EAA0
                mov     rbx, [rbp+57h+var_B8]
                test    eax, eax
                js      short loc_14088E6CA
                mov     eax, [rbx+8]
                mov     ecx, [rax+rbx]
                and     ecx, 7
                or      [rdi+4], ecx
                jmp     short loc_14088E6CE
; ---------------------------------------------------------------------------

loc_14088E6CA:                          ; CODE XREF: FsRtlHeatInit+DA↑j
                or      dword ptr [rdi+4], 7

loc_14088E6CE:                          ; CODE XREF: FsRtlHeatInit+E8↑j
                mov     r8, rdi
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_14088E878
                mov     edi, eax

loc_14088E6DE:                          ; CODE XREF: FsRtlHeatInit+A2↑j
                cmp     [rbp+57h+var_C0], 0
                jz      short loc_14088E6EE
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14088E6EE:                          ; CODE XREF: FsRtlHeatInit+102↑j
                mov     eax, edi
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0D0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088E5E0
FsRtlHeatInit   endp

algn_14088E70B:                         ; DATA XREF: .pdata:000000014011C3C4↑o
                align 20h
; Exported entry 448. FsRtlHeatLogIo

; =============== S U B R O U T I N E =======================================


