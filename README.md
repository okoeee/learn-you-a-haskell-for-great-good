
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

## GHCupの使い方

### 対話モードの立ち上げ
```shell
ghci
```

### ファイルのロード
```shell
:l <ファイル名>
```

### 式の型を調べる
```shell
:t <式>
```

## chapter1

## chapter2

## 型制約
Haskellでは`=>`を使って型制約を表す。

コード例:
```haskell
(==) :: Eq a => a -> a -> Bool
```

上の例では、aがEq型クラスのインスタンスであることが要求され、a型の値を2つ受け取り、Bool型の値を返すことを表している。

### 型クラス
インターフェースのようなもの。

#### インターフェースのコード例
インターフェースは継承先のクラスに具体的なメソッドの実装を強制する。
```scala
trait Printer {
  def print(): Unit
}

class Document(content: String) extends Printer {
  override def print(): Unit = println(s"Document content: $content")
}

class Image(path: String) extends Printer {
  override def print(): Unit = println(s"Image content: $path")
}

val doc = Document("Hello, World!")
val img = Image("Beautiful image")

doc.print()
img.print()
```

#### 型クラスのコード例

```scala
// 型クラスの定義
trait Show[A] {
  def show(a: A): String
}

// 型クラスインスタンスの定義
implicit val showString: Show[String] = new Show[String] {
  override def show(a: String): String = s"String: $a"
}

implicit val showInt: Show[Int] = new Show[Int] {
  override def show(a: Int): String = s"Int: $a"
}

// 型クラスを使うためのメソッド
def printShow[A](a: A)(implicit s: Show[A]): Unit = {
  println(s.show(a))
}

// 利用例
printShow("Hello")
printShow(123)
```

## chapter3

## chapter4
