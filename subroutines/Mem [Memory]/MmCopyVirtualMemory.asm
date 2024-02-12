MmCopyVirtualMemory proc near           ; CODE XREF: PsQueryProcessCommandLine+2B7↑p
                                        ; sub_14051D814+7F↑p ...

var_428         = qword ptr -428h
var_420         = qword ptr -420h
var_418         = dword ptr -418h
var_414         = dword ptr -414h
var_410         = dword ptr -410h
var_40C         = byte ptr -40Ch
var_408         = qword ptr -408h
var_400         = dword ptr -400h
var_3FC         = dword ptr -3FCh
var_3F8         = qword ptr -3F8h
var_3F0         = qword ptr -3F0h
var_3E8         = qword ptr -3E8h
var_3E0         = qword ptr -3E0h
var_3D8         = qword ptr -3D8h
var_3D0         = dword ptr -3D0h
var_3C8         = qword ptr -3C8h
var_3C0         = qword ptr -3C0h
var_3B8         = qword ptr -3B8h
var_3B0         = qword ptr -3B0h
var_3A8         = qword ptr -3A8h
var_3A0         = qword ptr -3A0h
var_398         = dword ptr -398h
var_390         = qword ptr -390h
var_388         = qword ptr -388h
var_380         = qword ptr -380h
var_378         = qword ptr -378h
var_370         = qword ptr -370h
var_368         = qword ptr -368h
var_360         = qword ptr -360h
var_358         = qword ptr -358h
var_350         = qword ptr -350h
var_348         = qword ptr -348h
var_340         = qword ptr -340h
var_338         = qword ptr -338h
var_328         = xmmword ptr -328h
var_318         = xmmword ptr -318h
var_308         = xmmword ptr -308h
var_2F8         = qword ptr -2F8h
var_2F0         = word ptr -2F0h
var_2EE         = word ptr -2EEh
var_2D8         = qword ptr -2D8h
var_2D0         = dword ptr -2D0h
var_2CC         = dword ptr -2CCh
var_248         = byte ptr -248h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407E6650 SIZE 00000028 BYTES
; FUNCTION CHUNK AT 00000001408048CC SIZE 00000087 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 410h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+448h+var_48], rax
                mov     rdi, r9
                mov     [rsp+448h+var_3E8], r9
                mov     [rsp+448h+var_3C0], r8
                mov     rsi, rdx
                mov     [rsp+448h+var_3B0], rdx
                mov     [rsp+448h+var_3D8], rcx
                mov     [rsp+448h+var_360], rcx
                mov     [rsp+448h+var_370], rdx
                mov     [rsp+448h+var_368], r8
                mov     [rsp+448h+var_388], r9
                mov     r12, [rsp+448h+arg_20]
                mov     [rsp+448h+var_390], r12
                mov     rax, [rsp+448h+arg_30]
                mov     [rsp+448h+var_3C8], rax
                xorps   xmm0, xmm0
                movups  [rsp+448h+var_328], xmm0
                movups  [rsp+448h+var_318], xmm0
                movups  [rsp+448h+var_308], xmm0
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+448h+var_2F8]
                call    memset
                xor     r15d, r15d
                mov     [rsp+448h+var_3F8], r15
                test    r12, r12
                jz      loc_14063B99F
                mov     rax, [rsp+448h+var_3C8]
                mov     [rax], r15
                mov     ebx, r15d
                mov     [rsp+448h+var_3A8], r15
                mov     rcx, [rsp+448h+var_3D8]
                cmp     [rcx+4F0h], rbx
                jnz     short loc_14063B3AE
                lea     ebx, [r15+1]

loc_14063B3AE:                          ; CODE XREF: MmCopyVirtualMemory+E8↑j
                mov     [rsp+448h+var_3A0], rsi
                mov     [rsp+448h+var_3F0], rdi
                mov     r13, r12
                mov     [rsp+448h+var_3B8], r12
                lea     rax, [rsp+448h+var_2F8]
                mov     [rsp+448h+var_338], rax
                mov     rax, gs:188h
                mov     [rsp+448h+var_350], rax
                mov     [rsp+448h+var_418], r15d
                mov     [rsp+448h+var_414], r15d
                mov     [rsp+448h+var_408], r15
                mov     [rsp+448h+var_358], r15
                mov     [rsp+448h+var_3D0], r15d
                mov     [rsp+448h+var_380], r12
                mov     [rsp+448h+var_378], r12

loc_14063B413:                          ; CODE XREF: MmCopyVirtualMemory+6BF↓j
                lea     eax, [rbx+rbx]
                xor     eax, ebx
                and     eax, 2
                xor     ebx, eax
                test    byte ptr [rcx+3E0h], 1
                jnz     loc_1408048CC

loc_14063B42A:                          ; CODE XREF: MmCopyVirtualMemory+1C960F↓j
                mov     r14, [rsp+448h+var_3C0]
                test    byte ptr [r14+3E0h], 1
                jnz     loc_1408048D4

loc_14063B440:                          ; CODE XREF: MmCopyVirtualMemory+1C9618↓j
                mov     rdi, r12
                sub     rdi, r13
                lea     rdx, [rdi+rsi]
                lea     r9, [rsp+448h+var_380]
                mov     r8, r13
                call    sub_14063BB50
                mov     esi, eax
                mov     rdx, [rsp+448h+var_3E8]
                add     rdx, rdi
                lea     r9, [rsp+448h+var_378]
                mov     r8, r13
                mov     rcx, r14
                call    sub_14063BB50
                mov     ecx, eax
                and     ecx, 3
                shl     ecx, 2
                and     esi, 3
                or      ecx, esi
                shl     ecx, 2
                mov     eax, ebx
                and     eax, 0FFFFFFC3h
                mov     ebx, ecx
                or      ebx, eax
                mov     [rsp+448h+var_410], ebx
                test    bl, 0C0h
                setz    cl
                test    bl, 0Ch
                setz    al
                test    al, cl
                jnz     short loc_14063B4AB
                and     ebx, 0FFFFFFFDh
                mov     [rsp+448h+var_410], ebx

loc_14063B4AB:                          ; CODE XREF: MmCopyVirtualMemory+1E2↑j
                mov     rdi, r13
                mov     [rsp+448h+var_3E0], r13
                mov     rax, [rsp+448h+var_380]
                cmp     rax, r13
                jb      loc_1408048DD

loc_14063B4C4:                          ; CODE XREF: MmCopyVirtualMemory+1C9625↓j
                mov     rax, [rsp+448h+var_378]
                cmp     rax, rdi
                jb      loc_1408048EA

loc_14063B4D5:                          ; CODE XREF: MmCopyVirtualMemory+624↓j
                                        ; MmCopyVirtualMemory+87C↓j ...
                cmp     rdi, 200h
                jnb     loc_14063B9CF

loc_14063B4E2:                          ; CODE XREF: MmCopyVirtualMemory+712↓j
                and     ebx, 0FFFFFFFDh
                mov     [rsp+448h+var_410], ebx
                mov     rax, [rsp+448h+var_3A8]
                test    rax, rax
                jnz     loc_1408048F7
                cmp     rdi, 200h
                ja      loc_14063BADF
                lea     rax, [rsp+448h+var_248]
                mov     [rsp+448h+var_408], rax

loc_14063B514:                          ; CODE XREF: MmCopyVirtualMemory:loc_14063B9E1↓j
                mov     r14, rdi

loc_14063B517:                          ; CODE XREF: MmCopyVirtualMemory+727↓j
                                        ; MmCopyVirtualMemory+1C9641↓j
                mov     esi, ebx
                mov     [rsp+448h+var_3FC], ebx

loc_14063B51D:                          ; CODE XREF: MmCopyVirtualMemory+6AF↓j
                mov     rcx, [rsp+448h+var_3D8]
                test    rdi, rdi
                jz      loc_14063B974
                mov     rax, rdi
                cmp     rdi, r14
                cmovnb  rax, r14
                mov     r14, rax
                mov     [rsp+448h+var_340], rax
                lea     r8, [rsp+448h+var_328]
                xor     edx, edx
                call    sub_1402D3C90
                mov     rcx, [rsp+448h+var_3B0]
                mov     r10, [rsp+448h+var_3A0]
                cmp     [rsp+448h+arg_28], 0
                jz      short loc_14063B59A
                cmp     r10, rcx
                jnz     short loc_14063B59A

loc_14063B56E:                          ; DATA XREF: .rdata:00000001400520E4↑o
;   __try { // __except at loc_14063B593
                lea     rax, [r12+rcx]
                mov     rdx, 7FFFFFFF0000h
                cmp     rax, rdx
                ja      short loc_14063B586
                cmp     rax, rcx
                jnb     short loc_14063B591

loc_14063B586:                          ; CODE XREF: MmCopyVirtualMemory+2BF↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14063B591:                          ; CODE XREF: MmCopyVirtualMemory+2C4↑j
                jmp     short loc_14063B59A
;   } // starts at 14063B56E
; ---------------------------------------------------------------------------

loc_14063B593:                          ; DATA XREF: .rdata:00000001400520E4↑o
;   __except(1) // owned by 14063B56E
                mov     esi, eax
                jmp     loc_14063BAB2
; ---------------------------------------------------------------------------

loc_14063B59A:                          ; CODE XREF: MmCopyVirtualMemory+2A7↑j
                                        ; MmCopyVirtualMemory+2AC↑j ...
                mov     ecx, esi
                and     ecx, 2
                mov     [rsp+448h+var_400], ecx
                mov     [rsp+448h+var_398], ecx
                jnz     loc_14063B9EC

loc_14063B5B0:                          ; CODE XREF: MmCopyVirtualMemory+790↓j
                mov     rsi, [rsp+448h+var_350]
                add     rsi, 74h ; 't'
                mov     [rsp+448h+var_348], rsi
                bts     dword ptr [rsi], 5
                setb    r13b
                mov     [rsp+448h+var_40C], r13b

loc_14063B5D1:                          ; DATA XREF: .rdata:00000001400520F4↑o
;   __try { // __except at loc_14063B671
                test    ecx, ecx
                jnz     short loc_14063B600
                mov     eax, [rsp+448h+var_3FC]
                test    al, 40h
                jnz     short loc_14063B63D
                and     eax, 0Ch
                cmp     eax, 8
                jz      short loc_14063B63D
                mov     r8, r14
                cmp     eax, 4
                jz      short loc_14063B61E
                mov     rdx, r10
                mov     rcx, [rsp+448h+var_408]
                call    memmove
                mov     ecx, [rsp+448h+var_418]
                jmp     short loc_14063B66B
; ---------------------------------------------------------------------------

loc_14063B600:                          ; CODE XREF: MmCopyVirtualMemory+313↑j
                xor     r8d, r8d
                movzx   edx, [rsp+448h+arg_28]
                lea     rcx, [rsp+448h+var_2F8]
                call    MmProbeAndLockPages
                mov     ecx, [rsp+448h+var_418]
                jmp     short loc_14063B66B
; ---------------------------------------------------------------------------

loc_14063B61E:                          ; CODE XREF: MmCopyVirtualMemory+32B↑j
                lea     rax, [rsp+448h+var_3F8]
                mov     [rsp+448h+var_428], rax
                mov     r9d, 1
                mov     rdx, [rsp+448h+var_408]
                mov     rcx, r10
                call    sub_1408D43BC
                jmp     short loc_14063B661
; ---------------------------------------------------------------------------

loc_14063B63D:                          ; CODE XREF: MmCopyVirtualMemory+31B↑j
                                        ; MmCopyVirtualMemory+323↑j
                lea     rax, [rsp+448h+var_3F8]
                mov     [rsp+448h+var_420], rax
                mov     byte ptr [rsp+448h+var_428], 1
                mov     r9, r14
                mov     r8, [rsp+448h+var_408]
                mov     rdx, r10
                mov     rcx, [rsp+448h+var_3D8]
                call    sub_140890BC0

loc_14063B661:                          ; CODE XREF: MmCopyVirtualMemory+37B↑j
                mov     [rsp+448h+var_414], eax
                mov     [rsp+448h+var_418], eax
                mov     ecx, eax

loc_14063B66B:                          ; CODE XREF: MmCopyVirtualMemory+33E↑j
                                        ; MmCopyVirtualMemory+35C↑j
                mov     eax, [rsp+448h+var_400]
                jmp     short loc_14063B6EA
;   } // starts at 14063B5D1
; ---------------------------------------------------------------------------

loc_14063B671:                          ; DATA XREF: .rdata:00000001400520F4↑o
;   __except(1) // owned by 14063B5D1
                mov     ecx, eax
                mov     [rsp+448h+var_418], eax
                mov     [rsp+448h+var_414], eax
                xor     r15d, r15d
                movzx   r13d, [rsp+448h+var_40C]
                mov     rdi, [rsp+448h+var_3E0]
                mov     ebx, [rsp+448h+var_410]
                mov     eax, [rsp+448h+var_398]
                mov     [rsp+448h+var_400], eax
                mov     rsi, [rsp+448h+var_348]
                mov     rdx, [rsp+448h+var_370]
                mov     [rsp+448h+var_3B0], rdx
                mov     rdx, [rsp+448h+var_368]
                mov     [rsp+448h+var_3C0], rdx
                mov     rdx, [rsp+448h+var_388]
                mov     [rsp+448h+var_3E8], rdx
                mov     rdx, [rsp+448h+var_360]
                mov     [rsp+448h+var_3D8], rdx
                mov     r12, [rsp+448h+var_390]
                mov     r14, [rsp+448h+var_340]

loc_14063B6EA:                          ; CODE XREF: MmCopyVirtualMemory+3AF↑j
                test    r13b, r13b
                jnz     short loc_14063B6F3
                btr     dword ptr [rsi], 5

loc_14063B6F3:                          ; CODE XREF: MmCopyVirtualMemory+42D↑j
                test    ecx, ecx
                js      loc_14063BA9B
                test    eax, eax
                jnz     loc_14063BA55
                mov     rsi, [rsp+448h+var_408]

loc_14063B708:                          ; CODE XREF: MmCopyVirtualMemory+7BE↓j
                xor     edx, edx
                lea     rcx, [rsp+448h+var_328]
                call    sub_14021E230
                lea     r8, [rsp+448h+var_328]
                xor     edx, edx
                mov     rcx, [rsp+448h+var_3C0]
                call    sub_1402D3C90
                mov     rax, [rsp+448h+var_3B0]
                cmp     [rsp+448h+arg_28], 0
                jz      loc_14063B9C5
                cmp     [rsp+448h+var_3A0], rax
                jnz     loc_14063B9C5

loc_14063B752:                          ; DATA XREF: .rdata:0000000140052104↑o
;   __try { // __except at loc_14063B77C
                mov     r13, [rsp+448h+var_3E8]
                lea     rax, [r12+r13]
                mov     rcx, 7FFFFFFF0000h
                cmp     rax, rcx
                ja      short loc_14063B76F
                cmp     rax, r13
                jnb     short loc_14063B77A

loc_14063B76F:                          ; CODE XREF: MmCopyVirtualMemory+4A8↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al

loc_14063B77A:                          ; CODE XREF: MmCopyVirtualMemory+4AD↑j
                jmp     short loc_14063B797
;   } // starts at 14063B752
; ---------------------------------------------------------------------------

loc_14063B77C:                          ; DATA XREF: .rdata:0000000140052104↑o
;   __except(1) // owned by 14063B752
                mov     esi, eax
                test    byte ptr [rsp+448h+var_410], 2
                jz      short loc_14063B792
                mov     rcx, [rsp+448h+var_338]
                call    MmUnlockPages

loc_14063B792:                          ; CODE XREF: MmCopyVirtualMemory+4C3↑j
                jmp     loc_14063BAB2
; ---------------------------------------------------------------------------

loc_14063B797:                          ; CODE XREF: MmCopyVirtualMemory:loc_14063B77A↑j
                                        ; MmCopyVirtualMemory+70A↓j
                                        ; DATA XREF: ...
;   __try { // __except at loc_14063B85A
                mov     eax, [rsp+448h+var_3FC]
                test    al, al
                js      short loc_14063B7F5
                and     eax, 30h
                cmp     eax, 20h ; ' '
                jz      short loc_14063B7F5
                mov     r8, r14
                mov     rcx, [rsp+448h+var_3F0]
                cmp     eax, 10h
                jz      short loc_14063B7DC
                mov     rdx, rsi
                call    memmove
                mov     esi, r15d
                mov     [rsp+448h+var_418], r15d
                mov     [rsp+448h+var_414], r15d
                mov     [rsp+448h+var_3F8], r14

loc_14063B7CE:                          ; CODE XREF: MmCopyVirtualMemory+568↓j
                cmp     esi, 0C0000005h
                jz      short loc_14063B82A
                test    esi, esi
                js      short loc_14063B850
                jmp     short loc_14063B855
; ---------------------------------------------------------------------------

loc_14063B7DC:                          ; CODE XREF: MmCopyVirtualMemory+4F2↑j
                lea     rax, [rsp+448h+var_3F8]
                mov     [rsp+448h+var_428], rax
                xor     r9d, r9d
                mov     rdx, [rsp+448h+var_408]
                call    sub_1408D43BC
                jmp     short loc_14063B81E
; ---------------------------------------------------------------------------

loc_14063B7F5:                          ; CODE XREF: MmCopyVirtualMemory+4DD↑j
                                        ; MmCopyVirtualMemory+4E5↑j
                lea     rax, [rsp+448h+var_3F8]
                mov     [rsp+448h+var_420], rax
                mov     byte ptr [rsp+448h+var_428], 0
                mov     r9, r14
                mov     r8, [rsp+448h+var_408]
                mov     rdx, [rsp+448h+var_3F0]
                mov     rcx, [rsp+448h+var_3C0]
                call    sub_140890BC0

loc_14063B81E:                          ; CODE XREF: MmCopyVirtualMemory+533↑j
                mov     [rsp+448h+var_414], eax
                mov     [rsp+448h+var_418], eax
                mov     esi, eax
                jmp     short loc_14063B7CE
; ---------------------------------------------------------------------------

loc_14063B82A:                          ; CODE XREF: MmCopyVirtualMemory+514↑j
                mov     rcx, [rsp+448h+var_3F8]
                sub     rcx, r13
                add     rcx, [rsp+448h+var_3F0]
                mov     rax, [rsp+448h+var_3C8]
                mov     [rax], rcx
                mov     esi, 8000000Dh
                mov     [rsp+448h+var_414], esi
                jmp     loc_14063BAB2
; ---------------------------------------------------------------------------

loc_14063B850:                          ; CODE XREF: MmCopyVirtualMemory+518↑j
                jmp     loc_14063BAB2
; ---------------------------------------------------------------------------

loc_14063B855:                          ; CODE XREF: MmCopyVirtualMemory+51A↑j
                jmp     loc_14063B929
;   } // starts at 14063B797
; ---------------------------------------------------------------------------

loc_14063B85A:                          ; DATA XREF: .rdata:0000000140052114↑o
;   __except(loc_1407E6650) // owned by 14063B797
                mov     ebx, [rsp+448h+var_410]
                test    bl, 2
                jz      loc_14063B8E9
                lea     rcx, [rsp+448h+var_2F8]
                call    MmUnlockPages
                and     ebx, 0FFFFFFFDh
                mov     [rsp+448h+var_410], ebx
                xor     edx, edx
                lea     rcx, [rsp+448h+var_328]
                call    sub_14021E230
                xor     r15d, r15d
                mov     eax, [rsp+448h+var_414]
                mov     [rsp+448h+var_418], eax
                mov     rdi, [rsp+448h+var_3E0]
                mov     rax, [rsp+448h+var_370]
                mov     [rsp+448h+var_3B0], rax
                mov     rax, [rsp+448h+var_368]
                mov     [rsp+448h+var_3C0], rax
                mov     rax, [rsp+448h+var_388]
                mov     [rsp+448h+var_3E8], rax
                mov     rax, [rsp+448h+var_360]
                mov     [rsp+448h+var_3D8], rax
                mov     r12, [rsp+448h+var_390]
                mov     r13, [rsp+448h+var_3B8]
                jmp     loc_14063B4D5
; ---------------------------------------------------------------------------

loc_14063B8E9:                          ; CODE XREF: MmCopyVirtualMemory+5A1↑j
                mov     rax, [rsp+448h+var_390]
                sub     rax, [rsp+448h+var_3E0]
                mov     rcx, [rsp+448h+var_3C8]
                mov     [rcx], rax
                cmp     [rsp+448h+var_3D0], 1
                jnz     short loc_14063B91B
                mov     rax, [rsp+448h+var_358]
                sub     rax, [rsp+448h+var_388]
                mov     [rcx], rax

loc_14063B91B:                          ; CODE XREF: MmCopyVirtualMemory+646↑j
                mov     esi, 8000000Dh
                mov     [rsp+448h+var_414], esi
                jmp     loc_14063BAB2
; ---------------------------------------------------------------------------

loc_14063B929:                          ; CODE XREF: MmCopyVirtualMemory:loc_14063B855↑j
                xor     edx, edx
                lea     rcx, [rsp+448h+var_328]
                call    sub_14021E230
                cmp     [rsp+448h+var_400], 0
                jnz     loc_14063BA89

loc_14063B943:                          ; CODE XREF: MmCopyVirtualMemory+7D6↓j
                sub     rdi, r14
                mov     [rsp+448h+var_3E0], rdi
                mov     r13, [rsp+448h+var_3B8]
                sub     r13, r14
                mov     [rsp+448h+var_3B8], r13
                add     [rsp+448h+var_3A0], r14
                add     [rsp+448h+var_3F0], r14
                mov     esi, [rsp+448h+var_3FC]
                jmp     loc_14063B51D
; ---------------------------------------------------------------------------

loc_14063B974:                          ; CODE XREF: MmCopyVirtualMemory+265↑j
                test    r13, r13
                mov     rsi, [rsp+448h+var_3B0]
                jnz     loc_14063B413
                cmp     [rsp+448h+var_3A8], 0
                jnz     loc_140804941

loc_14063B994:                          ; CODE XREF: MmCopyVirtualMemory+1C968E↓j
                mov     rax, [rsp+448h+var_3C8]
                mov     [rax], r12

loc_14063B99F:                          ; CODE XREF: MmCopyVirtualMemory+C0↑j
                xor     eax, eax

loc_14063B9A1:                          ; CODE XREF: MmCopyVirtualMemory+81A↓j
                mov     rcx, [rsp+448h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 410h
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

loc_14063B9C5:                          ; CODE XREF: MmCopyVirtualMemory+47E↑j
                                        ; MmCopyVirtualMemory+48C↑j
                mov     r13, [rsp+448h+var_3E8]
                jmp     loc_14063B797
; ---------------------------------------------------------------------------

loc_14063B9CF:                          ; CODE XREF: MmCopyVirtualMemory+21C↑j
                test    bl, 2
                jz      loc_14063B4E2
                mov     r14d, 0E000h
                cmp     r12, r14

loc_14063B9E1:                          ; CODE XREF: MmCopyVirtualMemory+859↓j
                jbe     loc_14063B514
                jmp     loc_14063B517
; ---------------------------------------------------------------------------

loc_14063B9EC:                          ; CODE XREF: MmCopyVirtualMemory+2EA↑j
                mov     [rsp+448h+var_2F8], r15
                mov     edx, r10d
                mov     ecx, edx
                and     ecx, 0FFFh
                add     rcx, 0FFFh
                add     rcx, r14
                shr     rcx, 0Ch
                add     cx, 6
                shl     cx, 3
                mov     [rsp+448h+var_2F0], cx
                mov     [rsp+448h+var_2EE], r15w
                mov     rax, r10
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rsp+448h+var_2D8], rax
                and     edx, 0FFFh
                mov     [rsp+448h+var_2CC], edx
                mov     [rsp+448h+var_2D0], r14d
                mov     ecx, [rsp+448h+var_400]
                jmp     loc_14063B5B0
; ---------------------------------------------------------------------------

loc_14063BA55:                          ; CODE XREF: MmCopyVirtualMemory+43D↑j
                mov     dword ptr [rsp+448h+var_420], 0C0000020h
                mov     dword ptr [rsp+448h+var_428], r15d
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                lea     rcx, [rsp+448h+var_2F8]
                call    MmMapLockedPagesSpecifyCache
                mov     rsi, rax
                test    rax, rax
                jnz     loc_14063B708
                jmp     loc_14080492E
; ---------------------------------------------------------------------------

loc_14063BA89:                          ; CODE XREF: MmCopyVirtualMemory+67D↑j
                lea     rcx, [rsp+448h+var_2F8]
                call    MmUnlockPages
                jmp     loc_14063B943
; ---------------------------------------------------------------------------

loc_14063BA9B:                          ; CODE XREF: MmCopyVirtualMemory+435↑j
                test    eax, eax
                jnz     short loc_14063BB1E
                sub     r12, rdi
                mov     rax, [rsp+448h+var_3C8]
                mov     [rax], r12
                mov     esi, 8000000Dh

loc_14063BAB2:                          ; CODE XREF: MmCopyVirtualMemory+2D5↑j
                                        ; MmCopyVirtualMemory:loc_14063B792↑j ...
                xor     edx, edx
                lea     rcx, [rsp+448h+var_328]
                call    sub_14021E230
                cmp     [rsp+448h+var_3A8], 0
                jz      short loc_14063BAD8
                xor     edx, edx
                mov     rcx, [rsp+448h+var_408]
                call    ExFreePoolWithTag

loc_14063BAD8:                          ; CODE XREF: MmCopyVirtualMemory+80A↑j
                mov     eax, esi
                jmp     loc_14063B9A1
; ---------------------------------------------------------------------------

loc_14063BADF:                          ; CODE XREF: MmCopyVirtualMemory+241↑j
                mov     r14d, 10000h
                cmp     r13, r14
                ja      short loc_14063BAED
                mov     r14, r13

loc_14063BAED:                          ; CODE XREF: MmCopyVirtualMemory+828↑j
                                        ; MmCopyVirtualMemory+1C9650↓j
                mov     r8d, 77526D4Dh
                mov     rdx, r14
                mov     ecx, 100h
                call    sub_140268720
                mov     [rsp+448h+var_408], rax
                test    rax, rax
                jz      loc_140804906
                mov     [rsp+448h+var_3A8], r14

loc_14063BB16:                          ; CODE XREF: MmCopyVirtualMemory+1C9669↓j
                cmp     rdi, r14
                jmp     loc_14063B9E1
; ---------------------------------------------------------------------------

loc_14063BB1E:                          ; CODE XREF: MmCopyVirtualMemory+7DD↑j
                                        ; MmCopyVirtualMemory+1C967C↓j
                and     ebx, 0FFFFFFFDh
                mov     [rsp+448h+var_410], ebx
                xor     edx, edx
                lea     rcx, [rsp+448h+var_328]
                call    sub_14021E230
                mov     r13, [rsp+448h+var_3B8]
                jmp     loc_14063B4D5
; } // starts at 14063B2C0
MmCopyVirtualMemory endp
