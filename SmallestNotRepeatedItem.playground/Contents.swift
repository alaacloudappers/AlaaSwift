//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var numbersList : Array<Int> = [2,3,-3,5,6,-4,-4,-2,0,0,7,-3,-4,2,4,3,9,-2,0,1,3,54,23,1,21,12,11,2,4,55,6,8]
//

//func quickSort( a : Array<Int>) -> Array <Int>
//{
//    if a.count == 0
//    {
//        return []
//    }
//    let pivot = a[0]
//    let smallestArr = a.filter{$0 < pivot}
//    let largestArr = a.filter{$0 > pivot}
//    return quickSort(smallestArr) + Array(arrayLiteral: pivot) + quickSort(largestArr)
//}

func quickSort( var list: Array<Int>) -> Array<Int> {
    if list.count <= 1 {
        return list
    }
    
    let pivot = list.removeAtIndex(0)
    return quickSort(list.filter { $0 <= pivot }) + [pivot] + quickSort(list.filter { $0 >  pivot })
}

func findSmallestNotRepeatedItem ( a : Array <Int>) -> Int
{
   let sortedArr = quickSort(a) //nLogn
   
    
    if sortedArr[0] != sortedArr[1]
    {
        return sortedArr[0]
    }
    var i = 1
    while ((sortedArr[i] == sortedArr[i+1]) || (sortedArr[i + 1] == sortedArr[i + 2]) )  && i < sortedArr.count
    {
      i++
    }
    return sortedArr[i+1]
}

print(numbersList)
quickSort(numbersList)
findSmallestNotRepeatedItem(numbersList)

//func itemNotRepeatedItems(a : Array<Int> ) -> Array<Int>
//{
//    var uniqueItems = : Array<Int> = []
//    var counter = 0
//    for i in a
//    {
//        if a[i] == x
//        {
//            counter++
//        }
//    }
//    return (counter < 2)
//}
//
//
//func smallestItem ( a : Array<Int> ) -> Int
//{
//    var temp  = a[0]
//    
//    for i in a
//    {
//        if temp > i
//        {
//            temp = i
//        }
//    }
//    return temp
//    
//}
