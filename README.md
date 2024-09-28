
## 概要
すごいHaskell楽しく学ぼう！の学習用リポジトリ。

## 環境構築

### 参考
https://www.haskell.org/ghcup/

### GHCupのインストール
```shell
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

- ghcup: Haskellのバージョン管理ツール
- GHC(Glasgow Haskell Compiler): Haskellのコンパイラ
- cabal: Haskellのビルドツール、パッケージマネージャ
- HLS(Haskell Language Server): HaskellのIDE
- stack: Haskellのビルドツール、パッケージマネージャ

## 使い方

### 対話モードの立ち上げ
```shell
ghci
```