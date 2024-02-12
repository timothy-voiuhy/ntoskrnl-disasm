RtlDowncaseUnicodeString proc near      ; CODE XREF: sub_14095CFDC+14E↓p
                                        ; DATA XREF: .rdata:00000001400813D0↑o ...

var_18          = dword ptr -18h
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E83C6 SIZE 00000031 BYTES
; FUNCTION CHUNK AT 00000001408267BA SIZE 00000031 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], rsi
                mov     [rax+18h], r8b
                mov     [rax+8], rcx
                push    rdi
                sub     rsp, 30h
                mov     rsi, rdx
                mov     rdi, rcx
                movzx   eax, word ptr [rdx]
                xor     ebx, ebx
                test    r8b, r8b
                jnz     loc_1408267BA
                cmp     ax, [rcx+2]
                ja      loc_1408267E1

loc_1406FA716:                          ; CODE XREF: RtlDowncaseUnicodeString+12C0FC↓j
                movzx   r10d, ax
                shr     r10d, 1

loc_1406FA71D:                          ; CODE XREF: RtlDowncaseUnicodeString+62↓j
                                        ; DATA XREF: .rdata:00000001400813BC↑o
;   __try { // __finally(loc_1407E83C6)
                mov     [rsp+38h+var_18], ebx
                cmp     ebx, r10d
                jnb     short loc_1406FA744
                mov     r9d, ebx
                mov     rax, [rsi+8]
                movzx   ecx, word ptr [rax+r9*2]
                call    sub_140345220
                mov     rcx, [rdi+8]
                mov     [rcx+r9*2], ax
                inc     ebx
                jmp     short loc_1406FA71D
;   } // starts at 1406FA71D
; ---------------------------------------------------------------------------

loc_1406FA744:                          ; CODE XREF: RtlDowncaseUnicodeString+44↑j
                                        ; DATA XREF: .rdata:00000001400813BC↑o
                movzx   eax, word ptr [rsi]
                mov     [rdi], ax
                xor     eax, eax

loc_1406FA74C:                          ; CODE XREF: RtlDowncaseUnicodeString+12C0F4↓j
                                        ; RtlDowncaseUnicodeString+12C106↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406FA6E0
RtlDowncaseUnicodeString endp
