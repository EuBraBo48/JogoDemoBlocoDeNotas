@echo off
setlocal enabledelayedexpansion
title JogoDoFatmaniha
mode 60,30
color 9

set "option=1 2 3 4 Y N"

:001
echo.
::echo /////////////\\\\  
::echo ((((((((((((( \\\\ 
::echo ))) ~~      ~~  ((( 
::echo ((( (*)     (*) ))) 
::echo )))     ^    ((( 
::echo ((( '\______/`  ))) 
::echo )))\___________/((( 
::echo        _) (_        
::echo       / \_/ \       
::echo      /(     )\      
::echo     // )___( \\     
::echo     \\(     )//     
::echo      (       )      
::echo       |  |  |       
::echo        | | |        
::echo        | | |        
::echo       _|_|_|_       
echo.
echo Ola eu sou a sua Namorada dos sonhos, antes de começar a brincadeira queria fazer algumas perguntas
echo.
set /p input="*[Y,N] "
echo.

for %%d in (!option!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

echo Opcao invalida! Tente novamente.
goto :001

:Y
color a
echo OooOoo que bom, e so umas perguntas
echo Primeiro, QUAL O SEU NOME?

color 9
set /p input="*"
echo %input% %input% %input%.... Que nome fabuloso!
goto :003

:N
echo Você escolheu não continuar, então até mais!
pause
goto :002

:003
echo O que você deseja fazer agora?
echo 1. Conversar
echo 2. Jogar
echo 3. Andar
echo 4. Ou nada

set /p input="Digite uma opção: "
echo.

for %%d in (!option!) do (
    echo !input! | findstr /C:"%%d" > nul
    if !errorlevel! == 0 goto :%%d
)

echo Opcao invalida! Tente novamente.
goto :003

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
echo Pressione qualquer tecla para sair...
pause > nul
exit
