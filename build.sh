#!/bin/bash
export BIN=t1demo
cd bin
psp-fixup-imports $BIN
mksfo 'nano demo' PARAM.SFO
psp-strip $BIN -o $BIN.elf
pack-pbp EBOOT.PBP PARAM.SFO NULL NULL NULL NULL NULL $BIN.elf NULL
cp EBOOT.PBP /mnt/win/nano
cp PARAM.SFO /mnt/win/nano
cp ftdemo.txt /mnt/win/nano
cd ..
