#!/bin/bash

# 檢查是否提供兩個參數
if [ $# -lt 2 ]; then
  echo "❌ Error: Missing arguments. Usage: $0 <filesdir> <searchstr>"
  exit 1
fi

filesdir=$1
searchstr=$2

# 檢查目錄是否存在
if [ ! -d "$filesdir" ]; then
  echo "❌ Error: '$filesdir' is not a directory"
  exit 1
fi

# 計算檔案數量
file_count=$(find "$filesdir" -type f | wc -l)

# 計算符合的行數（不限定檔名）
match_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# 印出結果
echo "The number of files are $file_count and the number of matching lines are $match_count"

exit 0

