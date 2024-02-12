RtlValidRelativeSecurityDescriptor proc near
                                        ; CODE XREF: sub_1405CCBD0+36↑p
                                        ; sub_1405CCD98+3E↑p ...

var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = qword ptr  20h
arg_8           = dword ptr  28h
arg_18          = dword ptr  38h

                mov     [rsp-18h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 30h
                xor     esi, esi
                mov     r10d, r8d
                mov     [rbp+arg_8], esi
                mov     edi, edx
                mov     [rbp+arg_18], esi
                mov     rbx, rcx
                mov     [rbp+var_10], esi
                mov     [rbp+var_C], esi
                cmp     edx, 14h
                jb      loc_140674853
                cmp     byte ptr [rcx], 1
                jnz     loc_140674853
                movzx   r11d, word ptr [rcx+2]
                test    r11w, r11w
                jns     loc_140674853
                mov     ecx, [rcx+4]
                lea     r8d, [rsi+0Ch]
                test    ecx, ecx
                jz      loc_140674857
                lea     r9, [rbp+arg_8]
                call    sub_14067489C
                test    al, al
                jz      loc_140674853
                cmp     byte ptr [rcx+rbx], 1
                jnz     loc_140674853
                movzx   ecx, byte ptr [rcx+rbx+1]
                cmp     cl, 0Fh
                ja      loc_140674853
                lea     eax, ds:8[rcx*4]
                cmp     [rbp+arg_8], eax
                jb      loc_140674853

loc_1406747CE:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+11B↓j
                mov     ecx, [rbx+8]
                test    ecx, ecx
                jz      short loc_14067484D
                lea     r9, [rbp+arg_18]
                mov     edx, edi
                call    sub_14067489C
                test    al, al
                jz      short loc_140674853
                cmp     byte ptr [rcx+rbx], 1
                jnz     short loc_140674853
                movzx   ecx, byte ptr [rcx+rbx+1]
                cmp     cl, 0Fh
                ja      short loc_140674853
                lea     eax, ds:8[rcx*4]
                cmp     [rbp+arg_18], eax
                jb      short loc_140674853

loc_140674800:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+111↓j
                test    r11b, 4
                jz      short loc_140674837
                mov     ecx, [rbx+10h]
                test    ecx, ecx
                jz      short loc_140674837
                lea     r9, [rbp+var_10]
                mov     r8d, 8
                mov     edx, edi
                call    sub_14067489C
                test    al, al
                jz      short loc_140674853
                add     rcx, rbx
                movzx   eax, word ptr [rcx+2]
                cmp     [rbp+var_10], eax
                jb      short loc_140674853
                call    RtlValidAcl
                test    al, al
                jz      short loc_140674853

loc_140674837:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+C4↑j
                                        ; RtlValidRelativeSecurityDescriptor+CB↑j
                test    byte ptr [rbx+2], 10h
                jnz     short loc_140674863

loc_14067483D:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+128↓j
                                        ; RtlValidRelativeSecurityDescriptor+152↓j
                mov     al, 1

loc_14067483F:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+115↓j
                mov     rbx, [rsp+30h+arg_0]
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14067484D:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+93↑j
                test    r10b, 2
                jz      short loc_140674800

loc_140674853:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+28↑j
                                        ; RtlValidRelativeSecurityDescriptor+31↑j ...
                xor     al, al
                jmp     short loc_14067483F
; ---------------------------------------------------------------------------

loc_140674857:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+4F↑j
                test    r10b, 1
                jz      loc_1406747CE
                jmp     short loc_140674853
; ---------------------------------------------------------------------------

loc_140674863:                          ; CODE XREF: RtlValidRelativeSecurityDescriptor+FB↑j
                mov     ecx, [rbx+0Ch]
                test    ecx, ecx
                jz      short loc_14067483D
                lea     r9, [rbp+var_C]
                mov     r8d, 8
                mov     edx, edi
                call    sub_14067489C
                test    al, al
                jz      short loc_140674853
                add     rcx, rbx
                movzx   edx, word ptr [rcx+2]
                cmp     [rbp+var_C], edx
                jb      short loc_140674853
                call    RtlValidAcl
                test    al, al
                jnz     short loc_14067483D
                jmp     short loc_140674853
RtlValidRelativeSecurityDescriptor endp
