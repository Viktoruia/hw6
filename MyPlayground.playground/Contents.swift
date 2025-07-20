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

// 2 способ
let numbersArray = numbersArray1 + numbersArray2
print("Первый массив чисел - \(numbersArray1). Второй массив чисел - \(numbersArray2). Новый массив чисел, объединяющий их - \(numbersArray)")

//2. Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
//Возвратить новый массив.

// 1 способ
let intArray1 = [1, 2, 3, 4, 5, 6, 7]
let newIntArray1 = intArray1.map { $0 * $0 }
print("Массив - \(intArray1) и массив с его квадратами - \(newIntArray1)")

// 2 способ
func intArray2(_ array: [Int]) -> [Int] {
    var newIntArray2: [Int] = []
    for element in array {
        newIntArray2.append(element * element)
    }
    return newIntArray2
}
print(intArray2([2, 4, 6, 8]))

//3. Создать функцию, которая принимает массив int. Возвратить новый массив с только
//четными элементами.

//let intArray = [1, 2, 3, 4, 5, 6, 7]

// 1 способ
let newIntArray3 = intArray1.filter { $0 % 2 == 0 }
print("Новый массив с четными элементами - \(newIntArray3)")

// 2 способ
func intArray4(_ array: [Int]) -> [Int] {
    var newIntArray4: [Int] = []
    for element in array {
        if element % 2 == 0 {
            newIntArray4.append(element)
        }
    }
    return newIntArray4
}
print("Новый массив с четными элементами - \(intArray4([11, 12, 22, 45, 65, 86]))")

//1. Создайте кортеж с информацией о книге: название, автор, год издания.
//Напишите функцию, принимающую такой кортеж и выводящую красиво оформленную строку:
//“Книга ‘Название’ автора Автор, издана в Год.”

let myBook = (name: "'Гарри Поттер и философский камень'", author: "Дж.К. Роулинг", year: 1977)
let (name, author, year) = myBook

func infoBook(to myBook: (name: String, author: String, year: Int)) -> String {
    return "Книгу \(myBook.name) написала \(myBook.author). Она была издана в \(myBook.year) году."
}
print(infoBook(to: myBook))

// закрепляю для себя

let myBook2 = (name2: "'Гордость и предубеждение'", author2: "Джейн Остин", year2: 1813)
let (name2, author2, year2) = myBook2

func infoBook2(to myBook2: (name2: String, author2: String, year2: Int)) -> String {
    return "Книгу \(myBook2.name2) написала \(myBook2.author2). Она была издана в \(myBook2.year2) году."
}
print(infoBook2(to: myBook2))

//2. Создайте массив из 5 ваших любимых фильмов.
//Добавьте ещё один фильм.
//Удалите первый фильм из массива.
//Напечатайте список фильмов с номерами, начиная с 1:
//1. Название фильма

var filmArray: Array<String> = ["'Гарри Поттер' (все части)", "'Гордость и предубеждение'", "'Великий Гэтсби'", "'Синистер'", "'Дожить до рассвета'"]

filmArray += ["'Анна Каренина'"]
filmArray.remove(at: 0)

for (index, value) in filmArray.enumerated() {
    print("\(index + 1). \(value)")
}

//3. Создайте словарь, где ключ — это название страны, а значение — её столица.
//Добавьте в словарь минимум 3 страны.
//Реализуйте функцию, которая принимает страну и возвращает строку:
//“Столица страны — [столица]”,
//или сообщение: “Информация о стране не найдена.”

let dictCountry: Dictionary<String, String> = ["Беларусь": "Минск", "Россия": "Москва", "Франция": "Париж"]

func dictCountryCapital(for country: String) -> String {
    if let capital = dictCountry[country] {
        return "Столица страны \(country) — \(capital)"
    }
    return "Информация о стране не найдена."
}
print(dictCountryCapital(for: "Беларусь"))

//4. Создайте два множества:
//любимые фрукты
//фрукты, которые есть дома
//Найдите пересечение (что из любимого есть дома).
//Найдите разницу (какие любимые фрукты отсутствуют дома).

var favoriteFruits: Set<String> = ["яблоки", "бананы", "персики", "абрикосы", "гранат"]
var fruitsInHome: Set<String> = ["абрикосы", "сливы", "лимон", "гранат"]

print("Сейчас у меня дома из любимых фруктов: \(favoriteFruits.intersection(fruitsInHome))")
print("Сейчас дома нет моих любимых фруктов: \(favoriteFruits.subtracting(fruitsInHome)))")

//5. Реализуйте функцию areEqual<T: Equatable>(_ a: T, _ b: T) -> Bool, которая возвращает true, если два значения равны.
//Проверьте эту функцию с Int, String и Bool.
//+ проверить как работают системные функции высшего порядка со словарями и сетами(map, filter, sort)

func areEqual<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b
}
print(areEqual(3, 4))
print(areEqual("dfg", "dfg"))
print(areEqual(true, false))

var diction: Dictionary<Int, String> = [1: "a", 2: "b", 3: "c", 4: "d"]

let mapDiction = diction.map {
    $0.key + 3
}

let sortDiction = diction.sorted(by: >)

let filterDiction = diction.filter { $0.key < 3 }

print("origin - \(diction)")
print("map - \(mapDiction)")
print("sorted - \(sortDiction)")
print("filter - \(filterDiction)")



var set: Set<Int> = [1, 2, 3, 4, 5]
let mapSet = set.map {
    $0 * 2
}

let sortSet = set.sorted(by: <)

let filterSet = set.filter { $0 % 2 == 0 }

print("origin - \(set)")
print("map - \(mapSet)")
print("sorted - \(sortSet)")
print("filter - \(filterSet)")
