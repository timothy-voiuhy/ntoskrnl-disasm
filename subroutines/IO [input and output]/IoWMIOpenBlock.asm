IoWMIOpenBlock  proc near               ; DATA XREF: .pdata:00000001401098C0↑o

var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_130         = dword ptr -130h
var_128         = dword ptr -128h
var_120         = dword ptr -120h
var_118         = dword ptr -118h
var_110         = dword ptr -110h
var_108         = dword ptr -108h
var_100         = dword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A0          = byte ptr -0A0h
var_8E          = byte ptr -8Eh
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                xor     r13d, r13d
                lea     rax, [rbp+60h+var_A0]
                mov     r12, r8
                mov     [rsp+160h+var_F0], r13
                xorps   xmm0, xmm0
                lea     r8, aWmiguid    ; "\\WmiGuid\\"
                mov     r15d, edx
                mov     r9, rcx
                lea     edx, [r13+2Eh]
                sub     r8, rax
                movups  [rsp+160h+var_E8], xmm0
                lea     rcx, [rbp+60h+var_A0]

loc_140756FB9:                          ; CODE XREF: IoWMIOpenBlock+7A↓j
                lea     rax, [rdx+7FFFFFD0h]
                test    rax, rax
                jz      short loc_140756FDC
                movzx   eax, word ptr [r8+rcx]
                test    ax, ax
                jz      short loc_140756FDC
                mov     [rcx], ax
                add     rcx, 2
                sub     rdx, 1
                jnz     short loc_140756FB9

loc_140756FDC:                          ; CODE XREF: IoWMIOpenBlock+63↑j
                                        ; IoWMIOpenBlock+6D↑j
                movzx   r8d, byte ptr [r9+0Ch]
                lea     rax, [rcx-2]
                movzx   r10d, byte ptr [r9+0Bh]
                test    rdx, rdx
                movzx   edx, byte ptr [r9+0Dh]
                movzx   r11d, byte ptr [r9+0Ah]
                cmovnz  rax, rcx
                movzx   ecx, byte ptr [r9+0Eh]
                movzx   ebx, byte ptr [r9+9]
                movzx   edi, byte ptr [r9+8]
                movzx   esi, word ptr [r9+6]
                movzx   r14d, word ptr [r9+4]
                mov     [rax], r13w
                movzx   eax, byte ptr [r9+0Fh]
                mov     r9d, [r9]
                mov     [rsp+160h+var_F8], eax
                mov     [rsp+160h+var_100], ecx
                lea     rcx, [rbp+60h+var_8E]
                mov     [rsp+160h+var_108], edx
                mov     edx, 25h ; '%'
                mov     [rsp+160h+var_110], r8d
                lea     r8, a08x04x04x02x02_0 ; "%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02"...
                mov     [rsp+160h+var_118], r10d
                mov     [rsp+160h+var_120], r11d
                mov     [rsp+160h+var_128], ebx
                mov     [rsp+160h+var_130], edi
                mov     [rsp+160h+var_138], esi
                mov     dword ptr [rsp+160h+var_140], r14d
                call    sub_140311280
                lea     rdx, [rbp+60h+var_A0]
                lea     rcx, [rsp+160h+var_E8]
                call    RtlInitUnicodeString
                lea     rax, [rsp+160h+var_E8]
                xorps   xmm0, xmm0
                movups  [rbp+60h+var_C8], xmm0
                mov     qword ptr [rbp+60h+var_C8], rax
                mov     dword ptr [rbp+60h+var_C8+8], 200h
                movups  [rbp+60h+var_D8], xmm0
                mov     dword ptr [rbp+60h+var_D8], 30h ; '0'
                movups  [rbp+60h+var_B8], xmm0
                test    r15b, 4
                jnz     short loc_140757100
                mov     eax, r15d
                and     eax, 40000h
                neg     eax
                sbb     ecx, ecx
                and     ecx, 0FFFFFFCCh
                add     ecx, 22413Ch

loc_1407570B0:                          ; CODE XREF: IoWMIOpenBlock+1A5↓j
                lea     rax, [rsp+160h+var_F0]
                mov     r9d, r15d
                lea     r8, [rbp+60h+var_D8]
                mov     [rsp+160h+var_140], rax
                xor     edx, edx
                call    sub_14069D8F4
                test    eax, eax
                js      short loc_1407570D8
                mov     rax, [rsp+160h+var_F0]
                mov     [r12], rax
                mov     eax, r13d

loc_1407570D8:                          ; CODE XREF: IoWMIOpenBlock+16A↑j
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_18]
                add     rsp, 130h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140757100:                          ; CODE XREF: IoWMIOpenBlock+139↑j
                mov     ecx, 224140h
                jmp     short loc_1407570B0
; } // starts at 140756F60
IoWMIOpenBlock  endp

; ---------------------------------------------------------------------------
algn_140757107:                         ; DATA XREF: .pdata:00000001401098C0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140757110   proc near               ; CODE XREF: sub_140751008+6C↑p
                                        ; sub_14077CC28+91↓p
                                        ; DATA XREF: ...

var_488         = qword ptr -488h
var_480         = qword ptr -480h
var_468         = byte ptr -468h
var_258         = byte ptr -258h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083F5DA SIZE 0000008F BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 470h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+4A8h+var_48], rax
                mov     r12, rdx
                mov     rdi, rcx
                mov     r13d, 208h
                lea     rcx, [rsp+4A8h+var_258]
                mov     r8d, r13d
                xor     edx, edx
                xor     ebx, ebx
                call    memset
                mov     r8d, r13d
                lea     rcx, [rsp+4A8h+var_468]
                xor     edx, edx
                mov     esi, ebx
                call    memset
                test    r12, r12
                jz      loc_140757268
                mov     r14, [r12]
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_14075717B:                          ; CODE XREF: sub_140757110+73↓j
                inc     rax
                cmp     [r14+rax*2], bx
                jnz     short loc_14075717B
                lea     r15d, [rax+1]
                mov     edx, r15d
                add     rdx, rdx
                call    sub_1407572E4
                mov     rbp, rax
                test    rax, rax
                jz      loc_14083F5DA
                lea     rax, [rsp+4A8h+var_258]
                mov     r8d, r15d
                lea     r9, [rsp+4A8h+var_468]
                mov     [rsp+4A8h+var_480], rax
                mov     rdx, rbp
                mov     rcx, r14
                call    sub_14077DCA8
                test    eax, eax
                js      loc_14083F5FE
                mov     rdx, r13
                call    sub_1407572E4
                mov     rsi, rax
                test    rax, rax
                jz      loc_14083F623
                mov     r14d, 104h
                lea     r8, [rsp+4A8h+var_468]
                mov     edx, r14d
                mov     rcx, rax
                call    sub_140371440
                test    eax, eax
                js      loc_14083F641
                lea     r8, [rsp+4A8h+var_258]
                mov     edx, r14d
                mov     rcx, rsi
                call    sub_140371700
                test    eax, eax
                js      loc_14083F641

loc_140757215:                          ; CODE XREF: sub_140757110+1C7↓j
                mov     [rdi+38h], rbx
                mov     [rdi+30h], rbx
                mov     [rdi+48h], rbx
                mov     [rdi+40h], rbx
                mov     [rdi+58h], rbx
                mov     ebx, 1
                mov     [rdi+8], r12
                mov     [rdi+20h], rbp
                mov     [rdi+28h], rsi

loc_14075723A:                          ; CODE XREF: sub_140757110+E84E9↓j
                                        ; sub_140757110+E8543↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+4A8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+4A8h+arg_10]
                add     rsp, 470h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140757268:                          ; CODE XREF: sub_140757110+5D↑j
                mov     edx, 4
                call    sub_1407572E4
                lea     rdx, qword_14000A058
                mov     r14d, 2
                sub     rdx, rax
                mov     rbp, rax
                mov     r8d, r14d
                mov     rcx, rax

loc_14075728B:                          ; CODE XREF: sub_140757110+19A↓j
                lea     rax, [r8+7FFFFFFCh]
                test    rax, rax
                jz      short loc_1407572AC
                movzx   eax, word ptr [rdx+rcx]
                test    ax, ax
                jz      short loc_1407572AC
                mov     [rcx], ax
                add     rcx, r14
                sub     r8, 1
                jnz     short loc_14075728B

loc_1407572AC:                          ; CODE XREF: sub_140757110+185↑j
                                        ; sub_140757110+18E↑j
                test    r8, r8
                lea     rax, [rcx-2]
                mov     rdx, r14
                cmovnz  rax, rcx
                mov     [rax], bx
                call    sub_1407572E4
                mov     rdx, r14
                mov     rsi, rax
                mov     [rax], bx
                call    sub_1407572E4
                mov     [rax], bx
                mov     [rdi+18h], rax
                jmp     loc_140757215
; } // starts at 140757110
sub_140757110   endp

; ---------------------------------------------------------------------------
byte_1407572DC  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140090A94↑o
                                        ; .pdata:00000001401098CC↑o

; =============== S U B R O U T I N E =======================================


sub_1407572E4   proc near               ; CODE XREF: sub_14074FCA8+6B↑p
                                        ; sub_14074FD94+65↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ecx, 1
                mov     r8d, 74705041h
                mov     rdi, rdx
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140757316
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rax
                call    memset

loc_140757316:                          ; CODE XREF: sub_1407572E4+23↑j
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407572E4   endp

byte_140757325  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001401098D8↑o

; =============== S U B R O U T I N E =======================================


sub_14075732C   proc near               ; CODE XREF: sub_1407520B4+5F↑p
                                        ; sub_140754F90+64↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083F66A SIZE 00000077 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rax, gs:188h
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rdi, rcx
                add     [rax+1E4h], si
                xor     edx, edx
                lea     rcx, qword_140C2AD40
                call    ExAcquirePushLockExclusiveEx
                cmp     cs:dword_140C2ADD0, 0
                mov     rax, cs:qword_140C2ADD8
                jz      short loc_1407573D7
                test    rax, rax
                jz      loc_14083F66A
                inc     cs:dword_140C2AD48
                xor     ebx, ebx
                mov     [rdi], rax
                lock inc cs:dword_140C2A890

loc_140757391:                          ; CODE XREF: sub_14075732C+106↓j
                                        ; sub_14075732C+E8356↓j ...
                lock xadd cs:qword_140C2AD40, rsi
                test    sil, 2
                jnz     loc_14083F6C5

loc_1407573A4:                          ; CODE XREF: sub_14075732C+E839D↓j
                                        ; sub_14075732C+E83B0↓j
                lea     rcx, qword_140C2AD40
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407573D7:                          ; CODE XREF: sub_14075732C+48↑j
                test    rax, rax
                jnz     loc_14083F670
                lea     r14, unk_140C2AD60
                mov     rdx, r14
                lea     rcx, aSystemrootAppp ; "\\SystemRoot\\AppPatch\\drvmain.sdb"
                call    sub_140751CF4
                mov     ebx, eax
                test    eax, eax
                js      loc_14083F6B0
                lea     rdx, unk_140C2AD98
                lea     rcx, aSystemrootAppp_0 ; "\\SystemRoot\\AppPatch\\drvpatch.sdb"
                call    sub_140751CF4
                test    eax, eax
                jns     loc_14083F687

loc_14075741B:                          ; CODE XREF: sub_14075732C+E8367↓j
                                        ; sub_14075732C+E837F↓j
                inc     cs:dword_140C2AD48
                mov     cs:qword_140C2ADD8, r14
                mov     [rdi], r14
                lock inc cs:dword_140C2A894
                jmp     loc_140757391
sub_14075732C   endp

; ---------------------------------------------------------------------------
algn_140757437:                         ; DATA XREF: .rdata:0000000140090ABC↑o
                                        ; .pdata:00000001401098E4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140757440   proc near               ; CODE XREF: sub_140757998+5A↓p
                                        ; DATA XREF: .rdata:0000000140090AE0↑o ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083F6E2 SIZE 00000045 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], r8
                push    rsi
                sub     rsp, 30h
                and     qword ptr [rax+18h], 0
                mov     rbp, r9
                mov     rsi, rdx
                test    rcx, rcx
                jz      short loc_1407574B3
                test    rdx, rdx
                jz      short loc_1407574B3
                mov     rdx, rcx
                lea     r8, [rax+18h]
                lea     rcx, aRegistryMachin_39 ; "\\Registry\\Machine\\System\\CurrentCon"...
                call    sub_1407576B0
                mov     ebx, eax
                test    eax, eax
                jns     loc_14083F6E2

loc_140757486:                          ; CODE XREF: sub_140757440+E82CC↓j
                cmp     ebx, 0C0000034h
                mov     eax, 0C0000225h
                cmovz   ebx, eax
                cmp     [rsp+38h+arg_10], 0
                jnz     loc_14083F711

loc_1407574A0:                          ; CODE XREF: sub_140757440+E82E2↓j
                mov     eax, ebx

loc_1407574A2:                          ; CODE XREF: sub_140757440+78↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407574B3:                          ; CODE XREF: sub_140757440+22↑j
                                        ; sub_140757440+27↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1407574A2
sub_140757440   endp

; ---------------------------------------------------------------------------
algn_1407574BA:                         ; DATA XREF: .rdata:0000000140090AE0↑o
                                        ; .pdata:00000001401098F0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407574C0   proc near               ; CODE XREF: sub_1407520B4+4F↑p
                                        ; sub_1407576B0:loc_14075778C↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014083F728 SIZE 00000058 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                xor     r14d, r14d
                mov     rbp, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      loc_14083F728

loc_1407574EB:                          ; CODE XREF: sub_1407574C0+E829E↓j
                                        ; sub_1407574C0+E82BB↓j
                xorps   xmm0, xmm0
                or      rbx, 0FFFFFFFFFFFFFFFFh
                movups  xmmword ptr [rdi], xmm0

loc_1407574F5:                          ; CODE XREF: sub_1407574C0+3E↓j
                inc     rbx
                cmp     [rbp+rbx*2+0], r14w
                jnz     short loc_1407574F5
                lea     rbx, ds:2[rbx*2]
                cmp     rbx, 0FFFEh
                ja      short loc_14075755B
                mov     rcx, rbx
                call    sub_1403714EC
                mov     rsi, rax
                test    rax, rax
                jz      short loc_140757562
                mov     r8, rbx
                mov     rdx, rbp
                mov     rcx, rax
                call    memmove
                lea     eax, [rbx-2]
                mov     [rdi+8], rsi
                mov     [rdi], ax
                xor     eax, eax
                mov     [rdi+2], bx

loc_14075753F:                          ; CODE XREF: sub_1407574C0+A0↓j
                                        ; sub_1407574C0+A7↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075755B:                          ; CODE XREF: sub_1407574C0+4F↑j
                mov     eax, 0C0000206h
                jmp     short loc_14075753F
; ---------------------------------------------------------------------------

loc_140757562:                          ; CODE XREF: sub_1407574C0+5F↑j
                mov     eax, 0C0000017h
                jmp     short loc_14075753F
sub_1407574C0   endp

; ---------------------------------------------------------------------------
algn_140757569:                         ; DATA XREF: .rdata:0000000140090B0C↑o
                                        ; .pdata:00000001401098FC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140757570   proc near               ; CODE XREF: sub_140526EF0+4D↑p
                                        ; sub_1407576B0+72↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083F780 SIZE 000000F2 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     esi, esi
                lea     rdi, aMinkernelNtosK_2 ; "minkernel\\ntos\\kshim\\ksemisc.c"
                lea     rbx, dword_140C2A920
                mov     r13d, r9d
                mov     r12, r8
                mov     r15, rdx
                mov     r14, rcx
                mov     ebp, 1
                test    rcx, rcx
                jz      loc_14083F780

loc_1407575B6:                          ; CODE XREF: sub_140757570+E823C↓j
                                        ; sub_140757570+E8255↓j
                test    r15, r15
                jz      loc_14083F7CA

loc_1407575BF:                          ; CODE XREF: sub_140757570+E8286↓j
                                        ; sub_140757570+E829F↓j
                test    r12, r12
                jz      loc_14083F814

loc_1407575C8:                          ; CODE XREF: sub_140757570+E82D0↓j
                                        ; sub_140757570+E82E9↓j
                xorps   xmm0, xmm0
                or      rdi, 0FFFFFFFFFFFFFFFFh
                movups  xmmword ptr [r14], xmm0
                mov     rbx, rdi

loc_1407575D6:                          ; CODE XREF: sub_140757570+6E↓j
                inc     rbx
                cmp     [r15+rbx*2], si
                jnz     short loc_1407575D6
                add     rbx, rbx

loc_1407575E3:                          ; CODE XREF: sub_140757570+7B↓j
                inc     rdi
                cmp     [r12+rdi*2], si
                jnz     short loc_1407575E3
                add     rdi, rdi
                mov     eax, r13d
                neg     eax
                sbb     rsi, rsi
                and     rsi, 2
                lea     rbp, [rsi+rdi]
                add     rbp, rbx
                lea     rcx, [rbp+2]
                lea     rax, [rcx-1]
                cmp     rax, 0FFFEh
                ja      loc_14083F868
                call    sub_1403714EC
                test    rax, rax
                jz      loc_14083F85E
                mov     r8, rbx
                mov     [r14+8], rax
                mov     rdx, r15
                mov     rcx, rax
                call    memmove
                xor     r15d, r15d
                test    r13d, r13d
                jz      short loc_140757651
                mov     rax, [r14+8]
                lea     edx, [r15+5Ch]
                mov     rcx, rbx
                shr     rcx, 1
                mov     [rax+rcx*2], dx

loc_140757651:                          ; CODE XREF: sub_140757570+CD↑j
                mov     rax, [r14+8]
                lea     rcx, [rsi+rbx]
                shr     rcx, 1
                mov     r8, rdi
                mov     rdx, r12
                lea     rcx, [rax+rcx*2]
                call    memmove
                mov     rax, [r14+8]
                add     si, bx
                add     si, di
                shr     rbp, 1
                mov     [rax+rbp*2], r15w
                mov     [r14], si
                add     si, 2
                mov     [r14+2], si
                xor     eax, eax

loc_14075768C:                          ; CODE XREF: sub_140757570+E82F3↓j
                                        ; sub_140757570+E82FD↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140757570   endp

algn_1407576AA:                         ; DATA XREF: .rdata:0000000140090B3C↑o
                                        ; .pdata:0000000140109908↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1407576B0   proc near               ; CODE XREF: sub_140757440+37↑p
                                        ; sub_14075BADC+54↓p ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h

; FUNCTION CHUNK AT 000000014083F872 SIZE 000000A8 BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                mov     rbp, rsp
                sub     rsp, 60h
                xor     r14d, r14d
                lea     r12, dword_140C2A920
                mov     [rbp+var_40], r14
                xorps   xmm0, xmm0
                mov     [rbp+var_38], r14
                mov     rsi, r8
                mov     [rbp+arg_0], r14
                mov     rdi, rdx
                lea     r13d, [r14+4]
                mov     rbx, rcx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm0
                movups  [rbp+var_10], xmm0
                test    rcx, rcx
                jz      loc_14083F872

loc_140757704:                          ; CODE XREF: sub_1407576B0+E81F4↓j
                                        ; sub_1407576B0+E8211↓j
                test    rsi, rsi
                jz      loc_14083F8C6

loc_14075770D:                          ; CODE XREF: sub_1407576B0+E8248↓j
                                        ; sub_1407576B0+E8265↓j
                lea     rcx, [rbp+var_40]
                mov     rdx, rbx
                test    rdi, rdi
                jz      short loc_14075778C
                mov     r9d, 1
                mov     r8, rdi
                call    sub_140757570

loc_140757727:                          ; CODE XREF: sub_1407576B0+E1↓j
                mov     ebx, eax
                test    eax, eax
                js      short loc_140757767
                lea     rax, [rbp+var_40]
                mov     dword ptr [rbp+var_30], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+var_20], rax
                lea     r8, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], r14
                mov     edx, 20019h
                mov     dword ptr [rbp+var_20+8], 240h
                lea     rcx, [rbp+arg_0]
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                jns     short loc_140757793

loc_140757767:                          ; CODE XREF: sub_1407576B0+7B↑j
                                        ; sub_1407576B0+F1↓j
                lea     rcx, [rbp+var_40]
                call    sub_140757A4C
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14075778C:                          ; CODE XREF: sub_1407576B0+67↑j
                call    sub_1407574C0
                jmp     short loc_140757727
; ---------------------------------------------------------------------------

loc_140757793:                          ; CODE XREF: sub_1407576B0+B5↑j
                mov     rax, [rbp+arg_0]
                mov     [rsi], rax
                lock inc cs:dword_140C2A8B8
                jmp     short loc_140757767
sub_1407576B0   endp

; ---------------------------------------------------------------------------
byte_1407577A3  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140090B68↑o
                                        ; .pdata:0000000140109914↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1407577AC   proc near               ; CODE XREF: sub_140758EA8+19↓p
                                        ; sub_140A60804+3AF↓p
                                        ; DATA XREF: ...

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = dword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h

                mov     [rsp-18h+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 50h
                xor     esi, esi
                mov     rdi, rcx
                mov     [rbp+arg_0], esi
                mov     [rbp+arg_8], rsi
                mov     [rbp+var_20], rsi
                mov     [rbp+var_18], rsi
                mov     [rbp+var_10], rsi
                mov     [rbp+var_8], rsi
                test    rcx, rcx
                jz      loc_140757968
                mov     rcx, [rcx+30h]
                call    sub_140243AF0
                cmp     eax, 1
                jz      loc_140757968
                mov     eax, cs:dword_140C50464
                cmp     eax, 2
                jnz     loc_140757968
                mov     eax, cs:dword_140C50460
                test    al, 1
                jnz     loc_140757968
                lea     rdx, [rdi+58h]
                lea     rcx, [rbp+var_20]
                call    sub_140757A80
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075788D
                lea     rdx, [rdi+48h]
                lea     rcx, [rbp+var_10]
                call    sub_140757A80
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075788D
                mov     r9d, [rdi+40h]
                lea     rax, [rbp+arg_0]
                mov     r8, [rdi+30h]
                lea     rdx, [rbp+var_10]
                mov     [rsp+50h+var_28], rax
                lea     rcx, [rbp+var_20]
                lea     rax, [rbp+arg_8]
                mov     [rsp+50h+var_30], rax
                call    sub_140754EA8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075788D
                mov     r9d, [rbp+arg_0]
                lea     rdx, [rbp+var_20]
                mov     r8, [rbp+arg_8]
                mov     rcx, rdi
                call    sub_1408C1890
                mov     ebx, eax
                test    eax, eax
                js      short loc_14075788D
                mov     r8d, [rbp+arg_0]
                lea     rcx, [rbp+var_20]
                mov     rdx, [rbp+arg_8]
                call    sub_14052711C

loc_14075788D:                          ; CODE XREF: sub_1407577AC+74↑j
                                        ; sub_1407577AC+87↑j ...
                test    ebx, ebx
                jnz     short loc_1407578A6
                bts     cs:dword_140C50468, 0Bh
                mov     rax, [rdi+30h]
                test    ebx, ebx
                mov     cs:qword_140C504B8, rax

loc_1407578A6:                          ; CODE XREF: sub_1407577AC+E3↑j
                jns     short loc_14075790A
                cmp     ebx, 0C000036Ch
                jnz     loc_140757968
                mov     eax, 1
                lock xadd cs:dword_140C2AB20, eax
                inc     eax
                lea     rcx, qword_140C2AB40
                and     eax, 3Fh
                mov     edi, 4
                mov     qword ptr [rcx+rax*8], 700BFh
                mov     eax, cs:dword_140CF9EC4
                test    al, 1
                jz      short loc_1407578F6
                mov     r8, [rbp+var_18]
                lea     rdx, aKseDriverBlock ; "KSE: driver blocked from loading [%ws]."...
                mov     ecx, edi
                call    sub_1405270D8

loc_1407578F6:                          ; CODE XREF: sub_1407577AC+136↑j
                mov     r8, [rbp+var_18]
                lea     rdx, aKseDriverBlock ; "KSE: driver blocked from loading [%ws]."...
                mov     ecx, edi
                call    sub_140371548
                jmp     short loc_14075796A
; ---------------------------------------------------------------------------

loc_14075790A:                          ; CODE XREF: sub_1407577AC:loc_1407578A6↑j
                mov     eax, 1
                lock xadd cs:dword_140C2AB20, eax
                inc     eax
                lea     rcx, qword_140C2AB40
                and     eax, 3Fh
                mov     edi, 4
                mov     qword ptr [rcx+rax*8], 700C8h
                mov     eax, cs:dword_140CF9EC4
                test    al, 1
                jz      short loc_140757950
                mov     r9, [rbp+var_18]
                lea     rdx, aKseAppliedDShi ; "KSE: Applied %d shim(s) to [%ws].\n"
                mov     r8d, [rbp+arg_0]
                mov     ecx, edi
                call    sub_1405270D8

loc_140757950:                          ; CODE XREF: sub_1407577AC+18C↑j
                mov     r9, [rbp+var_18]
                lea     rdx, aKseAppliedDShi ; "KSE: Applied %d shim(s) to [%ws].\n"
                mov     r8d, [rbp+arg_0]
                mov     ecx, edi
                call    sub_140371548
                jmp     short loc_14075796A
; ---------------------------------------------------------------------------

loc_140757968:                          ; CODE XREF: sub_1407577AC+2E↑j
                                        ; sub_1407577AC+40↑j ...
                mov     ebx, esi

loc_14075796A:                          ; CODE XREF: sub_1407577AC+15C↑j
                                        ; sub_1407577AC+1BA↑j
                lea     rcx, [rbp+var_20]
                call    sub_140757A4C
                lea     rcx, [rbp+var_10]
                call    sub_140757A4C
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407577AC   endp

byte_14075798F  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140109920↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140757998   proc near               ; CODE XREF: sub_140754EA8+78↑p
                                        ; DATA XREF: .rdata:0000000140090BA8↑o ...

var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = dword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 000000014083F91A SIZE 00000128 BYTES

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_10], r8
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 30h
                and     [rbp+var_8], 0
                xor     r14d, r14d
                and     [rbp+var_10], 0
                mov     r13, r9
                and     [rbp+arg_0], 0
                mov     rdi, r8
                mov     eax, [rcx+8]
                mov     rbx, rdx
                test    al, 1
                jnz     short loc_140757A36
                mov     ecx, 800h
                call    sub_1403714EC
                mov     r12, rax
                test    rax, rax
                jz      short loc_140757A3D
                mov     rcx, [rbx+8]
                lea     r9, [rbp+var_8]
                mov     rdx, rax
                call    sub_140757440
                mov     ebx, eax
                test    eax, eax
                jns     loc_14083F91A

loc_140757A01:                          ; CODE XREF: sub_140757998+E8096↓j
                mov     rcx, r12
                call    sub_1403714C4
                test    ebx, ebx
                jns     short loc_140757A1E

loc_140757A0D:                          ; CODE XREF: sub_140757998+A3↓j
                                        ; sub_140757998+AA↓j
                mov     rcx, r14
                call    sub_1403714C4
                and     qword ptr [rdi], 0
                and     dword ptr [r13+0], 0

loc_140757A1E:                          ; CODE XREF: sub_140757998+73↑j
                mov     eax, ebx
                mov     rbx, [rsp+30h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140757A36:                          ; CODE XREF: sub_140757998+3B↑j
                mov     ebx, 0C0000225h
                jmp     short loc_140757A0D
; ---------------------------------------------------------------------------

loc_140757A3D:                          ; CODE XREF: sub_140757998+4D↑j
                mov     ebx, 0C0000017h
                jmp     short loc_140757A0D
sub_140757998   endp

; ---------------------------------------------------------------------------
byte_140757A44  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140090BA8↑o
                                        ; .pdata:000000014010992C↑o

; =============== S U B R O U T I N E =======================================


sub_140757A4C   proc near               ; CODE XREF: sub_140526EF0+71↑p
                                        ; sub_1405273D0+11↑p ...

; FUNCTION CHUNK AT 000000014083FA42 SIZE 00000058 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14083FA42
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_140757A72
                call    sub_1403714C4
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx], xmm0

loc_140757A72:                          ; CODE XREF: sub_140757A4C+19↑j
                                        ; sub_140757A4C+E802C↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140757A4C   endp

algn_140757A79:                         ; DATA XREF: .rdata:0000000140090BC4↑o
                                        ; .pdata:0000000140109938↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140757A80   proc near               ; CODE XREF: sub_140754854+79↑p
                                        ; sub_1407577AC+6B↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014083FA9A SIZE 00000058 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r14d, r14d
                mov     rdi, rdx
                mov     rsi, rcx
                test    rdx, rdx
                jz      loc_14083FA9A

loc_140757AAA:                          ; CODE XREF: sub_140757A80+E8050↓j
                                        ; sub_140757A80+E806D↓j
                xorps   xmm0, xmm0
                mov     r15d, 2
                movups  xmmword ptr [rsi], xmm0
                movzx   ebx, word ptr [rdi]
                add     rbx, r15
                mov     rcx, rbx
                call    sub_1403714EC
                mov     rbp, rax
                test    rax, rax
                jz      short loc_140757B16
                mov     rdx, [rdi+8]
                lea     r8, [rbx-2]
                mov     rcx, rax
                call    memmove
                mov     rax, rbx
                shr     rax, 1
                mov     [rbp+rax*2-2], r14w
                movzx   eax, bx
                sub     ax, r15w
                mov     [rsi+8], rbp
                mov     [rsi], ax
                xor     eax, eax
                mov     [rsi+2], bx

loc_140757AFC:                          ; CODE XREF: sub_140757A80+9B↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140757B16:                          ; CODE XREF: sub_140757A80+4A↑j
                mov     eax, 0C0000017h
                jmp     short loc_140757AFC
sub_140757A80   endp

; ---------------------------------------------------------------------------
byte_140757B1D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140090BF0↑o
                                        ; .pdata:0000000140109944↑o

; =============== S U B R O U T I N E =======================================


sub_140757B24   proc near               ; CODE XREF: sub_140754980+54↑p
                                        ; sub_140754EA8+59↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014083FAF2 SIZE 0000000D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                xor     edi, edi
                mov     rsi, r8
                mov     r14, rdx
                mov     rbp, rcx
                test    rdx, rdx
                jz      loc_140757BF4
                test    rcx, rcx
                jz      loc_140757BF4
                test    r8, r8
                jz      loc_140757BF4
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     [r8], rdi
                add     [rax+1E4h], bx
                xor     edx, edx
                lea     rcx, qword_140C50490
                call    ExAcquirePushLockExclusiveEx
                add     rbp, 20h ; ' '
                mov     rax, [rbp+0]

loc_140757B90:                          ; CODE XREF: sub_140757B24+BB↓j
                cmp     rax, rbp
                jnz     short loc_140757BD5

loc_140757B95:                          ; CODE XREF: sub_140757B24+E7FD6↓j
                lock xadd cs:qword_140C50490, rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_140757BE6

loc_140757BA6:                          ; CODE XREF: sub_140757B24+CE↓j
                lea     rcx, qword_140C50490
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     eax, edi

loc_140757BB9:                          ; CODE XREF: sub_140757B24+D2↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140757BD5:                          ; CODE XREF: sub_140757B24+6F↑j
                mov     rcx, rax
                mov     rax, [rax]
                cmp     [rcx+10h], r14
                jnz     short loc_140757B90
                jmp     loc_14083FAF2
; ---------------------------------------------------------------------------

loc_140757BE6:                          ; CODE XREF: sub_140757B24+80↑j
                lea     rcx, qword_140C50490
                call    ExfTryToWakePushLock
                jmp     short loc_140757BA6
; ---------------------------------------------------------------------------

loc_140757BF4:                          ; CODE XREF: sub_140757B24+27↑j
                                        ; sub_140757B24+30↑j ...
                xor     eax, eax
                jmp     short loc_140757BB9
sub_140757B24   endp

; ---------------------------------------------------------------------------
algn_140757BF8:                         ; DATA XREF: .rdata:0000000140090C1C↑o
                                        ; .pdata:0000000140109950↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140757C00   proc near               ; CODE XREF: sub_140754854+8E↑p
                                        ; DATA XREF: .pdata:000000014010995C↑o
                sub     rsp, 28h
                mov     r9, rdx
                test    rcx, rcx
                jz      short loc_140757C53
                test    rdx, rdx
                jz      short loc_140757C53
                movzx   r8d, word ptr [rcx]
                shr     r8d, 1
                jz      short loc_140757C31
                mov     r10, [rcx+8]

loc_140757C1E:                          ; CODE XREF: sub_140757C00+2F↓j
                lea     edx, [r8-1]
                cmp     word ptr [r10+rdx*2], 5Ch ; '\'
                jz      short loc_140757C37
                mov     r8d, edx
                test    edx, edx
                jnz     short loc_140757C1E

loc_140757C31:                          ; CODE XREF: sub_140757C00+18↑j
                                        ; sub_140757C00+41↓j
                mov     rdx, [rcx+8]
                jmp     short loc_140757C43
; ---------------------------------------------------------------------------

loc_140757C37:                          ; CODE XREF: sub_140757C00+28↑j
                mov     eax, r8d
                lea     rdx, [r10+rax*2]
                test    rdx, rdx
                jz      short loc_140757C31

loc_140757C43:                          ; CODE XREF: sub_140757C00+35↑j
                mov     rcx, r9
                call    RtlInitUnicodeString
                xor     eax, eax

loc_140757C4D:                          ; CODE XREF: sub_140757C00+58↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140757C53:                          ; CODE XREF: sub_140757C00+A↑j
                                        ; sub_140757C00+F↑j
                mov     eax, 0C000000Dh
                jmp     short loc_140757C4D
sub_140757C00   endp

; ---------------------------------------------------------------------------
algn_140757C5A:                         ; DATA XREF: .pdata:000000014010995C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140757C60   proc near               ; CODE XREF: sub_140754A04+40↑p
                                        ; DATA XREF: .pdata:0000000140109968↑o
                sub     rsp, 28h
                mov     r11d, [rcx+4Ch]
                xor     eax, eax
                mov     r9d, eax
                test    r11d, r11d
                jz      short loc_140757C92
                lea     rdx, [rcx+68h]

loc_140757C76:                          ; CODE XREF: sub_140757C60+30↓j
                cmp     [rdx-4], eax
                jnz     short loc_140757C86
                cmp     [rdx], rax
                jnz     short loc_140757C86
                cmp     dword ptr [rdx-8], 37h ; '7'
                jz      short loc_140757C98

loc_140757C86:                          ; CODE XREF: sub_140757C60+19↑j
                                        ; sub_140757C60+1E↑j ...
                inc     r9d
                add     rdx, 20h ; ' '
                cmp     r9d, r11d
                jb      short loc_140757C76

loc_140757C92:                          ; CODE XREF: sub_140757C60+10↑j
                                        ; sub_140757C60+6B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140757C98:                          ; CODE XREF: sub_140757C60+24↑j
                mov     r10d, r9d
                shl     r10, 5
                mov     r8, [r10+rcx+50h]
                sub     r8, cs:qword_14000C5F0
                jnz     short loc_140757CB9
                mov     r8, [r10+rcx+58h]
                sub     r8, cs:qword_14000C5F8

loc_140757CB9:                          ; CODE XREF: sub_140757C60+4B↑j
                test    r8, r8
                jnz     short loc_140757C86
                mov     rcx, [rcx+8]
                mov     rcx, [rcx+10h]
                call    sub_140771620
                jmp     short loc_140757C92
sub_140757C60   endp

; ---------------------------------------------------------------------------
algn_140757CCD:                         ; DATA XREF: .pdata:0000000140109968↑o
                align 20h
; Exported entry 1457. MmLoadSystemImage

; =============== S U B R O U T I N E =======================================


