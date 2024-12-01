# shell_config

Shell configure files.

## Usage

```bash
mkdir -p ~/.shell && curl -sLJ https://github.com/rmatttu/shell_config/releases/latest/download/release.tar.gz | tar zxf - -C ~/.shell
cd ~/.shell
./install.sh
```

### cmder

See `cmder/setup-sample.bat` for cmder setup.

## メモ

* Cmd + R でマウスモードのOn/Offを切り替えることができる。
    * https://qiita.com/komo/items/393f4c20eb7d02e40d55
* tmux、ウィンドウ入れ替え
    * ウィンドウ1と2を入れ替え
    * `<prefix>` → `swap-windlw -s 1 -t 2`

## 参考

* [URXVT + zsh + tmuxすると、zshの補完候補のハイライトが正常にされない - ぞひたすIT記](http://xorphitus.hatenablog.com/entry/20111113/1321197867)
* [For tmux configs: Merge deprecated/removed -fg, -bg, and -attr options into the -style option](https://gist.github.com/tbutts/6abf7fb5b948c066bf180922fb37adcf)
* [tmux v2.9 マイグレーションガイド 〜 tmux をv2.9 に上げたらinvalid option エラーが出た - Qiita](https://qiita.com/TsutomuNakamura/items/663b8e456768f29e37ed)
* [ghq + fzf でプロジェクトを選択するための bash 設定](https://tottoto.net/select-ghq-project-with-fzf-on-bash/)
