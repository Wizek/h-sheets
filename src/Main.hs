module Main where

import            Reflex                        hiding (leftmost)
import            Reflex.Dom.Core
-- import            Language.Javascript.JSaddle.Warp
import            Control.Concurrent
import            Control.Monad
import            Data.Monoid
import            Data.Text

a :: Map (Int, Int) (Dynamic t Cell)

main :: IO ()
main = do
  putStrLn "hello world"
  -- run 3199 $ mainWidget $ text "hello"
  mainWidget $ do
    text "hello 7"
    el "style" $ do
      text ".cell {height: 20px; width: 80px}"
      text ".cell {display: inline-block}"
      text ".row {overflow: visible}"
      text ".table {width: 10000px}"
    divClass "table" $ do
      forM_ [1..1000] $ \x -> do
        divClass "row" $ do
          forM_ [1..100] $ \y -> do
            divClass "cell" $ do
              text $ "(" <> tshow x <> ", " <> tshow y <> ")"



tshow = pack . show

-- debugAndWait p f = debug p f >> forever (threadDelay $ 1000 * 1000)

-- viewport
-- Dy t ScrollPos -> Dy t Dom
-- Dy t ScrollPos -> Dy t Dom



-- |-------------------------|
-- |
