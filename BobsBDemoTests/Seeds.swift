//
//  Seeds.swift
//  BobsBDemoTests
//
//  Created by Gokul Krishna on 08/06/22.
//

@testable import BobsBDemo
import XCTest

struct Seeds {
    struct Charecters {
        static let relativeOfCharacter1 = Relative(name: "", wikiURL: "", relationship: "", url: "")
        static let testCharacter1 = Character(id: 1, name: "test character 1", image: "", gender: "", hairColor: "", occupation: "", firstEpisode: "", voicedBy: "", url: "", wikiURL: "", age: "", relatives: [relativeOfCharacter1])
        static let relativeOfCharacter2 = Relative(name: "", wikiURL: "", relationship: "", url: "")
        static let testCharacter2 = Character(id: 2, name: "test character 2", image: "", gender: "", hairColor: "", occupation: "", firstEpisode: "", voicedBy: "", url: "", wikiURL: "", age: "", relatives: [relativeOfCharacter1])
    }
}
