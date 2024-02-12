IoWMIQueryAllData proc near             ; DATA XREF: .pdata:000000014010EB58↑o

var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = dword ptr -88h
var_78          = byte ptr -78h
var_28          = qword ptr -28h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_28], rax
                mov     rdi, rdx
                mov     rbx, r8
                xor     edx, edx
                mov     rsi, rcx
                lea     rcx, [rsp+0B8h+var_78]
                lea     r8d, [rdx+48h]
                call    memset
                and     [rsp+0B8h+var_88], 0
                mov     eax, [rdi]
                test    rbx, rbx
                jz      short loc_1407CD276
                cmp     eax, 48h ; 'H'
                jb      short loc_1407CD276

loc_1407CD207:                          ; CODE XREF: IoWMIQueryAllData+C0↓j
                and     qword ptr [rbx+10h], 0
                lea     rcx, [rsp+0B8h+var_88]
                and     dword ptr [rbx+0Ch], 0
                mov     r9, rbx
                mov     [rsp+0B8h+var_90], rcx
                xor     r8d, r8d
                mov     rcx, rsi
                mov     dword ptr [rbx+2Ch], 1
                xor     edx, edx
                mov     dword ptr [rbx], 30h ; '0'
                mov     [rsp+0B8h+var_98], eax
                call    sub_14069D0D0
                mov     ecx, eax
                test    eax, eax
                js      short loc_1407CD258
                mov     eax, [rbx+2Ch]
                bt      eax, 8
                jb      short loc_1407CD29E
                test    al, 20h
                jz      short loc_1407CD282
                mov     eax, [rbx+30h]
                mov     ecx, 0C0000023h
                mov     [rdi], eax

loc_1407CD258:                          ; CODE XREF: IoWMIQueryAllData+7F↑j
                                        ; IoWMIQueryAllData+DC↓j ...
                mov     eax, ecx
                mov     rcx, [rsp+0B8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407CD276:                          ; CODE XREF: IoWMIQueryAllData+40↑j
                                        ; IoWMIQueryAllData+45↑j
                lea     rbx, [rsp+0B8h+var_78]
                mov     eax, 48h ; 'H'
                jmp     short loc_1407CD207
; ---------------------------------------------------------------------------

loc_1407CD282:                          ; CODE XREF: IoWMIQueryAllData+8C↑j
                mov     eax, [rsp+0B8h+var_88]
                lea     rdx, [rsp+0B8h+var_78]
                mov     [rdi], eax
                cmp     rbx, rdx
                mov     eax, ecx
                mov     ecx, 0C0000023h
                cmovz   eax, ecx
                mov     ecx, eax
                jmp     short loc_1407CD258
; ---------------------------------------------------------------------------

loc_1407CD29E:                          ; CODE XREF: IoWMIQueryAllData+88↑j
                mov     ecx, 0C00000BBh
                jmp     short loc_1407CD258
; } // starts at 1407CD1C0
IoWMIQueryAllData endp
