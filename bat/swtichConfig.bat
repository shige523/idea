@echo off
REM 環境スイッチ用のbat
echo ===================================
echo 1:XX 2:XX 3XX
echo ===================================

SET /p pref= パターンを選ぶ:

if %pref%==1 (
	echo 1 done
) else if %pref%==2 (
	echo 2 done
) else if %pref%==3 (
	echo 3 done
) else (
	echo etc done
)

pause
exit /b

REM 適当に処理用の関数
:delFunction

exit /b