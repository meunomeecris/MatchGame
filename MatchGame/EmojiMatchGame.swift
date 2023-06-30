//
//  EmojiMatchGame.swift
//  MachGame
//
//  Created by Cris Messias on 28/06/23.
//

import Foundation

class EmojiMatchGame: ObservableObject {
    static let emojis: [String] = ["🇧🇷", "🏳️‍🌈", "🇹🇳", "🇫🇷", "🇨🇦", "🇯🇲", "🇧🇩", "🇪🇨", "🇬🇹", "🇵🇼", "🇺🇾", "🇱🇨", "🇧🇫", "🇷🇼", "🇪🇺", "🇯🇵"]
    
    static func createMatchGame() -> MatchGame<String> {
        MatchGame<String>(numberOfPairsOfCards: 4) { parIndex in
            emojis[parIndex]
        }
    }
    
    @Published private var model: MatchGame<String> = createMatchGame()
    
    var cards: Array<MatchGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: MatchGame<String>.Card) {
        model.choose(card)
    }
}
