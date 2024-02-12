HalAllocateHardwareCounters proc near   ; DATA XREF: .pdata:000000014011AA14↑o

var_E8          = dword ptr -0E8h
var_E4          = byte ptr -0E4h
var_E0          = qword ptr -0E0h
var_38          = qword ptr -38h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+108h+var_38], rax
                mov     rbp, r8
                mov     esi, edx
                mov     rbx, rcx
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+108h+var_E8]
                mov     r14, r9
                call    memset
                xor     dil, dil
                test    r14, r14
                jnz     short loc_140865B3F
                mov     ecx, 0C000000Dh
                jmp     loc_140865C15
; ---------------------------------------------------------------------------

loc_140865B3F:                          ; CODE XREF: HalAllocateHardwareCounters+43↑j
                and     qword ptr [r14], 0
                test    rbx, rbx
                jnz     short loc_140865B5A
                test    rbp, rbp
                jnz     short loc_140865B5A
                mov     rcx, r14
                call    sub_1404B9314
                jmp     loc_140865C05
; ---------------------------------------------------------------------------

loc_140865B5A:                          ; CODE XREF: HalAllocateHardwareCounters+56↑j
                                        ; HalAllocateHardwareCounters+5B↑j
                call    sub_1404B92E4
                mov     ecx, eax
                test    eax, eax
                js      loc_140865C15
                xor     edx, edx
                mov     [rsp+108h+var_E8], 140001h
                mov     r8d, 0A4h
                lea     rcx, [rsp+108h+var_E4]
                mov     edi, 1
                call    memset
                test    rbx, rbx
                jz      short loc_140865BBA
                test    esi, esi
                jz      short loc_140865BDE
                mov     rdx, rsi

loc_140865B94:                          ; CODE XREF: HalAllocateHardwareCounters+C6↓j
                movzx   ecx, word ptr [rbx+8]
                mov     r8, [rbx]
                cmp     word ptr [rsp+108h+var_E8], cx
                ja      short loc_140865BAA
                lea     eax, [rdi+rcx]
                mov     word ptr [rsp+108h+var_E8], ax

loc_140865BAA:                          ; CODE XREF: HalAllocateHardwareCounters+B0↑j
                or      [rsp+rcx*8+108h+var_E0], r8
                add     rbx, 10h
                sub     rdx, rdi
                jnz     short loc_140865B94
                jmp     short loc_140865BDE
; ---------------------------------------------------------------------------

loc_140865BBA:                          ; CODE XREF: HalAllocateHardwareCounters+9B↑j
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                xor     ebx, ebx
                mov     esi, eax
                test    eax, eax
                jz      short loc_140865BDE

loc_140865BCC:                          ; CODE XREF: HalAllocateHardwareCounters+EC↓j
                mov     edx, ebx
                lea     rcx, [rsp+108h+var_E8]
                call    KeAddProcessorAffinityEx
                add     ebx, edi
                cmp     ebx, esi
                jb      short loc_140865BCC

loc_140865BDE:                          ; CODE XREF: HalAllocateHardwareCounters+9F↑j
                                        ; HalAllocateHardwareCounters+C8↑j ...
                mov     rax, cs:off_140C00A40
                mov     rax, [rax+68h]
                test    rax, rax
                jnz     short loc_140865BF5
                mov     ecx, 0C000009Ah
                jmp     short loc_140865C10
; ---------------------------------------------------------------------------

loc_140865BF5:                          ; CODE XREF: HalAllocateHardwareCounters+FC↑j
                mov     r8, r14
                lea     rcx, [rsp+108h+var_E8]
                mov     rdx, rbp
                call    sub_1404079D0

loc_140865C05:                          ; CODE XREF: HalAllocateHardwareCounters+65↑j
                mov     ecx, eax
                test    eax, eax
                jns     short loc_140865C15
                test    dil, dil
                jz      short loc_140865C15

loc_140865C10:                          ; CODE XREF: HalAllocateHardwareCounters+103↑j
                call    sub_1404B9360

loc_140865C15:                          ; CODE XREF: HalAllocateHardwareCounters+4A↑j
                                        ; HalAllocateHardwareCounters+73↑j ...
                mov     eax, ecx
                mov     rcx, [rsp+108h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140865AF0
HalAllocateHardwareCounters endp
