//
//  main.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

var buggati = SportCar.init(mark: "Bugatti Veyron", release: Date.init(timeIntervalSince1970: 1117811929), engine: CarEngine.init(wheelTorque: 1250), doors: [])

var tesla = SportCar.init(mark: "Tesla Roadster 2", release: Date.init(timeIntervalSince1970: 1591197529), engine: CarEngine.init(wheelTorque: 10000, type: .electric), doors: [])

var trunk = TrunkCar.init(mark: "Mercedes Actros", release: Date.init(timeIntervalSince1970: 1127811929), engine: CarEngine.init(wheelTorque: 3000), doors: [], tank: CarTank.init(size: 30, type: .tent))

print("Состояние двигателя теслы: \(tesla.engine.isStarted ? "заведен" : "не заведен")")
print("А сейчас? \(tesla.start() ? "заведен" : "не заведен")")

// И т.д. Суть ясна, лень расписывать
