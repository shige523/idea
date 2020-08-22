# -*- coding: utf-8 -*-
"""
Spyderエディタ

これは一時的なスクリプトファイルです
"""

import os, glob, openpyxl, csv


#main

#マージ後のCSVファイルの準備
outputCSVname = "MergeAllSheet.csv"

outputfile = open (outputCSVname, 'w' , newline='')
output_writer = csv.writer(outputfile)

#CSVに出力するヘッダの定義
header = ['col1','col2','col3','col4','col','col6','col7','col8','col9','col10','col11','col12','col13','col14','col15','col16','シート名','ファイル名']
output_writer.writerow(header)

#getfilelist
filelist=glob.glob("./data/*.xlsx") 
indexfile = len(filelist)

#ファイルの数だけ実行
for i in range(indexfile):
  fileName = (os.path.split(filelist[i])[1]).replace('.xlsx','')
  wb = openpyxl.load_workbook(filelist[i])
  
#シートの枚数だけ実行
  for sheet in wb.worksheets:
#行数だけ実行    
    for row in sheet.iter_rows(min_col = 2, \
                               min_row = 6, \
                               max_col=sheet.max_column, \
                               max_row = sheet.max_row):

#該当セルの値取得
      row = [str(cell.value or '') for cell in row]
      row.append(sheet.title)
      row.append(fileName)
      output_writer.writerow(row)

#最後にファイルをClose
wb.close()
outputfile.close()
os._exit(0)