//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

enum TankType: Int {
    case tent
    case fullSide
}

protocol TankProtocol {
    var size: Double { get }
    var type: TankType { get }
    var isFull: Bool { get }
    mutating func changeState(_ isFull: Bool)
}