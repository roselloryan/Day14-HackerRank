//
//  main.swift
//  Day14-HackerRank


import Foundation

class Difference {
    var elements = [Int]()
    var maximumDifference : Int!

    init(a: [Int]) {
        self.elements = a
    }
    
    func computeDifference() {
        if elements.count > 0 {
            
            var maxDif = elements[0] - elements[1]
            
            for i in 0..<elements.count - 1 {
             
                
                for j in (i+1)..<elements.count {
                    
                    var dif = elements[i] - elements[j]
//                    print("\(elements[i]) - \(elements[j]) = \(dif)")
                    if dif < 0 {
                        dif *= -1
                    }
                    if dif > maxDif {
                        maxDif = dif
                    }
                
                }
            }
            maximumDifference = maxDif
        }
        print(maximumDifference)
    }
}

Difference(a: [1, 2, 3, 11]).computeDifference()
