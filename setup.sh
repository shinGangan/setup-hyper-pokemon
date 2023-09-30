#!/bin/sh -eu

HYPER_CONFIG_JS="$HOME/.hyper.js"

# hyper-pokemonの設定内容
arr=(
  "79i \    // NOTE: pokemonの部分を変更すると好きなポケモンになるよ"
  "80i \    // 本家ドキュメント: https://github.com/klaudiosinani/hyper-pokemon#pokemon "
  "81i \    pokemon: \"water\","
  "82i \    pokecursor: \"true\","
  "83i \    pokemonSyntax: \"dark\","
  "84i \    unibody: \"true\","
  "85i \    poketab: \"false\","
)

# hyper をインストールする
# @return void
install_hyper() {
  echo "------- brew install hyper -------"
  brew update && brew install hyper
}

# ------------------------------
# main script
# ------------------------------
echo "------- install hyper-pokemon -------"
# install_hyper

# NOTE: macのsedはgnu-sedではないので、gsedをインストールする
brew install gsed
alias sed='gsed'

if [ ! -e $HYPER_CONFIG_JS ]; then
  # hyperがインストールされてないよ
  # NOTE: install_hyper() 実行後なので本条件分岐は通らない(くそコード)
  echo "------- hyper config file is not exist -------"
else
  # ファイルの存在チェック
  echo "------- hyper config file is already exist -------"
  echo "------- setup hyper-pokemon -------"
  # plugins の設定を追加する
  sed -i "s/\  plugins: \[\],/\  plugins: \[\"hyper-pokemon\"\],/g" $HYPER_CONFIG_JS
  # hyper-pokemonの設定内容を追加する
  for v in "${arr[@]}"; do
    sed -i "$v" $HYPER_CONFIG_JS
  done
  echo "------- setup hyper-pokemon is done -------"
fi

# 今後不要なgsedを削除する
brew uninstall gsed
