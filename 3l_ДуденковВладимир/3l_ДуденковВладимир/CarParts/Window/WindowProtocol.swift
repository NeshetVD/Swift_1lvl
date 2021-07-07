//
//  WindowProtocol.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

enum WindowState: Int {
    case open
    case halfOpen
    case close
}

protocol WindowProtocol {
    var state: WindowState { get }
    mutating func roll(_ state: WindowState)
}
