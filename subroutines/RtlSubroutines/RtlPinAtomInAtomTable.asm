RtlPinAtomInAtomTable proc near         ; DATA XREF: .rdata:0000000140085DC0↑o
                                        ; .pdata:000000014010629C↑o

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082B4CE SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                movzx   edi, dx
                mov     rbx, rcx
                call    sub_140663974
                xor     esi, esi
                test    al, al
                jz      loc_14082B4CE

loc_1407110F1:                          ; DATA XREF: .rdata:0000000140085DAC↑o
;   __try { // __except at loc_140711153
                mov     eax, 0C0000008h
                mov     [rsp+48h+var_28], eax
                mov     ecx, 0C000h
                cmp     di, cx
                jb      short loc_140711147
                mov     edx, edi
                and     edx, 3FFFh
                mov     rcx, rbx
                call    sub_1406639C0
                mov     [rsp+48h+arg_10], rax
                test    rax, rax
                jz      short loc_140711151
                cmp     [rax+0Ah], di
                jnz     short loc_140711151
                xor     r8d, r8d
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_1402A9648
                mov     [rsp+48h+arg_18], rax
                test    rax, rax
                jz      short loc_140711151
                mov     [rsp+48h+var_28], esi
                or      word ptr [rax+16h], 1
                jmp     short loc_140711151
; ---------------------------------------------------------------------------

loc_140711147:                          ; CODE XREF: RtlPinAtomInAtomTable+32↑j
                test    di, di
                cmovnz  eax, esi
                mov     [rsp+48h+var_28], eax

loc_140711151:                          ; CODE XREF: RtlPinAtomInAtomTable+4C↑j
                                        ; RtlPinAtomInAtomTable+52↑j ...
                jmp     short loc_14071115C
;   } // starts at 1407110F1
; ---------------------------------------------------------------------------

loc_140711153:                          ; DATA XREF: .rdata:0000000140085DAC↑o
;   __except(1) // owned by 1407110F1
                mov     [rsp+48h+var_28], eax
                mov     rbx, [rsp+48h+arg_0]

loc_14071115C:                          ; CODE XREF: RtlPinAtomInAtomTable:loc_140711151↑j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx+8], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140711187

loc_14071116C:                          ; CODE XREF: RtlPinAtomInAtomTable+C0↓j
                lea     rcx, [rbx+8]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     eax, [rsp+48h+var_28]

loc_14071117E:                          ; CODE XREF: RtlPinAtomInAtomTable+11A403↓j
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140711187:                          ; CODE XREF: RtlPinAtomInAtomTable+9A↑j
                lea     rcx, [rbx+8]
                call    ExfTryToWakePushLock
                jmp     short loc_14071116C
; } // starts at 1407110D0
RtlPinAtomInAtomTable endp
