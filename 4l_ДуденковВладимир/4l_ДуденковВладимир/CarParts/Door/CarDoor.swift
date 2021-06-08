//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

struct CarDoor: DoorProtocol {
    let side: DoorSide

    private(set) var state: DoorState

    let window: WindowProtocol

    mutating func changeState(_ state: DoorState) {
        self.state = state
    }

    init(side: DoorSide, window: WindowProtocol) {
        self.side = side
        self.window = window
        self.state = .close
    }
}
