@echo off
REM ���X�C�b�`�p��bat
echo ===================================
echo 1:XX 2:XX 3XX
echo ===================================

SET /p pref= �p�^�[����I��:

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

REM �K���ɏ����p�̊֐�
:delFunction

exit /b