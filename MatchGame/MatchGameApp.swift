//
//  MatchGame.swift
//  MatchGame
//
//  Created by Cris Messias on 16/06/23.
//

import SwiftUI

@main
struct MatchGameApp: App {
    private let game = EmojiMatchGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMatchGameView(game: game)
        }
    }
}
//
//struct Previews_MatchGameApp_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}
