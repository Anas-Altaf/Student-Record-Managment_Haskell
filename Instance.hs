-- Instance.hs
module Instance where
import Class (Queue(..))
import Module (StudentRecord)
data PriorityQueue = PriorityQueue [StudentRecord]
data CircularQueue = CircularQueue Int [StudentRecord]

instance Queue PriorityQueue where
  enqueue record (PriorityQueue q) = PriorityQueue (insertBy compareRecord record q)
  dequeue (PriorityQueue (x:xs)) = (x, PriorityQueue xs)
  peek (PriorityQueue (x:_)) = x
  isEmpty (PriorityQueue q) = null q

instance Queue CircularQueue where
  enqueue record (CircularQueue size q) = CircularQueue size (take size (record:q))
  dequeue (CircularQueue size (x:xs)) = (x, CircularQueue size xs)
  peek (CircularQueue _ (x:_)) = x
  isEmpty (CircularQueue _ q) = null q

compareRecord :: StudentRecord -> StudentRecord -> Ordering
compareRecord (roll1, _, _) (roll2, _, _) = compare roll1 roll2

