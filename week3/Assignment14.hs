import Data.List
uniqueWords x= length(group(sort(words x)))

--How to call:
--uniqueWords "hello hello world world cat dog world"