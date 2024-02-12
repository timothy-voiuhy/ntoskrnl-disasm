HalSendNMI      proc near               ; CODE XREF: sub_1404D2EA8+8A↓p
                                        ; sub_14051E370+A7↓p
                                        ; DATA XREF: ...

var_178         = qword ptr -178h
var_168         = dword ptr -168h
var_160         = xmmword ptr -160h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = dword ptr -140h
var_13C         = dword ptr -13Ch
var_138         = dword ptr -138h
var_134         = dword ptr -134h
var_130         = dword ptr -130h
var_12C         = dword ptr -12Ch
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = xmmword ptr -108h
var_F8          = word ptr -0F8h
var_F6          = word ptr -0F6h
var_F4          = dword ptr -0F4h
var_F0          = qword ptr -0F0h
var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_8           = dword ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                pushfq
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 160h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+198h+var_48], rax
                or      dword ptr [rsp+198h+var_148], 0FFFFFFFFh
                mov     r14, rcx
                mov     dword ptr [rsp+198h+var_148+4], 2
                cli
                mov     r13d, [rsp+198h+var_8]
                lea     rcx, [rsp+198h+var_F6]
                xorps   xmm0, xmm0
                mov     esi, 200h
                mov     r12d, esi
                xor     edx, edx
                mov     r8d, 0A6h
                and     r12d, r13d
                movups  [rsp+198h+var_108], xmm0
                call    memset
                movzx   ecx, word ptr cs:dword_140C4B8E0
                xor     eax, eax
                mov     [rsp+198h+var_150], rax
                xorps   xmm0, xmm0
                movzx   eax, word ptr [r14]
                movups  [rsp+198h+var_160], xmm0
                cmp     cx, ax
                jnb     short loc_1404BE034
                mov     eax, ecx

loc_1404BE034:                          ; CODE XREF: HalSendNMI+90↑j
                xor     ebp, ebp
                mov     [rsp+198h+var_F8], ax
                lea     r10, cs:140000000h
                movzx   edx, bp
                cmp     bp, ax
                jnb     short loc_1404BE072

loc_1404BE04D:                          ; CODE XREF: HalSendNMI+D0↓j
                movzx   ecx, dx
                inc     dx
                mov     rax, [r14+rcx*8+8]
                and     rax, ds:rva qword_140C4B8E8[r10+rcx*8]
                mov     [rsp+rcx*8+198h+var_F0], rax
                cmp     dx, [rsp+198h+var_F8]
                jb      short loc_1404BE04D

loc_1404BE072:                          ; CODE XREF: HalSendNMI+AB↑j
                mov     eax, 14h
                mov     [rsp+198h+var_F4], ebp
                mov     [rsp+198h+var_F6], ax
                cmp     dx, ax
                jnb     short loc_1404BE0A3

loc_1404BE08B:                          ; CODE XREF: HalSendNMI+101↓j
                movzx   eax, dx
                inc     dx
                mov     [rsp+rax*8+198h+var_F0], rbp
                cmp     dx, [rsp+198h+var_F6]
                jb      short loc_1404BE08B

loc_1404BE0A3:                          ; CODE XREF: HalSendNMI+E9↑j
                cmp     cs:byte_140C49778, bpl
                jz      loc_1404BE1C4
                mov     rdi, cs:qword_140CF49C0
                cmp     rdi, cs:qword_140CF49C8
                mov     [rsp+198h+var_168], ebp
                jnb     loc_1404BE2B0
                mov     rbx, [rsp+198h+var_148]

loc_1404BE0CD:                          ; CODE XREF: HalSendNMI+219↓j
                lea     rdx, [rdi+8]
                mov     rcx, r14
                lea     r8, [rsp+198h+var_108]
                call    KeAndGroupAffinityEx
                test    eax, eax
                jz      loc_1404BE1AE
                mov     rsi, qword ptr [rsp+198h+var_108]
                mov     r15d, ebp
                mov     dword ptr [rsp+198h+var_160], 6
                test    rsi, rsi
                mov     eax, [rdi]
                mov     dword ptr [rsp+198h+var_160+8], eax
                movzx   eax, word ptr [rsp+198h+var_108+8]
                mov     word ptr [rsp+198h+var_168], ax
                mov     dword ptr [rsp+198h+var_160+0Ch], ebp
                jmp     short loc_1404BE145
; ---------------------------------------------------------------------------

loc_1404BE118:                          ; CODE XREF: HalSendNMI+1AA↓j
                test    sil, 1
                jz      short loc_1404BE13F
                lea     rcx, [rsp+198h+var_168]
                call    KeGetProcessorIndexFromNumber
                mov     eax, eax
                lea     rcx, [rax+rax*2]
                mov     rax, cs:qword_140C50770
                or      r15d, [rax+rcx*8+0Ch]
                mov     dword ptr [rsp+198h+var_160+0Ch], r15d

loc_1404BE13F:                          ; CODE XREF: HalSendNMI+17C↑j
                inc     bpl
                shr     rsi, 1

loc_1404BE145:                          ; CODE XREF: HalSendNMI+176↑j
                mov     byte ptr [rsp+198h+var_168+2], bpl
                jnz     short loc_1404BE118
                mov     rcx, cs:qword_140C50840
                mov     [rsp+198h+var_120], rbx
                mov     eax, [rcx+14h]
                mov     [rsp+198h+var_13C], eax
                mov     eax, [rcx+10h]
                mov     [rsp+198h+var_140], eax
                mov     rax, cs:qword_140C50778
                mov     rax, [rax+78h]
                cli
                lea     rcx, [rsp+198h+var_120]
                xor     r9d, r9d
                mov     [rsp+198h+var_178], rcx
                lea     r8, [rsp+198h+var_160]
                mov     rcx, cs:qword_140C50778
                lea     rdx, [rsp+198h+var_140]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                mov     esi, 200h
                test    r13d, esi
                jz      short loc_1404BE1A4
                sti

loc_1404BE1A4:                          ; CODE XREF: HalSendNMI+201↑j
                xor     ebp, ebp
                test    eax, eax
                js      loc_1404BE386

loc_1404BE1AE:                          ; CODE XREF: HalSendNMI+143↑j
                add     rdi, 18h
                cmp     rdi, cs:qword_140CF49C8
                jb      loc_1404BE0CD
                jmp     loc_1404BE2A9
; ---------------------------------------------------------------------------

loc_1404BE1C4:                          ; CODE XREF: HalSendNMI+10A↑j
                cmp     cs:byte_140CF4A50, bpl
                jnz     loc_1404BE2B0
                mov     r9, [r14+8]
                movzx   r8d, bp
                mov     dword ptr [rsp+198h+var_160], 5
                mov     dword ptr [rsp+198h+var_160+8], ebp

loc_1404BE1E5:                          ; CODE XREF: HalSendNMI+291↓j
                                        ; HalSendNMI+29B↓j
                movzx   ecx, word ptr [r14]
                jmp     short loc_1404BE1FE
; ---------------------------------------------------------------------------

loc_1404BE1EB:                          ; CODE XREF: HalSendNMI+261↓j
                inc     r8w
                cmp     r8w, cx
                jnb     short loc_1404BE23D
                movzx   eax, r8w
                mov     r9, [r14+rax*8+8]

loc_1404BE1FE:                          ; CODE XREF: HalSendNMI+249↑j
                test    r9, r9
                jz      short loc_1404BE1EB
                bsf     rdx, r9
                movzx   ecx, r8w
                shl     ecx, 6
                movzx   eax, dl
                btr     r9, rax
                movzx   eax, dl
                add     ecx, eax
                mov     eax, ds:rva dword_140D024D0[r10+rcx*4]
                mov     rcx, cs:qword_140C50770
                lea     rax, [rax+rax*2]
                cmp     dword ptr [rcx+rax*8], 5
                jnz     short loc_1404BE1E5
                mov     eax, [rcx+rax*8+8]
                or      dword ptr [rsp+198h+var_160+8], eax
                jmp     short loc_1404BE1E5
; ---------------------------------------------------------------------------

loc_1404BE23D:                          ; CODE XREF: HalSendNMI+253↑j
                cmp     dword ptr [rsp+198h+var_160+8], ebp
                jz      short loc_1404BE2B0
                mov     rcx, cs:qword_140C50840
                mov     eax, [rcx+14h]
                mov     [rsp+198h+var_134], eax
                mov     eax, [rcx+10h]
                mov     rcx, [rsp+198h+var_148]
                mov     [rsp+198h+var_138], eax
                mov     rax, cs:qword_140C50778
                mov     [rsp+198h+var_118], rcx
                mov     rax, [rax+78h]
                cli
                lea     rcx, [rsp+198h+var_118]
                xor     r9d, r9d
                mov     [rsp+198h+var_178], rcx
                lea     r8, [rsp+198h+var_160]
                mov     rcx, cs:qword_140C50778
                lea     rdx, [rsp+198h+var_138]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                test    r13d, esi
                jz      short loc_1404BE2A1
                sti

loc_1404BE2A1:                          ; CODE XREF: HalSendNMI+2FE↑j
                test    eax, eax
                js      loc_1404BE386

loc_1404BE2A9:                          ; CODE XREF: HalSendNMI+21F↑j
                lea     r10, cs:140000000h

loc_1404BE2B0:                          ; CODE XREF: HalSendNMI+122↑j
                                        ; HalSendNMI+22B↑j ...
                mov     rdi, [rsp+198h+var_F0]
                movzx   ebx, bp

loc_1404BE2BB:                          ; CODE XREF: HalSendNMI+3E0↓j
                movzx   ecx, [rsp+198h+var_F8]
                jmp     short loc_1404BE2DB
; ---------------------------------------------------------------------------

loc_1404BE2C5:                          ; CODE XREF: HalSendNMI+33E↓j
                inc     bx
                movzx   ebx, bx
                cmp     ebx, ecx
                jnb     loc_1404BE386
                mov     rdi, [rsp+rbx*8+198h+var_F0]

loc_1404BE2DB:                          ; CODE XREF: HalSendNMI+323↑j
                test    rdi, rdi
                jz      short loc_1404BE2C5
                bsf     rdx, rdi
                mov     dword ptr [rsp+198h+var_160], 4
                movzx   eax, dl
                btr     rdi, rax
                movzx   ecx, bx
                shl     ecx, 6
                movzx   eax, dl
                add     ecx, eax
                mov     eax, ds:rva dword_140D024D0[r10+rcx*4]
                lea     rcx, [rax+rax*2]
                mov     rax, cs:qword_140C50770
                mov     ecx, [rax+rcx*8+8]
                mov     dword ptr [rsp+198h+var_160+8], ecx
                mov     rcx, cs:qword_140C50840
                mov     eax, [rcx+14h]
                mov     [rsp+198h+var_12C], eax
                mov     eax, [rcx+10h]
                mov     rcx, [rsp+198h+var_148]
                mov     [rsp+198h+var_130], eax
                mov     rax, cs:qword_140C50778
                mov     rax, [rax+78h]
                mov     [rsp+198h+var_110], rcx
                cli
                lea     rcx, [rsp+198h+var_110]
                xor     r9d, r9d
                mov     [rsp+198h+var_178], rcx
                lea     r8, [rsp+198h+var_160]
                mov     rcx, cs:qword_140C50778
                lea     rdx, [rsp+198h+var_130]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                test    r13d, esi
                jz      short loc_1404BE377
                sti

loc_1404BE377:                          ; CODE XREF: HalSendNMI+3D4↑j
                lea     r10, cs:140000000h
                test    eax, eax
                jns     loc_1404BE2BB

loc_1404BE386:                          ; CODE XREF: HalSendNMI+208↑j
                                        ; HalSendNMI+303↑j ...
                test    r12d, r12d
                jz      short loc_1404BE38C
                sti

loc_1404BE38C:                          ; CODE XREF: HalSendNMI+3E9↑j
                mov     rcx, [rsp+198h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+198h+var_38]
                mov     rbx, [r11+48h]
                mov     rbp, [r11+50h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404BDFA0
HalSendNMI      endp

byte_1404BE3BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400EEB0C↑o
; Exported entry 653. HalReturnToFirmware

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

