#!/bin/bash

# 檢查是否提供兩個參數
if [ $# -lt 2 ]; then
  echo "❌ Error: Missing arguments. Usage: $0 <writefile> <writestr>"
  exit 1
fi

writefile=$1
writestr=$2

# 建立路徑（包含中間資料夾）
mkdir -p "$(dirname "$writefile")" || {
  echo "❌ Error: Failed to create directory"
  exit 1
}

# 寫入文字
echo "$writestr" > "$writefile" || {
  echo "❌ Error: Failed to write to file"
  exit 1
}

exit 0

