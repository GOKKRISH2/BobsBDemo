//
//  Character.swift
//  BobsBDemo
//
//  Created by Gokul Krishna on 08/06/22.
//

import Foundation

// MARK: - Character
struct Character: Equatable {
    
    let id: Int
    let name: String
    let image: String
    let gender: String
    let hairColor: String
    let occupation: String?
    let firstEpisode: String
    let voicedBy: String?
    let url: String
    let wikiURL: String
    let age: String?
    let relatives: [Relative]?
}

func == (lhs: Character, rhs: Character) -> Bool {
    lhs.id == rhs.id
    && lhs.name == rhs.name
    && lhs.image == rhs.image
    && lhs.gender == rhs.gender
    && lhs.hairColor == rhs.hairColor
    && lhs.occupation == rhs.occupation
    && lhs.firstEpisode == rhs.firstEpisode
    && lhs.voicedBy == rhs.voicedBy
    && lhs.url == rhs.url
    && lhs.wikiURL == rhs.wikiURL
    && lhs.age == rhs.age
    && lhs.relatives == rhs.relatives
}

// MARK: - Relative
struct Relative: Equatable {
    let name: String
    let wikiURL: String?
    let relationship: String?
    let url: String?
}

func == (lhs: Relative, rhs: Relative) -> Bool {
    lhs.name == rhs.name
    && lhs.url == rhs.url
    && lhs.wikiURL == rhs.wikiURL
    && lhs.relationship == rhs.relationship
}
