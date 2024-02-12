RtlOsDeploymentState proc near          ; DATA XREF: .pdata:0000000140122388↑o

var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+8], rbx
                push    rsi
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_10], rax
                and     [rsp+0B8h+var_88], 0
                mov     ebx, 1
                and     [rsp+0B8h+var_80], 0
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_58], xmm0
                movups  [rsp+0B8h+var_48], xmm0
                movups  xmmword ptr [r11-38h], xmm0
                movups  [rsp+0B8h+var_78], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+0B8h+var_68], xmm1

loc_14091A7E0:                          ; DATA XREF: .rdata:00000001400C094C↑o
;   __try { // __finally(loc_14091A8CA)
                lea     rdx, aRegistryMachin_29 ; "\\Registry\\Machine\\System\\Setup"
                lea     rcx, [r11-78h]
                call    RtlInitUnicodeString
                mov     dword ptr [rsp+0B8h+var_58], 30h ; '0'
                and     qword ptr [rsp+0B8h+var_58+8], 0
                mov     dword ptr [rsp+0B8h+var_48+8], 240h
                lea     rax, [rsp+0B8h+var_78]
                mov     qword ptr [rsp+0B8h+var_48], rax
                xorps   xmm0, xmm0
                movdqu  [rsp+0B8h+var_38], xmm0
                lea     r8, [rsp+0B8h+var_58]
                mov     edx, 20019h
                lea     rcx, [rsp+0B8h+var_88]
                call    ZwOpenKey
                test    eax, eax
                js      short loc_14091A897
                lea     rdx, aCompact   ; "Compact"
                lea     rcx, [rsp+0B8h+var_68]
                call    RtlInitUnicodeString
                lea     rax, [rsp+0B8h+var_80]
                mov     [rsp+0B8h+var_90], rax
                mov     [rsp+0B8h+var_98], 14h
                lea     r9, [rsp+0B8h+var_28]
                lea     esi, [rbx+1]
                mov     r8d, esi
                lea     rdx, [rsp+0B8h+var_68]
                mov     rcx, [rsp+0B8h+var_88]
                call    ZwQueryValueKey
                test    eax, eax
                js      short loc_14091A897
                cmp     [rsp+0B8h+var_24], 4
                jnz     short loc_14091A897
                cmp     [rsp+0B8h+var_20], 4
                jnz     short loc_14091A897
                cmp     [rsp+0B8h+var_1C], 0
                cmovnz  ebx, esi
;   } // starts at 14091A7E0

loc_14091A897:                          ; CODE XREF: RtlOsDeploymentState+A2↑j
                                        ; RtlOsDeploymentState+E6↑j ...
                mov     rcx, [rsp+0B8h+var_88]
                test    rcx, rcx
                jz      short loc_14091A8A6
                call    ZwClose

loc_14091A8A6:                          ; CODE XREF: RtlOsDeploymentState+10F↑j
                mov     eax, ebx
                mov     rcx, [rsp+0B8h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_0]
                add     rsp, 0B0h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2
; } // starts at 14091A790

loc_14091A8CA:                          ; DATA XREF: .rdata:00000001400C094C↑o
                                        ; .pdata:0000000140122388↑o ...
;   __finally // owned by 14091A7E0
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                mov     rcx, [rbp+30h]
                test    rcx, rcx
                jz      short loc_14091A8E2
                call    ZwClose
                nop

loc_14091A8E2:                          ; CODE XREF: RtlOsDeploymentState+14A↑j
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlOsDeploymentState endp
