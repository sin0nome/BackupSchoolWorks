# BackupSchoolWorks
授業での制作物バックアップ用のbat

## 使い方
1. BKUP_File.batをテクストエディタで開き、先頭にある`SET ~`で始まる行の`""`内の中身を書き換える。
2. 除外したいファイルがあれば`ExcludeFile.txt`に記入します。
3. 実行するとコピー先に日付フォルダが生成されその中にコピーされます。

### 書き換える場所
```
SET copyFile="C:\"
SET destination="D:\"

~
```

`SET copyFile="C:\"`
* コピー元ファイルのあるディレクトリを指定します。
  - ディレクトリ以下のファイルはサブディレクトリも含めて全てコピーします。

`SET destination="D:\"`
* コピー先のディレクトリを指定します。
  - 指定したディレクトリ内に日付フォルダが生成され、指定した除外ファイル以外コピーされます。 :warning: 既に存在した場合強制的に上書きされるので注意
    + 上書きしてもよいか確認する場合は`xcopy /e /y %copyFile% %saveDirectory% /EXCLUDE:.\ExcludeFile.txt`のオプションを`-y`に変更してください
