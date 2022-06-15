//
//  CharacterAPI.swift
//  BobsBDemo
//
//  Created by Gokul Krishna on 09/06/22.
//

import Foundation

class CharacterAPI: CharactersStoreProtocol, CharactersStoreUtilityProtocol {
    
    private let session: URLSession

    init(session: URLSession = .shared) {
            self.session = session
        }
    
    func fetchCharacters(completionHandler: @escaping ([Character]) -> Void) {
        let url = URL(string: "https://bobsburgers-api.herokuapp.com/characters/?limit=10")!
        let task = session.dataTask(with: url) { (data, _, _) -> Void in
            
            let characters: [Character] = try! JSONDecoder().decode([Character].self, from: data!)
            
            DispatchQueue.main.async { completionHandler(characters) }
                }
                task.resume()
    }
}
