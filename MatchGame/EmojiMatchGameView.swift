//
//  EmojiMatchGameView.swift
//  MachGame
//
//  Created by Cris Messias on 23/06/23.
//

import SwiftUI

struct EmojiMatchGameView: View {
    @ObservedObject var game: EmojiMatchGame
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                ForEach(game.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            game.choose(card)
                        }
                }
            }
            .foregroundColor(.red)
            .padding(.horizontal)
        }
    }
}


struct CardView: View {
    let card: EmojiMatchGame.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                shape.fill(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMatchGame()
//        EmojiMatchGameView(game: game)
//            .preferredColorScheme(.light)
        EmojiMatchGameView(game: game)
            .preferredColorScheme(.dark)
    }
}
