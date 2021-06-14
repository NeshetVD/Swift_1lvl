//
// Created by Владимир Дуденков on 14.06.2021.
//

import Foundation

struct Queue<T: Entity> {
    private var elements: [T] = []
    mutating func enqueue(_ value: T) {
        elements.append(value)
    }

    mutating func dequeue() -> T? {
        guard !elements.isEmpty else {
            return nil
        }
        return elements.removeFirst()
    }

    func filter(ids: UInt ...) -> [T] {
        elements.filter({
            ids.contains($0.id)
        })
    }

    var head: T? {
        elements.first
    }

    var tail: T? {
        elements.last
    }

    subscript(indicates: UInt ...) -> [T] {
        var result: [T] = []
        for index in indicates where index < elements.count {
            result.append(elements[Int(index)])
        }
        return result
    }

    subscript(index: UInt) -> T? {
        index < elements.count ? elements[Int(index)] : nil
    }
}
