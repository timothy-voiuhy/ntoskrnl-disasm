ExAcquireResourceExclusiveLite proc near
                                        ; CODE XREF: CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+274↑p
                                        ; sub_1402620A0+43E↓p ...

var_68          = qword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140432290 SIZE 0000029C BYTES

                mov     [rsp+arg_18], rbx
                push    r14
                sub     rsp, 80h
                mov     rbx, rcx
                test    dl, dl
                movzx   r14d, dl
                setz    cl
                inc     cl
                movzx   eax, word ptr [rbx+1Ah]
                movzx   r8d, al
                and     r8b, 41h
                cmp     r8b, 1
                jz      loc_140246873
                and     ax, 1
                jnz     loc_1402467CA

loc_1402465DC:                          ; CODE XREF: ExAcquireResourceExclusiveLite+25E↓j
                                        ; ExAcquireResourceExclusiveLite+26B↓j ...
                test    ax, ax
                jnz     loc_140246854
                xorps   xmm1, xmm1

loc_1402465E8:                          ; DATA XREF: .rdata:0000000140057240↑o
                                        ; .rdata:0000000140057250↑o ...
                mov     [rsp+88h+arg_0], rbp
                xor     eax, eax
                mov     [rsp+88h+arg_8], rsi
                xorps   xmm0, xmm0
                mov     [rsp+88h+var_48], rax
                movups  [rsp+88h+var_58], xmm0
                mov     [rsp+88h+arg_10], rdi
                movups  [rsp+88h+var_40], xmm1
                movups  [rsp+88h+var_30], xmm1
                movups  [rsp+88h+var_20], xmm1
                mov     rbp, gs:188h
                test    dword ptr cs:xmmword_140CFC480+4, 20000h
                jnz     loc_14043231C
                xor     sil, sil

loc_14024663A:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBD7F↓j
                inc     dword ptr gs:8678h
                lea     rcx, [rbx+60h]
                lea     rdx, [rsp+88h+var_58]
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, rbx
                call    sub_1402481A0
                movzx   edi, al
                test    al, al
                jz      short loc_1402466D8
                mov     ecx, [rbx+38h]
                and     ecx, 7
                mov     [rbx+30h], rbp
                or      ecx, 8
                mov     [rbx+38h], ecx
                lea     rcx, [rsp+88h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebp, byte ptr [rsp+88h+var_48]
                test    eax, eax
                jnz     loc_140432324

loc_14024668C:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBD86↓j
                                        ; ExAcquireResourceExclusiveLite+1EBD92↓j ...
                mov     cr8, rbp
                inc     dword ptr gs:867Ch
                inc     dword ptr gs:8664h
                test    sil, sil
                jnz     loc_14043238F

loc_1402466A9:                          ; CODE XREF: ExAcquireResourceExclusiveLite+18F↓j
                                        ; ExAcquireResourceExclusiveLite+2AF↓j ...
                mov     rsi, [rsp+88h+arg_8]
                movzx   eax, dil
                mov     rdi, [rsp+88h+arg_10]
                mov     rbp, [rsp+88h+arg_0]
                mov     rbx, [rsp+88h+arg_18]
                add     rsp, 80h
                pop     r14
                retn
; ---------------------------------------------------------------------------
algn_1402466D7:                         ; DATA XREF: .pdata:00000001400CC480↑o
                                        ; .pdata:00000001400CC48C↑o
                align 8

loc_1402466D8:                          ; CODE XREF: ExAcquireResourceExclusiveLite+BD↑j
                                        ; DATA XREF: .pdata:00000001400CC48C↑o ...
                movzx   eax, byte ptr [rbx+1Ah]
                test    al, al
                jns     short loc_140246734
                cmp     [rbx+30h], rbp
                jnz     short loc_140246734
                mov     edi, [rbx+38h]
                lea     rcx, [rsp+88h+var_58]
                add     edi, 8
                mov     [rbx+38h], edi
                shr     edi, 3
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebp, byte ptr [rsp+88h+var_48]
                test    eax, eax
                jnz     loc_1404323AC

loc_14024670F:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBE0E↓j
                                        ; ExAcquireResourceExclusiveLite+1EBE1A↓j ...
                mov     cr8, rbp
                inc     dword ptr gs:8680h
                inc     dword ptr gs:8664h
                test    sil, sil
                jnz     loc_140432417

loc_14024672C:                          ; CODE XREF: ExAcquireResourceExclusiveLite+21F↓j
                                        ; ExAcquireResourceExclusiveLite+1EBF87↓j
                mov     dil, 1
                jmp     loc_1402466A9
; ---------------------------------------------------------------------------

loc_140246734:                          ; CODE XREF: ExAcquireResourceExclusiveLite+13E↑j
                                        ; ExAcquireResourceExclusiveLite+144↑j
                test    r14b, r14b
                jz      loc_140246823
                lea     r8, [rsp+88h+var_40]
                mov     rdx, rbp
                call    sub_14034B130
                lea     rcx, [rsp+88h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rsp+88h+var_48]
                test    eax, eax
                jnz     loc_14043248E

loc_140246767:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBEF0↓j
                                        ; ExAcquireResourceExclusiveLite+1EBEFC↓j ...
                mov     cr8, rdi
                inc     dword ptr gs:8684h
                test    sil, sil
                jnz     loc_1404324F9

loc_14024677C:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBF6A↓j
                mov     rcx, rbx
                call    sub_140349198
                lea     r9, sub_140363710
                mov     r8d, 10224h
                lea     rdx, [rsp+88h+var_40]
                mov     rcx, rbx
                call    sub_14023C8E0
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_14030F57C
                inc     dword ptr gs:867Ch
                inc     dword ptr gs:8664h
                test    sil, sil
                jz      loc_14024672C
                jmp     loc_14043250F
; ---------------------------------------------------------------------------

loc_1402467CA:                          ; CODE XREF: ExAcquireResourceExclusiveLite+36↑j
                                        ; DATA XREF: .pdata:00000001400CC498↑o ...
                mov     r8, cr8
                mov     rdx, gs:188h
                cmp     r8b, cl
                ja      loc_140432290
                cmp     r8b, 2
                jnb     loc_1404322AE

loc_1402467EA:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBD1C↓j
                movzx   ecx, byte ptr [rdx+0C0h]
                test    cl, 2
                jnz     loc_1404322E0
                cmp     r8b, 1
                jnb     loc_1402465DC
                test    dword ptr [rdx+74h], 400h
                jnz     loc_1402465DC
                cmp     dword ptr [rdx+1E4h], 0
                jnz     loc_1402465DC
                jmp     loc_1404322FE
; ---------------------------------------------------------------------------

loc_140246823:                          ; CODE XREF: ExAcquireResourceExclusiveLite+197↑j
                                        ; DATA XREF: .pdata:00000001400CC4A4↑o ...
                lea     rcx, [rsp+88h+var_58]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+88h+var_48]
                test    eax, eax
                jnz     loc_140432424

loc_140246840:                          ; CODE XREF: ExAcquireResourceExclusiveLite+1EBE86↓j
                                        ; ExAcquireResourceExclusiveLite+1EBE92↓j ...
                mov     cr8, rbx
                inc     dword ptr gs:8688h
                xor     dil, dil
                jmp     loc_1402466A9
; ---------------------------------------------------------------------------

loc_140246854:                          ; CODE XREF: ExAcquireResourceExclusiveLite+3F↑j
                                        ; DATA XREF: .pdata:00000001400CC4B0↑o ...
                movzx   edx, r14b
                mov     rcx, rbx
                call    sub_14038E344
                mov     rbx, [rsp+88h+arg_18]
                add     rsp, 80h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140246873:                          ; CODE XREF: ExAcquireResourceExclusiveLite+2C↑j
                xor     r9d, r9d
                mov     [rsp+88h+var_68], 0
                mov     r8, rbx
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExAcquireResourceExclusiveLite endp
