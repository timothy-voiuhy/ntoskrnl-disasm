PoCallDriver    proc near               ; CODE XREF: IoCancelFileOpen+D4↓p
                                        ; sub_1409E74E0+BA↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h        ; IoCallDriver
                call    IofCallDriver
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoCallDriver    endp

byte_14039A8DF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DCE90↑o

; =============== S U B R O U T I N E =======================================


sub_14039A8E8   proc near               ; CODE XREF: sub_14077F7D0+9C↓p
                                        ; DATA XREF: .rdata:000000014009BB5C↑o ...

var_38          = byte ptr -38h
var_37          = byte ptr -37h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404A1290 SIZE 00000118 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     sil, cl
                lea     rcx, [rax-38h]
                movups  xmmword ptr [rax-38h], xmm0
                movups  xmmword ptr [rax-28h], xmm0
                call    sub_14067B70C
                mov     eax, cs:dword_140C12020
                xor     ebx, ebx
                mov     ebp, cs:dword_140CF4484
                xor     edi, edi
                mov     r14d, cs:dword_140CF4D50
                lea     r12d, [rbx+1]
                cmp     eax, r12d
                jz      short loc_14039A998
                cmp     eax, 2
                jnz     short loc_14039A94C
                mov     r8d, cs:dword_140C23DB0
                test    r8d, r8d
                jnz     loc_1404A1290

loc_14039A94C:                          ; CODE XREF: sub_14039A8E8+52↑j
                                        ; sub_14039A8E8+1069AC↓j ...
                cmp     cs:byte_140C23DB4, bl
                jnz     loc_1404A12C3

loc_14039A958:                          ; CODE XREF: sub_14039A8E8+1069E1↓j
                                        ; sub_14039A8E8+1069EE↓j
                cmp     cs:byte_140C205A0, bl
                jnz     loc_1404A12E3

loc_14039A964:                          ; CODE XREF: sub_14039A8E8+106A03↓j
                test    sil, sil
                jnz     loc_1404A12F0
                cmp     ebx, ebp
                jnz     loc_1404A12F0
                cmp     edi, r14d
                jnz     loc_1404A12F0

loc_14039A97E:                          ; CODE XREF: sub_14039A8E8+106ABB↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14039A998:                          ; CODE XREF: sub_14039A8E8+4D↑j
                mov     edi, r12d
                jmp     loc_1404A12E8
sub_14039A8E8   endp

; ---------------------------------------------------------------------------
byte_14039A9A0  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014009BB5C↑o
                                        ; .pdata:00000001400DCE9C↑o

; =============== S U B R O U T I N E =======================================


sub_14039A9A8   proc near               ; CODE XREF: sub_1403B730C:loc_1403B734E↓p
                                        ; sub_14077AA10+98↓p ...
                cmp     dword ptr [rcx+4], 4
                jnz     short loc_14039A9B8
                cmp     dword ptr [rcx+0Ch], 4
                jnz     short loc_14039A9B8
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14039A9B8:                          ; CODE XREF: sub_14039A9A8+4↑j
                                        ; sub_14039A9A8+A↑j
                xor     al, al
                retn
sub_14039A9A8   endp

; ---------------------------------------------------------------------------
                align 4
byte_14039A9BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400DCEA8↑o
; Exported entry 194. ExCleanupRundownProtectionCacheAware
; Exported entry 246. ExInitializeRundownProtectionCacheAwareEx
; Exported entry 594. HalAcquireDisplayOwnership
; Exported entry 604. HalClearSoftwareInterrupt
; Exported entry 608. HalDisplayString
; Exported entry 640. HalQueryDisplayParameters
; Exported entry 658. HalSetDisplayParameters
; Exported entry 1161. KeFlushWriteBuffer
; Exported entry 1225. KeNotifyProcessorFreezeSupported
; Exported entry 1315. KeSetDmaIoCoherency
; Exported entry 1772. PoStartNextPowerIrp
; Exported entry 2089. RtlEndStrongEnumerationHashTable
; Exported entry 2952. __misaligned_access

; =============== S U B R O U T I N E =======================================


