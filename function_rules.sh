#!/bin/sh

# 関数定義の注意
# 1. shellで関数を作る場合、関数名と同じ文字列を関数の中で使ってはいけない

# 関数の定義
hoge_func(){
  echo "hoge"
}

# 実行
hoge_func

# コマンドラインから引数を入れる
arg_func(){
  for arg in $@; do
    echo $arg
  done
}

arg_func $@

# []を使う場合は両端をワンスペース開けること
change_with_args(){
  if [ "$1" == "-r" ]; then
    cd somewhere
  elif [ "$1" == "-s" ]; then
    cd anywhere
  else
    cd here
  fi
}
