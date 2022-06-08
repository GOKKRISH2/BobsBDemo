//
//  ListCharactersInteractor.swift
//  BobsBDemo
//
//  Created by Gokul Krishna on 08/06/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ListCharactersBusinessLogic
{
  func fetchCharacters(request: ListCharacters.FetchCharacters.Request)
}

protocol ListCharactersDataStore
{
    var characters: [Character]? { get }
}

class ListCharactersInteractor: ListCharactersBusinessLogic, ListCharactersDataStore
{
  var presenter: ListCharactersPresentationLogic?
  var worker: ListCharactersWorker?
    var characters: [Character]?
  
  // MARK: Do something
  
  func fetchCharacters(request: ListCharacters.FetchCharacters.Request)
  {
    worker = ListCharactersWorker()
    worker?.doSomeWork()
      let charecters = Character(id: 1, name: "", image: "", gender: "", hairColor: "", occupation: "", firstEpisode: "", voicedBy: "", url: "", wikiURL: "", age: "", relatives: [Relative(name: "", wikiURL: "", relationship: "", url: "")])
      let response = ListCharacters.FetchCharacters.Response(characters: [charecters])
    presenter?.presentSomething(response: response)
  }
}