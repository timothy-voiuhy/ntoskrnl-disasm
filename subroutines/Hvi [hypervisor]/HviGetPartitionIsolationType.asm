HviGetPartitionIsolationType proc near  ; DATA XREF: .pdata:00000001400E1B4C↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                movups  [rsp+48h+var_28], xmm0
                call    HviIsHypervisorMicrosoftCompatible
                test    al, al
                jz      short loc_1403F8A98
                mov     eax, 40000003h
                xor     ecx, ecx
                cpuid
                mov     dword ptr [rsp+48h+var_28], eax
                mov     rax, 40000000000000h
                mov     dword ptr [rsp+48h+var_28+4], ebx
                test    qword ptr [rsp+48h+var_28], rax
                jz      short loc_1403F8A98
                xor     ecx, ecx
                mov     eax, 4000000Ch
                cpuid
                and     ebx, 0Fh
                mov     eax, ebx
                jmp     short loc_1403F8A9A
; ---------------------------------------------------------------------------

loc_1403F8A98:                          ; CODE XREF: HviGetPartitionIsolationType+24↑j
                                        ; HviGetPartitionIsolationType+46↑j
                xor     eax, eax

loc_1403F8A9A:                          ; CODE XREF: HviGetPartitionIsolationType+56↑j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403F8A40
HviGetPartitionIsolationType endp
