import Module
import Queue
import Instance

main :: IO ()
main = do
    let studentRec1 = StudentRecord { rollNo = 11122, name = "Mustafa", registeredCourses = ["Al", "Ph"] }
        studentRec2 = StudentRecord { rollNo = 33889, name = "Zainab", registeredCourses = ["PF", "Cal"] }
        studentRec3 = StudentRecord { rollNo = 39563, name = "Fatima", registeredCourses = ["SDA", "LA"] }

    let pQueue = enqueue (enqueue (enqueue (PQueue []) studentRec1) studentRec2) studentRec3
        (firstStudent, remainingPQueue) = dequeue pQueue

    putStrLn "Priority Queue:"
    putStrLn $ "First student: " ++ show firstStudent
    putStrLn $ "Remaining Queue: " ++ show remainingPQueue

    let cQueue = enqueue (enqueue (enqueue (CQueue 3 []) studentRec1) studentRec2) studentRec3
        (firstCircularStud, remainingCircQueue) = dequeue cQueue

    putStrLn "Circular Queue:"
    putStrLn $ "First student: " ++ show firstCircularStud
    putStrLn $ "Remaining Queue: " ++ show remainingCircQueue
