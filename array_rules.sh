#!/bin/sh

# 配列の作り方
basic_arr=(hoge fuga piyo)

str="a b c d e"
str_to_arr=($str)


# 変数として使う場合には、中カッコと@を使う必要がある
# 1行で出力
echo ${basic_arr[@]}
echo ${str_to_arr[@]}


# 要素ごとに改行
for e in ${basic_arr[@]}; do
  echo $e
done
