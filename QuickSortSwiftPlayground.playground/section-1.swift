// Playground - noun: a place where people can play

import UIKit

var numberList : Array<Int> = [8,41,54,0,-3, 2, 10, 9, 11, 1, 7, 3, 4]

func quickSort( var list: Array<Int>) -> Array<Int> {
    
    if list.count <= 1 {
        
        return list
        
    }
    
    
    
    let pivot = list.removeAtIndex(0)
    
    return quickSort(list.filter { $0 <= pivot }) + [pivot] + quickSort(list.filter { $0 >  pivot })
    
}

quickSort(numberList)
print(numberList)
