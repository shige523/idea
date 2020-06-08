@echo off
rem ===========================================
rem ファイル内の文字列を置換
rem 一か所の変更を
rem すべてのファイルに対して行いたいような場合
rem ===========================================


rem 保存先のフォルダを作成
rem 存在するなら一度フォルダごと削除
if exist "replace" (rd /S/Q replace)
md replace

rem ファイル数だけ実行する

for %%f in (*.txt) do (

@setlocal enabledelayedexpansion

 for /f "delims=" %%a in (%%f) do (

 set line=%%a
 rem >>の前後にはスペースを入れないこと
 echo !line:test=product!>>replace\%%f
 )

 endlocal

)