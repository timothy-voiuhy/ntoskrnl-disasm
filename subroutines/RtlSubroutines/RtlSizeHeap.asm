RtlSizeHeap     proc near               ; DATA XREF: .pdata:00000001400F7B90↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rdi, r8
                mov     rbx, rcx
                test    rcx, rcx
                jnz     short loc_1405869BC
                and     [rsp+38h+var_10], rcx
                xor     r9d, r9d
                and     [rsp+38h+var_18], rcx
                xor     edx, edx
                lea     ecx, [rbx+13h]
                call    sub_1405937F4

loc_1405869BC:                          ; CODE XREF: RtlSizeHeap+13↑j
                mov     r8, rdi
                mov     rcx, rbx
                call    sub_14058BDE8
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSizeHeap     endp

byte_1405869D3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400F7B90↑o

; =============== S U B R O U T I N E =======================================


sub_1405869DC   proc near               ; CODE XREF: RtlAllocateHeap:loc_140316828↑p
                                        ; DATA XREF: .pdata:00000001400F7B9C↑o

var_18          = qword ptr -18h

; __unwind { // __C_specific_handler
                sub     rsp, 58h

loc_1405869E0:                          ; DATA XREF: .rdata:00000001400C02A8↑o
;   __try { // __except at loc_1405869EC
                call    sub_140316838
                mov     [rsp+58h+var_18], rax
                jmp     short loc_1405869F3
;   } // starts at 1405869E0
; ---------------------------------------------------------------------------

loc_1405869EC:                          ; DATA XREF: .rdata:00000001400C02A8↑o
;   __except(loc_1405869F9) // owned by 1405869E0
                xor     eax, eax
                mov     [rsp+58h+var_18], rax

loc_1405869F3:                          ; CODE XREF: sub_1405869DC+E↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405869DC
; ---------------------------------------------------------------------------

loc_1405869F9:                          ; DATA XREF: .rdata:00000001400C02A8↑o
                                        ; .pdata:00000001400F7B9C↑o ...
;   __except filter // owned by 1405869E0
                push    rbp
                sub     rsp, 20h
                mov     rbp, rdx
                mov     [rbp+48h], rcx
                mov     rax, [rcx]
                mov     edx, [rax]
                mov     [rbp+34h], edx
                mov     [rbp+38h], rcx
                mov     [rbp+28h], edx
                mov     dword ptr [rbp+20h], 0
                mov     rdx, [rbp+38h]
                mov     ecx, [rbp+28h]
                call    sub_1405936DC
                mov     [rbp+20h], eax
                mov     eax, [rbp+20h]
                cmp     eax, 1
                jnz     short loc_140586A38
                lea     ecx, [rax+22h]
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140586A38:                          ; CODE XREF: sub_1405869DC+55↑j
                mov     eax, [rbp+20h]
                mov     [rbp+30h], eax
                mov     eax, [rbp+30h]
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405869DC   endp

algn_140586A48:                         ; DATA XREF: .pdata:00000001400F7BA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140586A50   proc near               ; CODE XREF: RtlFreeHeap:loc_140316744↑p
                                        ; DATA XREF: .pdata:00000001400F7BB4↑o

var_24          = dword ptr -24h

; __unwind { // __C_specific_handler
                sub     rsp, 68h

loc_140586A54:                          ; DATA XREF: .rdata:00000001400C0278↑o
;   __try { // __except at loc_140586A5F
                call    sub_140316754
                mov     [rsp+68h+var_24], eax
                jmp     short loc_140586A65
;   } // starts at 140586A54
; ---------------------------------------------------------------------------

loc_140586A5F:                          ; DATA XREF: .rdata:00000001400C0278↑o
;   __except(loc_140586A6B) // owned by 140586A54
                xor     eax, eax
                mov     [rsp+68h+var_24], eax

loc_140586A65:                          ; CODE XREF: sub_140586A50+D↑j
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140586A50
; ---------------------------------------------------------------------------

loc_140586A6B:                          ; DATA XREF: .rdata:00000001400C0278↑o
                                        ; .pdata:00000001400F7BB4↑o ...
;   __except filter // owned by 140586A54
                push    rbp
                sub     rsp, 30h
                mov     rbp, rdx
                mov     [rbp+58h], rcx
                mov     rax, [rcx]
                mov     edx, [rax]
                mov     [rbp+48h], edx
                mov     [rbp+50h], rcx
                mov     [rbp+38h], edx
                mov     dword ptr [rbp+30h], 0
                mov     rdx, [rbp+50h]
                mov     ecx, [rbp+38h]
                call    sub_1405936DC
                mov     [rbp+30h], eax
                mov     eax, [rbp+30h]
                cmp     eax, 1
                jnz     short loc_140586AAA
                lea     ecx, [rax+22h]
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140586AAA:                          ; CODE XREF: sub_140586A50+53↑j
                mov     eax, [rbp+30h]
                mov     [rbp+40h], eax
                mov     eax, [rbp+40h]
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140586A50   endp

algn_140586ABA:                         ; DATA XREF: .pdata:00000001400F7BC0↑o
                align 20h
; Exported entry 2011. RtlCheckTokenCapability

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=200h

