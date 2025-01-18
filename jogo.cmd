@echo off
setlocal enabledelayedexpansion
title JogoDoFatmaniha
mode 70,30
color 9

set "opsiton=1 2 3 4 "

set "CaminhoRaiz=%cd%"
set "CamninhoScripes= %CaminhoRaiz%\Scripes"

set "wait= timeout /t 3 /nobreak > nul"

:001
call Scripes\roto.cmd
echo OLAAAAA vc e... pera eu nunca vi vc aqui... 
echo.
%wait%
echo entao me diga seu nome o meu e... qual o meu nome
echo.
%wait%
echo HAA me alembrei julia, enfim diga sue nome?
echo.
color a
set /p input="@"
cls
call Scripes\roto.cmd
color 9
echo %input% ne sei sei  %username% eu sou a sua amiga 

echo vitual oq vc deseja fazer
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs
echo msgbox"textoQueAparecr",vbCritical,"titulo" > %temp%\erro.vbs

echo.
%wait%


for %%d in (!opsiton!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

:003
echo O que voce deseja fazer agora?
echo 1. conversar
echo 2. jogarJogoDaVelha
echo 3. jogoDaCobrilha
echo 4. creditos
color a
set /p input="Digite uma opcao: "
echo.
color 9
for %%d in (!opsiton!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

echo Opcao invalida! Tente novamente.
cls
goto :001



:1
cls
call Scripes\roto.cmd
echo Você escolheu conversar!
pause
mode 60,30
color a
goto :002

:2
cls
call Scripes\roto.cmd 
start Scripes\jogoDaVelha.cmd
goto :002

:3
cls 
call Scripes\roto.cmd
start Scripes\jogoDaCobra.cmd
pause
goto :002

:4
cls
call Scripes\roto.cmd
echo um jogo demo não sei se vou 
echo comtinuar nele pois vou fiza sem note
echo se quiser utliza o codigo pode blz
pause
goto :002




:002

pause
