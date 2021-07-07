//
// Created by Владимир Дуденков on 07.06.2021.
//

import Foundation

struct CarWindow: WindowProtocol {
    private(set) var state: WindowState

    mutating func roll(_ state: WindowState) {
        self.state = state as! WindowState
    }

    init(state: WindowState = .close) {
        self.state = state as! WindowState
    }
}
