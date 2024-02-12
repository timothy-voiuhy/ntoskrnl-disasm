RtlPrefetchMemoryNonTemporal proc near  ; CODE XREF: RtlPrefetchMemoryNonTemporal+B↓j
                                        ; DATA XREF: .pdata:00000001400E37CC↑o
                prefetchnta byte ptr [rcx]
                add     rcx, 40h ; '@'
                sub     rdx, 40h ; '@'
                ja      short RtlPrefetchMemoryNonTemporal
                retn
RtlPrefetchMemoryNonTemporal endp
