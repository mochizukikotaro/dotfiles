dotfiles
========

### ヤンクでクリップボードに保存するにはVimを最新にする必要があります。

```
$ brew list | grep vim
$ brew info vim
$ brew install vim
$ sudo mv /usr/bin/vim /usr/bin/old_vim
$ sudo ln /usr/local/Cellar/vim/7.4.488/bin/vim /usr/bin
```

注意:下のようにパスを通す方法でbrewでいれたvimを使おうとしても効かなかった。上のようにハードリンクで対応したらちゃんと動きました。

```
export PATH=/usr/local/bin:$PATH
```

### iTermをつかっていてhyblidを有効にする場合はiTerm側の設定も必要です。

https://gist.github.com/luan/6362811

上のgistを適当な場所にcloneして、iTermの設定からload presetsします。
