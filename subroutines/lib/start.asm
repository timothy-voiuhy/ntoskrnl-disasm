start           proc near               ; DATA XREF: .pdata:0000000140126210↑o
                                        ; sub_14079FA20+238↑o

var_1C8         = qword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_8           = qword ptr -8

                sub     rsp, 38h
                mov     [rsp+38h+var_8], r15
                mov     r15, rsp
                mov     cs:qword_140CFC460, rcx
                mov     ecx, 0FFFFFFFFh
                mov     rdx, cs:qword_140CFC460
                mov     r10, [rdx+88h]
                cmp     dword ptr [r10+24h], 0
                jnz     short loc_140991042
                call    sub_1409B7160

loc_140991042:                          ; CODE XREF: start+2B↑j
                mov     rcx, cs:qword_140CFC460
                mov     rdx, [rcx+88h]
                mov     r10, rdx
                sub     rdx, 180h
                mov     [rdx+18h], rdx
                mov     [rdx+20h], r10
                mov     r8, cr0
                mov     [rdx+280h], r8
                mov     r8, cr2
                mov     [rdx+288h], r8
                mov     r8, cr3
                mov     [rdx+290h], r8
                mov     r8, cr4
                mov     [rdx+298h], r8
                sgdt    fword ptr [rdx+2D6h]
                mov     r8, [rdx+2D8h]
                mov     [rdx], r8
                sidt    fword ptr [rdx+2E6h]
                mov     r9, [rdx+2E8h]
                mov     [rdx+38h], r9
                str     word ptr [rdx+2F0h]
                sldt    word ptr [rdx+2F2h]
                mov     dword ptr [rdx+180h], 1F80h
                ldmxcsr dword ptr [rdx+180h]
                cmp     dword ptr [r10+24h], 0
                jnz     short loc_1409910E0
                mov     ax, 3C00h
                mov     [r8+50h], ax

loc_1409910E0:                          ; CODE XREF: start+C5↑j
                mov     ax, 2Bh ; '+'
                mov     ds, ax
                assume ds:nothing
                mov     es, ax
                assume es:nothing
                mov     ax, 53h ; 'S'
                mov     fs, ax
                assume fs:nothing
                test    cs:byte_140CFC408, 0FFh
                jnz     short loc_1409910FF
                xor     eax, eax
                lldt    ax

loc_1409910FF:                          ; CODE XREF: start+E8↑j
                mov     ax, [r8+42h]
                mov     [rdx+8], ax
                mov     al, [r8+44h]
                mov     [rdx+0Ah], al
                mov     al, [r8+47h]
                mov     [rdx+0Bh], al
                mov     eax, [r8+48h]
                mov     [rdx+0Ch], eax
                mov     eax, edx
                shr     rdx, 20h
                mov     ecx, 0C0000101h
                wrmsr
                mov     ecx, 0C0000102h
                wrmsr
                cmp     dword ptr [r10+24h], 0
                jnz     short loc_140991154
                lea     rcx, sub_1404079D0
                mov     cs:__guard_dispatch_icall_fptr, rcx
                lea     rcx, sub_140407980
                mov     cs:__guard_check_icall_fptr, rcx

loc_140991154:                          ; CODE XREF: start+126↑j
                mov     rcx, cs:qword_140CFC460
                call    sub_14099D840
                xor     ecx, ecx
                mov     rdx, cs:qword_140CFC460
                mov     r10, [rdx+88h]
                cmp     dword ptr [r10+24h], 0
                jnz     short loc_14099117C
                call    sub_1409B7160

loc_14099117C:                          ; CODE XREF: start+165↑j
                mov     rcx, cs:qword_140CFC460
                mov     r10, [rcx+88h]
                mov     edx, [r10+24h]
                call    sub_14099D320
                mov     ecx, 0Fh
                mov     cr8, rcx
                mov     ecx, cs:dword_140CFB088
                sub     rsp, rcx
                and     rsp, 0FFFFFFFFFFFFFFC0h
                sub     rsp, 1B0h
                mov     rax, cs:qword_140CFC460
                mov     rcx, [rax+90h]
                mov     rdx, [rax+98h]
                test    cs:byte_140E01840, 1
                jz      short loc_1409911E9
                mov     r8, gs:38h
                mov     r8, [r8+1078h]
                mov     gs:9008h, r8
                jmp     short loc_1409911F6
; ---------------------------------------------------------------------------

loc_1409911E9:                          ; CODE XREF: start+1BC↑j
                mov     r8, gs:8
                mov     r8, [r8+4]

loc_1409911F6:                          ; CODE XREF: start+1D7↑j
                mov     gs:1A8h, r8
                mov     r9, [rax+88h]
                mov     r10d, [r9+24h]
                mov     [rsp+1E8h+var_1C8], r10
                mov     [rsp+1E8h+var_1C0], rax
                call    sub_14099EB00
                cmp     word ptr gs:1A4h, 0
                jnz     short loc_14099125C
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     rdx, rax
                ror     rdx, 31h
                xor     rax, rdx
                xor     rax, cs:qword_140C162A8
                rol     rax, 10h
                mov     ax, 0
                ror     rax, 10h
                mov     cs:__security_cookie, rax
                not     rax
                mov     cs:qword_140C12368, rax

loc_14099125C:                          ; CODE XREF: start+213↑j
                mov     rax, gs:1A8h
                mov     ecx, cs:dword_140CFB088
                sub     rax, rcx
                and     rax, 0FFFFFFFFFFFFFFC0h
                sub     rax, 30h ; '0'
                mov     rsp, rax
                mov     rcx, gs:188h
                mov     byte ptr [rcx+186h], 2

loc_140991289:                          ; CODE XREF: start+282↓j
                cmp     cs:dword_140CFC620, 0
                pause
                jnz     short loc_140991289
                call    sub_140401F90
; ---------------------------------------------------------------------------
                retn
start           endp

; ---------------------------------------------------------------------------
algn_14099129A:                         ; DATA XREF: .pdata:0000000140126210↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409912A0   proc near               ; CODE XREF: sub_14099EB00:loc_14099F19E↓p
                                        ; DATA XREF: .pdata:000000014012621C↑o

var_208         = qword ptr -208h
var_200         = qword ptr -200h

                sub     rsp, 208h
                fxsave64 [rsp+208h+var_208]
                fnclex
                ffree   st(7)
                fild    dword ptr [rsp+208h+var_208]
                xor     edx, edx
                dec     edx
                mov     [rsp+208h+var_200], rdx
                fxrstor64 [rsp+208h+var_208]
                fnsave  byte ptr [rsp+208h+var_208]
                mov     ecx, dword ptr [rsp+208h+var_200+4]
                xor     eax, eax
                cmp     edx, ecx
                jz      short loc_1409912D0
                inc     eax

loc_1409912D0:                          ; CODE XREF: sub_1409912A0+2C↑j
                add     rsp, 208h
                retn
sub_1409912A0   endp

; ---------------------------------------------------------------------------
algn_1409912D8:                         ; DATA XREF: .pdata:000000014012621C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409912E0   proc near               ; CODE XREF: sub_1402B396C+89↑p
                                        ; sub_14038A04C:loc_14038A07C↑p ...
                sub     rsp, 28h
                and     cs:qword_140C22EC0, 0
                lea     rcx, unk_140C23BA0
                call    ExReleaseResourceLite
                call    sub_1402B3A30
                call    KeLeaveCriticalRegion
                mov     rcx, gs:188h
                mov     dl, 1
                call    sub_140248260
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409912E0   endp

algn_140991318:                         ; DATA XREF: .pdata:0000000140126228↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140991320   proc near               ; CODE XREF: sub_1402B396C:loc_1402B3993↑p
                                        ; sub_14038A04C+1E↑p ...
                sub     rsp, 28h
                mov     rcx, gs:188h
                xor     edx, edx
                call    sub_140248260
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C23BA0
                call    ExAcquireResourceExclusiveLite
                mov     rax, gs:188h
                mov     cs:qword_140C22EC0, rax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140991320   endp

algn_140991368:                         ; DATA XREF: .pdata:0000000140126234↑o
                align 10h
; Exported entry 127. EmClientQueryRuleState

; =============== S U B R O U T I N E =======================================


