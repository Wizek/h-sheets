module Main where

import            Reflex                        hiding (leftmost)
import            Reflex.Dom.Core
import            Language.Javascript.JSaddle.Warp
import            Control.Concurrent
import            Control.Monad
import            Data.Monoid
import            Data.Text



main :: IO ()
main = do
  putStrLn "hello world"
  -- run 3199 $ mainWidget $ text "hello"
  debug 3199 $ mainWidget $ do
    text "hello 7"
    el "table" $ do
      forM_ [1..10] $ \x -> do
        el "tr" $ do
          forM_ [1..10] $ \y -> do
            el "td" $ do
              text $ "(" <> tshow x <> ", " <> tshow y <> ")"



tshow = pack . show

debugAndWait p f = debug p f >> forever (threadDelay $ 1000 * 1000)

-- viewport
-- Dy t ScrollPos -> Dy t Dom
-- Dy t ScrollPos -> Dy t Dom



-- |-------------------------|
-- |
