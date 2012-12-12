import System.Environment
import Control.Monad

kilogramsToPounds :: Float -> Float
kilogramsToPounds x = x * 2.20462

ouncesToMilliliters :: Float -> Float
ouncesToMilliliters x = x * 29.5735

handleArgs :: [String] -> [Float]
handleArgs [x, y] = [read x :: Float, read y :: Float]
handleArgs _ = error "Argument error"

main :: IO ()
main = do
  [w, t] <- liftM handleArgs getArgs
  let lower_bound = ouncesToMilliliters (kilogramsToPounds w * 2.5) / t
  let upper_bound = lower_bound * 1.25
  putStrLn $ show (round lower_bound) ++ "\t" ++ show (round upper_bound)
