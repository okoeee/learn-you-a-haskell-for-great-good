
-- 高階関数

-- 2回適応する関数
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- map関数
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

-- filter関数
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter p xs
  | otherwise = filter p xs

-- ラムダ式
-- 1回だけ使う関数を作るときに使う無名関数
-- 高階関数にわたす関数を作るために使われる

-- 例えば、map関数をラムダ式を使って書くと以下のようになる
-- map (+3) [1, 6, 3, 2]          -- 通常
-- map (\x -> x + 3) [1, 6, 3, 2] -- ラムダ式
