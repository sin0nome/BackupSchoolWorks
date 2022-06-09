@rem ここでパスを変更してください。このbatを実行したことでの責任は一切負いません。 @sin0nome
SET copyFile="C:\"
SET destination="D:\"

set saveDate=%date:~0,4%%date:~5,2%%date:~8,2%
set saveDirectory=%destination%\%saveDate%

md log
tree /f %copyFile% > log\beforTree.log
tree /f %copyFile%

md %saveDirectory%

xcopy /e /y %copyFile% %saveDirectory% /EXCLUDE:D:\ExcludeFile.txt

tree /f %saveDirectory% > log\afterTree.log
tree /f %saveDirectory%

@rem 比較
fc \n log\beforTree.log log\afterTree.log

@rem 比較用ログファイルの削除
rmdir /s /q log

set copyFile=
set destination=
set saveDate=
set saveDirectory=

