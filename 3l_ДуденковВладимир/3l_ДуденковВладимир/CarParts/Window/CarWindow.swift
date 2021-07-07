//
//  CarWindow.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

struct CarWindow: WindowProtocol {
    private(set) var state: WindowState
    
    mutating func roll(_ state: WindowState) {
        self.state = state
    }
    
    init(state: WindowState = .close) {
        self.state = state
    }
}
