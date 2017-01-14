#!/bin/sh

USER=keisuke
HOGE=hoge

# 変数はそのまま出力できる
echo $USER

# また、下のようにも出力できる
echo ${USER}

# 連続して変数を繋げたい場合は後者を使う
echo ${USER}${HOGE}

# 文字列と一緒に出したいならダブルクォート
echo "user is $USER"
echo "user is ${USER}"

# バッククォートは中身をコマンドとして実行する
echo `date +%Y%m%d`

# コマンドを変数化して、バッククォート内での展開することも可能
DATECMD=/bin/date
echo `$DATECMD +%Y%m%d`

# 組み合わせの例
echo "$USER said today is `$DATECMD +%Y%m%d`"


for i in `seq -f "%02g" 0 2`; do
  echo "i is ${USER}${i}"
done
