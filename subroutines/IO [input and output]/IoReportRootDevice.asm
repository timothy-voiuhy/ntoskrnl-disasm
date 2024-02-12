IoReportRootDevice proc near            ; DATA XREF: .rdata:00000001400AA7DC↑o
                                        ; .pdata:000000014010E5F4↑o

var_3E0         = qword ptr -3E0h
var_3D8         = qword ptr -3D8h
var_3D0         = qword ptr -3D0h
var_3C8         = dword ptr -3C8h
var_3C0         = dword ptr -3C0h
var_3B8         = byte ptr -3B8h
var_3B0         = qword ptr -3B0h
var_3A8         = qword ptr -3A8h
var_3A0         = dword ptr -3A0h
var_398         = qword ptr -398h
var_390         = qword ptr -390h
var_388         = qword ptr -388h
var_380         = qword ptr -380h
var_378         = qword ptr -378h
var_370         = qword ptr -370h
var_360         = byte ptr -360h
var_1D0         = byte ptr -1D0h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014085FC8C SIZE 000001A2 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-308h]
                sub     rsp, 3E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+300h+var_30], rax
                mov     r14, [rcx+30h]
                lea     rax, [rbp+300h+var_360]
                xor     r12d, r12d
                mov     qword ptr [rsp+400h+var_3A0], rax
                lea     rax, [rbp+300h+var_1D0]
                mov     byte ptr [rsp+400h+var_3B0+1], r12b
                mov     r15, rcx
                mov     [rbp+300h+var_380], rax
                lea     rdx, aRoot_0    ; "ROOT\\"
                mov     [rsp+400h+var_388], 1920000h
                lea     rcx, [rsp+400h+var_3A8]
                mov     [rsp+400h+var_3A8], 1900000h
                mov     dword ptr [rsp+400h+var_398], r12d
                mov     edi, r12d
                mov     byte ptr [rsp+400h+var_3B0], r12b
                mov     esi, 190h
                mov     [rsp+400h+var_390], r12
                mov     [rbp+300h+var_370], r12
                call    RtlAppendUnicodeToString
                test    eax, eax
                js      loc_1407C6B91
                lea     rdx, [r14+18h]
                lea     rcx, [rsp+400h+var_3A8]
                call    RtlAppendUnicodeStringToString
                test    eax, eax
                js      loc_1407C6B91
                lea     eax, [rsi-2]
                cmp     word ptr [rsp+400h+var_3A8], ax
                ja      loc_14085FC8C
                lea     rdx, [rsp+400h+var_3A8]
                lea     rcx, [rsp+400h+var_388]
                call    RtlCopyUnicodeString
                lea     rcx, [rbp+300h+var_370]
                call    sub_1406C91CC
                lea     r13d, [r12+1]
                mov     ebx, eax
                test    eax, eax
                js      loc_1407C6B5B
                mov     ecx, r13d
                call    sub_14067926C
                mov     rax, gs:188h
                or      edi, 0FFFFFFFFh
                add     [rax+1E4h], di
                mov     dl, r13b
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceExclusiveLite
                lea     rdx, qword_1407D4A10
                lea     rcx, [rsp+400h+var_3A8]
                call    RtlAppendUnicodeToString
                mov     ebx, eax
                test    eax, eax
                js      loc_14085FE24
                movzx   r8d, word ptr [rsp+400h+var_3A8]
                lea     rcx, [rbp+300h+var_360]
                mov     eax, r8d
                mov     [rsp+400h+var_3D0], r12
                shr     rax, 1
                mov     edx, esi
                sub     rdx, r8
                xor     r9d, r9d
                shr     rdx, 1
                lea     r8, [rbp+300h+var_378]
                lea     rcx, [rcx+rax*2]
                lea     rax, a04u       ; "%04u"
                mov     [rbp+300h+var_378], rcx
                mov     [rsp+400h+var_3D8], rax
                mov     [rsp+400h+var_3E0], r12
                call    sub_14021D28C
                movzx   edx, word ptr [rsp+400h+var_3A8]
                mov     rcx, [rbp+300h+var_378]
                mov     eax, edx
                shr     rax, 1
                add     rax, rax
                sub     rcx, rax
                lea     rax, [rbp+300h+var_360]
                sub     rcx, rax
                sar     rcx, 1
                cmp     ecx, edi
                jz      loc_14085FC96
                lea     esi, [rcx+rcx]

loc_1407C6B0B:                          ; CODE XREF: IoReportRootDevice+99329↓j
                mov     rcx, cs:qword_140CF4378
                lea     rax, [rsp+400h+var_3B0]
                add     dx, si
                mov     dword ptr [rsp+400h+var_3D8], r12d
                mov     word ptr [rsp+400h+var_3A8], dx
                lea     r9, [rsp+400h+var_390]
                mov     rdx, qword ptr [rsp+400h+var_3A0]
                mov     r8d, 0F003Fh
                mov     [rsp+400h+var_3E0], rax
                call    sub_14073FF18
                mov     sil, byte ptr [rsp+400h+var_3B0]
                mov     ebx, eax
                mov     rdi, [rsp+400h+var_390]
                test    eax, eax
                js      loc_14085FDF7
                test    sil, sil
                jnz     loc_14085FC9E

loc_1407C6B5B:                          ; CODE XREF: IoReportRootDevice+E5↑j
                                        ; IoReportRootDevice+99482↓j ...
                lea     rcx, unk_140C44D40
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     ecx, r13d
                call    sub_140679140
                test    rdi, rdi
                jz      short loc_1407C6B81
                mov     rcx, rdi
                call    ZwClose

loc_1407C6B81:                          ; CODE XREF: IoReportRootDevice+207↑j
                mov     rcx, [rbp+300h+var_370]
                test    rcx, rcx
                jz      short loc_1407C6B8F
                call    sub_1406CDB1C

loc_1407C6B8F:                          ; CODE XREF: IoReportRootDevice+218↑j
                mov     eax, ebx

loc_1407C6B91:                          ; CODE XREF: IoReportRootDevice+9A↑j
                                        ; IoReportRootDevice+B0↑j ...
                mov     rcx, [rbp+300h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+400h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1407C6970
IoReportRootDevice endp
