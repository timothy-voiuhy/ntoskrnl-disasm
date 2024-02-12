RtlCheckTokenCapability proc near       ; CODE XREF: RtlCapabilityCheck+324↓p
                                        ; DATA XREF: .pdata:00000001400F7BCC↑o

var_2E0         = qword ptr -2E0h
var_2D8         = qword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = byte ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A0         = dword ptr -2A0h
var_29C         = dword ptr -29Ch
var_298         = dword ptr -298h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = xmmword ptr -270h
var_260         = xmmword ptr -260h
var_250         = xmmword ptr -250h
var_240         = xmmword ptr -240h
var_230         = xmmword ptr -230h
var_220         = xmmword ptr -220h
var_210         = xmmword ptr -210h
var_200         = qword ptr -200h
var_1F0         = xmmword ptr -1F0h
var_190         = qword ptr -190h
var_188         = dword ptr -188h
var_180         = byte ptr -180h
var_E0          = byte ptr -0E0h
var_A0          = byte ptr -0A0h
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
                lea     rbp, [rsp-1D0h]
                sub     rsp, 2D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+200h+var_40], rax
                mov     r14, r8
                mov     r15, rdx
                mov     rdi, rcx
                xor     r12d, r12d
                xor     edx, edx
                mov     [rsp+300h+var_298], r12d
                mov     r8d, 0A0h
                mov     [rsp+300h+var_2A0], r12d
                lea     rcx, [rbp+200h+var_180]
                call    memset
                xorps   xmm0, xmm0
                mov     [rsp+300h+var_290], r12
                xor     eax, eax
                mov     [rbp+200h+var_278], r12
                xor     edx, edx
                mov     [rbp+200h+var_190], rax
                lea     r8d, [r12+58h]
                mov     [rbp+200h+var_188], eax
                lea     rcx, [rbp+200h+var_1F0]
                mov     [rbp+200h+var_200], rax
                movups  [rbp+200h+var_250], xmm0
                movups  [rbp+200h+var_240], xmm0
                movups  [rbp+200h+var_230], xmm0
                movups  [rbp+200h+var_220], xmm0
                movups  [rbp+200h+var_210], xmm0
                call    memset
                xorps   xmm0, xmm0
                mov     [rsp+300h+var_29C], r12d
                lea     rax, [rbp+200h+var_A0]
                mov     [r14], r12b
                mov     rcx, r15
                mov     [rsp+300h+var_288], rax
                movups  [rbp+200h+var_270], xmm0
                mov     sil, r12b
                movups  [rbp+200h+var_260], xmm0
                call    sub_140679F70
                test    al, al
                jnz     short loc_140586B8F
                mov     ebx, 0C000000Dh
                jmp     loc_140586DF9
; ---------------------------------------------------------------------------

loc_140586B8F:                          ; CODE XREF: RtlCheckTokenCapability+C3↑j
                mov     r13d, 2
                test    rdi, rdi
                jz      loc_140586C2A
                lea     rax, [rbp+200h+var_190]
                mov     dword ptr [rbp+200h+var_250], 30h ; '0'
                mov     qword ptr [rbp+200h+var_230+8], rax
                lea     r8, [rbp+200h+var_250]
                lea     rax, [rsp+300h+var_290]
                mov     qword ptr [rbp+200h+var_250+8], r12
                mov     [rsp+300h+var_2D8], rax
                lea     edx, [r13+6]
                xor     r9d, r9d
                mov     dword ptr [rsp+300h+var_2E0], r13d
                mov     rcx, rdi
                mov     dword ptr [rbp+200h+var_240+8], 200h
                mov     qword ptr [rbp+200h+var_240], r12
                mov     qword ptr [rbp+200h+var_230], r12
                mov     dword ptr [rbp+200h+var_190], 0Ch
                mov     dword ptr [rbp+200h+var_190+4], r13d
                mov     word ptr [rbp+200h+var_188], 1
                call    ZwDuplicateToken
                mov     ebx, eax
                test    eax, eax
                js      loc_140586DF9
                mov     rcx, [rsp+300h+var_290]
                lea     rax, [rsp+300h+var_29C]
                lea     r9d, [r13+56h]
                mov     [rsp+300h+var_2E0], rax
                lea     r8, [rbp+200h+var_1F0]
                mov     [rsp+300h+var_29C], 58h ; 'X'
                lea     edx, [r13-1]
                mov     rdi, r12
                call    ZwQueryInformationToken
                jmp     short loc_140586C61
; ---------------------------------------------------------------------------

loc_140586C2A:                          ; CODE XREF: RtlCheckTokenCapability+D8↑j
                lea     rcx, [rbp+200h+var_270]
                call    SeCaptureSubjectContext
                mov     rax, qword ptr [rbp+200h+var_270]
                lea     r8, [rsp+300h+var_288]
                mov     rcx, qword ptr [rbp+200h+var_260]
                test    rax, rax
                mov     edx, 1
                mov     sil, 1
                cmovnz  rcx, rax
                call    SeQueryInformationToken
                mov     rax, [rsp+300h+var_288]
                movups  xmm0, xmmword ptr [rax]
                movdqu  [rbp+200h+var_1F0], xmm0

loc_140586C61:                          ; CODE XREF: RtlCheckTokenCapability+168↑j
                mov     edx, 1
                lea     rcx, [rbp+200h+var_220]
                call    RtlCreateSecurityDescriptor
                mov     rdx, qword ptr [rbp+200h+var_1F0]
                lea     rcx, [rbp+200h+var_220]
                xor     r8d, r8d
                call    RtlSetOwnerSecurityDescriptor
                mov     rdx, qword ptr [rbp+200h+var_1F0]
                lea     rcx, [rbp+200h+var_220]
                xor     r8d, r8d
                call    RtlSetGroupSecurityDescriptor
                mov     r8d, r13d
                lea     rcx, [rbp+200h+var_180]
                mov     edx, 0A0h
                call    RtlCreateAcl
                mov     r9, qword ptr [rbp+200h+var_1F0]
                lea     rcx, [rbp+200h+var_180]
                mov     r8d, 10001h
                mov     edx, r13d
                call    RtlAddAccessAllowedAce
                mov     r9, r15
                lea     rcx, [rbp+200h+var_180]
                mov     r8d, 10001h
                mov     edx, r13d
                call    RtlAddAccessAllowedAce
                xor     r9d, r9d
                lea     r8, [rbp+200h+var_180]
                mov     dl, 1
                lea     rcx, [rbp+200h+var_220]
                call    RtlSetDaclSecurityDescriptor
                lea     rax, [rbp+200h+var_E0]
                mov     [rbp+200h+var_278], rax
                test    sil, sil
                jnz     short loc_140586D50
                mov     rax, gs:188h
                xor     r9d, r9d
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+300h+var_2D8], r12
                mov     [rbp+200h+var_280], r12
                mov     rcx, [rax+0B8h]
                lea     edx, [r9+8]
                mov     rax, [rcx+440h]
                mov     rcx, [rsp+300h+var_290]
                mov     qword ptr [rbp+200h+var_260+8], rax
                lea     rax, [rbp+200h+var_280]
                mov     [rsp+300h+var_2E0], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                mov     rax, [rbp+200h+var_280]
                mov     qword ptr [rbp+200h+var_260], rax
                test    ebx, ebx
                js      loc_140586DFE

loc_140586D50:                          ; CODE XREF: RtlCheckTokenCapability+237↑j
                mov     rax, gs:188h
                lea     r8, [rbp+200h+var_270]
                xor     r9d, r9d
                xor     edx, edx
                mov     cl, [rax+232h]
                lea     rax, [rsp+300h+var_2A0]
                mov     [rsp+300h+var_2B0], rax
                lea     rax, [rsp+300h+var_298]
                mov     [rsp+300h+var_2B8], rax
                lea     rax, qword_140010668
                mov     [rsp+300h+var_2C0], cl
                lea     rcx, [rbp+200h+var_220]
                mov     [rsp+300h+var_2C8], rax
                lea     rax, [rbp+200h+var_278]
                mov     [rsp+300h+var_2D0], rax
                mov     dword ptr [rsp+300h+var_2D8], r12d
                mov     dword ptr [rsp+300h+var_2E0], 10001h
                call    SeAccessCheckWithHint
                mov     ecx, [rsp+300h+var_2A0]
                test    al, al
                mov     ebx, ecx
                mov     edx, 0C0000022h
                cmovz   ebx, edx
                test    sil, sil
                jnz     short loc_140586DD2
                mov     rcx, qword ptr [rbp+200h+var_260]
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag
                mov     ecx, [rsp+300h+var_2A0]

loc_140586DD2:                          ; CODE XREF: RtlCheckTokenCapability+2FE↑j
                test    ebx, ebx
                js      short loc_140586DEB
                test    ecx, ecx
                jnz     short loc_140586DE8
                cmp     [rsp+300h+var_298], 10001h
                jnz     short loc_140586DE8
                mov     byte ptr [r14], 1

loc_140586DE8:                          ; CODE XREF: RtlCheckTokenCapability+318↑j
                                        ; RtlCheckTokenCapability+322↑j
                mov     ebx, r12d

loc_140586DEB:                          ; CODE XREF: RtlCheckTokenCapability+314↑j
                test    sil, sil
                jz      short loc_140586DFE
                lea     rcx, [rbp+200h+var_270]
                call    SeReleaseSubjectContext

loc_140586DF9:                          ; CODE XREF: RtlCheckTokenCapability+CA↑j
                                        ; RtlCheckTokenCapability+137↑j
                test    rdi, rdi
                jnz     short loc_140586E0D

loc_140586DFE:                          ; CODE XREF: RtlCheckTokenCapability+28A↑j
                                        ; RtlCheckTokenCapability+32E↑j
                mov     rcx, [rsp+300h+var_290]
                test    rcx, rcx
                jz      short loc_140586E0D
                call    ZwClose

loc_140586E0D:                          ; CODE XREF: RtlCheckTokenCapability+33C↑j
                                        ; RtlCheckTokenCapability+346↑j
                mov     eax, ebx
                mov     rcx, [rbp+200h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+300h+arg_18]
                add     rsp, 2D0h
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
; } // starts at 140586AC0
RtlCheckTokenCapability endp
