//
//  ListCharactersPresenter.swift
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

protocol ListCharactersPresentationLogic
{
  func presentFetchCharacters(response: ListCharacters.FetchCharacters.Response)
}

class ListCharactersPresenter: ListCharactersPresentationLogic
{
  weak var viewController: ListCharactersDisplayLogic?
  
  // MARK: Do something
  
  func presentFetchCharacters(response: ListCharacters.FetchCharacters.Response)
  {
      var displayedCharacter: [ListCharacters.FetchCharacters.ViewModel.DisplayedCharacter] = []
      for character in response.characters {
          let displayedCharacters = ListCharacters.FetchCharacters.ViewModel.DisplayedCharacter(id: character.id, name: character.name ?? "", image: character.image ?? "", voicedBy: character.voicedBy ?? "")
          displayedCharacter.append(displayedCharacters)
      }
      let viewModel = ListCharacters.FetchCharacters.ViewModel(displayedCharacter: displayedCharacter)
    viewController?.displayFetchCharacters(viewModel: viewModel)
  }
}
