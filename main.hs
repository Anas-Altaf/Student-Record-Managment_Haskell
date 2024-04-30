-- -- Main.hs
-- module Main where
-- import Class (Queue(..))
-- import Module (StudentRecord)
-- import Instance (PriorityQueue(..), CircularQueue(..))

-- main :: IO()
-- main = do
--   let students = [(1, "Alice", ["Math", "Science"]), (2, "Bob", ["English", "History"])]
--   let pq = foldr enqueue (PriorityQueue []) students
--   let cq = foldr enqueue (CircularQueue 10 []) students
--   print (peek pq)
--   print (peek cq)

-- Main.hs
import Queue
import SpecializedQueues
import Helpers

main :: IO ()
main = do
    let pq = PriorityQueue [] compareStudents
    let student1 = (1, "Alice", ["Math", "Physics"])
    let student2 = (2, "Bob", ["Chemistry", "Biology"])
    let pq' = enqueuePQ student1 pq
    let pq'' = enqueuePQ student2 pq'
    print pq''

