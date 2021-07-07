//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

struct CarEngine: EngineProtocol {
    let wheelTorque: Double

    let type: EngineType

    private(set) var isStarted: Bool

    mutating func start() {
        if !isStarted {
            isStarted = Double.random(in: 0...1) < 0.9
        }
    }

    mutating func stop() {
        if isStarted {
            isStarted = false
        }
    }

    init(wheelTorque: Double, type: EngineType = .ice) {
        self.wheelTorque = wheelTorque
        self.type = type
        self.isStarted = false
    }
}
