//
//  EmojiMatchGame.swift
//  MachGame
//
//  Created by Cris Messias on 28/06/23.
//

import Foundation

class EmojiMatchGame {
    static let emojis: [String] = ["🇧🇷", "🏳️‍🌈", "🇹🇳", "🇫🇷", "🇨🇦", "🇯🇲", "🇧🇩", "🇪🇨", "🇬🇹", "🇵🇼", "🇺🇾", "🇱🇨", "🇧🇫", "🇷🇼", "🇪🇺", "🇯🇵"]
    
    static func createMatchGame() -> MatchGame<String> {
        MatchGame<String>(numberOfPairsOfCards: 4) { parIndex in
            emojis[parIndex]
        }
    }
    
    private var model: MatchGame<String> = createMatchGame()
    
    var cards: Array<MatchGame<String>.Card> {
        return model.cards
    }
}
