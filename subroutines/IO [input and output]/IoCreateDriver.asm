IoCreateDriver  proc near               ; CODE XREF: sub_1407A4D00+25↓p
                                        ; sub_1409E5F40+54↓p ...

var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = xmmword ptr -120h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = dword ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = xmmword ptr -0C0h
var_B0          = byte ptr -0B0h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408564C4 SIZE 000000AA BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-50h]
                sub     rsp, 150h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+70h+var_30], rax
                xor     r15d, r15d
                xorps   xmm0, xmm0
                mov     [rbp+70h+var_DC], r15d
                xorps   xmm1, xmm1
                mov     [rbp+70h+var_C4], r15d
                mov     r14, rdx
                mov     [rsp+170h+var_110], r15
                mov     [rsp+170h+var_100], r15
                lea     r13d, [r15+2]
                mov     [rsp+170h+var_108], r15
                movups  [rsp+170h+var_120], xmm0
                movups  [rbp+70h+var_F0], xmm1
                test    rcx, rcx
                jz      loc_1408564C4
                movups  xmm0, xmmword ptr [rcx]
                movdqu  [rsp+170h+var_120], xmm0

loc_1407A4A1E:                          ; CODE XREF: IoCreateDriver+B1B86↓j
                mov     rdx, cs:IoDriverObjectType
                lea     rax, [rsp+170h+var_120]
                mov     [rsp+170h+var_128], r15
                lea     r8, [rbp+70h+var_E0]
                mov     [rbp+70h+var_D0], rax
                xorps   xmm0, xmm0
                lea     rax, [rsp+170h+var_110]
                mov     [rbp+70h+var_E0], 30h ; '0'
                mov     [rsp+170h+var_130], rax
                mov     edi, 1A0h
                mov     [rsp+170h+var_138], r15d
                xor     r9d, r9d
                mov     dword ptr [rsp+170h+var_140], r15d
                xor     ecx, ecx
                mov     dword ptr [rsp+170h+var_148], edi
                mov     [rbp+70h+var_D8], r15
                mov     [rbp+70h+var_C8], 250h
                movdqu  [rbp+70h+var_C0], xmm0
                call    sub_14061EDD0
                test    eax, eax
                js      loc_1407A4C64
                mov     rsi, [rsp+170h+var_110]
                mov     r8d, edi
                mov     rcx, rsi
                xor     edx, edx
                call    memset
                lea     rax, [rsi+150h]
                mov     ecx, 4
                mov     [rsi+30h], rax
                lea     rdi, [rsi+70h]
                mov     [rax], rsi
                lea     rax, sub_14034A780
                mov     dword ptr [rsi], 1500004h
                mov     [rsi+10h], ecx
                mov     ecx, 1Ch
                rep stosq
                mov     [rsi+58h], r14
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceSharedLite
                mov     rcx, qword ptr cs:PsLoadedModuleList
                lea     rdi, PsLoadedModuleList
                jmp     short loc_1407A4AFF
; ---------------------------------------------------------------------------

loc_1407A4AF3:                          ; CODE XREF: IoCreateDriver+152↓j
                mov     rdx, [rcx+30h]
                cmp     r14, rdx
                jnb     short loc_1407A4B06

loc_1407A4AFC:                          ; CODE XREF: IoCreateDriver+15F↓j
                mov     rcx, [rcx]

loc_1407A4AFF:                          ; CODE XREF: IoCreateDriver+141↑j
                cmp     rcx, rdi
                jnz     short loc_1407A4AF3
                jmp     short loc_1407A4B1A
; ---------------------------------------------------------------------------

loc_1407A4B06:                          ; CODE XREF: IoCreateDriver+14A↑j
                mov     eax, [rcx+40h]
                add     rax, rdx
                cmp     r14, rax
                jnb     short loc_1407A4AFC
                mov     rax, [rsp+170h+var_110]
                mov     [rax+18h], rdx

loc_1407A4B1A:                          ; CODE XREF: IoCreateDriver+154↑j
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                movzx   edx, word ptr [rsp+170h+var_120]
                mov     ecx, 1
                add     rdx, r13
                call    sub_14036D5A0
                mov     qword ptr [rbp+70h+var_F0+8], rax
                mov     rbx, rax
                test    rax, rax
                jz      loc_14085654E
                movzx   edx, word ptr [rsp+170h+var_120]
                mov     word ptr [rbp+70h+var_F0], dx
                mov     edi, edx
                mov     r8d, edx
                lea     ecx, [rdx+r13]
                mov     rdx, qword ptr [rsp+170h+var_120+8]
                mov     word ptr [rbp+70h+var_F0+2], cx
                mov     rcx, rax
                call    memmove
                movups  xmm0, [rbp+70h+var_F0]
                mov     rcx, [rsp+170h+var_110]
                xor     r9d, r9d
                shr     rdi, 1
                xor     edx, edx
                lea     r8d, [r9+1]
                mov     [rbx+rdi*2], r15w
                mov     rax, [rsi+30h]
                movdqu  xmmword ptr [rax+18h], xmm0
                lea     rax, [rsp+170h+var_100]
                mov     [rsp+170h+var_140], rax
                mov     [rsp+170h+var_148], r15
                mov     dword ptr [rsp+170h+var_150], r15d
                call    sub_14061EFE0
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A4C62
                mov     rsi, [rsp+170h+var_100]
                lea     rax, [rsp+170h+var_F8]
                mov     r8, cs:IoDriverObjectType
                mov     rcx, rsi
                mov     [rsp+170h+var_148], r15
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+170h+var_F8], r15
                mov     [rsp+170h+var_150], rax
                call    ObReferenceObjectByHandle
                mov     rdi, [rsp+170h+var_F8]
                mov     ebx, eax
                mov     rcx, rsi
                test    eax, eax
                js      loc_14085653B
                call    ZwClose
                movzx   edx, word ptr [rsp+170h+var_120+2]
                mov     ecx, 200h
                call    sub_14036D5A0
                mov     [rdi+40h], rax
                test    rax, rax
                jz      short loc_1407A4C41
                movzx   eax, word ptr [rsp+170h+var_120+2]
                mov     [rdi+3Ah], ax
                movzx   eax, word ptr [rsp+170h+var_120]
                mov     [rdi+38h], ax
                movzx   r8d, word ptr [rsp+170h+var_120+2]
                mov     rdx, qword ptr [rsp+170h+var_120+8]
                mov     rcx, [rdi+40h]
                call    memmove

loc_1407A4C41:                          ; CODE XREF: IoCreateDriver+269↑j
                xor     edx, edx
                mov     rcx, rdi
                mov     rax, r14
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      loc_140856558
                lea     rcx, [rsp+170h+var_120]
                call    sub_140770E30

loc_1407A4C62:                          ; CODE XREF: IoCreateDriver+209↑j
                                        ; IoCreateDriver+B1B99↓j ...
                mov     eax, ebx

loc_1407A4C64:                          ; CODE XREF: IoCreateDriver+CA↑j
                                        ; IoCreateDriver+B1B4F↓j ...
                mov     rcx, [rbp+70h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+170h+var_20]
                mov     rbx, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407A49B0
IoCreateDriver  endp

byte_1407A4C8D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A2914↑o
                                        ; .pdata:000000014010D208↑o

; =============== S U B R O U T I N E =======================================


sub_1407A4C94   proc near               ; CODE XREF: sub_14074B288+11C↑p
                                        ; sub_1408B53EC+326↓p ...
                sub     rsp, 28h
                add     rcx, 28h ; '('
                call    RtlCopyUnicodeString
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A4C94   endp

algn_1407A4CA7:                         ; DATA XREF: .pdata:000000014010D214↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407A4CB0   proc near               ; CODE XREF: sub_14074B288+107↑p
                                        ; IoReportDetectedDevice+AA663↓p ...
                push    rbx
                sub     rsp, 20h
                mov     [rcx+2Ah], dx
                xor     eax, eax
                mov     [rcx+28h], ax
                mov     rbx, rcx
                mov     ecx, 200h
                mov     edx, edx
                mov     r8d, 49706E50h
                call    ExAllocatePoolWithTag
                mov     [rbx+30h], rax
                neg     rax
                sbb     eax, eax
                not     eax
                and     eax, 0C000009Ah
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A4CB0   endp

algn_1407A4CEC:                         ; DATA XREF: .pdata:000000014010D220↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407A4D00   proc near               ; DATA XREF: .pdata:000000014010D22C↑o
                                        ; sub_1409A2EE0:loc_1409A2EE9↓o

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                lea     rax, aDriverAcpiHal ; "\\Driver\\ACPI_HAL"
                mov     [rsp+38h+var_18], 220020h
                lea     rdx, sub_1407ADE40
                mov     [rsp+38h+var_10], rax
                lea     rcx, [rsp+38h+var_18]
                call    IoCreateDriver
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A4D00   endp

byte_1407A4D30  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010D22C↑o

; =============== S U B R O U T I N E =======================================


sub_1407A4D38   proc near               ; CODE XREF: sub_140A56050+537↓p
                                        ; DATA XREF: .pdata:000000014010D238↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                call    sub_1406F51C0
                mov     rdi, rax
                lea     rsi, qword_140C4CAF8

loc_1407A4D56:                          ; CODE XREF: sub_1407A4D38+5E↓j
                mov     rbx, cs:qword_140C4CAF8
                cmp     rbx, rsi
                jz      short loc_1407A4D98
                cmp     [rbx+8], rsi
                jnz     short loc_1407A4DB1
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_1407A4DB1
                mov     cs:qword_140C4CAF8, rax
                lea     rcx, [rbx+10h]
                mov     [rax+8], rsi
                mov     r8d, [rbx+24h]
                mov     edx, [rbx+20h]
                call    sub_1407722F0
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     short loc_1407A4D56
; ---------------------------------------------------------------------------

loc_1407A4D98:                          ; CODE XREF: sub_1407A4D38+28↑j
                mov     rcx, rdi
                call    sub_1406F5160
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407A4DB1:                          ; CODE XREF: sub_1407A4D38+2E↑j
                                        ; sub_1407A4D38+37↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1407A4D38   endp

; ---------------------------------------------------------------------------
algn_1407A4DB8:                         ; DATA XREF: .pdata:000000014010D238↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407A4DC0   proc near               ; CODE XREF: sub_140A56760+22↓p
                                        ; DATA XREF: .pdata:000000014010D244↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_10], rbx
                push    rdi
                sub     rsp, 30h
                mov     rdx, [rcx+30h]
                mov     rbx, rcx
                and     [rsp+38h+arg_8], 0
                and     [rsp+38h+arg_0], 0
                call    sub_1406F4C0C
                test    rax, rax
                jz      short loc_1407A4E2B
                xor     edi, edi

loc_1407A4DE9:                          ; CODE XREF: sub_1407A4DC0+69↓j
                xor     r9d, r9d
                lea     rax, [rsp+38h+arg_8]
                mov     [rsp+38h+var_10], rax
                mov     edx, edi
                lea     rax, [rsp+38h+arg_0]
                mov     rcx, rbx
                mov     [rsp+38h+var_18], rax
                lea     r8d, [r9+1]
                call    sub_14075B188
                mov     rdx, [rsp+38h+arg_0]
                mov     edi, eax
                test    rdx, rdx
                jz      short loc_1407A4E27
                mov     r8, [rsp+38h+arg_8]
                mov     rcx, rbx
                call    sub_1402DFB84

loc_1407A4E27:                          ; CODE XREF: sub_1407A4DC0+58↑j
                test    edi, edi
                jnz     short loc_1407A4DE9

loc_1407A4E2B:                          ; CODE XREF: sub_1407A4DC0+25↑j
                mov     rbx, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A4DC0   endp

algn_1407A4E37:                         ; DATA XREF: .pdata:000000014010D244↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407A4E40   proc near               ; CODE XREF: sub_140A58090+134↓p
                                        ; DATA XREF: .pdata:000000014010D250↑o

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_48          = byte ptr -48h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 60h
                and     dword ptr [rax+10h], 0
                lea     r9, [rax+20h]
                and     qword ptr [rax+20h], 0
                xorps   xmm0, xmm0
                mov     r15, r8
                mov     ebp, edx
                mov     r8d, edx
                mov     rdi, rcx
                mov     rdx, rcx
                xor     ecx, ecx
                movups  xmmword ptr [rax-48h], xmm0
                movups  xmmword ptr [rax-38h], xmm0
                call    RtlImageNtHeaderEx
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A4F44
                mov     rcx, rdi
                call    sub_140759128
                mov     rdx, rax
                test    rax, rax
                jz      loc_1407A4F5B
                mov     r8d, [rax]
                cmp     r8d, 0E4h
                jl      loc_1407A4F5B
                mov     rcx, [rax+78h]
                xor     esi, esi
                test    rcx, rcx
                jz      short loc_1407A4ECD
                cmp     rcx, rdi
                jb      short loc_1407A4ECD
                lea     rax, [rdi-8]
                add     rax, rbp
                cmp     rcx, rax
                jnb     short loc_1407A4ECD
                mov     esi, ecx
                sub     esi, edi

loc_1407A4ECD:                          ; CODE XREF: sub_1407A4E40+76↑j
                                        ; sub_1407A4E40+7B↑j ...
                lea     rax, [rsp+88h+arg_8]
                mov     rcx, rdi
                mov     [rsp+88h+var_58], rax
                mov     rax, [rsp+88h+arg_18]
                mov     [rsp+88h+var_60], r8d
                xor     r8d, r8d
                mov     [rsp+88h+var_68], rdx
                mov     edx, ebp
                movzx   r9d, word ptr [rax+18h]
                call    sub_140695C58
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407A4F44
                mov     r9d, [rsp+88h+arg_8]
                lea     rax, [rsp+88h+var_48]
                mov     edx, ebp
                mov     [rsp+88h+var_68], rax
                mov     rcx, rdi
                call    sub_1406F597C
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407A4F44
                mov     r9, r15
                lea     rcx, [rsp+88h+var_48]
                mov     r8d, ebp
                mov     edx, esi
                call    sub_1406F5BB4
                lea     rcx, [rsp+88h+var_48]
                mov     ebx, eax
                call    sub_1406953D4

loc_1407A4F44:                          ; CODE XREF: sub_1407A4E40+43↑j
                                        ; sub_1407A4E40+C2↑j ...
                mov     eax, ebx
                mov     rbx, [rsp+88h+arg_0]
                add     rsp, 60h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407A4F5B:                          ; CODE XREF: sub_1407A4E40+57↑j
                                        ; sub_1407A4E40+67↑j
                mov     ebx, 0C00000BBh
                jmp     short loc_1407A4F44
sub_1407A4E40   endp

; ---------------------------------------------------------------------------
algn_1407A4F62:                         ; DATA XREF: .pdata:000000014010D250↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407A4F70   proc near               ; CODE XREF: DbgSetDebugFilterState+4↑p
                                        ; sub_140A58090+A9↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014085656E SIZE 0000002E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     ebx, edx
                mov     sil, r8b
                mov     edi, ecx
                mov     dl, [rax+232h]
                test    dl, dl
                jnz     loc_14085656E

loc_1407A4F9D:                          ; CODE XREF: sub_1407A4F70+B160C↓j
                lea     rdx, dword_140C11598
                cmp     edi, 9Ch
                jnb     loc_14085658C
                lfence
                lea     rdx, off_140007410
                mov     rdx, [rdx+rdi*8]

loc_1407A4FBE:                          ; CODE XREF: sub_1407A4F70+B1627↓j
                cmp     ebx, 1Fh
                ja      short loc_1407A4FCC
                mov     ecx, ebx
                mov     ebx, 1
                shl     ebx, cl

loc_1407A4FCC:                          ; CODE XREF: sub_1407A4F70+51↑j
                mov     ecx, ebx
                not     ecx
                and     ecx, [rdx]
                neg     sil
                sbb     eax, eax
                and     eax, ebx
                or      ecx, eax
                mov     [rdx], ecx
                xor     eax, eax

loc_1407A4FDF:                          ; CODE XREF: sub_1407A4F70+B1617↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A4F70   endp

byte_1407A4FF0  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A2DC8↑o
                                        ; .pdata:000000014010D25C↑o

; =============== S U B R O U T I N E =======================================


sub_1407A4FF8   proc near               ; CODE XREF: sub_140A5C16C+20E↓p
                                        ; DATA XREF: .pdata:000000014010D268↑o

; FUNCTION CHUNK AT 000000014085659C SIZE 0000000B BYTES

                and     cs:qword_140C47D50, 0
                lea     rax, qword_140C47D40
                cmp     cs:dword_140C12084, 384h
                mov     cs:qword_140C47D48, rax
                mov     cs:qword_140C47D40, rax
                ja      loc_14085659C
                retn
sub_1407A4FF8   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1407A5027:                         ; DATA XREF: .pdata:000000014010D268↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1407A5030   proc near               ; CODE XREF: sub_140A5C16C+213↓p
                                        ; DATA XREF: .pdata:000000014010D274↑o

arg_0           = qword ptr  8

                sub     rsp, 28h
                call    sub_1403B7C44
                mov     rax, 82EF4D887A4E55C5h
                lea     rdx, [rsp+28h+arg_0]
                mov     r8d, 8
                mov     [rsp+28h+arg_0], rax
                lea     rcx, unk_140CDB660
                call    sub_1403EBB64
                neg     eax
                sbb     eax, eax
                and     eax, 0C0000001h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A5030   endp

byte_1407A506E  db 6 dup(0CCh)          ; DATA XREF: .pdata:000000014010D274↑o

; =============== S U B R O U T I N E =======================================


sub_1407A5074   proc near               ; CODE XREF: sub_140A5C16C+218↓p
                                        ; DATA XREF: .pdata:000000014010D280↑o
                test    cs:dword_140C47D38, 0FFFFFFFEh
                jnz     short loc_1407A5082
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407A5082:                          ; CODE XREF: sub_1407A5074+A↑j
                and     cs:dword_140C47D38, 0
                retn
sub_1407A5074   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1407A508B  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010D280↑o
; [0000001E BYTES: COLLAPSED FUNCTION RxInitializeTopLevelIrpPackage_0. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1407A50B3  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010D28C↑o
; [0000001E BYTES: COLLAPSED FUNCTION RxInitializeTopLevelIrpPackage_1. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1407A50DB  db 9 dup(0CCh)          ; DATA XREF: .pdata:000000014010D298↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1407A50E4   proc near               ; CODE XREF: sub_140A5C16C+266↓p
                                        ; DATA XREF: .pdata:000000014010D2A4↑o

var_90          = qword ptr -90h
var_80          = word ptr -80h
var_7E          = byte ptr -7Eh
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_0           = qword ptr  10h

                mov     [rsp-8+arg_0], rbx
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0B0h
                mov     ebx, 78h ; 'x'
                lea     rcx, [rbp+57h+var_80]
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                and     [rbp+57h+var_50], 0
                mov     eax, 1F003Fh
                mov     [rbp+57h+var_68], eax
                mov     [rbp+57h+var_64], eax
                mov     al, [rbp+57h+var_7E]
                and     al, 0EFh
                mov     [rbp+57h+var_80], bx
                or      al, 0Ch
                mov     [rbp+57h+var_78], 30h ; '0'
                and     [rbp+57h+var_48], 0
                mov     [rbp+57h+var_7E], al
                lea     rax, sub_140721CA0
                mov     [rbp+57h+var_40], rax
                lea     rax, sub_1407228C0
                mov     [rbp+57h+var_38], rax
                mov     [rbp+57h+var_74], 120001h
                mov     [rbp+57h+var_70], 12003Eh
                mov     [rbp+57h+var_6C], 120018h
                mov     [rbp+57h+var_58], 20h ; ' '
                mov     [rbp+57h+var_5C], 1
                lea     rax, qword_140C47C10
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+0B0h+var_90], rax
                lea     rdx, [rbp+57h+var_80]
                lea     rcx, asc_140005940 ; "&("
                call    ObCreateObjectTypeEx
                mov     rbx, [rsp+0B0h+arg_0]
                add     rsp, 0B0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A50E4   endp

byte_1407A51A0  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010D2A4↑o

; =============== S U B R O U T I N E =======================================


sub_1407A51A8   proc near               ; CODE XREF: sub_140A5C16C+311↓p
                                        ; DATA XREF: .pdata:000000014010D2B0↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                lea     rcx, dword_140C47BD8
                call    sub_140790D08
                test    eax, eax
                js      short loc_1407A51C9
                mov     rcx, rbx
                call    sub_1407A51D8

loc_1407A51C9:                          ; CODE XREF: sub_1407A51A8+17↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A51A8   endp

byte_1407A51D0  db 8 dup(0CCh)          ; DATA XREF: .pdata:000000014010D2B0↑o

; =============== S U B R O U T I N E =======================================


sub_1407A51D8   proc near               ; CODE XREF: sub_1407A51A8+1C↑p
                                        ; sub_140907B60+A2↓p
                                        ; DATA XREF: ...

arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                lea     rdx, [rsp+28h+arg_8]
                mov     [rsp+28h+arg_8], rbx
                call    sub_1406E0074
                test    eax, eax
                js      short loc_1407A5210
                mov     rcx, [rsp+28h+arg_8]
                call    sub_1407229CC
                test    eax, eax
                js      short loc_1407A5210
                mov     rcx, [rsp+28h+arg_8]
                call    sub_1407A5220
                test    eax, eax
                cmovns  eax, ebx

loc_1407A5210:                          ; CODE XREF: sub_1407A51D8+19↑j
                                        ; sub_1407A51D8+27↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A51D8   endp

algn_1407A5217:                         ; DATA XREF: .pdata:000000014010D2BC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1407A5220   proc near               ; CODE XREF: sub_1407A51D8+2E↑p
                                        ; DATA XREF: .pdata:000000014010D2C8↑o
                push    rbx
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, rcx
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                or      dword ptr [rbx+8], 1
                xor     edx, edx
                mov     rcx, rbx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A5220   endp

byte_1407A5265  db 7 dup(0CCh)          ; DATA XREF: .pdata:000000014010D2C8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1407A526C   proc near               ; CODE XREF: sub_140A5C16C+666↓p
                                        ; DATA XREF: .pdata:000000014010D2D4↑o

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  20h
arg_8           = dword ptr  28h
arg_C           = dword ptr  2Ch
arg_10          = qword ptr  30h

                push    rbp
                push    rbx
                push    rdi
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+arg_10], 0
                lea     rdx, [rbp+arg_10]
                and     [rbp+arg_0], 0
                xor     eax, eax
                and     [rbp+var_2C], 0
                xor     r8d, r8d
                and     [rbp+var_14], 0
                or      [rbp+arg_8], 0FFFFFFFFh
                mov     [rbp+arg_C], eax
                call    sub_1407A6214
                test    eax, eax
                js      loc_1407A53A9
                mov     rdi, [rbp+arg_10]
                lea     rax, asc_140984FA8 ; "$&"
                xorps   xmm0, xmm0
                mov     [rbp+var_28], rdi
                lea     r8, [rbp+var_30]
                mov     [rbp+var_20], rax
                mov     edx, 20019h
                mov     [rbp+var_30], 30h ; '0'
                lea     rcx, [rbp+arg_0]
                mov     [rbp+var_18], 240h
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenKey
                mov     rcx, rdi
                mov     ebx, eax
                call    ZwClose
                test    ebx, ebx
                js      loc_1407A53A9
                mov     r8, cs:CmKeyObjectType
                lea     rax, [rbp+arg_10]
                and     [rsp+60h+var_38], 0
                xor     r9d, r9d
                mov     rcx, [rbp+arg_0]
                mov     edx, 20019h
                and     [rbp+arg_10], 0
                mov     [rsp+60h+var_40], rax
                call    ObReferenceObjectByHandle
                mov     rcx, [rbp+arg_0]
                mov     ebx, eax
                call    ZwClose
                test    ebx, ebx
                js      short loc_1407A53A9
                call    sub_1405FA03C
                mov     rbx, [rbp+arg_10]
                lea     r8, [rbp+arg_8]
                mov     rax, [rbx+8]
                mov     rcx, [rax+20h]
                mov     edx, [rax+28h]
                mov     rax, [rcx+8]
                call    sub_1404079D0
                test    rax, rax
                jz      short loc_1407A539C
                mov     rcx, [rbx+8]
                lea     r8, qword_140984F88
                mov     rdx, rax
                mov     rcx, [rcx+20h]
                call    sub_1406E460C
                mov     rcx, [rbx+8]
                lea     rdx, [rbp+arg_8]
                mov     edi, eax
                mov     rcx, [rcx+20h]
                mov     rax, [rcx+10h]
                call    sub_1404079D0
                cmp     edi, 0FFFFFFFFh
                jz      short loc_1407A539C
                mov     rcx, [rbx+8]
                xor     r9d, r9d
                mov     r8b, 1
                mov     edx, edi
                mov     rcx, [rcx+20h]
                call    sub_140601410

loc_1407A539C:                          ; CODE XREF: sub_1407A526C+E6↑j
                                        ; sub_1407A526C+119↑j
                call    sub_14064A360
                mov     rcx, rbx
                call    PsDereferenceSiloContext

loc_1407A53A9:                          ; CODE XREF: sub_1407A526C+34↑j
                                        ; sub_1407A526C+81↑j ...
                add     rsp, 60h
                pop     rdi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407A526C   endp

algn_1407A53B2:                         ; DATA XREF: .pdata:000000014010D2D4↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=230h

sub_1407A53B8   proc near               ; CODE XREF: sub_1408BA3E4+187↓p
                                        ; sub_140A5A734+3F6↓p
                                        ; DATA XREF: ...

var_310         = qword ptr -310h
var_308         = qword ptr -308h
var_300         = qword ptr -300h
var_2F0         = dword ptr -2F0h
var_2EC         = dword ptr -2ECh
var_2E8         = qword ptr -2E8h
var_2E0         = xmmword ptr -2E0h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = dword ptr -2C0h
var_2BC         = dword ptr -2BCh
var_2B8         = xmmword ptr -2B8h
var_2A8         = xmmword ptr -2A8h
var_298         = xmmword ptr -298h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = dword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = xmmword ptr -250h
var_240         = dword ptr -240h
var_23C         = dword ptr -23Ch
var_238         = dword ptr -238h
var_234         = dword ptr -234h
var_140         = byte ptr -140h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408565A8 SIZE 0000035B BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-200h]
                sub     rsp, 300h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+230h+var_40], rax
                mov     r13, [rbp+230h+arg_20]
                lea     r8, [rbp+230h+var_250]
                and     [rbp+230h+var_258], 0
                xorps   xmm0, xmm0
                and     [rsp+330h+var_2D0], 0
                xor     edi, edi
                and     [rsp+330h+var_2C8], 0
                mov     r14, rdx
                and     [rsp+330h+var_2E8], 0
                lea     rdx, [rbp+230h+var_258]
                and     [rbp+230h+var_260], 0
                xorps   xmm1, xmm1
                and     [rbp+230h+var_270], 0
                mov     rsi, r9
                and     [rsp+330h+var_2C0], 0
                mov     r15, rcx
                and     [rsp+330h+var_2EC], 0
                and     [rsp+330h+var_2BC], 0
                and     [rsp+330h+var_2F0], 0
                and     [rbp+230h+var_278], 0
                and     [rbp+230h+var_268], rdi
                and     [rbp+230h+var_280], rdi
                mov     [r13+0], dil
                mov     [rbp+230h+var_288], r9
                movups  [rbp+230h+var_250], xmm0
                movups  [rsp+330h+var_2E0], xmm1
                movups  [rsp+330h+var_2B8], xmm0
                movups  [rbp+230h+var_2A8], xmm0
                movups  [rbp+230h+var_298], xmm0
                call    sub_1407A6214
                mov     ebx, eax
                test    eax, eax
                js      loc_1408565F0
                mov     r12, [rbp+230h+var_258]
                lea     rax, asc_140984FA8 ; "$&"
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+230h+var_2B8+8], r12
                lea     r8, [rsp+330h+var_2B8]
                mov     qword ptr [rbp+230h+var_2A8], rax
                mov     edx, 20019h
                mov     dword ptr [rsp+330h+var_2B8], 30h ; '0'
                lea     rcx, [rsp+330h+var_2D0]
                mov     dword ptr [rbp+230h+var_2A8+8], 240h
                movdqu  [rbp+230h+var_298], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1408565A8
                mov     rcx, [rsp+330h+var_2D0]
                lea     r9, [rbp+230h+var_140]
                mov     eax, 100h
                lea     r8, [rbp+230h+var_268]
                mov     dword ptr [rsp+330h+var_308], eax
                lea     rdx, [rbp+230h+var_280]
                lea     rax, [rbp+230h+var_240]
                mov     [rsp+330h+var_310], rax
                call    sub_1407A5ACC
                mov     ebx, eax
                test    eax, eax
                js      loc_1408565F0
                lea     rax, a24_1      ; "24"
                mov     dword ptr [rsp+330h+var_2B8], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+230h+var_2A8], rax
                lea     r8, [rsp+330h+var_2B8]
                mov     qword ptr [rbp+230h+var_2B8+8], r12
                mov     edx, 20019h
                mov     dword ptr [rbp+230h+var_2A8+8], 240h
                lea     rcx, [rsp+330h+var_2C8]
                movdqu  [rbp+230h+var_298], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1408565B2
                lea     rdx, aCurrentdockinf ; "CurrentDockInfo"
                lea     rcx, [rsp+330h+var_2E0]
                call    RtlInitUnicodeString
                mov     rax, [rsp+330h+var_2D0]
                lea     r8, [rsp+330h+var_2B8]
                mov     qword ptr [rbp+230h+var_2B8+8], rax
                lea     rcx, [rsp+330h+var_2E8]
                lea     rax, [rsp+330h+var_2E0]
                mov     dword ptr [rsp+330h+var_2B8], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+230h+var_2A8], rax
                mov     edx, 20019h
                mov     dword ptr [rbp+230h+var_2A8+8], 240h
                movdqu  [rbp+230h+var_298], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1408565BC
                lea     rdx, aDockingstate ; "DockingState"
                lea     rcx, [rsp+330h+var_2E0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+330h+var_2E8]
                lea     rax, [rsp+330h+var_2C0]
                mov     [rsp+330h+var_308], rax
                lea     r9, [rbp+230h+var_240]
                mov     eax, 100h
                lea     r8d, [rdi+1]
                lea     rdx, [rsp+330h+var_2E0]
                mov     dword ptr [rsp+330h+var_310], eax
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_1408568DE
                cmp     [rbp+230h+var_23C], 4
                jnz     loc_1408568DE
                mov     eax, [rbp+230h+var_238]
                lea     rdx, aAcpiserialnumb ; "AcpiSerialNumber"
                lea     rcx, [rsp+330h+var_2E0]
                mov     ebx, [rbp+rax+230h+var_240]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+330h+var_2E8]
                lea     rax, [rsp+330h+var_2C0]
                mov     [rsp+330h+var_308], rax
                lea     r9, [rbp+230h+var_240]
                mov     esi, 100h
                lea     r8d, [rdi+1]
                lea     rdx, [rsp+330h+var_2E0]
                mov     dword ptr [rsp+330h+var_310], esi
                call    ZwQueryValueKey
                test    eax, eax
                jns     loc_1408565C6

loc_1407A5626:                          ; CODE XREF: sub_1407A53B8+B1212↓j
                                        ; sub_1407A53B8+B1268↓j
                lea     rdx, aCurrentconfig ; "CurrentConfig"
                lea     rcx, [rsp+330h+var_2E0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+330h+var_2D0]
                lea     rax, [rsp+330h+var_2C0]
                mov     [rsp+330h+var_308], rax
                lea     r9, [rbp+230h+var_240]
                mov     r8d, 1
                mov     dword ptr [rsp+330h+var_310], esi
                lea     rdx, [rsp+330h+var_2E0]
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_1408567F7
                cmp     [rbp+230h+var_23C], 4
                jnz     loc_1408567F7
                mov     eax, [rbp+230h+var_238]
                mov     r8, rdi
                mov     edx, ebx
                mov     rcx, r15
                mov     esi, [rbp+rax+230h+var_240]
                mov     r9d, esi
                mov     rax, [rbp+230h+var_268]
                mov     [rsp+330h+var_308], rax
                mov     rax, [rbp+230h+var_280]
                mov     [rsp+330h+var_310], rax
                call    sub_1407A58F8
                mov     ebx, eax
                test    eax, eax
                js      loc_1408565F0
                mov     rcx, [rbp+230h+var_280]
                lea     rdx, [rsp+330h+var_2BC]
                xor     r8d, r8d
                mov     rax, r14
                call    sub_1404079D0
                cmp     [rsp+330h+var_2BC], 0FFFFFFFFh
                mov     ebx, eax
                jz      loc_1407A57D8
                test    eax, eax
                js      loc_1408565F0
                lea     rax, asc_140984F98 ; "\"$"
                mov     dword ptr [rsp+330h+var_2B8], 30h ; '0'
                xorps   xmm0, xmm0
                mov     qword ptr [rbp+230h+var_2A8], rax
                lea     r8, [rsp+330h+var_2B8]
                mov     qword ptr [rbp+230h+var_2B8+8], r12
                mov     edx, 20019h
                mov     dword ptr [rbp+230h+var_2A8+8], 240h
                lea     rcx, [rbp+230h+var_270]
                movdqu  [rbp+230h+var_298], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_140856625
                mov     rax, [rbp+230h+var_280]
                mov     ecx, [rsp+330h+var_2BC]
                shl     rcx, 5
                mov     r14d, [rcx+rax+20h]
                mov     edx, [rcx+rax+1Ch]
                mov     [rsp+330h+var_2F0], edx
                test    r14b, 8
                jnz     loc_14085662F

loc_1407A5732:                          ; CODE XREF: sub_1407A53B8+B12AB↓j
                mov     ebx, r14d
                and     ebx, 4
                jnz     loc_140856668
                cmp     edx, esi
                jnz     loc_140856668
                mov     ebx, 4

loc_1407A574B:                          ; CODE XREF: sub_1407A53B8+B1439↓j
                movzx   eax, word ptr [r15]
                lea     rdx, aDockingstate ; "DockingState"
                lea     rcx, [rsp+330h+var_2E0]
                mov     [rsp+330h+var_2EC], eax
                call    RtlInitUnicodeString
                mov     rcx, [rsp+330h+var_2E8]
                lea     rax, [rsp+330h+var_2EC]
                mov     dword ptr [rsp+330h+var_308], ebx
                lea     rdx, [rsp+330h+var_2E0]
                mov     r9d, ebx
                mov     [rsp+330h+var_310], rax
                xor     r8d, r8d
                call    ZwSetValueKey
                lea     rdx, aAcpiserialnumb ; "AcpiSerialNumber"
                lea     rcx, [rsp+330h+var_2E0]
                call    RtlInitUnicodeString
                movzx   eax, word ptr [r15+2]
                lea     rcx, [r15+4]
                mov     dword ptr [rsp+330h+var_308], eax
                lea     rdx, [rsp+330h+var_2E0]
                mov     [rsp+330h+var_310], rcx
                mov     r9d, 3
                mov     rcx, [rsp+330h+var_2E8]
                xor     r8d, r8d
                call    ZwSetValueKey
                mov     ebx, eax
                test    r14b, 2
                jz      loc_140856801

loc_1407A57CE:                          ; CODE XREF: sub_1407A53B8+B1464↓j
                cmp     [rsp+330h+var_2F0], esi
                jnz     loc_140856821

loc_1407A57D8:                          ; CODE XREF: sub_1407A53B8+306↑j
                                        ; sub_1407A53B8+B1272↓j ...
                mov     rsi, [rbp+230h+var_288]

loc_1407A57DC:                          ; CODE XREF: sub_1407A53B8+B11F5↓j
                                        ; sub_1407A53B8+B11FF↓j ...
                test    ebx, ebx
                js      loc_1408565F0
                mov     rax, [rsp+330h+var_2C8]
                mov     [rsi], rax

loc_1407A57EC:                          ; CODE XREF: sub_1407A53B8+B1240↓j
                                        ; sub_1407A53B8+B124C↓j
                mov     rcx, [rbp+230h+var_260]
                test    rcx, rcx
                jnz     loc_1408568E8

loc_1407A57F9:                          ; CODE XREF: sub_1407A53B8+B1536↓j
                mov     rcx, [rsp+330h+var_2D0]
                test    rcx, rcx
                jz      short loc_1407A5808
                call    ZwClose

loc_1407A5808:                          ; CODE XREF: sub_1407A53B8+449↑j
                mov     rcx, [rsp+330h+var_2E8]
                test    rcx, rcx
                jz      short loc_1407A5817
                call    ZwClose

loc_1407A5817:                          ; CODE XREF: sub_1407A53B8+458↑j
                mov     rcx, [rbp+230h+var_270]
                test    rcx, rcx
                jz      short loc_1407A5825
                call    ZwClose

loc_1407A5825:                          ; CODE XREF: sub_1407A53B8+466↑j
                test    rdi, rdi
                jnz     loc_1408568F3

loc_1407A582E:                          ; CODE XREF: sub_1407A53B8+B1546↓j
                mov     rcx, [rbp+230h+var_280]
                test    rcx, rcx
                jz      short loc_1407A5878
                xor     edx, edx
                mov     [rsp+330h+var_2EC], edx
                cmp     [rcx+4], edx
                jbe     short loc_1407A5871
                xor     eax, eax

loc_1407A5844:                          ; CODE XREF: sub_1407A53B8+4B7↓j
                shl     rax, 5
                mov     r8, [rax+rcx+10h]
                test    r8, r8
                jz      short loc_1407A5864
                xor     edx, edx
                mov     rcx, r8
                call    ExFreePoolWithTag
                mov     edx, [rsp+330h+var_2EC]
                mov     rcx, [rbp+230h+var_280]

loc_1407A5864:                          ; CODE XREF: sub_1407A53B8+498↑j
                inc     edx
                mov     [rsp+330h+var_2EC], edx
                mov     eax, edx
                cmp     edx, [rcx+4]
                jb      short loc_1407A5844

loc_1407A5871:                          ; CODE XREF: sub_1407A53B8+488↑j
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1407A5878:                          ; CODE XREF: sub_1407A53B8+47D↑j
                mov     rcx, [rbp+230h+var_268]
                test    rcx, rcx
                jz      short loc_1407A58C4
                xor     edx, edx
                mov     [rsp+330h+var_2EC], edx
                cmp     [rcx+4], edx
                jbe     short loc_1407A58BD
                xor     eax, eax

loc_1407A588E:                          ; CODE XREF: sub_1407A53B8+503↓j
                inc     rax
                lea     rax, [rax+rax*2]
                mov     r8, [rcx+rax*8]
                test    r8, r8
                jz      short loc_1407A58B0
                xor     edx, edx
                mov     rcx, r8
                call    ExFreePoolWithTag
                mov     edx, [rsp+330h+var_2EC]
                mov     rcx, [rbp+230h+var_268]

loc_1407A58B0:                          ; CODE XREF: sub_1407A53B8+4E4↑j
                inc     edx
                mov     [rsp+330h+var_2EC], edx
                mov     eax, edx
                cmp     edx, [rcx+4]
                jb      short loc_1407A588E

loc_1407A58BD:                          ; CODE XREF: sub_1407A53B8+4D2↑j
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1407A58C4:                          ; CODE XREF: sub_1407A53B8+4C7↑j
                mov     eax, ebx
                mov     rcx, [rbp+230h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+330h+arg_10]
                add     rsp, 300h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407A53B8
sub_1407A53B8   endp

algn_1407A58F1:                         ; DATA XREF: .rdata:00000001400A31F0↑o
                                        ; .pdata:000000014010D2E0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1407A58F8   proc near               ; CODE XREF: sub_1407A53B8+2DC↑p
                                        ; DATA XREF: .rdata:00000001400A3220↑o ...

var_38          = byte ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140856904 SIZE 000000A1 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], r9d
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbx, [rsp+58h+arg_28]
                xor     r14d, r14d
                mov     rsi, [rsp+58h+arg_20]
                xor     r13b, r13b
                mov     r15, r8
                mov     [rsp+58h+var_2C], r14d
                xor     r8b, r8b
                mov     [rsp+58h+var_38], r13b
                mov     r12d, edx
                mov     [rsp+58h+var_34], r8d
                xor     dl, dl
                mov     r10d, r9d
                mov     [rsp+58h+var_30], edx
                lea     r9d, [r14+1]
                mov     rbp, rcx
                test    rbx, rbx
                jz      loc_140856904
                cmp     [rbx+4], r14d
                jbe     loc_140856904

loc_1407A5969:                          ; CODE XREF: sub_1407A58F8+131↓j
                lea     rdi, [r14+r14*2]
                mov     ecx, [rbx+rdi*8+0Ch]
                and     ecx, 3
                jz      short loc_1407A5985
                movzx   eax, word ptr [rbp+0]
                and     eax, 3
                cmp     ecx, eax
                jnz     loc_1407A5A1D

loc_1407A5985:                          ; CODE XREF: sub_1407A58F8+7C↑j
                mov     ecx, [rbx+rdi*8+10h]
                movzx   eax, word ptr [rbp+2]
                cmp     ecx, eax
                jnz     loc_1407A5A1D
                mov     rdx, [rbx+rdi*8+18h]
                mov     r8d, ecx
                lea     rcx, [rbp+4]
                call    RtlCompareMemory
                mov     ecx, [rbx+rdi*8+10h]
                mov     r9d, 1
                mov     r10d, [rsp+58h+arg_18]
                mov     r8d, [rsp+58h+var_34]
                cmp     rcx, rax
                jnz     short loc_1407A5A1D
                xor     edx, edx
                cmp     [rsi+4], edx
                jbe     short loc_1407A5A1D
                mov     ecx, [rbx+rdi*8+8]
                mov     r14d, [rsp+58h+var_30]

loc_1407A59CF:                          ; CODE XREF: sub_1407A58F8+114↓j
                mov     eax, edx
                shl     rax, 5
                cmp     [rax+rsi+1Ch], ecx
                jnz     short loc_1407A59E3
                or      dword ptr [rax+rsi+20h], 2
                mov     r13b, r9b

loc_1407A59E3:                          ; CODE XREF: sub_1407A58F8+E1↑j
                movzx   eax, word ptr [rbp+0]
                cmp     r12d, eax
                jnz     short loc_1407A59F7
                test    r15, r15
                movzx   r14d, r14b
                cmovz   r14d, r9d

loc_1407A59F7:                          ; CODE XREF: sub_1407A58F8+F2↑j
                mov     ecx, [rbx+rdi*8+8]
                cmp     ecx, r10d
                movzx   r8d, r8b
                cmovz   r8d, r9d
                add     edx, r9d
                cmp     edx, [rsi+4]
                jb      short loc_1407A59CF
                mov     [rsp+58h+var_30], r14d
                mov     r14d, [rsp+58h+var_2C]
                mov     [rsp+58h+var_34], r8d

loc_1407A5A1D:                          ; CODE XREF: sub_1407A58F8+87↑j
                                        ; sub_1407A58F8+97↑j ...
                add     r14d, r9d
                mov     [rsp+58h+var_2C], r14d
                cmp     r14d, [rbx+4]
                jb      loc_1407A5969
                mov     edx, [rsp+58h+var_30]
                test    dl, dl
                jz      loc_140856904

loc_1407A5A3B:                          ; CODE XREF: sub_1407A58F8+B100F↓j
                                        ; sub_1407A58F8+B1018↓j
                mov     ebp, 1

loc_1407A5A40:                          ; CODE XREF: sub_1407A58F8+B1029↓j
                mov     r11b, [rsp+58h+var_38]

loc_1407A5A45:                          ; CODE XREF: sub_1407A58F8+B103A↓j
                mov     eax, [rsi+4]
                xor     ebx, ebx
                test    eax, eax
                jz      short loc_1407A5A90
                mov     edi, ebp

loc_1407A5A50:                          ; CODE XREF: sub_1407A58F8+196↓j
                mov     r9d, ebx
                shl     r9, 5
                mov     ecx, [r9+rsi+20h]
                test    dl, dl
                jz      loc_14085694B
                test    cl, 2
                jz      short loc_1407A5AB0
                test    r8b, r8b
                jz      loc_140856937

loc_1407A5A72:                          ; CODE XREF: sub_1407A58F8+B1076↓j
                cmp     [r9+rsi+1Ch], r10d
                jnz     short loc_1407A5AB0

loc_1407A5A79:                          ; CODE XREF: sub_1407A58F8+B105B↓j
                                        ; sub_1407A58F8+B1064↓j ...
                add     ebx, ebp
                add     edi, ebp

loc_1407A5A7D:                          ; CODE XREF: sub_1407A58F8+1C9↓j
                                        ; sub_1407A58F8+B104E↓j
                mov     r10d, [rsp+58h+arg_18]
                mov     r8d, [rsp+58h+var_34]
                mov     r11b, [rsp+58h+var_38]
                cmp     ebx, eax
                jb      short loc_1407A5A50

loc_1407A5A90:                          ; CODE XREF: sub_1407A58F8+154↑j
                mov     rbx, [rsp+58h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1407A5AB0:                          ; CODE XREF: sub_1407A58F8+16F↑j
                                        ; sub_1407A58F8+17F↑j ...
                mov     ecx, eax
                sub     ecx, ebx
                sub     ecx, ebp
                jnz     loc_140856979

loc_1407A5ABC:                          ; CODE XREF: sub_1407A58F8+B10A8↓j
                dec     eax
                mov     [rsi+4], eax
                jmp     short loc_1407A5A7D
sub_1407A58F8   endp

; ---------------------------------------------------------------------------
byte_1407A5AC3  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A3220↑o
                                        ; .pdata:000000014010D2EC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_1407A5ACC   proc near               ; CODE XREF: sub_1407A53B8+12C↑p
                                        ; DATA XREF: .rdata:00000001400A3258↑o ...

var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408569A6 SIZE 00000133 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-17h]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+47h+var_40], rax
                mov     rdi, [rbp+47h+arg_20]
                xor     esi, esi
                xorps   xmm1, xmm1
                mov     [rdx], rsi
                mov     r12, rdx
                mov     [rsp+130h+var_E0], rsi
                mov     r13, rcx
                mov     [rsp+130h+var_D8], rsi
                xorps   xmm0, xmm0
                mov     [rsp+130h+var_F8], rsi
                lea     rdx, aHardwareProfil ; "Hardware Profiles"
                mov     [rsp+130h+var_100], esi
                lea     rcx, [rsp+130h+var_F0]
                mov     [rbp+47h+var_B0], 30h ; '0'
                mov     r15, r8
                mov     [rbp+47h+var_98], 240h
                movups  [rsp+130h+var_F0], xmm0
                mov     [r8], rsi
                movups  [rbp+47h+var_70], xmm1
                movups  [rbp+47h+var_60], xmm1
                movups  [rbp+47h+var_50], xmm1
                call    RtlInitUnicodeString
                lea     rax, [rsp+130h+var_F0]
                mov     [rbp+47h+var_A8], r13
                xorps   xmm0, xmm0
                mov     [rbp+47h+var_A0], rax
                lea     r8, [rbp+47h+var_B0]
                mov     edx, 20019h
                lea     rcx, [rsp+130h+var_D8]
                movdqu  [rbp+47h+var_90], xmm0
                lea     r14d, [rsi+30h]
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1408569A6
                mov     rcx, [rsp+130h+var_D8]
                lea     rax, [rsp+130h+var_100]
                mov     r9d, r14d
                mov     [rsp+130h+var_110], rax
                lea     r8, [rbp+47h+var_70]
                lea     edx, [rsi+2]
                call    ZwQueryKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A61BB
                mov     eax, dword ptr [rbp+47h+var_60+4]
                lea     ecx, [rsi+1]
                dec     eax
                mov     r8d, 20204D43h
                shl     eax, 5
                add     eax, 28h ; '('
                mov     edx, eax
                mov     [rsp+130h+var_100], eax
                call    ExAllocatePoolWithTag
                mov     [r12], rax
                test    rax, rax
                jz      loc_1408569B0
                mov     r8d, [rsp+130h+var_100]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     eax, dword ptr [rbp+47h+var_60+4]
                lea     ebx, [rsi+4]
                mov     rcx, [r12]
                mov     r14d, esi
                mov     [rcx], eax
                mov     rax, [r12]
                mov     [rax+4], esi
                cmp     dword ptr [rbp+47h+var_60+4], esi
                jbe     loc_1407A5EE3

loc_1407A5C0E:                          ; CODE XREF: sub_1407A5ACC+412↓j
                mov     rcx, [rsp+130h+var_D8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                mov     r9, rdi
                xor     r8d, r8d
                mov     dword ptr [rsp+130h+var_110], 0FEh
                mov     edx, r14d
                mov     dword ptr [rsp+130h+var_D0+4], esi
                mov     dword ptr [rbp+47h+var_C0+4], esi
                mov     dword ptr [rbp+47h+var_C0+0Ch], esi
                call    ZwEnumerateKey
                test    eax, eax
                js      loc_1407A5EE3
                mov     eax, [rdi+0Ch]
                lea     r8, [rbp+47h+var_B0]
                shr     rax, 1
                lea     rcx, [rsp+130h+var_F8]
                xorps   xmm0, xmm0
                mov     edx, 20019h
                mov     [rdi+rax*2+10h], si
                movzx   eax, word ptr [rdi+0Ch]
                mov     word ptr [rsp+130h+var_F0], ax
                add     ax, 2
                mov     word ptr [rsp+130h+var_F0+2], ax
                lea     rax, [rdi+10h]
                mov     qword ptr [rsp+130h+var_F0+8], rax
                mov     rax, [rsp+130h+var_D8]
                mov     [rbp+47h+var_A8], rax
                lea     rax, [rsp+130h+var_F0]
                mov     [rbp+47h+var_A0], rax
                mov     dword ptr [rbp+47h+var_B0], 30h ; '0'
                mov     dword ptr [rbp+47h+var_98], 240h
                movdqu  [rbp+47h+var_90], xmm0
                call    ZwOpenKey
                test    eax, eax
                js      loc_1407A5EE3
                lea     r8, [rbp+47h+var_C0+4]
                xor     edx, edx
                lea     rcx, [rsp+130h+var_F0]
                call    RtlUnicodeStringToInteger
                lea     rdx, aPreferenceorde ; "PreferenceOrder"
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     rdx, [rsp+130h+var_F0]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                mov     r8d, 1
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_1408569BA
                cmp     [rdi+4], ebx
                jnz     loc_1408569BA
                mov     eax, [rdi+8]
                mov     esi, [rax+rdi]

loc_1407A5D10:                          ; CODE XREF: sub_1407A5ACC+B0EF1↓j
                lea     rdx, aFriendlyname ; "FriendlyName"
                mov     dword ptr [rbp+47h+var_C0], esi
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     rdx, [rsp+130h+var_F0]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                mov     r8d, 1
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_1408569C2
                cmp     dword ptr [rdi+4], 1
                jnz     loc_1408569C2
                mov     edx, [rdi+0Ch]
                mov     ecx, 1
                mov     r8d, 20204D43h
                call    ExAllocatePoolWithTag
                mov     ecx, [rdi+0Ch]
                mov     dword ptr [rsp+130h+var_D0], ecx
                mov     qword ptr [rsp+130h+var_D0+8], rax
                test    rax, rax
                jz      loc_140856A1C
                mov     edx, [rdi+8]
                mov     r8d, ecx
                add     rdx, rdi

loc_1407A5D91:                          ; CODE XREF: sub_1407A5ACC+B0F2D↓j
                mov     rcx, rax
                call    memmove
                xor     ebx, ebx
                lea     rdx, aAliasable ; "Aliasable"
                lea     rcx, [rsp+130h+var_F0]
                mov     dword ptr [rbp+47h+var_C0+8], ebx
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     r8d, [rbx+1]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                lea     rdx, [rsp+130h+var_F0]
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_1408569FE
                cmp     dword ptr [rdi+4], 4
                jnz     loc_1408569FE
                mov     eax, [rdi+8]
                cmp     [rax+rdi], ebx
                jnz     loc_1408569FE

loc_1407A5DF5:                          ; CODE XREF: sub_1407A5ACC+B0F3A↓j
                lea     rdx, aPristine  ; "Pristine"
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     rdx, [rsp+130h+var_F0]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                mov     r8d, 1
                call    ZwQueryValueKey
                mov     ecx, 4
                test    eax, eax
                js      short loc_1407A5E4B
                cmp     [rdi+4], ecx
                jnz     short loc_1407A5E4B
                mov     eax, [rdi+8]
                cmp     dword ptr [rax+rdi], 0
                cmovnz  ebx, ecx
                mov     dword ptr [rbp+47h+var_C0+8], ebx

loc_1407A5E4B:                          ; CODE XREF: sub_1407A5ACC+36B↑j
                                        ; sub_1407A5ACC+370↑j
                cmp     dword ptr [rbp+47h+var_C0+4], 0
                jnz     short loc_1407A5E5A
                or      esi, 0FFFFFFFFh
                mov     dword ptr [rbp+47h+var_C0+8], ecx
                mov     dword ptr [rbp+47h+var_C0], esi

loc_1407A5E5A:                          ; CODE XREF: sub_1407A5ACC+383↑j
                mov     rcx, [r12]
                xor     ebx, ebx
                mov     eax, [rcx+4]
                test    eax, eax
                jz      short loc_1407A5EA6

loc_1407A5E67:                          ; CODE XREF: sub_1407A5ACC+B0F45↓j
                mov     edx, ebx
                lea     r9d, [rbx+1]
                shl     rdx, 5
                cmp     [rdx+rcx+18h], esi
                jb      loc_140856A0B
                mov     r8d, [rcx]
                add     rdx, 8
                sub     r8d, ebx
                mov     eax, r9d
                add     rdx, rcx
                shl     rax, 5
                dec     r8d
                add     rcx, 8
                shl     r8, 5
                add     rcx, rax
                call    memmove
                mov     rcx, [r12]

loc_1407A5EA6:                          ; CODE XREF: sub_1407A5ACC+399↑j
                                        ; sub_1407A5ACC+B0F4B↓j
                movups  xmm0, [rsp+130h+var_D0]
                mov     eax, ebx
                movups  xmm1, [rbp+47h+var_C0]
                shl     rax, 5
                movups  xmmword ptr [rax+rcx+8], xmm0
                movups  xmmword ptr [rax+rcx+18h], xmm1
                mov     rax, [r12]
                inc     dword ptr [rax+4]
                mov     rcx, [rsp+130h+var_F8]
                call    ZwClose
                inc     r14d
                xor     esi, esi
                cmp     r14d, dword ptr [rbp+47h+var_60+4]
                jnb     short loc_1407A5EE3
                lea     ebx, [rsi+4]
                jmp     loc_1407A5C0E
; ---------------------------------------------------------------------------

loc_1407A5EE3:                          ; CODE XREF: sub_1407A5ACC+13C↑j
                                        ; sub_1407A5ACC+173↑j ...
                lea     rdx, aAcpialias ; "AcpiAlias"
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                lea     rax, [rsp+130h+var_F0]
                mov     dword ptr [rbp+47h+var_B0], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+47h+var_A0], rax
                lea     r8, [rbp+47h+var_B0]
                mov     [rbp+47h+var_A8], r13
                mov     edx, 20019h
                mov     dword ptr [rbp+47h+var_98], 240h
                lea     rcx, [rsp+130h+var_E0]
                movdqu  [rbp+47h+var_90], xmm0
                call    ZwOpenKey
                test    eax, eax
                js      loc_140856A23
                mov     rcx, [rsp+130h+var_E0]
                lea     rax, [rsp+130h+var_100]
                mov     r9d, 30h ; '0'
                mov     [rsp+130h+var_110], rax
                lea     r8, [rbp+47h+var_70]
                lea     r14d, [r9-2Eh]
                mov     edx, r14d
                call    ZwQueryKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A61BB
                mov     edx, dword ptr [rbp+47h+var_60+4]
                lea     ecx, [r14-1]
                dec     edx
                mov     r8d, 20204D43h
                shl     rdx, 5
                add     rdx, 28h ; '('
                call    ExAllocatePoolWithTag
                mov     [r15], rax
                mov     rcx, rax
                test    rax, rax
                jz      loc_1408569B0
                mov     eax, dword ptr [rbp+47h+var_60+4]
                xor     r13d, r13d
                mov     [rcx+4], eax
                mov     rcx, [r15]
                mov     eax, dword ptr [rbp+47h+var_60+4]
                mov     [rcx], eax
                cmp     dword ptr [rbp+47h+var_60+4], r13d
                jbe     loc_1407A61B9

loc_1407A5FA7:                          ; CODE XREF: sub_1407A5ACC+B0F71↓j
                mov     rcx, [rsp+130h+var_E0]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                mov     r9, rdi
                xor     r8d, r8d
                mov     dword ptr [rsp+130h+var_110], 0FEh
                mov     edx, esi
                call    ZwEnumerateKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A61B9
                mov     eax, [rdi+0Ch]
                lea     r8, [rbp+47h+var_B0]
                shr     rax, 1
                lea     rcx, [rsp+130h+var_F8]
                xorps   xmm0, xmm0
                mov     edx, 20019h
                mov     [rdi+rax*2+10h], r13w
                movzx   eax, word ptr [rdi+0Ch]
                mov     word ptr [rsp+130h+var_F0], ax
                add     ax, r14w
                mov     word ptr [rsp+130h+var_F0+2], ax
                lea     rax, [rdi+10h]
                mov     qword ptr [rsp+130h+var_F0+8], rax
                mov     rax, [rsp+130h+var_E0]
                mov     [rbp+47h+var_A8], rax
                lea     rax, [rsp+130h+var_F0]
                mov     [rbp+47h+var_A0], rax
                mov     dword ptr [rbp+47h+var_B0], 30h ; '0'
                mov     dword ptr [rbp+47h+var_98], 240h
                movdqu  [rbp+47h+var_90], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A61B9
                lea     rdx, aProfilenumber ; "ProfileNumber"
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     rdx, [rsp+130h+var_F0]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                mov     r8d, 1
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_140856A42
                mov     ebx, 4
                cmp     [rdi+4], ebx
                jnz     loc_140856A42
                mov     rcx, [r15]
                lea     rdx, aDockingstate ; "DockingState"
                mov     eax, esi
                lea     r14, [rax+rax*2]
                mov     eax, [rdi+8]
                mov     eax, [rax+rdi]
                mov     [rcx+r14*8+8], eax
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     r8d, [rbx-3]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                lea     rdx, [rsp+130h+var_F0]
                call    ZwQueryValueKey
                test    eax, eax
                js      loc_140856A42
                cmp     [rdi+4], ebx
                jnz     loc_140856A42
                mov     eax, [rdi+8]
                lea     rdx, aAcpiserialnumb ; "AcpiSerialNumber"
                mov     rcx, [r15]
                mov     eax, [rax+rdi]
                mov     [rcx+r14*8+0Ch], eax
                lea     rcx, [rsp+130h+var_F0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+130h+var_F8]
                lea     rax, [rsp+130h+var_100]
                mov     [rsp+130h+var_108], rax
                lea     r8d, [rbx-3]
                mov     r9, rdi
                mov     dword ptr [rsp+130h+var_110], 100h
                lea     rdx, [rsp+130h+var_F0]
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                js      loc_140856A42
                cmp     dword ptr [rdi+4], 3
                jnz     loc_140856A42
                mov     eax, [rdi+0Ch]
                mov     rcx, [r15]
                mov     [rcx+r14*8+10h], eax
                mov     eax, [rdi+0Ch]
                test    eax, eax
                jz      loc_140856A2F
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 20204D43h
                call    ExAllocatePoolWithTag
                mov     rcx, rax

loc_1407A6176:                          ; CODE XREF: sub_1407A5ACC+B0F66↓j
                mov     rax, [r15]
                mov     [rax+r14*8+18h], rcx
                mov     edx, [rdi+0Ch]
                test    edx, edx
                jz      short loc_1407A61A4
                mov     rax, [r15]
                mov     rcx, [rax+r14*8+18h]
                test    rcx, rcx
                jz      loc_140856A1C
                mov     r8d, edx
                mov     edx, [rdi+8]
                add     rdx, rdi
                call    memmove

loc_1407A61A4:                          ; CODE XREF: sub_1407A5ACC+6B7↑j
                mov     rcx, [rsp+130h+var_F8]
                call    ZwClose
                inc     esi
                cmp     esi, dword ptr [rbp+47h+var_60+4]
                jb      loc_140856A37

loc_1407A61B9:                          ; CODE XREF: sub_1407A5ACC+4D5↑j
                                        ; sub_1407A5ACC+503↑j ...
                xor     esi, esi

loc_1407A61BB:                          ; CODE XREF: sub_1407A5ACC+E2↑j
                                        ; sub_1407A5ACC+48F↑j ...
                mov     rcx, [rsp+130h+var_E0]
                test    rcx, rcx
                jz      short loc_1407A61CA
                call    ZwClose

loc_1407A61CA:                          ; CODE XREF: sub_1407A5ACC+6F7↑j
                                        ; sub_1407A5ACC+B0F5E↓j
                mov     rcx, [rsp+130h+var_D8]
                test    rcx, rcx
                jz      short loc_1407A61D9
                call    ZwClose

loc_1407A61D9:                          ; CODE XREF: sub_1407A5ACC+706↑j
                test    ebx, ebx
                js      loc_140856A57

loc_1407A61E1:                          ; CODE XREF: sub_1407A5ACC+B0FCE↓j
                                        ; sub_1407A5ACC+B1008↓j
                mov     eax, ebx
                mov     rcx, [rbp+47h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+130h+arg_18]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407A5ACC
sub_1407A5ACC   endp

byte_1407A620B  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A3258↑o
                                        ; .pdata:000000014010D2F8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0A0h

sub_1407A6214   proc near               ; CODE XREF: sub_1407A526C+2D↑p
                                        ; sub_1407A53B8+AF↑p ...

var_180         = qword ptr -180h
var_178         = xmmword ptr -178h
var_168         = xmmword ptr -168h
var_158         = xmmword ptr -158h
var_148         = xmmword ptr -148h
var_130         = byte ptr -130h
var_30          = qword ptr -30h
arg_0           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140856ADA SIZE 00000065 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                lea     rbp, [rsp-80h]
                sub     rsp, 180h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0A0h+var_30], rax
                and     [rsp+1A0h+var_180], 0
                lea     rdi, qword_140985520
                cmp     cs:dword_140CF4A58, 0
                lea     r13, qword_140984EE8
                xorps   xmm0, xmm0
                lea     rcx, [rsp+1A0h+var_178]
                movups  [rsp+1A0h+var_178], xmm0
                mov     eax, 100h
                cmovz   rdi, r13
                mov     word ptr [rsp+1A0h+var_178+2], ax
                mov     rsi, r8
                mov     r14, rdx
                lea     rax, [rsp+1A0h+var_130]
                mov     r8, rdi
                mov     qword ptr [rsp+1A0h+var_178+8], rax
                lea     rdx, aRegistryMachin_67 ; "\\Registry\\Machine\\%wZ\\CurrentContro"...
                movups  [rsp+1A0h+var_168], xmm0
                movups  [rsp+1A0h+var_158], xmm0
                movups  [rsp+1A0h+var_148], xmm0
                call    sub_14036E1EC
                mov     ebx, eax
                test    eax, eax
                js      loc_1407A633C
                and     qword ptr [rsp+1A0h+var_168+8], 0
                lea     rax, [rsp+1A0h+var_178]
                xorps   xmm0, xmm0
                mov     qword ptr [rsp+1A0h+var_158], rax
                lea     r8, [rsp+1A0h+var_168]
                mov     dword ptr [rsp+1A0h+var_168], 30h ; '0'
                mov     edx, 20019h
                mov     dword ptr [rsp+1A0h+var_158+8], 240h
                lea     rcx, [rsp+1A0h+var_180]
                movdqu  [rsp+1A0h+var_148], xmm0
                call    ZwOpenKey
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jz      loc_140856ADA

loc_1407A62F2:                          ; CODE XREF: sub_1407A6214+B0926↓j
                test    ebx, ebx
                js      short loc_1407A633C
                mov     rax, [rsp+1A0h+var_180]
                xor     ecx, ecx
                mov     [r14], rax
                mov     [rsp+1A0h+var_180], rcx
                test    rsi, rsi
                jz      short loc_1407A6316
                movups  xmm0, xmmword ptr [rdi]
                movdqu  xmmword ptr [rsi], xmm0

loc_1407A6311:                          ; CODE XREF: sub_1407A6214+12D↓j
                test    rcx, rcx
                jnz     short loc_1407A6343

loc_1407A6316:                          ; CODE XREF: sub_1407A6214+F4↑j
                                        ; sub_1407A6214+134↓j
                mov     eax, ebx
                mov     rcx, [rbp+0A0h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+1A0h+arg_0]
                add     rsp, 180h
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407A633C:                          ; CODE XREF: sub_1407A6214+8E↑j
                                        ; sub_1407A6214+E0↑j ...
                mov     rcx, [rsp+1A0h+var_180]
                jmp     short loc_1407A6311
; ---------------------------------------------------------------------------

loc_1407A6343:                          ; CODE XREF: sub_1407A6214+100↑j
                call    ZwClose
                jmp     short loc_1407A6316
; } // starts at 1407A6214
sub_1407A6214   endp

; ---------------------------------------------------------------------------
algn_1407A634A:                         ; DATA XREF: .rdata:00000001400A328C↑o
                                        ; .pdata:000000014010D304↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E0h

sub_1407A6350   proc near               ; CODE XREF: sub_140874CC0+F4↓p
                                        ; sub_140A5ADF8+2DD↓p
                                        ; DATA XREF: ...

var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1A0         = dword ptr -1A0h
var_198         = xmmword ptr -198h
var_188         = xmmword ptr -188h
var_178         = qword ptr -178h
var_170         = xmmword ptr -170h
var_160         = byte ptr -160h
var_148         = dword ptr -148h
var_144         = dword ptr -144h
var_138         = dword ptr -138h
var_134         = word ptr -134h
var_132         = word ptr -132h
var_12C         = dword ptr -12Ch
var_128         = qword ptr -128h
var_110         = qword ptr -110h
var_100         = xmmword ptr -100h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = dword ptr -0D0h
var_C0          = byte ptr -0C0h
var_40          = qword ptr -40h

; FUNCTION CHUNK AT 0000000140856B40 SIZE 0000004F BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0B0h]
                sub     rsp, 1B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0E0h+var_40], rax
                and     [rsp+1E0h+var_1A0], 0
                xorps   xmm0, xmm0
                and     [rbp+0E0h+var_110], 0
                xor     eax, eax
                mov     rdi, r8
                mov     [rbp+0E0h+var_D0], eax
                mov     ebx, edx
                mov     r14, rcx
                xorps   xmm1, xmm1
                lea     rcx, [rbp+0E0h+var_160]
                or      rsi, 0FFFFFFFFFFFFFFFFh
                lea     r8d, [rax+48h]
                xor     edx, edx
                mov     [rsp+1E0h+var_178], rsi
                movups  [rsp+1E0h+var_170], xmm0
                movups  [rbp+0E0h+var_100], xmm0
                movups  [rbp+0E0h+var_F0], xmm0
                movups  [rbp+0E0h+var_E0], xmm0
                movups  [rsp+1E0h+var_188], xmm0
                movups  [rsp+1E0h+var_198], xmm1
                call    memset
                movzx   eax, byte ptr [r14+0D0h]
                lea     r13d, [rsi+2]
                mov     [rbp+0E0h+var_134], ax
                movzx   eax, byte ptr [r14+0D1h]
                mov     [rbp+0E0h+var_132], ax
                lea     rax, [rbp+0E0h+var_C0]
                mov     [rbp+0E0h+var_128], rax
                mov     al, [r14+8Dh]
                mov     [rbp+0E0h+var_148], r13d
                mov     [rbp+0E0h+var_144], r13d
                mov     [rbp+0E0h+var_138], ebx
                cmp     al, r13b
                jz      loc_140856B40
                cmp     al, 2
                jnz     loc_140856B4C
                lea     r8, aIntel64FamilyU ; "Intel64 Family %u Model %u Stepping %u"

loc_1407A6419:                          ; CODE XREF: sub_1407A6350+B07F7↓j
                                        ; sub_1407A6350+B0807↓j
                movzx   ecx, word ptr [r14+42h]
                mov     r15d, 80h
                movsx   r9d, byte ptr [r14+40h]
                mov     edx, r15d
                movzx   eax, cl
                shr     ecx, 8
                mov     dword ptr [rsp+1E0h+var_1B8], eax
                mov     dword ptr [rsp+1E0h+var_1C0], ecx
                lea     rcx, [rbp+0E0h+var_C0]
                call    sprintf_s
                lea     rcx, [rbp+0E0h+var_C0]
                mov     rax, rsi

loc_1407A644A:                          ; CODE XREF: sub_1407A6350+101↓j
                inc     rax
                cmp     byte ptr [rcx+rax], 0
                jnz     short loc_1407A644A
                add     eax, r13d
                lea     r8, [rsp+1E0h+var_178]
                mov     [rbp+0E0h+var_12C], eax
                lea     rcx, [rbp+0E0h+var_160]
                lea     rax, unk_140C47B80
                mov     r9d, esi
                mov     [rsp+1E0h+var_1B8], rax
                mov     rdx, rdi
                or      dword ptr [rsp+1E0h+var_1C0], 0FFFFFFFFh
                call    sub_1407A679C
                test    eax, eax
                js      loc_1407A6771
                xor     edx, edx
                lea     rcx, [rbp+0E0h+var_160]
                lea     r8d, [rdx+48h]
                call    memset
                cmp     byte ptr [r14+40h], 3
                movzx   eax, byte ptr [r14+0D0h]
                mov     [rbp+0E0h+var_134], ax
                movzx   eax, byte ptr [r14+0D1h]
                mov     [rbp+0E0h+var_132], ax
                lea     rax, [rbp+0E0h+var_C0]
                mov     [rbp+0E0h+var_128], rax
                mov     [rbp+0E0h+var_148], r13d
                mov     [rbp+0E0h+var_144], 2
                mov     [rbp+0E0h+var_138], ebx
                jz      loc_140856B5C

loc_1407A64CE:                          ; CODE XREF: sub_1407A6350+B0820↓j
                lea     rcx, [rbp+0E0h+var_C0]
                mov     rax, rsi

loc_1407A64D5:                          ; CODE XREF: sub_1407A6350+18C↓j
                inc     rax
                cmp     byte ptr [rcx+rax], 0
                jnz     short loc_1407A64D5
                add     eax, r13d
                lea     r8, [rbp+0E0h+var_110]
                mov     [rbp+0E0h+var_12C], eax
                lea     rcx, [rbp+0E0h+var_160]
                lea     rax, unk_140C47B80
                mov     r9d, esi
                mov     [rsp+1E0h+var_1B8], rax
                mov     rdx, rdi
                or      dword ptr [rsp+1E0h+var_1C0], 0FFFFFFFFh
                call    sub_1407A679C
                mov     rsi, [rsp+1E0h+var_178]
                mov     edi, eax
                test    eax, eax
                js      loc_1407A6761
                mov     rcx, [rbp+0E0h+var_110]
                call    ZwClose
                mov     cl, [r14+41h]
                lea     rdx, [r14+8590h]
                neg     cl
                mov     eax, 80000000h
                mov     r10d, 80000004h
                sbb     r15, r15
                xor     ecx, ecx
                and     r15, rdx
                cpuid
                cmp     eax, r10d
                jb      loc_1407A660D
                lea     r8, [rbp+0E0h+var_100]
                mov     r9d, 80000002h

loc_1407A6555:                          ; CODE XREF: sub_1407A6350+225↓j
                mov     eax, r9d
                xor     ecx, ecx
                cpuid
                mov     [r8], eax
                add     r9d, r13d
                mov     [r8+4], ebx
                mov     [r8+8], ecx
                mov     [r8+0Ch], edx
                add     r8, 10h
                cmp     r9d, r10d
                jbe     short loc_1407A6555
                mov     byte ptr [rbp+0E0h+var_D0], 0
                test    r8, r8
                jz      loc_1407A660D
                lea     rdx, aProcessornames ; "ProcessorNameString"
                lea     rcx, [rsp+1E0h+var_198]
                call    RtlInitUnicodeString
                xor     ecx, ecx
                cmp     byte ptr [rbp+0E0h+var_100], 20h ; ' '
                jz      loc_140856B75

loc_1407A65A1:                          ; CODE XREF: sub_1407A6350+B082F↓j
                mov     eax, ecx
                lea     rdx, [rbp+0E0h+var_100]
                add     rdx, rax
                lea     rcx, [rsp+1E0h+var_170]
                call    RtlInitString
                mov     r8b, r13b
                lea     rdx, [rsp+1E0h+var_170]
                lea     rcx, [rsp+1E0h+var_188]
                call    RtlAnsiStringToUnicodeString
                mov     edi, eax
                test    eax, eax
                js      loc_1407A6761
                movzx   eax, word ptr [rsp+1E0h+var_188]
                lea     rdx, [rsp+1E0h+var_198]
                add     eax, 2
                mov     r9d, r13d
                mov     dword ptr [rsp+1E0h+var_1B8], eax
                xor     r8d, r8d
                mov     rax, qword ptr [rsp+1E0h+var_188+8]
                mov     rcx, rsi
                mov     [rsp+1E0h+var_1C0], rax
                call    ZwSetValueKey
                lea     rcx, [rsp+1E0h+var_188]
                mov     edi, eax
                call    RtlFreeUnicodeString
                test    edi, edi
                js      loc_1407A6761

loc_1407A660D:                          ; CODE XREF: sub_1407A6350+1F5↑j
                                        ; sub_1407A6350+22E↑j
                test    r15, r15
                jz      short loc_1407A6689
                lea     rdx, aVendoridentifi ; "VendorIdentifier"
                lea     rcx, [rsp+1E0h+var_198]
                call    RtlInitUnicodeString
                mov     rdx, r15
                lea     rcx, [rsp+1E0h+var_170]
                call    RtlInitString
                mov     r8b, r13b
                lea     rdx, [rsp+1E0h+var_170]
                lea     rcx, [rsp+1E0h+var_188]
                call    RtlAnsiStringToUnicodeString
                mov     edi, eax
                test    eax, eax
                js      loc_1407A6761
                movzx   eax, word ptr [rsp+1E0h+var_188]
                lea     rdx, [rsp+1E0h+var_198]
                add     eax, 2
                mov     r9d, r13d
                mov     dword ptr [rsp+1E0h+var_1B8], eax
                xor     r8d, r8d
                mov     rax, qword ptr [rsp+1E0h+var_188+8]
                mov     rcx, rsi
                mov     [rsp+1E0h+var_1C0], rax
                call    ZwSetValueKey
                lea     rcx, [rsp+1E0h+var_188]
                mov     edi, eax
                call    RtlFreeUnicodeString
                test    edi, edi
                js      loc_1407A6761

loc_1407A6689:                          ; CODE XREF: sub_1407A6350+2C0↑j
                cmp     qword ptr [r14+85A0h], 0
                mov     r15d, 4
                jz      short loc_1407A66E1
                mov     eax, [r14+85A0h]
                lea     rdx, aFeatureset ; "FeatureSet"
                lea     rcx, [rsp+1E0h+var_198]
                mov     [rsp+1E0h+var_1A0], eax
                call    RtlInitUnicodeString
                lea     rax, [rsp+1E0h+var_1A0]
                mov     dword ptr [rsp+1E0h+var_1B8], r15d
                mov     r9d, r15d
                mov     [rsp+1E0h+var_1C0], rax
                xor     r8d, r8d
                lea     rdx, [rsp+1E0h+var_198]
                mov     rcx, rsi
                call    ZwSetValueKey
                mov     edi, eax
                test    eax, eax
                js      loc_1407A6761

loc_1407A66E1:                          ; CODE XREF: sub_1407A6350+347↑j
                lea     rbx, [r14+44h]
                cmp     dword ptr [rbx], 0
                jz      short loc_1407A671E
                lea     rdx, aMhz       ; "~MHz"
                lea     rcx, [rsp+1E0h+var_198]
                call    RtlInitUnicodeString
                mov     r9d, r15d
                mov     dword ptr [rsp+1E0h+var_1B8], r15d
                xor     r8d, r8d
                mov     [rsp+1E0h+var_1C0], rbx
                lea     rdx, [rsp+1E0h+var_198]
                mov     rcx, rsi
                call    ZwSetValueKey
                mov     edi, eax
                test    eax, eax
                js      short loc_1407A6761

loc_1407A671E:                          ; CODE XREF: sub_1407A6350+398↑j
                add     r14, 85A8h
                cmp     qword ptr [r14], 0
                jz      short loc_1407A6761
                lea     rdx, aUpdateRevision ; "Update Revision"
                lea     rcx, [rsp+1E0h+var_198]
                call    RtlInitUnicodeString
                mov     r9d, 3
                mov     dword ptr [rsp+1E0h+var_1B8], 8
                xor     r8d, r8d
                mov     [rsp+1E0h+var_1C0], r14
                lea     rdx, [rsp+1E0h+var_198]
                mov     rcx, rsi
                call    ZwSetValueKey
                mov     edi, eax

loc_1407A6761:                          ; CODE XREF: sub_1407A6350+1C1↑j
                                        ; sub_1407A6350+27A↑j ...
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1407A676F
                mov     rcx, rsi
                call    ZwClose

loc_1407A676F:                          ; CODE XREF: sub_1407A6350+415↑j
                mov     eax, edi

loc_1407A6771:                          ; CODE XREF: sub_1407A6350+130↑j
                mov     rcx, [rbp+0E0h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1B0h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407A6350
sub_1407A6350   endp

byte_1407A6793  db 9 dup(0CCh)          ; DATA XREF: .rdata:00000001400A333C↑o
                                        ; .pdata:000000014010D310↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3Fh

sub_1407A679C   proc near               ; CODE XREF: sub_1404ECE68+1CC↑p
                                        ; sub_1407A6350+129↑p ...

var_100         = qword ptr -100h
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = xmmword ptr -70h
var_60          = byte ptr -60h
var_50          = byte ptr -50h
var_38          = qword ptr -38h
arg_18          = qword ptr  28h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140856B90 SIZE 0000006A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0Fh]
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3Fh+var_38], rax
                mov     rbx, [rbp+3Fh+arg_28]
                xor     r13d, r13d
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     r12d, r9d
                mov     r15, r8
                mov     rdi, rcx
                mov     [rbp+3Fh+var_8C], r13d
                mov     esi, r13d
                mov     [rbp+3Fh+var_74], r13d
                movups  [rsp+120h+var_C0], xmm0
                mov     [rsp+120h+var_E0], r13
                movups  [rsp+120h+var_D0], xmm1
                mov     [rsp+120h+var_D8], r13d
                movups  [rbp+3Fh+var_A0], xmm0
                movups  [rbp+3Fh+var_B0], xmm1
                cmp     [rcx+18h], r13d
                jz      loc_1407A6AD1
                mov     eax, [rcx+1Ch]

loc_1407A6810:                          ; CODE XREF: sub_1407A679C+33C↓j
                cdqe
                lea     rcx, unk_140D2F780
                shl     rax, 4
                lea     r8, [rbp+3Fh+var_90]
                add     rax, rcx
                mov     [rbp+3Fh+var_88], rdx
                mov     [rbp+3Fh+var_80], rax
                lea     rcx, [rsp+120h+var_E0]
                lea     rax, [rsp+120h+var_D8]
                mov     [rbp+3Fh+var_90], 30h ; '0'
                mov     [rsp+120h+var_F0], rax
                xor     r9d, r9d
                mov     [rsp+120h+var_F8], r13d
                mov     edx, 2001Fh
                mov     [rsp+120h+var_100], r13
                mov     [rbp+3Fh+var_78], 240h
                movdqu  [rbp+3Fh+var_70], xmm0
                call    ZwCreateKey
                test    eax, eax
                js      loc_1407A6A7F
                mov     r14d, 1
                cmp     [rdi+18h], r13d
                jz      loc_1407A6948
                movsxd  rax, dword ptr [rdi+1Ch]
                cmp     eax, 2Ah ; '*'
                jnb     loc_140856B90
                movzx   edx, word ptr [rbx+rax*2]
                mov     rcx, rax
                lea     eax, [r14+rdx]
                mov     [rbx+rcx*2], ax

loc_1407A6899:                          ; CODE XREF: sub_1407A679C+B03F7↓j
                movzx   ecx, dx
                lea     r9, [rbp+3Fh+var_60]
                mov     edx, 0Ah
                lea     r8d, [rdx+2]
                call    RtlIntegerToChar
                lea     rdx, [rbp+3Fh+var_60]
                lea     rcx, [rbp+3Fh+var_B0]
                call    RtlInitString
                lea     rax, [rbp+3Fh+var_50]
                mov     dword ptr [rsp+120h+var_C0], 180000h
                xor     r8d, r8d
                mov     qword ptr [rbp+3Fh+var_C0+8], rax
                lea     rdx, [rbp+3Fh+var_B0]
                lea     rcx, [rsp+120h+var_C0]
                call    RtlAnsiStringToUnicodeString
                mov     rbx, [rsp+120h+var_E0]
                lea     rax, [rsp+120h+var_C0]
                mov     [rbp+3Fh+var_80], rax
                lea     r8, [rbp+3Fh+var_90]
                lea     rax, [rsp+120h+var_D8]
                mov     [rbp+3Fh+var_90], 30h ; '0'
                mov     [rsp+120h+var_F0], rax
                lea     rcx, [rsp+120h+var_E0]
                xorps   xmm0, xmm0
                mov     [rsp+120h+var_F8], r13d
                xor     r9d, r9d
                mov     [rsp+120h+var_100], r13
                mov     edx, 2001Fh
                mov     [rbp+3Fh+var_88], rbx
                mov     [rbp+3Fh+var_78], 240h
                movdqu  [rbp+3Fh+var_70], xmm0
                call    ZwCreateKey
                mov     rcx, rbx
                mov     r14d, eax
                call    ZwClose
                test    r14d, r14d
                js      loc_1407A6ADD
                mov     r14d, 1

loc_1407A6948:                          ; CODE XREF: sub_1407A679C+DB↑j
                lea     rdx, aComponentInfor ; "Component Information"
                lea     rcx, [rsp+120h+var_D0]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+120h+var_E0]
                lea     rax, [rdi+20h]
                mov     [rsp+120h+var_F8], 10h
                lea     rdx, [rsp+120h+var_D0]
                mov     r9d, 3
                mov     [rsp+120h+var_100], rax
                xor     r8d, r8d
                call    ZwSetValueKey
                mov     ebx, eax
                test    eax, eax
                js      loc_140856B98
                cmp     [rdi+34h], r13d
                jz      short loc_1407A6A06
                lea     rdx, aIdentifier ; "Identifier"
                lea     rcx, [rsp+120h+var_D0]
                call    RtlInitUnicodeString
                mov     rdx, [rdi+38h]
                lea     rcx, [rbp+3Fh+var_B0]
                call    RtlInitString
                mov     r8b, r14b
                lea     rdx, [rbp+3Fh+var_B0]
                lea     rcx, [rbp+3Fh+var_A0]
                call    RtlAnsiStringToUnicodeString
                mov     ebx, eax
                test    eax, eax
                js      loc_140856B98
                movzx   eax, word ptr [rbp+3Fh+var_A0]
                lea     rdx, [rsp+120h+var_D0]
                mov     rcx, [rsp+120h+var_E0]
                add     eax, 2
                mov     [rsp+120h+var_F8], eax
                mov     r9d, r14d
                mov     rax, qword ptr [rbp+3Fh+var_A0+8]
                xor     r8d, r8d
                mov     [rsp+120h+var_100], rax
                call    ZwSetValueKey
                lea     rcx, [rbp+3Fh+var_A0]
                mov     ebx, eax
                call    RtlFreeUnicodeString
                test    ebx, ebx
                js      loc_140856B98

loc_1407A6A06:                          ; CODE XREF: sub_1407A679C+1F4↑j
                lea     rdx, aConfigurationD ; "Configuration Data"
                lea     rcx, [rsp+120h+var_D0]
                call    RtlInitUnicodeString
                mov     rdx, [rdi+40h]
                test    rdx, rdx
                jnz     loc_1407A6AA7

loc_1407A6A24:                          ; CODE XREF: sub_1407A679C+330↓j
                                        ; sub_1407A679C+B0459↓j
                cmp     [rdi+40h], r13
                jnz     short loc_1407A6A3A
                mov     rax, cs:qword_140D2E6C0
                mov     esi, 10h
                mov     [rax+8], r13

loc_1407A6A3A:                          ; CODE XREF: sub_1407A679C+28C↑j
                mov     rcx, cs:qword_140D2E6C0
                lea     rdx, [rsp+120h+var_D0]
                mov     eax, [rbp+3Fh+arg_20]
                mov     r9d, 9
                mov     [rsp+120h+var_F8], esi
                xor     r8d, r8d
                mov     [rsp+120h+var_100], rcx
                mov     [rcx], r12d
                mov     [rcx+4], eax
                mov     rcx, [rsp+120h+var_E0]
                call    ZwSetValueKey
                mov     ebx, eax
                test    eax, eax
                js      loc_140856B98
                mov     rax, [rsp+120h+var_E0]
                mov     [r15], rax
                xor     eax, eax

loc_1407A6A7F:                          ; CODE XREF: sub_1407A679C+CB↑j
                                        ; sub_1407A679C+344↓j ...
                mov     rcx, [rbp+3Fh+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+120h+arg_18]
                add     rsp, 0F0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407A6AA7:                          ; CODE XREF: sub_1407A679C+282↑j
                mov     eax, [rdi+30h]
                lea     esi, [rax+8]
                cmp     esi, cs:dword_140D2D090
                ja      loc_140856BA9
                mov     rcx, cs:qword_140D2E6C0
                mov     r8d, eax
                add     rcx, 8

loc_1407A6AC7:                          ; CODE XREF: sub_1407A679C+B044C↓j
                call    memmove
                jmp     loc_1407A6A24
; ---------------------------------------------------------------------------

loc_1407A6AD1:                          ; CODE XREF: sub_1407A679C+6B↑j
                mov     [rcx+1Ch], r13d
                mov     eax, r13d
                jmp     loc_1407A6810
; ---------------------------------------------------------------------------

loc_1407A6ADD:                          ; CODE XREF: sub_1407A679C+1A0↑j
                mov     eax, r14d
                jmp     short loc_1407A6A7F
; } // starts at 1407A679C
sub_1407A679C   endp

; ---------------------------------------------------------------------------
algn_1407A6AE2:                         ; DATA XREF: .rdata:00000001400A3374↑o
                                        ; .pdata:000000014010D31C↑o
                align 10h
; Exported entry 2058. RtlCreateUnicodeStringFromAsciiz

; =============== S U B R O U T I N E =======================================


