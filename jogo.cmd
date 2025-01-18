@echo off
setlocal enabledelayedexpansion
title JogoDoFatmaniha
mode 70,40
color 9

set "opsiton=1 2 3 4"

set "CaminhoRaiz=%cd%"
set "CamninhoScripes=%CaminhoRaiz%\Scripes"

set "wait=timeout /t 3 /nobreak > nul"

:001
call Scripes\roto.cmd
echo OLAAAAA! Voce e... pera, nunca vi voce aqui... 
echo.
%wait%
echo Entao, me diga seu nome! O meu e... qual o meu nome?
echo.
%wait%
echo Ah, me lembrei! Julia! Enfim, diga seu nome.
echo.
color a
set /p input="Digite seu nome: "
cls
call Scripes\roto.cmd
color 9
echo %input%, ne sei... %username% nao sei pq voce nao fala a verdade mds

echo Virtual, o que voce deseja fazer?
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox
echo msgbox "SEU NOME NAO E ESSE E SIM %username%", vbCritical, "SEU MENTIROSO" > %temp%\erro.vbs
cscript //nologo %temp%\erro.vbs  // Executa o script VBS para mostrar a msgbox


echo.
%wait%

for %%d in (!opsiton!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

:003
echo O que voce deseja fazer agora?
echo 1. Conversar
echo 2. Jogar Jogo da Velha
echo 3. Jogar Jogo da Cobrinha
echo 4. Creditos
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
echo Voce escolheu conversar!
pause
mode 60,30
color a
goto :conversar

:conversar
cls
echo Ola, %input%! Como voce esta?
echo.
echo 1. Estou bem, e voce?
echo 2. Na verdade, estou um pouco triste.
echo 3. Vamos conversar sobre algo interessante.
echo 4. Eu prefiro ficar em silencio.
color a
set /p resposta="Escolha uma opcao: "

if "%resposta%"=="1" goto :bem
if "%resposta%"=="2" goto :triste
if "%resposta%"=="3" goto :interessante
if "%resposta%"=="4" goto :silencio

echo Opcao invalida! Tente novamente.
goto :conversar

:bem
cls
echo Que bom que voce esta bem, %input%! Eu tambem estou otima!
echo Vamos continuar conversando? O que voce mais gosta de fazer?
pause
goto :conversar

:triste
cls
echo Sinto muito em saber que voce esta triste, %input%. Posso te ajudar de alguma forma?
pause
goto :conversar

:interessante
cls
echo Legal! Sobre o que voce gostaria de conversar? Eu adoro tecnologia e games!
pause
goto :conversar

:silencio
cls
echo Entendi, voce prefere um momento de silencio. Sem problemas!
pause
goto :conversar

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
echo Um jogo demo, nao sei se vou continuar nele, pois vou fazer sem notebook.
echo Se quiser usar o codigo, pode ficar a vontade!
pause
goto :002

:002
pause
