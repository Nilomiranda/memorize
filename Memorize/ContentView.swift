//
//  ContentView.swift
//  Memorize
//
//  Created by Danilo Miranda on 13/07/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke().foregroundColor(Color.orange)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}

// some other illustrative examples

struct CustomText: View {
    var body: some View {
        ZStack {
            Text("hi")
            Text("hi")
        }
    }
}

struct ZStackExample: View {
    var body: some View {
        ZStack {
            Text("Orange text")
            Text("Green text")
            Text("Blue text")
        }
    }
}
