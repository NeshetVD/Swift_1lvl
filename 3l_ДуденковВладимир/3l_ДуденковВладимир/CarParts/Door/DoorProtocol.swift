//
//  DoorProtocol.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

enum DoorState: Int {
    case open
    case close
}

enum DoorSide: Int {
    case leftFront
    case rightFront
    case leftBack
    case rightBack
}

protocol DoorProtocol {
    var side: DoorSide { get }
    var state: DoorState { get }
    var window: WindowProtocol { get }
    mutating func changeState(_ state: DoorState)
}
