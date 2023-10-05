# setup-hyper-pokemon

[hyper-pokemon](https://github.com/klaudiosinani/hyper-pokemon)をセットアップするためのscript (対象: Mac / zsh terminal)

## Environment

- OS: Mac
- terminal: zsh
  - 内部でmac用のsed (gsed)をインストールしているため

## Usage

### 事前準備

1. [HomeBrew](https://brew.sh/ja/)をインストールする

2. `brew`コマンドを用いて[hyper](https://hyper.is/)をインストールする

   ```sh
   brew install hyper
   ```

3. hyper-pokemonをインストールする

   ```sh
   hyper i hyper-pokemon
   ```

### Draft: 実行

#### gitコマンドが使える場合

ターミナルを開き、下記をそのままコピペする。

```sh
git clone https://github.com/Shimpei-GANGAN/setup-hyper-pokemon.git && sh setup-hyper-pokemon/setup.sh
```

#### Draft: gitコマンドが使えない場合

curl/wgetコマンドでダウンロードする

```sh
```

#### 実行結果

hyperを開く。やったね🎉

<img
  src="https://github.com/Shimpei-GANGAN/setup-hyper-pokemon/assets/44604921/a8ad16ff-943e-4dff-a159-7fea993a5392"
  width="600px"
  alt="hyper-pokemon設定完了時のターミナル画面(ミズゴロウ)"
/>

## 設定を変えたい場合

`$HOME/.hyper.js`のファイルの81行目を修正すると良い

```js
module.exports = {
  config: {
    // ... other config
    pokemon: "pikachu",
    pokecursor: "true",
    pokemonSyntax: "dark",
    unibody: "true",
    poketab: "false",
    // ... other config
  };
};
```

## Ref

### GitHub

- [hyper-pokemon](https://github.com/klaudiosinani/hyper-pokemon)

### Qiita

- [爆速でターミナルをポケモンにする](https://qiita.com/chanuu/items/b5c3d11e089ad0c7356d)

## Contact

If it doesn’t work, please create GitHub issues / discussions or send a DM to Twitter.

- recomended : GitHub issues / discussions

## LICENSE

[MIT](./LICENSE)

