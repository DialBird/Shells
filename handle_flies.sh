#!/bin/sh


func(){
    mkdir newFile
    cd newFile
    
    #引数の数だけ実行
    for name in $@; do
        touch $name
        echo 'hello' > $name
    done
}

func
