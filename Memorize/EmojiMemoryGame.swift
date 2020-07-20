//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Danilo Miranda on 20/07/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import Foundation


class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🧙🏻‍♂️", "👻", "🧟‍♂️"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
        
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
