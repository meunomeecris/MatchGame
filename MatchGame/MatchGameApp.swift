//
//  MatchGame.swift
//  MatchGame
//
//  Created by Cris Messias on 16/06/23.
//

import SwiftUI

@main
struct MatchGameApp: App {
    let game = EmojiMatchGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
