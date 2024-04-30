-- Main.hs
module Main where
import Class (Queue(..))
import Module (StudentRecord)
import Instance (PriorityQueue(..), CircularQueue(..))

main :: IO()
main = do
  let students = [(1, "Alice", ["Math", "Science"]), (2, "Bob", ["English", "History"])]
  let pq = foldr enqueue (PriorityQueue []) students
  let cq = foldr enqueue (CircularQueue 10 []) students
  print (peek pq)
  print (peek cq)
