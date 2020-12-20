//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 유승우 on 2020/12/20.
//

import SwiftUI

class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
       
    // MARK: - Initialize the memory game
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃", "🕷", "💀", "👽"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) {
            return emojis[Int.random(in: 0..<emojis.count)]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //  MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
