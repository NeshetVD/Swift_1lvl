//
// Created by Владимир Дуденков on 14.06.2021.
//

import Foundation

struct Car: Entity {
    var id: UInt = 0
    var name: String

    init(id: UInt, name: String) {
        self.id = id
        self.name = name
    }
}
