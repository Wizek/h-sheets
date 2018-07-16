module Main where

import            Reflex                        hiding (leftmost)
import            Reflex.Dom.Core
import            Language.Javascript.JSaddle.Warp
import            Control.Concurrent
import            Control.Monad



main :: IO ()
main = do
  putStrLn "hello world"
  -- run 3199 $ mainWidget $ text "hello"
  debug 3199 $ mainWidget $ text "hello 7"

debugAndWait p f = debug p f >> forever (threadDelay $ 1000 * 1000)
