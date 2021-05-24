//
//  main.swift
//  1l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 23.05.2021.
//

import Foundation

// 1. Решить квадратное уравнение.
// ax^2 + bx + c = 0
func quadratic(_ a: Double, _ b: Double, _ c: Double) -> (Double?, Double?) {
    guard a != 0 else {
        return (nil, nil)
    }
    let d = pow(b, 2) - 4 * a * c
    if d > 0 {
        return ((-1 * b + sqrt(d)) / (2 * a), (-1 * b - sqrt(d)) / (2 * a))
    } else if d == 0 {
        return ((-1 * b) / (2 * a), nil)
    }
    return (nil, nil)
}

// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
enum TypeFunc: Int {
    case square
    case perimeter
    case gipotenuse
}

func getSquare(_ a: Double, _ b: Double, _ type: TypeFunc) -> Double {
    func getGipotenuse(_ a: Double, _ b: Double) -> Double {
        return sqrt(pow(a, 2) + pow(b, 2))
    }
    
    switch type {
    case .square:
        return round(100 * (0.5 * a * b)) / 100
    case .perimeter:
        let c = getGipotenuse(a, b)
        return round(100 * (a + b + c)) / 100
    case .gipotenuse:
        return round(100 * getGipotenuse(a, b)) / 100
    }
}

// 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
// S = K * (1 + P*d/D/100)^N
// S — сумма вклада с процентами,
// Sp — сумма процентов (доход),
// К — первоначальная сумма вклада (капитал),
// P — годовая процентная ставка,
// N — число периодов начисления процентов.
// d — количество дней начисления процентов по привлеченному вкладу,
// D — количество дней в календарном году (365 или 366).
func depositForFiveYears (_ sum: Double, _ percent: Double) -> Double {
    let result = sum * pow((1 + percent / 100), 5)
    return round(100 * result) / 100
}

print("1. Введите коэффициенты квадратного уравнения ax^2 + bx + c = 0:")
print("Введите a = ")
let a = Double(readLine() ?? "")
print("Введите b = ")
let b = Double(readLine() ?? "")
print("Введите c = ")
let c = Double(readLine() ?? "")

if let a = a, a != 0 {
    let result = quadratic(a, b ?? 0, c ?? 0)
    if let firstCorner = result.0, let secondCorner = result.1 {
        print("Уровнение имеет два корня: \(firstCorner) и \(secondCorner)")
    } else if let corner = result.0 {
        print("Уровнение имеет один корень: \(corner)")
    } else {
        print("Корней нет")
    }
} else {
    print("a не должно равняться 0")
}

print("\n2. Введитеразмеры катетов прямоугольного треугольника: ")
print("Введите a = ")
let ab = Double(readLine() ?? "")
print("Введите b = ")
let bc = Double(readLine() ?? "")

if let ab = ab, let bc = bc, ab > 0, bc > 0 {
    print("Площадь равна: \(getSquare(ab, bc, .square))")
    print("Периметр равен: \(getSquare(ab, bc, .perimeter))")
    print("Гипотенуза равна: \(getSquare(ab, bc, .gipotenuse))")
} else {
    print("Размеры катетов должны быть положительными числами")
}

print("\n3. Введите сумму вклада и процентную ставку (срок депозита 5 лет): ")
print("Введите сумму = ")
let sum = Double(readLine() ?? "")
print("Введите процентную ставку = ")
let percent = Double(readLine() ?? "")

if let sum = sum, let percent = percent {
    if sum > 0 {
        print("Сумма с процентами через пять лет: \(depositForFiveYears(sum, percent))")
    } else {
        print("Сумма не может равняться 0")
    }
} else {
    print("Сумма и процент должны быть положительными числами")
}
