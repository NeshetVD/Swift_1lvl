//
//  CarProtocol.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

protocol CarProtocol {
    var mark: String { get }
    var release: Date { get }
    var engine: EngineProtocol { get }
    var doors: [DoorProtocol] { get }
    mutating func start() -> Bool
    mutating func stop()
    mutating func switchDoor(side: DoorSide, state: DoorState)
    mutating func rollWindow(side: DoorSide, state: WindowState)
}
