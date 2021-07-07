//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

enum EngineType: Int {
    case ice
    case electric
}

protocol EngineProtocol {
    var wheelTorque: Double { get }
    var type: EngineType { get }
    var isStarted: Bool { get }
    mutating func start()
    mutating func stop()
}
