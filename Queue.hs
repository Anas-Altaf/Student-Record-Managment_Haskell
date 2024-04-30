-- Queue.hs
module Queue (Queue, enqueue, dequeue, peek, isEmpty) where

data Queue a = Queue [a] deriving (Show, Eq)

enqueue :: a -> Queue a -> Queue a
enqueue x (Queue xs) = Queue (xs ++ [x])

dequeue :: Queue a -> (Maybe a, Queue a)
dequeue (Queue []) = (Nothing, Queue [])
dequeue (Queue (x:xs)) = (Just x, Queue xs)

peek :: Queue a -> Maybe a
peek (Queue []) = Nothing
peek (Queue (x:_)) = Just x

isEmpty :: Queue a -> Bool
isEmpty (Queue []) = True
isEmpty _ = False
