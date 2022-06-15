//
//  Character.swift
//  BobsBDemo
//
//  Created by Gokul Krishna on 08/06/22.
//

import Foundation

// MARK: - Character
struct Character: Codable, Equatable {
    
    let id: Int
    let name: String?
    let image: String?
    let gender: String?
    let hairColor: String?
    let occupation: String?
    let firstEpisode: String?
    let voicedBy: String?
    let url: String?
    let wikiURL: String?
    let age: String?
    let relatives: [Relative]?
}

// MARK: - Relative
struct Relative: Codable, Equatable {
    let name: String?
    let wikiURL: String?
    let relationship: String?
    let url: String?
}

