@echo off
color e
SETLOCAL ENABLEDELAYEDEXPANSION
ECHO.
echo                        ************************************
Echo                         JOGO DA VELHA FEITO POR E4brab6
echo                        ************************************
echo.
echo 1 - Computador Facil.
echo 2 - Computador moderado.
echo 3 - Computador dificil.
echo 4 - Computador impossivel.
echo 5 - Sair.
echo.
set/p OPT=Escolha a dificuldade:
:C
FOR /L %%A IN (1,1,9) DO SET NUM%%A=
SET GP=
SET CONT=
SET JOG=

set "CaminhoRaiz=%cd%"

if "%OPT%"=="5" EXIT
FOR /L %%A IN (1,1,54) DO SET A%%A=       
FOR /L %%A IN (3,6,51) DO (
SET /A CONT=CONT+1
SET A%%A=      !CONT!
)
:1
CLS
echo.
echo  !A1!º!A7!º!A13!
echo  !A2!º!A8!º!A14!
echo  !A3!º!A9!º!A15!
echo  !A4!º!A10!º!A16!
echo  !A5!º!A11!º!A17!
echo  !A6!º!A12!º!A18!
echo  ÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍ
echo  !A19!º!A25!º!A31!
echo  !A20!º!A26!º!A32!
echo  !A21!º!A27!º!A33!
echo  !A22!º!A28!º!A34!
echo  !A23!º!A29!º!A35!
echo  !A24!º!A30!º!A36!
echo  ÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍÍÍ
echo  !A37!º!A43!º!A49!
echo  !A38!º!A44!º!A50!
echo  !A39!º!A45!º!A51!
echo  !A40!º!A46!º!A52!
echo  !A41!º!A47!º!A53!
echo  !A42!º!A48!º!A54!
echo.
IF "%GP%"=="1" GOTO GANHOU
IF "%GP%"=="2" GOTO PERDEU
IF "%JOG%"=="9" GOTO VELHA
SET VOLTA=2&GOTO GP
:2
SET/P NUM=Em qual casa voce quer jogar(1-9):
IF %NUM% LEQ 0 GOTO 1
IF %NUM% GEQ 10 GOTO 1
IF DEFINED NUM%NUM% GOTO 1
SET NUM%NUM%=1
SET /A B=NUM*6-5
SET /A C=NUM*6-4
SET /A D=NUM*6-3
SET /A E=NUM*6-2
SET /A F=NUM*6-1
SET /A G=NUM*6
SET A%B%=    ÛÛÛÛ
SET A%C%=   Û    Û
SET A%D%=  Û      Û
SET A%E%=  Û      Û
SET A%F%=   Û    Û
SET A%G%=    ÛÛÛÛ
SET /A JOG=JOG+1
SET VOLTA=3&GOTO GP
:3
SET NUM=%RANDOM:~-1%
IF "%NUM%"=="0" GOTO 3
IF DEFINED NUM%NUM% GOTO 3
IF "%OPT%"=="4" (
IF NOT DEFINED NUM2 IF "%NUM1%%NUM9%"=="11" SET NUM=2
IF NOT DEFINED NUM4 IF "%NUM1%%NUM9%"=="11" SET NUM=4
IF NOT DEFINED NUM6 IF "%NUM1%%NUM9%"=="11" SET NUM=6
IF NOT DEFINED NUM8 IF "%NUM1%%NUM9%"=="11" SET NUM=8
IF NOT DEFINED NUM2 IF "%NUM3%%NUM7%"=="11" SET NUM=2
IF NOT DEFINED NUM4 IF "%NUM3%%NUM7%"=="11" SET NUM=4
IF NOT DEFINED NUM6 IF "%NUM3%%NUM7%"=="11" SET NUM=6
IF NOT DEFINED NUM8 IF "%NUM3%%NUM7%"=="11" SET NUM=8
IF NOT DEFINED NUM1 IF "%NUM2%%NUM4%"=="11" SET NUM=1
IF NOT DEFINED NUM3 IF "%NUM2%%NUM6%"=="11" SET NUM=3
IF NOT DEFINED NUM7 IF "%NUM4%%NUM8%"=="11" SET NUM=7
IF NOT DEFINED NUM9 IF "%NUM6%%NUM8%"=="11" SET NUM=9
IF NOT DEFINED NUM1 IF "%NUM2%%NUM8%"=="11" SET NUM=1
IF NOT DEFINED NUM3 IF "%NUM2%%NUM8%"=="11" SET NUM=3
IF NOT DEFINED NUM7 IF "%NUM2%%NUM8%"=="11" SET NUM=7
IF NOT DEFINED NUM9 IF "%NUM2%%NUM8%"=="11" SET NUM=9
IF NOT DEFINED NUM1 IF "%NUM4%%NUM6%"=="11" SET NUM=1
IF NOT DEFINED NUM3 IF "%NUM4%%NUM6%"=="11" SET NUM=3
IF NOT DEFINED NUM7 IF "%NUM4%%NUM6%"=="11" SET NUM=7
IF NOT DEFINED NUM9 IF "%NUM4%%NUM6%"=="11" SET NUM=9
IF NOT DEFINED NUM7 IF "%NUM1%%NUM8%"=="11" SET NUM=7
IF NOT DEFINED NUM3 IF "%NUM1%%NUM6%"=="11" SET NUM=3
IF NOT DEFINED NUM9 IF "%NUM3%%NUM8%"=="11" SET NUM=9
IF NOT DEFINED NUM1 IF "%NUM3%%NUM4%"=="11" SET NUM=1
IF NOT DEFINED NUM1 IF "%NUM2%%NUM7%"=="11" SET NUM=1
IF NOT DEFINED NUM9 IF "%NUM6%%NUM7%"=="11" SET NUM=9
IF NOT DEFINED NUM3 IF "%NUM2%%NUM9%"=="11" SET NUM=3
IF NOT DEFINED NUM7 IF "%NUM4%%NUM9%"=="11" SET NUM=7
GOTO PC4
)
IF "%OPT%"=="3" (
:PC4
IF NOT DEFINED NUM5 SET NUM=5
IF NOT DEFINED NUM1 IF "%NUM5%"=="1" SET NUM=1
IF NOT DEFINED NUM3 IF "%NUM5%"=="1" SET NUM=3
IF NOT DEFINED NUM7 IF "%NUM5%"=="1" SET NUM=7
IF NOT DEFINED NUM9 IF "%NUM5%"=="1" SET NUM=9
GOTO PC3
)
IF "%OPT%"=="2" (
:PC3
IF NOT DEFINED NUM3 IF "%NUM1%%NUM2%"=="11" SET NUM=3
IF NOT DEFINED NUM2 IF "%NUM1%%NUM3%"=="11" SET NUM=2
IF NOT DEFINED NUM1 IF "%NUM2%%NUM3%"=="11" SET NUM=1
IF NOT DEFINED NUM6 IF "%NUM4%%NUM5%"=="11" SET NUM=6
IF NOT DEFINED NUM5 IF "%NUM4%%NUM6%"=="11" SET NUM=5
IF NOT DEFINED NUM4 IF "%NUM5%%NUM6%"=="11" SET NUM=4
IF NOT DEFINED NUM9 IF "%NUM7%%NUM8%"=="11" SET NUM=9
IF NOT DEFINED NUM8 IF "%NUM7%%NUM9%"=="11" SET NUM=8
IF NOT DEFINED NUM7 IF "%NUM8%%NUM9%"=="11" SET NUM=7
IF NOT DEFINED NUM7 IF "%NUM1%%NUM4%"=="11" SET NUM=7
IF NOT DEFINED NUM4 IF "%NUM1%%NUM7%"=="11" SET NUM=4
IF NOT DEFINED NUM1 IF "%NUM4%%NUM7%"=="11" SET NUM=1
IF NOT DEFINED NUM8 IF "%NUM2%%NUM5%"=="11" SET NUM=8
IF NOT DEFINED NUM5 IF "%NUM2%%NUM8%"=="11" SET NUM=5
IF NOT DEFINED NUM2 IF "%NUM5%%NUM8%"=="11" SET NUM=2
IF NOT DEFINED NUM9 IF "%NUM3%%NUM6%"=="11" SET NUM=9
IF NOT DEFINED NUM6 IF "%NUM3%%NUM9%"=="11" SET NUM=6
IF NOT DEFINED NUM3 IF "%NUM6%%NUM9%"=="11" SET NUM=3
IF NOT DEFINED NUM9 IF "%NUM1%%NUM5%"=="11" SET NUM=9
IF NOT DEFINED NUM5 IF "%NUM1%%NUM9%"=="11" SET NUM=5
IF NOT DEFINED NUM1 IF "%NUM5%%NUM9%"=="11" SET NUM=1
IF NOT DEFINED NUM7 IF "%NUM3%%NUM5%"=="11" SET NUM=7
IF NOT DEFINED NUM5 IF "%NUM3%%NUM7%"=="11" SET NUM=5
IF NOT DEFINED NUM3 IF "%NUM5%%NUM7%"=="11" SET NUM=3
IF NOT DEFINED NUM3 IF "%NUM1%%NUM2%"=="22" SET NUM=3
IF NOT DEFINED NUM2 IF "%NUM1%%NUM3%"=="22" SET NUM=2
IF NOT DEFINED NUM1 IF "%NUM2%%NUM3%"=="22" SET NUM=1
IF NOT DEFINED NUM6 IF "%NUM4%%NUM5%"=="22" SET NUM=6
IF NOT DEFINED NUM5 IF "%NUM4%%NUM6%"=="22" SET NUM=5
IF NOT DEFINED NUM4 IF "%NUM5%%NUM6%"=="22" SET NUM=4
IF NOT DEFINED NUM9 IF "%NUM7%%NUM8%"=="22" SET NUM=9
IF NOT DEFINED NUM8 IF "%NUM7%%NUM9%"=="22" SET NUM=8
IF NOT DEFINED NUM7 IF "%NUM8%%NUM9%"=="22" SET NUM=7
IF NOT DEFINED NUM7 IF "%NUM1%%NUM4%"=="22" SET NUM=7
IF NOT DEFINED NUM4 IF "%NUM1%%NUM7%"=="22" SET NUM=4
IF NOT DEFINED NUM1 IF "%NUM4%%NUM7%"=="22" SET NUM=1
IF NOT DEFINED NUM8 IF "%NUM2%%NUM5%"=="22" SET NUM=8
IF NOT DEFINED NUM5 IF "%NUM2%%NUM8%"=="22" SET NUM=5
IF NOT DEFINED NUM2 IF "%NUM5%%NUM8%"=="22" SET NUM=2
IF NOT DEFINED NUM9 IF "%NUM3%%NUM6%"=="22" SET NUM=9
IF NOT DEFINED NUM6 IF "%NUM3%%NUM9%"=="22" SET NUM=6
IF NOT DEFINED NUM3 IF "%NUM6%%NUM9%"=="22" SET NUM=3
IF NOT DEFINED NUM9 IF "%NUM1%%NUM5%"=="22" SET NUM=9
IF NOT DEFINED NUM5 IF "%NUM1%%NUM9%"=="22" SET NUM=5
IF NOT DEFINED NUM1 IF "%NUM5%%NUM9%"=="22" SET NUM=1
IF NOT DEFINED NUM7 IF "%NUM3%%NUM5%"=="22" SET NUM=7
IF NOT DEFINED NUM5 IF "%NUM3%%NUM7%"=="22" SET NUM=5
IF NOT DEFINED NUM3 IF "%NUM5%%NUM7%"=="22" SET NUM=3
)
SET NUM%NUM%=2
SET /A B=NUM*6-5
SET /A C=NUM*6-4
SET /A D=NUM*6-3
SET /A E=NUM*6-2
SET /A F=NUM*6-1
SET /A G=NUM*6
SET A%B%=   Û    Û
SET A%C%=    Û  Û
SET A%D%=     ÛÛ
SET A%E%=     ÛÛ
SET A%F%=    Û  Û
SET A%G%=   Û    Û
SET /A JOG=JOG+1
SET VOLTA=1&GOTO GP
:GP
IF "%NUM1%%NUM2%%NUM3%"=="111" SET GP=1
IF "%NUM4%%NUM5%%NUM6%"=="111" SET GP=1
IF "%NUM7%%NUM8%%NUM9%"=="111" SET GP=1
IF "%NUM1%%NUM4%%NUM7%"=="111" SET GP=1
IF "%NUM2%%NUM5%%NUM8%"=="111" SET GP=1
IF "%NUM3%%NUM6%%NUM9%"=="111" SET GP=1
IF "%NUM1%%NUM5%%NUM9%"=="111" SET GP=1
IF "%NUM3%%NUM5%%NUM7%"=="111" SET GP=1
IF "%NUM1%%NUM2%%NUM3%"=="222" SET GP=2
IF "%NUM4%%NUM5%%NUM6%"=="222" SET GP=2
IF "%NUM7%%NUM8%%NUM9%"=="222" SET GP=2
IF "%NUM1%%NUM4%%NUM7%"=="222" SET GP=2
IF "%NUM2%%NUM5%%NUM8%"=="222" SET GP=2
IF "%NUM3%%NUM6%%NUM9%"=="222" SET GP=2
IF "%NUM1%%NUM5%%NUM9%"=="222" SET GP=2
IF "%NUM3%%NUM5%%NUM7%"=="222" SET GP=2
IF DEFINED GP GOTO 1
IF "%JOG%"=="9" GOTO 1
GOTO %VOLTA%
:GANHOU
ECHO PARABENS, VOCE GANHOU.
SET /P J=Deseja jogar novamente? (S/N):
IF "%J%"=="S" GOTO C
IF "%J%"=="N" start EXIT
IF "%J%"=="s" GOTO C
IF "%J%"=="n" EXIT
EXIT