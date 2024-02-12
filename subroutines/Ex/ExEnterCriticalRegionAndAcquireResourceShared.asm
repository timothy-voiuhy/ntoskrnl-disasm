ExEnterCriticalRegionAndAcquireResourceShared proc near
                                        ; DATA XREF: .rdata:00000001400576F0↑o
                                        ; .rdata:0000000140057700↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404336F2 SIZE 00000088 BYTES

                push    rbx
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rbx, rcx
                dec     word ptr [rax+1E4h]
                movzx   eax, word ptr [rcx+1Ah]
                movzx   edx, al
                and     dl, 41h
                cmp     dl, 1
                jz      short loc_1402486C1
                and     ax, 1
                jnz     short loc_14024867F

loc_14024864E:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceShared+86↓j
                                        ; ExEnterCriticalRegionAndAcquireResourceShared+90↓j ...
                mov     [rsp+38h+arg_0], rdi
                test    ax, ax
                jnz     loc_14043374C
                mov     dl, 1
                call    sub_140246A60

loc_140248663:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceShared+1EB144↓j
                                        ; ExEnterCriticalRegionAndAcquireResourceShared+1EB155↓j
                mov     rax, gs:188h
                mov     rdi, [rsp+38h+arg_0]
                mov     rax, [rax+1C8h]
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_14024867E  db 0CCh                 ; DATA XREF: .pdata:00000001400CC69C↑o
                                        ; .pdata:00000001400CC6A8↑o
; ---------------------------------------------------------------------------

loc_14024867F:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceShared+2C↑j
                mov     rdx, cr8
                mov     r8, gs:188h
                cmp     dl, 1
                ja      loc_1404336F2
                test    byte ptr [r8+0C0h], 2
                jnz     loc_140433710
                cmp     dl, 1
                jnb     short loc_14024864E
                test    dword ptr [r8+74h], 400h
                jnz     short loc_14024864E
                cmp     dword ptr [r8+1E4h], 0
                jnz     short loc_14024864E
                jmp     loc_14043372E
; ---------------------------------------------------------------------------

loc_1402486C1:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceShared+26↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                mov     r8, rbx
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExEnterCriticalRegionAndAcquireResourceShared endp
