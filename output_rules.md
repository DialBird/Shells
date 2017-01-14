- Unixではファイル記述子なるものがあり、0が入力、1が標準出力、そして2がエラー出力というふうに決まっている
- 例えば`ls`とだけうつと、その場所のファイルが[標準出力]で出されるが、`ls tekitou-file`などとデタラメなことをすると、エラー文が[エラー出力]で出される
- それぞれの出力先は番号で指定することができ、

> - 標準出力をメモにする`$ ls > memo.txt`

>- エラー出力をメモにする`$ ls tekitou 2> memo.txt`

のようにできる。

- また、`/dev/null`はターミナルのゴミ箱のようなもので、

>$ ls > /dev/null

>$ ls 2> /dev/null

>エラー出力を標準出力と同じところ（この場合はゴミ箱）に出す
>$ ls > /dev/null 2>&1 

とするとどこにも出力されずに消えてしまう。