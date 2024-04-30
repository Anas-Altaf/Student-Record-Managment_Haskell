import Module
import Class
import Instance

main :: IO ()
main = do
    let stdnt1 = StudentRecord { rollNo = 11122, name = "Mustafa", registeredCourses = ["Algebra", "Physics"] }
        stdnt2 = StudentRecord { rollNo = 33889, name = "Zainab", registeredCourses = ["Programming Fundamentals", "Calculus"] }
        stdnt3 = StudentRecord { rollNo = 39563, name = "Fatima", registeredCourses = ["Pakistani Studies", "Computer Science"] }

    let pQueue = enqueue (enqueue (enqueue (PQueue []) stdnt1) stdnt2) stdnt3
        (firstStudent, remainingPQueue) = dequeue pQueue

    let cQueue = enqueue (enqueue (enqueue (CQueue 3 []) stdnt1) stdnt2) stdnt3
        (firstCircularStud, remainingCircQueue) = dequeue cQueue

    putStrLn "Priority Queue Example:"
    putStrLn $ "First student: " ++ show firstStudent
    putStrLn $ "Remaining Queue: " ++ show remainingPQueue

    putStrLn "Circular Queue Example:"
    putStrLn $ "First student: " ++ show firstCircularStud
    putStrLn $ "Remaining Queue: " ++ show remainingCircQueue
