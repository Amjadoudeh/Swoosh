//
//  PlayerModel.swift
//  Swoosh
//
//  Created by Youssef Bhl on 30/05/2022.
//

import Foundation

public enum desiredLeague: CaseIterable {
    case men, woman, coed
    
    var description: String {
        switch self {
        case .woman : return "Woman"
        case .men : return "Man"
        case .coed : return "Co-ed"
        }
    }
}

public enum playerLevel: CaseIterable {
    case beginner, baller
    
    var description: String {
        switch self {
        case .beginner : return "Beginner"
        case .baller : return "Baller"
        }
    }
}

struct Player {
    var league: desiredLeague
    var level: playerLevel
}
