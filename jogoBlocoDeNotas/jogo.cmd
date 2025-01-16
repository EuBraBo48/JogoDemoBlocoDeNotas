@echo off
setlocal enabledelayedexpansion
title JogoDoFatmaniha
mode 60,30
color 9

set "opsiton=1 2 3 4 Y N"

:001
echo.
echo Ola eu sou a ssua Namorada dos sonhos antes de comeca a bricadeira queria faze algumas perquntas
echo.
set /p input="*[Y,N]"
echo.

for %%d in (!opsiton!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

echo Opcao invalida! Tente novamente.
goto :001

:Y
color a
echo OooOoo que bom, e so umas pergutas
echo Primeiro QUAL NOME?

color 9
set /p input="*"
echo %input%  %input%  %input%.... Que nome fabuloso!
goto :003
pause

:N 
echo nao
goto :002
pause

:003
echo O que voce deseja fazer agora?
echo 1. conversar
echo 2. jogar
echo 3. andar 
echo 4. ou nada

set /p input="Digite uma opção: "
echo.

for %%d in (!opsiton!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

echo Opcao invalida! Tente novamente.
goto :001



:1
echo Você escolheu conversar!
pause
mode 60,30
color a
goto :002

:2
echo Você escolheu jogar!
pause
goto :002

:3
echo Você escolheu andar!
pause
goto :002

:4
echo Você escolheu não fazer nada!
pause
goto :002




:002

pause
