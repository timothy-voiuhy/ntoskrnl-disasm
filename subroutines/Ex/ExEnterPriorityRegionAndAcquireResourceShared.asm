ExEnterPriorityRegionAndAcquireResourceShared proc near
                                        ; DATA XREF: .rdata:000000014007ACE0↑o
                                        ; .rdata:000000014007ACF0↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014047345A SIZE 00000088 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 30h
                mov     rbx, gs:188h
                mov     rdi, rcx
                mov     rcx, rbx
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140248280
                dec     word ptr [rbx+1E4h]
                movzx   eax, word ptr [rdi+1Ah]
                movzx   edx, al
                and     dl, 41h
                cmp     dl, 1
                jz      short loc_140326004
                and     ax, 1
                jnz     short loc_140325FC2

loc_140325F92:                          ; CODE XREF: ExEnterPriorityRegionAndAcquireResourceShared+99↓j
                                        ; ExEnterPriorityRegionAndAcquireResourceShared+A3↓j ...
                mov     [rsp+38h+arg_0], rsi
                test    ax, ax
                jnz     loc_1404734B4
                mov     dl, 1
                mov     rcx, rdi
                call    sub_140246A60

loc_140325FAA:                          ; CODE XREF: ExEnterPriorityRegionAndAcquireResourceShared+14D57C↓j
                                        ; ExEnterPriorityRegionAndAcquireResourceShared+14D58D↓j
                mov     rax, [rbx+1C8h]
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
algn_140325FC1:                         ; DATA XREF: .pdata:00000001400D5BAC↑o
                                        ; .pdata:00000001400D5BB8↑o
                align 2

loc_140325FC2:                          ; CODE XREF: ExEnterPriorityRegionAndAcquireResourceShared+40↑j
                mov     rdx, cr8
                mov     r8, gs:188h
                cmp     dl, 1
                ja      loc_14047345A
                test    byte ptr [r8+0C0h], 2
                jnz     loc_140473478
                cmp     dl, 1
                jnb     short loc_140325F92
                test    dword ptr [r8+74h], 400h
                jnz     short loc_140325F92
                cmp     dword ptr [r8+1E4h], 0
                jnz     short loc_140325F92
                jmp     loc_140473496
; ---------------------------------------------------------------------------

loc_140326004:                          ; CODE XREF: ExEnterPriorityRegionAndAcquireResourceShared+3A↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                mov     r8, rdi
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExEnterPriorityRegionAndAcquireResourceShared endp
