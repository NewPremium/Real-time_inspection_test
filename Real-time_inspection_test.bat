@echo off
pushd %~dp0
SETLOCAL ENABLEEXTENSIONS
setlocal enabledelayedexpansion
cls

::Chack OS version
set osver=nosupport
ver|system\grep\grep.exe -Eiq "Version 6.1." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=7
ver|system\grep\grep.exe -Eiq "Version 6.(2|3)." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=8
ver|system\grep\grep.exe -Eiq "Version 10.0." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=10
if /I "%osver%" == "nosupport" (
	goto nonos
)

::chack zip file
if not exist system\chack\Real-time_inspection_test (goto chack)

::set system bit
set bit=86
if exist "%SystemRoot%\SysWOW64" do (
set bit=64
)

::Set color
color 0f

::â ������ ����
mode.com con cols=120 lines=40

::Ÿ��Ʋ ����
title ��� �׽�Ʈ

::Set
set v=V.Alpha
set e=OFFICIAL
set second=0
set zc=Zero_Cleaner

::make ����׽�Ʈ log folder
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
set "strtmp=%date% %time%"
set "datetime=%strtmp%"
set "rptdate=%strtmp:-=%"
set "rptdate=%rptdate:/=%"
set "rptdate=%rptdate::=%"
set "rptdate=%rptdate:.=%"
set "rptdate=%rptdate: =%"

::chack and make Zero_Cleaner log folder
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
mkdir "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)

::set log name
set log=%systemdrive%\%zc%_log\Real-time_inspection_test[%rptdate%].log

::Create log
echo %time% Create log>%log%

::Start
echo Start Real-time_inspection_test>>%log%
cls
echo.
echo.   Real-time_inspection_test - %v%_%e%
echo.
echo.                                                   QESASDDS
echo.                                                    .BgK.       
echo.                                                   :BBEE.        
echo.                                               JBQYBBBsPAW          
echo.                                                 EBBPi           
echo.                                               .BBPP.            
echo.                                              vBBgS              
echo.                                             bBBgi               
echo.                                            BBM2:                
echo.                                          iBBPS                  
echo.                                         SBQQr                   
echo.                                        BBBq.                    
echo.                                      :J::L.                     
echo.                                     ru7i.                       
echo.                                    :usJ:                        
echo.                                   .BU..       ..                
echo.                                  :BE       iKBBBBB              
echo.                                  ;'     .dBBBBBBRBK             
echo.                                 /    :vPEbSBBDSjv12             
echo.                       .iv.     / .7IZDZU7. .SYssJv.             
echo.                      :iUQM7   / ::7PUr....  71r.                
echo.                     :...iKgj./ .............                    
echo.                     .....:uE/.  .........                       
echo.                      ....../EbL    ...                          
echo.                       ..  iPBBBB                                
echo.                         .v2uqRBBB:                              
echo.                          sj77IgBBBX                             
echo.                           rJvvIEBBBq                            
echo.                            .jY77rrLq                            
echo.                             .JULJjj.                            
echo.                               :i:.                              
echo.
echo. 
echo. ENTERŰ�� �����ø� ��� �׽�Ʈ�� �����մϴ�.
pause>nul
echo.>>%log%
echo --------------- Start Core algorithm --------------->>%log%
echo.>>%log%
cls
echo.
echo. üũ��. . .
echo. �ٽ� �˰��� ����. . .
::Core algorithm
echo X5O^^!P%%^@AP[4\PZX54^(P^^^^)7CC^)7^}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE^^!$H+H* >EICAR.TXT
if not exist EICAR.TXT (goto 0)
timeout/t 1 /nobreak>nul
set /a second1=%second%+1
:test
if not exist EICAR.TXT (goto finish)
set /a second2=%second1%+1
timeout/t 1 /nobreak>nul
if %second2%==10 (goto overtime)
goto test
:finish
echo ����� �ǽð� �˻�� ��¥ ���̷����� �����߽��ϴ�.>>%log%
echo.>>%log%
echo ����� ��¥ ���̷����� Ž���ϰ� �����ϴ� �ð� : [ %second2% ] ��>>%log%
cls
echo.
echo. ����� �ǽð� �˻�� ��¥ ���̷����� �����߽��ϴ�.
echo.
echo. ����� ��¥ ���̷����� Ž���ϰ� �����ϴ� �ð� : [ %second2% ] ��
echo. 
echo. ENTERŰ�� �����ø� ���α׷��� ����˴ϴ�.
start %log%
pause>nul
exit
:0
echo ����� �ǽð� �˻簡 �ﰢ������ ��¥ ���̷����� �����߽��ϴ�.>>%log%
echo.>>%log%
echo ���α׷� ������ ���� �� ������ Ȯ���� �ּ���.>>%log%
echo.>>%log%
echo ���α׷��� ������ ���ٸ� ����� ��¥ ���̷����� Ž���ϰ� �����ϴ� �ð� : [ 0 ] �� >>%log%
cls
echo.
echo. ����� �ǽð� �˻簡 �ﰢ������ ��¥ ���̷����� �����߽��ϴ�.
echo.
echo. ���α׷� ������ ���� �� ������ Ȯ���� �ּ���.
echo.
echo. ���α׷��� ������ ���ٸ� ����� ��¥ ���̷����� Ž���ϰ� �����ϴ� �ð� : [ 0 ] �� 
echo.
echo. ENTERŰ�� �����ø� ���α׷��� ����˴ϴ�.
start %log%
exit
:overtime
echo ����� ��¥ ���̷����� ��µ� 10�� �̻��� �ɸ��ϴ�.>>%log%
echo.>>%log%
echo ����� ��ǻ�Ϳ� ���ų� ��¥ ���̷����� ���� �� ���� ������� Ȯ���Ͻʽÿ�.>>%log%
echo �Ϻ� ��ŵ��� �ش� ������ �������� �ʽ��ϴ�.>>%log%
cls
echo.
echo. ����� ��¥ ���̷����� ��µ� 10�� �̻��� �ɸ��ϴ�.
echo.
echo. ����� ��ǻ�Ϳ� ���ų� ��¥ ���̷����� ���� �� ���� ������� Ȯ���Ͻʽÿ�.
echo. �Ϻ� ��ŵ��� �ش� ������ �������� �ʽ��ϴ�.
echo.
echo. ENTERŰ�� �����ø� ���α׷��� ����˴ϴ�.
start %log%
exit

:nonos
COLOR 4F
cls
title This OS isn't supported
echo.
echo. This OS isn't supported
echo.
echo. Supported OS : Windows 7~10
echo.
echo. Press the ENTER key to exit the program.
pause>nul
exit

:chack
COLOR 4F
cls
title Please unzip the file properly and execute it.
echo.
echo. Please unzip the file properly and execute it.
echo.
echo. Press the ENTER key to exit the program.
PAUSE>NUL
exit