
-- Haskellの型クラスの定義
-- `class <クラス名> <型変数> where {関数1 :: 型1 関数2 :: 型2}` で定義する
-- `instance <クラス名> <型> where {関数1 = 実装1 関数2 = 実装2}` で実装する

-- Haskellですでに定義されているEq型クラスの定義を見てみる

-- 1. 型クラスの定義
--class Eq a where
--  (==) :: a -> a -> Bool
--  (/=) :: a -> a -> Bool
--  x == y = not (x /= y)
--  x /= y = not (x == y)

-- 2. 独自カスタムデータ型の定義
data Color = Red | Green | Blue

-- 3. 型クラスインスタンスの定義
instance Eq Color where
  Red == Red = True
  Green == Green = True
  Blue == Blue = True
  _ == _ = False

-- 以下のように使うことができる
-- Red == Red
