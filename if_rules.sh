#!/bin/sh

# 基本構文
USER=keisuke

if [ $USER == "keisuke" ]; then
  echo good
elif [ $USER == "daisuke" ]; then
  echo who?
fi

# 擬似オプション
if [ $1 == "-c" ]; then
  echo "c"
fi

# 大かっこ[]を使った条件式
# `man [` で確認することが可能である

# ディレクトリかどうかを確認する一例
if [ -d ./hoge ]; then
  echo "good"
fi

# 大かっこを二つ使う[[]]の書き方は、if文を簡略化して書ける方法で、機能的にも優れている

