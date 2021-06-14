//
//  main.swift
//  6l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 14.06.2021.
//
//

import Foundation

var carsQueue = Queue<Car>()
carsQueue.enqueue(Car.init(id: 1, name: "Toyota Camry"))
carsQueue.enqueue(Car.init(id: 2, name: "Tesla S"))
carsQueue.enqueue(Car.init(id: 3, name: "Porsche Taycan"))

print(carsQueue)

print(carsQueue.dequeue())

print(carsQueue)

print(carsQueue.filter(ids: 3))

print(carsQueue[0])