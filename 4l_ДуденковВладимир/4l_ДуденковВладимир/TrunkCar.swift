//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

class TrunkCar: Car {
    var tank: TankProtocol

    init(mark: String, release: Date, engine: EngineProtocol, doors: [DoorProtocol], tank: TankProtocol) {
        self.tank = tank
        super.init(mark: mark.count > 0 ? mark : "SomeTrunk",
                release: release,
                engine: engine,
                doors: doors)
    }
}
