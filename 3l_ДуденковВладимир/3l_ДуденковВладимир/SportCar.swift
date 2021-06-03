//
//  SportCar.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

struct SportCar: CarProtocol {
    let mark: String
    
    let release: Date
    
    var engine: EngineProtocol
    
    var doors: [DoorProtocol]
    
    mutating func start() -> Bool {
        if !self.engine.isStarted {
            self.engine.start()
        }
        
        return self.engine.isStarted
    }
    
    mutating func stop() {
        if engine.isStarted {
            engine.stop()
        }
    }
    
    mutating func switchDoor(side: DoorSide, state: DoorState) {
        if var door = self.doors.first(where: { $0.side == side }), door.state != state {
            door.changeState(state)
        }
    }
    
    mutating func rollWindow(side: DoorSide, state: WindowState) {
        if var window = self.doors.first(where: { $0.side == side })?.window, window.state != state {
            window.roll(state)
        }
    }
    
    init(mark: String, release: Date, engine: EngineProtocol, doors: [DoorProtocol]) {
        self.mark = mark.count > 0 ? mark : "SomeSport"
        self.release = release > Date.init(timeIntervalSince1970: 0) ? release : Date.init(timeIntervalSince1970: 0)
        self.engine = engine
        self.doors = doors.count > 1 ? doors : [CarDoor.init(side: .leftFront, window: CarWindow.init()), CarDoor.init(side: .rightFront, window: CarWindow.init())]
    }
}
