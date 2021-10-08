import Data.List
word_s = "to be or not to be"
[(head x, length x) | x <- group . sort $ words word_s]
