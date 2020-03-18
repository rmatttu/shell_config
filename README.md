# shell_config

zsh, tmux configure files


## Usage

```bash
./install.sh
```

## Requirements

* zsh
* tmux
* colordiff


## Installation

```bash
sudo apt -y install zsh tmux colordiff
git clone https://github.com/rmatttu/shell_config.git .shell
cd .shell
./install.sh
```


## メモ

* Cmd + R でマウスモードのOn/Offを切り替えることができる。
    * https://qiita.com/komo/items/393f4c20eb7d02e40d55
* tmux、ウィンドウ入れ替え
    * ウィンドウ1と2を入れ替え
    * `<prefix>` → `swap-windlw -s 1 -t 2`

