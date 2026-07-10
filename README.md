# fp-in-haskell

FP in Scala演習問題の[Haskell](https://haskell.org)移植版

このリポジトリでは、筆者の学習のために作られたものを公開しています。

構成は[fp-matsuri/fp-in-scala-exercises/CONTRIBUTING.md](https://github.com/fp-matsuri/fp-in-scala-exercises/blob/main/CONTRIBUTING.md)の方針を参考にしていますが、厳密にはしたがっていません。

現時点では、２章〜５章です。

## おことわり

本リポジトリのfp-matsuri/fp-in-scala-exercises/fp-in-haskellで準備されているものとは**別のもの**であり、fp-matsuri**非公認**です。
fp-matsuri宛てに、本リポジトリに関する問い合わせは**絶対にしないで**ください。

本リポジトリのコードや資料は無保証です。
筆者はコードや資料の利用した（利用しなかった）ために起きたあらゆる事象について一切の責任を負いません。

Docker、Dev Container の使用を全く考慮していません。環境構築する場合はローカル環境で自己責任で行ってください。

## 必要なツール

- [GHCup](https://www.haskell.org/ghcup/): ツール群管理ツール
    - [GHC](https://www.haskell.org/ghc/): コンパイラ、ランタイム、基本パッケージ
    - [stack](https://docs.haskellstack.org/en/stable/): パッケージ管理ツール。ここでは、stackを使ってビルド、REPLの起動をおこないます。
    - [cabal](https://www.haskell.org/cabal/): 直接使うことはありませんが、stackと連携しています。
    - [HLS](https://github.com/haskell/haskell-language-server): Haskell Language Server。VSCodeのHaskell拡張機能が使います。。
- [VSCode](https://code.visualstudio.com): エディタ、拡張機能: Haskellをインストールして使います。

## 使い方

### REPL

解答例を参照する場合（例）
```console
$ stack exec -- ghci src/Answer/DataStructure/Ex0301.hs
```
解答を確認する場合（例）
```console
$ stack exec -- ghci src/Exercise/DataStructure/Ex0301.hs
```

### テスト

```console
stack exec -- doctest src/Exercise/DataStructure/Ex0301.hs
```

## プロジェクトの構成
```
.
├── CHANGELOG.md
├── LICENSE
├── README.md
├── Setup.hs
├── app
│   └── Main.hs
├── fp-in-haskell.cabal
├── hie.yaml
├── package.yaml
├── package.yaml.orig
├── src
│   ├── Answer
│   │   ├── DataStructures/
│   │   ├── GettingStarted/
│   │   ├── HandlingErrors/
│   │   └── Laziness/
│   ├── Exercise
│   │   ├── DataStructures/
│   │   ├── GettingStarted/
│   │   ├── HandlingErrors/
│   │   └── Laziness/
│   └── Lib.hs
├── stack.yaml
├── stack.yaml.lock
└── test
    └── doctests.hs
