rem test batch file for timing runs
@echo off

rem equivalent to a runall script. 

setlocal
set BPS=C:\Esru\esp-r\bin\bps
set LOG=stone_o2.log
echo %BPS%
echo %BPS% >%LOG%
rem do them in same order as runall
echo "start"
echo "start" >>%LOG%
set timestamp=%DATE:/=-%@%TIME::=-%
set timestamp=%timestamp: =%
echo %timestamp%
echo %timestamp% >>%LOG%
echo "spring week"
echo "spring week" >>%LOG%
%BPS% -mode text -file stone_simi_1890_jan-feb_s2.cfg -p spr silent
set timestamp=%DATE:/=-%@%TIME::=-%
set timestamp=%timestamp: =%
echo %timestamp%
echo %timestamp% >>%LOG%
echo "jan-feb"
echo "jan-feb" >>%LOG%
%BPS% -mode text -file stone_simi_1890_jan-feb_s2.cfg -p win1 silent
set timestamp=%DATE:/=-%@%TIME::=-%
set timestamp=%timestamp: =%
echo %timestamp%
echo %timestamp% >>%LOG%
echo "summer"
echo "summer" >>%LOG%
%BPS% -mode text -file stone_simi_1890_jan-feb_s2.cfg -p sum silent
set timestamp=%DATE:/=-%@%TIME::=-%
set timestamp=%timestamp: =%
echo %timestamp%
echo %timestamp% >>%LOG%
echo "annual"
echo "annual" >>%LOG%
%BPS% -mode text -file stone_simi_1890_jan-feb_s2.cfg -p annual silent
set timestamp=%DATE:/=-%@%TIME::=-%
set timestamp=%timestamp: =%
echo %timestamp%
echo %timestamp% >>%LOG%
echo "finished"
echo "finished" >>%LOG%
