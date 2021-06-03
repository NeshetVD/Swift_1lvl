//
//  CarTank.swift
//  3l_ДуденковВладимир
//
//  Created by Владимир Дуденков on 03.06.2021.
//

import Foundation

struct CarTank: TankProtocol {
    var size: Double
    
    var type: TankType
    
    private(set) var isFull: Bool
    
    mutating func changeState(_ isFull: Bool) {
        self.isFull = isFull
    }
    
    init(size: Double, type: TankType = .fullSide) {
        self.size = size > 0 ? size : 1.0
        self.type = type
        self.isFull = false
    }
}
