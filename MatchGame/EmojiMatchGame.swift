//
//  EmojiMatchGame.swift
//  MachGame
//
//  Created by Cris Messias on 28/06/23.
//

import Foundation

class EmojiMatchGame: ObservableObject {
    typealias Card = MatchGame<String>.Card
    
    private static let emojis: [String] = ["🇧🇷", "🏳️‍🌈", "🇹🇳", "🇫🇷", "🇨🇦", "🇯🇲", "🇧🇩", "🇪🇨", "🇬🇹", "🇵🇼", "🇺🇾", "🇱🇨", "🇧🇫", "🇷🇼", "🇪🇺", "🇯🇵"]
    
    @Published private var model = createMatchGame()
    
    private static func createMatchGame() -> MatchGame<String> {
        MatchGame<String>(numberOfPairsOfCards: 8) { parIndex in
            emojis[parIndex]
        }
    }
    
    
    var cards: Array<Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
