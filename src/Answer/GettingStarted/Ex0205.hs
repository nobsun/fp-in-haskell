-- # Answer.GettingStarted.Ex0205
-- ## 練習問題 2.5
-- 関数合成関数を実装せよ
--
{-# LANGUAGE GHC2024 #-}
module Answer.GettingStarted.Ex0205
    (
    ) where
-- | _compose 関数合成関数
-- 関数合成関数`(.)`は標準プレリュード関数としていつでも使える。
-- 特に長い名前にするものを利用ことはないので、エクスポートしない名前`_compose`とする

-- >>> add :: Int -> (Int -> Int); add = (+)
-- >>> tenTimes :: Int -> Int; tenTimes = (10 *)
-- >>> phi = _compose add tenTimes
-- >>> :t phi
-- phi :: Int -> Int -> Int
-- >>> phi 4 7
-- 47
-- >>> (add . tenTimes) 4 7
-- 47
--
_compose :: (b -> c) -> (a -> b) -> (a -> c)
_compose f g x = f (g x)
