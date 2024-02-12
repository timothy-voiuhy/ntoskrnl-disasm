NtTraceEvent    proc near               ; DATA XREF: .rdata:0000000140067868↑o
                                        ; .pdata:00000001400D0FBC↑o ...

var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = byte ptr -180h
var_178         = qword ptr -178h
var_170         = dword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = word ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = byte ptr -138h
var_137         = byte ptr -137h
var_136         = byte ptr -136h
var_130         = qword ptr -130h
var_128         = dword ptr -128h
var_124         = dword ptr -124h
var_120         = qword ptr -120h
var_118         = byte ptr -118h
var_117         = byte ptr -117h
var_116         = byte ptr -116h
var_114         = word ptr -114h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_104         = dword ptr -104h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h

; FUNCTION CHUNK AT 0000000140452270 SIZE 000004AA BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 180h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1B8h+var_48], rax
                mov     rbx, r9
                mov     r15d, r8d
                mov     edi, edx
                mov     r14, rcx
                mov     eax, edx
                and     eax, 0FF00h
                cmp     eax, 300h
                jnz     loc_1402BC073

loc_1402BBD72:                          ; DATA XREF: .rdata:0000000140067810↑o
;   __try { // __except at loc_1402BBE5F
                mov     rax, gs:188h
                mov     [rsp+1B8h+var_F8], rax
                movzx   eax, byte ptr [rax+232h]
                mov     [rsp+1B8h+var_117], al
                test    al, al
                jz      short loc_1402BBDBE
                test    bl, 3
                jnz     loc_1402BBE48
                lea     rax, [r9+78h]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      loc_1402BBE4D
                cmp     rax, rbx
                jb      loc_1402BBE4D

loc_1402BBDBE:                          ; CODE XREF: NtTraceEvent+63↑j
                                        ; NtTraceEvent+128↓j
                mov     rax, [r9+58h]
                mov     [rsp+1B8h+var_120], rax
                mov     [rsp+1B8h+var_A0], rax
                mov     eax, [r9+54h]
                mov     dword ptr [rsp+1B8h+var_130], eax
                mov     [rsp+1B8h+var_C0], eax
                movzx   r13d, word ptr [r9+52h]
                mov     [rsp+1B8h+var_98], r13
                mov     eax, [r9+70h]
                mov     [rsp+1B8h+var_124], eax
                mov     [rsp+1B8h+var_C4], eax
                mov     rax, [r9+30h]
                mov     [rsp+1B8h+var_F8], rax
                mov     [rsp+1B8h+var_90], rax
                movzx   eax, byte ptr [r9+2Ch]
                mov     [rsp+1B8h+var_138], al
                mov     [rsp+1B8h+var_116], al
                xor     esi, esi
                mov     [rsp+1B8h+var_100], rsi
                cmp     [r9+50h], sil
                jz      short loc_1402BBE5D
                lea     rax, [r9+60h]
                mov     [rsp+1B8h+var_100], rax
                jmp     short loc_1402BBE5D
; ---------------------------------------------------------------------------

loc_1402BBE48:                          ; CODE XREF: NtTraceEvent+68↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1402BBE4D:                          ; CODE XREF: NtTraceEvent+7F↑j
                                        ; NtTraceEvent+88↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_1402BBDBE
; ---------------------------------------------------------------------------

loc_1402BBE5D:                          ; CODE XREF: NtTraceEvent+108↑j
                                        ; NtTraceEvent+116↑j
                jmp     short loc_1402BBE64
;   } // starts at 1402BBD72
; ---------------------------------------------------------------------------

loc_1402BBE5F:                          ; DATA XREF: .rdata:0000000140067810↑o
;   __except(1) // owned by 1402BBD72
                jmp     loc_1402BC04F
; ---------------------------------------------------------------------------

loc_1402BBE64:                          ; CODE XREF: NtTraceEvent:loc_1402BBE5D↑j
                mov     r8, cs:qword_140CFC638
                mov     [rsp+1B8h+var_F0], rsi
                mov     [rsp+1B8h+var_190], rsi
                lea     rax, [rsp+1B8h+var_F0]
                mov     [rsp+1B8h+var_198], rax
                mov     r9b, 1
                mov     edx, 800h
                call    ObReferenceObjectByHandle
                mov     r15d, eax
                test    eax, eax
                js      loc_1402BC04C
                mov     [rsp+1B8h+var_E8], rsi
                mov     r14, [rsp+1B8h+var_F0]
                mov     rcx, [r14+20h]
                mov     [rsp+1B8h+var_110], rcx
                mov     r8, [r14+28h]
                mov     [rsp+1B8h+var_F0], r8
                shr     edi, 1Fh
                xorps   xmm0, xmm0
                movups  [rsp+1B8h+var_68], xmm0
                movups  [rsp+1B8h+var_58], xmm0
                mov     rax, [r14+68h]
                lea     r12, [rax+1Ch]
                test    rax, rax
                cmovz   r12, rsi
                movzx   edx, byte ptr [r14+64h]
                test    dl, dl
                jz      loc_1402BBF92
                lea     rax, [rsp+1B8h+var_E8]
                mov     [rsp+1B8h+var_140], rax
                mov     [rsp+1B8h+var_148], r12
                movzx   eax, word ptr [r14+62h]
                mov     [rsp+1B8h+var_150], ax
                mov     [rsp+1B8h+var_158], rsi
                lea     rax, [rsp+1B8h+var_68]
                mov     [rsp+1B8h+var_160], rax
                mov     rax, [rsp+1B8h+var_120]
                mov     [rsp+1B8h+var_168], rax
                mov     eax, dword ptr [rsp+1B8h+var_130]
                mov     [rsp+1B8h+var_170], eax
                mov     rax, [rsp+1B8h+var_F8]
                mov     [rsp+1B8h+var_178], rax
                movzx   eax, [rsp+1B8h+var_138]
                mov     [rsp+1B8h+var_180], al
                mov     rax, [rsp+1B8h+var_100]
                mov     [rsp+1B8h+var_188], rax
                mov     [rsp+1B8h+var_190], rbx
                mov     eax, [rsp+1B8h+var_124]
                mov     dword ptr [rsp+1B8h+var_198], eax
                mov     r9, r13
                movzx   r8d, di
                call    sub_140688E20
                mov     r15d, eax
                mov     rcx, [rsp+1B8h+var_110]
                mov     r8, [rsp+1B8h+var_F0]

loc_1402BBF92:                          ; CODE XREF: NtTraceEvent+1C1↑j
                movzx   edx, byte ptr [r14+65h]
                test    dl, dl
                jz      loc_1402BC032
                lea     rax, [rsp+1B8h+var_E8]
                mov     [rsp+1B8h+var_140], rax
                mov     [rsp+1B8h+var_148], r12
                movzx   eax, word ptr [r14+62h]
                mov     [rsp+1B8h+var_150], ax
                mov     [rsp+1B8h+var_158], r8
                lea     rax, [rsp+1B8h+var_68]
                mov     [rsp+1B8h+var_160], rax
                mov     rax, [rsp+1B8h+var_120]
                mov     [rsp+1B8h+var_168], rax
                mov     eax, dword ptr [rsp+1B8h+var_130]
                mov     [rsp+1B8h+var_170], eax
                mov     rax, [rsp+1B8h+var_F8]
                mov     [rsp+1B8h+var_178], rax
                movzx   eax, [rsp+1B8h+var_138]
                mov     [rsp+1B8h+var_180], al
                mov     rax, [rsp+1B8h+var_100]
                mov     [rsp+1B8h+var_188], rax
                mov     [rsp+1B8h+var_190], rbx
                mov     eax, [rsp+1B8h+var_124]
                mov     dword ptr [rsp+1B8h+var_198], eax
                mov     r9, r13
                movzx   r8d, di
                call    sub_140688E20
                mov     r15d, eax
                mov     rcx, [rsp+1B8h+var_110]

loc_1402BC032:                          ; CODE XREF: NtTraceEvent+269↑j
                cmp     [rcx+190h], rsi
                jnz     loc_1402BC5B6

loc_1402BC03F:                          ; CODE XREF: NtTraceEvent+19694E↓j
                                        ; NtTraceEvent+1969E5↓j
                mov     edx, 746C6644h
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag

loc_1402BC04C:                          ; CODE XREF: NtTraceEvent+167↑j
                                        ; NtTraceEvent+46A↓j ...
                mov     eax, r15d

loc_1402BC04F:                          ; CODE XREF: NtTraceEvent:loc_1402BBE5F↑j
                                        ; NtTraceEvent:loc_1402BC1BB↓j ...
                mov     rcx, [rsp+1B8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 180h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BC073:                          ; CODE XREF: NtTraceEvent+3C↑j
                cmp     eax, 200h
                jnz     loc_1402BC204
                mov     [rsp+1B8h+var_110], r14
                xor     esi, esi
                mov     [rsp+1B8h+var_120], rsi
                cmp     r15d, 28h ; '('
                jnz     loc_1404525D1
                mov     rax, gs:188h
                cmp     byte ptr [rax+232h], 1
                jnz     loc_1404525DB
                mov     [rsp+1B8h+var_130], rbx

loc_1402BC0B8:                          ; DATA XREF: .rdata:0000000140067820↑o
;   __try { // __except at loc_1402BC1BB
                mov     rax, [rsp+1B8h+var_130]
                test    al, 3
                jnz     loc_1402BC177
                mov     rax, [rsp+1B8h+var_130]
                add     rax, 28h ; '('
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      loc_1402BC17C
                mov     rcx, [rsp+1B8h+var_130]
                add     rcx, 28h ; '('
                mov     rax, [rsp+1B8h+var_130]
                cmp     rcx, rax
                jb      short loc_1402BC17C

loc_1402BC100:                          ; CODE XREF: NtTraceEvent+457↓j
                mov     rax, [rsp+1B8h+var_130]
                mov     ecx, [rax+18h]
                mov     [rsp+1B8h+var_128], ecx
                mov     rax, [rsp+1B8h+var_130]
                test    edi, edi
                js      short loc_1402BC160
                mov     rcx, [rax+20h]
                mov     [rsp+1B8h+var_120], rcx

loc_1402BC12A:                          ; CODE XREF: NtTraceEvent+445↓j
                mov     rax, [rsp+1B8h+var_130]
                mov     ecx, [rax+1Ch]
                mov     [rsp+1B8h+var_124], ecx
                cmp     ecx, 10000h
                ja      short loc_1402BC18C
                test    ecx, ecx
                jz      short loc_1402BC1AA
                mov     r8, [rsp+1B8h+var_120]
                lea     r9, [r8+rcx]
                cmp     r9, rdx
                ja      short loc_1402BC19F
                cmp     r9, r8
                jb      short loc_1402BC19F
                jmp     short loc_1402BC1AA
; ---------------------------------------------------------------------------

loc_1402BC160:                          ; CODE XREF: NtTraceEvent+3EC↑j
                mov     ecx, [rax+20h]
                mov     dword ptr [rsp+1B8h+var_120], ecx
                or      [rsp+1B8h+var_128], 80h
                jmp     short loc_1402BC12A
; ---------------------------------------------------------------------------

loc_1402BC177:                          ; CODE XREF: NtTraceEvent+392↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1402BC17C:                          ; CODE XREF: NtTraceEvent+3B1↑j
                                        ; NtTraceEvent+3CE↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_1402BC100
; ---------------------------------------------------------------------------

loc_1402BC18C:                          ; CODE XREF: NtTraceEvent+412↑j
                mov     r15d, 0C000000Dh
                mov     [rsp+1B8h+var_C8], r15d
                jmp     loc_1402BC04C
; ---------------------------------------------------------------------------

loc_1402BC19F:                          ; CODE XREF: NtTraceEvent+427↑j
                                        ; NtTraceEvent+42C↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_1402BC1AA:                          ; CODE XREF: NtTraceEvent+416↑j
                                        ; NtTraceEvent+42E↑j
                or      [rsp+1B8h+var_128], 40h
                mov     dword ptr [rsp+1B8h+var_110+4], ecx
                jmp     short loc_1402BC1C0
;   } // starts at 1402BC0B8
; ---------------------------------------------------------------------------

loc_1402BC1BB:                          ; DATA XREF: .rdata:0000000140067820↑o
;   __except(1) // owned by 1402BC0B8
                jmp     loc_1402BC04F
; ---------------------------------------------------------------------------

loc_1402BC1C0:                          ; CODE XREF: NtTraceEvent+489↑j
                mov     rcx, [rsp+1B8h+var_130]
                mov     r8, [rsp+1B8h+var_130]
                add     r8, 8
                mov     byte ptr [rsp+1B8h+var_190], 1
                mov     rax, [rsp+1B8h+var_120]
                mov     [rsp+1B8h+var_198], rax
                movzx   r9d, word ptr [rcx+4]
                mov     edx, [rsp+1B8h+var_128]
                mov     rcx, [rsp+1B8h+var_110]
                call    sub_1402BC630
                jmp     loc_1402BC04F
; ---------------------------------------------------------------------------

loc_1402BC204:                          ; CODE XREF: NtTraceEvent+348↑j
                cmp     eax, 600h
                jz      loc_1402BC32B
                ja      loc_1402BC39A
                cmp     eax, 100h
                jz      loc_140452391
                cmp     eax, 400h
                jz      loc_14045227A
                cmp     eax, 500h
                jnz     loc_14045247A
                mov     rax, gs:188h
                mov     rdi, [rax+478h]
                call    sub_1402B95B0
                mov     r10, [rax+360h]
                cmp     [r10+0FE8h], edi
                jnz     loc_140452270

loc_1402BC25F:                          ; DATA XREF: .rdata:0000000140067830↑o
;   __try { // __except at loc_1402BC2CA
                test    bl, 3
                jnz     short loc_1402BC289
                lea     rax, [rbx+78h]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_1402BC27C
                cmp     rax, rbx
                jnb     short loc_1402BC28E

loc_1402BC27C:                          ; CODE XREF: NtTraceEvent+545↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1402BC28E
; ---------------------------------------------------------------------------

loc_1402BC289:                          ; CODE XREF: NtTraceEvent+532↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1402BC28E:                          ; CODE XREF: NtTraceEvent+54A↑j
                                        ; NtTraceEvent+557↑j
                mov     rax, [rbx+58h]
                mov     [rsp+1B8h+var_B8], rax
                mov     edx, [rbx+54h]
                mov     [rsp+1B8h+var_D0], edx
                mov     r9d, [rbx+70h]
                mov     [rsp+1B8h+var_CC], r9d
                mov     r11, [rbx+30h]
                mov     [rsp+1B8h+var_B0], r11
                movzx   edi, byte ptr [rbx+2Ch]
                mov     [rsp+1B8h+var_118], dil
                jmp     short loc_1402BC2CF
;   } // starts at 1402BC25F
; ---------------------------------------------------------------------------

loc_1402BC2CA:                          ; DATA XREF: .rdata:0000000140067830↑o
;   __except(1) // owned by 1402BC25F
                jmp     loc_1402BC04F
; ---------------------------------------------------------------------------

loc_1402BC2CF:                          ; CODE XREF: NtTraceEvent+598↑j
                xor     esi, esi
                xor     r8d, r8d
                lea     rcx, [r10+18h]
                mov     [rsp+1B8h+var_140], rsi
                mov     [rsp+1B8h+var_148], rsi
                mov     [rsp+1B8h+var_150], si
                mov     [rsp+1B8h+var_158], rsi
                mov     [rsp+1B8h+var_160], rsi
                mov     [rsp+1B8h+var_168], rax
                mov     [rsp+1B8h+var_170], edx
                mov     [rsp+1B8h+var_178], r11
                mov     [rsp+1B8h+var_180], dil
                mov     [rsp+1B8h+var_188], rsi
                mov     [rsp+1B8h+var_190], rbx
                mov     dword ptr [rsp+1B8h+var_198], r9d
                xor     r9d, r9d
                movzx   edx, byte ptr [r10+0FE0h]
                call    sub_140688E20
                mov     r15d, eax
                jmp     loc_1402BC04C
; ---------------------------------------------------------------------------

loc_1402BC32B:                          ; CODE XREF: NtTraceEvent+4D9↑j
                mov     [rsp+1B8h+var_137], 0
                call    sub_1402B95B0
                mov     rsi, [rax+360h]
                movzx   edi, r14w
                mov     edx, 0FFFFh
                cmp     edi, edx
                jz      short loc_1402BC350
                test    edi, edi
                jnz     short loc_1402BC357

loc_1402BC350:                          ; CODE XREF: NtTraceEvent+61A↑j
                movzx   edi, byte ptr [rsi+1070h]

loc_1402BC357:                          ; CODE XREF: NtTraceEvent+61E↑j
                cmp     edi, [rsi+10h]
                jnb     short loc_1402BC38F
                mov     rax, gs:188h
                movzx   r14d, byte ptr [rax+232h]
                lea     r9, [rsp+1B8h+var_137]
                movzx   r8d, r14b
                mov     rdx, rsi
                mov     ecx, edi
                call    sub_1402BCC68
                mov     rcx, rax
                test    rax, rax
                jnz     loc_1404523CB

loc_1402BC38F:                          ; CODE XREF: NtTraceEvent+62A↑j
                mov     r15d, 0C0000008h
                jmp     loc_1402BC04C
; ---------------------------------------------------------------------------

loc_1402BC39A:                          ; CODE XREF: NtTraceEvent+4DF↑j
                cmp     eax, 700h
                jnz     loc_14045242E
                xorps   xmm0, xmm0
                movups  [rsp+1B8h+var_78], xmm0
                test    r14, r14
                jz      loc_1404525D1

loc_1402BC3B9:                          ; DATA XREF: .rdata:0000000140067840↑o
;   __try { // __except at loc_1402BC455
                test    bl, 3
                jnz     short loc_1402BC3F7
                lea     rax, [r9+78h]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_1402BC3FC
                cmp     rax, rbx
                jb      short loc_1402BC3FC

loc_1402BC3D6:                          ; CODE XREF: NtTraceEvent+6D7↓j
                test    r14b, 3
                jnz     short loc_1402BC409
                lea     rax, [rcx+10h]
                cmp     rax, rdx
                ja      short loc_1402BC3EA
                cmp     rax, r14
                jnb     short loc_1402BC40E

loc_1402BC3EA:                          ; CODE XREF: NtTraceEvent+6B3↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1402BC40E
; ---------------------------------------------------------------------------

loc_1402BC3F7:                          ; CODE XREF: NtTraceEvent+68C↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1402BC3FC:                          ; CODE XREF: NtTraceEvent+69F↑j
                                        ; NtTraceEvent+6A4↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_1402BC3D6
; ---------------------------------------------------------------------------

loc_1402BC409:                          ; CODE XREF: NtTraceEvent+6AA↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_1402BC40E:                          ; CODE XREF: NtTraceEvent+6B8↑j
                                        ; NtTraceEvent+6C5↑j
                mov     rax, [r9+58h]
                mov     [rsp+1B8h+var_E0], rax
                mov     eax, [r9+54h]
                mov     [rsp+1B8h+var_108], eax
                mov     eax, [r9+70h]
                mov     [rsp+1B8h+var_104], eax
                mov     rax, [r9+30h]
                mov     [rsp+1B8h+var_D8], rax
                movzx   eax, byte ptr [r9+2Ch]
                mov     [rsp+1B8h+var_136], al
                movups  xmm0, xmmword ptr [rcx]
                movups  [rsp+1B8h+var_78], xmm0
                jmp     short loc_1402BC45A
;   } // starts at 1402BC3B9
; ---------------------------------------------------------------------------

loc_1402BC455:                          ; DATA XREF: .rdata:0000000140067840↑o
;   __except(1) // owned by 1402BC3B9
                jmp     loc_1402BC04F
; ---------------------------------------------------------------------------

loc_1402BC45A:                          ; CODE XREF: NtTraceEvent+723↑j
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                xor     r8d, r8d
                lea     rdx, [rsp+1B8h+var_78]
                call    sub_14060C690
                mov     r14, rax
                test    rax, rax
                jz      loc_1404524CA
                cmp     dword ptr [rax+60h], 0
                jz      loc_1404524C2
                xor     r8d, r8d
                mov     edx, 800h
                mov     rcx, [rax+48h]
                call    sub_140609060
                mov     r15d, eax
                test    eax, eax
                js      loc_1402BC5A9
                mov     [rsp+1B8h+var_138], 0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, [r14+198h]
                call    ExAcquirePushLockExclusiveEx
                mov     rax, gs:188h
                mov     [r14+1A0h], rax
                lea     rax, [rsp+1B8h+var_138]
                mov     [rsp+1B8h+var_198], rax
                mov     r9b, 1
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r14
                call    sub_140607718
                xor     esi, esi
                mov     [r14+1A0h], rsi
                xor     edx, edx
                lea     rcx, [r14+198h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                shr     edi, 1Fh
                mov     [rsp+1B8h+var_140], rsi
                mov     [rsp+1B8h+var_148], rsi
                mov     [rsp+1B8h+var_150], si
                mov     [rsp+1B8h+var_158], rsi
                mov     [rsp+1B8h+var_160], rsi
                mov     rax, [rsp+1B8h+var_E0]
                mov     [rsp+1B8h+var_168], rax
                mov     eax, [rsp+1B8h+var_108]
                mov     [rsp+1B8h+var_170], eax
                mov     rax, [rsp+1B8h+var_D8]
                mov     [rsp+1B8h+var_178], rax
                movzx   eax, [rsp+1B8h+var_136]
                mov     [rsp+1B8h+var_180], al
                mov     [rsp+1B8h+var_188], rsi
                mov     [rsp+1B8h+var_190], rbx
                mov     eax, [rsp+1B8h+var_104]
                mov     dword ptr [rsp+1B8h+var_198], eax
                xor     r9d, r9d
                movzx   r8d, di
                movzx   edx, [rsp+1B8h+var_138]
                mov     rcx, r14
                call    sub_140688E20
                mov     r15d, eax
                cmp     [r14+190h], rsi
                jnz     loc_1404524D4

loc_1402BC5A9:                          ; CODE XREF: NtTraceEvent+772↑j
                                        ; NtTraceEvent+19689C↓j
                mov     rcx, r14
                call    sub_14060C59C
                jmp     loc_1402BC04C
; ---------------------------------------------------------------------------

loc_1402BC5B6:                          ; CODE XREF: NtTraceEvent+309↑j
                xorps   xmm0, xmm0
                movups  [rsp+1B8h+var_68], xmm0
                movups  [rsp+1B8h+var_58], xmm0
                movzx   edx, byte ptr [r14+66h]
                mov     r13, [rsp+1B8h+var_120]
                test    dl, dl
                jnz     loc_1404525E5
                mov     rsi, [rsp+1B8h+var_100]
                jmp     loc_140452677
; } // starts at 1402BBD30
NtTraceEvent    endp

; ---------------------------------------------------------------------------
byte_1402BC5EB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140067868↑o
                                        ; .pdata:00000001400D0FBC↑o

; =============== S U B R O U T I N E =======================================


sub_1402BC5F4   proc near               ; CODE XREF: sub_140688E20+1A1↓p
                                        ; DATA XREF: .pdata:00000001400D0FC8↑o
                xor     eax, eax
                mov     r10, rcx
                test    rcx, rcx
                jz      short loc_1402BC611
                test    dl, dl
                jnz     short loc_1402BC616
                mov     ecx, eax
                movzx   eax, word ptr [r10]

loc_1402BC608:                          ; CODE XREF: sub_1402BC5F4+20↓j
                                        ; sub_1402BC5F4+26↓j
                mov     [r8], ax
                mov     [r9], rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BC611:                          ; CODE XREF: sub_1402BC5F4+8↑j
                mov     rcx, rax
                jmp     short loc_1402BC608
; ---------------------------------------------------------------------------

loc_1402BC616:                          ; CODE XREF: sub_1402BC5F4+C↑j
                add     rcx, 6
                jmp     short loc_1402BC608
sub_1402BC5F4   endp

; ---------------------------------------------------------------------------
byte_1402BC61C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400D0FC8↑o

; =============== S U B R O U T I N E =======================================


sub_1402BC630   proc near               ; CODE XREF: NtTraceEvent+4CA↑p
                                        ; WmiTraceMessage+19↓p ...

var_118         = dword ptr -118h
var_108         = byte ptr -108h
var_107         = byte ptr -107h
var_104         = dword ptr -104h
var_100         = byte ptr -100h
var_FF          = byte ptr -0FFh
var_F8          = byte ptr -0F8h
var_F0          = dword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = word ptr -0E0h
var_DC          = dword ptr -0DCh
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = dword ptr -0B0h
var_AC          = dword ptr -0ACh
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014045271A SIZE 000000E6 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_38], rax
                mov     [rsp+138h+var_E0], r9w
                mov     [rsp+138h+var_78], r8
                mov     r15d, edx
                mov     rbx, rcx
                mov     [rsp+138h+var_B8], rcx
                mov     rdi, [rsp+138h+arg_20]
                movzx   r14d, [rsp+138h+arg_28]
                mov     [rsp+138h+var_FF], r14b
                mov     [rsp+138h+var_F8], r14b
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [r11-68h], xmm0
                mov     [r11-58h], rax
                mov     [rsp+138h+var_100], al
                movups  xmmword ptr [r11-48h], xmm0
                xor     r12d, r12d
                mov     [rsp+138h+var_F0], eax
                mov     [rsp+138h+var_104], eax
                mov     [r11-0A0h], r12
                mov     [rsp+138h+var_108], al
                mov     r13d, r12d
                mov     [rsp+138h+var_C0], r12
                mov     [r11-98h], r12
                mov     [rsp+138h+var_107], al
                test    r14b, r14b
                jz      loc_1402BCC40
                call    sub_1402B95B0
                mov     rsi, [rax+360h]

loc_1402BC6E9:                          ; CODE XREF: sub_1402BC630+617↓j
                mov     [rsp+138h+var_88], rsi
                mov     [rsp+138h+var_D8], rsi
                movzx   ebx, bx
                mov     [rsp+138h+var_DC], ebx
                cmp     ebx, [rsi+10h]
                jnb     loc_1402BCC5B
                lea     r9, [rsp+138h+var_100]
                movzx   r8d, r14b
                mov     rdx, rsi
                mov     ecx, ebx
                call    sub_1402BCC68
                mov     r11, rax
                mov     [rsp+138h+var_90], rax
                test    rax, rax
                jz      loc_1402BCC5B
                mov     eax, [rax+0Ch]
                test    al, al
                js      loc_14045271A
                test    r14b, r14b
                jz      loc_1402BCC4C

loc_1402BC741:                          ; CODE XREF: sub_1402BC630+620↓j
                                        ; DATA XREF: .rdata:00000001400678F8↑o
;   __try { // __except at loc_1402BC839
                mov     [rsp+138h+var_D0], r12
                movzx   esi, r15b
                and     sil, 40h
                mov     [rsp+138h+var_108], sil
                movzx   r14d, r15b
                and     r14b, 80h
                mov     [rsp+138h+var_107], r14b
                test    sil, sil
                jz      short loc_1402BC77D
                mov     r13d, dword ptr [rsp+138h+var_B8+4]
                add     r13, rdi
                mov     [rsp+138h+var_C0], r13
                mov     [rsp+138h+var_98], r13

loc_1402BC77D:                          ; CODE XREF: sub_1402BC630+133↑j
                mov     [rsp+138h+var_B8], r12
                mov     rax, rdi
                mov     [rsp+138h+var_D0], rax

loc_1402BC78D:                          ; CODE XREF: sub_1402BC630:loc_1402BC834↓j
                test    sil, sil
                jz      short loc_1402BC7DE
                test    r14b, r14b
                jnz     short loc_1402BC7E4
                add     rax, 8
                cmp     rax, r13
                ja      short loc_1402BC80E

loc_1402BC7A0:                          ; CODE XREF: sub_1402BC630+1B2↓j
                mov     rcx, [rax-8]

loc_1402BC7A4:                          ; CODE XREF: sub_1402BC630+1C0↓j
                mov     [rsp+138h+var_D0], rax
                test    rcx, rcx
                jz      short loc_1402BC7DC
                test    sil, sil
                jz      short loc_1402BC7B8
                test    r14b, r14b
                jnz     short loc_1402BC7F2

loc_1402BC7B8:                          ; CODE XREF: sub_1402BC630+181↑j
                add     rax, 8
                mov     rcx, [rax-8]

loc_1402BC7C0:                          ; CODE XREF: sub_1402BC630+1C9↓j
                mov     [rsp+138h+var_D0], rax
                test    rcx, rcx
                jz      short loc_1402BC834
                add     r12, rcx
                mov     [rsp+138h+var_B8], r12
                cmp     r12, rcx
                jb      short loc_1402BC821
                jmp     short loc_1402BC834
; ---------------------------------------------------------------------------

loc_1402BC7DC:                          ; CODE XREF: sub_1402BC630+17C↑j
                jmp     short loc_1402BC84E
; ---------------------------------------------------------------------------

loc_1402BC7DE:                          ; CODE XREF: sub_1402BC630+160↑j
                add     rax, 8
                jmp     short loc_1402BC7A0
; ---------------------------------------------------------------------------

loc_1402BC7E4:                          ; CODE XREF: sub_1402BC630+165↑j
                add     rax, 4
                cmp     rax, r13
                ja      short loc_1402BC7FB
                mov     ecx, [rax-4]
                jmp     short loc_1402BC7A4
; ---------------------------------------------------------------------------

loc_1402BC7F2:                          ; CODE XREF: sub_1402BC630+186↑j
                add     rax, 4
                mov     ecx, [rax-4]
                jmp     short loc_1402BC7C0
; ---------------------------------------------------------------------------

loc_1402BC7FB:                          ; CODE XREF: sub_1402BC630+1BB↑j
                mov     eax, 0C0000206h
                mov     [rsp+138h+var_104], eax
                mov     rsi, [rsp+138h+var_D8]
                jmp     loc_1402BCBD8
; ---------------------------------------------------------------------------

loc_1402BC80E:                          ; CODE XREF: sub_1402BC630+16E↑j
                mov     eax, 0C0000206h
                mov     [rsp+138h+var_104], eax
                mov     rsi, [rsp+138h+var_D8]
                jmp     loc_1402BCBD8
; ---------------------------------------------------------------------------

loc_1402BC821:                          ; CODE XREF: sub_1402BC630+1A8↑j
                mov     eax, 0C0000095h
                mov     [rsp+138h+var_104], eax
                mov     rsi, [rsp+138h+var_D8]
                jmp     loc_1402BCBD8
; ---------------------------------------------------------------------------

loc_1402BC834:                          ; CODE XREF: sub_1402BC630+198↑j
                                        ; sub_1402BC630+1AA↑j
                jmp     loc_1402BC78D
;   } // starts at 1402BC741
; ---------------------------------------------------------------------------

loc_1402BC839:                          ; DATA XREF: .rdata:00000001400678F8↑o
;   __except(1) // owned by 1402BC741
                mov     [rsp+138h+var_104], eax
                mov     rsi, [rsp+138h+var_88]
                mov     ebx, [rsp+138h+var_DC]
                jmp     loc_1402BCBD8
; ---------------------------------------------------------------------------

loc_1402BC84E:                          ; CODE XREF: sub_1402BC630:loc_1402BC7DC↑j
                cmp     qword ptr [r11+118h], 0
                jnz     short loc_1402BC85C
                and     r15d, 0FFFFFFFEh

loc_1402BC85C:                          ; CODE XREF: sub_1402BC630+226↑j
                mov     eax, r15d
                and     eax, 1
                mov     [rsp+138h+var_B0], eax
                mov     ecx, 4
                jnz     loc_140452728
                xor     r10d, r10d

loc_1402BC877:                          ; CODE XREF: sub_1402BC630+1960FB↓j
                mov     eax, r15d
                and     eax, 2
                mov     [rsp+138h+var_A8], eax
                jz      loc_140452730
                mov     r9d, 10h

loc_1402BC890:                          ; CODE XREF: sub_1402BC630+196103↓j
                mov     eax, r15d
                and     eax, 4
                mov     [rsp+138h+var_AC], eax
                jnz     short loc_1402BC8A1
                xor     ecx, ecx

loc_1402BC8A1:                          ; CODE XREF: sub_1402BC630+26D↑j
                mov     eax, 8
                test    r15b, 18h
                jz      loc_140452738
                mov     edx, eax

loc_1402BC8B2:                          ; CODE XREF: sub_1402BC630+19610A↓j
                mov     r8d, r15d
                and     r8d, 20h
                mov     [rsp+138h+var_A4], r8d
                jz      loc_14045273F

loc_1402BC8C7:                          ; CODE XREF: sub_1402BC630+196111↓j
                lea     r13d, [rdx+rax]
                add     r13d, 8
                add     r13d, ecx
                add     r13d, r9d
                add     r13d, r10d
                add     r13d, r12d
                mov     eax, r13d
                cmp     r12, rax
                ja      loc_140452746
                mov     [rsp+138h+var_118], 0
                lea     r9, [rsp+138h+var_A0]
                lea     r8, [rsp+138h+var_68]
                mov     edx, r13d
                mov     rcx, r11
                call    sub_14024B170
                mov     rbx, rax
                xor     edx, edx
                mov     r10, [rsp+138h+var_90]
                mov     rax, [r10+118h]
                test    rax, rax
                jnz     loc_140452759
                mov     r8, [rsp+138h+var_C0]

loc_1402BC92C:                          ; CODE XREF: sub_1402BC630+19615C↓j
                test    rbx, rbx
                jz      loc_140452791
                mov     dword ptr [rbx], 90000000h
                mov     [rbx], r13w
                movzx   eax, [rsp+138h+var_E0]
                mov     [rbx+4], ax
                test    r14b, r14b
                jnz     loc_1402BCC36
                mov     ecx, 80h

loc_1402BC956:                          ; CODE XREF: sub_1402BC630+60B↓j
                movzx   eax, r15w
                and     ax, 3Fh
                or      ax, cx
                mov     [rbx+6], ax

loc_1402BC965:                          ; DATA XREF: .rdata:0000000140067908↑o
;   __try { // __except at loc_1402BCB82
                mov     rax, [rsp+138h+var_78]
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+138h+var_48], xmm0
                add     rbx, 8
                mov     [rsp+138h+var_E8], rbx
                cmp     [rsp+138h+var_B0], 0
                jnz     loc_1402BCB25

loc_1402BC98F:                          ; CODE XREF: sub_1402BC630+500↓j
                cmp     [rsp+138h+var_AC], 0
                jnz     loc_1402BCB35
                cmp     [rsp+138h+var_A8], 0
                jz      short loc_1402BC9B6
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rbx], xmm0
                add     rbx, 10h

loc_1402BC9B1:                          ; CODE XREF: sub_1402BC630+50D↓j
                mov     [rsp+138h+var_E8], rbx

loc_1402BC9B6:                          ; CODE XREF: sub_1402BC630+375↑j
                test    r15b, 8
                jz      short loc_1402BC9D8
                mov     eax, [rsp+138h+var_9C]
                mov     [rbx+4], eax
                mov     eax, [rsp+138h+var_A0]
                mov     [rbx], eax
                add     rbx, 8
                mov     [rsp+138h+var_E8], rbx

loc_1402BC9D8:                          ; CODE XREF: sub_1402BC630+38A↑j
                cmp     [rsp+138h+var_A4], 0
                jz      short loc_1402BCA52
                mov     rcx, gs:188h
                mov     [rsp+138h+var_50], rcx
                mov     eax, [rcx+480h]
                mov     [rsp+138h+var_80], eax
                mov     rbx, [rsp+138h+var_E8]
                mov     [rbx], eax
                add     rbx, 4
                mov     [rsp+138h+var_E8], rbx
                mov     eax, [rcx+478h]
                mov     [rsp+138h+var_7C], eax
                mov     [rbx], eax
                add     rbx, 4
                mov     [rsp+138h+var_E8], rbx
                mov     r12, [rsp+138h+var_B8]
                mov     r9d, [rsp+138h+var_104]
                mov     [rsp+138h+var_F0], r9d
                movzx   esi, [rsp+138h+var_108]
                mov     r8, [rsp+138h+var_98]
                mov     [rsp+138h+var_C0], r8
                movzx   r14d, [rsp+138h+var_107]

loc_1402BCA52:                          ; CODE XREF: sub_1402BC630+3B0↑j
                mov     [rsp+138h+var_C8], 0
                mov     [rsp+138h+var_70], r12
                mov     [rsp+138h+var_C8], rdi
                mov     r13, 7FFFFFFF0000h

loc_1402BCA72:                          ; CODE XREF: sub_1402BC630:loc_1402BCB03↓j
                test    sil, sil
                jz      short loc_1402BCA80
                test    r14b, r14b
                jnz     loc_1402BCB0F

loc_1402BCA80:                          ; CODE XREF: sub_1402BC630+445↑j
                add     rdi, 8
                mov     rdx, [rdi-8]

loc_1402BCA88:                          ; CODE XREF: sub_1402BC630+4E6↓j
                mov     [rsp+138h+var_C8], rdi
                test    rdx, rdx
                jz      short loc_1402BCB08
                test    sil, sil
                jz      short loc_1402BCAAA
                cmp     rdi, r8
                jnb     loc_1402BCB42
                test    sil, sil
                jz      short loc_1402BCAAA
                test    r14b, r14b
                jnz     short loc_1402BCB1B

loc_1402BCAAA:                          ; CODE XREF: sub_1402BC630+465↑j
                                        ; sub_1402BC630+473↑j
                add     rdi, 8
                mov     r15, [rdi-8]

loc_1402BCAB2:                          ; CODE XREF: sub_1402BC630+4F3↓j
                mov     [rsp+138h+var_C8], rdi
                test    r15, r15
                jz      short loc_1402BCB03
                cmp     r15, r12
                ja      loc_1402BCB54
                test    sil, sil
                jz      short loc_1402BCAE0
                lea     rax, [r15+rdx]
                cmp     rax, r13
                ja      loc_1402BCB66
                cmp     rax, rdx
                jb      loc_1402BCB66

loc_1402BCAE0:                          ; CODE XREF: sub_1402BC630+498↑j
                                        ; sub_1402BC630+541↓j
                mov     r8, r15
                mov     rcx, rbx
                call    memmove
                sub     r12, r15
                mov     [rsp+138h+var_70], r12
                add     rbx, r15
                mov     [rsp+138h+var_E8], rbx
                mov     r8, [rsp+138h+var_C0]

loc_1402BCB03:                          ; CODE XREF: sub_1402BC630+48A↑j
                jmp     loc_1402BCA72
; ---------------------------------------------------------------------------

loc_1402BCB08:                          ; CODE XREF: sub_1402BC630+460↑j
                mov     r9d, [rsp+138h+var_F0]
                jmp     short loc_1402BCB76
; ---------------------------------------------------------------------------

loc_1402BCB0F:                          ; CODE XREF: sub_1402BC630+44A↑j
                add     rdi, 4
                mov     edx, [rdi-4]
                jmp     loc_1402BCA88
; ---------------------------------------------------------------------------

loc_1402BCB1B:                          ; CODE XREF: sub_1402BC630+478↑j
                add     rdi, 4
                mov     r15d, [rdi-4]
                jmp     short loc_1402BCAB2
; ---------------------------------------------------------------------------

loc_1402BCB25:                          ; CODE XREF: sub_1402BC630+359↑j
                mov     [rbx], edx
                add     rbx, 4
                mov     [rsp+138h+var_E8], rbx
                jmp     loc_1402BC98F
; ---------------------------------------------------------------------------

loc_1402BCB35:                          ; CODE XREF: sub_1402BC630+367↑j
                mov     eax, [rax]
                mov     [rbx], eax
                add     rbx, 4
                jmp     loc_1402BC9B1
; ---------------------------------------------------------------------------

loc_1402BCB42:                          ; CODE XREF: sub_1402BC630+46A↑j
                mov     r9d, 0C0000206h
                mov     [rsp+138h+var_F0], r9d
                mov     [rsp+138h+var_104], r9d
                jmp     short loc_1402BCB76
; ---------------------------------------------------------------------------

loc_1402BCB54:                          ; CODE XREF: sub_1402BC630+48F↑j
                mov     r9d, 0C0000206h
                mov     [rsp+138h+var_F0], r9d
                mov     [rsp+138h+var_104], r9d
                jmp     short loc_1402BCB76
; ---------------------------------------------------------------------------

loc_1402BCB66:                          ; CODE XREF: sub_1402BC630+4A1↑j
                                        ; sub_1402BC630+4AA↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     loc_1402BCAE0
; ---------------------------------------------------------------------------

loc_1402BCB76:                          ; CODE XREF: sub_1402BC630+4DD↑j
                                        ; sub_1402BC630+522↑j ...
                mov     rsi, [rsp+138h+var_D8]
                movzx   ebx, [rsp+138h+var_FF]
                jmp     short loc_1402BCB9A
;   } // starts at 1402BC965
; ---------------------------------------------------------------------------

loc_1402BCB82:                          ; DATA XREF: .rdata:0000000140067908↑o
;   __except(1) // owned by 1402BC965
                mov     r9d, eax
                mov     [rsp+138h+var_F0], eax
                mov     [rsp+138h+var_104], eax
                mov     rsi, [rsp+138h+var_88]
                movzx   ebx, [rsp+138h+var_F8]

loc_1402BCB9A:                          ; CODE XREF: sub_1402BC630+550↑j
                test    r9d, r9d
                js      short loc_1402BCBC3
                mov     r10, [rsp+138h+var_90]
                test    dword ptr [r10+0Ch], 80000h
                jnz     loc_1404527A2

loc_1402BCBB5:                          ; CODE XREF: sub_1402BC630+19618B↓j
                                        ; sub_1402BC630+1961A9↓j
                cmp     qword ptr [r10+4F8h], 0
                jnz     loc_1404527DE

loc_1402BCBC3:                          ; CODE XREF: sub_1402BC630+56D↑j
                                        ; sub_1402BC630+1961CB↓j
                lea     rcx, [rsp+138h+var_68]
                call    sub_1402BCD10
                mov     eax, [rsp+138h+var_F0]
                mov     ebx, [rsp+138h+var_DC]

loc_1402BCBD8:                          ; CODE XREF: sub_1402BC630+1D9↑j
                                        ; sub_1402BC630+1EC↑j ...
                cmp     [rsp+138h+var_100], 0
                jz      short loc_1402BCC08
                mov     eax, ebx
                mov     rcx, [rsi+1C0h]
                mov     edx, 1
                mov     rcx, [rcx+rax*8]
                call    ExReleaseRundownProtectionCacheAwareEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, [rsp+138h+var_104]

loc_1402BCC08:                          ; CODE XREF: sub_1402BC630+5AD↑j
                                        ; sub_1402BC630+630↓j
                mov     rcx, [rsp+138h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+138h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402BCC36:                          ; CODE XREF: sub_1402BC630+31B↑j
                mov     ecx, 40h ; '@'
                jmp     loc_1402BC956
; ---------------------------------------------------------------------------

loc_1402BCC40:                          ; CODE XREF: sub_1402BC630+A7↑j
                mov     rsi, cs:qword_140CFB008
                jmp     loc_1402BC6E9
; ---------------------------------------------------------------------------

loc_1402BCC4C:                          ; CODE XREF: sub_1402BC630+10B↑j
                bt      eax, 18h
                jnb     loc_1402BC741
                jmp     loc_140452721
; ---------------------------------------------------------------------------

loc_1402BCC5B:                          ; CODE XREF: sub_1402BC630+D0↑j
                                        ; sub_1402BC630+F7↑j
                mov     eax, 0C0000008h
                jmp     short loc_1402BCC08
; } // starts at 1402BC630
sub_1402BC630   endp

; ---------------------------------------------------------------------------
algn_1402BCC62:                         ; DATA XREF: .rdata:0000000140067920↑o
                                        ; .pdata:00000001400D0FD4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402BCC68   proc near               ; CODE XREF: NtTraceEvent+64E↑p
                                        ; sub_1402BC630+E4↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, ecx
                mov     rbx, r9
                mov     byte ptr [r9], 0
                mov     rsi, rdx
                cmp     r8b, 1
                jnz     short loc_1402BCCE2

loc_1402BCC8E:                          ; CODE XREF: sub_1402BCC68+81↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+1C0h]
                mov     edx, 1
                mov     rbp, rdi
                mov     rcx, [rcx+rdi*8]
                call    ExAcquireRundownProtectionCacheAwareEx
                test    al, al
                jz      short loc_1402BCD01
                mov     byte ptr [rbx], 1

loc_1402BCCBD:                          ; CODE XREF: sub_1402BCC68+86↓j
                mov     rax, [rsi+1C8h]
                mov     rax, [rax+rbp*8]
                test    al, 1
                jnz     short loc_1402BCCF0

loc_1402BCCCC:                          ; CODE XREF: sub_1402BCC68+97↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402BCCE2:                          ; CODE XREF: sub_1402BCC68+24↑j
                call    KeGetEffectiveIrql
                cmp     al, 2
                jb      short loc_1402BCC8E
                mov     rbp, rdi
                jmp     short loc_1402BCCBD
; ---------------------------------------------------------------------------

loc_1402BCCF0:                          ; CODE XREF: sub_1402BCC68+62↑j
                mov     r8b, [rbx]
                mov     rdx, rsi
                mov     ecx, edi
                call    sub_14037A298

loc_1402BCCFD:                          ; CODE XREF: sub_1402BCC68+9E↓j
                xor     eax, eax
                jmp     short loc_1402BCCCC
; ---------------------------------------------------------------------------

loc_1402BCD01:                          ; CODE XREF: sub_1402BCC68+50↑j
                call    KeLeaveCriticalRegion
                jmp     short loc_1402BCCFD
sub_1402BCC68   endp

; ---------------------------------------------------------------------------
algn_1402BCD08:                         ; DATA XREF: .pdata:00000001400D0FE0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402BCD10   proc near               ; CODE XREF: sub_14024F4C0+574↑p
                                        ; sub_1402BC630+59B↑p ...
                mov     r10, [rcx]
                mov     r8, rcx
                mov     r9, [rcx+8]
                prefetchw byte ptr [r9]
                mov     rax, [r9]
                mov     rdx, rax
                xor     rdx, r10
                cmp     rdx, 0Fh
                jnb     short loc_1402BCD46

loc_1402BCD2D:                          ; CODE XREF: sub_1402BCD10+34↓j
                lea     rcx, [rax+1]
                lock cmpxchg [r9], rcx
                jnz     short loc_1402BCD3A
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402BCD3A:                          ; CODE XREF: sub_1402BCD10+26↑j
                mov     rcx, rax
                xor     rcx, r10
                cmp     rcx, 0Fh
                jb      short loc_1402BCD2D

loc_1402BCD46:                          ; CODE XREF: sub_1402BCD10+1B↑j
                mov     rax, [r8]
                lock dec dword ptr [rax+0Ch]
                retn
sub_1402BCD10   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402BCD4F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0FEC↑o

; =============== S U B R O U T I N E =======================================


sub_1402BCD58   proc near               ; CODE XREF: sub_140688E20+355↓p
                                        ; DATA XREF: .pdata:00000001400D0FF8↑o

arg_20          = byte ptr  28h

; FUNCTION CHUNK AT 0000000140452800 SIZE 0000007E BYTES

                mov     rcx, [rcx+180h]
                test    rcx, rcx
                jnz     loc_140452800

loc_1402BCD68:                          ; CODE XREF: sub_1402BCD58+195AC4↓j
                                        ; sub_1402BCD58+195ADD↓j ...
                xor     al, al
                retn
sub_1402BCD58   endp

; ---------------------------------------------------------------------------
                align 4
byte_1402BCD6C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D0FF8↑o

; =============== S U B R O U T I N E =======================================


sub_1402BCD74   proc near               ; CODE XREF: sub_140688E20+D40↓p
                                        ; DATA XREF: .pdata:00000001400D1004↑o
                mov     rdx, gs:20h
                mov     r8d, 1
                mov     rax, [rdx+8328h]
                lock xadd [rax+8], r8
                mov     eax, [rdx+24h]
                inc     r8
                mov     rdx, 0FFFFFFFFFFFFh
                shl     rax, 30h
                and     r8, rdx
                or      rax, r8
                mov     [rcx], rax
                retn
sub_1402BCD74   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402BCDAF:                         ; DATA XREF: .pdata:00000001400D1004↑o
                align 20h
; Exported entry 1855. PsGetProcessStartKey

; =============== S U B R O U T I N E =======================================


