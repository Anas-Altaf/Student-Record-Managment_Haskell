-- SpecializedQueues.hs
module SpecializedQueues (PriorityQueue, CircularQueue, enqueuePQ, dequeuePQ, enqueueCQ, dequeueCQ) where

import Queue
import Helpers

-- PriorityQueue
data PriorityQueue a = PriorityQueue [a] (a -> a -> Ordering)

enqueuePQ :: StudentRecord -> PriorityQueue StudentRecord -> PriorityQueue StudentRecord
enqueuePQ student (PriorityQueue students comp) =
    PriorityQueue (insert comp student students) comp
  where
    insert _ x [] = [x]
    insert comp x (y:ys) = case comp x y of
        GT -> y : insert comp x ys
        _  -> x : y : ys

dequeuePQ :: PriorityQueue StudentRecord -> (Maybe StudentRecord, PriorityQueue StudentRecord)
dequeuePQ (PriorityQueue [] _) = (Nothing, PriorityQueue [] compareStudents)
dequeuePQ (PriorityQueue (x:xs) comp) = (Just x, PriorityQueue xs comp)

-- CircularQueue
data CircularQueue a = CircularQueue [a] Int Int Int deriving (Show, Eq)

enqueueCQ :: a -> CircularQueue a -> CircularQueue a
-- Implementation goes here

dequeueCQ :: CircularQueue a -> (Maybe a, CircularQueue a)
-- Implementation goes here
