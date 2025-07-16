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

