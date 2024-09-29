
-- パターンマッチ
lucky :: Int -> String
lucky 7 = "Lucky number seven!"
lucky x = "Sorry, you're out of luck, pal!"

-- 階乗の計算
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- リストのパターンマッチ
tell :: (Show a) => [a] -> String
tell [] = "The list is empty."
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y
