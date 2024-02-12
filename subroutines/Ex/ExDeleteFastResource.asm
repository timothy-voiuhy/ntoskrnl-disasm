ExDeleteFastResource proc near          ; DATA XREF: .rdata:000000014009A5FC↑o
                                        ; .pdata:00000001400DC74C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049E900 SIZE 000000B5 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                movzx   ecx, word ptr [rcx+1Ah]
                test    cl, 1
                jz      loc_14049E900
                mov     rax, cr8
                cmp     al, 1
                ja      loc_14049E91B
                cmp     dword ptr [rbx+40h], 0
                jnz     loc_14049E936
                mov     eax, 0FFBEh
                and     cx, ax
                mov     [rbx+1Ah], cx
                lea     rcx, dword_140D230C0
                call    ExAcquireSpinLockExclusive
                mov     rdx, [rbx+8]
                movzx   edi, al
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_140393B97
                cmp     [rdx], rbx
                jnz     short loc_140393B97
                mov     [rdx], rax
                lea     rcx, dword_140D230C0
                mov     [rax+8], rdx
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049E951

loc_140393B7E:                          ; CODE XREF: ExDeleteFastResource+10AE53↓j
                                        ; ExDeleteFastResource+10AE5F↓j ...
                mov     cr8, rdi
                and     qword ptr [rbx], 0
                and     qword ptr [rbx+8], 0
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140393B97:                          ; CODE XREF: ExDeleteFastResource+56↑j
                                        ; ExDeleteFastResource+5B↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
ExDeleteFastResource endp
