import UIKit
import Foundation

//1. Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
//массив.

// 1 способ
let numbersArray1 = Array(0...14)
let numbersArray2 = Array(14...30)

let setNumbersArray1 = Set(numbersArray1)
let setNumbersArray2 = Set(numbersArray2)

let unionNumbersArrays = setNumbersArray1.union(setNumbersArray2)
let newNumbersArray = Array(unionNumbersArrays)
let sortedArray = newNumbersArray.sorted { $0 < $1 }
print("Первый массив чисел - \(numbersArray1). Второй массив чисел - \(numbersArray2). Новый массив чисел, объединяющий их - \(sortedArray)")


//2. Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
//Возвратить новый массив.

// 1 способ
let intArray = [1, 2, 3, 4, 5, 6, 7]
let newIntArray = intArray.map { $0 * $0 }
print("Массив - \(intArray) и массив с его квадратами - \(newIntArray)")

// 2 способ
func intArray2(_ array: [Int]) -> [Int] {
    var newIntArray2: [Int] = []
    for element in array {
        newIntArray2.append(element * element)
    }
    return newIntArray2
}
print(intArray2([2, 4, 6, 8]))
