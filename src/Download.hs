module Download where

import Prelude hiding ( writeFile )
import Data.ByteString qualified as Bytes
import Network.HTTP.Simple ( httpBS, getResponseBody )

mrs_dymond :: IO ()
mrs_dymond = do
    response <- httpBS "https://archive.org/stream/mrsdymond01ritcgoog/mrsdymond01ritcgoog_djvu.txt"
    Bytes.writeFile "mrs-dymond.txt" (getResponseBody response)
    putStrLn "File has been nownloaded and saved."


