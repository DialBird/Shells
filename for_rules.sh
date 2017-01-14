#!/bin/sh

echo $USER

# for文の基本形は下の形
for i in 1 2 3; do
  echo $i
done

# それだと面倒臭い場合はseqを使う
for i in `seq 0 10`; do
  echo $i
done

# seqで00とかをつけたい場合は
for i in `seq -f "%02g" 0 9`; do
  echo $i
done

for i in `seq -w 0 100`;do
  echo $i
done

# 配列を使う場合
array=(a b c)
for e in ${array[@]}; do
  echo $e
done

# ディレクトリ下のファイルを取得
DIR="./*"
JS="./*.js"
for file in $DIR; do
  echo $file
done

# 引数の数だけ実行
# インクリメントをするには$(())を使って、算術を実行する。なお、++は使えない模様
COUNT=0
for arg in $@; do
  echo "arg${COUNT} is $arg"
  COUNT=$(( COUNT + 1 ))
done
