EtwUnregister   proc near               ; CODE XREF: sub_14039B008+236↑p
                                        ; sub_14039B008+243↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014084206E SIZE 0000005A BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                sub     rsp, 30h
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14084206E
                test    byte ptr [rcx+62h], 1
                jz      loc_140842078
                cmp     qword ptr [rcx+28h], 0
                mov     ebp, 198h
                jnz     loc_14075ED61

loc_14075EC70:                          ; CODE XREF: EtwUnregister+153↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx+20h]
                xor     edx, edx
                add     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, gs:188h
                mov     rax, [rbx+20h]
                mov     [rax+1A0h], rcx
                mov     rcx, [rbx]
                cmp     [rcx+8], rbx
                jnz     loc_1408420C1
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     loc_1408420C1
                mov     [rax], rcx
                mov     [rcx+8], rax
                lea     rax, [rbx+10h]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     loc_1408420C1
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_1408420C1
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                xor     edx, edx
                mov     rax, [rbx+20h]
                and     qword ptr [rax+1A0h], 0
                mov     rcx, [rbx+20h]
                add     rcx, rbp
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                mov     rax, [rbx+28h]
                test    rax, rax
                jnz     loc_14075ED98

loc_14075ED14:                          ; CODE XREF: EtwUnregister+173↓j
                mov     rcx, cs:qword_140C19990
                lea     rdx, qword_14000BBC0
                call    EtwEventEnabled
                test    al, al
                jnz     loc_140842096

loc_14075ED2F:                          ; CODE XREF: EtwUnregister+E347C↓j
                mov     rcx, [rbx+20h]
                call    sub_14060C59C
                mov     rcx, [rbx+28h]
                test    rcx, rcx
                jnz     short loc_14075EDB8

loc_14075ED41:                          ; CODE XREF: EtwUnregister+17D↓j
                mov     rcx, rbx
                call    sub_14060BA28
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                xor     eax, eax

loc_14075ED55:                          ; CODE XREF: EtwUnregister+E3433↓j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075ED61:                          ; CODE XREF: EtwUnregister+2A↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+28h]
                xor     edx, edx
                add     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, gs:188h
                mov     rax, [rbx+28h]
                mov     [rax+1A0h], rcx
                jmp     loc_14075EC70
; ---------------------------------------------------------------------------

loc_14075ED98:                          ; CODE XREF: EtwUnregister+CE↑j
                and     qword ptr [rax+1A0h], 0
                xor     edx, edx
                mov     rcx, [rbx+28h]
                add     rcx, rbp
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                jmp     loc_14075ED14
; ---------------------------------------------------------------------------

loc_14075EDB8:                          ; CODE XREF: EtwUnregister+FF↑j
                call    sub_14060C59C
                jmp     short loc_14075ED41
EtwUnregister   endp

; ---------------------------------------------------------------------------
byte_14075EDBF  db 11h dup(0CCh)        ; DATA XREF: .rdata:0000000140091C6C↑o
                                        ; .pdata:0000000140109D34↑o
; Exported entry 2130. RtlFindRange

; =============== S U B R O U T I N E =======================================


