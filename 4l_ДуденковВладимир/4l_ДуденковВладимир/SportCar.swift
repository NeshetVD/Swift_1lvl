//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

class SportCar: Car {
    let turbine: TurbainProtocol?

    init(mark: String, release: Date, engine: EngineProtocol, doors: [DoorProtocol], turbain: TurbainProtocol? = nil) {
        turbine = turbain
        super.init(mark: mark.count > 0 ? mark : "SomeSportCar",
                release: release,
                engine: engine,
                doors: doors)
    }
}
