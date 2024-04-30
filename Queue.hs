module Queue where

import Module

class Queue qu where
    enqueue :: qu -> StudentRecord -> qu
    dequeue :: qu -> (StudentRecord, qu)
    peek :: qu -> StudentRecord
    isEmpty :: qu -> Bool
