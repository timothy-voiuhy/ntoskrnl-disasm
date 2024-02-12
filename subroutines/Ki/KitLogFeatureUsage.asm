KitLogFeatureUsage proc near            ; DATA XREF: .pdata:00000001400FA1DC↑o

var_290         = qword ptr -290h
var_288         = dword ptr -288h
var_280         = qword ptr -280h
var_278         = word ptr -278h
var_270         = xmmword ptr -270h
var_260         = qword ptr -260h
var_250         = dword ptr -250h
var_248         = qword ptr -248h
var_240         = dword ptr -240h
var_238         = dword ptr -238h
var_234         = dword ptr -234h
var_230         = qword ptr -230h
var_228         = dword ptr -228h
var_224         = dword ptr -224h
var_220         = qword ptr -220h
var_218         = dword ptr -218h
var_214         = dword ptr -214h
var_210         = byte ptr -210h
var_10          = qword ptr -10h
var_s0          = byte ptr  0

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                lea     rbp, [rax-1B8h]
                sub     rsp, 2B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1B0h+var_10], rax
                mov     rsi, rcx
                mov     ebx, r8d
                mov     rcx, cs:qword_140CF4508
                xorps   xmm0, xmm0
                mov     dword ptr [rsp+2B0h+var_270+4], ebx
                mov     rdi, rdx
                movups  [rsp+2B0h+var_270+8], xmm0
                test    rcx, rcx
                jz      loc_1405B9A46
                lea     rdx, qword_14002F5B8
                call    EtwEventEnabled
                test    al, al
                jz      loc_1405B9A46
                test    ebx, ebx
                jz      short loc_1405B9953
                sub     ebx, 1
                jz      short loc_1405B994F
                cmp     ebx, 1
                jnz     short loc_1405B9999
                mov     rdi, [rdi+8]
                test    rdi, rdi
                jz      short loc_1405B9999

loc_1405B994F:                          ; CODE XREF: KitLogFeatureUsage+6F↑j
                mov     rdi, [rdi+18h]

loc_1405B9953:                          ; CODE XREF: KitLogFeatureUsage+6A↑j
                test    rdi, rdi
                jz      short loc_1405B9999
                mov     ebx, 1FEh
                lea     rcx, [rbp+1B0h+var_210]
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                lea     rax, [rbp+1B0h+var_210]
                mov     word ptr [rsp+2B0h+var_270+0Ah], bx
                mov     [rsp+2B0h+var_260], rax
                mov     rax, cr8
                lea     rdx, [rsp+2B0h+var_270+8]
                mov     rcx, rdi
                cmp     al, 1
                ja      short loc_1405B9990
                call    RtlPcToFilePath
                jmp     short loc_1405B9995
; ---------------------------------------------------------------------------

loc_1405B9990:                          ; CODE XREF: KitLogFeatureUsage+B7↑j
                call    RtlPcToFileName

loc_1405B9995:                          ; CODE XREF: KitLogFeatureUsage+BE↑j
                test    eax, eax
                jns     short loc_1405B99AE

loc_1405B9999:                          ; CODE XREF: KitLogFeatureUsage+74↑j
                                        ; KitLogFeatureUsage+7D↑j ...
                movups  xmm0, xmmword ptr cs:qword_140009878
                mov     dword ptr [rsp+2B0h+var_270+4], 3
                movdqu  [rsp+2B0h+var_270+8], xmm0

loc_1405B99AE:                          ; CODE XREF: KitLogFeatureUsage+C7↑j
                and     dword ptr [rsp+2B0h+var_248+4], 0
                lea     rax, [rsp+2B0h+var_270+4]
                and     [rsp+2B0h+var_234], 0
                lea     rdx, qword_14002F5B8
                and     [rbp+1B0h+var_224], 0
                mov     r8d, 4
                and     [rbp+1B0h+var_214], 0
                xor     r9d, r9d
                mov     rcx, cs:qword_140CF4508
                mov     qword ptr [rsp+2B0h+var_240], rax
                movzx   eax, word ptr [rsp+2B0h+var_270+8]
                shr     ax, 1
                mov     word ptr [rsp+2B0h+var_270], ax
                lea     rax, [rsp+2B0h+var_270]
                mov     [rbp+1B0h+var_230], rax
                mov     rax, [rsp+2B0h+var_260]
                mov     [rbp+1B0h+var_220], rax
                movzx   eax, word ptr [rsp+2B0h+var_270+8]
                mov     [rbp+1B0h+var_218], eax
                lea     rax, [rsp+2B0h+var_250]
                mov     qword ptr [rsp+2B0h+var_278], rax
                mov     dword ptr [rsp+2B0h+var_280], r8d
                and     qword ptr [rsp+2B0h+var_288], 0
                and     [rsp+2B0h+var_290], 0
                mov     [rsp+2B0h+var_238], r8d
                xor     r8d, r8d
                mov     qword ptr [rsp+2B0h+var_250], rsi
                mov     dword ptr [rsp+2B0h+var_248], 10h
                mov     [rbp+1B0h+var_228], 2
                call    EtwWriteEx
                jmp     short loc_1405B9A48
; ---------------------------------------------------------------------------

loc_1405B9A46:                          ; CODE XREF: KitLogFeatureUsage+4E↑j
                                        ; KitLogFeatureUsage+62↑j
                xor     eax, eax

loc_1405B9A48:                          ; CODE XREF: KitLogFeatureUsage+174↑j
                mov     rcx, [rbp+1B0h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2B0h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405B98D0
KitLogFeatureUsage endp
