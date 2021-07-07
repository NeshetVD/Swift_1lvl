//
//  main.swift
//  2l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 31.05.2021.
//

import Foundation

// 1. Написать функцию, которая определяет, четное число или нет.
func isOdd(num: Int) -> Bool {
    return num % 2 == 0
}

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func divideByTree(num: Int) -> Bool {
    return num % 3 == 0
}

// 3. Создать возрастающий массив из 100 чисел.
func getArray(initial: Int = 0) -> [Int] {
    var result = [initial]
    for num in 1...99 {
        result.append(initial + num)
    }
    return result
}

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
func clearByOddAndNotThree(arr: [Int]) -> [Int] {
    var result = arr
    result.removeAll(where: {
        isOdd(num: $0) || !divideByTree(num: $0)
    })
    return result
}

var arr = getArray()
print(clearByOddAndNotThree(arr: arr))

// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
func addFibo(arr: inout [Int]) {
    let count = arr.count
    if count == 1 {
        arr.append(arr[count - 1])
    } else if count > 1 {
        arr.append(arr[count - 1] + arr[count - 2])
    }
}

for _ in 0...50 {
    addFibo(arr: &arr)
}
print(arr)
