
-- Functorとは？
-- 型の中の値に関数を適用するためのインターフェース

-- Functorの定義
--class Functor where
--  fmap :: (a -> b) -> f a -> f b

-- 例えば、リストもFunctorになっているので、mapメソッドが使える
-- instance Functor [] where
--   fmap = map
