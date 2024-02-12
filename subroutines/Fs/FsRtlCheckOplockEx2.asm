FsRtlCheckOplockEx2 proc near           ; CODE XREF: FsRtlCheckOplock+7F↓p
                                        ; FsRtlCheckOplockEx+34↓p
                                        ; DATA XREF: ...

var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = byte ptr -0F8h
var_F7          = byte ptr -0F7h
var_F6          = byte ptr -0F6h
var_F5          = byte ptr -0F5h
var_F4          = byte ptr -0F4h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = dword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = dword ptr -0C0h
var_BC          = dword ptr -0BCh
var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 0000000140418730 SIZE 00000036 BYTES
; FUNCTION CHUNK AT 0000000140435726 SIZE 000000BD BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+168h+var_40], rax
                mov     [rsp+168h+var_B8], r9d
                mov     ebx, r8d
                mov     r15, rdx
                mov     rdi, rcx
                mov     [rsp+168h+var_B0], ebx
                mov     rcx, [rsp+168h+arg_20]
                mov     [rsp+168h+var_C8], rcx
                mov     rcx, [rsp+168h+arg_28]
                mov     [rsp+168h+var_90], rcx
                mov     rcx, [rsp+168h+arg_30]
                mov     [rsp+168h+var_98], rcx
                mov     rcx, [rsp+168h+arg_40]
                mov     [rsp+168h+var_A0], rcx
                mov     rcx, [rsp+168h+arg_48]
                mov     [rsp+168h+var_A8], rcx
                xor     r14d, r14d
                mov     [rsp+168h+var_E8], r14d
                mov     r13, [rdi]
                mov     [rsp+168h+var_68], r13
                test    r9d, r9d
                jnz     loc_140435726
                mov     r12, [rdx+0B8h]
                mov     [rsp+168h+var_E0], r12
                test    bl, 4
                jnz     loc_14024D8A9
                bt      ebx, 1Ch
                jb      short loc_14024CE5A
                mov     esi, r14d
                cmp     [r12], sil
                jz      short loc_14024CEB2

loc_14024CE53:                          ; CODE XREF: FsRtlCheckOplockEx2+1EB↓j
                                        ; FsRtlCheckOplockEx2+AA7↓j ...
                mov     [rsp+168h+var_E8], esi

loc_14024CE5A:                          ; CODE XREF: FsRtlCheckOplockEx2+C8↑j
                mov     esi, 1
                mov     r8d, ebx
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_14024D9B0
                mov     rax, [rdi]
                cmp     r13, rax
                jnz     loc_14024D899

loc_14024CE79:                          ; CODE XREF: FsRtlCheckOplockEx2+B24↓j
                test    bl, 2
                jnz     short loc_14024CE87
                test    r13, r13
                jnz     loc_14024CF70

loc_14024CE87:                          ; CODE XREF: FsRtlCheckOplockEx2+FC↑j
                                        ; FsRtlCheckOplockEx2+1F6↓j ...
                mov     eax, [rsp+168h+var_E8]

loc_14024CE8E:                          ; CODE XREF: FsRtlCheckOplockEx2+B38↓j
                                        ; FsRtlCheckOplockEx2+B6F↓j ...
                mov     rcx, [rsp+168h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 130h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14024CEB2:                          ; CODE XREF: FsRtlCheckOplockEx2+D1↑j
                mov     rax, [r12+30h]
                mov     rcx, [rax+0D0h]
                test    rcx, rcx
                jnz     loc_14024D801

loc_14024CEC7:                          ; CODE XREF: FsRtlCheckOplockEx2+A88↓j
                                        ; FsRtlCheckOplockEx2+A95↓j ...
                mov     [rsp+168h+var_D0], r14
                mov     [rsp+168h+var_80], r14
                xorps   xmm0, xmm0
                movups  [rsp+168h+var_50], xmm0
                lea     rdx, [rsp+168h+var_80]
                mov     rcx, r15
                call    IoGetIrpExtraCreateParameter
                mov     r12, [rsp+168h+var_80]
                test    r12, r12
                jz      short loc_14024CF63
                movups  xmm0, cs:xmmword_1400111F0
                movups  [rsp+168h+var_50], xmm0
                xor     r9d, r9d
                lea     r8, [rsp+168h+var_D0]
                lea     rdx, [rsp+168h+var_50]
                mov     rcx, r12
                call    FsRtlFindExtraCreateParameter
                test    eax, eax
                jz      loc_14024D82C
                movups  xmm0, cs:xmmword_140011200
                movups  [rsp+168h+var_50], xmm0
                xor     r9d, r9d
                lea     r8, [rsp+168h+var_D0]
                lea     rdx, [rsp+168h+var_50]
                mov     rcx, r12
                call    FsRtlRemoveExtraCreateParameter
                test    eax, eax
                jz      loc_1404357C6

loc_14024CF63:                          ; CODE XREF: FsRtlCheckOplockEx2+17D↑j
                mov     r12, [rsp+168h+var_E0]
                jmp     loc_14024CE53
; ---------------------------------------------------------------------------

loc_14024CF70:                          ; CODE XREF: FsRtlCheckOplockEx2+101↑j
                mov     eax, [r15+10h]
                test    al, 2
                jnz     loc_14024CE87
                cmp     [rsp+168h+var_E8], r14d
                jnz     loc_14024CE87
                mov     eax, ebx
                shr     eax, 1Dh
                and     al, 1
                mov     [rsp+168h+var_F7], al
                mov     [rsp+168h+var_F6], 1
                mov     r10, 0FFFF800000000000h
                lea     r9, cs:140000000h

loc_14024CFAB:                          ; CODE XREF: FsRtlCheckOplockEx2+A7C↓j
                mov     [rsp+168h+var_F4], 0

loc_14024CFB0:                          ; DATA XREF: .rdata:0000000140058F3C↑o
;   __try { // __finally(loc_140418730)
                mov     r8d, ebx
                and     r8d, 10h
                mov     [rsp+168h+var_EC], r8d
                jnz     short loc_14024D014
                cmp     [rsp+168h+var_F7], 0
                jnz     short loc_14024D014
                mov     eax, [r13+90h]
                mov     [rsp+168h+var_D8], eax
                mov     rcx, [r13+8]
                mov     [rsp+168h+var_58], rcx
                movzx   eax, byte ptr [r12]
                mov     edx, [rsp+168h+var_D8]
                cmp     al, 3
                jz      loc_14024D302

loc_14024CFF3:                          ; CODE XREF: FsRtlCheckOplockEx2+588↓j
                                        ; FsRtlCheckOplockEx2+593↓j
                cmp     al, 4
                jz      loc_14024D3E6

loc_14024CFFB:                          ; CODE XREF: FsRtlCheckOplockEx2+66C↓j
                                        ; FsRtlCheckOplockEx2+677↓j
                test    bl, 8
                jnz     short loc_14024D014
                cmp     al, 12h
                jz      short loc_14024D014
                test    rcx, rcx
                jz      short loc_14024D014
                cmp     rcx, [r12+30h]
                jz      loc_14024D535

loc_14024D014:                          ; CODE XREF: FsRtlCheckOplockEx2+23C↑j
                                        ; FsRtlCheckOplockEx2+243↑j ...
                cmp     [rsp+168h+var_F6], 0
                jz      loc_14024D7AF
                cmp     [rsp+168h+var_F7], 0
                jnz     loc_14024D1A5
                mov     rcx, [r13+98h]
                mov     [rsp+168h+var_E0], rcx
                mov     rax, gs:188h
                mov     [rsp+168h+var_60], rax
                mov     [rsp+168h+var_70], r14
                mov     [rsp+168h+var_D4], r14d
                mov     [rsp+168h+var_D4], r14d
                mov     rdi, gs:188h
                dec     word ptr [rdi+1E6h]
                inc     byte ptr [rdi+31Ah]
                cmp     byte ptr [rdi+31Ah], 1
                jnz     loc_14024D2E4
                mov     [rsp+168h+var_70], r14
                mov     [rsp+168h+var_78], r14
                mov     [rsp+168h+var_BC], r14d
                movzx   edx, byte ptr [rdi+318h]
                test    dl, dl
                jz      loc_14024D608

loc_14024D0AC:                          ; CODE XREF: FsRtlCheckOplockEx2+8B6↓j
                movzx   eax, dl
                bsf     ecx, eax
                mov     [rsp+168h+var_BC], ecx
                movzx   eax, dl
                btr     eax, ecx
                mov     [rdi+318h], al
                lea     rsi, [rcx+rcx*2]
                shl     rsi, 5
                add     rsi, [rdi+320h]
                mov     [rsp+168h+var_78], rsi

loc_14024D0DC:                          ; CODE XREF: FsRtlCheckOplockEx2+8F3↓j
                mov     rcx, [rsp+168h+var_E0]

loc_14024D0E4:                          ; CODE XREF: FsRtlCheckOplockEx2+8D1↓j
                mov     [rsp+168h+var_70], rsi
                test    rsi, rsi
                jz      loc_14024D678
                cmp     rcx, r10
                jb      short loc_14024D122
                mov     rax, rcx
                shr     rax, 27h
                and     eax, 1FFh
                add     eax, 0FFFFFF00h
                cmp     byte ptr [rax+r9+0C4F848h], 1
                jz      loc_14024D683
                mov     rcx, [rsp+168h+var_E0]

loc_14024D122:                          ; CODE XREF: FsRtlCheckOplockEx2+378↑j
                mov     eax, 0FFFFFFFFh

loc_14024D127:                          ; CODE XREF: FsRtlCheckOplockEx2+917↓j
                mov     [rsi+28h], eax
                mov     rax, rcx
                mov     rdx, 7FFFFFFFFFFFFFFCh
                and     rax, rdx
                mov     [rsi+20h], rax

loc_14024D13E:                          ; CODE XREF: FsRtlCheckOplockEx2+8FE↓j
                dec     byte ptr [rdi+31Ah]
                lea     r8, [rsp+168h+var_D4]
                mov     rdx, rcx
                mov     rcx, rdi
                call    sub_1402456E0
                add     word ptr [rdi+1E6h], 1
                jnz     short loc_14024D171
                lea     rax, [rdi+98h]
                cmp     [rax], rax
                jnz     loc_14024D5B2

loc_14024D171:                          ; CODE XREF: FsRtlCheckOplockEx2+3DF↑j
                                        ; FsRtlCheckOplockEx2+837↓j
                mov     rdi, [rsp+168h+var_E0]
                lock btr dword ptr [rdi], 0
                jnb     loc_14024D48B

loc_14024D184:                          ; CODE XREF: FsRtlCheckOplockEx2+716↓j
                test    rsi, rsi
                jz      short loc_14024D18D
                or      byte ptr [rsi+1Ah], 1

loc_14024D18D:                          ; CODE XREF: FsRtlCheckOplockEx2+407↑j
                mov     rax, [rsp+168h+var_60]
                mov     [rdi+8], rax
                mov     r8d, [rsp+168h+var_EC]
                lea     r9, cs:140000000h

loc_14024D1A5:                          ; CODE XREF: FsRtlCheckOplockEx2+2A4↑j
                mov     [rsp+168h+var_F7], 1
                mov     esi, [r13+90h]
                cmp     esi, 1
                jz      loc_14024D7AF
                xor     dl, dl
                mov     [rsp+168h+var_EC], edx
                mov     [rsp+168h+var_F5], dl
                xor     al, al
                mov     [rsp+168h+var_F8], al
                mov     edi, r14d
                mov     [rsp+168h+var_F0], r14d
                test    r8d, r8d
                jnz     loc_14024D327
                movzx   eax, byte ptr [r12]
                cmp     eax, 3
                jnz     loc_14024D318
                test    sil, 8
                jnz     loc_14024D47D
                mov     dl, 1
                mov     [rsp+168h+var_F5], dl
                mov     edi, 4000h
                mov     [rsp+168h+var_F0], edi

def_14024D410:                          ; CODE XREF: FsRtlCheckOplockEx2+67F↓j
                                        ; FsRtlCheckOplockEx2+690↓j ...
                movzx   eax, [rsp+168h+var_F8] ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63

loc_14024D207:                          ; CODE XREF: FsRtlCheckOplockEx2+5B0↓j
                                        ; FsRtlCheckOplockEx2+855↓j ...
                test    dl, dl
                jz      loc_14024D335
                mov     eax, [r13+90h]
                and     eax, 1F0FFDFh
                cmp     eax, 10h
                jz      short loc_14024D239
                mov     rdx, [r13+8]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jz      loc_14024D4B6

loc_14024D239:                          ; CODE XREF: FsRtlCheckOplockEx2+49E↑j
                                        ; FsRtlCheckOplockEx2+5B7↓j ...
                mov     rsi, [rsp+168h+var_C8]

loc_14024D241:                          ; CODE XREF: FsRtlCheckOplockEx2+661↓j
                                        ; FsRtlCheckOplockEx2+7B0↓j
                cmp     [rsp+168h+var_E8], 0
                jnz     loc_14024D7AF
                mov     eax, [r13+90h]
                test    edi, eax
                jz      loc_14024D7AF
                lea     rax, [rsp+168h+var_F4]
                mov     [rsp+168h+var_100], rax
                lea     rax, [rsp+168h+var_F7]
                mov     [rsp+168h+var_108], rax
                mov     rax, [rsp+168h+var_A8]
                mov     [rsp+168h+var_110], rax
                mov     rax, [rsp+168h+var_A0]
                mov     [rsp+168h+var_118], rax
                mov     rax, [rsp+168h+arg_38]
                mov     [rsp+168h+var_120], rax
                mov     rax, [rsp+168h+var_98]
                mov     [rsp+168h+var_128], rax
                mov     rax, [rsp+168h+var_90]
                mov     [rsp+168h+var_130], rax
                mov     [rsp+168h+var_138], rsi
                mov     dword ptr [rsp+168h+var_140], edi
                mov     eax, [rsp+168h+var_B8]
                mov     dword ptr [rsp+168h+var_148], eax
                mov     r9d, ebx
                mov     r8, r15
                mov     rdx, r12
                mov     rcx, r13
                call    sub_14024DBF0
                mov     [rsp+168h+var_E8], eax
                jmp     loc_14024D7AF
; ---------------------------------------------------------------------------

loc_14024D2E4:                          ; CODE XREF: FsRtlCheckOplockEx2+2FF↑j
                mov     rax, cr8
                movzx   r9d, al
                mov     [rsp+168h+var_148], r14
                mov     r8, rcx
                mov     rdx, rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14024D302:                          ; CODE XREF: FsRtlCheckOplockEx2+26D↑j
                test    edx, 0FFFF4FFEh
                jnz     loc_14024CFF3
                mov     [rsp+168h+var_F6], 0
                jmp     loc_14024CFF3
; ---------------------------------------------------------------------------

loc_14024D318:                          ; CODE XREF: FsRtlCheckOplockEx2+463↑j
                cmp     eax, 4
                jnz     loc_14024D3FC

loc_14024D321:                          ; CODE XREF: FsRtlCheckOplockEx2+6F1↓j
                                        ; FsRtlCheckOplockEx2+7C7↓j ...
                mov     al, 1           ; jumptable 000000014024D591 case 39
                mov     [rsp+168h+var_F8], al

loc_14024D327:                          ; CODE XREF: FsRtlCheckOplockEx2+455↑j
                mov     edi, 5000h
                mov     [rsp+168h+var_F0], edi
                jmp     loc_14024D207
; ---------------------------------------------------------------------------

loc_14024D335:                          ; CODE XREF: FsRtlCheckOplockEx2+489↑j
                test    al, al
                jz      loc_14024D239
                mov     eax, [r13+90h]
                and     eax, 1F0FFDFh
                cmp     eax, 10h
                jz      short loc_14024D367
                mov     rdx, [r13+8]
                mov     rcx, [r12+30h]
                xor     r8d, r8d
                call    sub_14024E840
                test    al, al
                jnz     loc_14024D239

loc_14024D367:                          ; CODE XREF: FsRtlCheckOplockEx2+5CC↑j
                lea     rax, [rsp+168h+var_F4]
                mov     [rsp+168h+var_108], rax
                lea     rax, [rsp+168h+var_F7]
                mov     [rsp+168h+var_110], rax
                mov     rax, [rsp+168h+var_A8]
                mov     [rsp+168h+var_118], rax
                mov     rax, [rsp+168h+var_A0]
                mov     [rsp+168h+var_120], rax
                mov     rax, [rsp+168h+arg_38]
                mov     [rsp+168h+var_128], rax
                mov     rax, [rsp+168h+var_98]
                mov     [rsp+168h+var_130], rax
                mov     rax, [rsp+168h+var_90]
                mov     [rsp+168h+var_138], rax
                mov     rsi, [rsp+168h+var_C8]
                mov     [rsp+168h+var_140], rsi
                mov     r9d, ebx
                mov     r8, r15
                mov     rdx, r12
                mov     rcx, r13
                call    sub_14036D0E8
                mov     [rsp+168h+var_E8], eax
                jmp     loc_14024D241
; ---------------------------------------------------------------------------

loc_14024D3E6:                          ; CODE XREF: FsRtlCheckOplockEx2+275↑j
                test    edx, 0FFFFDFFEh
                jnz     loc_14024CFFB
                mov     [rsp+168h+var_F6], 0
                jmp     loc_14024CFFB
; ---------------------------------------------------------------------------

loc_14024D3FC:                          ; CODE XREF: FsRtlCheckOplockEx2+59B↑j
                cmp     eax, 15h        ; switch 22 cases
                ja      def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                mov     ecx, ds:(jpt_14024D410 - 140000000h)[r9+rax*4]
                add     rcx, r9
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14024D416:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; FsRtlCheckOplockEx2+87D↓j
                                        ; DATA XREF: ...
                mov     rdx, r12        ; jumptable 000000014024D410 case 18
                mov     rcx, r13
                call    sub_140340340
                cmp     byte ptr [r12], 12h
                jnz     short loc_14024D431
                test    bl, 20h
                jnz     loc_14024D6C1

loc_14024D431:                          ; CODE XREF: FsRtlCheckOplockEx2+6A6↑j
                                        ; FsRtlCheckOplockEx2+94A↓j ...
                mov     edx, [rsp+168h+var_EC]
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D43A:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                test    esi, 7000h      ; jumptable 000000014024D410 case 0
                jz      short loc_14024D49B
                mov     rax, [r12+8]
                test    dword ptr [rax+10h], 0FFEDFE7Fh
                jz      short loc_14024D49B

loc_14024D450:                          ; CODE XREF: FsRtlCheckOplockEx2+734↓j
                                        ; FsRtlCheckOplockEx2+86C↓j
                test    sil, 8
                jnz     loc_14024D69C

loc_14024D45A:                          ; CODE XREF: FsRtlCheckOplockEx2+928↓j
                                        ; FsRtlCheckOplockEx2+93C↓j
                movzx   eax, byte ptr [r12+13h]
                test    al, 0FAh
                jz      loc_14024D53F

loc_14024D468:                          ; CODE XREF: FsRtlCheckOplockEx2+7C1↓j
                mov     eax, [r12+10h]
                bt      eax, 14h
                jb      loc_14024D321   ; jumptable 000000014024D591 case 39

loc_14024D477:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                mov     dl, 1           ; jumptable 000000014024D410 case 9
                mov     [rsp+168h+var_F5], dl

loc_14024D47D:                          ; CODE XREF: FsRtlCheckOplockEx2+46D↑j
                mov     edi, 4000h
                mov     [rsp+168h+var_F0], edi
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D48B:                          ; CODE XREF: FsRtlCheckOplockEx2+3FE↑j
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5E40
                jmp     loc_14024D184
; ---------------------------------------------------------------------------

loc_14024D49B:                          ; CODE XREF: FsRtlCheckOplockEx2+6C0↑j
                                        ; FsRtlCheckOplockEx2+6CE↑j
                test    sil, 1Eh
                jnz     loc_14024D5DA

loc_14024D4A5:                          ; CODE XREF: FsRtlCheckOplockEx2+866↓j
                mov     eax, [r12+10h]
                bt      eax, 14h
                jnb     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                jmp     short loc_14024D450
; ---------------------------------------------------------------------------

loc_14024D4B6:                          ; CODE XREF: FsRtlCheckOplockEx2+4B3↑j
                lea     rax, [rsp+168h+var_F4]
                mov     [rsp+168h+var_108], rax
                lea     rax, [rsp+168h+var_F7]
                mov     [rsp+168h+var_110], rax
                mov     rax, [rsp+168h+var_A8]
                mov     [rsp+168h+var_118], rax
                mov     rax, [rsp+168h+var_A0]
                mov     [rsp+168h+var_120], rax
                mov     rax, [rsp+168h+arg_38]
                mov     [rsp+168h+var_128], rax
                mov     rax, [rsp+168h+var_98]
                mov     [rsp+168h+var_130], rax
                mov     rax, [rsp+168h+var_90]
                mov     [rsp+168h+var_138], rax
                mov     rsi, [rsp+168h+var_C8]
                mov     [rsp+168h+var_140], rsi
                mov     r9d, ebx
                mov     r8, r15
                mov     rdx, r12
                mov     rcx, r13
                call    sub_14035859C
                mov     [rsp+168h+var_E8], eax
                jmp     loc_14024D241
; ---------------------------------------------------------------------------

loc_14024D535:                          ; CODE XREF: FsRtlCheckOplockEx2+28E↑j
                mov     [rsp+168h+var_F6], 0
                jmp     loc_14024D7AF
; ---------------------------------------------------------------------------

loc_14024D53F:                          ; CODE XREF: FsRtlCheckOplockEx2+6E2↑j
                cmp     al, 1
                jz      loc_14024D468
                jmp     loc_14024D321   ; jumptable 000000014024D591 case 39
; ---------------------------------------------------------------------------

loc_14024D54C:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                mov     eax, [r12+10h]  ; jumptable 000000014024D410 case 6
                cmp     eax, 14h
                jnz     short loc_14024D566
                cmp     [r12+21h], dil

loc_14024D55B:                          ; CODE XREF: FsRtlCheckOplockEx2+A2A↓j
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D566:                          ; CODE XREF: FsRtlCheckOplockEx2+7D4↑j
                cmp     eax, 13h
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                sub     eax, 0Ah        ; switch 56 cases
                cmp     eax, 37h
                ja      def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                cdqe
                movzx   eax, ds:(byte_14024D968 - 140000000h)[r9+rax]
                mov     ecx, ds:(jpt_14024D591 - 140000000h)[r9+rax*4]
                add     rcx, r9
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_14024D597:                          ; CODE XREF: FsRtlCheckOplockEx2+811↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D591↓o
                mov     rax, [r15+18h]  ; jumptable 000000014024D591 case 13
                cmp     [rax], dil
                jz      def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63

loc_14024D5A4:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                mov     edi, 2000h      ; jumptable 000000014024D410 case 21
                mov     [rsp+168h+var_F0], edi
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D5B2:                          ; CODE XREF: FsRtlCheckOplockEx2+3EB↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_14024D171
; ---------------------------------------------------------------------------

loc_14024D5BC:                          ; CODE XREF: FsRtlCheckOplockEx2+811↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D591↓o
                mov     edi, 2000h      ; jumptable 000000014024D591 cases 10,11,40,65
                mov     [rsp+168h+var_F0], edi
                test    sil, 0Ch
                jz      def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                mov     al, 1
                mov     [rsp+168h+var_F8], al
                jmp     loc_14024D207
; ---------------------------------------------------------------------------

loc_14024D5DA:                          ; CODE XREF: FsRtlCheckOplockEx2+71F↑j
                mov     rax, [r12+8]
                test    dword ptr [rax+10h], 0FFEFFE7Fh
                jz      loc_14024D4A5
                jmp     loc_14024D450
; ---------------------------------------------------------------------------

loc_14024D5F1:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                mov     rax, [r12+30h]  ; jumptable 000000014024D410 case 2
                test    dword ptr [rax+50h], 4000h
                jz      loc_14024D416   ; jumptable 000000014024D410 case 18
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D608:                          ; CODE XREF: FsRtlCheckOplockEx2+326↑j
                mov     eax, r14d
                cmp     byte ptr [rdi+366h], 0
                jnz     short loc_14024D618
                xor     dl, dl
                jmp     short loc_14024D62D
; ---------------------------------------------------------------------------

loc_14024D618:                          ; CODE XREF: FsRtlCheckOplockEx2+892↑j
                xchg    al, [rdi+366h]
                or      [rdi+318h], al
                movzx   edx, byte ptr [rdi+318h]
                mov     eax, esi

loc_14024D62D:                          ; CODE XREF: FsRtlCheckOplockEx2+896↑j
                mov     [rsp+168h+var_C0], eax
                test    eax, eax
                jnz     loc_14024D0AC
                mov     rsi, r14
                mov     [rsp+168h+var_78], r14
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      loc_14024D0E4
                mov     rdx, rcx
                mov     rcx, rdi
                call    sub_1403F8778
                lea     r9, cs:140000000h
                mov     r10, 0FFFF800000000000h
                jmp     loc_14024D0DC
; ---------------------------------------------------------------------------

loc_14024D678:                          ; CODE XREF: FsRtlCheckOplockEx2+36F↑j
                lock bts dword ptr [rdi+78h], 10h
                jmp     loc_14024D13E
; ---------------------------------------------------------------------------

loc_14024D683:                          ; CODE XREF: FsRtlCheckOplockEx2+394↑j
                mov     rcx, [rdi+0B8h]
                call    sub_140245840
                mov     rcx, [rsp+168h+var_E0]
                jmp     loc_14024D127
; ---------------------------------------------------------------------------

loc_14024D69C:                          ; CODE XREF: FsRtlCheckOplockEx2+6D4↑j
                mov     rax, [r12+8]
                test    dword ptr [rax+10h], 0FFEDFE56h
                jnz     loc_14024D45A
                movzx   eax, byte ptr [r12+1Ah]
                test    al, 1
                jnz     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                jmp     loc_14024D45A
; ---------------------------------------------------------------------------

loc_14024D6C1:                          ; CODE XREF: FsRtlCheckOplockEx2+6AB↑j
                mov     edi, 2000h
                mov     [rsp+168h+var_F0], edi
                jmp     loc_14024D431
; ---------------------------------------------------------------------------

loc_14024D6CF:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                test    sil, 8          ; jumptable 000000014024D410 case 17
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D6DE:                          ; CODE XREF: FsRtlCheckOplockEx2+811↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D591↓o
                mov     rax, [r15+18h]  ; jumptable 000000014024D591 case 64
                mov     ecx, [rax]
                test    cl, 1
                jz      def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                mov     edi, 2000h
                mov     [rsp+168h+var_F0], edi
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D6FB:                          ; CODE XREF: FsRtlCheckOplockEx2+690↑j
                                        ; DATA XREF: FsRtlCheckOplockEx2:jpt_14024D410↓o
                mov     eax, [r12+18h]  ; jumptable 000000014024D410 case 13
                cmp     eax, 98268h
                ja      loc_14024D78F
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                cmp     eax, 900FCh
                jz      short loc_14024D75B
                cmp     eax, 94264h
                jz      short loc_14024D73A
                cmp     eax, 980C8h
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                cmp     eax, 98208h
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D73A:                          ; CODE XREF: FsRtlCheckOplockEx2+99D↑j
                test    sil, 8
                movzx   edx, dl
                mov     ecx, 1
                cmovz   edx, ecx
                mov     [rsp+168h+var_F5], dl
                mov     edi, 4000h
                mov     [rsp+168h+var_F0], edi
                jmp     def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
; ---------------------------------------------------------------------------

loc_14024D75B:                          ; CODE XREF: FsRtlCheckOplockEx2+996↑j
                mov     rcx, r15
                call    sub_1404F02C8
                bt      eax, 0Eh
                jnb     loc_14024D431
                mov     edi, 2000h
                mov     [rsp+168h+var_F0], edi
                mov     edx, [rsp+168h+var_EC]
                test    sil, 0Ch
                jz      def_14024D410   ; jumptable 000000014024D410 default case, cases 1,3-5,7,8,10-12,14-16,19,20
                                        ; jumptable 000000014024D591 default case, cases 12,14-38,41-63
                mov     al, 1
                mov     [rsp+168h+var_F8], al
                jmp     loc_14024D207
; ---------------------------------------------------------------------------

loc_14024D78F:                          ; CODE XREF: FsRtlCheckOplockEx2+985↑j
                cmp     eax, 98344h
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                cmp     eax, 983E8h
                jz      loc_14024D321   ; jumptable 000000014024D591 case 39
                cmp     eax, 9C2B4h
                jmp     loc_14024D55B
;   } // starts at 14024CFB0
; ---------------------------------------------------------------------------

loc_14024D7AF:                          ; CODE XREF: FsRtlCheckOplockEx2+299↑j
                                        ; FsRtlCheckOplockEx2+434↑j ...
                mov     esi, 1
                cmp     [rsp+168h+var_F7], 0
                jz      short loc_14024D7E0
                bt      ebx, 1Dh
                jb      short loc_14024D7E0
                mov     rdi, [r13+98h]
                mov     [rdi+8], r14
                xor     eax, eax
                lock cmpxchg [rdi], esi
                jnz     loc_14024D88A

loc_14024D7D8:                          ; CODE XREF: FsRtlCheckOplockEx2+B14↓j
                mov     rcx, rdi
                call    sub_140243660

loc_14024D7E0:                          ; CODE XREF: FsRtlCheckOplockEx2+A39↑j
                                        ; FsRtlCheckOplockEx2+A3F↑j
                cmp     [rsp+168h+var_F4], 0
                lea     r9, cs:140000000h
                mov     r10, 0FFFF800000000000h
                jz      loc_14024CE87
                jmp     loc_14024CFAB
; ---------------------------------------------------------------------------

loc_14024D801:                          ; CODE XREF: FsRtlCheckOplockEx2+141↑j
                cmp     rcx, cs:off_140C04810
                jz      loc_14024CEC7
                mov     rax, [rcx+38h]
                test    rax, rax
                jz      loc_14024CEC7
                movzx   eax, byte ptr [rax+2]
                test    al, 3
                jz      loc_14024CEC7
                jmp     loc_14024CE53
; ---------------------------------------------------------------------------

loc_14024D82C:                          ; CODE XREF: FsRtlCheckOplockEx2+1AB↑j
                mov     eax, 2

loc_14024D831:                          ; CODE XREF: FsRtlCheckOplockEx2+1E8A4B↓j
                mov     [rsp+168h+var_EC], eax
                movzx   r8d, ax
                mov     rdx, [rsp+168h+var_D0]
                mov     r12, [rsp+168h+var_E0]
                mov     rcx, [r12+30h]
                call    sub_140390DC4
                mov     esi, eax
                mov     eax, [rsp+168h+var_EC]
                cmp     ax, 1
                jz      loc_1404357D0
                cmp     ax, 2
                jnz     short loc_14024D876
                mov     rcx, [rsp+168h+var_D0]
                call    FsRtlAcknowledgeEcp

loc_14024D876:                          ; CODE XREF: FsRtlCheckOplockEx2+AE7↑j
                                        ; FsRtlCheckOplockEx2+1E8A5E↓j
                cmp     esi, 0C0000001h
                jnz     loc_14024CE53
                mov     esi, r14d
                jmp     loc_14024CE53
; ---------------------------------------------------------------------------

loc_14024D88A:                          ; CODE XREF: FsRtlCheckOplockEx2+A52↑j
                mov     edx, eax
                mov     rcx, rdi
                call    sub_1402F424C
                jmp     loc_14024D7D8
; ---------------------------------------------------------------------------

loc_14024D899:                          ; CODE XREF: FsRtlCheckOplockEx2+F3↑j
                mov     r13, rax
                mov     [rsp+168h+var_68], rax
                jmp     loc_14024CE79
; ---------------------------------------------------------------------------

loc_14024D8A9:                          ; CODE XREF: FsRtlCheckOplockEx2+BE↑j
                mov     [rsp+168h+var_88], r14
                test    r13, r13
                jnz     short loc_14024D8BD
                xor     eax, eax
                jmp     loc_14024CE8E
; ---------------------------------------------------------------------------

loc_14024D8BD:                          ; CODE XREF: FsRtlCheckOplockEx2+B34↑j
                mov     rcx, [r13+98h]
                call    ExAcquireFastMutexUnsafe
                cmp     [r12], r14b
                jnz     short loc_14024D8F4
                test    dword ptr [r13+90h], 10000h
                jnz     loc_140435730

loc_14024D8E0:                          ; CODE XREF: FsRtlCheckOplockEx2+B7A↓j
                                        ; FsRtlCheckOplockEx2+1E89C7↓j ...
                mov     rcx, [r13+98h]
                call    ExReleaseFastMutexUnsafe
                mov     eax, r14d
                jmp     loc_14024CE8E
; ---------------------------------------------------------------------------

loc_14024D8F4:                          ; CODE XREF: FsRtlCheckOplockEx2+B4D↑j
                mov     r14d, 0C000000Dh
                jmp     short loc_14024D8E0
; ---------------------------------------------------------------------------
jpt_14024D410   dd offset loc_14024D43A - 140000000h
                                        ; DATA XREF: FsRtlCheckOplockEx2+685↑r
                dd offset def_14024D410 - 140000000h ; jump table for switch statement
                dd offset loc_14024D5F1 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset loc_14024D54C - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset loc_14024D477 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset loc_14024D6FB - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset loc_14024D6CF - 140000000h
                dd offset loc_14024D416 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset def_14024D410 - 140000000h
                dd offset loc_14024D5A4 - 140000000h
jpt_14024D591   dd offset loc_14024D5BC - 140000000h
                                        ; DATA XREF: FsRtlCheckOplockEx2+806↑r
                dd offset loc_14024D597 - 140000000h ; jump table for switch statement
                dd offset loc_14024D321 - 140000000h
                dd offset loc_14024D6DE - 140000000h
                dd offset def_14024D410 - 140000000h
byte_14024D968  db      0,     0,     4,     1
                                        ; DATA XREF: FsRtlCheckOplockEx2+7FD↑r
                db      4,     4,     4,     4 ; indirect table for switch statement
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     2,     0,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     4,     4
                db      4,     4,     3,     0
; } // starts at 14024CD80
FsRtlCheckOplockEx2 endp
