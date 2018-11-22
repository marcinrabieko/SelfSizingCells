//
//  Randomizer.swift
//  CleanArchitecture
//
//  Created by Marcin on 22.11.2018.
//  Copyright © 2018 rabieko. All rights reserved.
//

import Foundation

class Randomizer {

    static func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0...length - 1).map{ _ in letters.randomElement()! })
    }
}
