-- Class.hs
module Class where

import Module (StudentRecord)

class Queue q where
  enqueue :: StudentRecord -> q -> q
  dequeue :: q -> (StudentRecord, q)
  peek :: q -> StudentRecord
  isEmpty :: q -> Bool
