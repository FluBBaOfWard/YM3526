# YM3526
YM3526 sound chip emulator shell for ARM32

First alloc chip struct, call init then set in/out function pointers.
Call ym3526Mixer with chip struct, length and destination.
Produces 16bit nono.
