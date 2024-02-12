ExReleaseAutoExpandPushLockShared proc near
                                        ; CODE XREF: sub_14054E19C+11↓p
                                        ; DATA XREF: .rdata:000000014007963C↑o ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                push    rbx
                push    rbp
                sub     rsp, 38h
                xor     ebp, ebp
                mov     ebx, edx
                mov     [rsp+48h+arg_10], rbp
                test    edx, 0FFFFFFFCh
                jnz     short loc_140320622
                test    cl, 2
                setnz   r8b
                test    bl, 2
                setnz   al
                test    al, r8b
                jnz     short loc_140320622

loc_1403205BA:                          ; DATA XREF: .rdata:000000014007963C↑o
                                        ; .rdata:0000000140079650↑o ...
                mov     [rsp+48h+var_18], rdi
                mov     rdi, rcx
                and     rdi, 0FFFFFFFFFFFFFFFCh
                test    cl, 1
                jz      short loc_14032063B
                mov     eax, [rdi+8]

loc_1403205CE:                          ; DATA XREF: .rdata:0000000140079650↑o
                                        ; .rdata:0000000140079664↑o ...
                mov     [rsp+48h+arg_0], rsi
                prefetchw byte ptr [rdi+0Ch]
                mov     esi, [rdi+0Ch]
                cmp     esi, 80000000h
                jnb     loc_140320673

loc_1403205E6:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+E5↓j
                                        ; ExReleaseAutoExpandPushLockShared+102↓j ...
                mov     eax, 11h
                lock cmpxchg [rdi], rbp
                jnz     short loc_14032064D

loc_1403205F2:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+152↓j
                cmp     esi, 80000000h
                jnb     short loc_140320603
                add     esi, 100000h
                mov     [rdi+0Ch], esi

loc_140320603:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+68↑j
                                        ; ExReleaseAutoExpandPushLockShared+D7↓j ...
                mov     rsi, [rsp+48h+arg_0]

loc_140320608:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+BB↓j
                                        ; DATA XREF: .pdata:00000001400D55D0↑o ...
                test    bl, 2
                jnz     short loc_140320615
                mov     rcx, rdi
                call    sub_140243660

loc_140320615:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+7B↑j
                mov     rdi, [rsp+48h+var_18]
                add     rsp, 38h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_140320621:                         ; DATA XREF: .pdata:00000001400D55DC↑o
                                        ; .pdata:00000001400D55E8↑o
                align 2

loc_140320622:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+16↑j
                                        ; ExReleaseAutoExpandPushLockShared+28↑j
                mov     r8, rcx
                mov     [rsp+48h+var_28], rbp
                mov     ecx, 152h
                mov     rdx, rbx
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14032063B:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+39↑j
                                        ; DATA XREF: .pdata:00000001400D55E8↑o ...
                mov     eax, 11h
                lock cmpxchg [rdi], rbp
                jnz     short loc_140320697

loc_140320647:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+10F↓j
                mov     rdi, [rdi+8]
                jmp     short loc_140320608
; ---------------------------------------------------------------------------

loc_14032064D:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+60↑j
                                        ; DATA XREF: .pdata:00000001400D55F4↑o ...
                test    cs:dword_140CFB1F0, esi
                mov     rcx, rdi
                jz      short loc_1403206A1
                xor     edx, edx
                call    sub_140320710
                mov     eax, [rdi+0Ch]
                cmp     eax, 80000000h
                jnb     short loc_140320603
                add     eax, 100000h
                mov     [rdi+0Ch], eax
                jmp     short loc_140320603
; ---------------------------------------------------------------------------

loc_140320673:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+50↑j
                test    al, 3
                jnz     loc_1403205E6
                movzx   eax, si
                cmp     eax, cs:dword_140CFB0D4
                jnb     short loc_1403206E7

loc_140320686:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+163↓j
                                        ; ExReleaseAutoExpandPushLockShared+16B↓j
                shr     esi, 2
                and     esi, 3FF33FFFh
                mov     [rdi+0Ch], esi
                jmp     loc_1403205E6
; ---------------------------------------------------------------------------

loc_140320697:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+B5↑j
                                        ; DATA XREF: .pdata:00000001400D5600↑o ...
                mov     rcx, rdi
                call    ExfReleasePushLockShared
                jmp     short loc_140320647
; ---------------------------------------------------------------------------

loc_1403206A1:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+C6↑j
                                        ; DATA XREF: .pdata:00000001400D560C↑o ...
                lea     rdx, [rsp+48h+arg_10]
                call    sub_140320710
                cmp     [rsp+48h+arg_10], rbp
                jz      loc_140320603
                mov     esi, [rdi+0Ch]
                cmp     esi, 80000000h
                jnb     loc_140320603
                movzx   ecx, cs:byte_140CFB01A
                mov     rax, [rsp+48h+arg_10]
                shr     rax, cl
                mov     ecx, 1FFh
                cmp     rax, rcx
                cmova   rax, rcx
                add     esi, eax
                jmp     loc_1403205F2
; ---------------------------------------------------------------------------

loc_1403206E7:                          ; CODE XREF: ExReleaseAutoExpandPushLockShared+F4↑j
                mov     eax, esi
                and     eax, 0F0000h
                cmp     eax, 0F0000h
                jnb     short loc_140320686
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_140320686
                mov     rcx, rdi
                call    sub_140391084
                jmp     loc_1403205E6
ExReleaseAutoExpandPushLockShared endp
