//
//  CharacterAPITests.swift
//  BobsBDemoTests
//
//  Created by Gokul Krishna on 15/06/22.
//

@testable import BobsBDemo
import XCTest

class CharacterAPITests: XCTestCase {

    // custom urlsession for mock network calls
    var urlSession: URLSession!
    
    var sut : CharacterAPI!
    
    static var testCharacters: [Character]!
    
    override func setUpWithError() throws {
        // Set url session for mock networking
                let configuration = URLSessionConfiguration.ephemeral
                configuration.protocolClasses = [URLProtocalMock.self]
                urlSession = URLSession(configuration: configuration)
        sut = CharacterAPI(session: urlSession)
        CharacterAPITests.testCharacters = [Seeds.Charecters.testCharacter1,Seeds.Charecters.testCharacter2]
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCharacterAPICall() throws {
        let mockData = try JSONEncoder().encode(CharacterAPITests.testCharacters)
        
        URLProtocalMock.requestHandler = { request in
            return (HTTPURLResponse(), mockData)
        }
        
        // Set expectation. Used to test async code.
                let expectation = XCTestExpectation(description: "response")
                
                // Make mock network request to get profile
        sut.fetchCharacters(completionHandler: { characters in
            XCTAssertEqual(characters[0].name, "test character 1")
            expectation.fulfill()
        })
        
        wait(for: [expectation], timeout: 1)
    }

}
