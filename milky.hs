import System.Environment
import Control.Monad

handleArgs :: [String] -> [Float]
handleArgs [x, y] = [read x :: Float, read y :: Float]
handleArgs _ = error "Argument error"

main :: IO ()
main = do
  [w, t] <- liftM handleArgs getArgs
  let lower_bound = w * 130.39665914 / (24.0 / t)
  let upper_bound = lower_bound * 1.25
  putStrLn $ show (round lower_bound) ++ "\t" ++ show (round upper_bound)
