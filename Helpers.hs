-- Helpers.hs
module Helpers where

-- Define a StudentRecord type
type RollNumber = Int
type Name = String
type Courses = [String]
type StudentRecord = (RollNumber, Name, Courses)

-- Define a function to compare student records (for PriorityQueue)
compareStudents :: StudentRecord -> StudentRecord -> Ordering
compareStudents (roll1, _, _) (roll2, _, _) = compare roll1 roll2
