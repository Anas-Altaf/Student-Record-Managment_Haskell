module Instance where

import Module
import Queue
data PQueue = PQueue [StudentRecord]
  deriving (Show)

instance Queue PQueue where
    enqueue (PQueue records) record = PQueue (records ++ [record])
    dequeue (PQueue []) = error "Queue is already Empty"
    dequeue (PQueue (x:xs)) = (x, PQueue xs)
    peek (PQueue []) = error "Queue is already Empty"
    peek (PQueue (x:_)) = x
    isEmpty (PQueue records) = null records

data CQueue = CQueue Int [StudentRecord]
    deriving (Show)

instance Queue CQueue where
    enqueue (CQueue limit records) record
        | length records < limit = CQueue limit (records ++ [record])
        | otherwise = CQueue limit (tail records ++ [record])
    dequeue (CQueue _ []) = error "Empty queue"
    dequeue (CQueue limit (x:xs)) = (x, CQueue limit xs)
    peek (CQueue _ []) = error "Empty queue"
    peek (CQueue _ (x:_)) = x
    isEmpty (CQueue _ records) = null records
