@echo off
rem ===========================================
rem �t�@�C�����̕������u��
rem �ꂩ���̕ύX��
rem ���ׂẴt�@�C���ɑ΂��čs�������悤�ȏꍇ
rem ===========================================


rem �ۑ���̃t�H���_���쐬
rem ���݂���Ȃ��x�t�H���_���ƍ폜
if exist "replace" (rd /S/Q replace)
md replace

rem �t�@�C�����������s����

for %%f in (*.txt) do (

@setlocal enabledelayedexpansion

 for /f "delims=" %%a in (%%f) do (

 set line=%%a
 rem >>�̑O��ɂ̓X�y�[�X�����Ȃ�����
 echo !line:test=product!>>replace\%%f
 )

 endlocal

)