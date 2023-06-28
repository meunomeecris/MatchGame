//
//  MatchGame.swift
//  MachGame
//
//  Created by Cris Messias on 28/06/23.
//

import Foundation

struct MatchGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
