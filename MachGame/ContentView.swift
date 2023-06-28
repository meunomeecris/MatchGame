//
//  ContentView.swift
//  MachGame
//
//  Created by Cris Messias on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    var emojis: [String] = ["🇧🇷", "🏳️‍🌈", "🇹🇳", "🇫🇷", "🇨🇦", "🇯🇲", "🇧🇩", "🇪🇨", "🇬🇹", "🇵🇼", "🇺🇾", "🇱🇨", "🇧🇫", "🇷🇼", "🇪🇺", "🇯🇵"]
    @State var emojiCount = 6

    
    var body: some View {
        VStack{
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(CGSize(width: 2, height: 3), contentMode: .fit)
                    }
                    .foregroundColor(.red)
                }
            }
            Spacer()
            HStack{
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    
    //cleaning the code
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}


//cleaning the code
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill(.red)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}


 
//1h 03 min
