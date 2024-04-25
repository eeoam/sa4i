module Download where

import Prelude hiding ( writeFile )
import Data.ByteString qualified as Bytes
import Network.HTTP.Simple ( httpBS, getResponseBody )

--file :: IO ()
file uri filename = do
    response <- httpBS uri
    Bytes.writeFile filename (getResponseBody response)
    putStrLn "File has been downloaded and saved."

mrs_dymond :: IO ()
mrs_dymond = file "https://archive.org/stream/mrsdymond01ritcgoog/mrsdymond01ritcgoog_djvu.txt" "mrs-dymond.txt"


